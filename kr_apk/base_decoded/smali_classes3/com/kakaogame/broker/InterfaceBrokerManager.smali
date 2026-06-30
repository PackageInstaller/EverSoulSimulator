.class public final Lcom/kakaogame/broker/InterfaceBrokerManager;
.super Ljava/lang/Object;
.source "InterfaceBrokerManager.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000<\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010$\n\u0002\u0008\u0013\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0008\u0010\u000c\u001a\u00020\rH\u0002J\u0008\u0010\u000e\u001a\u00020\rH\u0002J\u001a\u0010\u000f\u001a\u00020\u00052\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u00112\u0006\u0010\u0012\u001a\u00020\u0005H\u0007J\u0018\u0010\u0013\u001a\u00020\r2\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u0005H\u0007J&\u0010\u0014\u001a\u00020\r2\u0006\u0010\u0015\u001a\u00020\u00052\u0016\u0010\u0016\u001a\u0012\u0012\u0004\u0012\u00020\u0005\u0012\u0006\u0012\u0004\u0018\u00010\u0001\u0018\u00010\u0017J\u001a\u0010\u0018\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0019\u001a\u00020\u0005H\u0002J\u0018\u0010\u001a\u001a\u00020\r2\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0019\u001a\u00020\u0005H\u0002J\u0018\u0010\u001b\u001a\u00020\r2\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u0005H\u0002J\u0010\u0010\u001c\u001a\u00020\r2\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\u001d\u001a\u00020\r2\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u0005J\u0008\u0010\u001e\u001a\u00020\rH\u0007J\u0008\u0010\u001f\u001a\u00020\rH\u0007J\u0010\u0010 \u001a\u00020\r2\u0006\u0010!\u001a\u00020\u0005H\u0007J\u0010\u0010\"\u001a\u00020\r2\u0006\u0010!\u001a\u00020\u0005H\u0007J\u0008\u0010#\u001a\u00020\rH\u0002J\u0008\u0010$\u001a\u00020\rH\u0002J\u0008\u0010%\u001a\u00020\rH\u0002J\u0008\u0010&\u001a\u00020\rH\u0002J\u0008\u0010\'\u001a\u00020\rH\u0002J\u0008\u0010(\u001a\u00020\rH\u0002J\u0008\u0010)\u001a\u00020\rH\u0002R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\tX\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082T\u00a2\u0006\u0002\n\u0000\u00a8\u0006*"
    }
    d2 = {
        "Lcom/kakaogame/broker/InterfaceBrokerManager;",
        "",
        "<init>",
        "()V",
        "TAG",
        "",
        "requestIdGenerator",
        "Ljava/util/Random;",
        "useBase64Response",
        "",
        "MAX_RESPONSE_SIZE",
        "",
        "initialize",
        "",
        "setEngine",
        "requestSync",
        "activity",
        "Landroid/app/Activity;",
        "requestString",
        "requestAsync",
        "sendMessage",
        "requestUri",
        "content",
        "",
        "getResponseFilePath",
        "responseString",
        "sendResponse",
        "handleRequestInternal",
        "requestToUnity",
        "requestToUnreal",
        "takeScreenShotOnUnity",
        "takeScreenShotOnUnreal",
        "showCustomAlertViewOnUnity",
        "requestBody",
        "showCustomAlertViewOnUnreal",
        "initInternalAPIs",
        "initSessionAPIs",
        "initSessionForCustomUIAPIs",
        "initApplicationAPIs",
        "initSystemAPIs",
        "initNotis",
        "initAgreementAPI",
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
.field public static final INSTANCE:Lcom/kakaogame/broker/InterfaceBrokerManager;

.field private static final MAX_RESPONSE_SIZE:I = 0x493e0

.field private static final TAG:Ljava/lang/String; = "InterfaceBrokerManager"

.field private static final requestIdGenerator:Ljava/util/Random;

.field private static final useBase64Response:Z = true


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/kakaogame/broker/InterfaceBrokerManager;

    invoke-direct {v0}, Lcom/kakaogame/broker/InterfaceBrokerManager;-><init>()V

    sput-object v0, Lcom/kakaogame/broker/InterfaceBrokerManager;->INSTANCE:Lcom/kakaogame/broker/InterfaceBrokerManager;

    .line 499
    new-instance v1, Ljava/util/Random;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/util/Random;-><init>(J)V

    sput-object v1, Lcom/kakaogame/broker/InterfaceBrokerManager;->requestIdGenerator:Ljava/util/Random;

    .line 13149
    invoke-direct {v0}, Lcom/kakaogame/broker/InterfaceBrokerManager;->initialize()V

    return-void

    .array-data 1
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .line 479
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void

    .array-data 1
    .end array-data
.end method

.method public static final synthetic access$handleRequestInternal(Lcom/kakaogame/broker/InterfaceBrokerManager;Landroid/app/Activity;Ljava/lang/String;)V
    .locals 0

    .line 479
    invoke-direct {p0, p1, p2}, Lcom/kakaogame/broker/InterfaceBrokerManager;->handleRequestInternal(Landroid/app/Activity;Ljava/lang/String;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method private final getResponseFilePath(Landroid/app/Activity;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 1479
    :try_start_0
    invoke-static {p2}, Lcom/kakaogame/util/Base64Util;->getBase64encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 1489
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/kakaogame/core/CoreManager;->Companion:Lcom/kakaogame/core/CoreManager$Companion;

    invoke-virtual {v1}, Lcom/kakaogame/core/CoreManager$Companion;->getInstance()Lcom/kakaogame/core/CoreManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/kakaogame/core/CoreManager;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/kakaogame/util/DateUtil;->convertLongToFormattedString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".tmp"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1499
    check-cast p1, Landroid/content/Context;

    const-string v1, "KGTransData"

    invoke-static {p1, v1, v0, p2}, Lcom/kakaogame/util/FileUtil;->writeTmpFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1519
    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p2

    check-cast p1, Ljava/lang/Throwable;

    const v0, 0x33618383

    invoke-static {v0}, Lcom/liapp/y;->ׯ״ٲ֬ب(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const-string p1, "ERROR OCCURRED"

    :goto_0
    return-object p1

    .array-data 1
    .end array-data
.end method

.method private final handleRequestInternal(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 7

    .line 2109
    sget-object v0, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const v2, 0x336192cb

    invoke-static {v2}, Lcom/liapp/y;->ׯ״ٲ֬ب(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const v2, 0x33618383

    invoke-static {v2}, Lcom/liapp/y;->ׯ״ٲ֬ب(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lcom/kakaogame/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 2129
    :try_start_0
    sget-object v0, Lcom/kakaogame/server/ServerResponse;->Companion:Lcom/kakaogame/server/ServerResponse$Companion;

    invoke-virtual {v0, p2}, Lcom/kakaogame/server/ServerResponse$Companion;->getResponse(Ljava/lang/String;)Lcom/kakaogame/server/ServerResponse;

    move-result-object p2

    .line 2139
    invoke-virtual {p2}, Lcom/kakaogame/server/ServerResponse;->getRequestUri()Ljava/lang/String;

    move-result-object v0

    .line 2149
    invoke-virtual {p2}, Lcom/kakaogame/server/ServerResponse;->getTransactionNo()I

    move-result v1

    .line 2159
    invoke-virtual {p2}, Lcom/kakaogame/server/ServerResponse;->getBody()Lcom/kakaogame/util/json/JSONObject;

    move-result-object p2

    .line 2169
    new-instance v3, Lcom/kakaogame/util/json/JSONArray;

    invoke-direct {v3}, Lcom/kakaogame/util/json/JSONArray;-><init>()V

    .line 2179
    invoke-virtual {v3, v0}, Lcom/kakaogame/util/json/JSONArray;->add(Ljava/lang/Object;)Z

    .line 2189
    invoke-virtual {v3, p2}, Lcom/kakaogame/util/json/JSONArray;->add(Ljava/lang/Object;)Z

    .line 2199
    sget-object p2, Lcom/kakaogame/broker/InterfaceBrokerHandler;->INSTANCE:Lcom/kakaogame/broker/InterfaceBrokerHandler;

    invoke-virtual {v3}, Lcom/kakaogame/util/json/JSONArray;->toJSONString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, p1, v3}, Lcom/kakaogame/broker/InterfaceBrokerHandler;->request(Landroid/app/Activity;Ljava/lang/String;)Lcom/kakaogame/KGResult;

    move-result-object p2

    .line 2209
    new-instance v3, Lcom/kakaogame/util/json/JSONObject;

    invoke-direct {v3}, Lcom/kakaogame/util/json/JSONObject;-><init>()V

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 2219
    move-object v4, v3

    check-cast v4, Ljava/util/Map;

    const-string/jumbo v5, "txNo"

    invoke-interface {v4, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2229
    new-instance v1, Lcom/kakaogame/util/json/JSONObject;

    invoke-direct {v1}, Lcom/kakaogame/util/json/JSONObject;-><init>()V

    .line 2239
    move-object v4, v1

    check-cast v4, Ljava/util/Map;

    const-string v5, "status"

    invoke-virtual {p2}, Lcom/kakaogame/KGResult;->getCode()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2249
    move-object v4, v1

    check-cast v4, Ljava/util/Map;

    const-string v5, "desc"

    invoke-virtual {p2}, Lcom/kakaogame/KGResult;->getDescription()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2259
    invoke-virtual {p2}, Lcom/kakaogame/KGResult;->getContent()Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 2269
    invoke-virtual {p2}, Lcom/kakaogame/KGResult;->getContent()Ljava/lang/Object;

    move-result-object v4

    instance-of v4, v4, Ljava/util/Map;

    if-eqz v4, :cond_0

    .line 2279
    move-object v4, v1

    check-cast v4, Ljava/util/Map;

    const-string v5, "content"

    invoke-virtual {p2}, Lcom/kakaogame/KGResult;->getContent()Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2309
    :cond_0
    move-object v4, v1

    check-cast v4, Ljava/util/Map;

    const-string v5, "message"

    invoke-virtual {p2}, Lcom/kakaogame/KGResult;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-interface {v4, v5, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2319
    new-instance p2, Lcom/kakaogame/util/json/JSONArray;

    invoke-direct {p2}, Lcom/kakaogame/util/json/JSONArray;-><init>()V

    .line 2329
    invoke-virtual {p2, v0}, Lcom/kakaogame/util/json/JSONArray;->add(Ljava/lang/Object;)Z

    .line 2339
    invoke-virtual {p2, v3}, Lcom/kakaogame/util/json/JSONArray;->add(Ljava/lang/Object;)Z

    .line 2349
    invoke-virtual {p2, v1}, Lcom/kakaogame/util/json/JSONArray;->add(Ljava/lang/Object;)Z

    .line 2359
    invoke-virtual {p2}, Lcom/kakaogame/util/json/JSONArray;->toJSONString()Ljava/lang/String;

    move-result-object p2

    .line 2369
    invoke-direct {p0, p1, p2}, Lcom/kakaogame/broker/InterfaceBrokerManager;->sendResponse(Landroid/app/Activity;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 2389
    sget-object p2, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p2, v2, v0, p1}, Lcom/kakaogame/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method private final initAgreementAPI()V
    .locals 2

    .line 12959
    new-instance v0, Lcom/kakaogame/broker/InterfaceBrokerManager$initAgreementAPI$1;

    invoke-direct {v0}, Lcom/kakaogame/broker/InterfaceBrokerManager$initAgreementAPI$1;-><init>()V

    check-cast v0, Lcom/kakaogame/broker/InterfaceBrokerHandler$InterfaceBroker;

    const v1, -0x2241ff84

    invoke-static {v1}, Lcom/liapp/y;->״دش۲ݮ(I)Ljava/lang/String;

    move-result-object v1

    .line 12949
    invoke-static {v1, v0}, Lcom/kakaogame/broker/InterfaceBrokerHandler;->registerInterfaceBroker(Ljava/lang/String;Lcom/kakaogame/broker/InterfaceBrokerHandler$InterfaceBroker;)V

    .line 13039
    new-instance v0, Lcom/kakaogame/broker/InterfaceBrokerManager$initAgreementAPI$2;

    invoke-direct {v0}, Lcom/kakaogame/broker/InterfaceBrokerManager$initAgreementAPI$2;-><init>()V

    check-cast v0, Lcom/kakaogame/broker/InterfaceBrokerHandler$InterfaceBroker;

    const v1, 0x6d0f2a38

    invoke-static {v1}, Lcom/liapp/y;->ٱڳܴڭܩ(I)Ljava/lang/String;

    move-result-object v1

    .line 13029
    invoke-static {v1, v0}, Lcom/kakaogame/broker/InterfaceBrokerHandler;->registerInterfaceBroker(Ljava/lang/String;Lcom/kakaogame/broker/InterfaceBrokerHandler$InterfaceBroker;)V

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method private final initApplicationAPIs()V
    .locals 2

    .line 10149
    new-instance v0, Lcom/kakaogame/broker/InterfaceBrokerManager$initApplicationAPIs$1;

    invoke-direct {v0}, Lcom/kakaogame/broker/InterfaceBrokerManager$initApplicationAPIs$1;-><init>()V

    check-cast v0, Lcom/kakaogame/broker/InterfaceBrokerHandler$InterfaceBroker;

    const v1, 0x7d73305d

    invoke-static {v1}, Lcom/liapp/y;->حֲݴܳޯ(I)Ljava/lang/String;

    move-result-object v1

    .line 10139
    invoke-static {v1, v0}, Lcom/kakaogame/broker/InterfaceBrokerHandler;->registerInterfaceBroker(Ljava/lang/String;Lcom/kakaogame/broker/InterfaceBrokerHandler$InterfaceBroker;)V

    .line 10279
    new-instance v0, Lcom/kakaogame/broker/InterfaceBrokerManager$initApplicationAPIs$2;

    invoke-direct {v0}, Lcom/kakaogame/broker/InterfaceBrokerManager$initApplicationAPIs$2;-><init>()V

    check-cast v0, Lcom/kakaogame/broker/InterfaceBrokerHandler$InterfaceBroker;

    const v1, 0x5d131b4f

    invoke-static {v1}, Lcom/liapp/y;->ڴݮگ֮ت(I)Ljava/lang/String;

    move-result-object v1

    .line 10269
    invoke-static {v1, v0}, Lcom/kakaogame/broker/InterfaceBrokerHandler;->registerInterfaceBroker(Ljava/lang/String;Lcom/kakaogame/broker/InterfaceBrokerHandler$InterfaceBroker;)V

    .line 10409
    new-instance v0, Lcom/kakaogame/broker/InterfaceBrokerManager$initApplicationAPIs$3;

    invoke-direct {v0}, Lcom/kakaogame/broker/InterfaceBrokerManager$initApplicationAPIs$3;-><init>()V

    check-cast v0, Lcom/kakaogame/broker/InterfaceBrokerHandler$InterfaceBroker;

    const v1, 0x6d0f2e80

    invoke-static {v1}, Lcom/liapp/y;->ٱڳܴڭܩ(I)Ljava/lang/String;

    move-result-object v1

    .line 10399
    invoke-static {v1, v0}, Lcom/kakaogame/broker/InterfaceBrokerHandler;->registerInterfaceBroker(Ljava/lang/String;Lcom/kakaogame/broker/InterfaceBrokerHandler$InterfaceBroker;)V

    .line 10539
    new-instance v0, Lcom/kakaogame/broker/InterfaceBrokerManager$initApplicationAPIs$4;

    invoke-direct {v0}, Lcom/kakaogame/broker/InterfaceBrokerManager$initApplicationAPIs$4;-><init>()V

    check-cast v0, Lcom/kakaogame/broker/InterfaceBrokerHandler$InterfaceBroker;

    const v1, 0x6d0f1158

    invoke-static {v1}, Lcom/liapp/y;->ٱڳܴڭܩ(I)Ljava/lang/String;

    move-result-object v1

    .line 10529
    invoke-static {v1, v0}, Lcom/kakaogame/broker/InterfaceBrokerHandler;->registerInterfaceBroker(Ljava/lang/String;Lcom/kakaogame/broker/InterfaceBrokerHandler$InterfaceBroker;)V

    .line 10669
    new-instance v0, Lcom/kakaogame/broker/InterfaceBrokerManager$initApplicationAPIs$5;

    invoke-direct {v0}, Lcom/kakaogame/broker/InterfaceBrokerManager$initApplicationAPIs$5;-><init>()V

    check-cast v0, Lcom/kakaogame/broker/InterfaceBrokerHandler$InterfaceBroker;

    const v1, 0x3361a963

    invoke-static {v1}, Lcom/liapp/y;->ׯ״ٲ֬ب(I)Ljava/lang/String;

    move-result-object v1

    .line 10659
    invoke-static {v1, v0}, Lcom/kakaogame/broker/InterfaceBrokerHandler;->registerInterfaceBroker(Ljava/lang/String;Lcom/kakaogame/broker/InterfaceBrokerHandler$InterfaceBroker;)V

    .line 11059
    new-instance v0, Lcom/kakaogame/broker/InterfaceBrokerManager$initApplicationAPIs$6;

    invoke-direct {v0}, Lcom/kakaogame/broker/InterfaceBrokerManager$initApplicationAPIs$6;-><init>()V

    check-cast v0, Lcom/kakaogame/broker/InterfaceBrokerHandler$InterfaceBroker;

    const v1, -0x2241c6f4

    invoke-static {v1}, Lcom/liapp/y;->״دش۲ݮ(I)Ljava/lang/String;

    move-result-object v1

    .line 11049
    invoke-static {v1, v0}, Lcom/kakaogame/broker/InterfaceBrokerHandler;->registerInterfaceBroker(Ljava/lang/String;Lcom/kakaogame/broker/InterfaceBrokerHandler$InterfaceBroker;)V

    .line 11139
    new-instance v0, Lcom/kakaogame/broker/InterfaceBrokerManager$initApplicationAPIs$7;

    invoke-direct {v0}, Lcom/kakaogame/broker/InterfaceBrokerManager$initApplicationAPIs$7;-><init>()V

    check-cast v0, Lcom/kakaogame/broker/InterfaceBrokerHandler$InterfaceBroker;

    const v1, 0x225600d6

    invoke-static {v1}, Lcom/liapp/y;->ֲֳگܱޭ(I)Ljava/lang/String;

    move-result-object v1

    .line 11129
    invoke-static {v1, v0}, Lcom/kakaogame/broker/InterfaceBrokerHandler;->registerInterfaceBroker(Ljava/lang/String;Lcom/kakaogame/broker/InterfaceBrokerHandler$InterfaceBroker;)V

    .line 11209
    new-instance v0, Lcom/kakaogame/broker/InterfaceBrokerManager$initApplicationAPIs$8;

    invoke-direct {v0}, Lcom/kakaogame/broker/InterfaceBrokerManager$initApplicationAPIs$8;-><init>()V

    check-cast v0, Lcom/kakaogame/broker/InterfaceBrokerHandler$InterfaceBroker;

    const v1, -0x2241c35c

    invoke-static {v1}, Lcom/liapp/y;->״دش۲ݮ(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/kakaogame/broker/InterfaceBrokerHandler;->registerInterfaceBroker(Ljava/lang/String;Lcom/kakaogame/broker/InterfaceBrokerHandler$InterfaceBroker;)V

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method private final initInternalAPIs()V
    .locals 2

    .line 3519
    new-instance v0, Lcom/kakaogame/broker/InterfaceBrokerManager$initInternalAPIs$1;

    invoke-direct {v0}, Lcom/kakaogame/broker/InterfaceBrokerManager$initInternalAPIs$1;-><init>()V

    check-cast v0, Lcom/kakaogame/broker/InterfaceBrokerHandler$InterfaceBroker;

    const v1, 0x7d730b0d

    invoke-static {v1}, Lcom/liapp/y;->حֲݴܳޯ(I)Ljava/lang/String;

    move-result-object v1

    .line 3509
    invoke-static {v1, v0}, Lcom/kakaogame/broker/InterfaceBrokerHandler;->registerInterfaceBroker(Ljava/lang/String;Lcom/kakaogame/broker/InterfaceBrokerHandler$InterfaceBroker;)V

    .line 3609
    new-instance v0, Lcom/kakaogame/broker/InterfaceBrokerManager$initInternalAPIs$2;

    invoke-direct {v0}, Lcom/kakaogame/broker/InterfaceBrokerManager$initInternalAPIs$2;-><init>()V

    check-cast v0, Lcom/kakaogame/broker/InterfaceBrokerHandler$InterfaceBroker;

    const v1, 0x7d730475

    invoke-static {v1}, Lcom/liapp/y;->حֲݴܳޯ(I)Ljava/lang/String;

    move-result-object v1

    .line 3599
    invoke-static {v1, v0}, Lcom/kakaogame/broker/InterfaceBrokerHandler;->registerInterfaceBroker(Ljava/lang/String;Lcom/kakaogame/broker/InterfaceBrokerHandler$InterfaceBroker;)V

    .line 3719
    new-instance v0, Lcom/kakaogame/broker/InterfaceBrokerManager$initInternalAPIs$3;

    invoke-direct {v0}, Lcom/kakaogame/broker/InterfaceBrokerManager$initInternalAPIs$3;-><init>()V

    check-cast v0, Lcom/kakaogame/broker/InterfaceBrokerHandler$InterfaceBroker;

    const v1, 0x543a075a

    invoke-static {v1}, Lcom/liapp/y;->׳ֳֳ֬د(I)Ljava/lang/String;

    move-result-object v1

    .line 3709
    invoke-static {v1, v0}, Lcom/kakaogame/broker/InterfaceBrokerHandler;->registerInterfaceBroker(Ljava/lang/String;Lcom/kakaogame/broker/InterfaceBrokerHandler$InterfaceBroker;)V

    .line 3799
    new-instance v0, Lcom/kakaogame/broker/InterfaceBrokerManager$initInternalAPIs$4;

    invoke-direct {v0}, Lcom/kakaogame/broker/InterfaceBrokerManager$initInternalAPIs$4;-><init>()V

    check-cast v0, Lcom/kakaogame/broker/InterfaceBrokerHandler$InterfaceBroker;

    const v1, 0x543a058a

    invoke-static {v1}, Lcom/liapp/y;->׳ֳֳ֬د(I)Ljava/lang/String;

    move-result-object v1

    .line 3789
    invoke-static {v1, v0}, Lcom/kakaogame/broker/InterfaceBrokerHandler;->registerInterfaceBroker(Ljava/lang/String;Lcom/kakaogame/broker/InterfaceBrokerHandler$InterfaceBroker;)V

    .line 3959
    new-instance v0, Lcom/kakaogame/broker/InterfaceBrokerManager$initInternalAPIs$5;

    invoke-direct {v0}, Lcom/kakaogame/broker/InterfaceBrokerManager$initInternalAPIs$5;-><init>()V

    check-cast v0, Lcom/kakaogame/broker/InterfaceBrokerHandler$InterfaceBroker;

    const v1, 0x7d7300cd

    invoke-static {v1}, Lcom/liapp/y;->حֲݴܳޯ(I)Ljava/lang/String;

    move-result-object v1

    .line 3949
    invoke-static {v1, v0}, Lcom/kakaogame/broker/InterfaceBrokerHandler;->registerInterfaceBroker(Ljava/lang/String;Lcom/kakaogame/broker/InterfaceBrokerHandler$InterfaceBroker;)V

    .line 4149
    new-instance v0, Lcom/kakaogame/broker/InterfaceBrokerManager$initInternalAPIs$6;

    invoke-direct {v0}, Lcom/kakaogame/broker/InterfaceBrokerManager$initInternalAPIs$6;-><init>()V

    check-cast v0, Lcom/kakaogame/broker/InterfaceBrokerHandler$InterfaceBroker;

    const v1, 0x7d73013d

    invoke-static {v1}, Lcom/liapp/y;->حֲݴܳޯ(I)Ljava/lang/String;

    move-result-object v1

    .line 4139
    invoke-static {v1, v0}, Lcom/kakaogame/broker/InterfaceBrokerHandler;->registerInterfaceBroker(Ljava/lang/String;Lcom/kakaogame/broker/InterfaceBrokerHandler$InterfaceBroker;)V

    .line 4319
    new-instance v0, Lcom/kakaogame/broker/InterfaceBrokerManager$initInternalAPIs$7;

    invoke-direct {v0}, Lcom/kakaogame/broker/InterfaceBrokerManager$initInternalAPIs$7;-><init>()V

    check-cast v0, Lcom/kakaogame/broker/InterfaceBrokerHandler$InterfaceBroker;

    const v1, 0x5d132bdf

    invoke-static {v1}, Lcom/liapp/y;->ڴݮگ֮ت(I)Ljava/lang/String;

    move-result-object v1

    .line 4309
    invoke-static {v1, v0}, Lcom/kakaogame/broker/InterfaceBrokerHandler;->registerInterfaceBroker(Ljava/lang/String;Lcom/kakaogame/broker/InterfaceBrokerHandler$InterfaceBroker;)V

    .line 4419
    new-instance v0, Lcom/kakaogame/broker/InterfaceBrokerManager$initInternalAPIs$8;

    invoke-direct {v0}, Lcom/kakaogame/broker/InterfaceBrokerManager$initInternalAPIs$8;-><init>()V

    check-cast v0, Lcom/kakaogame/broker/InterfaceBrokerHandler$InterfaceBroker;

    const v1, 0x7d730315

    invoke-static {v1}, Lcom/liapp/y;->حֲݴܳޯ(I)Ljava/lang/String;

    move-result-object v1

    .line 4409
    invoke-static {v1, v0}, Lcom/kakaogame/broker/InterfaceBrokerHandler;->registerInterfaceBroker(Ljava/lang/String;Lcom/kakaogame/broker/InterfaceBrokerHandler$InterfaceBroker;)V

    .line 4509
    new-instance v0, Lcom/kakaogame/broker/InterfaceBrokerManager$initInternalAPIs$9;

    invoke-direct {v0}, Lcom/kakaogame/broker/InterfaceBrokerManager$initInternalAPIs$9;-><init>()V

    check-cast v0, Lcom/kakaogame/broker/InterfaceBrokerHandler$InterfaceBroker;

    const v1, 0x3361b85b

    invoke-static {v1}, Lcom/liapp/y;->ׯ״ٲ֬ب(I)Ljava/lang/String;

    move-result-object v1

    .line 4499
    invoke-static {v1, v0}, Lcom/kakaogame/broker/InterfaceBrokerHandler;->registerInterfaceBroker(Ljava/lang/String;Lcom/kakaogame/broker/InterfaceBrokerHandler$InterfaceBroker;)V

    .line 4599
    new-instance v0, Lcom/kakaogame/broker/InterfaceBrokerManager$initInternalAPIs$10;

    invoke-direct {v0}, Lcom/kakaogame/broker/InterfaceBrokerManager$initInternalAPIs$10;-><init>()V

    check-cast v0, Lcom/kakaogame/broker/InterfaceBrokerHandler$InterfaceBroker;

    const v1, 0x5d13342f

    invoke-static {v1}, Lcom/liapp/y;->ڴݮگ֮ت(I)Ljava/lang/String;

    move-result-object v1

    .line 4589
    invoke-static {v1, v0}, Lcom/kakaogame/broker/InterfaceBrokerHandler;->registerInterfaceBroker(Ljava/lang/String;Lcom/kakaogame/broker/InterfaceBrokerHandler$InterfaceBroker;)V

    .line 4689
    new-instance v0, Lcom/kakaogame/broker/InterfaceBrokerManager$initInternalAPIs$11;

    invoke-direct {v0}, Lcom/kakaogame/broker/InterfaceBrokerManager$initInternalAPIs$11;-><init>()V

    check-cast v0, Lcom/kakaogame/broker/InterfaceBrokerHandler$InterfaceBroker;

    const v1, 0x6d0f0348

    invoke-static {v1}, Lcom/liapp/y;->ٱڳܴڭܩ(I)Ljava/lang/String;

    move-result-object v1

    .line 4679
    invoke-static {v1, v0}, Lcom/kakaogame/broker/InterfaceBrokerHandler;->registerInterfaceBroker(Ljava/lang/String;Lcom/kakaogame/broker/InterfaceBrokerHandler$InterfaceBroker;)V

    .line 4789
    new-instance v0, Lcom/kakaogame/broker/InterfaceBrokerManager$initInternalAPIs$12;

    invoke-direct {v0}, Lcom/kakaogame/broker/InterfaceBrokerManager$initInternalAPIs$12;-><init>()V

    check-cast v0, Lcom/kakaogame/broker/InterfaceBrokerHandler$InterfaceBroker;

    const v1, 0x543a1d2a

    invoke-static {v1}, Lcom/liapp/y;->׳ֳֳ֬د(I)Ljava/lang/String;

    move-result-object v1

    .line 4779
    invoke-static {v1, v0}, Lcom/kakaogame/broker/InterfaceBrokerHandler;->registerInterfaceBroker(Ljava/lang/String;Lcom/kakaogame/broker/InterfaceBrokerHandler$InterfaceBroker;)V

    .line 4879
    new-instance v0, Lcom/kakaogame/broker/InterfaceBrokerManager$initInternalAPIs$13;

    invoke-direct {v0}, Lcom/kakaogame/broker/InterfaceBrokerManager$initInternalAPIs$13;-><init>()V

    check-cast v0, Lcom/kakaogame/broker/InterfaceBrokerHandler$InterfaceBroker;

    const v1, 0x5d133047

    invoke-static {v1}, Lcom/liapp/y;->ڴݮگ֮ت(I)Ljava/lang/String;

    move-result-object v1

    .line 4869
    invoke-static {v1, v0}, Lcom/kakaogame/broker/InterfaceBrokerHandler;->registerInterfaceBroker(Ljava/lang/String;Lcom/kakaogame/broker/InterfaceBrokerHandler$InterfaceBroker;)V

    .line 4979
    new-instance v0, Lcom/kakaogame/broker/InterfaceBrokerManager$initInternalAPIs$14;

    invoke-direct {v0}, Lcom/kakaogame/broker/InterfaceBrokerManager$initInternalAPIs$14;-><init>()V

    check-cast v0, Lcom/kakaogame/broker/InterfaceBrokerHandler$InterfaceBroker;

    const v1, 0x543a1b6a

    invoke-static {v1}, Lcom/liapp/y;->׳ֳֳ֬د(I)Ljava/lang/String;

    move-result-object v1

    .line 4969
    invoke-static {v1, v0}, Lcom/kakaogame/broker/InterfaceBrokerHandler;->registerInterfaceBroker(Ljava/lang/String;Lcom/kakaogame/broker/InterfaceBrokerHandler$InterfaceBroker;)V

    .line 5079
    new-instance v0, Lcom/kakaogame/broker/InterfaceBrokerManager$initInternalAPIs$15;

    invoke-direct {v0}, Lcom/kakaogame/broker/InterfaceBrokerManager$initInternalAPIs$15;-><init>()V

    check-cast v0, Lcom/kakaogame/broker/InterfaceBrokerHandler$InterfaceBroker;

    const v1, -0x451a75df

    invoke-static {v1}, Lcom/liapp/y;->ڳݬ٬ۮݪ(I)Ljava/lang/String;

    move-result-object v1

    .line 5069
    invoke-static {v1, v0}, Lcom/kakaogame/broker/InterfaceBrokerHandler;->registerInterfaceBroker(Ljava/lang/String;Lcom/kakaogame/broker/InterfaceBrokerHandler$InterfaceBroker;)V

    .line 5159
    new-instance v0, Lcom/kakaogame/broker/InterfaceBrokerManager$initInternalAPIs$16;

    invoke-direct {v0}, Lcom/kakaogame/broker/InterfaceBrokerManager$initInternalAPIs$16;-><init>()V

    check-cast v0, Lcom/kakaogame/broker/InterfaceBrokerHandler$InterfaceBroker;

    const v1, 0x5d1332b7

    invoke-static {v1}, Lcom/liapp/y;->ڴݮگ֮ت(I)Ljava/lang/String;

    move-result-object v1

    .line 5149
    invoke-static {v1, v0}, Lcom/kakaogame/broker/InterfaceBrokerHandler;->registerInterfaceBroker(Ljava/lang/String;Lcom/kakaogame/broker/InterfaceBrokerHandler$InterfaceBroker;)V

    .line 5249
    new-instance v0, Lcom/kakaogame/broker/InterfaceBrokerManager$initInternalAPIs$17;

    invoke-direct {v0}, Lcom/kakaogame/broker/InterfaceBrokerManager$initInternalAPIs$17;-><init>()V

    check-cast v0, Lcom/kakaogame/broker/InterfaceBrokerHandler$InterfaceBroker;

    const v1, 0x6d0f0908

    invoke-static {v1}, Lcom/liapp/y;->ٱڳܴڭܩ(I)Ljava/lang/String;

    move-result-object v1

    .line 5239
    invoke-static {v1, v0}, Lcom/kakaogame/broker/InterfaceBrokerHandler;->registerInterfaceBroker(Ljava/lang/String;Lcom/kakaogame/broker/InterfaceBrokerHandler$InterfaceBroker;)V

    .line 5389
    new-instance v0, Lcom/kakaogame/broker/InterfaceBrokerManager$initInternalAPIs$18;

    invoke-direct {v0}, Lcom/kakaogame/broker/InterfaceBrokerManager$initInternalAPIs$18;-><init>()V

    check-cast v0, Lcom/kakaogame/broker/InterfaceBrokerHandler$InterfaceBroker;

    const v1, 0x22561f8e

    invoke-static {v1}, Lcom/liapp/y;->ֲֳگܱޭ(I)Ljava/lang/String;

    move-result-object v1

    .line 5379
    invoke-static {v1, v0}, Lcom/kakaogame/broker/InterfaceBrokerHandler;->registerInterfaceBroker(Ljava/lang/String;Lcom/kakaogame/broker/InterfaceBrokerHandler$InterfaceBroker;)V

    .line 5499
    new-instance v0, Lcom/kakaogame/broker/InterfaceBrokerManager$initInternalAPIs$19;

    invoke-direct {v0}, Lcom/kakaogame/broker/InterfaceBrokerManager$initInternalAPIs$19;-><init>()V

    check-cast v0, Lcom/kakaogame/broker/InterfaceBrokerHandler$InterfaceBroker;

    const v1, 0x7d731725

    invoke-static {v1}, Lcom/liapp/y;->حֲݴܳޯ(I)Ljava/lang/String;

    move-result-object v1

    .line 5489
    invoke-static {v1, v0}, Lcom/kakaogame/broker/InterfaceBrokerHandler;->registerInterfaceBroker(Ljava/lang/String;Lcom/kakaogame/broker/InterfaceBrokerHandler$InterfaceBroker;)V

    .line 5589
    new-instance v0, Lcom/kakaogame/broker/InterfaceBrokerManager$initInternalAPIs$20;

    invoke-direct {v0}, Lcom/kakaogame/broker/InterfaceBrokerManager$initInternalAPIs$20;-><init>()V

    check-cast v0, Lcom/kakaogame/broker/InterfaceBrokerHandler$InterfaceBroker;

    const v1, 0x22561906

    invoke-static {v1}, Lcom/liapp/y;->ֲֳگܱޭ(I)Ljava/lang/String;

    move-result-object v1

    .line 5579
    invoke-static {v1, v0}, Lcom/kakaogame/broker/InterfaceBrokerHandler;->registerInterfaceBroker(Ljava/lang/String;Lcom/kakaogame/broker/InterfaceBrokerHandler$InterfaceBroker;)V

    .line 5699
    new-instance v0, Lcom/kakaogame/broker/InterfaceBrokerManager$initInternalAPIs$21;

    invoke-direct {v0}, Lcom/kakaogame/broker/InterfaceBrokerManager$initInternalAPIs$21;-><init>()V

    check-cast v0, Lcom/kakaogame/broker/InterfaceBrokerHandler$InterfaceBroker;

    const v1, -0x451a7d0f

    invoke-static {v1}, Lcom/liapp/y;->ڳݬ٬ۮݪ(I)Ljava/lang/String;

    move-result-object v1

    .line 5689
    invoke-static {v1, v0}, Lcom/kakaogame/broker/InterfaceBrokerHandler;->registerInterfaceBroker(Ljava/lang/String;Lcom/kakaogame/broker/InterfaceBrokerHandler$InterfaceBroker;)V

    .line 5809
    new-instance v0, Lcom/kakaogame/broker/InterfaceBrokerManager$initInternalAPIs$22;

    invoke-direct {v0}, Lcom/kakaogame/broker/InterfaceBrokerManager$initInternalAPIs$22;-><init>()V

    check-cast v0, Lcom/kakaogame/broker/InterfaceBrokerHandler$InterfaceBroker;

    const v1, -0x451a7caf

    invoke-static {v1}, Lcom/liapp/y;->ڳݬ٬ۮݪ(I)Ljava/lang/String;

    move-result-object v1

    .line 5799
    invoke-static {v1, v0}, Lcom/kakaogame/broker/InterfaceBrokerHandler;->registerInterfaceBroker(Ljava/lang/String;Lcom/kakaogame/broker/InterfaceBrokerHandler$InterfaceBroker;)V

    .line 5919
    new-instance v0, Lcom/kakaogame/broker/InterfaceBrokerManager$initInternalAPIs$23;

    invoke-direct {v0}, Lcom/kakaogame/broker/InterfaceBrokerManager$initInternalAPIs$23;-><init>()V

    check-cast v0, Lcom/kakaogame/broker/InterfaceBrokerHandler$InterfaceBroker;

    const v1, 0x225664de

    invoke-static {v1}, Lcom/liapp/y;->ֲֳگܱޭ(I)Ljava/lang/String;

    move-result-object v1

    .line 5909
    invoke-static {v1, v0}, Lcom/kakaogame/broker/InterfaceBrokerHandler;->registerInterfaceBroker(Ljava/lang/String;Lcom/kakaogame/broker/InterfaceBrokerHandler$InterfaceBroker;)V

    .line 6029
    new-instance v0, Lcom/kakaogame/broker/InterfaceBrokerManager$initInternalAPIs$24;

    invoke-direct {v0}, Lcom/kakaogame/broker/InterfaceBrokerManager$initInternalAPIs$24;-><init>()V

    check-cast v0, Lcom/kakaogame/broker/InterfaceBrokerHandler$InterfaceBroker;

    const v1, 0x5d13449f

    invoke-static {v1}, Lcom/liapp/y;->ڴݮگ֮ت(I)Ljava/lang/String;

    move-result-object v1

    .line 6019
    invoke-static {v1, v0}, Lcom/kakaogame/broker/InterfaceBrokerHandler;->registerInterfaceBroker(Ljava/lang/String;Lcom/kakaogame/broker/InterfaceBrokerHandler$InterfaceBroker;)V

    .line 6189
    new-instance v0, Lcom/kakaogame/broker/InterfaceBrokerManager$initInternalAPIs$25;

    invoke-direct {v0}, Lcom/kakaogame/broker/InterfaceBrokerManager$initInternalAPIs$25;-><init>()V

    check-cast v0, Lcom/kakaogame/broker/InterfaceBrokerHandler$InterfaceBroker;

    const v1, -0x451a01bf

    invoke-static {v1}, Lcom/liapp/y;->ڳݬ٬ۮݪ(I)Ljava/lang/String;

    move-result-object v1

    .line 6179
    invoke-static {v1, v0}, Lcom/kakaogame/broker/InterfaceBrokerHandler;->registerInterfaceBroker(Ljava/lang/String;Lcom/kakaogame/broker/InterfaceBrokerHandler$InterfaceBroker;)V

    .line 6309
    new-instance v0, Lcom/kakaogame/broker/InterfaceBrokerManager$initInternalAPIs$26;

    invoke-direct {v0}, Lcom/kakaogame/broker/InterfaceBrokerManager$initInternalAPIs$26;-><init>()V

    check-cast v0, Lcom/kakaogame/broker/InterfaceBrokerHandler$InterfaceBroker;

    const v1, 0x5d13462f

    invoke-static {v1}, Lcom/liapp/y;->ڴݮگ֮ت(I)Ljava/lang/String;

    move-result-object v1

    .line 6299
    invoke-static {v1, v0}, Lcom/kakaogame/broker/InterfaceBrokerHandler;->registerInterfaceBroker(Ljava/lang/String;Lcom/kakaogame/broker/InterfaceBrokerHandler$InterfaceBroker;)V

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method private final initNotis()V
    .locals 1

    .line 12839
    new-instance v0, Lcom/kakaogame/broker/InterfaceBrokerManager$initNotis$listener$1;

    invoke-direct {v0}, Lcom/kakaogame/broker/InterfaceBrokerManager$initNotis$listener$1;-><init>()V

    check-cast v0, Lcom/kakaogame/KGSession$KGOnlineNotificationListener;

    .line 12909
    invoke-static {v0}, Lcom/kakaogame/KGSession;->registerOnlineNotificationListener(Lcom/kakaogame/KGSession$KGOnlineNotificationListener;)V

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method private final initSessionAPIs()V
    .locals 2

    .line 6519
    new-instance v0, Lcom/kakaogame/broker/InterfaceBrokerManager$initSessionAPIs$1;

    invoke-direct {v0}, Lcom/kakaogame/broker/InterfaceBrokerManager$initSessionAPIs$1;-><init>()V

    check-cast v0, Lcom/kakaogame/broker/InterfaceBrokerHandler$InterfaceBroker;

    const v1, 0x5d134137

    invoke-static {v1}, Lcom/liapp/y;->ڴݮگ֮ت(I)Ljava/lang/String;

    move-result-object v1

    .line 6509
    invoke-static {v1, v0}, Lcom/kakaogame/broker/InterfaceBrokerHandler;->registerInterfaceBroker(Ljava/lang/String;Lcom/kakaogame/broker/InterfaceBrokerHandler$InterfaceBroker;)V

    .line 6729
    new-instance v0, Lcom/kakaogame/broker/InterfaceBrokerManager$initSessionAPIs$2;

    invoke-direct {v0}, Lcom/kakaogame/broker/InterfaceBrokerManager$initSessionAPIs$2;-><init>()V

    check-cast v0, Lcom/kakaogame/broker/InterfaceBrokerHandler$InterfaceBroker;

    const v1, -0x2241a034

    invoke-static {v1}, Lcom/liapp/y;->״دش۲ݮ(I)Ljava/lang/String;

    move-result-object v1

    .line 6719
    invoke-static {v1, v0}, Lcom/kakaogame/broker/InterfaceBrokerHandler;->registerInterfaceBroker(Ljava/lang/String;Lcom/kakaogame/broker/InterfaceBrokerHandler$InterfaceBroker;)V

    .line 7059
    new-instance v0, Lcom/kakaogame/broker/InterfaceBrokerManager$initSessionAPIs$3;

    invoke-direct {v0}, Lcom/kakaogame/broker/InterfaceBrokerManager$initSessionAPIs$3;-><init>()V

    check-cast v0, Lcom/kakaogame/broker/InterfaceBrokerHandler$InterfaceBroker;

    const v1, 0x3361cedb

    invoke-static {v1}, Lcom/liapp/y;->ׯ״ٲ֬ب(I)Ljava/lang/String;

    move-result-object v1

    .line 7049
    invoke-static {v1, v0}, Lcom/kakaogame/broker/InterfaceBrokerHandler;->registerInterfaceBroker(Ljava/lang/String;Lcom/kakaogame/broker/InterfaceBrokerHandler$InterfaceBroker;)V

    .line 7199
    new-instance v0, Lcom/kakaogame/broker/InterfaceBrokerManager$initSessionAPIs$4;

    invoke-direct {v0}, Lcom/kakaogame/broker/InterfaceBrokerManager$initSessionAPIs$4;-><init>()V

    check-cast v0, Lcom/kakaogame/broker/InterfaceBrokerHandler$InterfaceBroker;

    const v1, 0x7d736a75

    invoke-static {v1}, Lcom/liapp/y;->حֲݴܳޯ(I)Ljava/lang/String;

    move-result-object v1

    .line 7189
    invoke-static {v1, v0}, Lcom/kakaogame/broker/InterfaceBrokerHandler;->registerInterfaceBroker(Ljava/lang/String;Lcom/kakaogame/broker/InterfaceBrokerHandler$InterfaceBroker;)V

    .line 7339
    new-instance v0, Lcom/kakaogame/broker/InterfaceBrokerManager$initSessionAPIs$5;

    invoke-direct {v0}, Lcom/kakaogame/broker/InterfaceBrokerManager$initSessionAPIs$5;-><init>()V

    check-cast v0, Lcom/kakaogame/broker/InterfaceBrokerHandler$InterfaceBroker;

    const v1, 0x6d0f7658

    invoke-static {v1}, Lcom/liapp/y;->ٱڳܴڭܩ(I)Ljava/lang/String;

    move-result-object v1

    .line 7329
    invoke-static {v1, v0}, Lcom/kakaogame/broker/InterfaceBrokerHandler;->registerInterfaceBroker(Ljava/lang/String;Lcom/kakaogame/broker/InterfaceBrokerHandler$InterfaceBroker;)V

    .line 7489
    new-instance v0, Lcom/kakaogame/broker/InterfaceBrokerManager$initSessionAPIs$6;

    invoke-direct {v0}, Lcom/kakaogame/broker/InterfaceBrokerManager$initSessionAPIs$6;-><init>()V

    check-cast v0, Lcom/kakaogame/broker/InterfaceBrokerHandler$InterfaceBroker;

    const v1, 0x6d0f79e0

    invoke-static {v1}, Lcom/liapp/y;->ٱڳܴڭܩ(I)Ljava/lang/String;

    move-result-object v1

    .line 7479
    invoke-static {v1, v0}, Lcom/kakaogame/broker/InterfaceBrokerHandler;->registerInterfaceBroker(Ljava/lang/String;Lcom/kakaogame/broker/InterfaceBrokerHandler$InterfaceBroker;)V

    .line 7639
    new-instance v0, Lcom/kakaogame/broker/InterfaceBrokerManager$initSessionAPIs$7;

    invoke-direct {v0}, Lcom/kakaogame/broker/InterfaceBrokerManager$initSessionAPIs$7;-><init>()V

    check-cast v0, Lcom/kakaogame/broker/InterfaceBrokerHandler$InterfaceBroker;

    const v1, 0x3361c1d3

    invoke-static {v1}, Lcom/liapp/y;->ׯ״ٲ֬ب(I)Ljava/lang/String;

    move-result-object v1

    .line 7629
    invoke-static {v1, v0}, Lcom/kakaogame/broker/InterfaceBrokerHandler;->registerInterfaceBroker(Ljava/lang/String;Lcom/kakaogame/broker/InterfaceBrokerHandler$InterfaceBroker;)V

    .line 7789
    new-instance v0, Lcom/kakaogame/broker/InterfaceBrokerManager$initSessionAPIs$8;

    invoke-direct {v0}, Lcom/kakaogame/broker/InterfaceBrokerManager$initSessionAPIs$8;-><init>()V

    check-cast v0, Lcom/kakaogame/broker/InterfaceBrokerHandler$InterfaceBroker;

    const v1, 0x543a6752

    invoke-static {v1}, Lcom/liapp/y;->׳ֳֳ֬د(I)Ljava/lang/String;

    move-result-object v1

    .line 7779
    invoke-static {v1, v0}, Lcom/kakaogame/broker/InterfaceBrokerHandler;->registerInterfaceBroker(Ljava/lang/String;Lcom/kakaogame/broker/InterfaceBrokerHandler$InterfaceBroker;)V

    .line 7939
    new-instance v0, Lcom/kakaogame/broker/InterfaceBrokerManager$initSessionAPIs$9;

    invoke-direct {v0}, Lcom/kakaogame/broker/InterfaceBrokerManager$initSessionAPIs$9;-><init>()V

    check-cast v0, Lcom/kakaogame/broker/InterfaceBrokerHandler$InterfaceBroker;

    const v1, 0x543a6432

    invoke-static {v1}, Lcom/liapp/y;->׳ֳֳ֬د(I)Ljava/lang/String;

    move-result-object v1

    .line 7929
    invoke-static {v1, v0}, Lcom/kakaogame/broker/InterfaceBrokerHandler;->registerInterfaceBroker(Ljava/lang/String;Lcom/kakaogame/broker/InterfaceBrokerHandler$InterfaceBroker;)V

    .line 8029
    new-instance v0, Lcom/kakaogame/broker/InterfaceBrokerManager$initSessionAPIs$10;

    invoke-direct {v0}, Lcom/kakaogame/broker/InterfaceBrokerManager$initSessionAPIs$10;-><init>()V

    check-cast v0, Lcom/kakaogame/broker/InterfaceBrokerHandler$InterfaceBroker;

    const v1, 0x6d0f7a58

    invoke-static {v1}, Lcom/liapp/y;->ٱڳܴڭܩ(I)Ljava/lang/String;

    move-result-object v1

    .line 8019
    invoke-static {v1, v0}, Lcom/kakaogame/broker/InterfaceBrokerHandler;->registerInterfaceBroker(Ljava/lang/String;Lcom/kakaogame/broker/InterfaceBrokerHandler$InterfaceBroker;)V

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method private final initSessionForCustomUIAPIs()V
    .locals 2

    .line 8149
    new-instance v0, Lcom/kakaogame/broker/InterfaceBrokerManager$initSessionForCustomUIAPIs$1;

    invoke-direct {v0}, Lcom/kakaogame/broker/InterfaceBrokerManager$initSessionForCustomUIAPIs$1;-><init>()V

    check-cast v0, Lcom/kakaogame/broker/InterfaceBrokerHandler$InterfaceBroker;

    const v1, 0x5d1349d7

    invoke-static {v1}, Lcom/liapp/y;->ڴݮگ֮ت(I)Ljava/lang/String;

    move-result-object v1

    .line 8139
    invoke-static {v1, v0}, Lcom/kakaogame/broker/InterfaceBrokerHandler;->registerInterfaceBroker(Ljava/lang/String;Lcom/kakaogame/broker/InterfaceBrokerHandler$InterfaceBroker;)V

    .line 8429
    new-instance v0, Lcom/kakaogame/broker/InterfaceBrokerManager$initSessionForCustomUIAPIs$2;

    invoke-direct {v0}, Lcom/kakaogame/broker/InterfaceBrokerManager$initSessionForCustomUIAPIs$2;-><init>()V

    check-cast v0, Lcom/kakaogame/broker/InterfaceBrokerHandler$InterfaceBroker;

    const v1, -0x451a0eb7

    invoke-static {v1}, Lcom/liapp/y;->ڳݬ٬ۮݪ(I)Ljava/lang/String;

    move-result-object v1

    .line 8419
    invoke-static {v1, v0}, Lcom/kakaogame/broker/InterfaceBrokerHandler;->registerInterfaceBroker(Ljava/lang/String;Lcom/kakaogame/broker/InterfaceBrokerHandler$InterfaceBroker;)V

    .line 8709
    new-instance v0, Lcom/kakaogame/broker/InterfaceBrokerManager$initSessionForCustomUIAPIs$3;

    invoke-direct {v0}, Lcom/kakaogame/broker/InterfaceBrokerManager$initSessionForCustomUIAPIs$3;-><init>()V

    check-cast v0, Lcom/kakaogame/broker/InterfaceBrokerHandler$InterfaceBroker;

    const v1, 0x7d73620d

    invoke-static {v1}, Lcom/liapp/y;->حֲݴܳޯ(I)Ljava/lang/String;

    move-result-object v1

    .line 8699
    invoke-static {v1, v0}, Lcom/kakaogame/broker/InterfaceBrokerHandler;->registerInterfaceBroker(Ljava/lang/String;Lcom/kakaogame/broker/InterfaceBrokerHandler$InterfaceBroker;)V

    .line 8929
    new-instance v0, Lcom/kakaogame/broker/InterfaceBrokerManager$initSessionForCustomUIAPIs$4;

    invoke-direct {v0}, Lcom/kakaogame/broker/InterfaceBrokerManager$initSessionForCustomUIAPIs$4;-><init>()V

    check-cast v0, Lcom/kakaogame/broker/InterfaceBrokerHandler$InterfaceBroker;

    const v1, 0x543a617a

    invoke-static {v1}, Lcom/liapp/y;->׳ֳֳ֬د(I)Ljava/lang/String;

    move-result-object v1

    .line 8919
    invoke-static {v1, v0}, Lcom/kakaogame/broker/InterfaceBrokerHandler;->registerInterfaceBroker(Ljava/lang/String;Lcom/kakaogame/broker/InterfaceBrokerHandler$InterfaceBroker;)V

    .line 9149
    new-instance v0, Lcom/kakaogame/broker/InterfaceBrokerManager$initSessionForCustomUIAPIs$5;

    invoke-direct {v0}, Lcom/kakaogame/broker/InterfaceBrokerManager$initSessionForCustomUIAPIs$5;-><init>()V

    check-cast v0, Lcom/kakaogame/broker/InterfaceBrokerHandler$InterfaceBroker;

    const v1, 0x6d0f60e8

    invoke-static {v1}, Lcom/liapp/y;->ٱڳܴڭܩ(I)Ljava/lang/String;

    move-result-object v1

    .line 9139
    invoke-static {v1, v0}, Lcom/kakaogame/broker/InterfaceBrokerHandler;->registerInterfaceBroker(Ljava/lang/String;Lcom/kakaogame/broker/InterfaceBrokerHandler$InterfaceBroker;)V

    .line 9289
    new-instance v0, Lcom/kakaogame/broker/InterfaceBrokerManager$initSessionForCustomUIAPIs$6;

    invoke-direct {v0}, Lcom/kakaogame/broker/InterfaceBrokerManager$initSessionForCustomUIAPIs$6;-><init>()V

    check-cast v0, Lcom/kakaogame/broker/InterfaceBrokerHandler$InterfaceBroker;

    const v1, 0x2256779e

    invoke-static {v1}, Lcom/liapp/y;->ֲֳگܱޭ(I)Ljava/lang/String;

    move-result-object v1

    .line 9279
    invoke-static {v1, v0}, Lcom/kakaogame/broker/InterfaceBrokerHandler;->registerInterfaceBroker(Ljava/lang/String;Lcom/kakaogame/broker/InterfaceBrokerHandler$InterfaceBroker;)V

    .line 9429
    new-instance v0, Lcom/kakaogame/broker/InterfaceBrokerManager$initSessionForCustomUIAPIs$7;

    invoke-direct {v0}, Lcom/kakaogame/broker/InterfaceBrokerManager$initSessionForCustomUIAPIs$7;-><init>()V

    check-cast v0, Lcom/kakaogame/broker/InterfaceBrokerHandler$InterfaceBroker;

    const v1, -0x2241b6bc

    invoke-static {v1}, Lcom/liapp/y;->״دش۲ݮ(I)Ljava/lang/String;

    move-result-object v1

    .line 9419
    invoke-static {v1, v0}, Lcom/kakaogame/broker/InterfaceBrokerHandler;->registerInterfaceBroker(Ljava/lang/String;Lcom/kakaogame/broker/InterfaceBrokerHandler$InterfaceBroker;)V

    .line 9569
    new-instance v0, Lcom/kakaogame/broker/InterfaceBrokerManager$initSessionForCustomUIAPIs$8;

    invoke-direct {v0}, Lcom/kakaogame/broker/InterfaceBrokerManager$initSessionForCustomUIAPIs$8;-><init>()V

    check-cast v0, Lcom/kakaogame/broker/InterfaceBrokerHandler$InterfaceBroker;

    const v1, 0x5d135047

    invoke-static {v1}, Lcom/liapp/y;->ڴݮگ֮ت(I)Ljava/lang/String;

    move-result-object v1

    .line 9559
    invoke-static {v1, v0}, Lcom/kakaogame/broker/InterfaceBrokerHandler;->registerInterfaceBroker(Ljava/lang/String;Lcom/kakaogame/broker/InterfaceBrokerHandler$InterfaceBroker;)V

    .line 9849
    new-instance v0, Lcom/kakaogame/broker/InterfaceBrokerManager$initSessionForCustomUIAPIs$9;

    invoke-direct {v0}, Lcom/kakaogame/broker/InterfaceBrokerManager$initSessionForCustomUIAPIs$9;-><init>()V

    check-cast v0, Lcom/kakaogame/broker/InterfaceBrokerHandler$InterfaceBroker;

    const v1, 0x6d0f6758

    invoke-static {v1}, Lcom/liapp/y;->ٱڳܴڭܩ(I)Ljava/lang/String;

    move-result-object v1

    .line 9839
    invoke-static {v1, v0}, Lcom/kakaogame/broker/InterfaceBrokerHandler;->registerInterfaceBroker(Ljava/lang/String;Lcom/kakaogame/broker/InterfaceBrokerHandler$InterfaceBroker;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method private final initSystemAPIs()V
    .locals 2

    .line 11459
    new-instance v0, Lcom/kakaogame/broker/InterfaceBrokerManager$initSystemAPIs$1;

    invoke-direct {v0}, Lcom/kakaogame/broker/InterfaceBrokerManager$initSystemAPIs$1;-><init>()V

    check-cast v0, Lcom/kakaogame/broker/InterfaceBrokerHandler$InterfaceBroker;

    const v1, 0x7d737b55

    invoke-static {v1}, Lcom/liapp/y;->حֲݴܳޯ(I)Ljava/lang/String;

    move-result-object v1

    .line 11449
    invoke-static {v1, v0}, Lcom/kakaogame/broker/InterfaceBrokerHandler;->registerInterfaceBroker(Ljava/lang/String;Lcom/kakaogame/broker/InterfaceBrokerHandler$InterfaceBroker;)V

    .line 11549
    new-instance v0, Lcom/kakaogame/broker/InterfaceBrokerManager$initSystemAPIs$2;

    invoke-direct {v0}, Lcom/kakaogame/broker/InterfaceBrokerManager$initSystemAPIs$2;-><init>()V

    check-cast v0, Lcom/kakaogame/broker/InterfaceBrokerHandler$InterfaceBroker;

    const v1, 0x22567d1e

    invoke-static {v1}, Lcom/liapp/y;->ֲֳگܱޭ(I)Ljava/lang/String;

    move-result-object v1

    .line 11539
    invoke-static {v1, v0}, Lcom/kakaogame/broker/InterfaceBrokerHandler;->registerInterfaceBroker(Ljava/lang/String;Lcom/kakaogame/broker/InterfaceBrokerHandler$InterfaceBroker;)V

    .line 11639
    new-instance v0, Lcom/kakaogame/broker/InterfaceBrokerManager$initSystemAPIs$3;

    invoke-direct {v0}, Lcom/kakaogame/broker/InterfaceBrokerManager$initSystemAPIs$3;-><init>()V

    check-cast v0, Lcom/kakaogame/broker/InterfaceBrokerHandler$InterfaceBroker;

    const v1, 0x6d0f6818

    invoke-static {v1}, Lcom/liapp/y;->ٱڳܴڭܩ(I)Ljava/lang/String;

    move-result-object v1

    .line 11629
    invoke-static {v1, v0}, Lcom/kakaogame/broker/InterfaceBrokerHandler;->registerInterfaceBroker(Ljava/lang/String;Lcom/kakaogame/broker/InterfaceBrokerHandler$InterfaceBroker;)V

    .line 11729
    new-instance v0, Lcom/kakaogame/broker/InterfaceBrokerManager$initSystemAPIs$4;

    invoke-direct {v0}, Lcom/kakaogame/broker/InterfaceBrokerManager$initSystemAPIs$4;-><init>()V

    check-cast v0, Lcom/kakaogame/broker/InterfaceBrokerHandler$InterfaceBroker;

    const v1, 0x3361d20b

    invoke-static {v1}, Lcom/liapp/y;->ׯ״ٲ֬ب(I)Ljava/lang/String;

    move-result-object v1

    .line 11719
    invoke-static {v1, v0}, Lcom/kakaogame/broker/InterfaceBrokerHandler;->registerInterfaceBroker(Ljava/lang/String;Lcom/kakaogame/broker/InterfaceBrokerHandler$InterfaceBroker;)V

    .line 11819
    new-instance v0, Lcom/kakaogame/broker/InterfaceBrokerManager$initSystemAPIs$5;

    invoke-direct {v0}, Lcom/kakaogame/broker/InterfaceBrokerManager$initSystemAPIs$5;-><init>()V

    check-cast v0, Lcom/kakaogame/broker/InterfaceBrokerHandler$InterfaceBroker;

    const v1, 0x3361d303

    invoke-static {v1}, Lcom/liapp/y;->ׯ״ٲ֬ب(I)Ljava/lang/String;

    move-result-object v1

    .line 11809
    invoke-static {v1, v0}, Lcom/kakaogame/broker/InterfaceBrokerHandler;->registerInterfaceBroker(Ljava/lang/String;Lcom/kakaogame/broker/InterfaceBrokerHandler$InterfaceBroker;)V

    .line 11909
    new-instance v0, Lcom/kakaogame/broker/InterfaceBrokerManager$initSystemAPIs$6;

    invoke-direct {v0}, Lcom/kakaogame/broker/InterfaceBrokerManager$initSystemAPIs$6;-><init>()V

    check-cast v0, Lcom/kakaogame/broker/InterfaceBrokerHandler$InterfaceBroker;

    const v1, 0x22567936

    invoke-static {v1}, Lcom/liapp/y;->ֲֳگܱޭ(I)Ljava/lang/String;

    move-result-object v1

    .line 11899
    invoke-static {v1, v0}, Lcom/kakaogame/broker/InterfaceBrokerHandler;->registerInterfaceBroker(Ljava/lang/String;Lcom/kakaogame/broker/InterfaceBrokerHandler$InterfaceBroker;)V

    .line 11999
    new-instance v0, Lcom/kakaogame/broker/InterfaceBrokerManager$initSystemAPIs$7;

    invoke-direct {v0}, Lcom/kakaogame/broker/InterfaceBrokerManager$initSystemAPIs$7;-><init>()V

    check-cast v0, Lcom/kakaogame/broker/InterfaceBrokerHandler$InterfaceBroker;

    const v1, 0x7d73715d

    invoke-static {v1}, Lcom/liapp/y;->حֲݴܳޯ(I)Ljava/lang/String;

    move-result-object v1

    .line 11989
    invoke-static {v1, v0}, Lcom/kakaogame/broker/InterfaceBrokerHandler;->registerInterfaceBroker(Ljava/lang/String;Lcom/kakaogame/broker/InterfaceBrokerHandler$InterfaceBroker;)V

    .line 12089
    new-instance v0, Lcom/kakaogame/broker/InterfaceBrokerManager$initSystemAPIs$8;

    invoke-direct {v0}, Lcom/kakaogame/broker/InterfaceBrokerManager$initSystemAPIs$8;-><init>()V

    check-cast v0, Lcom/kakaogame/broker/InterfaceBrokerHandler$InterfaceBroker;

    const v1, 0x7d737265

    invoke-static {v1}, Lcom/liapp/y;->حֲݴܳޯ(I)Ljava/lang/String;

    move-result-object v1

    .line 12079
    invoke-static {v1, v0}, Lcom/kakaogame/broker/InterfaceBrokerHandler;->registerInterfaceBroker(Ljava/lang/String;Lcom/kakaogame/broker/InterfaceBrokerHandler$InterfaceBroker;)V

    .line 12179
    new-instance v0, Lcom/kakaogame/broker/InterfaceBrokerManager$initSystemAPIs$9;

    invoke-direct {v0}, Lcom/kakaogame/broker/InterfaceBrokerManager$initSystemAPIs$9;-><init>()V

    check-cast v0, Lcom/kakaogame/broker/InterfaceBrokerHandler$InterfaceBroker;

    const v1, 0x7d73736d

    invoke-static {v1}, Lcom/liapp/y;->حֲݴܳޯ(I)Ljava/lang/String;

    move-result-object v1

    .line 12169
    invoke-static {v1, v0}, Lcom/kakaogame/broker/InterfaceBrokerHandler;->registerInterfaceBroker(Ljava/lang/String;Lcom/kakaogame/broker/InterfaceBrokerHandler$InterfaceBroker;)V

    .line 12269
    new-instance v0, Lcom/kakaogame/broker/InterfaceBrokerManager$initSystemAPIs$10;

    invoke-direct {v0}, Lcom/kakaogame/broker/InterfaceBrokerManager$initSystemAPIs$10;-><init>()V

    check-cast v0, Lcom/kakaogame/broker/InterfaceBrokerHandler$InterfaceBroker;

    const v1, -0x224185c4

    invoke-static {v1}, Lcom/liapp/y;->״دش۲ݮ(I)Ljava/lang/String;

    move-result-object v1

    .line 12259
    invoke-static {v1, v0}, Lcom/kakaogame/broker/InterfaceBrokerHandler;->registerInterfaceBroker(Ljava/lang/String;Lcom/kakaogame/broker/InterfaceBrokerHandler$InterfaceBroker;)V

    .line 12359
    new-instance v0, Lcom/kakaogame/broker/InterfaceBrokerManager$initSystemAPIs$11;

    invoke-direct {v0}, Lcom/kakaogame/broker/InterfaceBrokerManager$initSystemAPIs$11;-><init>()V

    check-cast v0, Lcom/kakaogame/broker/InterfaceBrokerHandler$InterfaceBroker;

    const v1, 0x2256447e

    invoke-static {v1}, Lcom/liapp/y;->ֲֳگܱޭ(I)Ljava/lang/String;

    move-result-object v1

    .line 12349
    invoke-static {v1, v0}, Lcom/kakaogame/broker/InterfaceBrokerHandler;->registerInterfaceBroker(Ljava/lang/String;Lcom/kakaogame/broker/InterfaceBrokerHandler$InterfaceBroker;)V

    .line 12509
    new-instance v0, Lcom/kakaogame/broker/InterfaceBrokerManager$initSystemAPIs$12;

    invoke-direct {v0}, Lcom/kakaogame/broker/InterfaceBrokerManager$initSystemAPIs$12;-><init>()V

    check-cast v0, Lcom/kakaogame/broker/InterfaceBrokerHandler$InterfaceBroker;

    const v1, -0x224187a4

    invoke-static {v1}, Lcom/liapp/y;->״دش۲ݮ(I)Ljava/lang/String;

    move-result-object v1

    .line 12499
    invoke-static {v1, v0}, Lcom/kakaogame/broker/InterfaceBrokerHandler;->registerInterfaceBroker(Ljava/lang/String;Lcom/kakaogame/broker/InterfaceBrokerHandler$InterfaceBroker;)V

    .line 12589
    new-instance v0, Lcom/kakaogame/broker/InterfaceBrokerManager$initSystemAPIs$13;

    invoke-direct {v0}, Lcom/kakaogame/broker/InterfaceBrokerManager$initSystemAPIs$13;-><init>()V

    check-cast v0, Lcom/kakaogame/broker/InterfaceBrokerHandler$InterfaceBroker;

    const v1, 0x3361eb03

    invoke-static {v1}, Lcom/liapp/y;->ׯ״ٲ֬ب(I)Ljava/lang/String;

    move-result-object v1

    .line 12579
    invoke-static {v1, v0}, Lcom/kakaogame/broker/InterfaceBrokerHandler;->registerInterfaceBroker(Ljava/lang/String;Lcom/kakaogame/broker/InterfaceBrokerHandler$InterfaceBroker;)V

    .line 12729
    new-instance v0, Lcom/kakaogame/broker/InterfaceBrokerManager$initSystemAPIs$14;

    invoke-direct {v0}, Lcom/kakaogame/broker/InterfaceBrokerManager$initSystemAPIs$14;-><init>()V

    check-cast v0, Lcom/kakaogame/broker/InterfaceBrokerHandler$InterfaceBroker;

    const v1, 0x543a4a42

    invoke-static {v1}, Lcom/liapp/y;->׳ֳֳ֬د(I)Ljava/lang/String;

    move-result-object v1

    .line 12719
    invoke-static {v1, v0}, Lcom/kakaogame/broker/InterfaceBrokerHandler;->registerInterfaceBroker(Ljava/lang/String;Lcom/kakaogame/broker/InterfaceBrokerHandler$InterfaceBroker;)V

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method private final initialize()V
    .locals 0

    .line 539
    invoke-direct {p0}, Lcom/kakaogame/broker/InterfaceBrokerManager;->setEngine()V

    .line 549
    invoke-direct {p0}, Lcom/kakaogame/broker/InterfaceBrokerManager;->initInternalAPIs()V

    .line 559
    invoke-direct {p0}, Lcom/kakaogame/broker/InterfaceBrokerManager;->initSessionAPIs()V

    .line 569
    invoke-direct {p0}, Lcom/kakaogame/broker/InterfaceBrokerManager;->initSessionForCustomUIAPIs()V

    .line 579
    invoke-direct {p0}, Lcom/kakaogame/broker/InterfaceBrokerManager;->initApplicationAPIs()V

    .line 589
    invoke-direct {p0}, Lcom/kakaogame/broker/InterfaceBrokerManager;->initSystemAPIs()V

    .line 599
    invoke-direct {p0}, Lcom/kakaogame/broker/InterfaceBrokerManager;->initNotis()V

    .line 609
    invoke-direct {p0}, Lcom/kakaogame/broker/InterfaceBrokerManager;->initAgreementAPI()V

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public static final requestAsync(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 8
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const v0, 0x33618383

    invoke-static {v0}, Lcom/liapp/y;->ׯ״ٲ֬ب(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x5d13634f

    invoke-static {v1}, Lcom/liapp/y;->ڴݮگ֮ت(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x543d14da

    invoke-static {v2}, Lcom/liapp/y;->׳ֳֳ֬د(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const v2, -0x451a25bf

    invoke-static {v2}, Lcom/liapp/y;->ڳݬ٬ۮݪ(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1149
    :try_start_0
    sget-object v2, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Lcom/kakaogame/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1159
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v1

    check-cast v1, Lkotlin/coroutines/CoroutineContext;

    invoke-static {v1}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    new-instance v1, Lcom/kakaogame/broker/InterfaceBrokerManager$requestAsync$1;

    const/4 v5, 0x0

    invoke-direct {v1, p0, p1, v5}, Lcom/kakaogame/broker/InterfaceBrokerManager$requestAsync$1;-><init>(Landroid/app/Activity;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    move-object v5, v1

    check-cast v5, Lkotlin/jvm/functions/Function2;

    const/4 v6, 0x3

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 1199
    sget-object p1, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    check-cast p0, Ljava/lang/Throwable;

    invoke-virtual {p1, v0, v1, p0}, Lcom/kakaogame/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void

    .array-data 1
    .end array-data
.end method

.method public static final requestSync(Landroid/app/Activity;Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const v0, 0x33618383

    invoke-static {v0}, Lcom/liapp/y;->ׯ״ٲ֬ب(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x3361efc3

    invoke-static {v1}, Lcom/liapp/y;->ׯ״ٲ֬ب(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x5d136237

    invoke-static {v2}, Lcom/liapp/y;->ڴݮگ֮ت(I)Ljava/lang/String;

    move-result-object v2

    const v3, -0x22418284

    invoke-static {v3}, Lcom/liapp/y;->״دش۲ݮ(I)Ljava/lang/String;

    move-result-object v3

    const v4, -0x451a25bf

    invoke-static {v4}, Lcom/liapp/y;->ڳݬ٬ۮݪ(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {p1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 709
    :try_start_0
    sget-object v4, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v0, v3}, Lcom/kakaogame/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 719
    sget-object v3, Lcom/kakaogame/server/ServerResponse;->Companion:Lcom/kakaogame/server/ServerResponse$Companion;

    invoke-virtual {v3, p1}, Lcom/kakaogame/server/ServerResponse$Companion;->getResponse(Ljava/lang/String;)Lcom/kakaogame/server/ServerResponse;

    move-result-object p1

    .line 729
    invoke-virtual {p1}, Lcom/kakaogame/server/ServerResponse;->getRequestUri()Ljava/lang/String;

    move-result-object v3

    .line 739
    invoke-virtual {p1}, Lcom/kakaogame/server/ServerResponse;->getTransactionNo()I

    move-result v4

    .line 749
    invoke-virtual {p1}, Lcom/kakaogame/server/ServerResponse;->getBody()Lcom/kakaogame/util/json/JSONObject;

    move-result-object p1

    .line 759
    new-instance v5, Lcom/kakaogame/util/json/JSONArray;

    invoke-direct {v5}, Lcom/kakaogame/util/json/JSONArray;-><init>()V

    .line 769
    invoke-virtual {v5, v3}, Lcom/kakaogame/util/json/JSONArray;->add(Ljava/lang/Object;)Z

    .line 779
    invoke-virtual {v5, p1}, Lcom/kakaogame/util/json/JSONArray;->add(Ljava/lang/Object;)Z

    .line 789
    sget-object p1, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Lcom/kakaogame/util/json/JSONArray;->toJSONString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Lcom/kakaogame/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 799
    sget-object p1, Lcom/kakaogame/broker/InterfaceBrokerHandler;->INSTANCE:Lcom/kakaogame/broker/InterfaceBrokerHandler;

    invoke-virtual {v5}, Lcom/kakaogame/util/json/JSONArray;->toJSONString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, p0, v2}, Lcom/kakaogame/broker/InterfaceBrokerHandler;->request(Landroid/app/Activity;Ljava/lang/String;)Lcom/kakaogame/KGResult;

    move-result-object p0

    .line 809
    new-instance p1, Lcom/kakaogame/util/json/JSONObject;

    invoke-direct {p1}, Lcom/kakaogame/util/json/JSONObject;-><init>()V

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 819
    move-object v4, p1

    check-cast v4, Ljava/util/Map;

    const-string/jumbo v5, "txNo"

    invoke-interface {v4, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 829
    new-instance v2, Lcom/kakaogame/util/json/JSONObject;

    invoke-direct {v2}, Lcom/kakaogame/util/json/JSONObject;-><init>()V

    .line 839
    move-object v4, v2

    check-cast v4, Ljava/util/Map;

    const-string v5, "status"

    invoke-virtual {p0}, Lcom/kakaogame/KGResult;->getCode()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 849
    move-object v4, v2

    check-cast v4, Ljava/util/Map;

    const-string v5, "desc"

    invoke-virtual {p0}, Lcom/kakaogame/KGResult;->getDescription()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 859
    invoke-virtual {p0}, Lcom/kakaogame/KGResult;->getContent()Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 869
    invoke-virtual {p0}, Lcom/kakaogame/KGResult;->getContent()Ljava/lang/Object;

    move-result-object v4

    instance-of v4, v4, Ljava/util/Map;

    if-eqz v4, :cond_0

    .line 879
    move-object v4, v2

    check-cast v4, Ljava/util/Map;

    const-string v5, "content"

    invoke-virtual {p0}, Lcom/kakaogame/KGResult;->getContent()Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 909
    :cond_0
    move-object v4, v2

    check-cast v4, Ljava/util/Map;

    const-string v5, "message"

    invoke-virtual {p0}, Lcom/kakaogame/KGResult;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v4, v5, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 919
    new-instance p0, Lcom/kakaogame/util/json/JSONArray;

    invoke-direct {p0}, Lcom/kakaogame/util/json/JSONArray;-><init>()V

    .line 929
    invoke-virtual {p0, v3}, Lcom/kakaogame/util/json/JSONArray;->add(Ljava/lang/Object;)Z

    .line 939
    invoke-virtual {p0, p1}, Lcom/kakaogame/util/json/JSONArray;->add(Ljava/lang/Object;)Z

    .line 949
    invoke-virtual {p0, v2}, Lcom/kakaogame/util/json/JSONArray;->add(Ljava/lang/Object;)Z

    .line 959
    invoke-virtual {p0}, Lcom/kakaogame/util/json/JSONArray;->toJSONString()Ljava/lang/String;

    move-result-object p0

    .line 969
    sget-object p1, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/kakaogame/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 989
    invoke-static {p0}, Lcom/kakaogame/util/Base64Util;->getBase64encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 1029
    sget-object p1, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v2, p0

    check-cast v2, Ljava/lang/Throwable;

    invoke-virtual {p1, v0, v1, v2}, Lcom/kakaogame/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1039
    new-instance p1, Lcom/kakaogame/util/json/JSONArray;

    invoke-direct {p1}, Lcom/kakaogame/util/json/JSONArray;-><init>()V

    const/16 v0, 0xfa1

    .line 1049
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/kakaogame/util/json/JSONArray;->add(Ljava/lang/Object;)Z

    .line 1059
    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/kakaogame/util/json/JSONArray;->add(Ljava/lang/Object;)Z

    .line 1069
    new-instance p0, Lcom/kakaogame/util/json/JSONObject;

    invoke-direct {p0}, Lcom/kakaogame/util/json/JSONObject;-><init>()V

    invoke-virtual {p1, p0}, Lcom/kakaogame/util/json/JSONArray;->add(Ljava/lang/Object;)Z

    .line 1079
    invoke-virtual {p1}, Lcom/kakaogame/util/json/JSONArray;->toJSONString()Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0

    .array-data 1
    .end array-data
.end method

.method private final sendResponse(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 16

    .line 1579
    sget-object v0, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const v2, 0x7d7344e5    # 2.0210008E37f

    invoke-static {v2}, Lcom/liapp/y;->حֲݴܳޯ(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v2, p2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const v3, 0x33618383

    invoke-static {v3}, Lcom/liapp/y;->ׯ״ٲ֬ب(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3, v1}, Lcom/kakaogame/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1589
    sget-object v0, Lcom/kakaogame/core/CoreManager;->Companion:Lcom/kakaogame/core/CoreManager$Companion;

    invoke-virtual {v0}, Lcom/kakaogame/core/CoreManager$Companion;->getInstance()Lcom/kakaogame/core/CoreManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kakaogame/core/CoreManager;->isUnity()Z

    move-result v0

    const v1, -0x451a2bff

    invoke-static {v1}, Lcom/liapp/y;->ڳݬ٬ۮݪ(I)Ljava/lang/String;

    move-result-object v1

    const v4, -0x22418c3c    # -1.715441E18f

    invoke-static {v4}, Lcom/liapp/y;->״دش۲ݮ(I)Ljava/lang/String;

    move-result-object v4

    const v6, 0x7d734555

    invoke-static {v6}, Lcom/liapp/y;->حֲݴܳޯ(I)Ljava/lang/String;

    move-result-object v6

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x3

    const v12, 0x543a44ca    # 3.200072E12f

    invoke-static {v12}, Lcom/liapp/y;->׳ֳֳ֬د(I)Ljava/lang/String;

    move-result-object v12

    const v13, 0x543a4402    # 3.2000196E12f

    invoke-static {v13}, Lcom/liapp/y;->׳ֳֳ֬د(I)Ljava/lang/String;

    move-result-object v13

    const v14, 0x5d136e4f

    invoke-static {v14}, Lcom/liapp/y;->ڴݮگ֮ت(I)Ljava/lang/String;

    move-result-object v14

    const v15, 0x5d11cbff

    invoke-static {v15}, Lcom/liapp/y;->ڴݮگ֮ت(I)Ljava/lang/String;

    move-result-object v15

    if-eqz v0, :cond_1

    :try_start_0
    const-string v0, "com.unity3d.player.UnityPlayer"

    const-string v7, "UnitySendMessage"

    .line 1629
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 1639
    sget-object v5, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v3, v8}, Lcom/kakaogame/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    new-array v5, v11, [Ljava/lang/Class;

    .line 1649
    const-class v8, Ljava/lang/String;

    aput-object v8, v5, v10

    const-class v8, Ljava/lang/String;

    aput-object v8, v5, v9

    const-class v8, Ljava/lang/String;

    const/4 v15, 0x2

    aput-object v8, v5, v15

    invoke-virtual {v0, v7, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 1659
    sget-object v5, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v3, v7}, Lcom/kakaogame/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1679
    sget-object v5, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v3, v7}, Lcom/kakaogame/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1689
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v5

    const v7, 0x493e0

    if-le v5, v7, :cond_0

    .line 1699
    invoke-direct/range {p0 .. p2}, Lcom/kakaogame/broker/InterfaceBrokerManager;->getResponseFilePath(Landroid/app/Activity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-array v4, v11, [Ljava/lang/Object;

    aput-object v6, v4, v10

    aput-object v1, v4, v9

    const/4 v1, 0x2

    aput-object v2, v4, v1

    const/4 v1, 0x0

    .line 1709
    invoke-virtual {v0, v1, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 1729
    :cond_0
    invoke-static/range {p2 .. p2}, Lcom/kakaogame/util/Base64Util;->getBase64encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-array v2, v11, [Ljava/lang/Object;

    aput-object v6, v2, v10

    aput-object v4, v2, v9

    const/4 v4, 0x2

    aput-object v1, v2, v4

    const/4 v1, 0x0

    .line 1739
    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 1789
    :goto_0
    sget-object v1, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v3, v0}, Lcom/kakaogame/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_2

    :catch_0
    move-exception v0

    .line 1809
    sget-object v1, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    check-cast v0, Ljava/lang/Throwable;

    invoke-virtual {v1, v3, v2, v0}, Lcom/kakaogame/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2

    .line 1829
    :cond_1
    sget-object v0, Lcom/kakaogame/core/CoreManager;->Companion:Lcom/kakaogame/core/CoreManager$Companion;

    invoke-virtual {v0}, Lcom/kakaogame/core/CoreManager$Companion;->getInstance()Lcom/kakaogame/core/CoreManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kakaogame/core/CoreManager;->isUnreal()Z

    move-result v0

    if-eqz v0, :cond_3

    :try_start_1
    const-string v0, "com.kakaogames.sdk.unreal.MessageSender"

    const-string v5, "UnrealSendMessage"

    .line 1869
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 1879
    sget-object v7, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v3, v8}, Lcom/kakaogame/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    new-array v7, v11, [Ljava/lang/Class;

    .line 1889
    const-class v8, Ljava/lang/String;

    aput-object v8, v7, v10

    const-class v8, Ljava/lang/String;

    aput-object v8, v7, v9

    const-class v8, Ljava/lang/String;

    const/4 v15, 0x2

    aput-object v8, v7, v15

    invoke-virtual {v0, v5, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 1899
    sget-object v5, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v3, v7}, Lcom/kakaogame/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1919
    sget-object v5, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v3, v7}, Lcom/kakaogame/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1929
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v5

    const v7, 0x493e0

    if-le v5, v7, :cond_2

    .line 1939
    invoke-direct/range {p0 .. p2}, Lcom/kakaogame/broker/InterfaceBrokerManager;->getResponseFilePath(Landroid/app/Activity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-array v4, v11, [Ljava/lang/Object;

    aput-object v6, v4, v10

    aput-object v1, v4, v9

    const/4 v1, 0x2

    aput-object v2, v4, v1

    const/4 v1, 0x0

    .line 1949
    invoke-virtual {v0, v1, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_1

    .line 1969
    :cond_2
    invoke-static/range {p2 .. p2}, Lcom/kakaogame/util/Base64Util;->getBase64encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-array v2, v11, [Ljava/lang/Object;

    aput-object v6, v2, v10

    aput-object v4, v2, v9

    const/4 v4, 0x2

    aput-object v1, v2, v4

    const/4 v1, 0x0

    .line 1979
    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 2029
    :goto_1
    sget-object v1, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v3, v0}, Lcom/kakaogame/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception v0

    .line 2049
    sget-object v1, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    check-cast v0, Ljava/lang/Throwable;

    invoke-virtual {v1, v3, v2, v0}, Lcom/kakaogame/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_3
    :goto_2
    return-void

    .array-data 1
    .end array-data
.end method

.method private final setEngine()V
    .locals 1

    .line 649
    sget-object v0, Lcom/kakaogame/core/CoreManager;->Companion:Lcom/kakaogame/core/CoreManager$Companion;

    invoke-virtual {v0}, Lcom/kakaogame/core/CoreManager$Companion;->getInstance()Lcom/kakaogame/core/CoreManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kakaogame/core/CoreManager;->setEngine()V

    return-void

    .array-data 1
    .end array-data
.end method

.method public static final showCustomAlertViewOnUnity(Ljava/lang/String;)V
    .locals 11
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const v0, 0x543a44ca    # 3.200072E12f

    invoke-static {v0}, Lcom/liapp/y;->׳ֳֳ֬د(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x5d136e4f

    invoke-static {v1}, Lcom/liapp/y;->ڴݮگ֮ت(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x5d11cbff

    invoke-static {v2}, Lcom/liapp/y;->ڴݮگ֮ت(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x3361e3bb

    invoke-static {v3}, Lcom/liapp/y;->ׯ״ٲ֬ب(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3169
    sget-object v3, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    const v5, 0x6d0f5a08

    invoke-static {v5}, Lcom/liapp/y;->ٱڳܴڭܩ(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const v5, 0x33618383

    invoke-static {v5}, Lcom/liapp/y;->ׯ״ٲ֬ب(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5, v4}, Lcom/kakaogame/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    const-string v3, "com.unity3d.player.UnityPlayer"

    const-string v4, "UnitySendMessage"

    .line 3209
    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 3219
    sget-object v6, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v5, v2}, Lcom/kakaogame/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x3

    new-array v6, v2, [Ljava/lang/Class;

    .line 3229
    const-class v7, Ljava/lang/String;

    const/4 v8, 0x0

    aput-object v7, v6, v8

    const-class v7, Ljava/lang/String;

    const/4 v9, 0x1

    aput-object v7, v6, v9

    const-class v7, Ljava/lang/String;

    const/4 v10, 0x2

    aput-object v7, v6, v10

    invoke-virtual {v3, v4, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 3239
    sget-object v4, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v5, v1}, Lcom/kakaogame/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    new-array v1, v2, [Ljava/lang/Object;

    const-string v2, "KakaoGameSDK"

    aput-object v2, v1, v8

    const-string v2, "ShowCustomUIUnity"

    aput-object v2, v1, v9

    aput-object p0, v1, v10

    const/4 p0, 0x0

    .line 3249
    invoke-virtual {v3, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 3259
    sget-object v1, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, v5, p0}, Lcom/kakaogame/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 3279
    sget-object v0, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    check-cast p0, Ljava/lang/Throwable;

    invoke-virtual {v0, v5, v1, p0}, Lcom/kakaogame/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void

    .array-data 1
    .end array-data
.end method

.method public static final showCustomAlertViewOnUnreal(Ljava/lang/String;)V
    .locals 11
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const v0, 0x543a44ca    # 3.200072E12f

    invoke-static {v0}, Lcom/liapp/y;->׳ֳֳ֬د(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x5d136e4f

    invoke-static {v1}, Lcom/liapp/y;->ڴݮگ֮ت(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x5d11cbff

    invoke-static {v2}, Lcom/liapp/y;->ڴݮگ֮ت(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x3361e3bb

    invoke-static {v3}, Lcom/liapp/y;->ׯ״ٲ֬ب(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3349
    sget-object v3, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    const v5, -0x224189a4

    invoke-static {v5}, Lcom/liapp/y;->״دش۲ݮ(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const v5, 0x33618383

    invoke-static {v5}, Lcom/liapp/y;->ׯ״ٲ֬ب(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5, v4}, Lcom/kakaogame/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    const-string v3, "com.kakaogames.sdk.unreal.MessageSender"

    const-string v4, "UnrealSendMessage"

    .line 3389
    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 3399
    sget-object v6, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v5, v2}, Lcom/kakaogame/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x3

    new-array v6, v2, [Ljava/lang/Class;

    .line 3409
    const-class v7, Ljava/lang/String;

    const/4 v8, 0x0

    aput-object v7, v6, v8

    const-class v7, Ljava/lang/String;

    const/4 v9, 0x1

    aput-object v7, v6, v9

    const-class v7, Ljava/lang/String;

    const/4 v10, 0x2

    aput-object v7, v6, v10

    invoke-virtual {v3, v4, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 3419
    sget-object v4, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v5, v1}, Lcom/kakaogame/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    new-array v1, v2, [Ljava/lang/Object;

    const-string v2, "KakaoGameSDK"

    aput-object v2, v1, v8

    const-string v2, "ShowCustomUIUnreal"

    aput-object v2, v1, v9

    aput-object p0, v1, v10

    const/4 p0, 0x0

    .line 3429
    invoke-virtual {v3, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 3439
    sget-object v1, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, v5, p0}, Lcom/kakaogame/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 3459
    sget-object v0, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    check-cast p0, Ljava/lang/Throwable;

    invoke-virtual {v0, v5, v1, p0}, Lcom/kakaogame/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void

    .array-data 1
    .end array-data
.end method

.method public static final takeScreenShotOnUnity()V
    .locals 11
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const v0, 0x543a44ca    # 3.200072E12f

    invoke-static {v0}, Lcom/liapp/y;->׳ֳֳ֬د(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x5d136e4f

    invoke-static {v1}, Lcom/liapp/y;->ڴݮگ֮ت(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x5d11cbff

    invoke-static {v2}, Lcom/liapp/y;->ڴݮگ֮ت(I)Ljava/lang/String;

    move-result-object v2

    .line 2819
    sget-object v3, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    const v4, 0x543a432a    # 3.199963E12f

    invoke-static {v4}, Lcom/liapp/y;->׳ֳֳ֬د(I)Ljava/lang/String;

    move-result-object v4

    const v5, 0x33618383

    invoke-static {v5}, Lcom/liapp/y;->ׯ״ٲ֬ب(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5, v4}, Lcom/kakaogame/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    const-string v3, "com.unity3d.player.UnityPlayer"

    const-string v4, "UnitySendMessage"

    .line 2859
    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 2869
    sget-object v6, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v5, v2}, Lcom/kakaogame/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x3

    new-array v6, v2, [Ljava/lang/Class;

    .line 2879
    const-class v7, Ljava/lang/String;

    const/4 v8, 0x0

    aput-object v7, v6, v8

    const-class v7, Ljava/lang/String;

    const/4 v9, 0x1

    aput-object v7, v6, v9

    const-class v7, Ljava/lang/String;

    const/4 v10, 0x2

    aput-object v7, v6, v10

    invoke-virtual {v3, v4, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 2889
    sget-object v4, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v5, v1}, Lcom/kakaogame/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    new-array v1, v2, [Ljava/lang/Object;

    const-string v2, "KakaoGameSDK"

    aput-object v2, v1, v8

    const-string v2, "TakeScreenShotUnity"

    aput-object v2, v1, v9

    const-string v2, ""

    aput-object v2, v1, v10

    const/4 v2, 0x0

    .line 2899
    invoke-virtual {v3, v2, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 2909
    sget-object v2, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v5, v0}, Lcom/kakaogame/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 2929
    sget-object v1, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    check-cast v0, Ljava/lang/Throwable;

    invoke-virtual {v1, v5, v2, v0}, Lcom/kakaogame/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public static final takeScreenShotOnUnreal()V
    .locals 11
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const v0, 0x543a44ca    # 3.200072E12f

    invoke-static {v0}, Lcom/liapp/y;->׳ֳֳ֬د(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x5d136e4f

    invoke-static {v1}, Lcom/liapp/y;->ڴݮگ֮ت(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x5d11cbff

    invoke-static {v2}, Lcom/liapp/y;->ڴݮگ֮ت(I)Ljava/lang/String;

    move-result-object v2

    .line 2999
    sget-object v3, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    const v4, 0x6d0f5fa8

    invoke-static {v4}, Lcom/liapp/y;->ٱڳܴڭܩ(I)Ljava/lang/String;

    move-result-object v4

    const v5, 0x33618383

    invoke-static {v5}, Lcom/liapp/y;->ׯ״ٲ֬ب(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5, v4}, Lcom/kakaogame/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    const-string v3, "com.kakaogames.sdk.unreal.MessageSender"

    const-string v4, "UnrealSendMessage"

    .line 3039
    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 3049
    sget-object v6, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v5, v2}, Lcom/kakaogame/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x3

    new-array v6, v2, [Ljava/lang/Class;

    .line 3059
    const-class v7, Ljava/lang/String;

    const/4 v8, 0x0

    aput-object v7, v6, v8

    const-class v7, Ljava/lang/String;

    const/4 v9, 0x1

    aput-object v7, v6, v9

    const-class v7, Ljava/lang/String;

    const/4 v10, 0x2

    aput-object v7, v6, v10

    invoke-virtual {v3, v4, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 3069
    sget-object v4, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v5, v1}, Lcom/kakaogame/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    new-array v1, v2, [Ljava/lang/Object;

    const-string v2, "KakaoGameSDK"

    aput-object v2, v1, v8

    const-string v2, "TakeScreenShotUnreal"

    aput-object v2, v1, v9

    const-string v2, ""

    aput-object v2, v1, v10

    const/4 v2, 0x0

    .line 3079
    invoke-virtual {v3, v2, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 3089
    sget-object v2, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v5, v0}, Lcom/kakaogame/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 3109
    sget-object v1, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    check-cast v0, Ljava/lang/Throwable;

    invoke-virtual {v1, v5, v2, v0}, Lcom/kakaogame/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void

    nop

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public final requestToUnity(Ljava/lang/String;)V
    .locals 11

    const v0, 0x543a44ca    # 3.200072E12f

    invoke-static {v0}, Lcom/liapp/y;->׳ֳֳ֬د(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x5d136e4f

    invoke-static {v1}, Lcom/liapp/y;->ڴݮگ֮ت(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x5d11cbff

    invoke-static {v2}, Lcom/liapp/y;->ڴݮگ֮ت(I)Ljava/lang/String;

    move-result-object v2

    .line 2439
    sget-object v3, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    const v4, -0x451a2c17

    invoke-static {v4}, Lcom/liapp/y;->ڳݬ٬ۮݪ(I)Ljava/lang/String;

    move-result-object v4

    const v5, 0x33618383

    invoke-static {v5}, Lcom/liapp/y;->ׯ״ٲ֬ب(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5, v4}, Lcom/kakaogame/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    const-string v3, "com.unity3d.player.UnityPlayer"

    const-string v4, "UnitySendMessage"

    .line 2479
    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 2489
    sget-object v6, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v5, v2}, Lcom/kakaogame/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x3

    new-array v6, v2, [Ljava/lang/Class;

    .line 2499
    const-class v7, Ljava/lang/String;

    const/4 v8, 0x0

    aput-object v7, v6, v8

    const-class v7, Ljava/lang/String;

    const/4 v9, 0x1

    aput-object v7, v6, v9

    const-class v7, Ljava/lang/String;

    const/4 v10, 0x2

    aput-object v7, v6, v10

    invoke-virtual {v3, v4, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 2509
    sget-object v4, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v5, v1}, Lcom/kakaogame/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 2529
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {p1}, Lcom/kakaogame/util/Base64Util;->getBase64encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-array v1, v2, [Ljava/lang/Object;

    const-string v2, "KakaoGameSDK"

    aput-object v2, v1, v8

    const-string v2, "RequestToUnity"

    aput-object v2, v1, v9

    aput-object p1, v1, v10

    const/4 p1, 0x0

    .line 2539
    invoke-virtual {v3, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 2549
    sget-object v1, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, v5, p1}, Lcom/kakaogame/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 2569
    sget-object v0, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {v0, v5, v1, p1}, Lcom/kakaogame/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void

    .array-data 1
    .end array-data
.end method

.method public final requestToUnreal(Ljava/lang/String;)V
    .locals 11

    const v0, 0x543a44ca    # 3.200072E12f

    invoke-static {v0}, Lcom/liapp/y;->׳ֳֳ֬د(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x5d136e4f

    invoke-static {v1}, Lcom/liapp/y;->ڴݮگ֮ت(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x5d11cbff

    invoke-static {v2}, Lcom/liapp/y;->ڴݮگ֮ت(I)Ljava/lang/String;

    move-result-object v2

    .line 2629
    sget-object v3, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    const v4, -0x451a2c97

    invoke-static {v4}, Lcom/liapp/y;->ڳݬ٬ۮݪ(I)Ljava/lang/String;

    move-result-object v4

    const v5, 0x33618383

    invoke-static {v5}, Lcom/liapp/y;->ׯ״ٲ֬ب(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5, v4}, Lcom/kakaogame/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    const-string v3, "com.kakaogames.sdk.unreal.MessageSender"

    const-string v4, "UnrealSendMessage"

    .line 2669
    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 2679
    sget-object v6, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v5, v2}, Lcom/kakaogame/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x3

    new-array v6, v2, [Ljava/lang/Class;

    .line 2689
    const-class v7, Ljava/lang/String;

    const/4 v8, 0x0

    aput-object v7, v6, v8

    const-class v7, Ljava/lang/String;

    const/4 v9, 0x1

    aput-object v7, v6, v9

    const-class v7, Ljava/lang/String;

    const/4 v10, 0x2

    aput-object v7, v6, v10

    invoke-virtual {v3, v4, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 2699
    sget-object v4, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v5, v1}, Lcom/kakaogame/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 2719
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {p1}, Lcom/kakaogame/util/Base64Util;->getBase64encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-array v1, v2, [Ljava/lang/Object;

    const-string v2, "KakaoGameSDK"

    aput-object v2, v1, v8

    const-string v2, "RequestToUnreal"

    aput-object v2, v1, v9

    aput-object p1, v1, v10

    const/4 p1, 0x0

    .line 2729
    invoke-virtual {v3, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 2739
    sget-object v1, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, v5, p1}, Lcom/kakaogame/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 2759
    sget-object v0, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {v0, v5, v1, p1}, Lcom/kakaogame/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void

    .array-data 1
    .end array-data
.end method

.method public final sendMessage(Ljava/lang/String;Ljava/util/Map;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const v0, 0x5d10f927

    invoke-static {v0}, Lcom/liapp/y;->ڴݮگ֮ت(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1259
    :try_start_0
    new-instance v0, Lcom/kakaogame/util/json/JSONObject;

    invoke-direct {v0}, Lcom/kakaogame/util/json/JSONObject;-><init>()V

    .line 1269
    move-object v1, v0

    check-cast v1, Ljava/util/Map;

    const-string/jumbo v2, "txNo"

    sget-object v3, Lcom/kakaogame/broker/InterfaceBrokerManager;->requestIdGenerator:Ljava/util/Random;

    invoke-virtual {v3}, Ljava/util/Random;->nextInt()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1279
    new-instance v1, Lcom/kakaogame/util/json/JSONObject;

    invoke-direct {v1}, Lcom/kakaogame/util/json/JSONObject;-><init>()V

    .line 1289
    move-object v2, v1

    check-cast v2, Ljava/util/Map;

    const-string v3, "status"

    const/16 v4, 0xc8

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1299
    move-object v2, v1

    check-cast v2, Ljava/util/Map;

    const-string v3, "desc"

    const-string v4, ""

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p2, :cond_0

    .line 1319
    move-object v2, v1

    check-cast v2, Ljava/util/Map;

    const-string v3, "content"

    invoke-interface {v2, v3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1339
    :cond_0
    new-instance p2, Lcom/kakaogame/util/json/JSONArray;

    invoke-direct {p2}, Lcom/kakaogame/util/json/JSONArray;-><init>()V

    .line 1349
    invoke-virtual {p2, p1}, Lcom/kakaogame/util/json/JSONArray;->add(Ljava/lang/Object;)Z

    .line 1359
    invoke-virtual {p2, v0}, Lcom/kakaogame/util/json/JSONArray;->add(Ljava/lang/Object;)Z

    .line 1369
    invoke-virtual {p2, v1}, Lcom/kakaogame/util/json/JSONArray;->add(Ljava/lang/Object;)Z

    .line 1379
    invoke-virtual {p2}, Lcom/kakaogame/util/json/JSONArray;->toJSONString()Ljava/lang/String;

    move-result-object p1

    .line 1389
    sget-object p2, Lcom/kakaogame/core/CoreManager;->Companion:Lcom/kakaogame/core/CoreManager$Companion;

    invoke-virtual {p2}, Lcom/kakaogame/core/CoreManager$Companion;->getInstance()Lcom/kakaogame/core/CoreManager;

    move-result-object p2

    invoke-virtual {p2}, Lcom/kakaogame/core/CoreManager;->getActivity()Landroid/app/Activity;

    move-result-object p2

    .line 1399
    invoke-direct {p0, p2, p1}, Lcom/kakaogame/broker/InterfaceBrokerManager;->sendResponse(Landroid/app/Activity;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1419
    sget-object p2, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    check-cast p1, Ljava/lang/Throwable;

    const v1, 0x33618383

    invoke-static {v1}, Lcom/liapp/y;->ׯ״ٲ֬ب(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1, v0, p1}, Lcom/kakaogame/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void

    nop

    .array-data 1
    .end array-data
.end method
