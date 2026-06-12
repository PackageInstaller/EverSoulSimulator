#define _GNU_SOURCE
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <unistd.h>
#include <errno.h>
#include <fcntl.h>
#include <dirent.h>
#include <signal.h>
#include <sys/stat.h>
#include <sys/ptrace.h>
#include <sys/wait.h>
#include <sys/mman.h>
#include <sys/uio.h>
#include <sys/types.h>
#include <dlfcn.h>
#include <link.h>
#include <elf.h>
#include <sys/syscall.h>

#ifndef SYS_process_vm_readv
#  define SYS_process_vm_readv 310
#endif

static ssize_t process_vm_readv(pid_t pid,
                                  const struct iovec *local_iov,  unsigned long liovcnt,
                                  const struct iovec *remote_iov, unsigned long riovcnt,
                                  unsigned long flags)
{
    return (ssize_t)syscall(SYS_process_vm_readv,
                             (long)pid, local_iov, liovcnt,
                             remote_iov, riovcnt, flags);
}

typedef unsigned long long u64;
typedef long long          s64;

typedef struct {
    u64 start;
    u64 end;
    u64 file_off;
} MapRange;

#ifndef NT_PRSTATUS
#define NT_PRSTATUS 1
#endif

#if defined(__aarch64__)
struct arch_regs {
    u64 regs[31];
    u64 sp;
    u64 pc;
    u64 pstate;
};
#define ARCH_PC(r)  ((r).pc)
#define ARCH_RET(r) ((r).regs[0])
#elif defined(__x86_64__)
struct arch_regs {
    u64 r15, r14, r13, r12;
    u64 rbp, rbx;
    u64 r11, r10, r9, r8;
    u64 rax, rcx, rdx, rsi, rdi;
    u64 orig_rax;
    u64 rip, cs, eflags, rsp, ss;
    u64 fs_base, gs_base;
    u64 ds, es, fs, gs;
};
#define ARCH_PC(r)  ((r).rip)
#define ARCH_RET(r) ((r).rax)
#else
#error "inject_helper: unsupported architecture"
#endif

static int regs_get(pid_t pid, struct arch_regs *r)
{
    struct iovec v = { r, sizeof(*r) };
    return ptrace(PTRACE_GETREGSET, pid, (void *)(long)NT_PRSTATUS, &v);
}

static int regs_set(pid_t pid, const struct arch_regs *r)
{
    struct iovec v = { (void *)r, sizeof(*r) };
    return ptrace(PTRACE_SETREGSET, pid, (void *)(long)NT_PRSTATUS, &v);
}

static int wait_for_stop(pid_t pid, int expected_sig)
{
    int st;
    for (;;) {
        pid_t w = waitpid(-1, &st, __WALL);
        if (w < 0) return -1;
        if (w == pid) {
            if (WIFSIGNALED(st) || WIFEXITED(st)) return -1;
            if (WIFSTOPPED(st) && WSTOPSIG(st) == expected_sig) return 0;
            if (WIFSTOPPED(st)) ptrace(PTRACE_CONT, pid, NULL, NULL);
        } else if (w > 0) {
            ptrace(PTRACE_CONT, w, NULL, NULL);
        }
    }
}

static int maps_collect(pid_t pid, const char *libname,
                         MapRange *out, int max_count)
{
    char path[64];
    snprintf(path, sizeof(path), "/proc/%d/maps", (int)pid);
    FILE *f = fopen(path, "r");
    if (!f) return 0;
    char line[512];
    int count = 0;
    while (fgets(line, sizeof(line), f) && count < max_count) {
        if (!strstr(line, libname)) continue;
        char *p    = line;
        u64 start  = strtoull(p, &p, 16);
        if (*p == '-') p++;
        u64 end    = strtoull(p, &p, 16);
        while (*p == ' ') p++;
        while (*p && *p != ' ') p++;
        while (*p == ' ') p++;
        u64 file_off = strtoull(p, NULL, 16);
        out[count].start    = start;
        out[count].end      = end;
        out[count].file_off = file_off;
        count++;
    }
    fclose(f);
    return count;
}

