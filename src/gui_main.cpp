#include <windows.h>
#include <shellscalingapi.h>
#include <filesystem>
#include <string>

#include "WebView2.h"
#include "common.hpp"
#include "server.hpp"
#include "offline_data.hpp"
#include "adb_runner.hpp"

extern const unsigned char kWebBlobData[];
extern const std::size_t   kWebBlobSize;

using PFN_CreateEnv = HRESULT(STDAPICALLTYPE*)(
    PCWSTR,
    PCWSTR,
    ICoreWebView2EnvironmentOptions*,
    ICoreWebView2CreateCoreWebView2EnvironmentCompletedHandler*);

static PFN_CreateEnv            g_create_env  = nullptr;
static HWND                     g_hwnd        = nullptr;
static ICoreWebView2Controller* g_ctrl        = nullptr;
static ICoreWebView2*           g_wv          = nullptr;
static HBRUSH                   g_bg_brush    = nullptr;

static std::string exe_dir()
{
    char buf[MAX_PATH] = {};
    GetModuleFileNameA(nullptr, buf, MAX_PATH);
    return std::filesystem::path(buf).parent_path().string();
}

static std::wstring to_wide(const std::string& s)
{
    if (s.empty()) return {};
    int n = MultiByteToWideChar(CP_UTF8, 0, s.c_str(), -1, nullptr, 0);
    std::wstring w(n - 1, L'\0');
    MultiByteToWideChar(CP_UTF8, 0, s.c_str(), -1, w.data(), n);
    return w;
}

static bool load_webview2(const std::string& dir)
{
    std::wstring dll = to_wide(dir + "\\WebView2Loader.dll");
    HMODULE h = LoadLibraryW(dll.c_str());
    if (!h) h = LoadLibraryW(L"WebView2Loader.dll");
    if (!h) return false;
    void* pfn = reinterpret_cast<void*>(
        GetProcAddress(h, "CreateCoreWebView2EnvironmentWithOptions"));
    g_create_env = reinterpret_cast<PFN_CreateEnv>(pfn);
    return g_create_env != nullptr;
}

static void resize_webview()
{
    if (!g_ctrl || !g_hwnd) return;
    RECT rc{};
    GetClientRect(g_hwnd, &rc);
    g_ctrl->put_Bounds(rc);
}

class CtrlHandler final : public ICoreWebView2CreateCoreWebView2ControllerCompletedHandler
{
    ULONG _ref{1};
public:
    ULONG   STDMETHODCALLTYPE AddRef()  override { return ++_ref; }
    ULONG   STDMETHODCALLTYPE Release() override { if (!--_ref) { delete this; return 0; } return _ref; }
    HRESULT STDMETHODCALLTYPE QueryInterface(REFIID id, void** p) override
    {
        if (id == IID_IUnknown ||
            id == IID_ICoreWebView2CreateCoreWebView2ControllerCompletedHandler)
        { *p = this; AddRef(); return S_OK; }
        *p = nullptr; return E_NOINTERFACE;
    }
    HRESULT STDMETHODCALLTYPE Invoke(HRESULT hr, ICoreWebView2Controller* ctrl) override
    {
        if (FAILED(hr) || !ctrl) return S_OK;
        g_ctrl = ctrl;
        g_ctrl->AddRef();
        g_ctrl->get_CoreWebView2(&g_wv);
        if (g_wv)
        {
            ICoreWebView2Settings* s = nullptr;
            if (SUCCEEDED(g_wv->get_Settings(&s)) && s)
            {
                s->put_AreDevToolsEnabled(FALSE);
                s->put_AreDefaultContextMenusEnabled(FALSE);
                s->Release();
            }
            g_wv->Navigate(L"http://127.0.0.1:9991/web/");
        }
        g_ctrl->put_IsVisible(TRUE);
        resize_webview();
        return S_OK;
    }
};

