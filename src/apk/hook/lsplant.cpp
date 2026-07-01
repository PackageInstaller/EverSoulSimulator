// lsplant_hook.cpp — Java-layer URL redirection via LSPlant.
//
// Uses LSPlant to hook java.net.URL constructors and OkHttp's Request$Builder.url()
// so that all outgoing HTTP requests are redirected to 127.0.0.1:9991.
//
// LSPlant requires InitInfo with:
//   - inline_hooker / inline_unhooker → backed by Dobby (full ARM64 relocation)
//   - art_symbol_resolver → backed by Memory ELF parser of libart.so

#include "apk/hook/lsplant.hpp"
#include "apk/redirect/common.hpp"

#include <array>
#include <cstdio>
#include <cstring>
#include <string>
#include <string_view>
#include <vector>
#include <fstream>
#include <sstream>

#include <android/log.h>
#include <dlfcn.h>
#include <dobby.h>
#include <jni.h>
#include <elf.h>
#include <link.h>

#include <lsplant.hpp>

namespace eversoul::lsplant_hook
{
    namespace
    {
        constexpr const char *kLogTag = "libswappywrapper/lsplant";

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wformat-security"
        template <class... A>
        void logi(const char *fmt, A... a) { __android_log_print(ANDROID_LOG_INFO, kLogTag, fmt, a...); }
        template <class... A>
        void logw(const char *fmt, A... a) { __android_log_print(ANDROID_LOG_WARN, kLogTag, fmt, a...); }
        template <class... A>
        void loge(const char *fmt, A... a) { __android_log_print(ANDROID_LOG_ERROR, kLogTag, fmt, a...); }
#pragma clang diagnostic pop

        // ---------- Memory ELF parser for libart.so ----------

        struct MemoryElf
        {
            uintptr_t base_addr = 0;
            Elf64_Sym *symtab = nullptr;
            const char *strtab = nullptr;
            uint32_t sym_count = 0;

            void *resolve(const std::string_view &symbol_name)
            {
                if (!base_addr || !symtab || !strtab) return nullptr;
                for (uint32_t i = 0; i < sym_count; ++i)
                {
                    const char *name = strtab + symtab[i].st_name;
                    if (symbol_name == name)
                        return reinterpret_cast<void *>(base_addr + symtab[i].st_value);
                }
                return nullptr;
            }
        };

        MemoryElf parse_libart_from_memory()
        {
            MemoryElf elf;
            uintptr_t base = 0;
            std::ifstream maps("/proc/self/maps");
            if (!maps.is_open()) return elf;
            std::string line;
            while (std::getline(maps, line))
            {
                if (line.find("libart.so") != std::string::npos && line.find("r--p") != std::string::npos)
                {
                    std::stringstream ss(line);
                    ss >> std::hex >> base;
                    break;
                }
            }
            if (!base) return elf;

            elf.base_addr = base;
            auto *ehdr = reinterpret_cast<Elf64_Ehdr *>(base);
            auto *phdr = reinterpret_cast<Elf64_Phdr *>(base + ehdr->e_phoff);

            Elf64_Dyn *dynamic = nullptr;
            for (int i = 0; i < ehdr->e_phnum; ++i)
            {
                if (phdr[i].p_type == PT_DYNAMIC)
                {
                    dynamic = reinterpret_cast<Elf64_Dyn *>(base + phdr[i].p_vaddr);
                    break;
                }
            }
            if (!dynamic) return elf;

            for (Elf64_Dyn *dyn = dynamic; dyn->d_tag != DT_NULL; ++dyn)
            {
                if (dyn->d_tag == DT_SYMTAB)
                    elf.symtab = reinterpret_cast<Elf64_Sym *>(base + dyn->d_un.d_ptr);
                else if (dyn->d_tag == DT_STRTAB)
                    elf.strtab = reinterpret_cast<const char *>(base + dyn->d_un.d_ptr);
            }
            elf.sym_count = 150000;
            return elf;
        }

        // ---------- ART symbol resolver (Memory ELF) ----------

        void *resolve_art_symbol(const std::string_view &name)
        {
            static MemoryElf art_elf = parse_libart_from_memory();
            if (art_elf.base_addr)
            {
                void *addr = art_elf.resolve(name);
                if (addr)
                {
                    logi("Resolved %s via Memory ELF: %p", name.data(), addr);
                    return addr;
                }
            }
            return dlsym(RTLD_DEFAULT, name.data());
        }

        void *resolve_art_symbol_prefix(const std::string_view &) { return nullptr; }

        // ---------- Inline hook wrappers for LSPlant — backed by Dobby ----------

        void *lsplant_inline_hook(void *target, void *hooker)
        {
            void *origin = nullptr;
            int ret = DobbyHook(target, hooker, &origin);
            if (ret == 0) return origin; // RS_SUCCESS
            loge("DobbyHook failed for target=%p: ret=%d", target, ret);
            return nullptr;
        }

        bool lsplant_inline_unhook(void *target)
        {
            int ret = DobbyDestroy(target);
            return ret == 0;
        }

    } // anonymous namespace

    bool init(JNIEnv *env)
    {
        if (!env)
        {
            loge("init: null JNIEnv");
            return false;
        }

        logi("Initializing LSPlant for Java-layer URL redirection...");

        lsplant::InitInfo info{};
        info.inline_hooker = lsplant_inline_hook;
        info.inline_unhooker = lsplant_inline_unhook;
        info.art_symbol_resolver = resolve_art_symbol;
        info.art_symbol_prefix_resolver = resolve_art_symbol_prefix;

        logi("Calling lsplant::Init with Dobby-backed hooks...");
        bool ok = lsplant::Init(env, info);
        if (!ok)
        {
            loge("LSPlant Init failed");
            return false;
        }
        logi("LSPlant initialized successfully");
        return true;
    }

} // namespace eversoul::lsplant_hook