static u64 maps_base(pid_t pid, const char *libname)
{
    char path[64];
    snprintf(path, sizeof(path), "/proc/%d/maps", (int)pid);
    FILE *f = fopen(path, "r");
    if (!f) return 0;
    char line[512];
    u64 base = 0;
    while (fgets(line, sizeof(line), f)) {
        if (!strstr(line, libname)) continue;
        char *p = line;
        u64 start = strtoull(p, &p, 16);
        if (*p == '-') p++;
        strtoull(p, &p, 16);
        while (*p == ' ') p++;
        while (*p && *p != ' ') p++;
        while (*p == ' ') p++;
        u64 file_off = strtoull(p, NULL, 16);
        if (file_off == 0) { base = start; break; }
    }
    fclose(f);
    return base;
}

static int maps_filepath(pid_t pid, const char *libname, char *out, size_t out_sz)
{
    char path[64];
    snprintf(path, sizeof(path), "/proc/%d/maps", (int)pid);
    FILE *f = fopen(path, "r");
    if (!f) return -1;
    char line[1024];
    int found = -1;
    while (fgets(line, sizeof(line), f)) {
        if (!strstr(line, libname)) continue;
        char *nl = strchr(line, '\n'); if (nl) *nl = '\0';
        char *sp = strrchr(line, ' ');
        if (!sp || sp[1] == '\0' || sp[1] == '[') continue;
        strncpy(out, sp + 1, out_sz - 1);
        out[out_sz - 1] = '\0';
        found = 0;
        break;
    }
    fclose(f);
    return found;
}

static u64 sym_offset(const char *lib, const char *sym_name,
                       char *lib_path, size_t path_sz)
{
    void *h = dlopen(lib, RTLD_LAZY | RTLD_NOLOAD);
    if (!h) h = dlopen(lib, RTLD_LAZY);
    if (!h) return 0;
    void *s = dlsym(h, sym_name);
    Dl_info di;
    u64 off = 0;
    if (s && dladdr(s, &di)) {
        off = (u64)s - (u64)di.dli_fbase;
        if (lib_path && path_sz && di.dli_fname)
            snprintf(lib_path, path_sz, "%s", di.dli_fname);
    }
    dlclose(h);
    return off;
}

