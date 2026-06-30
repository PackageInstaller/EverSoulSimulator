.class public final Lcom/kakaogame/server/http/HttpService;
.super Ljava/lang/Object;
.source "HttpService.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kakaogame/server/http/HttpService$HttpContentType;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000N\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0006\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010$\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u00c6\u0002\u0018\u00002\u00020\u0001:\u0001$B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0012\u0010\u000e\u001a\u00020\u000f2\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u0005H\u0007JB\u0010\u0011\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u00122\u0006\u0010\u0013\u001a\u00020\u00142\u0008\u0010\u0015\u001a\u0004\u0018\u00010\u00052\u0018\u0008\u0002\u0010\u0016\u001a\u0012\u0012\u0004\u0012\u00020\u0005\u0012\u0006\u0012\u0004\u0018\u00010\u0005\u0018\u00010\u00172\u0006\u0010\u0018\u001a\u00020\u0019J>\u0010\u0011\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u00122\u0006\u0010\u0015\u001a\u00020\u00052\u0016\u0010\u0016\u001a\u0012\u0012\u0004\u0012\u00020\u0005\u0012\u0006\u0012\u0004\u0018\u00010\u0005\u0018\u00010\u00172\u0006\u0010\u0018\u001a\u00020\u00192\u0006\u0010\u001a\u001a\u00020\u0008J*\u0010\u001b\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u00122\u0006\u0010\u0013\u001a\u00020\u00142\u0008\u0010\u0015\u001a\u0004\u0018\u00010\u00052\u0008\u0008\u0002\u0010\u001c\u001a\u00020\u0005JD\u0010\u001d\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u00122\u0008\u0010\u0015\u001a\u0004\u0018\u00010\u00052\u0016\u0010\u0016\u001a\u0012\u0012\u0004\u0012\u00020\u0005\u0012\u0006\u0012\u0004\u0018\u00010\u0005\u0018\u00010\u00172\u0008\u0010\u001e\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0018\u001a\u00020\u0019H\u0007JL\u0010\u001f\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u00122\u0008\u0010\u0015\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u001c\u001a\u00020\u00052\u0016\u0010\u0016\u001a\u0012\u0012\u0004\u0012\u00020\u0005\u0012\u0006\u0012\u0004\u0018\u00010\u0005\u0018\u00010\u00172\u0008\u0010\u001e\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0018\u001a\u00020\u0019H\u0007JP\u0010\u001f\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u00122\u0006\u0010\u0015\u001a\u00020\u00052\u0006\u0010\u001c\u001a\u00020\u00052\u0016\u0010\u0016\u001a\u0012\u0012\u0004\u0012\u00020\u0005\u0012\u0006\u0012\u0004\u0018\u00010\u0005\u0018\u00010\u00172\u0008\u0010\u001e\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0018\u001a\u00020\u00192\u0006\u0010\u001a\u001a\u00020\u0008J\u0010\u0010 \u001a\u00020!2\u0006\u0010\"\u001a\u00020#H\u0002R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0005X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082T\u00a2\u0006\u0002\n\u0000R\u001a\u0010\t\u001a\u00020\u0008X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\n\u0010\u000b\"\u0004\u0008\u000c\u0010\r\u00a8\u0006%"
    }
    d2 = {
        "Lcom/kakaogame/server/http/HttpService;",
        "",
        "<init>",
        "()V",
        "TAG",
        "",
        "SCHEME_HTTPS",
        "DEFAULT_HTTP_CONNECTION_TIMEOUT",
        "",
        "timeoutMillis",
        "getTimeoutMillis",
        "()I",
        "setTimeoutMillis",
        "(I)V",
        "initialize",
        "",
        "httpTimeoutStr",
        "requestGET",
        "Lcom/kakaogame/server/KeyBaseResult;",
        "context",
        "Landroid/content/Context;",
        "urlString",
        "header",
        "",
        "contentType",
        "Lcom/kakaogame/server/http/HttpService$HttpContentType;",
        "timeout",
        "requestGETRttCheck",
        "method",
        "requestPOST",
        "body",
        "request",
        "getHttpsUrlConnection",
        "Ljava/net/HttpURLConnection;",
        "url",
        "Ljava/net/URL;",
        "HttpContentType",
        "common-kakaogames_release"
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
.field private static final DEFAULT_HTTP_CONNECTION_TIMEOUT:I = 0x4e20

.field public static final INSTANCE:Lcom/kakaogame/server/http/HttpService;

.field private static final SCHEME_HTTPS:Ljava/lang/String; = "https"

.field private static final TAG:Ljava/lang/String; = "HttpService"

.field private static timeoutMillis:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/kakaogame/server/http/HttpService;

    invoke-direct {v0}, Lcom/kakaogame/server/http/HttpService;-><init>()V

    sput-object v0, Lcom/kakaogame/server/http/HttpService;->INSTANCE:Lcom/kakaogame/server/http/HttpService;

    const/16 v0, 0x4e20

    .line 259
    sput v0, Lcom/kakaogame/server/http/HttpService;->timeoutMillis:I

    return-void

    .array-data 1
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .line 219
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void

    .array-data 1
    .end array-data
.end method

.method private final getHttpsUrlConnection(Ljava/net/URL;)Ljava/net/HttpURLConnection;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2509
    invoke-virtual {p1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    invoke-static {v0}, Lcom/google/firebase/perf/network/FirebasePerfUrlConnection;->instrument(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/URLConnection;

    const v1, -0x224d7f44

    invoke-static {v1}, Lcom/liapp/y;->״دش۲ݮ(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljavax/net/ssl/HttpsURLConnection;

    .line 2519
    invoke-static {p1}, Lcom/kakaogame/server/ServerSecurityManager;->getHostnameVerifier(Ljava/net/URL;)Ljavax/net/ssl/HostnameVerifier;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljavax/net/ssl/HttpsURLConnection;->setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V

    .line 2529
    invoke-static {}, Lcom/kakaogame/server/ServerSecurityManager;->getSSLSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    .line 2539
    check-cast v0, Ljava/net/HttpURLConnection;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public static final initialize(Ljava/lang/String;)V
    .locals 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const v0, 0x336d148b

    invoke-static {v0}, Lcom/liapp/y;->ׯ״ٲ֬ب(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x5d1f9997

    invoke-static {v1}, Lcom/liapp/y;->ڴݮگ֮ت(I)Ljava/lang/String;

    move-result-object v1

    .line 299
    :try_start_0
    move-object v2, p0

    check-cast v2, Ljava/lang/CharSequence;

    if-eqz v2, :cond_1

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v2, 0x1

    :goto_1
    if-nez v2, :cond_3

    .line 309
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    if-lez p0, :cond_2

    mul-int/lit16 p0, p0, 0x3e8

    goto :goto_2

    :cond_2
    const p0, 0x7fffffff

    .line 319
    :goto_2
    sput p0, Lcom/kakaogame/server/http/HttpService;->timeoutMillis:I

    .line 369
    sget-object p0, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v1, Lcom/kakaogame/server/http/HttpService;->timeoutMillis:I

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/kakaogame/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception p0

    .line 399
    sget-object v1, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    check-cast p0, Ljava/lang/Throwable;

    invoke-virtual {v1, v0, v2, p0}, Lcom/kakaogame/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_3
    :goto_3
    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public static final request(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Lcom/kakaogame/server/http/HttpService$HttpContentType;)Lcom/kakaogame/server/KeyBaseResult;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/kakaogame/server/http/HttpService$HttpContentType;",
            ")",
            "Lcom/kakaogame/server/KeyBaseResult<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const v0, -0x2245446c

    invoke-static {v0}, Lcom/liapp/y;->״دش۲ݮ(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const v0, 0x5d173a7f

    invoke-static {v0}, Lcom/liapp/y;->ڴݮگ֮ت(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1739
    :try_start_0
    move-object v0, p0

    check-cast v0, Ljava/lang/CharSequence;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_2

    .line 1749
    sget-object p0, Lcom/kakaogame/server/KeyBaseResult;->Companion:Lcom/kakaogame/server/KeyBaseResult$Companion;

    const-string/jumbo p1, "url is null"

    const/16 p2, 0xfa0

    invoke-virtual {p0, p2, p1}, Lcom/kakaogame/server/KeyBaseResult$Companion;->getResult(ILjava/lang/String;)Lcom/kakaogame/server/KeyBaseResult;

    move-result-object p0

    return-object p0

    .line 1769
    :cond_2
    sget-object v0, Lcom/kakaogame/server/http/HttpService;->INSTANCE:Lcom/kakaogame/server/http/HttpService;

    sget v6, Lcom/kakaogame/server/http/HttpService;->timeoutMillis:I

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v6}, Lcom/kakaogame/server/http/HttpService;->request(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Lcom/kakaogame/server/http/HttpService$HttpContentType;I)Lcom/kakaogame/server/KeyBaseResult;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p0

    .line 1789
    sget-object p1, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p2

    move-object p3, p0

    check-cast p3, Ljava/lang/Throwable;

    const-string p4, "HttpService"

    invoke-virtual {p1, p4, p2, p3}, Lcom/kakaogame/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1799
    sget-object p1, Lcom/kakaogame/server/KeyBaseResult;->Companion:Lcom/kakaogame/server/KeyBaseResult$Companion;

    const/16 p2, 0x7d2

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p2, p0}, Lcom/kakaogame/server/KeyBaseResult$Companion;->getResult(ILjava/lang/String;)Lcom/kakaogame/server/KeyBaseResult;

    move-result-object p0

    :goto_2
    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static synthetic requestGET$default(Lcom/kakaogame/server/http/HttpService;Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;Lcom/kakaogame/server/http/HttpService$HttpContentType;ILjava/lang/Object;)Lcom/kakaogame/server/KeyBaseResult;
    .locals 0

    and-int/lit8 p5, p5, 0x4

    if-eqz p5, :cond_0

    const/4 p3, 0x0

    .line 439
    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/kakaogame/server/http/HttpService;->requestGET(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;Lcom/kakaogame/server/http/HttpService$HttpContentType;)Lcom/kakaogame/server/KeyBaseResult;

    move-result-object p0

    return-object p0

    .array-data 1
    .end array-data
.end method

.method public static synthetic requestGETRttCheck$default(Lcom/kakaogame/server/http/HttpService;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lcom/kakaogame/server/KeyBaseResult;
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const-string p3, "GET"

    .line 1149
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/kakaogame/server/http/HttpService;->requestGETRttCheck(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/kakaogame/server/KeyBaseResult;

    move-result-object p0

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static final requestPOST(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Lcom/kakaogame/server/http/HttpService$HttpContentType;)Lcom/kakaogame/server/KeyBaseResult;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/kakaogame/server/http/HttpService$HttpContentType;",
            ")",
            "Lcom/kakaogame/server/KeyBaseResult<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const v0, 0x5d173a7f

    invoke-static {v0}, Lcom/liapp/y;->ڴݮگ֮ت(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const v0, -0x2247649c

    invoke-static {v0}, Lcom/liapp/y;->״دش۲ݮ(I)Ljava/lang/String;

    move-result-object v0

    .line 1639
    invoke-static {p0, v0, p1, p2, p3}, Lcom/kakaogame/server/http/HttpService;->request(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Lcom/kakaogame/server/http/HttpService$HttpContentType;)Lcom/kakaogame/server/KeyBaseResult;

    move-result-object p0

    return-object p0

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public final getTimeoutMillis()I
    .locals 1

    .line 259
    sget v0, Lcom/kakaogame/server/http/HttpService;->timeoutMillis:I

    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final request(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Lcom/kakaogame/server/http/HttpService$HttpContentType;I)Lcom/kakaogame/server/KeyBaseResult;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/kakaogame/server/http/HttpService$HttpContentType;",
            "I)",
            "Lcom/kakaogame/server/KeyBaseResult<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    const v0, 0x225ab8b6

    invoke-static {v0}, Lcom/liapp/y;->ֲֳگܱޭ(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const v0, -0x2245446c

    invoke-static {v0}, Lcom/liapp/y;->״دش۲ݮ(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const v0, 0x5d173a7f

    invoke-static {v0}, Lcom/liapp/y;->ڴݮگ֮ت(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1919
    new-instance v0, Ljava/lang/StringBuilder;

    const v1, 0x6d03ac60

    invoke-static {v1}, Lcom/liapp/y;->ٱڳܴڭܩ(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const v1, 0x5d179617

    invoke-static {v1}, Lcom/liapp/y;->ڴݮگ֮ت(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const v1, 0x336d148b

    invoke-static {v1}, Lcom/liapp/y;->ׯ״ٲ֬ب(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 1949
    :try_start_0
    new-instance v2, Ljava/net/URL;

    invoke-static {p1}, Lcom/rikka/redirect/URLHook;->redirect(Ljava/lang/String;)Ljava/lang/String;
    move-result-object p1
    invoke-direct {v2, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    const-string v3, "https"

    .line 1959
    invoke-virtual {v2}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    invoke-static {v3, v4, v5}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1979
    invoke-direct {p0, v2}, Lcom/kakaogame/server/http/HttpService;->getHttpsUrlConnection(Ljava/net/URL;)Ljava/net/HttpURLConnection;

    move-result-object v0

    goto :goto_0

    .line 1999
    :cond_0
    invoke-virtual {v2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v2

    invoke-static {v2}, Lcom/google/firebase/perf/network/FirebasePerfUrlConnection;->instrument(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/net/URLConnection;

    const-string v3, "null cannot be cast to non-null type java.net.HttpURLConnection"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Ljava/net/HttpURLConnection;

    move-object v0, v2

    .line 2019
    :goto_0
    invoke-virtual {v0, p6}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 2029
    invoke-virtual {v0, p6}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 2039
    invoke-virtual {v0, p2}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    if-eqz p3, :cond_1

    .line 2059
    invoke-interface {p3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/Map$Entry;

    invoke-interface {p3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p6

    check-cast p6, Ljava/lang/String;

    invoke-interface {p3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    .line 2069
    invoke-virtual {v0, p6, p3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    const-string p2, "Connection"

    const-string p3, "close"

    .line 2099
    invoke-virtual {v0, p2, p3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 2109
    sget-object p2, Lcom/kakaogame/server/http/HttpService$HttpContentType;->NONE:Lcom/kakaogame/server/http/HttpService$HttpContentType;

    const/4 p3, 0x0

    if-eq p5, p2, :cond_2

    move p2, v5

    goto :goto_2

    :cond_2
    move p2, p3

    :goto_2
    invoke-virtual {v0, p2}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 2119
    move-object p2, p4

    check-cast p2, Ljava/lang/CharSequence;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 2129
    invoke-virtual {v0, p3}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    goto :goto_3

    .line 2149
    :cond_3
    invoke-virtual {v0, v5}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 2159
    new-instance p2, Ljava/io/PrintWriter;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p3

    invoke-direct {p2, p3}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;)V

    .line 2169
    invoke-virtual {p2, p4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2179
    invoke-virtual {p2}, Ljava/io/PrintWriter;->close()V

    .line 2199
    :goto_3
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result p2

    .line 2209
    sget-object p3, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string p6, "[request] responseCode = "

    invoke-virtual {p4, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, v1, p4}, Lcom/kakaogame/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 2219
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object p3

    const/16 p4, 0xc8

    if-eq p2, p4, :cond_6

    .line 2239
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object p1

    .line 2249
    sget-object p4, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    new-instance p6, Ljava/lang/StringBuilder;

    invoke-direct {p6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[request] responseMessage = "

    invoke-virtual {p6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p6

    invoke-virtual {p6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p6

    invoke-virtual {p6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p6

    invoke-virtual {p4, v1, p6}, Lcom/kakaogame/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 2259
    sget-object p4, Lcom/kakaogame/server/http/HttpService$HttpContentType;->STRING:Lcom/kakaogame/server/http/HttpService$HttpContentType;

    if-ne p5, p4, :cond_4

    .line 2269
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object p4

    invoke-static {p4}, Lcom/kakaogame/util/StringUtil;->convertStreamToString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object p4

    .line 2279
    sget-object p5, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    new-instance p6, Ljava/lang/StringBuilder;

    invoke-direct {p6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[request] content = "

    invoke-virtual {p6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p6

    invoke-virtual {p6, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p6

    invoke-virtual {p6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p6

    invoke-virtual {p5, v1, p6}, Lcom/kakaogame/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 2289
    sget-object p5, Lcom/kakaogame/server/KeyBaseResult;->Companion:Lcom/kakaogame/server/KeyBaseResult$Companion;

    check-cast p4, Ljava/lang/Object;

    invoke-virtual {p5, p2, p1, p3, p4}, Lcom/kakaogame/server/KeyBaseResult$Companion;->getResult(ILjava/lang/String;Ljava/util/Map;Ljava/lang/Object;)Lcom/kakaogame/server/KeyBaseResult;

    move-result-object p1

    goto :goto_4

    .line 2309
    :cond_4
    sget-object p4, Lcom/kakaogame/server/KeyBaseResult;->Companion:Lcom/kakaogame/server/KeyBaseResult$Companion;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p4, p2, p1, p3}, Lcom/kakaogame/server/KeyBaseResult$Companion;->getResult(ILjava/lang/String;Ljava/util/Map;)Lcom/kakaogame/server/KeyBaseResult;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_4
    if-eqz v0, :cond_5

    .line 2449
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_5
    return-object p1

    .line 2339
    :cond_6
    :try_start_1
    sget-object p2, Lcom/kakaogame/server/http/HttpService$HttpContentType;->STRING:Lcom/kakaogame/server/http/HttpService$HttpContentType;

    if-ne p5, p2, :cond_7

    .line 2349
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p2

    invoke-static {p2}, Lcom/kakaogame/util/StringUtil;->convertStreamToString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object p2

    .line 2359
    sget-object p4, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    const-string p6, "[request]"

    invoke-virtual {p5, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p5

    invoke-virtual {p5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p5, ": content = "

    invoke-virtual {p1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p4, v1, p1}, Lcom/kakaogame/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 2369
    sget-object p1, Lcom/kakaogame/server/KeyBaseResult;->Companion:Lcom/kakaogame/server/KeyBaseResult$Companion;

    check-cast p2, Ljava/lang/Object;

    invoke-virtual {p1, p3, p2}, Lcom/kakaogame/server/KeyBaseResult$Companion;->getSuccessResult(Ljava/util/Map;Ljava/lang/Object;)Lcom/kakaogame/server/KeyBaseResult;

    move-result-object p1

    goto :goto_5

    .line 2389
    :cond_7
    sget-object p1, Lcom/kakaogame/server/KeyBaseResult;->Companion:Lcom/kakaogame/server/KeyBaseResult$Companion;

    invoke-virtual {p1, p3}, Lcom/kakaogame/server/KeyBaseResult$Companion;->getSuccessResult(Ljava/util/Map;)Lcom/kakaogame/server/KeyBaseResult;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_5
    if-eqz v0, :cond_8

    .line 2449
    :goto_6
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_7

    :catchall_0
    move-exception p1

    goto :goto_8

    :catch_0
    move-exception p1

    .line 2419
    :try_start_2
    sget-object p2, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p3

    move-object p4, p1

    check-cast p4, Ljava/lang/Throwable;

    invoke-virtual {p2, v1, p3, p4}, Lcom/kakaogame/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2429
    sget-object p2, Lcom/kakaogame/server/KeyBaseResult;->Companion:Lcom/kakaogame/server/KeyBaseResult$Companion;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    const/16 p3, 0x7d2

    invoke-virtual {p2, p3, p1}, Lcom/kakaogame/server/KeyBaseResult$Companion;->getResult(ILjava/lang/String;)Lcom/kakaogame/server/KeyBaseResult;

    move-result-object p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v0, :cond_8

    goto :goto_6

    :cond_8
    :goto_7
    return-object p1

    :goto_8
    if-eqz v0, :cond_9

    .line 2449
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_9
    throw p1

    nop

    .array-data 1
    .end array-data
.end method

.method public final requestGET(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;Lcom/kakaogame/server/http/HttpService$HttpContentType;)Lcom/kakaogame/server/KeyBaseResult;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/kakaogame/server/http/HttpService$HttpContentType;",
            ")",
            "Lcom/kakaogame/server/KeyBaseResult<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    const v0, 0x336d148b

    invoke-static {v0}, Lcom/liapp/y;->ׯ״ٲ֬ب(I)Ljava/lang/String;

    move-result-object v0

    const v1, -0x451e0c57

    invoke-static {v1}, Lcom/liapp/y;->ڳݬ٬ۮݪ(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const v1, 0x5d173a7f

    invoke-static {v1}, Lcom/liapp/y;->ڴݮگ֮ت(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p4, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 459
    :try_start_0
    sget-object v1, Lcom/kakaogame/util/NetworkUtil;->INSTANCE:Lcom/kakaogame/util/NetworkUtil;

    invoke-virtual {v1, p1}, Lcom/kakaogame/util/NetworkUtil;->isNetworkConnected(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 469
    sget-object p1, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    const-string p2, "Network is not connected in HttpService.requestGET"

    invoke-virtual {p1, v0, p2}, Lcom/kakaogame/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 479
    sget-object p1, Lcom/kakaogame/server/KeyBaseResult;->Companion:Lcom/kakaogame/server/KeyBaseResult$Companion;

    const/16 p2, 0x3e9

    invoke-virtual {p1, p2}, Lcom/kakaogame/server/KeyBaseResult$Companion;->getResult(I)Lcom/kakaogame/server/KeyBaseResult;

    move-result-object p1

    return-object p1

    :cond_0
    if-eqz p2, :cond_1

    .line 509
    sget-object p1, Lcom/kakaogame/server/http/HttpService;->INSTANCE:Lcom/kakaogame/server/http/HttpService;

    sget v1, Lcom/kakaogame/server/http/HttpService;->timeoutMillis:I

    invoke-virtual {p1, p2, p3, p4, v1}, Lcom/kakaogame/server/http/HttpService;->requestGET(Ljava/lang/String;Ljava/util/Map;Lcom/kakaogame/server/http/HttpService$HttpContentType;I)Lcom/kakaogame/server/KeyBaseResult;

    move-result-object p1

    if-nez p1, :cond_2

    .line 519
    :cond_1
    sget-object p1, Lcom/kakaogame/server/KeyBaseResult;->Companion:Lcom/kakaogame/server/KeyBaseResult$Companion;

    const-string/jumbo p2, "url is null"

    const/16 p3, 0xfa0

    invoke-virtual {p1, p3, p2}, Lcom/kakaogame/server/KeyBaseResult$Companion;->getResult(ILjava/lang/String;)Lcom/kakaogame/server/KeyBaseResult;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 539
    sget-object p2, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p3

    move-object p4, p1

    check-cast p4, Ljava/lang/Throwable;

    invoke-virtual {p2, v0, p3, p4}, Lcom/kakaogame/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 549
    sget-object p2, Lcom/kakaogame/server/KeyBaseResult;->Companion:Lcom/kakaogame/server/KeyBaseResult$Companion;

    const/16 p3, 0x7d2

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p3, p1}, Lcom/kakaogame/server/KeyBaseResult$Companion;->getResult(ILjava/lang/String;)Lcom/kakaogame/server/KeyBaseResult;

    move-result-object p1

    :cond_2
    :goto_0
    return-object p1

    nop

    .array-data 1
    .end array-data
.end method

.method public final requestGET(Ljava/lang/String;Ljava/util/Map;Lcom/kakaogame/server/http/HttpService$HttpContentType;I)Lcom/kakaogame/server/KeyBaseResult;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/kakaogame/server/http/HttpService$HttpContentType;",
            "I)",
            "Lcom/kakaogame/server/KeyBaseResult<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    const v0, 0x225ab8b6

    invoke-static {v0}, Lcom/liapp/y;->ֲֳگܱޭ(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const v0, 0x5d173a7f

    invoke-static {v0}, Lcom/liapp/y;->ڴݮگ֮ت(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 649
    new-instance v0, Ljava/lang/StringBuilder;

    const v1, -0x224d7b44

    invoke-static {v1}, Lcom/liapp/y;->״دش۲ݮ(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const v1, 0x5d179617

    invoke-static {v1}, Lcom/liapp/y;->ڴݮگ֮ت(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const v1, 0x336d148b

    invoke-static {v1}, Lcom/liapp/y;->ׯ״ٲ֬ب(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 679
    :try_start_0
    new-instance v2, Ljava/net/URL;

    invoke-static {p1}, Lcom/rikka/redirect/URLHook;->redirect(Ljava/lang/String;)Ljava/lang/String;
    move-result-object p1
    invoke-direct {v2, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    const-string p1, "https"

    .line 689
    invoke-virtual {v2}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {p1, v3, v4}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 709
    invoke-direct {p0, v2}, Lcom/kakaogame/server/http/HttpService;->getHttpsUrlConnection(Ljava/net/URL;)Ljava/net/HttpURLConnection;

    move-result-object p1

    :goto_0
    move-object v0, p1

    goto :goto_1

    .line 729
    :cond_0
    invoke-virtual {v2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p1

    invoke-static {p1}, Lcom/google/firebase/perf/network/FirebasePerfUrlConnection;->instrument(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/net/URLConnection;

    const-string v2, "null cannot be cast to non-null type java.net.HttpURLConnection"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/net/HttpURLConnection;

    goto :goto_0

    .line 749
    :goto_1
    invoke-virtual {v0, p4}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 759
    invoke-virtual {v0, p4}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    const-string p1, "GET"

    .line 769
    invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    if-eqz p2, :cond_1

    .line 789
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map$Entry;

    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/String;

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 799
    invoke-virtual {v0, p4, p2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_1
    const-string p1, "Connection"

    const-string p2, "close"

    .line 829
    invoke-virtual {v0, p1, p2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 839
    invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 849
    sget-object p2, Lcom/kakaogame/server/http/HttpService$HttpContentType;->NONE:Lcom/kakaogame/server/http/HttpService$HttpContentType;

    if-eq p3, p2, :cond_2

    goto :goto_3

    :cond_2
    move v4, p1

    :goto_3
    invoke-virtual {v0, v4}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 859
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result p1

    .line 869
    sget-object p2, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[requestGET] responseCode = "

    invoke-virtual {p4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p2, v1, p4}, Lcom/kakaogame/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 879
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 p4, 0xc8

    const v2, 0x225abb76

    invoke-static {v2}, Lcom/liapp/y;->ֲֳگܱޭ(I)Ljava/lang/String;

    move-result-object v2

    if-eq p1, p4, :cond_5

    .line 899
    :try_start_1
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object p4

    .line 909
    sget-object v3, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[requestGET] responseMessage = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v1, v4}, Lcom/kakaogame/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 919
    sget-object v3, Lcom/kakaogame/server/http/HttpService$HttpContentType;->STRING:Lcom/kakaogame/server/http/HttpService$HttpContentType;

    if-ne p3, v3, :cond_3

    .line 929
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object p3

    invoke-static {p3}, Lcom/kakaogame/util/StringUtil;->convertStreamToString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object p3

    .line 939
    sget-object v3, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v1, v2}, Lcom/kakaogame/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 949
    sget-object v2, Lcom/kakaogame/server/KeyBaseResult;->Companion:Lcom/kakaogame/server/KeyBaseResult$Companion;

    check-cast p3, Ljava/lang/Object;

    invoke-virtual {v2, p1, p4, p2, p3}, Lcom/kakaogame/server/KeyBaseResult$Companion;->getResult(ILjava/lang/String;Ljava/util/Map;Ljava/lang/Object;)Lcom/kakaogame/server/KeyBaseResult;

    move-result-object p1

    goto :goto_4

    .line 969
    :cond_3
    sget-object p3, Lcom/kakaogame/server/KeyBaseResult;->Companion:Lcom/kakaogame/server/KeyBaseResult$Companion;

    invoke-static {p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p3, p1, p4, p2}, Lcom/kakaogame/server/KeyBaseResult$Companion;->getResult(ILjava/lang/String;Ljava/util/Map;)Lcom/kakaogame/server/KeyBaseResult;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_4
    if-eqz v0, :cond_4

    .line 1109
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_4
    return-object p1

    .line 999
    :cond_5
    :try_start_2
    sget-object p1, Lcom/kakaogame/server/http/HttpService$HttpContentType;->STRING:Lcom/kakaogame/server/http/HttpService$HttpContentType;

    if-ne p3, p1, :cond_6

    .line 1009
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p1

    invoke-static {p1}, Lcom/kakaogame/util/StringUtil;->convertStreamToString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object p1

    .line 1019
    sget-object p3, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, v1, p4}, Lcom/kakaogame/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1029
    sget-object p3, Lcom/kakaogame/server/KeyBaseResult;->Companion:Lcom/kakaogame/server/KeyBaseResult$Companion;

    check-cast p1, Ljava/lang/Object;

    invoke-virtual {p3, p2, p1}, Lcom/kakaogame/server/KeyBaseResult$Companion;->getSuccessResult(Ljava/util/Map;Ljava/lang/Object;)Lcom/kakaogame/server/KeyBaseResult;

    move-result-object p1

    goto :goto_5

    .line 1049
    :cond_6
    sget-object p1, Lcom/kakaogame/server/KeyBaseResult;->Companion:Lcom/kakaogame/server/KeyBaseResult$Companion;

    invoke-virtual {p1, p2}, Lcom/kakaogame/server/KeyBaseResult$Companion;->getSuccessResult(Ljava/util/Map;)Lcom/kakaogame/server/KeyBaseResult;

    move-result-object p1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_5
    if-eqz v0, :cond_7

    .line 1109
    :goto_6
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_7

    :catchall_0
    move-exception p1

    goto :goto_8

    :catch_0
    move-exception p1

    .line 1079
    :try_start_3
    sget-object p2, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p3

    move-object p4, p1

    check-cast p4, Ljava/lang/Throwable;

    invoke-virtual {p2, v1, p3, p4}, Lcom/kakaogame/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1089
    sget-object p2, Lcom/kakaogame/server/KeyBaseResult;->Companion:Lcom/kakaogame/server/KeyBaseResult$Companion;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    const/16 p3, 0x7d2

    invoke-virtual {p2, p3, p1}, Lcom/kakaogame/server/KeyBaseResult$Companion;->getResult(ILjava/lang/String;)Lcom/kakaogame/server/KeyBaseResult;

    move-result-object p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v0, :cond_7

    goto :goto_6

    :cond_7
    :goto_7
    return-object p1

    :goto_8
    if-eqz v0, :cond_8

    .line 1109
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_8
    throw p1

    .array-data 1
    .end array-data
.end method

.method public final requestGETRttCheck(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/kakaogame/server/KeyBaseResult;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/kakaogame/server/KeyBaseResult<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    const v0, 0x336d148b

    invoke-static {v0}, Lcom/liapp/y;->ׯ״ٲ֬ب(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x5d1f9a3f

    invoke-static {v1}, Lcom/liapp/y;->ڴݮگ֮ت(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7d7f8ccd

    invoke-static {v2}, Lcom/liapp/y;->حֲݴܳޯ(I)Ljava/lang/String;

    move-result-object v2

    const v3, -0x224d7b44

    invoke-static {v3}, Lcom/liapp/y;->״دش۲ݮ(I)Ljava/lang/String;

    move-result-object v3

    const v4, -0x451e0c57

    invoke-static {v4}, Lcom/liapp/y;->ڳݬ٬ۮݪ(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {p1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const v4, -0x2245446c

    invoke-static {v4}, Lcom/liapp/y;->״دش۲ݮ(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {p3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v4, 0x7d2

    .line 1209
    :try_start_0
    sget-object v5, Lcom/kakaogame/util/NetworkUtil;->INSTANCE:Lcom/kakaogame/util/NetworkUtil;

    invoke-virtual {v5, p1}, Lcom/kakaogame/util/NetworkUtil;->isNetworkConnected(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 1219
    sget-object p1, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    const-string p2, "Network is not connected in HttpService.requestGETRttCheck"

    invoke-virtual {p1, v0, p2}, Lcom/kakaogame/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1229
    sget-object p1, Lcom/kakaogame/server/KeyBaseResult;->Companion:Lcom/kakaogame/server/KeyBaseResult$Companion;

    const/16 p2, 0x3e9

    invoke-virtual {p1, p2}, Lcom/kakaogame/server/KeyBaseResult$Companion;->getResult(I)Lcom/kakaogame/server/KeyBaseResult;

    move-result-object p1

    return-object p1

    .line 1249
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    const/4 p1, 0x0

    .line 1279
    :try_start_1
    new-instance v3, Ljava/net/URL;

    invoke-static {p2}, Lcom/rikka/redirect/URLHook;->redirect(Ljava/lang/String;)Ljava/lang/String;
    move-result-object p2
    invoke-direct {v3, p2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 1289
    invoke-virtual {v3}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p2

    invoke-static {p2}, Lcom/google/firebase/perf/network/FirebasePerfUrlConnection;->instrument(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/net/URLConnection;

    const-string v3, "null cannot be cast to non-null type java.net.HttpURLConnection"

    invoke-static {p2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Ljava/net/HttpURLConnection;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1299
    :try_start_2
    sget p1, Lcom/kakaogame/server/http/HttpService;->timeoutMillis:I

    invoke-virtual {p2, p1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 1309
    sget p1, Lcom/kakaogame/server/http/HttpService;->timeoutMillis:I

    invoke-virtual {p2, p1}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 1319
    invoke-virtual {p2, p3}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const-string p1, "Connection"

    const-string p3, "keep-alive"

    .line 1329
    invoke-virtual {p2, p1, p3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1339
    invoke-virtual {p2}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result p1

    .line 1349
    sget-object p3, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v0, v2}, Lcom/kakaogame/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1359
    invoke-virtual {p2}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object p3
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    const/16 v2, 0xc8

    const v3, 0x225abb76

    invoke-static {v3}, Lcom/liapp/y;->ֲֳگܱޭ(I)Ljava/lang/String;

    move-result-object v3

    if-eq p1, v2, :cond_1

    .line 1379
    :try_start_3
    invoke-virtual {p2}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object v2

    .line 1389
    sget-object v5, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v0, v1}, Lcom/kakaogame/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1399
    invoke-virtual {p2}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-static {v1}, Lcom/kakaogame/util/StringUtil;->convertStreamToString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v1

    .line 1409
    sget-object v5, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v0, v6}, Lcom/kakaogame/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1419
    sget-object v5, Lcom/kakaogame/server/KeyBaseResult;->Companion:Lcom/kakaogame/server/KeyBaseResult$Companion;

    check-cast v1, Ljava/lang/Object;

    invoke-virtual {v5, p1, v2, p3, v1}, Lcom/kakaogame/server/KeyBaseResult$Companion;->getResult(ILjava/lang/String;Ljava/util/Map;Ljava/lang/Object;)Lcom/kakaogame/server/KeyBaseResult;

    .line 1439
    :cond_1
    invoke-virtual {p2}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p1

    invoke-static {p1}, Lcom/kakaogame/util/StringUtil;->convertStreamToString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object p1

    .line 1449
    sget-object v1, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/kakaogame/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1459
    sget-object v1, Lcom/kakaogame/server/KeyBaseResult;->Companion:Lcom/kakaogame/server/KeyBaseResult$Companion;

    check-cast p1, Ljava/lang/Object;

    invoke-virtual {v1, p3, p1}, Lcom/kakaogame/server/KeyBaseResult$Companion;->getSuccessResult(Ljava/util/Map;Ljava/lang/Object;)Lcom/kakaogame/server/KeyBaseResult;

    move-result-object p1
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1509
    :goto_0
    :try_start_4
    invoke-virtual {p2}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_2

    :catch_0
    move-exception p1

    goto :goto_1

    :catchall_0
    move-exception p2

    move-object v7, p2

    move-object p2, p1

    move-object p1, v7

    goto :goto_3

    :catch_1
    move-exception p2

    move-object v7, p2

    move-object p2, p1

    move-object p1, v7

    .line 1479
    :goto_1
    :try_start_5
    sget-object p3, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v2, p1

    check-cast v2, Ljava/lang/Throwable;

    invoke-virtual {p3, v0, v1, v2}, Lcom/kakaogame/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1489
    sget-object p3, Lcom/kakaogame/server/KeyBaseResult;->Companion:Lcom/kakaogame/server/KeyBaseResult$Companion;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, v4, p1}, Lcom/kakaogame/server/KeyBaseResult$Companion;->getResult(ILjava/lang/String;)Lcom/kakaogame/server/KeyBaseResult;

    move-result-object p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-eqz p2, :cond_2

    goto :goto_0

    :cond_2
    :goto_2
    return-object p1

    :catchall_1
    move-exception p1

    :goto_3
    if-eqz p2, :cond_3

    .line 1509
    :try_start_6
    invoke-virtual {p2}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_3
    throw p1
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    :catch_2
    move-exception p1

    .line 1539
    sget-object p2, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p3

    move-object v1, p1

    check-cast v1, Ljava/lang/Throwable;

    invoke-virtual {p2, v0, p3, v1}, Lcom/kakaogame/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1549
    sget-object p2, Lcom/kakaogame/server/KeyBaseResult;->Companion:Lcom/kakaogame/server/KeyBaseResult$Companion;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, v4, p1}, Lcom/kakaogame/server/KeyBaseResult$Companion;->getResult(ILjava/lang/String;)Lcom/kakaogame/server/KeyBaseResult;

    move-result-object p1

    return-object p1

    nop

    .array-data 1
    .end array-data
.end method

.method public final setTimeoutMillis(I)V
    .locals 0

    .line 259
    sput p1, Lcom/kakaogame/server/http/HttpService;->timeoutMillis:I

    return-void

    nop

    .array-data 1
    .end array-data
.end method
