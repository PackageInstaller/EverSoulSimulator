/*
 * Eversoul startup/login HTTP monitor.
 *
 * Usage:
 *   frida -H 127.0.0.1:27042 -f com.kakaogames.eversoul -l monitor_unity_web_request.js
 */

"use strict";

const CONFIG = {
  redirectToLocal: true,
  localBaseUrl: "http://127.0.0.1:9999",
  // Local WebSocket base. The offline server speaks both HTTP and WS on the
  // same port (9999), upgrading per-connection. wss:// / ws:// game URLs are
  // rewritten to this so the chat (socket.io) and Kakao session WS connect to
  // the local server.
  localWsBaseUrl: "ws://127.0.0.1:9999",
  maxBodyLog: 16 * 1024,
  maxNativeLog: 4096,
  enableSslTextLog: false,
  enableSocketHexdump: false,
  enableLoggerThrowableHook: false,
  enableInfodeskSignatureBypass: false,
  enableAndroidExitBypass: false,
  enableCustomUiLoginBypass: true,
  enableKakaoDiagnostics: false,
  // When true, force the Kakao SDK onto its HTTP transport (session topics go
  // to mocked /service/ endpoints) instead of the session WebSocket. This is
  // the long-working login path. Set FALSE to exercise the real session WS
  // against the local server (handled by ws_session.cpp).
  forceHttpConnection: false,
  logStacks: false,
  domains: [
    "gc-openapi-zinny3.kakaogames.com",
    "gc-infodesk-zinny3.kakaogames.com",
    "gc-session-zinny3.kakaogames.com",
    "session-zinny3.game.kakao.com",
    "qa-gc-openapi-zinny3.kakaogames.com",
    "qa-gc-infodesk-zinny3.kakaogames.com",
    "infodesk-zinny3.game.kakao.com",
    "openapi-zinny3.game.kakao.com",
    "game.kakao.com",
    "kakaogames.com",
  ],
  // Game WebSocket hosts (chat socket.io + the game server, which also serves
  // the live-sea-chat socket.io upgrade on :1739). Redirected for ws/wss too.
  wsDomains: [
    "live-sea-chat.esoul.kakaogames.com",
    "live-sea.esoul.kakaogames.com",
    "gc-session-zinny3.kakaogames.com",
  ],
  il2cpp: {
    LoginManager_MidSequence: 0x04c79070,
    LoginManager_AppStart: 0x04c79428,
    LoginManager_AppStart_MoveNext: 0x04c7a358,
    LoginManager_AppStart_callback: 0x04c79cac,
    LoginManager_MidSequence_MoveNext: 0x04c7a9b0,
    UI_DOWNLOAD_OnInitialize: 0x04fce5b0,
    UI_DOWNLOAD_Sequence: 0x04fce7a0,
    UI_DOWNLOAD_Sequence_MoveNext: 0x04fd33f4,
    KaKaoSDKAdapter_KakaoStartAppID_callback: 0x04c74000,
    KaKaoSDKAdapter_ShowMsgBox: 0x04c72530,
    InterfaceBroker_RequestAsync_callback: 0x08934998,
    KGAppOption_get_gameServerAddress: 0x089228b0,
    KGAppOption_get_cdnAddress: 0x08922918,
    KGConfiguration_cctor: 0x0894b3f0,
    KGConfiguration_infodeskUrl: 0x0894a6a8,
    KGConfiguration_openApiUrl: 0x08949f30,
    UnityWebRequest_ctor_string: 0x097887a4,
    UnityWebRequest_ctor_string_method: 0x097889e4,
    UnityWebRequest_ctor_full: 0x09788c5c,
    UnityWebRequest_SendWebRequest: 0x09789178,
    UnityWebRequest_SetUrl: 0x09789be8,
    UnityWebRequest_InternalSetRequestHeader: 0x0978a278,
    UnityWebRequest_SetUploadHandler: 0x0978a694,
    UnityWebRequest_Get: 0x0978ac50,
    UnityWebRequest_Put_bytes: 0x0978b040,
    UnityWebRequest_Put_string: 0x0978b27c,
    UnityWebRequest_PostWwwForm: 0x0978b488,
    UnityWebRequest_Post_contentType: 0x0978b700,
    UploadHandlerRaw_ctor_bytes: 0x0978b118,
    UploadHandlerRaw_Create: 0x0978d0f8,
    DownloadHandler_get_text: 0x09787a34,
    DownloadHandler_InternalGetByteArray: 0x09787a50,
    DownloadHandlerBuffer_GetContent: 0x0978814c,
  },
};

const requestState = {};
const uploadState = {};
let seq = 0;
let il2cppStringNew = null;

function now() {
  return new Date().toISOString();
}

function log(tag, msg) {
  console.log(`[${now()}][${tag}] ${msg}`);
}

function short(s) {
  if (s === null || s === undefined) return String(s);
  s = String(s);
  if (s.length > CONFIG.maxBodyLog) {
    return (
      s.substring(0, CONFIG.maxBodyLog) + `... <truncated ${s.length} chars>`
    );
  }
  return s;
}

function javaStack() {
  if (!Java.available || !CONFIG.logStacks) return "";
  try {
    const Log = Java.use("android.util.Log");
    const Exception = Java.use("java.lang.Exception");
    return "\n" + Log.getStackTraceString(Exception.$new());
  } catch (_) {
    return "";
  }
}

function javaThrowableStack(tr) {
  try {
    if (!tr) return "<null throwable>";
    const Log = Java.use("android.util.Log");
    return Log.getStackTraceString(tr);
  } catch (e) {
    return `<stack read failed: ${e.message}>`;
  }
}

function javaCurrentStack() {
  try {
    const Log = Java.use("android.util.Log");
    const Exception = Java.use("java.lang.Exception");
    return Log.getStackTraceString(Exception.$new());
  } catch (e) {
    return `<current stack failed: ${e.message}>`;
  }
}

function shouldLogJavaStack(text) {
  if (!text) return false;
  const s = String(text);
  return (
    s.indexOf("com.kakaogame") !== -1 ||
    s.indexOf("kakaogame") !== -1 ||
    s.indexOf("Infodesk") !== -1 ||
    s.indexOf("CoreManager") !== -1 ||
    s.indexOf("Session.start") !== -1 ||
    s.indexOf("NullPointerException") !== -1
  );
}

