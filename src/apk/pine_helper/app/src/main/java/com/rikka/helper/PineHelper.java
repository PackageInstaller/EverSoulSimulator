// PineHelper.java — Java-layer URL redirect hooks using Pine framework.
package com.rikka.helper;

import android.util.Log;
import java.net.URL;
import top.canyie.pine.Pine;
import top.canyie.pine.callback.MethodHook;

public class PineHelper {
    private static final String TAG = "swappywrapper/pine";
    private static final String LOCAL_HTTP_BASE = "http://127.0.0.1:9999";
    private static final String LOCAL_WS_BASE = "ws://127.0.0.1:9999";

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
        if (out.contains(".lockincomp.com")) {
            out = out.replaceAll("https?://[a-zA-Z0-9-]+\\.lockincomp\\.com(:\\d+)?", LOCAL_HTTP_BASE);
            return out;
        }
        for (String domain : WS_DOMAINS) {
            if (out.contains(domain)) {
                out = out.replaceAll("wss?://" + domain + "(:\\d+)?", LOCAL_WS_BASE);
                out = out.replaceAll("https?://" + domain + "(:\\d+)?", LOCAL_HTTP_BASE);
            }
        }
        for (String domain : DOMAINS) {
            if (out.contains(domain)) {
                out = out.replace("https://" + domain, LOCAL_HTTP_BASE);
                out = out.replace("http://" + domain, LOCAL_HTTP_BASE);
            }
        }
        if (!out.equals(url)) {
            Log.i(TAG, "Redirected: " + url + " -> " + out);
        }
        return out;
    }

    public static void init(ClassLoader classLoader) throws NoSuchMethodException {
        try {
            Log.i(TAG, "Starting Pine Java Hooks...");

            // Ensure Pine native library is loaded
            try { System.loadLibrary("pine"); } catch (Throwable ignored) {}

            // Hook java.net.URL(String)
            Pine.hook(URL.class.getDeclaredConstructor(String.class), new MethodHook() {
                @Override public void beforeCall(Pine.CallFrame callFrame) {
                    if (callFrame.args[0] != null) {
                        callFrame.args[0] = redirectUrl((String) callFrame.args[0]);
                    }
                }
            });

            // Hook java.net.URL(URL, String)
            Pine.hook(URL.class.getDeclaredConstructor(URL.class, String.class), new MethodHook() {
                @Override public void beforeCall(Pine.CallFrame callFrame) {
                    if (callFrame.args[1] != null) {
                        callFrame.args[1] = redirectUrl((String) callFrame.args[1]);
                    }
                }
            });

            // Hook OkHttp
            try {
                Class<?> okb = Class.forName("okhttp3.Request$Builder", true, classLoader);
                Pine.hook(okb.getDeclaredMethod("url", String.class), new MethodHook() {
                    @Override public void beforeCall(Pine.CallFrame callFrame) {
                        if (callFrame.args[0] != null) {
                            callFrame.args[0] = redirectUrl((String) callFrame.args[0]);
                        }
                    }
                });
                Log.i(TAG, "OkHttp hooked");
            } catch (ClassNotFoundException ignored) {}

            Log.i(TAG, "Pine hooks installed");
        } catch (Throwable t) {
            Log.e(TAG, "Pine init failed", t);
            throw t; // rethrow so native loader can see the error
        }
    }
}
