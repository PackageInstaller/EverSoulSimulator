.class public Lcom/kakaogame/web/WebViewContainer;
.super Ljava/lang/Object;
.source "WebViewContainer.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kakaogame/web/WebViewContainer$Companion;,
        Lcom/kakaogame/web/WebViewContainer$WebChromeClientImpl;,
        Lcom/kakaogame/web/WebViewContainer$WebViewClientImpl;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u008c\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0011\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\r\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0007\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u000c\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0016\u0018\u0000 \u00a6\u00012\u00020\u0001:\u0006\u00a4\u0001\u00a5\u0001\u00a6\u0001B?\u0008\u0007\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0005\u0012\u0018\u0008\u0002\u0010\u0006\u001a\u0012\u0012\u0004\u0012\u00020\u0008\u0012\u0006\u0012\u0004\u0018\u00010\u0001\u0018\u00010\u0007\u0012\u0008\u0008\u0002\u0010\t\u001a\u00020\n\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ\u0010\u0010/\u001a\u0002002\u0006\u0010\u0004\u001a\u00020\u0005H\u0002J\u0006\u00101\u001a\u000202J\u0006\u00103\u001a\u000200J\u001c\u00104\u001a\u0002002\u0008\u00105\u001a\u0004\u0018\u0001062\u0008\u00107\u001a\u0004\u0018\u00010\u0008H\u0016J \u00104\u001a\u0002002\u0008\u00105\u001a\u0004\u0018\u0001062\u0006\u00107\u001a\u00020\u00082\u0006\u00108\u001a\u00020\nJ\u0008\u00109\u001a\u000200H\u0002J\u0018\u0010:\u001a\u0002022\u0006\u0010;\u001a\u00020\u00052\u0006\u0010<\u001a\u00020\u0008H\u0002J\u0008\u0010=\u001a\u000200H\u0002J\u001a\u0010>\u001a\u0002002\u0006\u0010?\u001a\u00020@2\u0008\u0010A\u001a\u0004\u0018\u00010BH\u0002J$\u0010C\u001a\u0002002\u0008\u0010;\u001a\u0004\u0018\u00010\u00052\u0008\u0010<\u001a\u0004\u0018\u00010\u00082\u0006\u0010D\u001a\u000202H\u0004J&\u0010E\u001a\u0002002\u0008\u0010;\u001a\u0004\u0018\u00010\u00052\u0008\u0010F\u001a\u0004\u0018\u00010G2\u0008\u0010H\u001a\u0004\u0018\u00010GH\u0004J\u001c\u0010I\u001a\u0002002\u0008\u0010;\u001a\u0004\u0018\u00010\u00052\u0008\u0010<\u001a\u0004\u0018\u00010\u0008H\u0004J\u001c\u0010J\u001a\u0002002\u0008\u0010;\u001a\u0004\u0018\u00010\u00052\u0008\u0010<\u001a\u0004\u0018\u00010\u0008H\u0014J&\u0010K\u001a\u0002002\u0008\u0010;\u001a\u0004\u0018\u00010\u00052\u0008\u0010<\u001a\u0004\u0018\u00010\u00082\u0008\u0010L\u001a\u0004\u0018\u00010MH\u0014J.\u0010N\u001a\u0002002\u0008\u0010;\u001a\u0004\u0018\u00010\u00052\u0006\u0010O\u001a\u00020\n2\u0008\u0010P\u001a\u0004\u0018\u00010\u00082\u0008\u0010Q\u001a\u0004\u0018\u00010\u0008H\u0014J&\u0010N\u001a\u0002002\u0008\u0010;\u001a\u0004\u0018\u00010\u00052\u0008\u0010R\u001a\u0004\u0018\u00010S2\u0008\u0010T\u001a\u0004\u0018\u00010UH\u0014J0\u0010V\u001a\u0002002\u0008\u0010;\u001a\u0004\u0018\u00010\u00052\u0008\u0010W\u001a\u0004\u0018\u00010X2\u0008\u0010Y\u001a\u0004\u0018\u00010\u00082\u0008\u0010Z\u001a\u0004\u0018\u00010\u0008H\u0004J0\u0010[\u001a\u0002002\u0008\u0010;\u001a\u0004\u0018\u00010\u00052\u0008\u0010Z\u001a\u0004\u0018\u00010\u00082\u0008\u0010\\\u001a\u0004\u0018\u00010\u00082\u0008\u0010]\u001a\u0004\u0018\u00010\u0008H\u0004J&\u0010^\u001a\u0002002\u0008\u0010;\u001a\u0004\u0018\u00010\u00052\u0008\u0010W\u001a\u0004\u0018\u00010_2\u0008\u0010T\u001a\u0004\u0018\u00010`H\u0014J&\u0010a\u001a\u0002002\u0008\u0010;\u001a\u0004\u0018\u00010\u00052\u0008\u0010R\u001a\u0004\u0018\u00010S2\u0008\u0010b\u001a\u0004\u0018\u00010cH\u0014J\"\u0010d\u001a\u0002002\u0008\u0010;\u001a\u0004\u0018\u00010\u00052\u0006\u0010e\u001a\u00020f2\u0006\u0010g\u001a\u00020fH\u0004J&\u0010h\u001a\u0002002\u0008\u0010;\u001a\u0004\u0018\u00010\u00052\u0008\u0010i\u001a\u0004\u0018\u00010G2\u0008\u0010j\u001a\u0004\u0018\u00010GH\u0004J\u001c\u0010k\u001a\u0002002\u0008\u0010;\u001a\u0004\u0018\u00010\u00052\u0008\u0010l\u001a\u0004\u0018\u00010mH\u0004J\u001c\u0010n\u001a\u0002022\u0008\u0010;\u001a\u0004\u0018\u00010\u00052\u0008\u0010l\u001a\u0004\u0018\u00010mH\u0004J\u001c\u0010o\u001a\u0002022\u0008\u0010;\u001a\u0004\u0018\u00010\u00052\u0008\u0010<\u001a\u0004\u0018\u00010\u0008H\u0014J\"\u0010w\u001a\u0002002\u0018\u0010x\u001a\u0014\u0012\u000e\u0012\u000c\u0012\u0006\u0012\u0004\u0018\u00010\u0008\u0018\u00010\'\u0018\u00010 H\u0004J\u0012\u0010y\u001a\u0002002\u0008\u0010z\u001a\u0004\u0018\u00010\u0005H\u0004J\u0012\u0010{\u001a\u0002022\u0008\u0010|\u001a\u0004\u0018\u00010}H\u0004J.\u0010~\u001a\u0002022\u0008\u0010;\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u007f\u001a\u0002022\u0007\u0010\u0080\u0001\u001a\u0002022\t\u0010\u0081\u0001\u001a\u0004\u0018\u00010GH\u0004JE\u0010\u0082\u0001\u001a\u0002002\u0008\u0010<\u001a\u0004\u0018\u00010\u00082\t\u0010\u0083\u0001\u001a\u0004\u0018\u00010\u00082\u0007\u0010\u0084\u0001\u001a\u00020.2\u0007\u0010\u0085\u0001\u001a\u00020.2\u0007\u0010\u0086\u0001\u001a\u00020.2\n\u0010\u0087\u0001\u001a\u0005\u0018\u00010\u0088\u0001H\u0004J\t\u0010\u0089\u0001\u001a\u000200H\u0004J\u001f\u0010\u008a\u0001\u001a\u0002002\t\u0010\u008b\u0001\u001a\u0004\u0018\u00010\u00082\t\u0010x\u001a\u0005\u0018\u00010\u008c\u0001H\u0004J\t\u0010\u008d\u0001\u001a\u000200H\u0016J4\u0010\u008e\u0001\u001a\u0002022\u0008\u0010;\u001a\u0004\u0018\u00010\u00052\u0008\u0010<\u001a\u0004\u0018\u00010\u00082\t\u0010\u008f\u0001\u001a\u0004\u0018\u00010\u00082\n\u0010\u0090\u0001\u001a\u0005\u0018\u00010\u0091\u0001H\u0014J4\u0010\u0092\u0001\u001a\u0002022\u0008\u0010;\u001a\u0004\u0018\u00010\u00052\u0008\u0010<\u001a\u0004\u0018\u00010\u00082\t\u0010\u008f\u0001\u001a\u0004\u0018\u00010\u00082\n\u0010\u0090\u0001\u001a\u0005\u0018\u00010\u0091\u0001H\u0004J4\u0010\u0093\u0001\u001a\u0002022\u0008\u0010;\u001a\u0004\u0018\u00010\u00052\u0008\u0010<\u001a\u0004\u0018\u00010\u00082\t\u0010\u008f\u0001\u001a\u0004\u0018\u00010\u00082\n\u0010\u0090\u0001\u001a\u0005\u0018\u00010\u0091\u0001H\u0004J?\u0010\u0094\u0001\u001a\u0002022\u0008\u0010;\u001a\u0004\u0018\u00010\u00052\u0008\u0010<\u001a\u0004\u0018\u00010\u00082\t\u0010\u008f\u0001\u001a\u0004\u0018\u00010\u00082\t\u0010\u0095\u0001\u001a\u0004\u0018\u00010\u00082\n\u0010\u0090\u0001\u001a\u0005\u0018\u00010\u0096\u0001H\u0004J\t\u0010\u0097\u0001\u001a\u000202H\u0004J\u001c\u0010\u0098\u0001\u001a\u0002002\u0008\u0010;\u001a\u0004\u0018\u00010\u00052\u0007\u0010\u0099\u0001\u001a\u00020\nH\u0004J\'\u0010\u009a\u0001\u001a\u0002002\u0007\u0010\u009b\u0001\u001a\u00020.2\u0007\u0010\u0086\u0001\u001a\u00020.2\n\u0010\u0087\u0001\u001a\u0005\u0018\u00010\u0088\u0001H\u0004J\u001e\u0010\u009c\u0001\u001a\u0002002\u0008\u0010;\u001a\u0004\u0018\u00010\u00052\t\u0010\u009d\u0001\u001a\u0004\u0018\u00010MH\u0004J\u001d\u0010\u009e\u0001\u001a\u0002002\u0008\u0010;\u001a\u0004\u0018\u00010\u00052\u0008\u0010A\u001a\u0004\u0018\u00010\u0008H\u0014J&\u0010\u009f\u0001\u001a\u0002002\u0008\u0010;\u001a\u0004\u0018\u00010\u00052\u0008\u0010<\u001a\u0004\u0018\u00010\u00082\u0007\u0010\u00a0\u0001\u001a\u000202H\u0004J\u0013\u0010\u00a1\u0001\u001a\u0002002\u0008\u0010;\u001a\u0004\u0018\u00010\u0005H\u0004J\u001e\u0010\u00a2\u0001\u001a\u0002002\u0008\u0010;\u001a\u0004\u0018\u00010t2\t\u0010x\u001a\u0005\u0018\u00010\u00a3\u0001H\u0014R\u0014\u0010\u0002\u001a\u00020\u0003X\u0084\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000eR\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010R\u001e\u0010\u0006\u001a\u0012\u0012\u0004\u0012\u00020\u0008\u0012\u0006\u0012\u0004\u0018\u00010\u0001\u0018\u00010\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0011\u0010\t\u001a\u00020\n\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012R \u0010\u0013\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0014X\u0084\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0015\u0010\u0016\"\u0004\u0008\u0017\u0010\u0018R\u000e\u0010\u0019\u001a\u00020\u001aX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u001b\u001a\u00060\u001cR\u00020\u0000X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001d\u001a\u00020\u001eX\u0082\u0004\u00a2\u0006\u0002\n\u0000R$\u0010\u001f\u001a\u000c\u0012\u0006\u0012\u0004\u0018\u00010!\u0018\u00010 X\u0084\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\"\u0010#\"\u0004\u0008$\u0010%R(\u0010&\u001a\u0010\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020!0\'\u0018\u00010 X\u0084\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008(\u0010#\"\u0004\u0008)\u0010%R\u0016\u0010*\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010,0+X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010-\u001a\u00020.X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0016\u0010p\u001a\u0004\u0018\u00010M8DX\u0084\u0004\u00a2\u0006\u0006\u001a\u0004\u0008q\u0010rR\u0016\u0010s\u001a\u0004\u0018\u00010t8DX\u0084\u0004\u00a2\u0006\u0006\u001a\u0004\u0008u\u0010v\u00a8\u0006\u00a7\u0001"
    }
    d2 = {
        "Lcom/kakaogame/web/WebViewContainer;",
        "",
        "activity",
        "Landroid/app/Activity;",
        "webView",
        "Landroid/webkit/WebView;",
        "customCookie",
        "",
        "",
        "cookieExcludeOption",
        "",
        "<init>",
        "(Landroid/app/Activity;Landroid/webkit/WebView;Ljava/util/Map;I)V",
        "getActivity",
        "()Landroid/app/Activity;",
        "getWebView",
        "()Landroid/webkit/WebView;",
        "getCookieExcludeOption",
        "()I",
        "innerPopupViews",
        "Ljava/util/Stack;",
        "getInnerPopupViews",
        "()Ljava/util/Stack;",
        "setInnerPopupViews",
        "(Ljava/util/Stack;)V",
        "webViewClient",
        "Landroid/webkit/WebViewClient;",
        "webChromeClient",
        "Lcom/kakaogame/web/WebViewContainer$WebChromeClientImpl;",
        "webAppHandlerManager",
        "Lcom/kakaogame/web/WebAppHandlerManager;",
        "uploadMessage",
        "Landroid/webkit/ValueCallback;",
        "Landroid/net/Uri;",
        "getUploadMessage",
        "()Landroid/webkit/ValueCallback;",
        "setUploadMessage",
        "(Landroid/webkit/ValueCallback;)V",
        "uploadMessages",
        "",
        "getUploadMessages",
        "setUploadMessages",
        "activityResultLock",
        "Lcom/kakaogame/util/MutexLock;",
        "Ljava/lang/Void;",
        "txId",
        "",
        "setWebSettings",
        "",
        "hasInnerPopupView",
        "",
        "goBackInnerPopupView",
        "initCookies",
        "context",
        "Landroid/content/Context;",
        "webUrl",
        "excludeOption",
        "resetWebView",
        "handleWebAppProtocol",
        "view",
        "url",
        "clearFileChooser",
        "openFileChooser",
        "intent",
        "Landroid/content/Intent;",
        "title",
        "",
        "doUpdateVisitedHistory",
        "isReload",
        "onFormResubmission",
        "dontResend",
        "Landroid/os/Message;",
        "resend",
        "onLoadResource",
        "onPageFinished",
        "onPageStarted",
        "favicon",
        "Landroid/graphics/Bitmap;",
        "onReceivedError",
        "errorCode",
        "description",
        "failingUrl",
        "request",
        "Landroid/webkit/WebResourceRequest;",
        "error",
        "Landroid/webkit/WebResourceError;",
        "onReceivedHttpAuthRequest",
        "handler",
        "Landroid/webkit/HttpAuthHandler;",
        "host",
        "realm",
        "onReceivedLoginRequest",
        "account",
        "args",
        "onReceivedSslError",
        "Landroid/webkit/SslErrorHandler;",
        "Landroid/net/http/SslError;",
        "onReceivedHttpError",
        "errorResponse",
        "Landroid/webkit/WebResourceResponse;",
        "onScaleChanged",
        "oldScale",
        "",
        "newScale",
        "onTooManyRedirects",
        "cancelMsg",
        "continueMsg",
        "onUnhandledKeyEvent",
        "event",
        "Landroid/view/KeyEvent;",
        "shouldOverrideKeyEvent",
        "shouldOverrideUrlLoading",
        "defaultVideoPoster",
        "getDefaultVideoPoster",
        "()Landroid/graphics/Bitmap;",
        "videoLoadingProgressView",
        "Landroid/view/View;",
        "getVideoLoadingProgressView",
        "()Landroid/view/View;",
        "getVisitedHistory",
        "callback",
        "onCloseWindow",
        "window",
        "onConsoleMessage",
        "consoleMessage",
        "Landroid/webkit/ConsoleMessage;",
        "onCreateWindow",
        "isDialog",
        "isUserGesture",
        "resultMsg",
        "onExceededDatabaseQuota",
        "databaseIdentifier",
        "currentQuota",
        "estimatedSize",
        "totalUsedQuota",
        "quotaUpdater",
        "Landroid/webkit/WebStorage$QuotaUpdater;",
        "onGeolocationPermissionsHidePrompt",
        "onGeolocationPermissionsShowPrompt",
        "origin",
        "Landroid/webkit/GeolocationPermissions$Callback;",
        "onHideCustomView",
        "onJsAlert",
        "message",
        "result",
        "Landroid/webkit/JsResult;",
        "onJsBeforeUnload",
        "onJsConfirm",
        "onJsPrompt",
        "defaultValue",
        "Landroid/webkit/JsPromptResult;",
        "onJsTimeout",
        "onProgressChanged",
        "newProgress",
        "onReachedMaxAppCacheSize",
        "spaceNeeded",
        "onReceivedIcon",
        "icon",
        "onReceivedTitle",
        "onReceivedTouchIconUrl",
        "precomposed",
        "onRequestFocus",
        "onShowCustomView",
        "Landroid/webkit/WebChromeClient$CustomViewCallback;",
        "WebViewClientImpl",
        "WebChromeClientImpl",
        "Companion",
        "gamesdk_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field protected static final BLANK_PAGE:Ljava/lang/String; = "about:blank"

.field public static final Companion:Lcom/kakaogame/web/WebViewContainer$Companion;

.field private static final DEFAULT_ACCEPT_TYPE:Ljava/lang/String; = "image/*"

.field public static final EXCLUDE_CS_EMAIL:I = 0x1

.field public static final EXCLUDE_KAKAO_TOKEN:I = 0x10

.field private static final FILECHOOSER_REQ_CODE:I = 0x75f

.field private static final TAG:Ljava/lang/String; = "WebViewContainer"


# instance fields
.field private final activity:Landroid/app/Activity;

.field private final activityResultLock:Lcom/kakaogame/util/MutexLock;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/kakaogame/util/MutexLock<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private final cookieExcludeOption:I

.field private final customCookie:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private innerPopupViews:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack<",
            "Landroid/webkit/WebView;",
            ">;"
        }
    .end annotation
.end field

.field private txId:J

.field private uploadMessage:Landroid/webkit/ValueCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/webkit/ValueCallback<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field private uploadMessages:Landroid/webkit/ValueCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/webkit/ValueCallback<",
            "[",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field private final webAppHandlerManager:Lcom/kakaogame/web/WebAppHandlerManager;

.field private final webChromeClient:Lcom/kakaogame/web/WebViewContainer$WebChromeClientImpl;

.field private final webView:Landroid/webkit/WebView;

.field private final webViewClient:Landroid/webkit/WebViewClient;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/kakaogame/web/WebViewContainer$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/kakaogame/web/WebViewContainer$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/kakaogame/web/WebViewContainer;->Companion:Lcom/kakaogame/web/WebViewContainer$Companion;

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 8

    const v0, 0x543d14da

    invoke-static {v0}, Lcom/liapp/y;->׳ֳֳ֬د(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0xe

    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v7}, Lcom/kakaogame/web/WebViewContainer;-><init>(Landroid/app/Activity;Landroid/webkit/WebView;Ljava/util/Map;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method public constructor <init>(Landroid/app/Activity;Landroid/webkit/WebView;)V
    .locals 8

    const v0, 0x543d14da

    invoke-static {v0}, Lcom/liapp/y;->׳ֳֳ֬د(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const v0, 0x543983ba

    invoke-static {v0}, Lcom/liapp/y;->׳ֳֳ֬د(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0xc

    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v7}, Lcom/kakaogame/web/WebViewContainer;-><init>(Landroid/app/Activity;Landroid/webkit/WebView;Ljava/util/Map;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method public constructor <init>(Landroid/app/Activity;Landroid/webkit/WebView;Ljava/util/Map;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Landroid/webkit/WebView;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const v0, 0x543d14da

    invoke-static {v0}, Lcom/liapp/y;->׳ֳֳ֬د(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const v0, 0x543983ba

    invoke-static {v0}, Lcom/liapp/y;->׳ֳֳ֬د(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x0

    const/16 v6, 0x8

    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v1 .. v7}, Lcom/kakaogame/web/WebViewContainer;-><init>(Landroid/app/Activity;Landroid/webkit/WebView;Ljava/util/Map;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method public constructor <init>(Landroid/app/Activity;Landroid/webkit/WebView;Ljava/util/Map;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Landroid/webkit/WebView;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;I)V"
        }
    .end annotation

    const v0, 0x543d14da

    invoke-static {v0}, Lcom/liapp/y;->׳ֳֳ֬د(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const v0, 0x543983ba

    invoke-static {v0}, Lcom/liapp/y;->׳ֳֳ֬د(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 509
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 519
    iput-object p1, p0, Lcom/kakaogame/web/WebViewContainer;->activity:Landroid/app/Activity;

    .line 529
    iput-object p2, p0, Lcom/kakaogame/web/WebViewContainer;->webView:Landroid/webkit/WebView;

    .line 539
    iput-object p3, p0, Lcom/kakaogame/web/WebViewContainer;->customCookie:Ljava/util/Map;

    .line 549
    iput p4, p0, Lcom/kakaogame/web/WebViewContainer;->cookieExcludeOption:I

    .line 569
    new-instance p1, Ljava/util/Stack;

    invoke-direct {p1}, Ljava/util/Stack;-><init>()V

    iput-object p1, p0, Lcom/kakaogame/web/WebViewContainer;->innerPopupViews:Ljava/util/Stack;

    .line 629
    sget-object p1, Lcom/kakaogame/util/MutexLock;->Companion:Lcom/kakaogame/util/MutexLock$Companion;

    invoke-virtual {p1}, Lcom/kakaogame/util/MutexLock$Companion;->createLock()Lcom/kakaogame/util/MutexLock;

    move-result-object p1

    iput-object p1, p0, Lcom/kakaogame/web/WebViewContainer;->activityResultLock:Lcom/kakaogame/util/MutexLock;

    .line 9059
    invoke-direct {p0}, Lcom/kakaogame/web/WebViewContainer;->resetWebView()V

    .line 9069
    invoke-direct {p0, p2}, Lcom/kakaogame/web/WebViewContainer;->setWebSettings(Landroid/webkit/WebView;)V

    .line 9079
    new-instance p1, Lcom/kakaogame/web/WebViewContainer$WebViewClientImpl;

    invoke-direct {p1, p0}, Lcom/kakaogame/web/WebViewContainer$WebViewClientImpl;-><init>(Lcom/kakaogame/web/WebViewContainer;)V

    check-cast p1, Landroid/webkit/WebViewClient;

    iput-object p1, p0, Lcom/kakaogame/web/WebViewContainer;->webViewClient:Landroid/webkit/WebViewClient;

    .line 9089
    new-instance p3, Lcom/kakaogame/web/WebViewContainer$WebChromeClientImpl;

    invoke-direct {p3, p0}, Lcom/kakaogame/web/WebViewContainer$WebChromeClientImpl;-><init>(Lcom/kakaogame/web/WebViewContainer;)V

    iput-object p3, p0, Lcom/kakaogame/web/WebViewContainer;->webChromeClient:Lcom/kakaogame/web/WebViewContainer$WebChromeClientImpl;

    .line 9099
    new-instance p4, Lcom/kakaogame/web/WebAppHandlerManager;

    invoke-direct {p4}, Lcom/kakaogame/web/WebAppHandlerManager;-><init>()V

    iput-object p4, p0, Lcom/kakaogame/web/WebViewContainer;->webAppHandlerManager:Lcom/kakaogame/web/WebAppHandlerManager;

    .line 9109
    invoke-virtual {p2, p1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 9119
    check-cast p3, Landroid/webkit/WebChromeClient;

    invoke-virtual {p2, p3}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 9129
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object p1

    const/4 p3, 0x1

    .line 9139
    invoke-virtual {p1, p2, p3}, Landroid/webkit/CookieManager;->setAcceptThirdPartyCookies(Landroid/webkit/WebView;Z)V

    return-void

    .array-data 1
    .end array-data
.end method

.method public synthetic constructor <init>(Landroid/app/Activity;Landroid/webkit/WebView;Ljava/util/Map;IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_0

    .line 529
    new-instance p2, Landroid/webkit/WebView;

    move-object p6, p1

    check-cast p6, Landroid/content/Context;

    invoke-direct {p2, p6}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    :cond_0
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_1

    const/4 p3, 0x0

    :cond_1
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_2

    const/4 p4, 0x0

    .line 509
    :cond_2
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/kakaogame/web/WebViewContainer;-><init>(Landroid/app/Activity;Landroid/webkit/WebView;Ljava/util/Map;I)V

    return-void

    .array-data 1
    .end array-data
.end method

.method public static final synthetic access$clearFileChooser(Lcom/kakaogame/web/WebViewContainer;)V
    .locals 0

    .line 509
    invoke-direct {p0}, Lcom/kakaogame/web/WebViewContainer;->clearFileChooser()V

    return-void

    .array-data 1
    .end array-data
.end method

.method public static final synthetic access$getTxId$p(Lcom/kakaogame/web/WebViewContainer;)J
    .locals 2

    .line 509
    iget-wide v0, p0, Lcom/kakaogame/web/WebViewContainer;->txId:J

    return-wide v0

    nop

    .array-data 1
    .end array-data
.end method

.method public static final synthetic access$openFileChooser(Lcom/kakaogame/web/WebViewContainer;Landroid/content/Intent;Ljava/lang/CharSequence;)V
    .locals 0

    .line 509
    invoke-direct {p0, p1, p2}, Lcom/kakaogame/web/WebViewContainer;->openFileChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method public static final synthetic access$setWebSettings(Lcom/kakaogame/web/WebViewContainer;Landroid/webkit/WebView;)V
    .locals 0

    .line 509
    invoke-direct {p0, p1}, Lcom/kakaogame/web/WebViewContainer;->setWebSettings(Landroid/webkit/WebView;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method private final clearFileChooser()V
    .locals 2

    .line 2579
    iget-object v0, p0, Lcom/kakaogame/web/WebViewContainer;->uploadMessage:Landroid/webkit/ValueCallback;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2589
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    .line 2599
    iput-object v1, p0, Lcom/kakaogame/web/WebViewContainer;->uploadMessage:Landroid/webkit/ValueCallback;

    .line 2619
    :cond_0
    iget-object v0, p0, Lcom/kakaogame/web/WebViewContainer;->uploadMessages:Landroid/webkit/ValueCallback;

    if-eqz v0, :cond_1

    .line 2629
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    .line 2639
    iput-object v1, p0, Lcom/kakaogame/web/WebViewContainer;->uploadMessages:Landroid/webkit/ValueCallback;

    :cond_1
    return-void

    .array-data 1
    .end array-data
.end method

.method private final handleWebAppProtocol(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 3

    .line 2409
    sget-object v0, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const v2, 0x5d1eb7af

    invoke-static {v2}, Lcom/liapp/y;->ڴݮگ֮ت(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const v2, 0x225b8d7e

    invoke-static {v2}, Lcom/liapp/y;->ֲֳگܱޭ(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lcom/kakaogame/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2419
    iget-object v0, p0, Lcom/kakaogame/web/WebViewContainer;->webAppHandlerManager:Lcom/kakaogame/web/WebAppHandlerManager;

    .line 2429
    iget-object v1, p0, Lcom/kakaogame/web/WebViewContainer;->webView:Landroid/webkit/WebView;

    .line 2449
    new-instance v2, Lcom/kakaogame/web/WebViewContainer$handleWebAppProtocol$1;

    invoke-direct {v2, p1}, Lcom/kakaogame/web/WebViewContainer$handleWebAppProtocol$1;-><init>(Landroid/webkit/WebView;)V

    check-cast v2, Lcom/kakaogame/web/WebAppHandlerManager$WebAppHandlerCallback;

    .line 2419
    invoke-virtual {v0, v1, p2, v2}, Lcom/kakaogame/web/WebAppHandlerManager;->handle(Landroid/webkit/WebView;Ljava/lang/String;Lcom/kakaogame/web/WebAppHandlerManager$WebAppHandlerCallback;)Z

    move-result p1

    return p1

    .array-data 1
    .end array-data
.end method

.method private final openFileChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)V
    .locals 6

    .line 2699
    sget-object v0, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const v2, 0x336c3b6b

    invoke-static {v2}, Lcom/liapp/y;->ׯ״ٲ֬ب(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const v2, 0x5d179617

    invoke-static {v2}, Lcom/liapp/y;->ڴݮگ֮ت(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const v2, 0x225b8d7e

    invoke-static {v2}, Lcom/liapp/y;->ֲֳگܱޭ(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lcom/kakaogame/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2709
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p2, "File Chooser"

    .line 2729
    check-cast p2, Ljava/lang/CharSequence;

    :cond_0
    const/16 v0, 0x40

    .line 2749
    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/4 v0, 0x1

    .line 2759
    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2779
    invoke-static {p1, p2}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object p1

    .line 2789
    new-instance p2, Lcom/kakaogame/web/WebViewContainer$openFileChooser$eventListener$1;

    invoke-direct {p2, p1, p0}, Lcom/kakaogame/web/WebViewContainer$openFileChooser$eventListener$1;-><init>(Landroid/content/Intent;Lcom/kakaogame/web/WebViewContainer;)V

    move-object v2, p2

    check-cast v2, Lcom/kakaogame/KGAuthActivity$KGActivityEventListener;

    .line 3189
    sget-object v0, Lcom/kakaogame/KGAuthActivity;->Companion:Lcom/kakaogame/KGAuthActivity$Companion;

    .line 3199
    iget-object v1, p0, Lcom/kakaogame/web/WebViewContainer;->activity:Landroid/app/Activity;

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    .line 3189
    invoke-static/range {v0 .. v5}, Lcom/kakaogame/KGAuthActivity$Companion;->start$default(Lcom/kakaogame/KGAuthActivity$Companion;Landroid/app/Activity;Lcom/kakaogame/KGAuthActivity$KGActivityEventListener;Landroidx/core/app/ActivityCompat$OnRequestPermissionsResultCallback;ILjava/lang/Object;)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/kakaogame/web/WebViewContainer;->txId:J

    return-void

    .array-data 1
    .end array-data
.end method

.method private final resetWebView()V
    .locals 2

    .line 2319
    iget-object v0, p0, Lcom/kakaogame/web/WebViewContainer;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->stopLoading()V

    .line 2329
    iget-object v0, p0, Lcom/kakaogame/web/WebViewContainer;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->clearHistory()V

    .line 2339
    iget-object v0, p0, Lcom/kakaogame/web/WebViewContainer;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->clearFormData()V

    .line 2349
    iget-object v0, p0, Lcom/kakaogame/web/WebViewContainer;->webView:Landroid/webkit/WebView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->clearCache(Z)V

    .line 2359
    iget-object v0, p0, Lcom/kakaogame/web/WebViewContainer;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->onResume()V

    .line 2369
    iget-object v0, p0, Lcom/kakaogame/web/WebViewContainer;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->resumeTimers()V

    return-void

    .array-data 1
    .end array-data
.end method

.method private final setWebSettings(Landroid/webkit/WebView;)V
    .locals 8

    .line 659
    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const v1, -0x224d0294

    invoke-static {v1}, Lcom/liapp/y;->״دش۲ݮ(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x1

    .line 909
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 669
    invoke-virtual {p1, v1}, Landroid/webkit/WebView;->setInitialScale(I)V

    const/16 v3, 0x82

    .line 679
    invoke-virtual {p1, v3}, Landroid/webkit/WebView;->requestFocus(I)Z

    .line 689
    invoke-virtual {p1, v1}, Landroid/webkit/WebView;->setVerticalScrollbarOverlay(Z)V

    .line 699
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setLoadsImagesAutomatically(Z)V

    const/4 p1, 0x0

    .line 709
    invoke-virtual {v0, p1}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 719
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    .line 729
    sget-object v3, Landroid/webkit/WebSettings$PluginState;->ON:Landroid/webkit/WebSettings$PluginState;

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setPluginState(Landroid/webkit/WebSettings$PluginState;)V

    .line 739
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 749
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    .line 759
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    const/4 v3, 0x2

    .line 769
    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    .line 779
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    .line 789
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    .line 799
    invoke-virtual {v0, p1}, Landroid/webkit/WebSettings;->setMixedContentMode(I)V

    .line 809
    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getUserAgentString()Ljava/lang/String;

    move-result-object v3

    .line 819
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const v4, 0x336c3c83

    invoke-static {v4}, Lcom/liapp/y;->ׯ״ٲ֬ب(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setUserAgentString(Ljava/lang/String;)V

    .line 839
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    .line 869
    sget-object v3, Lcom/kakaogame/web/WebViewContainer;->Companion:Lcom/kakaogame/web/WebViewContainer$Companion;

    new-array v4, v1, [Ljava/lang/Class;

    .line 889
    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v5, v4, p1

    new-array v5, v1, [Ljava/lang/Object;

    aput-object v2, v5, p1

    const v6, 0x336c3dd3

    invoke-static {v6}, Lcom/liapp/y;->ׯ״ٲ֬ب(I)Ljava/lang/String;

    move-result-object v6

    .line 869
    invoke-static {v3, v0, v6, v4, v5}, Lcom/kakaogame/web/WebViewContainer$Companion;->access$methodInvoke(Lcom/kakaogame/web/WebViewContainer$Companion;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)V

    new-array v4, v1, [Ljava/lang/Class;

    .line 969
    const-class v5, Landroid/webkit/WebSettings$PluginState;

    aput-object v5, v4, p1

    new-array v5, v1, [Ljava/lang/Object;

    .line 989
    sget-object v7, Landroid/webkit/WebSettings$PluginState;->ON:Landroid/webkit/WebSettings$PluginState;

    aput-object v7, v5, p1

    const v7, 0x54379b0a

    invoke-static {v7}, Lcom/liapp/y;->׳ֳֳ֬د(I)Ljava/lang/String;

    move-result-object v7

    .line 949
    invoke-static {v3, v0, v7, v4, v5}, Lcom/kakaogame/web/WebViewContainer$Companion;->access$methodInvoke(Lcom/kakaogame/web/WebViewContainer$Companion;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)V

    new-array v4, v1, [Ljava/lang/Class;

    .line 1049
    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v5, v4, p1

    new-array v5, v1, [Ljava/lang/Object;

    aput-object v2, v5, p1

    .line 1029
    invoke-static {v3, v0, v6, v4, v5}, Lcom/kakaogame/web/WebViewContainer$Companion;->access$methodInvoke(Lcom/kakaogame/web/WebViewContainer$Companion;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)V

    new-array v4, v1, [Ljava/lang/Class;

    .line 1129
    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v5, v4, p1

    new-array v5, v1, [Ljava/lang/Object;

    aput-object v2, v5, p1

    const v6, 0x5437988a

    invoke-static {v6}, Lcom/liapp/y;->׳ֳֳ֬د(I)Ljava/lang/String;

    move-result-object v6

    .line 1109
    invoke-static {v3, v0, v6, v4, v5}, Lcom/kakaogame/web/WebViewContainer$Companion;->access$methodInvoke(Lcom/kakaogame/web/WebViewContainer$Companion;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)V

    new-array v4, v1, [Ljava/lang/Class;

    .line 1209
    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v5, v4, p1

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v2, v1, p1

    const-string p1, "setAllowFileAccessFromFileURLs"

    .line 1189
    invoke-static {v3, v0, p1, v4, v1}, Lcom/kakaogame/web/WebViewContainer$Companion;->access$methodInvoke(Lcom/kakaogame/web/WebViewContainer$Companion;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)V

    return-void

    .array-data 1
    .end array-data
.end method


# virtual methods
.method protected final doUpdateVisitedHistory(Landroid/webkit/WebView;Ljava/lang/String;Z)V
    .locals 0

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method protected final getActivity()Landroid/app/Activity;
    .locals 1

    .line 519
    iget-object v0, p0, Lcom/kakaogame/web/WebViewContainer;->activity:Landroid/app/Activity;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final getCookieExcludeOption()I
    .locals 1

    .line 549
    iget v0, p0, Lcom/kakaogame/web/WebViewContainer;->cookieExcludeOption:I

    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method protected final getDefaultVideoPoster()Landroid/graphics/Bitmap;
    .locals 1

    .line 4209
    iget-object v0, p0, Lcom/kakaogame/web/WebViewContainer;->webChromeClient:Lcom/kakaogame/web/WebViewContainer$WebChromeClientImpl;

    invoke-virtual {v0}, Lcom/kakaogame/web/WebViewContainer$WebChromeClientImpl;->getDefaultVideoPoster()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method protected final getInnerPopupViews()Ljava/util/Stack;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Stack<",
            "Landroid/webkit/WebView;",
            ">;"
        }
    .end annotation

    .line 569
    iget-object v0, p0, Lcom/kakaogame/web/WebViewContainer;->innerPopupViews:Ljava/util/Stack;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method protected final getUploadMessage()Landroid/webkit/ValueCallback;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/webkit/ValueCallback<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation

    .line 609
    iget-object v0, p0, Lcom/kakaogame/web/WebViewContainer;->uploadMessage:Landroid/webkit/ValueCallback;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method protected final getUploadMessages()Landroid/webkit/ValueCallback;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/webkit/ValueCallback<",
            "[",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation

    .line 619
    iget-object v0, p0, Lcom/kakaogame/web/WebViewContainer;->uploadMessages:Landroid/webkit/ValueCallback;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method protected final getVideoLoadingProgressView()Landroid/view/View;
    .locals 1

    .line 4229
    iget-object v0, p0, Lcom/kakaogame/web/WebViewContainer;->webChromeClient:Lcom/kakaogame/web/WebViewContainer$WebChromeClientImpl;

    invoke-virtual {v0}, Lcom/kakaogame/web/WebViewContainer$WebChromeClientImpl;->getVideoLoadingProgressView()Landroid/view/View;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method protected final getVisitedHistory(Landroid/webkit/ValueCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/ValueCallback<",
            "[",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 4259
    iget-object v0, p0, Lcom/kakaogame/web/WebViewContainer;->webChromeClient:Lcom/kakaogame/web/WebViewContainer$WebChromeClientImpl;

    invoke-virtual {v0, p1}, Lcom/kakaogame/web/WebViewContainer$WebChromeClientImpl;->getVisitedHistory(Landroid/webkit/ValueCallback;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method public final getWebView()Landroid/webkit/WebView;
    .locals 1

    .line 529
    iget-object v0, p0, Lcom/kakaogame/web/WebViewContainer;->webView:Landroid/webkit/WebView;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final goBackInnerPopupView()V
    .locals 1

    .line 1329
    iget-object v0, p0, Lcom/kakaogame/web/WebViewContainer;->innerPopupViews:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->lastElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1339
    iget-object v0, p0, Lcom/kakaogame/web/WebViewContainer;->innerPopupViews:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->lastElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->goBack()V

    goto :goto_0

    .line 1359
    :cond_0
    iget-object v0, p0, Lcom/kakaogame/web/WebViewContainer;->innerPopupViews:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    invoke-virtual {p0, v0}, Lcom/kakaogame/web/WebViewContainer;->onCloseWindow(Landroid/webkit/WebView;)V

    :goto_0
    return-void

    .array-data 1
    .end array-data
.end method

.method public final hasInnerPopupView()Z
    .locals 1

    .line 1289
    iget-object v0, p0, Lcom/kakaogame/web/WebViewContainer;->innerPopupViews:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .array-data 1
    .end array-data
.end method

.method public initCookies(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .line 1409
    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/kakaogame/web/WebViewContainer;->initCookies(Landroid/content/Context;Ljava/lang/String;I)V

    return-void

    .array-data 1
    .end array-data
.end method

.method public final initCookies(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 7

    const-string/jumbo p1, "webUrl"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1449
    sget-object p1, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    new-instance v0, Ljava/lang/StringBuilder;

    const v1, 0x225b9296

    invoke-static {v1}, Lcom/liapp/y;->ֲֳگܱޭ(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const v1, 0x225b8d7e

    invoke-static {v1}, Lcom/liapp/y;->ֲֳگܱޭ(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1, v0}, Lcom/kakaogame/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1459
    move-object p1, p2

    check-cast p1, Ljava/lang/CharSequence;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 1489
    :cond_0
    sget-object p1, Lcom/kakaogame/web/WebViewContainer;->Companion:Lcom/kakaogame/web/WebViewContainer$Companion;

    invoke-static {p1, p2}, Lcom/kakaogame/web/WebViewContainer$Companion;->access$getDomainUrl(Lcom/kakaogame/web/WebViewContainer$Companion;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1499
    move-object p2, p1

    check-cast p2, Ljava/lang/CharSequence;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_1

    return-void

    .line 1539
    :cond_1
    new-instance p2, Ljava/util/LinkedHashMap;

    invoke-direct {p2}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast p2, Ljava/util/Map;

    const v0, 0x5d111d47

    invoke-static {v0}, Lcom/liapp/y;->ڴݮگ֮ت(I)Ljava/lang/String;

    move-result-object v0

    .line 1549
    invoke-static {}, Lcom/kakaogame/KGSystem;->getOSName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const v0, -0x4519cd27

    invoke-static {v0}, Lcom/liapp/y;->ڳݬ٬ۮݪ(I)Ljava/lang/String;

    move-result-object v0

    .line 1559
    invoke-static {}, Lcom/kakaogame/util/VersionUtil;->getOSVersion()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const v0, 0x5439a30a

    invoke-static {v0}, Lcom/liapp/y;->׳ֳֳ֬د(I)Ljava/lang/String;

    move-result-object v0

    .line 1569
    invoke-static {}, Lcom/kakaogame/util/DeviceUtil;->getDeviceModel()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const v0, 0x5439a272

    invoke-static {v0}, Lcom/liapp/y;->׳ֳֳ֬د(I)Ljava/lang/String;

    move-result-object v0

    .line 1579
    invoke-static {}, Lcom/kakaogame/KGSystem;->getLanguageCode()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const v0, 0x7d70a025    # 1.999039E37f

    invoke-static {v0}, Lcom/liapp/y;->حֲݴܳޯ(I)Ljava/lang/String;

    move-result-object v0

    .line 1589
    invoke-static {}, Lcom/kakaogame/KGSystem;->getCountryCode()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const v0, 0x2255ab56

    invoke-static {v0}, Lcom/liapp/y;->ֲֳگܱޭ(I)Ljava/lang/String;

    move-result-object v0

    .line 1599
    invoke-static {}, Lcom/kakaogame/KGSystem;->getDeviceId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1609
    sget-object v0, Lcom/kakaogame/core/CoreManager;->Companion:Lcom/kakaogame/core/CoreManager$Companion;

    invoke-virtual {v0}, Lcom/kakaogame/core/CoreManager$Companion;->getInstance()Lcom/kakaogame/core/CoreManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kakaogame/core/CoreManager;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const v2, -0x451b9837

    invoke-static {v2}, Lcom/liapp/y;->ڳݬ٬ۮݪ(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1629
    sget-object v0, Lcom/kakaogame/core/CoreManager;->Companion:Lcom/kakaogame/core/CoreManager$Companion;

    invoke-virtual {v0}, Lcom/kakaogame/core/CoreManager$Companion;->getInstance()Lcom/kakaogame/core/CoreManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kakaogame/core/CoreManager;->getConfiguration()Lcom/kakaogame/config/Configuration;

    move-result-object v0

    const v2, 0x7d7197d5

    invoke-static {v2}, Lcom/liapp/y;->حֲݴܳޯ(I)Ljava/lang/String;

    move-result-object v2

    .line 1639
    invoke-virtual {v0}, Lcom/kakaogame/config/Configuration;->getAppId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p2, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const v2, -0x4519cf7f

    invoke-static {v2}, Lcom/liapp/y;->ڳݬ٬ۮݪ(I)Ljava/lang/String;

    move-result-object v2

    .line 1649
    invoke-virtual {v0}, Lcom/kakaogame/config/Configuration;->getAppVersion()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p2, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const v2, 0x6d0d2708

    invoke-static {v2}, Lcom/liapp/y;->ٱڳܴڭܩ(I)Ljava/lang/String;

    move-result-object v2

    .line 1659
    invoke-virtual {v0}, Lcom/kakaogame/config/Configuration;->getMarket()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p2, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1669
    sget-object v2, Lcom/kakaogame/manager/SdkManager;->INSTANCE:Lcom/kakaogame/manager/SdkManager;

    invoke-virtual {v2}, Lcom/kakaogame/manager/SdkManager;->getSdkVersion()Ljava/lang/String;

    move-result-object v2

    const v3, 0x2255a8c6

    invoke-static {v3}, Lcom/liapp/y;->ֲֳگܱޭ(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p2, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1679
    invoke-virtual {v0}, Lcom/kakaogame/config/Configuration;->getServerTypeValue()Ljava/lang/String;

    move-result-object v0

    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v0, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const v2, 0x6d0bd780

    invoke-static {v2}, Lcom/liapp/y;->ٱڳܴڭܩ(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/CharSequence;

    const v2, 0x6d028660

    invoke-static {v2}, Lcom/liapp/y;->ٱڳܴڭܩ(I)Ljava/lang/String;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v0, v2, v5, v3, v4}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const v0, 0x6d028620    # 2.5247E27f

    invoke-static {v0}, Lcom/liapp/y;->ٱڳܴڭܩ(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    const v0, 0x6d0289c8

    invoke-static {v0}, Lcom/liapp/y;->ٱڳܴڭܩ(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    const v2, -0x4517fb0f

    invoke-static {v2}, Lcom/liapp/y;->ڳݬ٬ۮݪ(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1699
    sget-object v0, Lcom/kakaogame/infodesk/InfodeskHelper;->INSTANCE:Lcom/kakaogame/infodesk/InfodeskHelper;

    invoke-virtual {v0}, Lcom/kakaogame/infodesk/InfodeskHelper;->getTermsOfServiceVer()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    const v2, 0x7d7d3ffd

    invoke-static {v2}, Lcom/liapp/y;->حֲݴܳޯ(I)Ljava/lang/String;

    move-result-object v2

    .line 1719
    invoke-interface {p2, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1739
    :cond_3
    sget-object v0, Lcom/kakaogame/infodesk/InfodeskHelper;->INSTANCE:Lcom/kakaogame/infodesk/InfodeskHelper;

    invoke-virtual {v0}, Lcom/kakaogame/infodesk/InfodeskHelper;->getTermsOfServiceUrl()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    const v2, -0x224c5dfc

    invoke-static {v2}, Lcom/liapp/y;->״دش۲ݮ(I)Ljava/lang/String;

    move-result-object v2

    .line 1759
    invoke-interface {p2, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1779
    :cond_4
    sget-object v0, Lcom/kakaogame/infodesk/InfodeskHelper;->INSTANCE:Lcom/kakaogame/infodesk/InfodeskHelper;

    invoke-virtual {v0}, Lcom/kakaogame/infodesk/InfodeskHelper;->getPublisherId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    const v2, 0x336f814b

    invoke-static {v2}, Lcom/liapp/y;->ׯ״ٲ֬ب(I)Ljava/lang/String;

    move-result-object v2

    .line 1799
    invoke-interface {p2, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1819
    :cond_5
    sget-object v0, Lcom/kakaogame/infodesk/InfodeskHelper;->INSTANCE:Lcom/kakaogame/infodesk/InfodeskHelper;

    invoke-virtual {v0}, Lcom/kakaogame/infodesk/InfodeskHelper;->getPolicyVersion()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    const v2, 0x22582d9e

    invoke-static {v2}, Lcom/liapp/y;->ֲֳگܱޭ(I)Ljava/lang/String;

    move-result-object v2

    .line 1839
    invoke-interface {p2, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    and-int/lit8 v0, p3, 0x1

    if-nez v0, :cond_7

    .line 1869
    sget-object v0, Lcom/kakaogame/infodesk/InfodeskHelper;->INSTANCE:Lcom/kakaogame/infodesk/InfodeskHelper;

    invoke-virtual {v0}, Lcom/kakaogame/infodesk/InfodeskHelper;->getCSEmail()Ljava/lang/String;

    move-result-object v0

    .line 1879
    sget-object v2, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    const v4, -0x4517fa17

    invoke-static {v4}, Lcom/liapp/y;->ڳݬ٬ۮݪ(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Lcom/kakaogame/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_7

    const v2, 0x336067b3

    invoke-static {v2}, Lcom/liapp/y;->ׯ״ٲ֬ب(I)Ljava/lang/String;

    move-result-object v2

    .line 1899
    invoke-interface {p2, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1929
    :cond_7
    sget-object v0, Lcom/kakaogame/core/CoreManager;->Companion:Lcom/kakaogame/core/CoreManager$Companion;

    invoke-virtual {v0}, Lcom/kakaogame/core/CoreManager$Companion;->getInstance()Lcom/kakaogame/core/CoreManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kakaogame/core/CoreManager;->isAuthorized()Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_b

    .line 1939
    sget-object v0, Lcom/kakaogame/core/CoreManager;->Companion:Lcom/kakaogame/core/CoreManager$Companion;

    invoke-virtual {v0}, Lcom/kakaogame/core/CoreManager$Companion;->getInstance()Lcom/kakaogame/core/CoreManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kakaogame/core/CoreManager;->getPlayerId()Ljava/lang/String;

    move-result-object v0

    const v3, -0x224509cc

    invoke-static {v3}, Lcom/liapp/y;->״دش۲ݮ(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1949
    sget-object v0, Lcom/kakaogame/core/CoreManager;->Companion:Lcom/kakaogame/core/CoreManager$Companion;

    invoke-virtual {v0}, Lcom/kakaogame/core/CoreManager$Companion;->getInstance()Lcom/kakaogame/core/CoreManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kakaogame/core/CoreManager;->getAuthData()Lcom/kakaogame/idp/IdpAccount;

    move-result-object v0

    .line 1959
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/kakaogame/idp/IdpAccount;->getIdpUserId()Ljava/lang/String;

    move-result-object v3

    const v4, -0x2242626c

    invoke-static {v4}, Lcom/liapp/y;->״دش۲ݮ(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const v3, 0x6d0bddd0

    invoke-static {v3}, Lcom/liapp/y;->ٱڳܴڭܩ(I)Ljava/lang/String;

    move-result-object v3

    .line 1969
    invoke-virtual {v0}, Lcom/kakaogame/idp/IdpAccount;->getIdpCode()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1979
    sget-object v3, Lcom/kakaogame/KGLocalPlayer;->Companion:Lcom/kakaogame/KGLocalPlayer$Companion;

    invoke-virtual {v3}, Lcom/kakaogame/KGLocalPlayer$Companion;->getCurrentPlayer()Lcom/kakaogame/KGLocalPlayer;

    move-result-object v3

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v3}, Lcom/kakaogame/KGLocalPlayer;->getRegistTime()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v5, v3, v5

    if-lez v5, :cond_8

    .line 1989
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const v4, 0x3363bdbb

    invoke-static {v4}, Lcom/liapp/y;->ׯ״ٲ֬ب(I)Ljava/lang/String;

    move-result-object v4

    .line 1999
    invoke-interface {p2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2019
    :cond_8
    sget-object v3, Lcom/kakaogame/KGIdpProfile$KGIdpCode;->Kakao:Lcom/kakaogame/KGIdpProfile$KGIdpCode;

    invoke-virtual {v3}, Lcom/kakaogame/KGIdpProfile$KGIdpCode;->getCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/kakaogame/idp/IdpAccount;->getIdpCode()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_b

    and-int/lit8 p3, p3, 0x10

    if-nez p3, :cond_9

    const-string p3, "serviceUserId"

    .line 2039
    invoke-virtual {v0, p3}, Lcom/kakaogame/idp/IdpAccount;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {p2, p3, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p3, "kakaoAccessToken"

    .line 2049
    invoke-virtual {v0}, Lcom/kakaogame/idp/IdpAccount;->getIdpAccessToken()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p2, p3, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2079
    :cond_9
    sget-object p3, Lcom/kakaogame/infodesk/InfodeskHelper;->INSTANCE:Lcom/kakaogame/infodesk/InfodeskHelper;

    invoke-virtual {p3}, Lcom/kakaogame/infodesk/InfodeskHelper;->isKakaoGame()Z

    move-result p3

    if-eqz p3, :cond_a

    .line 2089
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object p3

    .line 2099
    new-instance v3, Ljava/lang/StringBuilder;

    const v4, 0x5d1ebcdf

    invoke-static {v4}, Lcom/liapp/y;->ڴݮگ֮ت(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/kakaogame/idp/IdpAccount;->getIdpAccessToken()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const v3, 0x336c3103

    invoke-static {v3}, Lcom/liapp/y;->ׯ״ٲ֬ب(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3, v3, v0}, Landroid/webkit/CookieManager;->setCookie(Ljava/lang/String;Ljava/lang/String;)V

    .line 2119
    :cond_a
    sget-object p3, Lcom/kakaogame/KGLocalPlayer;->Companion:Lcom/kakaogame/KGLocalPlayer$Companion;

    invoke-virtual {p3}, Lcom/kakaogame/KGLocalPlayer$Companion;->getCurrentPlayer()Lcom/kakaogame/KGLocalPlayer;

    move-result-object p3

    invoke-static {p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p3}, Lcom/kakaogame/KGLocalPlayer;->getIdpProfile()Lcom/kakaogame/KGIdpProfile;

    move-result-object p3

    invoke-static {p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p3}, Lcom/kakaogame/KGIdpProfile;->getAccountType()Ljava/lang/String;

    move-result-object p3

    .line 2129
    move-object v0, p3

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b

    const v0, 0x7d7e9695

    invoke-static {v0}, Lcom/liapp/y;->حֲݴܳޯ(I)Ljava/lang/String;

    move-result-object v0

    .line 2139
    invoke-interface {p2, v0, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2179
    :cond_b
    iget-object p3, p0, Lcom/kakaogame/web/WebViewContainer;->customCookie:Ljava/util/Map;

    if-eqz p3, :cond_c

    .line 2189
    invoke-static {p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {p2, p3}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 2209
    :cond_c
    sget-object p3, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    new-instance v0, Ljava/lang/StringBuilder;

    const v3, 0x54379432

    invoke-static {v3}, Lcom/liapp/y;->׳ֳֳ֬د(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v1, v0}, Lcom/kakaogame/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2219
    invoke-static {p2}, Lcom/kakaogame/util/json/JSONValue;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 2229
    sget-object p3, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    new-instance v0, Ljava/lang/StringBuilder;

    const v3, 0x336c33fb

    invoke-static {v3}, Lcom/liapp/y;->ׯ״ٲ֬ب(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v1, v0}, Lcom/kakaogame/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2239
    invoke-static {p2}, Lcom/kakaogame/util/Base64Util;->getUrlSafeBase64encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 2249
    sget-object p3, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    new-instance v0, Ljava/lang/StringBuilder;

    const v3, 0x6d028a70

    invoke-static {v3}, Lcom/liapp/y;->ٱڳܴڭܩ(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v1, v0}, Lcom/kakaogame/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2259
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object p3

    .line 2269
    new-instance v0, Ljava/lang/StringBuilder;

    const v1, 0x6d028db0

    invoke-static {v1}, Lcom/liapp/y;->ٱڳܴڭܩ(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p1, p2}, Landroid/webkit/CookieManager;->setCookie(Ljava/lang/String;Ljava/lang/String;)V

    .line 2279
    invoke-virtual {p3, v2}, Landroid/webkit/CookieManager;->setAcceptCookie(Z)V

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method protected final onCloseWindow(Landroid/webkit/WebView;)V
    .locals 1

    .line 4299
    iget-object v0, p0, Lcom/kakaogame/web/WebViewContainer;->webView:Landroid/webkit/WebView;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4309
    iget-object v0, p0, Lcom/kakaogame/web/WebViewContainer;->webView:Landroid/webkit/WebView;

    check-cast p1, Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->removeView(Landroid/view/View;)V

    :cond_0
    return-void

    .array-data 1
    .end array-data
.end method

.method protected final onConsoleMessage(Landroid/webkit/ConsoleMessage;)Z
    .locals 0

    const/4 p1, 0x0

    return p1

    .array-data 1
    .end array-data
.end method

.method protected final onCreateWindow(Landroid/webkit/WebView;ZZLandroid/os/Message;)Z
    .locals 0

    const/4 p1, 0x0

    return p1

    .array-data 1
    .end array-data
.end method

.method protected final onExceededDatabaseQuota(Ljava/lang/String;Ljava/lang/String;JJJLandroid/webkit/WebStorage$QuotaUpdater;)V
    .locals 0

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method protected final onFormResubmission(Landroid/webkit/WebView;Landroid/os/Message;Landroid/os/Message;)V
    .locals 0

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method protected final onGeolocationPermissionsHidePrompt()V
    .locals 0

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method protected final onGeolocationPermissionsShowPrompt(Ljava/lang/String;Landroid/webkit/GeolocationPermissions$Callback;)V
    .locals 0

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public onHideCustomView()V
    .locals 0

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method protected onJsAlert(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z
    .locals 0

    const/4 p1, 0x0

    return p1

    .array-data 1
    .end array-data
.end method

.method protected final onJsBeforeUnload(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z
    .locals 0

    const/4 p1, 0x0

    return p1

    .array-data 1
    .end array-data
.end method

.method protected final onJsConfirm(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z
    .locals 0

    const/4 p1, 0x0

    return p1

    .array-data 1
    .end array-data
.end method

.method protected final onJsPrompt(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsPromptResult;)Z
    .locals 0

    const/4 p1, 0x0

    return p1

    .array-data 1
    .end array-data
.end method

.method protected final onJsTimeout()Z
    .locals 1

    const/4 v0, 0x0

    return v0

    .array-data 1
    .end array-data
.end method

.method protected final onLoadResource(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method protected onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method protected onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 0

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method protected final onProgressChanged(Landroid/webkit/WebView;I)V
    .locals 0

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method protected final onReachedMaxAppCacheSize(JJLandroid/webkit/WebStorage$QuotaUpdater;)V
    .locals 0

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method protected onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method protected onReceivedError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceError;)V
    .locals 0

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method protected final onReceivedHttpAuthRequest(Landroid/webkit/WebView;Landroid/webkit/HttpAuthHandler;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method protected onReceivedHttpError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceResponse;)V
    .locals 0

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method protected final onReceivedIcon(Landroid/webkit/WebView;Landroid/graphics/Bitmap;)V
    .locals 0

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method protected final onReceivedLoginRequest(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method protected onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
    .locals 0

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method protected onReceivedTitle(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method protected final onReceivedTouchIconUrl(Landroid/webkit/WebView;Ljava/lang/String;Z)V
    .locals 0

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method protected final onRequestFocus(Landroid/webkit/WebView;)V
    .locals 0

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method protected final onScaleChanged(Landroid/webkit/WebView;FF)V
    .locals 0

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method protected onShowCustomView(Landroid/view/View;Landroid/webkit/WebChromeClient$CustomViewCallback;)V
    .locals 0

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method protected final onTooManyRedirects(Landroid/webkit/WebView;Landroid/os/Message;Landroid/os/Message;)V
    .locals 0

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method protected final onUnhandledKeyEvent(Landroid/webkit/WebView;Landroid/view/KeyEvent;)V
    .locals 0

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method protected final setInnerPopupViews(Ljava/util/Stack;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Stack<",
            "Landroid/webkit/WebView;",
            ">;)V"
        }
    .end annotation

    const v0, 0x3365ef8b

    invoke-static {v0}, Lcom/liapp/y;->ׯ״ٲ֬ب(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 569
    iput-object p1, p0, Lcom/kakaogame/web/WebViewContainer;->innerPopupViews:Ljava/util/Stack;

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method protected final setUploadMessage(Landroid/webkit/ValueCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/ValueCallback<",
            "Landroid/net/Uri;",
            ">;)V"
        }
    .end annotation

    .line 609
    iput-object p1, p0, Lcom/kakaogame/web/WebViewContainer;->uploadMessage:Landroid/webkit/ValueCallback;

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method protected final setUploadMessages(Landroid/webkit/ValueCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/ValueCallback<",
            "[",
            "Landroid/net/Uri;",
            ">;)V"
        }
    .end annotation

    .line 619
    iput-object p1, p0, Lcom/kakaogame/web/WebViewContainer;->uploadMessages:Landroid/webkit/ValueCallback;

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method protected final shouldOverrideKeyEvent(Landroid/webkit/WebView;Landroid/view/KeyEvent;)Z
    .locals 0

    const/4 p1, 0x0

    return p1

    .array-data 1
    .end array-data
.end method

.method protected shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x1

    if-eqz p1, :cond_3

    if-nez p2, :cond_0

    goto :goto_0

    .line 4089
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/kakaogame/web/WebViewContainer;->handleWebAppProtocol(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    .line 4109
    :cond_1
    sget-object p1, Lcom/kakaogame/web/WebViewContainer;->Companion:Lcom/kakaogame/web/WebViewContainer$Companion;

    iget-object v1, p0, Lcom/kakaogame/web/WebViewContainer;->activity:Landroid/app/Activity;

    invoke-virtual {p1, v1, p2}, Lcom/kakaogame/web/WebViewContainer$Companion;->handleCustomScheme(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    .line 4139
    :cond_2
    iget-object p1, p0, Lcom/kakaogame/web/WebViewContainer;->activity:Landroid/app/Activity;

    check-cast p1, Landroid/content/Context;

    invoke-virtual {p0, p1, p2}, Lcom/kakaogame/web/WebViewContainer;->initCookies(Landroid/content/Context;Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_3
    :goto_0
    return v0

    nop

    .array-data 1
    .end array-data
.end method