function isInterestingUrl(url) {
  if (!url) return false;
  const s = String(url);
  return (
    CONFIG.domains.some((d) => s.indexOf(d) !== -1) ||
    CONFIG.wsDomains.some((d) => s.indexOf(d) !== -1) ||
    s.indexOf("127.0.0.1:9999") !== -1 ||
    s.indexOf("/service/") !== -1 ||
    s.indexOf("/socket.io") !== -1 ||
    s.indexOf("/v2/") !== -1
  );
}

function redirectUrl(url) {
  if (!CONFIG.redirectToLocal || !url) return url;
  let out = String(url);
  // Plain HTTP(S) Kakao/game endpoints -> local HTTP base.
  CONFIG.domains.forEach((domain) => {
    out = out.replace(`https://${domain}`, CONFIG.localBaseUrl);
    out = out.replace(`http://${domain}`, CONFIG.localBaseUrl);
  });
  // WebSocket hosts -> local WS base. Handle wss://host[:port] and ws://host[:port]
  // (e.g. live-sea-chat...:1739) as well as the socket.io https:// long-poll
  // bootstrap on the same hosts. Strip the original port so everything lands on
  // the local server's single port.
  CONFIG.wsDomains.forEach((domain) => {
    // Match scheme://host optionally followed by :port, replace up to (not
    // including) the path.
    out = out.replace(
      new RegExp(`wss?://${escapeRe(domain)}(:\\d+)?`, "g"),
      CONFIG.localWsBaseUrl,
    );
    out = out.replace(
      new RegExp(`https?://${escapeRe(domain)}(:\\d+)?`, "g"),
      CONFIG.localBaseUrl,
    );
  });
  // LIAPP anti-cheat posts to a RANDOM subdomain of lockincomp.com (device auth, right
  // before country/get). Redirect any *.lockincomp.com to the local server, which
  // replays the captured response. Without this it fails offline -> "系统初始化失败".
  out = out.replace(
    /https?:\/\/[a-z0-9-]+\.lockincomp\.com(:\d+)?/gi,
    CONFIG.localBaseUrl,
  );
  return out;
}

function escapeRe(s) {
  return s.replace(/[.*+?^${}()|[\]\\]/g, "\\$&");
}

function bytesToString(ptrValue, len) {
  try {
    const n = Math.min(Number(len), CONFIG.maxNativeLog);
    if (!ptrValue || ptrValue.isNull() || n <= 0) return "";
    const bytes = ptrValue.readByteArray(n);
    return hexdump(bytes, { offset: 0, length: n, header: false, ansi: false });
  } catch (e) {
    return `<read failed: ${e.message}>`;
  }
}

function readNativeUtf8(ptrValue, len) {
  try {
    const n = Math.min(Number(len), CONFIG.maxNativeLog);
    if (!ptrValue || ptrValue.isNull() || n <= 0) return "";
    const raw = ptrValue.readByteArray(n);
    const u8 = new Uint8Array(raw);
    let out = "";
    for (let i = 0; i < u8.length; i++) {
      const c = u8[i];
      out +=
        c === 0x0d || c === 0x0a || c === 0x09 || (c >= 0x20 && c <= 0x7e)
          ? String.fromCharCode(c)
          : ".";
    }
    return out;
  } catch (e) {
    return `<read failed: ${e.message}>`;
  }
}

function bytesToPrintableText(arrayBuffer, len) {
  const u8 = new Uint8Array(arrayBuffer);
  let out = "";
  for (let i = 0; i < Math.min(u8.length, len); i++) {
    const c = u8[i];
    out +=
      c === 0x0d || c === 0x0a || c === 0x09 || (c >= 0x20 && c <= 0x7e)
        ? String.fromCharCode(c)
        : ".";
  }
  if (u8.length < len) out += `... <truncated ${len} bytes>`;
  return out;
}

function looksLikeUsefulPlaintext(ptrValue, len) {
  const text = readNativeUtf8(ptrValue, len);
  return (
    text.indexOf("HTTP/") !== -1 ||
    text.indexOf("GET ") !== -1 ||
    text.indexOf("POST ") !== -1 ||
    text.indexOf("PUT ") !== -1 ||
    text.indexOf("DELETE ") !== -1 ||
    text.indexOf("kakaogames") !== -1 ||
    text.indexOf("profile://") !== -1 ||
    text.indexOf("/service/") !== -1 ||
    text.indexOf("/v2/") !== -1
  );
}

function readIl2CppString(strPtr) {
  try {
    if (!strPtr || strPtr.isNull()) return null;
    const len = strPtr.add(0x10).readS32();
    if (len < 0 || len > 0x100000) return `<invalid il2cpp string len=${len}>`;
    return strPtr.add(0x14).readUtf16String(len);
  } catch (e) {
    return `<il2cpp string read failed: ${e.message}>`;
  }
}

function readIl2CppByteArray(arrayPtr) {
  try {
    if (!arrayPtr || arrayPtr.isNull()) return null;
    const len = arrayPtr.add(0x18).readU64().toNumber();
    if (len < 0 || len > 64 * 1024 * 1024)
      return `<invalid il2cpp byte[] len=${len}>`;
    const n = Math.min(len, CONFIG.maxBodyLog);
    const data = arrayPtr.add(0x20).readByteArray(n);
    return { length: len, text: bytesToPrintableText(data, len) };
  } catch (e) {
    return `<il2cpp byte[] read failed: ${e.message}>`;
  }
}

function readKGRawResult(rawResult) {
  if (!rawResult || rawResult.isNull()) return "<null>";
  try {
    return [
      `ptr=${rawResult}`,
      `code=${rawResult.add(0x1c).readS32()}`,
      `txNo=${rawResult.add(0x18).readS32()}`,
      `scheme=${readIl2CppString(rawResult.add(0x20).readPointer())}`,
      `description=${readIl2CppString(rawResult.add(0x28).readPointer())}`,
      `message=${readIl2CppString(rawResult.add(0x30).readPointer())}`,
      `raw=${short(readIl2CppString(rawResult.add(0x10).readPointer()))}`,
    ].join(" ");
  } catch (e) {
    return `<KGRawResult read failed: ${e.message}>`;
  }
}

