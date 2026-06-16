#pragma once
#ifdef __ANDROID__
#include <jni.h>
#include <string_view>

namespace eversoul::dex_loader {

// build_redirect_dex.sh가 objcopy로 생성한 ELF에서 링커가 노출하는 심볼
extern "C" {
    extern const char _binary_redirect_hooks_dex_start[];
    extern const char _binary_redirect_hooks_dex_end[];
}

// embed된 redirect_hooks.dex를 InMemoryDexClassLoader로 메모리 로드 후
// class_name(점 구분자, 예: "com.eversoul.offline.RedirectHooks") 클래스를 반환.
// 반환값은 local ref — 호출자가 DeleteLocalRef 또는 NewGlobalRef 책임짐.
// 실패 시 nullptr 반환, ExceptionClear 처리 완료.
jclass load_class(JNIEnv* env, std::string_view class_name);

} // namespace eversoul::dex_loader
#endif