#if defined(__aarch64__)
static u64 call_remote(pid_t pid, struct arch_regs *sv, u64 fn,
                        u64 a0, u64 a1, u64 a2, u64 a3, u64 a4, u64 a5)
{
    u64 aligned = sv->pc & ~7ULL;
    u64 pc_off  = sv->pc - aligned;

    errno = 0;
    long orig = ptrace(PTRACE_PEEKTEXT, pid, (void *)aligned, NULL);
    if (errno) { perror("PEEKTEXT"); return (u64)-1; }

    long patched;
    if (pc_off == 0)
        patched = (orig & ~(long)0xFFFFFFFF) | (long)0xD4200000;
    else
        patched = (orig & (long)0xFFFFFFFF) | ((long)0xD4200000 << 32);

    if (ptrace(PTRACE_POKETEXT, pid, (void *)aligned, (void *)patched)) {
        perror("POKETEXT"); return (u64)-1;
    }

    struct arch_regs r = *sv;
    r.regs[0]  = a0; r.regs[1] = a1; r.regs[2] = a2;
    r.regs[3]  = a3; r.regs[4] = a4; r.regs[5] = a5;
    r.regs[30] = sv->pc;
    r.pc       = fn;
    regs_set(pid, &r);
    ptrace(PTRACE_CONT, pid, NULL, NULL);
    if (wait_for_stop(pid, SIGTRAP) < 0) {
        ptrace(PTRACE_POKETEXT, pid, (void *)aligned, (void *)orig);
        regs_set(pid, sv);
        return (u64)-1;
    }

    struct arch_regs res;
    regs_get(pid, &res);
    u64 ret = res.regs[0];

    ptrace(PTRACE_POKETEXT, pid, (void *)aligned, (void *)orig);
    regs_set(pid, sv);
    return ret;
}
#elif defined(__x86_64__)
static u64 call_remote(pid_t pid, struct arch_regs *sv, u64 fn,
                        u64 a0, u64 a1, u64 a2, u64 a3, u64 a4, u64 a5)
{
    u64 trap_rip = sv->rip;

    errno = 0;
    long orig = ptrace(PTRACE_PEEKTEXT, pid, (void *)trap_rip, NULL);
    if (errno) { perror("PEEKTEXT"); return (u64)-1; }

    long patched = (orig & ~(long)0xFF) | (long)0xCC;
    if (ptrace(PTRACE_POKETEXT, pid, (void *)trap_rip, (void *)patched)) {
        perror("POKETEXT"); return (u64)-1;
    }

    struct arch_regs r = *sv;
    r.rsp -= 8;
    ptrace(PTRACE_POKEDATA, pid, (void *)r.rsp, (void *)(long)trap_rip);

    r.rdi = a0; r.rsi = a1; r.rdx = a2;
    r.rcx = a3; r.r8  = a4; r.r9  = a5;
    r.rip = fn;
    regs_set(pid, &r);
    ptrace(PTRACE_CONT, pid, NULL, NULL);
    if (wait_for_stop(pid, SIGTRAP) < 0) {
        ptrace(PTRACE_POKETEXT, pid, (void *)trap_rip, (void *)orig);
        regs_set(pid, sv);
        return (u64)-1;
    }

    struct arch_regs res;
    regs_get(pid, &res);
    u64 ret = res.rax;

    ptrace(PTRACE_POKETEXT, pid, (void *)trap_rip, (void *)orig);
    regs_set(pid, sv);
    return ret;
}
#endif

static int pid_matches_pkg(pid_t pid, const char *pkg)
{
    char path[64];
    snprintf(path, sizeof(path), "/proc/%d/cmdline", (int)pid);
    int fd = open(path, O_RDONLY);
    if (fd < 0) return 0;
    char buf[256] = {};
    read(fd, buf, sizeof(buf) - 1);
    close(fd);
    return strncmp(buf, pkg, strlen(pkg)) == 0;
}

static pid_t find_pid(const char *pkg)
{
    DIR *d = opendir("/proc");
    if (!d) return 0;
    struct dirent *e;
    pid_t found = 0;
    while ((e = readdir(d)) && !found) {
        if (e->d_type != DT_DIR) continue;
        char *end;
        long n = strtol(e->d_name, &end, 10);
        if (*end || n <= 1) continue;
        if (pid_matches_pkg((pid_t)n, pkg)) found = (pid_t)n;
    }
    closedir(d);
    return found;
}

static int copy_file(const char *src, const char *dst)
{
    int sfd = open(src, O_RDONLY);
    if (sfd < 0) return -1;
    int dfd = open(dst, O_WRONLY | O_CREAT | O_TRUNC, 0755);
    if (dfd < 0) { close(sfd); return -1; }
    char buf[65536];
    ssize_t n;
    int rc = 0;
    while ((n = read(sfd, buf, sizeof(buf))) > 0) {
        if (write(dfd, buf, (size_t)n) != n) { rc = -1; break; }
    }
    if (n < 0) rc = -1;
    close(sfd);
    close(dfd);
    return rc;
}