function makeIl2CppString(value) {
  if (!il2cppStringNew) {
    const addr = Module.findExportByName("libil2cpp.so", "il2cpp_string_new");
    if (!addr) return null;
    il2cppStringNew = new NativeFunction(addr, "pointer", ["pointer"]);
  }
  const cstr = Memory.allocUtf8String(value);
  return il2cppStringNew(cstr);
}

function maybeReplaceIl2CppUrl(arg, tag) {
  const original = readIl2CppString(arg);
  const modified = redirectUrl(original);
  if (original && original !== modified) {
    const replacement = makeIl2CppString(modified);
    if (replacement && !replacement.isNull()) {
      log("REDIRECT", `${tag} ${original} -> ${modified}`);
      return { original, modified, ptr: replacement };
    }
  }
  return { original, modified: original, ptr: arg };
}

function moduleAddr(moduleName, rva) {
  const m = Process.findModuleByName(moduleName);
  if (!m) return null;
  return m.base.add(rva);
}

function hookNativeFunction(moduleName, rva, name, callbacks) {
  const addr = moduleAddr(moduleName, rva);
  if (!addr) {
    log("IL2CPP", `module ${moduleName} not loaded for ${name}`);
    return false;
  }
  try {
    Interceptor.attach(addr, callbacks);
    log("HOOK", `${name} @ ${addr}`);
    return true;
  } catch (e) {
    log("HOOK", `failed ${name} @ ${addr}: ${e.message}`);
    return false;
  }
}

