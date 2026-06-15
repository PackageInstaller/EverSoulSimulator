#include "hook_arm64_relo.hpp"

#if defined(__aarch64__)

#include "hook_code_patch.hpp"
#include "hook_common.hpp"
#include "hook_mem_alloc.hpp"

#include <cstdint>
#include <cstring>
#include <vector>

namespace eversoul::hook {

// ---------------------------------------------------------------------------
// ARM64 instruction classification  (matches Dobby inst_constants.h)
// ---------------------------------------------------------------------------

static constexpr uint32_t kBBLMask    = 0x7C000000u; // B / BL
static constexpr uint32_t kBBLFixed   = 0x14000000u;
static constexpr uint32_t kBBLBL      = 0x80000000u; // BL if set

static constexpr uint32_t kLDRLitMask  = 0x3B000000u;
static constexpr uint32_t kLDRLitFixed = 0x18000000u;

static constexpr uint32_t kADRMask    = 0x9F000000u;
static constexpr uint32_t kADRFixed   = 0x10000000u;
static constexpr uint32_t kADRPBit    = 0x80000000u;

static constexpr uint32_t kBCondMask  = 0xFE000000u;
static constexpr uint32_t kBCondFixed = 0x54000000u;

static constexpr uint32_t kCBZMask    = 0x7E000000u;
static constexpr uint32_t kCBZFixed   = 0x34000000u;

static constexpr uint32_t kTBZMask    = 0x7E000000u;
static constexpr uint32_t kTBZFixed   = 0x36000000u;

static bool is_b_bl(uint32_t i)     { return (i & kBBLMask)   == kBBLFixed;   }
static bool is_ldr_lit(uint32_t i)  { return (i & kLDRLitMask) == kLDRLitFixed; }
static bool is_adr_adrp(uint32_t i) { return (i & kADRMask)   == kADRFixed;   }
static bool is_b_cond(uint32_t i)   { return (i & kBCondMask)  == kBCondFixed; }
static bool is_cbz_cbnz(uint32_t i) { return (i & kCBZMask)   == kCBZFixed;   }
static bool is_tbz_tbnz(uint32_t i) { return (i & kTBZMask)   == kTBZFixed;   }

// ---------------------------------------------------------------------------
// Immediate decode helpers  (Dobby inst_decode_encode_kit.h)
// ---------------------------------------------------------------------------

static int64_t dec_imm26(uint32_t i)
{
    return sign_extend64(bits32(i, 0, 25) * 4ull, 28);
}
static int64_t dec_imm19(uint32_t i)
{
    return sign_extend64(bits32(i, 5, 23) * 4ull, 21);
}
static int64_t dec_imm14(uint32_t i)
{
    return sign_extend64(bits32(i, 5, 18) * 4ull, 16);
}
static int64_t dec_adr(uint32_t i)
{
    const uint32_t immlo = bits32(i, 29, 30);
    const uint32_t immhi = bits32(i, 5, 23);
    return sign_extend64((immhi << 2) | immlo, 21);
}

// ---------------------------------------------------------------------------
// Code emitters into a uint32_t buffer
// X17 (IP1) is used as scratch — standard for intra-procedure-call stubs
// ---------------------------------------------------------------------------

static constexpr uint32_t kX17 = 17u;

// MOV X17, #imm64  →  MOVZ + 3× MOVK  (4 instructions)
static void emit_mov_x17_imm64(std::vector<uint32_t> &b, uint64_t imm)
{
    b.push_back(0xD2800000u | ((imm & 0xFFFFu) << 5) | kX17);
    b.push_back(0xF2A00000u | (((imm >> 16) & 0xFFFFu) << 5) | kX17);
    b.push_back(0xF2C00000u | (((imm >> 32) & 0xFFFFu) << 5) | kX17);
    b.push_back(0xF2E00000u | (((imm >> 48) & 0xFFFFu) << 5) | kX17);
}

// MOV Xd, #imm64  (4 instructions, arbitrary destination register)
static void emit_mov_xd_imm64(std::vector<uint32_t> &b, uint32_t rd, uint64_t imm)
{
    b.push_back(0xD2800000u | ((imm & 0xFFFFu) << 5) | rd);
    b.push_back(0xF2A00000u | (((imm >> 16) & 0xFFFFu) << 5) | rd);
    b.push_back(0xF2C00000u | (((imm >> 32) & 0xFFFFu) << 5) | rd);
    b.push_back(0xF2E00000u | (((imm >> 48) & 0xFFFFu) << 5) | rd);
}

// Absolute branch stub:  LDR X17, #8 ; BR/BLR X17 ; .data u64  (3 insn + 2 words = 20 bytes)
// LDR X17, #8 → 0x58000051  (imm19=2, rt=17)
// BR  X17     → 0xD61F0220
// BLR X17     → 0xD63F0220
static void emit_abs_br(std::vector<uint32_t> &b, uint64_t dst, bool bl)
{
    b.push_back(0x58000051u);
    b.push_back(bl ? 0xD63F0220u : 0xD61F0220u);
    b.push_back(static_cast<uint32_t>(dst));
    b.push_back(static_cast<uint32_t>(dst >> 32));
}

// Conditional-skip + abs-br:
//   inv_cond_insn  (inverted branch, skip +5 insn = +20 bytes ahead)
//   LDR X17, #8
//   BR X17
//   .data dst_lo
//   .data dst_hi
// Total = 5 words = 20 bytes; inv_cond_insn must already have imm=5
static void emit_cond_abs_br(std::vector<uint32_t> &b,
                              uint32_t inv_insn_with_imm5,
                              uint64_t dst)
{
    b.push_back(inv_insn_with_imm5);
    b.push_back(0x58000051u); // LDR X17, #8  (data at +8 from this insn)
    b.push_back(0xD61F0220u); // BR X17
    b.push_back(static_cast<uint32_t>(dst));
    b.push_back(static_cast<uint32_t>(dst >> 32));
}

// ---------------------------------------------------------------------------
// Main relocation  (mirrors Dobby InstructionRelocationARM64.cc relo_ctx_t)
// ---------------------------------------------------------------------------

MemBlock arm64_gen_relocated_with_resume(uintptr_t src_addr, size_t patch_size)
{
    const size_t   n_insns = patch_size / 4u;
    const uint32_t *src    = reinterpret_cast<const uint32_t *>(src_addr);

    std::vector<uint32_t> buf;
    buf.reserve(n_insns * 8u);

    for (size_t i = 0; i < n_insns; ++i) {
        const uint32_t  instr    = src[i];
        const uintptr_t orig_pc  = src_addr + i * 4u;

        if (is_b_bl(instr)) {
            // B / BL  →  absolute branch to computed target
            const int64_t  off = dec_imm26(instr);
            const uint64_t dst = static_cast<uint64_t>(
                static_cast<int64_t>(orig_pc) + off);
            emit_abs_br(buf, dst, (instr & kBBLBL) != 0u);

        } else if (is_ldr_lit(instr)) {
            // LDR Wt/Xt/LDRSW Xt, label  →  MOV X17, abs_addr ; LDR Rt, [X17]
            const int64_t  off  = dec_imm19(instr);
            const uint64_t addr = static_cast<uint64_t>(
                static_cast<int64_t>(orig_pc) + off);
            const uint32_t rt   = bits32(instr, 0, 4);
            const uint32_t opc  = bits32(instr, 30, 31);
            const uint32_t V    = bit32(instr, 26);

            if (V || opc == 3u) {
                // SIMD variant or PRFM — copy verbatim
                buf.push_back(instr);
            } else {
                emit_mov_x17_imm64(buf, addr);
                switch (opc) {
                case 0u: buf.push_back(0xB9400220u | rt); break; // LDR Wt,  [X17]
                case 1u: buf.push_back(0xF9400220u | rt); break; // LDR Xt,  [X17]
                case 2u: buf.push_back(0xB9800220u | rt); break; // LDRSW Xt,[X17]
                default: buf.push_back(instr);             break;
                }
            }

        } else if (is_adr_adrp(instr)) {
            // ADR/ADRP Xd, label  →  MOV Xd, #abs_result
            const uint32_t rd    = bits32(instr, 0, 4);
            const bool     is_adrp = (instr & kADRPBit) != 0u;
            const int64_t  imm   = dec_adr(instr);
            uint64_t       result;
            if (is_adrp) {
                result = (static_cast<uint64_t>(
                              static_cast<int64_t>(orig_pc)) + (imm << 12))
                         & ~uint64_t(0xFFFu);
            } else {
                result = static_cast<uint64_t>(
                    static_cast<int64_t>(orig_pc) + imm);
            }
            emit_mov_xd_imm64(buf, rd, result);

        } else if (is_b_cond(instr)) {
            // B.cond imm19  →  invert cond, skip +5 insn, then abs-br
            const int64_t  off = dec_imm19(instr);
            const uint64_t dst = static_cast<uint64_t>(
                static_cast<int64_t>(orig_pc) + off);
            uint32_t inv = instr;
            set_bits32(inv, 0, 3, bits32(instr, 0, 3) ^ 1u); // invert cond
            set_bits32(inv, 5, 23, 5u);                        // imm19 = +5 insns
            emit_cond_abs_br(buf, inv, dst);

        } else if (is_cbz_cbnz(instr)) {
            // CBZ/CBNZ Rt, imm19  →  invert op, skip +5 insn
            const int64_t  off = dec_imm19(instr);
            const uint64_t dst = static_cast<uint64_t>(
                static_cast<int64_t>(orig_pc) + off);
            uint32_t inv = instr;
            set_bit32(inv, 24, bit32(instr, 24) ^ 1); // CBZ↔CBNZ
            set_bits32(inv, 5, 23, 5u);                // imm19 = +5 insns
            emit_cond_abs_br(buf, inv, dst);

        } else if (is_tbz_tbnz(instr)) {
            // TBZ/TBNZ Rt, #bit, imm14  →  invert op, skip +5 insn
            const int64_t  off = dec_imm14(instr);
            const uint64_t dst = static_cast<uint64_t>(
                static_cast<int64_t>(orig_pc) + off);
            uint32_t inv = instr;
            set_bit32(inv, 24, bit32(instr, 24) ^ 1); // TBZ↔TBNZ
            set_bits32(inv, 5, 18, 5u);                // imm14 = +5 insns
            emit_cond_abs_br(buf, inv, dst);

        } else {
            buf.push_back(instr); // verbatim copy
        }
    }

    // Append absolute resume branch  →  src_addr + patch_size
    emit_abs_br(buf, src_addr + patch_size, false);

    const size_t total_bytes = buf.size() * 4u;

    // Prefer near allocation (±64 MB) so a 4-byte B at the hook site reaches us;
    // fall back to global exec pool when near fails.
    constexpr size_t kNear = 64ull * 1024u * 1024u;
    MemBlock blk = alloc_near_exec_block(total_bytes, src_addr, kNear);
    if (!blk.valid())
        blk = alloc_exec_block(total_bytes);
    if (!blk.valid()) return {};

    code_patch(reinterpret_cast<void *>(blk.addr), buf.data(), total_bytes);
    return blk;
}

} // namespace eversoul::hook

#endif // __aarch64__