static int dump_so(pid_t target, const char *libname, const char *outpath)
{
    MapRange ranges[128];
    int nr = maps_collect(target, libname, ranges, 128);
    if (nr <= 0) {
        fprintf(stderr, "[dump] no maps for %s\n", libname);
        return -1;
    }

    u64 elf_base = 0;
    for (int i = 0; i < nr; i++) {
        if (ranges[i].file_off == 0) { elf_base = ranges[i].start; break; }
    }
    if (!elf_base) elf_base = ranges[0].start;
    fprintf(stderr, "[dump] elf_base=0x%llx  nr_ranges=%d\n",
            (unsigned long long)elf_base, nr);

    Elf64_Ehdr ehdr;
    {
        struct iovec lv = { &ehdr, sizeof(ehdr) };
        struct iovec rv = { (void *)elf_base, sizeof(ehdr) };
        if (process_vm_readv(target, &lv, 1, &rv, 1, 0) < (ssize_t)sizeof(ehdr)) {
            fprintf(stderr, "[dump] failed to read ELF header: %s\n", strerror(errno));
            return -1;
        }
    }
    if (ehdr.e_ident[0] != 0x7f || ehdr.e_ident[1] != 'E' ||
        ehdr.e_ident[2] != 'L'  || ehdr.e_ident[3] != 'F') {
        fprintf(stderr, "[dump] bad ELF magic at base 0x%llx\n",
                (unsigned long long)elf_base);
        return -1;
    }

    unsigned phnum   = ehdr.e_phnum;
    unsigned phentsz = ehdr.e_phentsize;
    if (phnum == 0 || phnum > 256 || phentsz < (unsigned)sizeof(Elf64_Phdr)) {
        fprintf(stderr, "[dump] invalid phnum=%u phentsz=%u\n", phnum, phentsz);
        return -1;
    }

    Elf64_Phdr *phdrs = (Elf64_Phdr *)malloc(phnum * sizeof(Elf64_Phdr));
    if (!phdrs) return -1;
    {
        struct iovec lv = { phdrs, phnum * sizeof(Elf64_Phdr) };
        struct iovec rv = { (void *)(elf_base + ehdr.e_phoff), phnum * sizeof(Elf64_Phdr) };
        ssize_t rd = process_vm_readv(target, &lv, 1, &rv, 1, 0);
        if (rd < (ssize_t)(phnum * sizeof(Elf64_Phdr))) {
            fprintf(stderr, "[dump] failed to read phdrs: %s\n", strerror(errno));
            free(phdrs);
            return -1;
        }
    }

    u64 file_size = sizeof(Elf64_Ehdr);
    for (unsigned i = 0; i < phnum; i++) {
        if (phdrs[i].p_type != PT_LOAD) continue;
        u64 seg_end = phdrs[i].p_offset + phdrs[i].p_filesz;
        if (seg_end > file_size) file_size = seg_end;
    }
    fprintf(stderr, "[dump] file_size=0x%llx\n", (unsigned long long)file_size);

    unsigned char *buf = (unsigned char *)calloc(1, (size_t)file_size);
    if (!buf) {
        fprintf(stderr, "[dump] OOM %llu bytes\n", (unsigned long long)file_size);
        free(phdrs);
        return -1;
    }

    for (unsigned i = 0; i < phnum; i++) {
        if (phdrs[i].p_type != PT_LOAD) continue;
        u64 va       = elf_base + phdrs[i].p_vaddr;
        u64 filesz   = phdrs[i].p_filesz;
        u64 file_off = phdrs[i].p_offset;
        if (file_off + filesz > file_size) filesz = file_size - file_off;

        struct iovec lv = { buf + file_off, (size_t)filesz };
        struct iovec rv = { (void *)va, (size_t)filesz };
        ssize_t rd = process_vm_readv(target, &lv, 1, &rv, 1, 0);
        fprintf(stderr, "[dump] LOAD[%u] va=0x%llx off=0x%llx filesz=0x%llx -> %lld\n",
                i, (unsigned long long)va, (unsigned long long)file_off,
                (unsigned long long)filesz, (long long)rd);
    }

    {
        Elf64_Ehdr *eh = (Elf64_Ehdr *)buf;
        eh->e_shoff    = 0;
        eh->e_shnum    = 0;
        eh->e_shstrndx = 0;
    }

    free(phdrs);

    FILE *out = fopen(outpath, "wb");
    if (!out) {
        fprintf(stderr, "[dump] fopen %s: %s\n", outpath, strerror(errno));
        free(buf);
        return -1;
    }
    fwrite(buf, 1, (size_t)file_size, out);
    fclose(out);
    free(buf);

    fprintf(stderr, "[dump] wrote %llu bytes -> %s\n",
            (unsigned long long)file_size, outpath);
    return 0;
}