function hookIl2Cpp() {
  const lib = "libil2cpp.so";
  const tryHook = () => {
    const mod = Process.findModuleByName(lib);
    if (!mod) return false;

    const flowHooks = {
      LoginManager_MidSequence: CONFIG.il2cpp.LoginManager_MidSequence,
      LoginManager_AppStart: CONFIG.il2cpp.LoginManager_AppStart,
      LoginManager_AppStart_MoveNext:
        CONFIG.il2cpp.LoginManager_AppStart_MoveNext,
      LoginManager_MidSequence_MoveNext:
        CONFIG.il2cpp.LoginManager_MidSequence_MoveNext,
      UI_DOWNLOAD_OnInitialize: CONFIG.il2cpp.UI_DOWNLOAD_OnInitialize,
      UI_DOWNLOAD_Sequence: CONFIG.il2cpp.UI_DOWNLOAD_Sequence,
      UI_DOWNLOAD_Sequence_MoveNext:
        CONFIG.il2cpp.UI_DOWNLOAD_Sequence_MoveNext,
      KGConfiguration_cctor: CONFIG.il2cpp.KGConfiguration_cctor,
    };
    Object.keys(flowHooks).forEach((name) => {
      hookNativeFunction(lib, flowHooks[name], name, {
        onEnter() {
          log("FLOW", name);
        },
      });
    });

    hookNativeFunction(
      lib,
      CONFIG.il2cpp.LoginManager_AppStart_callback,
      "LoginManager.AppStart callback",
      {
        onEnter(args) {
          log(
            "FLOW",
            `LoginManager.AppStart callback kakaoResult=${args[1].toInt32() !== 0}`,
          );
        },
      },
    );

    hookNativeFunction(
      lib,
      CONFIG.il2cpp.KaKaoSDKAdapter_KakaoStartAppID_callback,
      "KaKaoSDKAdapter.KakaoStartAppID callback",
      {
        onEnter(args) {
          this.startResult = args[1];
          this.isAuthorized = args[2].toInt32() !== 0;
          log(
            "KAKAO_SDK",
            `KakaoStartAppID callback startResult=${args[1]} isAuthorized=${this.isAuthorized}`,
          );
        },
      },
    );

    hookNativeFunction(
      lib,
      CONFIG.il2cpp.KaKaoSDKAdapter_ShowMsgBox,
      "KaKaoSDKAdapter.ShowMsgBox",
      {
        onEnter(args) {
          log("KAKAO_SDK", `ShowMsgBox errNo=${args[1].toInt32()}`);
        },
      },
    );

    hookNativeFunction(
      lib,
      CONFIG.il2cpp.InterfaceBroker_RequestAsync_callback,
      "InterfaceBroker.RequestAsync callback",
      {
        onEnter(args) {
          log("KAKAO_RAW", readKGRawResult(args[1]));
        },
      },
    );

    hookNativeFunction(
      lib,
      CONFIG.il2cpp.KGAppOption_get_gameServerAddress,
      "KGAppOption.gameServerAddress.get",
      {
        onLeave(retval) {
          log("KAKAO_SDK", `gameServerAddress=${readIl2CppString(retval)}`);
        },
      },
    );

    hookNativeFunction(
      lib,
      CONFIG.il2cpp.KGAppOption_get_cdnAddress,
      "KGAppOption.cdnAddress.get",
      {
        onLeave(retval) {
          log("KAKAO_SDK", `cdnAddress=${readIl2CppString(retval)}`);
        },
      },
    );

    hookNativeFunction(
      lib,
      CONFIG.il2cpp.KGConfiguration_infodeskUrl,
      "KGConfiguration.infodeskUrl.get",
      {
        onLeave(retval) {
          log("CONFIG", `infodeskUrl=${readIl2CppString(retval)}`);
        },
      },
    );
    hookNativeFunction(
      lib,
      CONFIG.il2cpp.KGConfiguration_openApiUrl,
      "KGConfiguration.openApiUrl.get",
      {
        onLeave(retval) {
          log("CONFIG", `openApiUrl=${readIl2CppString(retval)}`);
        },
      },
    );

    hookNativeFunction(
      lib,
      CONFIG.il2cpp.UnityWebRequest_ctor_string,
      "UnityWebRequest::.ctor(string)",
      {
        onEnter(args) {
          const r = maybeReplaceIl2CppUrl(args[1], "UWR.ctor");
          args[1] = r.ptr;
          requestState[args[0].toString()] = {
            url: r.modified,
            method: "GET",
            headers: {},
          };
          log("UWR", `ctor this=${args[0]} url=${r.modified}`);
        },
      },
    );
    hookNativeFunction(
      lib,
      CONFIG.il2cpp.UnityWebRequest_ctor_string_method,
      "UnityWebRequest::.ctor(string,string)",
      {
        onEnter(args) {
          const r = maybeReplaceIl2CppUrl(args[1], "UWR.ctor");
          args[1] = r.ptr;
          const method = readIl2CppString(args[2]);
          requestState[args[0].toString()] = {
            url: r.modified,
            method,
            headers: {},
          };
          log("UWR", `ctor this=${args[0]} url=${r.modified} method=${method}`);
        },
      },
    );
    hookNativeFunction(
      lib,
      CONFIG.il2cpp.UnityWebRequest_ctor_full,
      "UnityWebRequest::.ctor(full)",
      {
        onEnter(args) {
          const r = maybeReplaceIl2CppUrl(args[1], "UWR.ctor");
          args[1] = r.ptr;
          const method = readIl2CppString(args[2]);
          const body = uploadState[args[4].toString()];
          requestState[args[0].toString()] = {
            url: r.modified,
            method,
            headers: {},
            body,
          };
          log(
            "UWR",
            `ctor this=${args[0]} url=${r.modified} method=${method} dh=${args[3]} uh=${args[4]}${body ? " body=" + body.text : ""}`,
          );
        },
      },
    );
    hookNativeFunction(
      lib,
      CONFIG.il2cpp.UnityWebRequest_SetUrl,
      "UnityWebRequest.SetUrl",
      {
        onEnter(args) {
          const r = maybeReplaceIl2CppUrl(args[1], "UWR.SetUrl");
          args[1] = r.ptr;
          const key = args[0].toString();
          if (!requestState[key]) requestState[key] = { headers: {} };
          requestState[key].url = r.modified;
          log("UWR", `SetUrl this=${args[0]} url=${r.modified}`);
        },
      },
    );
    hookNativeFunction(
      lib,
      CONFIG.il2cpp.UnityWebRequest_InternalSetRequestHeader,
      "UnityWebRequest.InternalSetRequestHeader",
      {
        onEnter(args) {
          const key = args[0].toString();
          const name = readIl2CppString(args[1]);
          const value = readIl2CppString(args[2]);
          if (!requestState[key]) requestState[key] = { headers: {} };
          requestState[key].headers[name] = value;
          log("UWR", `Header this=${args[0]} ${name}=${value}`);
        },
      },
    );
    hookNativeFunction(
      lib,
      CONFIG.il2cpp.UnityWebRequest_SetUploadHandler,
      "UnityWebRequest.SetUploadHandler",
      {
        onEnter(args) {
          const key = args[0].toString();
          if (!requestState[key]) requestState[key] = { headers: {} };
          requestState[key].body = uploadState[args[1].toString()];
          if (requestState[key].body) {
            log(
              "UWR_BODY",
              `SetUploadHandler this=${args[0]} len=${requestState[key].body.length} body=${requestState[key].body.text}`,
            );
          }
        },
      },
    );
    hookNativeFunction(
      lib,
      CONFIG.il2cpp.UnityWebRequest_SendWebRequest,
      "UnityWebRequest.SendWebRequest",
      {
        onEnter(args) {
          const state = requestState[args[0].toString()] || {};
          const body = state.body
            ? ` bodyLen=${state.body.length} body=${state.body.text}`
            : "";
          log(
            "UWR",
            `SendWebRequest this=${args[0]} method=${state.method || "?"} url=${state.url || "?"} headers=${JSON.stringify(state.headers || {})}${body}`,
          );
        },
      },
    );

    const staticStringHooks = {
      "UnityWebRequest.Get": CONFIG.il2cpp.UnityWebRequest_Get,
      "UnityWebRequest.Put(bytes)": CONFIG.il2cpp.UnityWebRequest_Put_bytes,
      "UnityWebRequest.Put(string)": CONFIG.il2cpp.UnityWebRequest_Put_string,
      "UnityWebRequest.PostWwwForm": CONFIG.il2cpp.UnityWebRequest_PostWwwForm,
      "UnityWebRequest.Post(contentType)":
        CONFIG.il2cpp.UnityWebRequest_Post_contentType,
    };
    Object.keys(staticStringHooks).forEach((name) => {
      hookNativeFunction(lib, staticStringHooks[name], name, {
        onEnter(args) {
          const r = maybeReplaceIl2CppUrl(args[0], name);
          args[0] = r.ptr;
          this.method = name;
          this.url = r.modified;
          // These are STATIC methods (Get/Put/Post...): args[0]=uri, args[1]=MethodInfo,
          // and args[2] is OUT OF BOUNDS. Reading args[1]/args[2] as il2cpp strings hit a
          // wild address (0x40) and could SIGSEGV the whole process, so only log the uri.
          log("UWR", `${name} uri=${r.modified}`);
        },
        onLeave(retval) {
          if (retval && !retval.isNull()) {
            requestState[retval.toString()] = {
              url: this.url,
              method: this.method,
              headers: {},
            };
          }
        },
      });
    });

    hookNativeFunction(
      lib,
      CONFIG.il2cpp.UploadHandlerRaw_ctor_bytes,
      "UploadHandlerRaw::.ctor(byte[])",
      {
        onEnter(args) {
          const body = readIl2CppByteArray(args[1]);
          if (body && typeof body !== "string") {
            uploadState[args[0].toString()] = body;
            log(
              "UWR_BODY",
              `UploadHandlerRaw this=${args[0]} len=${body.length} body=${body.text}`,
            );
          } else {
            log("UWR_BODY", `UploadHandlerRaw this=${args[0]} ${body}`);
          }
        },
      },
    );
    hookNativeFunction(
      lib,
      CONFIG.il2cpp.UploadHandlerRaw_Create,
      "UploadHandlerRaw.Create",
      {
        onEnter(args) {
          const len = args[2].toInt32();
          if (len > 0 && !args[1].isNull()) {
            const body = { length: len, text: readNativeUtf8(args[1], len) };
            uploadState[args[0].toString()] = body;
            log(
              "UWR_BODY",
              `UploadHandlerRaw.Create this=${args[0]} len=${len} body=${body.text}`,
            );
          }
        },
      },
    );
    hookNativeFunction(
      lib,
      CONFIG.il2cpp.DownloadHandler_get_text,
      "DownloadHandler.get_text",
      {
        onLeave(retval) {
          const text = readIl2CppString(retval);
          if (text) log("UWR_RESPONSE", `DownloadHandler.text=${short(text)}`);
        },
      },
    );
    hookNativeFunction(
      lib,
      CONFIG.il2cpp.DownloadHandlerBuffer_GetContent,
      "DownloadHandlerBuffer.GetContent",
      {
        onEnter(args) {
          this.uwr = args[0];
        },
        onLeave(retval) {
          const text = readIl2CppString(retval);
          if (text)
            log(
              "UWR_RESPONSE",
              `GetContent uwr=${this.uwr} text=${short(text)}`,
            );
        },
      },
    );
    hookNativeFunction(
      lib,
      CONFIG.il2cpp.DownloadHandler_InternalGetByteArray,
      "DownloadHandler.InternalGetByteArray",
      {
        onLeave(retval) {
          const body = readIl2CppByteArray(retval);
          if (body && typeof body !== "string") {
            log(
              "UWR_RESPONSE",
              `InternalGetByteArray len=${body.length} body=${body.text}`,
            );
          }
        },
      },
    );

    return true;
  };

  if (!tryHook()) {
    const timer = setInterval(() => {
      if (tryHook()) clearInterval(timer);
    }, 1000);
  }
}

