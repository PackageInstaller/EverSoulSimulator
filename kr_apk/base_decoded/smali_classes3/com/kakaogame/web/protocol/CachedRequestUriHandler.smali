.class public final Lcom/kakaogame/web/protocol/CachedRequestUriHandler;
.super Lcom/kakaogame/web/protocol/WebAppProtocolHandler;
.source "CachedRequestUriHandler.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kakaogame/web/protocol/CachedRequestUriHandler$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\u0018\u0000 \u00162\u00020\u0001:\u0001\u0016B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u001e\u0010\u0004\u001a\u0004\u0018\u00010\u00052\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u00072\u0008\u0010\u0008\u001a\u0004\u0018\u00010\tH\u0014J\u0012\u0010\n\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0008\u001a\u00020\tH\u0002J \u0010\u000b\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0008\u001a\u00020\t2\u0006\u0010\u000c\u001a\u00020\u0005H\u0082@\u00a2\u0006\u0002\u0010\rJ\"\u0010\u000e\u001a\u00020\u00052\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00052\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u0013H\u0002J\n\u0010\u0014\u001a\u00020\u0015*\u00020\t\u00a8\u0006\u0017"
    }
    d2 = {
        "Lcom/kakaogame/web/protocol/CachedRequestUriHandler;",
        "Lcom/kakaogame/web/protocol/WebAppProtocolHandler;",
        "<init>",
        "()V",
        "handleInternal",
        "",
        "webView",
        "Landroid/webkit/WebView;",
        "webUri",
        "Landroid/net/Uri;",
        "returnCachedResult",
        "reqeustServer",
        "uri",
        "(Landroid/net/Uri;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "makeResponseString",
        "status",
        "",
        "desc",
        "content",
        "Lcom/kakaogame/util/json/JSONObject;",
        "isCached",
        "",
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
.field public static final Companion:Lcom/kakaogame/web/protocol/CachedRequestUriHandler$Companion;

.field private static final TAG:Ljava/lang/String; = "CachedRequestUriHandler"

.field private static final requestedUriCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/net/Uri;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/kakaogame/web/protocol/CachedRequestUriHandler$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/kakaogame/web/protocol/CachedRequestUriHandler$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/kakaogame/web/protocol/CachedRequestUriHandler;->Companion:Lcom/kakaogame/web/protocol/CachedRequestUriHandler$Companion;

    .line 1219
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    check-cast v0, Ljava/util/Map;

    sput-object v0, Lcom/kakaogame/web/protocol/CachedRequestUriHandler;->requestedUriCache:Ljava/util/Map;

    return-void

    .array-data 1
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    const v0, 0x6d028f28

    invoke-static {v0}, Lcom/liapp/y;->ٱڳܴڭܩ(I)Ljava/lang/String;

    move-result-object v0

    .line 229
    invoke-direct {p0, v0}, Lcom/kakaogame/web/protocol/WebAppProtocolHandler;-><init>(Ljava/lang/String;)V

    .line 1129
    invoke-virtual {p0}, Lcom/kakaogame/web/protocol/CachedRequestUriHandler;->setWebAppProtocolHandler()V

    return-void

    .array-data 1
    .end array-data
.end method

.method public static final synthetic access$getRequestedUriCache$cp()Ljava/util/Map;
    .locals 1

    .line 229
    sget-object v0, Lcom/kakaogame/web/protocol/CachedRequestUriHandler;->requestedUriCache:Ljava/util/Map;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public static final synthetic access$makeResponseString(Lcom/kakaogame/web/protocol/CachedRequestUriHandler;ILjava/lang/String;Lcom/kakaogame/util/json/JSONObject;)Ljava/lang/String;
    .locals 0

    .line 229
    invoke-direct {p0, p1, p2, p3}, Lcom/kakaogame/web/protocol/CachedRequestUriHandler;->makeResponseString(ILjava/lang/String;Lcom/kakaogame/util/json/JSONObject;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static final synthetic access$reqeustServer(Lcom/kakaogame/web/protocol/CachedRequestUriHandler;Landroid/net/Uri;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 229
    invoke-direct {p0, p1, p2, p3}, Lcom/kakaogame/web/protocol/CachedRequestUriHandler;->reqeustServer(Landroid/net/Uri;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method private final makeResponseString(ILjava/lang/String;Lcom/kakaogame/util/json/JSONObject;)Ljava/lang/String;
    .locals 3

    .line 1049
    new-instance v0, Lcom/kakaogame/util/json/JSONObject;

    invoke-direct {v0}, Lcom/kakaogame/util/json/JSONObject;-><init>()V

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 1059
    move-object v1, v0

    check-cast v1, Ljava/util/Map;

    const v2, 0x6d03b2f0

    invoke-static {v2}, Lcom/liapp/y;->ٱڳܴڭܩ(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "desc"

    .line 1069
    invoke-interface {v1, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "content"

    .line 1079
    invoke-interface {v1, p1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1089
    invoke-virtual {v0}, Lcom/kakaogame/util/json/JSONObject;->toJSONString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    nop

    .array-data 1
    .end array-data
.end method

.method private final reqeustServer(Landroid/net/Uri;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 609
    new-instance v1, Lkotlin/coroutines/SafeContinuation;

    invoke-static/range {p3 .. p3}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->intercepted(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v0

    invoke-direct {v1, v0}, Lkotlin/coroutines/SafeContinuation;-><init>(Lkotlin/coroutines/Continuation;)V

    move-object v6, v1

    check-cast v6, Lkotlin/coroutines/Continuation;

    .line 629
    :try_start_0
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    invoke-static {v0}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v0

    const/4 v8, 0x0

    const/4 v9, 0x0

    new-instance v10, Lcom/kakaogame/web/protocol/CachedRequestUriHandler$reqeustServer$2$1;

    const/4 v7, 0x0

    move-object v2, v10

    move-object v3, p2

    move-object v4, p1

    move-object v5, p0

    invoke-direct/range {v2 .. v7}, Lcom/kakaogame/web/protocol/CachedRequestUriHandler$reqeustServer$2$1;-><init>(Ljava/lang/String;Landroid/net/Uri;Lcom/kakaogame/web/protocol/CachedRequestUriHandler;Lkotlin/coroutines/Continuation;Lkotlin/coroutines/Continuation;)V

    check-cast v10, Lkotlin/jvm/functions/Function2;

    const/4 v11, 0x3

    const/4 v12, 0x0

    move-object v7, v0

    invoke-static/range {v7 .. v12}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;
    :try_end_0
    .catch Lcom/kakaogame/util/json/parser/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v4, p0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 989
    sget-object v2, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    invoke-virtual {v0}, Lcom/kakaogame/util/json/parser/ParseException;->toString()Ljava/lang/String;

    move-result-object v3

    check-cast v0, Ljava/lang/Throwable;

    const v4, -0x224c585c

    invoke-static {v4}, Lcom/liapp/y;->״دش۲ݮ(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4, v3, v0}, Lcom/kakaogame/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 999
    new-instance v0, Lcom/kakaogame/util/json/JSONObject;

    invoke-direct {v0}, Lcom/kakaogame/util/json/JSONObject;-><init>()V

    const/16 v2, 0xfa1

    const v3, 0x5d1ebad7

    invoke-static {v3}, Lcom/liapp/y;->ڴݮگ֮ت(I)Ljava/lang/String;

    move-result-object v3

    move-object v4, p0

    invoke-direct {p0, v2, v3, v0}, Lcom/kakaogame/web/protocol/CachedRequestUriHandler;->makeResponseString(ILjava/lang/String;Lcom/kakaogame/util/json/JSONObject;)Ljava/lang/String;

    .line 609
    :goto_0
    invoke-virtual {v1}, Lkotlin/coroutines/SafeContinuation;->getOrThrow()Ljava/lang/Object;

    move-result-object v0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    if-ne v0, v1, :cond_0

    invoke-static/range {p3 .. p3}, Lkotlin/coroutines/jvm/internal/DebugProbesKt;->probeCoroutineSuspended(Lkotlin/coroutines/Continuation;)V

    :cond_0
    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method private final returnCachedResult(Landroid/net/Uri;)Ljava/lang/String;
    .locals 8

    const v0, -0x45178337

    invoke-static {v0}, Lcom/liapp/y;->ڳݬ٬ۮݪ(I)Ljava/lang/String;

    move-result-object v0

    .line 399
    sget-object v1, Lcom/kakaogame/web/protocol/CachedRequestUriHandler;->requestedUriCache:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const/4 v3, 0x0

    .line 419
    :try_start_0
    invoke-static {v2}, Lcom/kakaogame/util/json/JSONValue;->parse(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    const-string v4, "null cannot be cast to non-null type com.kakaogame.util.json.JSONArray"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Lcom/kakaogame/util/json/JSONArray;

    const/4 v4, 0x0

    .line 429
    invoke-virtual {v2, v4}, Lcom/kakaogame/util/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Number;

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v4}, Ljava/lang/Number;->longValue()J

    move-result-wide v4

    .line 439
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v4

    .line 449
    sget-object v4, Lcom/kakaogame/infodesk/InfodeskHelper;->INSTANCE:Lcom/kakaogame/infodesk/InfodeskHelper;

    invoke-virtual {v4}, Lcom/kakaogame/infodesk/InfodeskHelper;->getCachedRequestTerm()J

    move-result-wide v4

    cmp-long v4, v6, v4

    if-gez v4, :cond_0

    const/4 v1, 0x1

    .line 459
    invoke-virtual {v2, v1}, Lcom/kakaogame/util/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 469
    sget-object v2, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    const-string v4, "CachedRequestUriHandler"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v4, v0}, Lcom/kakaogame/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object v3, v1

    goto :goto_0

    .line 509
    :cond_0
    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lcom/kakaogame/util/json/parser/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 559
    :catch_0
    sget-object v0, Lcom/kakaogame/web/protocol/CachedRequestUriHandler;->requestedUriCache:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-object v3

    nop

    .array-data 1
    .end array-data
.end method


# virtual methods
.method protected handleInternal(Landroid/webkit/WebView;Landroid/net/Uri;)Ljava/lang/String;
    .locals 5

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    const v1, -0x4518b62f

    invoke-static {v1}, Lcom/liapp/y;->ڳݬ٬ۮݪ(I)Ljava/lang/String;

    move-result-object v1

    .line 249
    invoke-virtual {p2, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v0

    .line 259
    :goto_0
    sget-object v2, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    const v4, 0x225be53e

    invoke-static {v4}, Lcom/liapp/y;->ֲֳگܱޭ(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const v4, -0x224c585c

    invoke-static {v4}, Lcom/liapp/y;->״دش۲ݮ(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4, v3}, Lcom/kakaogame/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const v2, 0x5435ac02

    invoke-static {v2}, Lcom/liapp/y;->׳ֳֳ֬د(I)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0xfa1

    if-nez p2, :cond_1

    .line 289
    new-instance p1, Lcom/kakaogame/util/json/JSONObject;

    invoke-direct {p1}, Lcom/kakaogame/util/json/JSONObject;-><init>()V

    invoke-direct {p0, v3, v2, p1}, Lcom/kakaogame/web/protocol/CachedRequestUriHandler;->makeResponseString(ILjava/lang/String;Lcom/kakaogame/util/json/JSONObject;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    if-nez v1, :cond_2

    .line 299
    new-instance p1, Lcom/kakaogame/util/json/JSONObject;

    invoke-direct {p1}, Lcom/kakaogame/util/json/JSONObject;-><init>()V

    invoke-direct {p0, v3, v2, p1}, Lcom/kakaogame/web/protocol/CachedRequestUriHandler;->makeResponseString(ILjava/lang/String;Lcom/kakaogame/util/json/JSONObject;)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    .line 309
    :cond_2
    invoke-virtual {p0, p2}, Lcom/kakaogame/web/protocol/CachedRequestUriHandler;->isCached(Landroid/net/Uri;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 319
    invoke-direct {p0, p2}, Lcom/kakaogame/web/protocol/CachedRequestUriHandler;->returnCachedResult(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_3

    .line 329
    invoke-virtual {p0, p1, p2}, Lcom/kakaogame/web/protocol/CachedRequestUriHandler;->handleInternal(Landroid/webkit/WebView;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_3
    move-object p1, v0

    goto :goto_1

    .line 349
    :cond_4
    new-instance p1, Lcom/kakaogame/web/protocol/CachedRequestUriHandler$handleInternal$1;

    invoke-direct {p1, p0, p2, v1, v0}, Lcom/kakaogame/web/protocol/CachedRequestUriHandler$handleInternal$1;-><init>(Lcom/kakaogame/web/protocol/CachedRequestUriHandler;Landroid/net/Uri;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlin/jvm/functions/Function2;

    const/4 p2, 0x1

    invoke-static {v0, p1, p2, v0}, Lkotlinx/coroutines/BuildersKt;->runBlocking$default(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    :goto_1
    return-object p1

    nop

    .array-data 1
    .end array-data
.end method

.method public final isCached(Landroid/net/Uri;)Z
    .locals 1

    const v0, 0x543e6e4a

    invoke-static {v0}, Lcom/liapp/y;->׳ֳֳ֬د(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1169
    sget-object v0, Lcom/kakaogame/web/protocol/CachedRequestUriHandler;->requestedUriCache:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1

    nop

    .array-data 1
    .end array-data
.end method