static void patch_linkerconfig(void)
{
    const char *path = "/linkerconfig/ld.config.txt";
    FILE *f = fopen(path, "r");
    if (!f) return;

    static char in_buf[65536];
    size_t in_n = fread(in_buf, 1, sizeof(in_buf) - 1, f);
    fclose(f);
    if (!in_n) return;
    in_buf[in_n] = '\0';

    if (strstr(in_buf, "/data/local/tmp")) return;

    static char out_buf[131072];
    size_t out_n = 0;
    const char *needle = "permitted.paths = ";
    size_t      nlen   = strlen(needle);
    const char *insert = "/data/local/tmp:";
    size_t      ilen   = strlen(insert);
    const char *pos    = in_buf;

    while (*pos) {
        const char *hit = strstr(pos, needle);
        if (!hit) {
            size_t rem = in_n - (size_t)(pos - in_buf);
            if (out_n + rem >= sizeof(out_buf)) break;
            memcpy(out_buf + out_n, pos, rem);
            out_n += rem;
            break;
        }
        size_t before = (size_t)(hit - pos);
        if (out_n + before + nlen + ilen >= sizeof(out_buf)) break;
        memcpy(out_buf + out_n, pos,    before); out_n += before;
        memcpy(out_buf + out_n, needle, nlen);   out_n += nlen;
        memcpy(out_buf + out_n, insert, ilen);   out_n += ilen;
        pos = hit + nlen;
    }

    f = fopen(path, "w");
    if (!f) {
        fprintf(stderr, "[inject] linkerconfig write failed: %s\n", strerror(errno));
        return;
    }
    fwrite(out_buf, 1, out_n, f);
    fclose(f);
    fprintf(stderr, "[inject] linkerconfig: /data/local/tmp added to permitted.paths\n");
}

