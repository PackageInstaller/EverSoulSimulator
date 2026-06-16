package com.rikka.eversouloffline;

import android.content.Context;
import de.robv.android.xposed.IXposedHookLoadPackage;
import de.robv.android.xposed.XC_MethodHook;
import de.robv.android.xposed.XposedBridge;
import de.robv.android.xposed.XposedHelpers;
import de.robv.android.xposed.callbacks.XC_LoadPackage;

import java.io.File;
import java.net.URL;

public class XposedInit implements IXposedHookLoadPackage {
    private static final String TAG = "EversoulRedirect";
    private static final String TARGET_PACKAGE = "com.kakaogames.eversoul";
    private static final String LOCAL_HTTP_BASE = "http://127.0.0.1:9999";
    private static final String LOCAL_WS_BASE = "ws://127.0.0.1:9999";

    // Domains to redirect
    private static final String[] DOMAINS = {
        "gc-openapi-zinny3.kakaogames.com",
        "gc-infodesk-zinny3.kakaogames.com",
        "gc-session-zinny3.kakaogames.com",
        "session-zinny3.game.kakao.com",
        "qa-gc-openapi-zinny3.kakaogames.com",
        "qa-gc-infodesk-zinny3.kakaogames.com",
        "infodesk-zinny3.game.kakao.com",
        "openapi-zinny3.game.kakao.com",
        "game.kakao.com",
        "kakaogames.com"
    };

    private static final String[] WS_DOMAINS = {
        "live-sea-chat.esoul.kakaogames.com",
        "live-sea.esoul.kakaogames.com",
        "gc-session-zinny3.kakaogames.com"
    };

    private static String redirectUrl(String url) {
        if (url == null) return null;
        String out = url;

        // LIAPP lockincomp
        if (out.contains(".lockincomp.com")) {
            out = out.replaceAll("https?://[a-zA-Z0-9-]+\\.lockincomp\\.com(:\\d+)?", LOCAL_HTTP_BASE);
            XposedBridge.log(TAG + ": Redirected lockincomp: " + url + " -> " + out);
            return out;
        }

        // Check WebSocket domains first
        for (String domain : WS_DOMAINS) {
            if (out.contains(domain)) {
                out = out.replaceAll("wss?://" + domain + "(:\\d+)?", LOCAL_WS_BASE);
                out = out.replaceAll("https?://" + domain + "(:\\d+)?", LOCAL_HTTP_BASE);
            }
        }

        // Check HTTP domains
        for (String domain : DOMAINS) {
            if (out.contains(domain)) {
                out = out.replace("https://" + domain, LOCAL_HTTP_BASE);
                out = out.replace("http://" + domain, LOCAL_HTTP_BASE);
            }
        }

        if (!out.equals(url)) {
            XposedBridge.log(TAG + ": Redirected: " + url + " -> " + out);
        }
        return out;
    }

