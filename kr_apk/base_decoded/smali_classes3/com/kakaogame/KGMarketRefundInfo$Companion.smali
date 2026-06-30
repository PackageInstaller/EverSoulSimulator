.class public final Lcom/kakaogame/KGMarketRefundInfo$Companion;
.super Ljava/lang/Object;
.source "KGMarketRefundInfo.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kakaogame/KGMarketRefundInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nKGMarketRefundInfo.kt\nKotlin\n*S Kotlin\n*F\n+ 1 KGMarketRefundInfo.kt\ncom/kakaogame/KGMarketRefundInfo$Companion\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,188:1\n1557#2:189\n1628#2,3:190\n*S KotlinDebug\n*F\n+ 1 KGMarketRefundInfo.kt\ncom/kakaogame/KGMarketRefundInfo$Companion\n*L\n178#1:189\n178#1:190,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0006\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0006\u0010\u000b\u001a\u00020\u000cJ\u0008\u0010\r\u001a\u00020\u000cH\u0002J \u0010\u000e\u001a\u00020\u000c2\u0016\u0010\u000f\u001a\u0012\u0012\u000c\u0012\n\u0012\u0004\u0012\u00020\u0012\u0018\u00010\u0011\u0018\u00010\u0010H\u0007J\u0016\u0010\u000e\u001a\u0010\u0012\u000c\u0012\n\u0012\u0004\u0012\u00020\u0012\u0018\u00010\u00110\u0013H\u0002R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082T\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u0006\u001a\u00020\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008\"\u0004\u0008\t\u0010\n\u00a8\u0006\u0014"
    }
    d2 = {
        "Lcom/kakaogame/KGMarketRefundInfo$Companion;",
        "",
        "<init>",
        "()V",
        "TAG",
        "",
        "getListUri",
        "getGetListUri",
        "()Ljava/lang/String;",
        "setGetListUri",
        "(Ljava/lang/String;)V",
        "initialize",
        "",
        "initInterfaceBroker",
        "loadMarketRefundInfoList",
        "callback",
        "Lcom/kakaogame/KGResultCallback;",
        "",
        "Lcom/kakaogame/KGMarketRefundInfo;",
        "Lcom/kakaogame/KGResult;",
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


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1319
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void

    .array-data 1
    .end array-data
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/kakaogame/KGMarketRefundInfo$Companion;-><init>()V

    return-void

    .array-data 1
    .end array-data
.end method

.method public static final synthetic access$loadMarketRefundInfoList(Lcom/kakaogame/KGMarketRefundInfo$Companion;)Lcom/kakaogame/KGResult;
    .locals 0

    .line 1319
    invoke-direct {p0}, Lcom/kakaogame/KGMarketRefundInfo$Companion;->loadMarketRefundInfoList()Lcom/kakaogame/KGResult;

    move-result-object p0

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method private final initInterfaceBroker()V
    .locals 2

    .line 1399
    new-instance v0, Lcom/kakaogame/KGMarketRefundInfo$Companion$initInterfaceBroker$1;

    invoke-direct {v0}, Lcom/kakaogame/KGMarketRefundInfo$Companion$initInterfaceBroker$1;-><init>()V

    check-cast v0, Lcom/kakaogame/broker/InterfaceBrokerHandler$InterfaceBroker;

    const v1, -0x2243ea14

    invoke-static {v1}, Lcom/liapp/y;->״دش۲ݮ(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/kakaogame/broker/InterfaceBrokerHandler;->registerInterfaceBroker(Ljava/lang/String;Lcom/kakaogame/broker/InterfaceBrokerHandler$InterfaceBroker;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method private final loadMarketRefundInfoList()Lcom/kakaogame/KGResult;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/kakaogame/KGResult<",
            "Ljava/util/List<",
            "Lcom/kakaogame/KGMarketRefundInfo;",
            ">;>;"
        }
    .end annotation

    .line 1699
    :try_start_0
    new-instance v0, Lcom/kakaogame/server/ServerRequest;

    invoke-virtual {p0}, Lcom/kakaogame/KGMarketRefundInfo$Companion;->getGetListUri()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/kakaogame/server/ServerRequest;-><init>(Ljava/lang/String;)V

    const-string v1, "appId"

    .line 1709
    sget-object v2, Lcom/kakaogame/core/CoreManager;->Companion:Lcom/kakaogame/core/CoreManager$Companion;

    invoke-virtual {v2}, Lcom/kakaogame/core/CoreManager$Companion;->getInstance()Lcom/kakaogame/core/CoreManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/kakaogame/core/CoreManager;->getConfiguration()Lcom/kakaogame/config/Configuration;

    move-result-object v2

    invoke-virtual {v2}, Lcom/kakaogame/config/Configuration;->getAppId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/kakaogame/server/ServerRequest;->putBody(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "playerId"

    .line 1719
    sget-object v2, Lcom/kakaogame/core/CoreManager;->Companion:Lcom/kakaogame/core/CoreManager$Companion;

    invoke-virtual {v2}, Lcom/kakaogame/core/CoreManager$Companion;->getInstance()Lcom/kakaogame/core/CoreManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/kakaogame/core/CoreManager;->getPlayerId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/kakaogame/server/ServerRequest;->putBody(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 1729
    invoke-static {v0, v3, v1, v2}, Lcom/kakaogame/server/ServerService;->requestServer$default(Lcom/kakaogame/server/ServerRequest;IILjava/lang/Object;)Lcom/kakaogame/server/ServerResult;

    move-result-object v0

    .line 1739
    invoke-virtual {v0}, Lcom/kakaogame/server/ServerResult;->isNotSuccess()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1749
    sget-object v1, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    check-cast v0, Ljava/util/Map;

    invoke-virtual {v1, v0}, Lcom/kakaogame/KGResult$Companion;->getResult(Ljava/util/Map;)Lcom/kakaogame/KGResult;

    move-result-object v0

    return-object v0

    .line 1769
    :cond_0
    invoke-virtual {v0}, Lcom/kakaogame/server/ServerResult;->getContent()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kakaogame/util/json/JSONObject;

    .line 1779
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const-string v1, "marketRefundList"

    invoke-virtual {v0, v1}, Lcom/kakaogame/util/json/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kakaogame/util/json/JSONArray;

    if-eqz v0, :cond_2

    .line 1789
    check-cast v0, Ljava/lang/Iterable;

    .line 1899
    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {v0, v2}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v1, Ljava/util/Collection;

    .line 1909
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 1799
    new-instance v3, Lcom/kakaogame/KGMarketRefundInfo;

    check-cast v2, Lcom/kakaogame/util/json/JSONObject;

    check-cast v2, Ljava/util/Map;

    invoke-direct {v3, v2}, Lcom/kakaogame/KGMarketRefundInfo;-><init>(Ljava/util/Map;)V

    .line 1919
    invoke-interface {v1, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1929
    :cond_1
    check-cast v1, Ljava/util/List;

    goto :goto_1

    .line 1809
    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v1, v0

    check-cast v1, Ljava/util/List;

    .line 1819
    :goto_1
    sget-object v0, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    invoke-virtual {v0, v1}, Lcom/kakaogame/KGResult$Companion;->getSuccessResult(Ljava/lang/Object;)Lcom/kakaogame/KGResult;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 1839
    sget-object v1, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v3, v0

    check-cast v3, Ljava/lang/Throwable;

    const v4, 0x54383f9a

    invoke-static {v4}, Lcom/liapp/y;->׳ֳֳ֬د(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4, v2, v3}, Lcom/kakaogame/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1849
    sget-object v1, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    const/16 v2, 0xfa1

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/kakaogame/KGResult$Companion;->getResult(ILjava/lang/String;)Lcom/kakaogame/KGResult;

    move-result-object v0

    :goto_2
    return-object v0

    nop

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public final getGetListUri()Ljava/lang/String;
    .locals 1

    .line 1339
    invoke-static {}, Lcom/kakaogame/KGMarketRefundInfo;->access$getGetListUri$cp()Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final initialize()V
    .locals 0

    .line 1359
    invoke-direct {p0}, Lcom/kakaogame/KGMarketRefundInfo$Companion;->initInterfaceBroker()V

    return-void

    .array-data 1
    .end array-data
.end method

.method public final loadMarketRefundInfoList(Lcom/kakaogame/KGResultCallback;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/kakaogame/KGResultCallback<",
            "Ljava/util/List<",
            "Lcom/kakaogame/KGMarketRefundInfo;",
            ">;>;)V"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 1549
    sget-object v0, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    const v1, 0x2254347e

    invoke-static {v1}, Lcom/liapp/y;->ֲֳگܱޭ(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x54383f9a

    invoke-static {v2}, Lcom/liapp/y;->׳ֳֳ֬د(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lcom/kakaogame/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_0

    .line 1569
    sget-object p1, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    const v0, 0x2254375e

    invoke-static {v0}, Lcom/liapp/y;->ֲֳگܱޭ(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Lcom/kakaogame/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 1599
    :cond_0
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    invoke-static {v0}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    new-instance v0, Lcom/kakaogame/KGMarketRefundInfo$Companion$loadMarketRefundInfoList$1;

    const/4 v4, 0x0

    invoke-direct {v0, p1, v4}, Lcom/kakaogame/KGMarketRefundInfo$Companion$loadMarketRefundInfoList$1;-><init>(Lcom/kakaogame/KGResultCallback;Lkotlin/coroutines/Continuation;)V

    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v5, 0x3

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public final setGetListUri(Ljava/lang/String;)V
    .locals 1

    const v0, 0x3365ef8b

    invoke-static {v0}, Lcom/liapp/y;->ׯ״ٲ֬ب(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1339
    invoke-static {p1}, Lcom/kakaogame/KGMarketRefundInfo;->access$setGetListUri$cp(Ljava/lang/String;)V

    return-void

    .array-data 1
    .end array-data
.end method