static int do_inject(pid_t target, const char *so_path)
{
    if (ptrace(PTRACE_ATTACH, target, NULL, NULL) < 0) {
        perror("PTRACE_ATTACH"); return -1;
    }
    if (wait_for_stop(target, SIGSTOP) < 0) {
        ptrace(PTRACE_DETACH, target, NULL, NULL); return -1;
    }

    struct arch_regs saved;
    if (regs_get(target, &saved) < 0) {
        perror("GETREGSET");
        ptrace(PTRACE_DETACH, target, NULL, NULL);
        return -1;
    }
    fprintf(stderr, "[inject] PC=0x%llx\n", (unsigned long long)ARCH_PC(saved));

    char libc_real[256] = {};
    char libdl_real[256] = {};
    u64 mmap_off      = sym_offset("libc.so",  "mmap",             libc_real,  sizeof(libc_real));
    u64 dlopen_off    = sym_offset("libdl.so", "__loader_dlopen",  libdl_real, sizeof(libdl_real));
    u64 dlerror_off   = sym_offset("libdl.so", "dlerror",          NULL, 0);
    if (!dlopen_off)
        dlopen_off    = sym_offset("libdl.so", "dlopen",           libdl_real, sizeof(libdl_real));

    u64 libc_base  = maps_base(target, libc_real[0]  ? libc_real  : "libc.so");
    u64 libdl_base = maps_base(target, libdl_real[0] ? libdl_real : "libdl.so");

    fprintf(stderr, "[inject] libc=0x%llx+0x%llx libdl=0x%llx+0x%llx\n",
            (unsigned long long)libc_base,  (unsigned long long)mmap_off,
            (unsigned long long)libdl_base, (unsigned long long)dlopen_off);

    if (!libc_base || !mmap_off || !libdl_base || !dlopen_off) {
        fprintf(stderr, "[inject] symbol resolution failed\n");
        ptrace(PTRACE_DETACH, target, NULL, NULL);
        return -1;
    }

    u64 fn_mmap    = libc_base  + mmap_off;
    u64 fn_dlopen  = libdl_base + dlopen_off;
    u64 fn_dlerror = dlerror_off ? libdl_base + dlerror_off : 0;

    size_t pathlen = strlen(so_path) + 1;
    size_t alloc   = (pathlen + 4095u) & ~4095u;
    u64 rbuf = call_remote(target, &saved, fn_mmap,
                            0, (u64)alloc,
                            PROT_READ | PROT_WRITE,
                            MAP_PRIVATE | MAP_ANONYMOUS,
                            (u64)(s64)-1, 0);
    fprintf(stderr, "[inject] mmap=0x%llx\n", (unsigned long long)rbuf);
    if (!rbuf || (s64)rbuf < 0) {
        fprintf(stderr, "[inject] mmap failed\n");
        ptrace(PTRACE_DETACH, target, NULL, NULL);
        return -1;
    }

    for (size_t off = 0; off < pathlen; off += 8) {
        union { long v; char b[8]; } w;
        w.v = 0;
        size_t chunk = pathlen - off; if (chunk > 8) chunk = 8;
        memcpy(w.b, so_path + off, chunk);
        ptrace(PTRACE_POKEDATA, target, (void *)(rbuf + off), (void *)w.v);
    }

    u64 handle = call_remote(target, &saved, fn_dlopen,
                              rbuf, (u64)RTLD_NOW, ARCH_PC(saved), 0, 0, 0);
    fprintf(stderr, "[inject] dlopen(\"%s\")=0x%llx\n",
            so_path, (unsigned long long)handle);

    if (!handle || (s64)handle < 0) {
        char nb_real[256] = {};
        u64 nbload_off = sym_offset("libnativebridge.so", "NativeBridgeLoadLibrary",
                                    nb_real, sizeof(nb_real));
        if (nbload_off) {
            u64 nb_base = maps_base(target, nb_real[0] ? nb_real : "libnativebridge.so");
            if (nb_base) {
                u64 fn_nbload = nb_base + nbload_off;
                handle = call_remote(target, &saved, fn_nbload,
                                     rbuf, (u64)RTLD_NOW, 0, 0, 0, 0);
                fprintf(stderr, "[inject] NativeBridgeLoadLibrary(...)=0x%llx\n",
                        (unsigned long long)handle);
            } else {
                fprintf(stderr, "[inject] libnativebridge.so not in maps\n");
            }
        } else {
            fprintf(stderr, "[inject] NativeBridgeLoadLibrary not found\n");
        }
    }

    ptrace(PTRACE_DETACH, target, NULL, NULL);
    return (handle && (s64)handle > 0) ? 0 : -1;
}