class EnvHandler final : public ICoreWebView2CreateCoreWebView2EnvironmentCompletedHandler
{
    ULONG _ref{1};
public:
    ULONG   STDMETHODCALLTYPE AddRef()  override { return ++_ref; }
    ULONG   STDMETHODCALLTYPE Release() override { if (!--_ref) { delete this; return 0; } return _ref; }
    HRESULT STDMETHODCALLTYPE QueryInterface(REFIID id, void** p) override
    {
        if (id == IID_IUnknown ||
            id == IID_ICoreWebView2CreateCoreWebView2EnvironmentCompletedHandler)
        { *p = this; AddRef(); return S_OK; }
        *p = nullptr; return E_NOINTERFACE;
    }
    HRESULT STDMETHODCALLTYPE Invoke(HRESULT hr, ICoreWebView2Environment* env) override
    {
        if (FAILED(hr) || !env) return S_OK;
        env->CreateCoreWebView2Controller(g_hwnd, new CtrlHandler());
        return S_OK;
    }
};

static LRESULT CALLBACK WndProc(HWND hwnd, UINT msg, WPARAM wp, LPARAM lp)
{
    switch (msg)
    {
    case WM_SIZE:
        if (g_ctrl && wp != SIZE_MINIMIZED) {
            RECT rc = {0, 0, LOWORD(lp), HIWORD(lp)};
            g_ctrl->put_Bounds(rc);
        }
        return 0;
    case WM_DESTROY:
        if (g_wv)       { g_wv->Release();   g_wv   = nullptr; }
        if (g_ctrl)     { g_ctrl->Release(); g_ctrl = nullptr; }
        if (g_bg_brush) { DeleteObject(g_bg_brush); g_bg_brush = nullptr; }
        eversoul::adb_runner::kill_server();
        eversoul::request_shutdown();
        PostQuitMessage(0);
        return 0;
    }
    return DefWindowProcW(hwnd, msg, wp, lp);
}

int WINAPI WinMain(HINSTANCE hInst, HINSTANCE, LPSTR, int)
{
    SetProcessDpiAwarenessContext(DPI_AWARENESS_CONTEXT_PER_MONITOR_AWARE_V2);
    CoInitializeEx(nullptr, COINIT_APARTMENTTHREADED);

    const std::string dir = exe_dir();

    eversoul::offline_data().load_embedded_web(kWebBlobData, kWebBlobSize);
    eversoul::adb_runner::set_adb_path(
        (std::filesystem::path(dir) / "adb" / "adb.exe").string());
    eversoul::adb_runner::start_server();
    eversoul::start_async(eversoul::kServerListenPort);

    if (!load_webview2(dir))
    {
        MessageBoxW(nullptr,
            L"WebView2Loader.dll을 찾을 수 없습니다.\n"
            L"EXE 폴더에 WebView2Loader.dll이 있어야 합니다.",
            L"EverSoul Offline", MB_ICONERROR);
        CoUninitialize();
        return 1;
    }

    const std::wstring icon_path = to_wide(dir + "\\logo.ico");
    HICON icon = static_cast<HICON>(LoadImageW(
        nullptr, icon_path.c_str(), IMAGE_ICON, 0, 0,
        LR_LOADFROMFILE | LR_DEFAULTSIZE));
    if (!icon) icon = LoadIconW(nullptr, IDI_APPLICATION);

    g_bg_brush = CreateSolidBrush(RGB(3, 11, 21));

    WNDCLASSEXW wc{};
    wc.cbSize        = sizeof(wc);
    wc.lpfnWndProc   = WndProc;
    wc.hInstance     = hInst;
    wc.hIcon         = icon;
    wc.hIconSm       = icon;
    wc.hCursor       = LoadCursorW(nullptr, IDC_ARROW);
    wc.hbrBackground = g_bg_brush;
    wc.lpszClassName = L"EverSoulOffline";
    RegisterClassExW(&wc);

    g_hwnd = CreateWindowExW(
        0, L"EverSoulOffline", L"EverSoul Offline Simulator",
        WS_OVERLAPPEDWINDOW,
        CW_USEDEFAULT, CW_USEDEFAULT, CW_USEDEFAULT, CW_USEDEFAULT,
        nullptr, nullptr, hInst, nullptr);

    ShowWindow(g_hwnd, SW_SHOWMAXIMIZED);
    UpdateWindow(g_hwnd);

    const std::wstring data_dir = to_wide(dir + "\\wv2_data");
    g_create_env(nullptr, data_dir.c_str(), nullptr, new EnvHandler());

    MSG m{};
    while (GetMessageW(&m, nullptr, 0, 0))
    {
        TranslateMessage(&m);
        DispatchMessageW(&m);
    }

    CoUninitialize();
    return static_cast<int>(m.wParam);
}