function hookJavaLoggerThrowable() {
  if (!Java.available) return;

  try {
    const Logger = Java.use("com.kakaogame.Logger");
    const loggerE = Logger.e.overload(
      "java.lang.String",
      "java.lang.String",
      "java.lang.Throwable",
    );
    loggerE.implementation = function (tag, msg, tr) {
      const stack = javaThrowableStack(tr);
      log("KAKAO_EX", `Logger.e tag=${tag} msg=${msg} tr=${tr}\n${stack}`);
      return loggerE.call(this, tag, msg, tr);
    };
    log("HOOK", "com.kakaogame.Logger.e(String,String,Throwable)");
  } catch (e) {
    log("KAKAO_DIAG", `Logger.e hook failed: ${e.message}`);
  }
}

function hookJavaCustomUiLoginBypass() {
  if (!Java.available) return;

  function jsonEscape(s) {
    return String(s)
      .replace(/[\\"]/g, "\\$&")
      .replace(/\n/g, "\\n")
      .replace(/\r/g, "\\r");
  }

  function buildOfflineLoginBody(request) {
    const body = request.getBody();
    let idpId = body.get("idpId");
    if (idpId === null) idpId = body.get("deviceId");
    if (idpId === null) idpId = "offline-device";
    idpId = String(idpId);

    let playerId = body.get("playerId");
    if (playerId === null || !/^\d{10,}$/.test(String(playerId))) {
      playerId = "9000000001";
    } else {
      playerId = String(playerId);
    }

    const now = Date.now();
    const exp = now + 7 * 24 * 3600 * 1000;
    const zat = `offline-zat-${now}`;
    const zrt = `offline-zrt-${now}`;
    const player = `{"playerId":"${jsonEscape(playerId)}","idpId":"${jsonEscape(idpId)}","appId":"743491","lang":"zh-hans","status":"normal","customProperty":{},"secureProperty":{},"pushToken":"","agreement":{"N002":"y","E006":"y","N003":"y","E001":"y","AN001":"y","E002":"y","AN002":"y"},"pushOption":{"night":"y","player":"y"},"memberKey":null,"firstLoginTime":${now},"lastLoginTime":${now},"zinnyUuid":"900cf1fd-2347-4299-a8f9-ffa06c76e62b"}`;
    const content = `{"player":${player},"playerId":"${jsonEscape(playerId)}","idpId":"${jsonEscape(idpId)}","idpCode":"zd3","accessToken":"${zat}","zat":"${zat}","zatExpireTime":${exp},"zatExpiryTime":${exp},"expiryTime":${exp},"zrt":"${zrt}","zrtExpireTime":${exp},"zrtExpiryTime":${exp},"zinnyUuid":"900cf1fd-2347-4299-a8f9-ffa06c76e62b","isFirstLogin":false,"isMarketRefund":false}`;
    return `{"status":200,"desc":"Success","content":${content},"message":""}`;
  }

  // Let AuthImpl.loginWithoutUI run normally so CoreManager.authorize/onLogin still
  // sets the SDK session state. Only replace the platform auth server response that
  // would otherwise go to the real Kakao backend and reject our offline device token.
  try {
    const KGResult = Java.use("com.kakaogame.KGResult");
    const ServerResponse = Java.use("com.kakaogame.server.ServerResponse");
    const ServerResult = Java.use("com.kakaogame.server.ServerResult");
    const ServerService = Java.use("com.kakaogame.server.ServerService");
    const SessionService = Java.use(
      "com.kakaogame.server.session.SessionService",
    );
    const getSuccessResultWithContent =
      KGResult.getSuccessResult.overload("java.lang.Object");
    const makeMockResult = function (request, uri, type) {
      const responseBody = buildOfflineLoginBody(request);
      log(
        "KAKAO_LOGIN",
        `mock requestConnect ${uri} type=${type} body=${short(responseBody)}`,
      );
      const response = ServerResponse.getResponse(uri, responseBody);
      const serverResult = ServerResult.getServerResult(request, response);
      return getSuccessResultWithContent.call(KGResult, serverResult);
    };
    const requestConnect = ServerService.requestConnect.overload(
      "com.kakaogame.server.ServerRequest",
      "java.lang.String",
      "int",
    );
    const sessionRequestConnect = SessionService.requestConnect.overload(
      "com.kakaogame.server.ServerRequest",
      "java.lang.String",
      "int",
    );

    requestConnect.implementation = function (request, type, traceJobId) {
      const uri = String(request.getRequestUri());
      if (uri.indexOf("loginZinnyDevice3") !== -1) {
        return makeMockResult(request, uri, type);
      }
      return requestConnect.call(this, request, type, traceJobId);
    };
    sessionRequestConnect.implementation = function (
      request,
      type,
      traceJobId,
    ) {
      const uri = String(request.getRequestUri());
      if (uri.indexOf("loginZinnyDevice3") !== -1) {
        return makeMockResult(request, uri, type);
      }
      return sessionRequestConnect.call(this, request, type, traceJobId);
    };
    log(
      "HOOK",
      "ServerService/SessionService.requestConnect loginZinnyDevice3 -> offline login data",
    );
  } catch (e) {
    log("KAKAO_LOGIN", `requestConnect login mock hook failed: ${e.message}`);
  }
}

function hookJavaInfodeskSignatureVerify() {
  if (!Java.available) return;

  try {
    const HmacSHA256Util = Java.use("com.kakaogame.util.HmacSHA256Util");
    const verifySignature = HmacSHA256Util.verifySignature.overload(
      "java.lang.String",
      "java.lang.String",
    );
    verifySignature.implementation = function (signature, requestBody) {
      const bodyLen = requestBody === null ? 0 : String(requestBody).length;
      log(
        "KAKAO_SIG",
        `verifySignature bypass signature=${signature} bodyLen=${bodyLen}`,
      );
      return true;
    };
    log(
      "HOOK",
      "com.kakaogame.util.HmacSHA256Util.verifySignature(String,String)",
    );
  } catch (e) {
    log("KAKAO_SIG", `verifySignature hook failed: ${e.message}`);
  }
}

function hookJavaAndroidExitBypass() {
  if (!Java.available) return;

  try {
    const Process = Java.use("android.os.Process");
    const myPid = Process.myPid();
    const killProcess = Process.killProcess.overload("int");
    killProcess.implementation = function (pid) {
      if (pid === myPid) {
        log("ANDROID_EXIT", `blocked Process.killProcess(${pid})`);
        return;
      }
      return killProcess.call(this, pid);
    };
    log("HOOK", "android.os.Process.killProcess(int)");
  } catch (e) {
    log("ANDROID_EXIT", `Process.killProcess hook failed: ${e.message}`);
  }

  try {
    const Activity = Java.use("android.app.Activity");
    const finishAffinity = Activity.finishAffinity.overload();
    finishAffinity.implementation = function () {
      log("ANDROID_EXIT", `blocked Activity.finishAffinity ${this}`);
      return;
    };
    log("HOOK", "android.app.Activity.finishAffinity()");
  } catch (e) {
    log("ANDROID_EXIT", `Activity.finishAffinity hook failed: ${e.message}`);
  }
}

function hookJavaKakaoDiagnostics() {
  function hookNoArgReturn(cls, methodName) {
    try {
      const klass = Java.use(cls);
      const ov = klass[methodName].overload();
      ov.implementation = function () {
        try {
          const ret = ov.call(this);
          log("KAKAO_DIAG", `${cls}.${methodName} => ${ret}`);
          return ret;
        } catch (e) {
          log(
            "KAKAO_EX",
            `${cls}.${methodName} threw ${e}\n${javaThrowableStack(e)}`,
          );
          throw e;
        }
      };
      log("HOOK", `${cls}.${methodName}`);
    } catch (e) {
      log("KAKAO_DIAG", `hook failed ${cls}.${methodName}: ${e.message}`);
    }
  }

  function hookOverload(cls, methodName, sig, label) {
    try {
      const klass = Java.use(cls);
      const ov = klass[methodName].overload.apply(klass[methodName], sig);
      ov.implementation = function () {
        const args = [];
        for (let i = 0; i < arguments.length; i++) {
          args.push(
            arguments[i] === null ? "null" : short(arguments[i].toString()),
          );
        }
        log(
          "KAKAO_DIAG",
          `${label || cls + "." + methodName} enter args=${JSON.stringify(args)}`,
        );
        try {
          const argv = Array.prototype.slice.call(arguments);
          const ret = ov.call(this, ...argv);
          log(
            "KAKAO_DIAG",
            `${label || cls + "." + methodName} => ${ret ? short(ret.toString()) : ret}`,
          );
          return ret;
        } catch (e) {
          log(
            "KAKAO_EX",
            `${label || cls + "." + methodName} threw ${e}\n${javaThrowableStack(e)}`,
          );
          throw e;
        }
      };
      log("HOOK", `${label || cls + "." + methodName}`);
    } catch (e) {
      log(
        "KAKAO_DIAG",
        `hook failed ${label || cls + "." + methodName}: ${e.message}`,
      );
    }
  }

  hookJavaLoggerThrowable();

  try {
    const Log = Java.use("android.util.Log");
    const logE = Log.e.overload(
      "java.lang.String",
      "java.lang.String",
      "java.lang.Throwable",
    );
    logE.implementation = function (tag, msg, tr) {
      const stack = javaThrowableStack(tr);
      if (shouldLogJavaStack(`${tag} ${msg}\n${stack}`)) {
        log("ANDROID_EX", `Log.e tag=${tag} msg=${msg} tr=${tr}\n${stack}`);
      }
      return logE.call(this, tag, msg, tr);
    };
    log("HOOK", "android.util.Log.e(String,String,Throwable)");
  } catch (e) {
    log("KAKAO_DIAG", `android Log.e hook failed: ${e.message}`);
  }

  try {
    const NPE = Java.use("java.lang.NullPointerException");
    NPE.$init.overloads.forEach((ov) => {
      ov.implementation = function () {
        const argv = Array.prototype.slice.call(arguments);
        const ret = ov.call(this, ...argv);
        const stack = javaCurrentStack();
        if (shouldLogJavaStack(stack)) {
          log(
            "KAKAO_EX",
            `NullPointerException constructed args=${arguments.length}\n${stack}`,
          );
        }
        return ret;
      };
    });
    log("HOOK", "java.lang.NullPointerException constructors");
  } catch (e) {
    log("KAKAO_DIAG", `NPE hook failed: ${e.message}`);
  }

  hookOverload(
    "com.kakaogame.core.CoreManager",
    "loadInfodesk",
    ["boolean"],
    "CoreManager.loadInfodesk",
  );
  hookOverload(
    "com.kakaogame.core.CoreManager",
    "handleInfodesk",
    ["android.app.Activity", "com.kakaogame.infodesk.InfodeskData", "boolean"],
    "CoreManager.handleInfodesk",
  );
  hookOverload(
    "com.kakaogame.core.CoreManager",
    "onInfodesk",
    ["com.kakaogame.infodesk.InfodeskData", "boolean", "boolean"],
    "CoreManager.onInfodesk",
  );
  hookNoArgReturn("com.kakaogame.KGSystem", "getLanguageCode");
  hookNoArgReturn(
    "com.kakaogame.infodesk.InfodeskHelper",
    "getTraceSampleRate",
  );
  hookNoArgReturn(
    "com.kakaogame.infodesk.InfodeskHelper",
    "getHeartbeatInterval",
  );
  hookNoArgReturn(
    "com.kakaogame.infodesk.InfodeskHelper",
    "getPercentOfSendingAPICallLog",
  );
  hookNoArgReturn(
    "com.kakaogame.infodesk.InfodeskHelper",
    "getPercentOfSendingErrorLog",
  );
  hookNoArgReturn(
    "com.kakaogame.infodesk.InfodeskHelper",
    "getServerConnectionType",
  );
  hookNoArgReturn("com.kakaogame.infodesk.InfodeskHelper", "getSessionUrl");
  hookOverload(
    "com.kakaogame.infodesk.InfodeskHelper",
    "getStringSet",
    ["java.lang.String"],
    "InfodeskHelper.getStringSet",
  );
  hookOverload(
    "com.kakaogame.server.ServerService",
    "setSessionUrl",
    [],
    "ServerService.setSessionUrl",
  );
}

function hookJavaForceHttpConnection() {
  if (!Java.available || !CONFIG.redirectToLocal) return;

  try {
    const ServerService = Java.use("com.kakaogame.server.ServerService");
    const useHttpConnection = ServerService.useHttpConnection;
    const useSessionConnection = ServerService.useSessionConnection;
    useSessionConnection.implementation = function () {
      log(
        "KAKAO_CONN",
        "ServerService.useSessionConnection blocked -> useHttpConnection",
      );
      return useHttpConnection.call(this);
    };
    log("HOOK", "ServerService.useSessionConnection -> useHttpConnection");
  } catch (e) {
    log("KAKAO_CONN", `ServerService hook failed: ${e.message}`);
  }

  try {
    const ConnectionManager = Java.use("com.kakaogame.core.ConnectionManager");
    const setConnectionType = ConnectionManager.setConnectionType.overload(
      "android.content.Context",
      "com.kakaogame.config.Configuration",
      "boolean",
    );
    setConnectionType.implementation = function (
      context,
      config,
      useHttpConnection,
    ) {
      log(
        "KAKAO_CONN",
        `ConnectionManager.setConnectionType forced true (was ${useHttpConnection})`,
      );
      return setConnectionType.call(this, context, config, true);
    };
    log("HOOK", "ConnectionManager.setConnectionType -> true");
  } catch (e) {
    log("KAKAO_CONN", `ConnectionManager hook failed: ${e.message}`);
  }
}

function hookJavaNetwork() {
  if (!Java.available) return;

  Java.perform(function () {
    log("JAVA", "installing Java network hooks");
    if (CONFIG.enableLoggerThrowableHook) {
      hookJavaLoggerThrowable();
    }
    if (CONFIG.enableInfodeskSignatureBypass) {
      hookJavaInfodeskSignatureVerify();
    }
    if (CONFIG.enableAndroidExitBypass) {
      hookJavaAndroidExitBypass();
    }
    if (CONFIG.redirectToLocal && CONFIG.forceHttpConnection) {
      hookJavaForceHttpConnection();
    }

    if (CONFIG.enableCustomUiLoginBypass) {
      hookJavaCustomUiLoginBypass();
    }
    if (CONFIG.enableKakaoDiagnostics) {
      hookJavaKakaoDiagnostics();
    }

    try {
      const URL = Java.use("java.net.URL");
      const urlInitString = URL.$init.overload("java.lang.String");
      const urlInitContextString = URL.$init.overload(
        "java.net.URL",
        "java.lang.String",
      );
      urlInitString.implementation = function (urlStr) {
        const original = String(urlStr);
        const modified = redirectUrl(original);
        if (isInterestingUrl(original) || original !== modified) {
          log(
            "URL",
            `${original}${original !== modified ? " -> " + modified : ""}${javaStack()}`,
          );
        }
        return urlInitString.call(this, modified);
      };
      urlInitContextString.implementation = function (context, spec) {
        const original = String(spec);
        const modified = redirectUrl(original);
        if (isInterestingUrl(original) || original !== modified) {
          log(
            "URL",
            `context=${context} spec=${original}${original !== modified ? " -> " + modified : ""}${javaStack()}`,
          );
        }
        return urlInitContextString.call(this, context, modified);
      };
    } catch (e) {
      log("JAVA", `URL hook failed: ${e.message}`);
    }

    try {
      const HttpURLConnection = Java.use("java.net.HttpURLConnection");
      const setRequestMethod =
        HttpURLConnection.setRequestMethod.overload("java.lang.String");
      const setRequestProperty = HttpURLConnection.setRequestProperty.overload(
        "java.lang.String",
        "java.lang.String",
      );
      const getInputStream = HttpURLConnection.getInputStream.overload();
      const getErrorStream = HttpURLConnection.getErrorStream.overload();
      setRequestMethod.implementation = function (method) {
        log("HTTPURL", `setRequestMethod ${this.getURL()} ${method}`);
        return setRequestMethod.call(this, method);
      };
      setRequestProperty.implementation = function (key, value) {
        if (isInterestingUrl(String(this.getURL()))) {
          log("HTTPURL", `header ${this.getURL()} ${key}=${value}`);
        }
        return setRequestProperty.call(this, key, value);
      };
      getInputStream.implementation = function () {
        if (isInterestingUrl(String(this.getURL()))) {
          log(
            "HTTPURL",
            `getInputStream ${this.getRequestMethod()} ${this.getURL()} code=${this.getResponseCode()}`,
          );
        }
        return getInputStream.call(this);
      };
      getErrorStream.implementation = function () {
        if (isInterestingUrl(String(this.getURL()))) {
          log(
            "HTTPURL",
            `getErrorStream ${this.getRequestMethod()} ${this.getURL()} code=${this.getResponseCode()}`,
          );
        }
        return getErrorStream.call(this);
      };
    } catch (e) {
      log("JAVA", `HttpURLConnection hook failed: ${e.message}`);
    }

    try {
      const HttpService = Java.use("com.kakaogame.server.http.HttpService");
      HttpService.request.overloads.forEach((ov) => {
        ov.implementation = function () {
          const id = ++seq;
          log("KAKAO", `request#${id} argc=${arguments.length}`);
          for (let i = 0; i < arguments.length; i++) {
            log(
              "KAKAO",
              `request#${id} arg${i}=${arguments[i] === null ? "null" : short(arguments[i].toString())}`,
            );
          }
          const response = ov.call(this, ...arguments);
          log(
            "KAKAO",
            `response#${id}=${response ? short(response.toString()) : "null"}`,
          );
          return response;
        };
      });
    } catch (e) {
      log("JAVA", `Kakao HttpService hook failed: ${e.message}`);
    }

    try {
      const Builder = Java.use("okhttp3.Request$Builder");
      const builderUrlString = Builder.url.overload("java.lang.String");
      const builderMethod = Builder.method.overload(
        "java.lang.String",
        "okhttp3.RequestBody",
      );
      const builderHeader = Builder.header.overload(
        "java.lang.String",
        "java.lang.String",
      );
      const builderAddHeader = Builder.addHeader.overload(
        "java.lang.String",
        "java.lang.String",
      );
      const builderBuild = Builder.build.overload();
      builderUrlString.implementation = function (urlStr) {
        const original = String(urlStr);
        const modified = redirectUrl(original);
        if (isInterestingUrl(original) || original !== modified) {
          log(
            "OKHTTP",
            `url ${original}${original !== modified ? " -> " + modified : ""}`,
          );
        }
        return builderUrlString.call(this, modified);
      };
      builderMethod.implementation = function (method, body) {
        log("OKHTTP", `method ${method} body=${body}`);
        return builderMethod.call(this, method, body);
      };
      builderHeader.implementation = function (name, value) {
        log("OKHTTP", `header ${name}=${value}`);
        return builderHeader.call(this, name, value);
      };
      builderAddHeader.implementation = function (name, value) {
        log("OKHTTP", `addHeader ${name}=${value}`);
        return builderAddHeader.call(this, name, value);
      };
      builderBuild.implementation = function () {
        const req = builderBuild.call(this);
        log(
          "OKHTTP",
          `build ${req.method()} ${req.url()} headers=${short(req.headers().toString())}`,
        );
        return req;
      };
    } catch (e) {
      log("JAVA", `OkHttp Request.Builder hook failed: ${e.message}`);
    }

    try {
      const RequestBody = Java.use("okhttp3.RequestBody");
      const requestBodyWriteTo =
        RequestBody.writeTo.overload("okio.BufferedSink");
      requestBodyWriteTo.implementation = function (sink) {
        log(
          "OKHTTP",
          `RequestBody.writeTo contentType=${this.contentType()} length=${this.contentLength()}`,
        );
        return requestBodyWriteTo.call(this, sink);
      };
    } catch (e) {
      log("JAVA", `OkHttp RequestBody hook failed: ${e.message}`);
    }

    try {
      const ResponseBody = Java.use("okhttp3.ResponseBody");
      const responseBodyString = ResponseBody.string.overload();
      const responseBodyBytes = ResponseBody.bytes.overload();
      responseBodyString.implementation = function () {
        const s = responseBodyString.call(this);
        log("OKHTTP", `ResponseBody.string=${short(s)}`);
        return s;
      };
      responseBodyBytes.implementation = function () {
        const b = responseBodyBytes.call(this);
        log("OKHTTP", `ResponseBody.bytes length=${b.length}`);
        return b;
      };
    } catch (e) {
      log("JAVA", `OkHttp ResponseBody hook failed: ${e.message}`);
    }
  });
}

function hookNativeNetwork() {
  [
    [
      "libssl.so",
      "SSL_write",
      function (args) {
        this.buf = args[1];
        this.len = args[2].toInt32();
      },
      function (retval) {
        const n = retval.toInt32();
        if (
          CONFIG.enableSslTextLog &&
          n > 0 &&
          looksLikeUsefulPlaintext(this.buf, Math.min(this.len, n))
        ) {
          log(
            "SSL_WRITE",
            `len=${n}\n${readNativeUtf8(this.buf, Math.min(this.len, n))}`,
          );
        }
      },
    ],
    [
      "libssl.so",
      "SSL_read",
      function (args) {
        this.buf = args[1];
      },
      function (retval) {
        const n = retval.toInt32();
        if (
          CONFIG.enableSslTextLog &&
          n > 0 &&
          looksLikeUsefulPlaintext(this.buf, n)
        ) {
          log("SSL_READ", `len=${n}\n${readNativeUtf8(this.buf, n)}`);
        }
      },
    ],
    [
      "libc.so",
      "send",
      function (args) {
        this.buf = args[1];
        this.len = args[2].toInt32();
      },
      function (retval) {
        const n = retval.toInt32();
        if (
          CONFIG.enableSocketHexdump &&
          n > 0 &&
          looksLikeUsefulPlaintext(this.buf, Math.min(this.len, n))
        ) {
          log(
            "SEND",
            `len=${n}\n${bytesToString(this.buf, Math.min(this.len, n))}`,
          );
        }
      },
    ],
    [
      "libc.so",
      "recv",
      function (args) {
        this.buf = args[1];
      },
      function (retval) {
        const n = retval.toInt32();
        if (
          CONFIG.enableSocketHexdump &&
          n > 0 &&
          looksLikeUsefulPlaintext(this.buf, n)
        ) {
          log("RECV", `len=${n}\n${bytesToString(this.buf, n)}`);
        }
      },
    ],
  ].forEach(([lib, name, onEnter, onLeave]) => {
    const addr = Module.findExportByName(lib, name);
    if (!addr) {
      log("NATIVE", `${lib}!${name} not found`);
      return;
    }
    try {
      Interceptor.attach(addr, { onEnter, onLeave });
      log("HOOK", `${lib}!${name} @ ${addr}`);
    } catch (e) {
      log("NATIVE", `failed ${lib}!${name}: ${e.message}`);
    }
  });
}

function showToast(text, duration) {
  if (!Java.available) return;
  Java.perform(function () {
    Java.scheduleOnMainThread(function () {
      try {
        const app = Java.use("android.app.ActivityThread").currentApplication();
        const Toast = Java.use("android.widget.Toast");
        Toast.makeText(
          app.getApplicationContext(),
          Java.use("java.lang.String").$new(text),
          duration || 1,
        ).show();
      } catch (e) {
        log("TOAST", `failed: ${e.message}`);
      }
    });
  });
}

hookIl2Cpp();
hookNativeNetwork();
hookJavaNetwork();

setTimeout(function () {
  showToast("toask测试", 1);
}, 10000);