int main(int argc, char *argv[])
{
    if (argc >= 4 && strcmp(argv[1], "--dump") == 0) {
        const char *libname = argv[2];
        const char *outpath = argv[3];
        const char *pkg     = "com.kakaogames.eversoul";

        fprintf(stderr, "[dump] waiting for %s\n", pkg);
        pid_t target = 0;
        for (int i = 0; i < 300 && !target; ++i) {
            usleep(100000);
            target = find_pid(pkg);
        }
        if (!target) {
            fprintf(stderr, "[dump] ERROR: %s not found in 30s\n", pkg);
            return 1;
        }
        fprintf(stderr, "[dump] pid=%d  waiting for %s in maps\n",
                (int)target, libname);

        MapRange probe[1];
        for (int i = 0; i < 150; i++) {
            if (maps_collect(target, libname, probe, 1) > 0) break;
            usleep(100000);
        }
        if (maps_collect(target, libname, probe, 1) <= 0) {
            fprintf(stderr, "[dump] ERROR: %s not in maps after 15s\n", libname);
            return 1;
        }

        MapRange uprobe[1];
        int unity_ready = 0;
        for (int i = 0; i < 100; i++) {
            if (maps_collect(target, "libunity.so", uprobe, 1) > 0) {
                unity_ready = 1;
                break;
            }
            usleep(100000);
        }
        if (!unity_ready)
            usleep(2000000);

        return dump_so(target, libname, outpath) == 0 ? 0 : 1;
    }

    if (argc < 2) {
        fprintf(stderr, "usage: inject_helper <libswappywrapper.so>\n"
                        "       inject_helper --dump <libname> <outpath>\n");
        return 1;
    }
    const char *src_so = argv[1];
    const char *pkg    = "com.kakaogames.eversoul";

    patch_linkerconfig();

    fprintf(stderr, "[inject] waiting for %s\n", pkg);
    pid_t target = 0;
    for (int i = 0; i < 200 && !target; ++i) {
        usleep(100000);
        target = find_pid(pkg);
    }
    if (!target) {
        fprintf(stderr, "[inject] ERROR: %s not found in 20s\n", pkg);
        return 1;
    }
    fprintf(stderr, "[inject] pid=%d\n", (int)target);

    fprintf(stderr, "[inject] waiting for libcawwyayy.so (NB init)\n");
    MapRange caw_probe[1];
    for (int i = 0; i < 300; ++i) {
        if (maps_collect(target, "cawwyayy", caw_probe, 1) > 0) break;
        usleep(100000);
    }
    if (maps_collect(target, "cawwyayy", caw_probe, 1) <= 0)
        fprintf(stderr, "[inject] WARNING: cawwyayy not found, injecting anyway\n");
    else
        fprintf(stderr, "[inject] cawwyayy loaded, NB ready\n");

    if (do_inject(target, src_so) == 0) {
        fprintf(stderr, "[inject] SUCCESS (direct)\n");
        return 0;
    }
    fprintf(stderr, "[inject] direct dlopen failed, trying app lib dir\n");

    char unity_path[1024] = {};
    for (int i = 0; i < 30 && !unity_path[0]; ++i) {
        usleep(100000);
        maps_filepath(target, "libunity.so", unity_path, sizeof(unity_path));
    }
    if (!unity_path[0]) {
        fprintf(stderr, "[inject] ERROR: libunity.so path not found in maps\n");
        return 1;
    }
    fprintf(stderr, "[inject] libunity: %s\n", unity_path);

    char dst_so[1024];
    char *slash = strrchr(unity_path, '/');
    if (!slash) {
        fprintf(stderr, "[inject] ERROR: unexpected unity path format\n");
        return 1;
    }
    size_t dirlen = (size_t)(slash - unity_path + 1);
    if (dirlen >= sizeof(dst_so) - 32) {
        fprintf(stderr, "[inject] ERROR: path too long\n");
        return 1;
    }
    memcpy(dst_so, unity_path, dirlen);
    strcpy(dst_so + dirlen, "libswappywrapper.so");

    fprintf(stderr, "[inject] copying to %s\n", dst_so);
    if (copy_file(src_so, dst_so) < 0) {
        fprintf(stderr, "[inject] copy failed: %s\n", strerror(errno));
        return 1;
    }
    chmod(dst_so, 0755);

    if (do_inject(target, dst_so) == 0) {
        fprintf(stderr, "[inject] SUCCESS (app lib dir)\n");
        return 0;
    }

    fprintf(stderr, "[inject] FAILED: both injection methods failed\n");
    return 1;
}