    @Override
    public void handleLoadPackage(final XC_LoadPackage.LoadPackageParam lpparam) throws Throwable {
        if (!TARGET_PACKAGE.equals(lpparam.packageName)) {
            return;
        }

        XposedBridge.log(TAG + ": Hooking Eversoul...");

        // 1. Hook java.net.URL
        try {
            XposedHelpers.findAndHookConstructor(URL.class, String.class, new XC_MethodHook() {
                @Override
                protected void beforeHookedMethod(MethodHookParam param) throws Throwable {
                    if (param.args[0] != null) {
                        param.args[0] = redirectUrl((String) param.args[0]);
                    }
                }
            });

            XposedHelpers.findAndHookConstructor(URL.class, URL.class, String.class, new XC_MethodHook() {
                @Override
                protected void beforeHookedMethod(MethodHookParam param) throws Throwable {
                    if (param.args[1] != null) {
                        param.args[1] = redirectUrl((String) param.args[1]);
                    }
                }
            });

            XposedHelpers.findAndHookConstructor(URL.class, URL.class, String.class, java.net.URLStreamHandler.class, new XC_MethodHook() {
                @Override
                protected void beforeHookedMethod(MethodHookParam param) throws Throwable {
                    if (param.args[1] != null) {
                        param.args[1] = redirectUrl((String) param.args[1]);
                    }
                }
            });
        } catch (Throwable t) {
            XposedBridge.log(TAG + ": Failed to hook java.net.URL constructors: " + t.getMessage());
        }

        // 2. Hook OkHttp (okhttp3.Request$Builder.url)
        try {
            XposedHelpers.findAndHookMethod("okhttp3.Request$Builder", lpparam.classLoader, "url", String.class, new XC_MethodHook() {
                @Override
                protected void beforeHookedMethod(MethodHookParam param) throws Throwable {
                    if (param.args[0] != null) {
                        param.args[0] = redirectUrl((String) param.args[0]);
                    }
                }
            });
        } catch (Throwable t) {
            XposedBridge.log(TAG + ": okhttp3.Request$Builder not found or failed to hook: " + t.getMessage());
        }

        // 3. Hook Runtime.loadLibrary0 instead of System.loadLibrary to avoid VMStack.getCallingClassLoader() stack corruption
        try {
            XposedHelpers.findAndHookMethod(Runtime.class, "loadLibrary0", ClassLoader.class, String.class, new XC_MethodHook() {
                @Override
                protected void afterHookedMethod(MethodHookParam param) throws Throwable {
                    ClassLoader loader = (ClassLoader) param.args[0];
                    String libname = (String) param.args[1];
                    if ("il2cpp".equals(libname)) {
                        XposedBridge.log(TAG + ": libil2cpp.so loaded via loadLibrary0, injecting native redirect library...");
                        try {
                            XposedHelpers.callMethod(Runtime.getRuntime(), "loadLibrary0", loader, "redirect");
                            XposedBridge.log(TAG + ": Successfully loaded libredirect.so using Runtime.loadLibrary0");
                        } catch (Throwable e) {
                            XposedBridge.log(TAG + ": Runtime.loadLibrary0(redirect) failed, trying explicit path... " + e.getMessage());
                            
                            // Fallback to explicit path loading
                            Context context = null;
                            try {
                                Class<?> activityThreadClass = Class.forName("android.app.ActivityThread");
                                Object currentActivityThread = activityThreadClass.getMethod("currentActivityThread").invoke(null);
                                if (currentActivityThread != null) {
                                    context = (Context) activityThreadClass.getMethod("getSystemContext").invoke(currentActivityThread);
                                }
                            } catch (Throwable t) {
                                XposedBridge.log(TAG + ": Failed to dynamically obtain system context: " + t.getMessage());
                            }

                            if (context != null) {
                                try {
                                    Context moduleContext = context.createPackageContext("com.rikka.eversouloffline", Context.CONTEXT_IGNORE_SECURITY);
                                    String nativeLibDir = moduleContext.getApplicationInfo().nativeLibraryDir;
                                    File soFile = new File(nativeLibDir, "libredirect.so");
                                    if (soFile.exists()) {
                                        System.load(soFile.getAbsolutePath());
                                        XposedBridge.log(TAG + ": Successfully loaded libredirect.so from: " + soFile.getAbsolutePath());
                                    } else {
                                        XposedBridge.log(TAG + ": libredirect.so not found at: " + soFile.getAbsolutePath());
                                    }
                                } catch (Throwable t) {
                                    XposedBridge.log(TAG + ": Failed to resolve module package context: " + t.getMessage());
                                }
                            } else {
                                XposedBridge.log(TAG + ": Cannot resolve explicit path, context is null");
                            }
                        }
                    }
                }
            });
        } catch (Throwable t) {
            XposedBridge.log(TAG + ": Failed to hook Runtime.loadLibrary0: " + t.getMessage());
        }
    }
}
