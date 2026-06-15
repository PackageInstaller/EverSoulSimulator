#include "anticheat_patch.hpp"
#include "inline_hook.hpp"

#include <android/log.h>
#include <dlfcn.h>
#include <elf.h>
#include <pthread.h>
#include <string.h>
#include <sys/mman.h>
#include <unistd.h>

#include <atomic>
#include <cstdint>

namespace eversoul::anticheat
{

    namespace
    {
        constexpr const char *kLogTag = "libswappywrapper";

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wformat-security"
        template <class... A>
        void logi(const char *fmt, A... a) { __android_log_print(ANDROID_LOG_INFO,  kLogTag, fmt, a...); }
        template <class... A>
        void loge(const char *fmt, A... a) { __android_log_print(ANDROID_LOG_ERROR, kLogTag, fmt, a...); }
#pragma clang diagnostic pop
    } // namespace

#if defined(__aarch64__) || defined(__x86_64__)

    namespace
    {
        using pthread_create_fn = int (*)(pthread_t *, const pthread_attr_t *, void *(*)(void *), void *);

        static pthread_create_fn g_orig_pthread_create = nullptr;
        static std::atomic<bool> g_hook_done{false};

        static void *dummy_thread(void *) { return nullptr; }

        static int hook_pthread_create(pthread_t *thread, const pthread_attr_t *attr,
                                       void *(*start_routine)(void *), void *arg)
        {
            if (start_routine)
            {
                Dl_info info{};
                if (dladdr(reinterpret_cast<void *>(start_routine), &info) &&
                    info.dli_fname && strstr(info.dli_fname, "cawwyayy"))
                {
                    auto offset = reinterpret_cast<uintptr_t>(start_routine) -
                                  reinterpret_cast<uintptr_t>(info.dli_fbase);
                    logi("anticheat: blocked cawwyayy thread offset=0x%lx",
                         static_cast<unsigned long>(offset));
                    return g_orig_pthread_create(thread, attr, dummy_thread, arg);
                }
            }
            return g_orig_pthread_create(thread, attr, start_routine, arg);
        }

        static int got_hook_pthread_create(uintptr_t base, const char *map_name)
        {
            if (!base) return 0;

            const auto *ehdr = reinterpret_cast<const Elf64_Ehdr *>(base);
            if (memcmp(ehdr->e_ident, ELFMAG, SELFMAG) != 0) return 0;

            const auto *phdr = reinterpret_cast<const Elf64_Phdr *>(base + ehdr->e_phoff);
            const Elf64_Dyn *dyn = nullptr;
            for (int i = 0; i < ehdr->e_phnum; ++i) {
                if (phdr[i].p_type == PT_DYNAMIC) {
                    dyn = reinterpret_cast<const Elf64_Dyn *>(base + phdr[i].p_vaddr);
                    break;
                }
            }
            if (!dyn) return 0;

            const Elf64_Rela *rela = nullptr;  size_t relasz  = 0;
            const Elf64_Rela *plt  = nullptr;  size_t pltsz   = 0;
            const Elf64_Sym  *sym  = nullptr;
            const char       *str  = nullptr;

            for (const Elf64_Dyn *d = dyn; d->d_tag != DT_NULL; ++d) {
                uintptr_t v = d->d_un.d_ptr;
                uintptr_t abs = (v < base) ? base + v : v;
                switch (d->d_tag) {
                    case DT_RELA:    rela   = reinterpret_cast<const Elf64_Rela *>(abs); break;
                    case DT_RELASZ:  relasz = d->d_un.d_val; break;
                    case DT_JMPREL:  plt    = reinterpret_cast<const Elf64_Rela *>(abs); break;
                    case DT_PLTRELSZ:pltsz  = d->d_un.d_val; break;
                    case DT_SYMTAB:  sym    = reinterpret_cast<const Elf64_Sym  *>(abs); break;
                    case DT_STRTAB:  str    = reinterpret_cast<const char       *>(abs); break;
                    default: break;
                }
            }
            if (!sym || !str) return 0;

            int count = 0;
            auto patch_table = [&](const Elf64_Rela *table, size_t sz) {
                if (!table || !sz) return;
                size_t n = sz / sizeof(Elf64_Rela);
                for (size_t i = 0; i < n; ++i) {
                    unsigned idx = ELF64_R_SYM(table[i].r_info);
                    if (!idx) continue;
                    if (strcmp(str + sym[idx].st_name, "pthread_create") != 0) continue;
                    auto *slot = reinterpret_cast<uintptr_t *>(base + table[i].r_offset);
                    uintptr_t new_val = reinterpret_cast<uintptr_t>(hook_pthread_create);
                    if (!eversoul::hook::write_memory(slot, &new_val, sizeof(new_val))) continue;
                    ++count;
                    logi("anticheat: GOT hook pthread_create in %s slot=%p", map_name, slot);
                }
            };
            patch_table(rela, relasz);
            patch_table(plt,  pltsz);
            return count;
        }

        static int scan_and_hook()
        {
            FILE *fp = fopen("/proc/self/maps", "r");
            if (!fp) return 0;
            char line[512];
            int total = 0;
            while (fgets(line, sizeof(line), fp)) {
                if (!strstr(line, "libcawwyayy")) continue;
                uintptr_t base = 0; char perm[8]{}; unsigned long off = 0; char name[256]{};
                if (sscanf(line, "%lx-%*lx %7s %lx %*s %*s %255s", &base, perm, &off, name) < 3) continue;
                if (strchr(perm, 'r') && off == 0)
                    total += got_hook_pthread_create(base, name[0] ? name : "libcawwyayy.so");
            }
            fclose(fp);
            return total;
        }

        static void *monitor_thread(void *)
        {
            logi("anticheat: monitor thread started");
            for (int i = 0; i < 3000 && !g_hook_done.load(); ++i) {
                if (scan_and_hook() > 0) {
                    g_hook_done.store(true);
                    logi("anticheat: GOT hook done");
                    break;
                }
                usleep(5000);
            }
            if (!g_hook_done.load())
                loge("anticheat: cawwyayy not found within 15s");
            return nullptr;
        }
    } // namespace

    void install()
    {
        void *raw = dlsym(RTLD_DEFAULT, "pthread_create");
        if (!raw) { loge("anticheat: pthread_create not found"); return; }
        g_orig_pthread_create = reinterpret_cast<pthread_create_fn>(raw);

        if (scan_and_hook() > 0) {
            g_hook_done.store(true);
            logi("anticheat: static GOT hook done");
        }

        pthread_t thr;
        g_orig_pthread_create(&thr, nullptr, monitor_thread, nullptr);
        pthread_detach(thr);
    }

#else

    void install()
    {
        logi("anticheat: hook skipped (unsupported arch)");
    }

#endif

} // namespace eversoul::anticheat
