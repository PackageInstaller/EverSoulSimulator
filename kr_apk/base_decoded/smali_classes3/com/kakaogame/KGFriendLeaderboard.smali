.class public final Lcom/kakaogame/KGFriendLeaderboard;
.super Ljava/lang/Object;
.source "KGFriendLeaderboard.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kakaogame/KGFriendLeaderboard$KGFriendRankingInfo;,
        Lcom/kakaogame/KGFriendLeaderboard$KGFriendRankingResponse;,
        Lcom/kakaogame/KGFriendLeaderboard$ScoreComparator;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nKGFriendLeaderboard.kt\nKotlin\n*S Kotlin\n*F\n+ 1 KGFriendLeaderboard.kt\ncom/kakaogame/KGFriendLeaderboard\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,441:1\n1#2:442\n774#3:443\n865#3,2:444\n*S KotlinDebug\n*F\n+ 1 KGFriendLeaderboard.kt\ncom/kakaogame/KGFriendLeaderboard\n*L\n169#1:443\n169#1:444,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000J\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010 \n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0004\u0008\u00c6\u0002\u0018\u00002\u00020\u0001:\u0003\u001e\u001f B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0006\u0010\u0007\u001a\u00020\u0008J$\u0010\t\u001a\u00020\u00082\u0008\u0010\n\u001a\u0004\u0018\u00010\u00052\u0010\u0010\u000b\u001a\u000c\u0012\u0006\u0012\u0004\u0018\u00010\r\u0018\u00010\u000cH\u0007J$\u0010\u000e\u001a\u00020\u00082\u0008\u0010\n\u001a\u0004\u0018\u00010\u00052\u0010\u0010\u000b\u001a\u000c\u0012\u0006\u0012\u0004\u0018\u00010\r\u0018\u00010\u000cH\u0007J4\u0010\u000f\u001a\u00020\u00082\u000e\u0010\u0010\u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u00112\u0008\u0010\n\u001a\u0004\u0018\u00010\u00052\u0010\u0010\u000b\u001a\u000c\u0012\u0006\u0012\u0004\u0018\u00010\r\u0018\u00010\u000cH\u0007J4\u0010\u0012\u001a\u00020\u00082\u000e\u0010\u0010\u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u00112\u0008\u0010\n\u001a\u0004\u0018\u00010\u00052\u0010\u0010\u000b\u001a\u000c\u0012\u0006\u0012\u0004\u0018\u00010\r\u0018\u00010\u000cH\u0007J\"\u0010\t\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\r0\u00132\u0008\u0010\n\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0014\u001a\u00020\u0015H\u0002J2\u0010\u000f\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\r0\u00132\u000e\u0010\u0016\u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u00112\u0008\u0010\n\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0014\u001a\u00020\u0015H\u0002J.\u0010\u0017\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\r0\u00132\u000c\u0010\u0010\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u00112\u0006\u0010\n\u001a\u00020\u00052\u0006\u0010\u0014\u001a\u00020\u0015H\u0002J\u0008\u0010\u0018\u001a\u00020\u0008H\u0002J \u0010\u0019\u001a\u00020\u00082\u000e\u0010\u001a\u001a\n\u0012\u0004\u0012\u00020\u001b\u0018\u00010\u00112\u0006\u0010\u001c\u001a\u00020\u001dH\u0002R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0005X\u0082T\u00a2\u0006\u0002\n\u0000\u00a8\u0006!"
    }
    d2 = {
        "Lcom/kakaogame/KGFriendLeaderboard;",
        "",
        "<init>",
        "()V",
        "TAG",
        "",
        "CLASS_NAME_KEY",
        "initialize",
        "",
        "loadFriendRankings",
        "leaderboardId",
        "callback",
        "Lcom/kakaogame/KGResultCallback;",
        "Lcom/kakaogame/KGFriendLeaderboard$KGFriendRankingResponse;",
        "loadLastSeasonFriendRankings",
        "loadPlayersRankings",
        "playerIds",
        "",
        "loadLastSeasonPlayersRankings",
        "Lcom/kakaogame/KGResult;",
        "seasonSequence",
        "",
        "idList",
        "loadPlayersRankingsImpl",
        "initInterfaceBroker",
        "setRankings",
        "rankingInfos",
        "Lcom/kakaogame/KGFriendLeaderboard$KGFriendRankingInfo;",
        "ascending",
        "",
        "KGFriendRankingResponse",
        "KGFriendRankingInfo",
        "ScoreComparator",
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
.field private static final CLASS_NAME_KEY:Ljava/lang/String; = "KGFriendLeaderboard"

.field public static final INSTANCE:Lcom/kakaogame/KGFriendLeaderboard;

.field private static final TAG:Ljava/lang/String; = "KGFriendLeaderboard"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/kakaogame/KGFriendLeaderboard;

    invoke-direct {v0}, Lcom/kakaogame/KGFriendLeaderboard;-><init>()V

    sput-object v0, Lcom/kakaogame/KGFriendLeaderboard;->INSTANCE:Lcom/kakaogame/KGFriendLeaderboard;

    return-void

    .array-data 1
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .line 389
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void

    .array-data 1
    .end array-data
.end method

.method public static final synthetic access$loadFriendRankings(Lcom/kakaogame/KGFriendLeaderboard;Ljava/lang/String;I)Lcom/kakaogame/KGResult;
    .locals 0

    .line 389
    invoke-direct {p0, p1, p2}, Lcom/kakaogame/KGFriendLeaderboard;->loadFriendRankings(Ljava/lang/String;I)Lcom/kakaogame/KGResult;

    move-result-object p0

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static final synthetic access$loadPlayersRankings(Lcom/kakaogame/KGFriendLeaderboard;Ljava/util/List;Ljava/lang/String;I)Lcom/kakaogame/KGResult;
    .locals 0

    .line 389
    invoke-direct {p0, p1, p2, p3}, Lcom/kakaogame/KGFriendLeaderboard;->loadPlayersRankings(Ljava/util/List;Ljava/lang/String;I)Lcom/kakaogame/KGResult;

    move-result-object p0

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method private final initInterfaceBroker()V
    .locals 2

    .line 2109
    new-instance v0, Lcom/kakaogame/KGFriendLeaderboard$initInterfaceBroker$1;

    invoke-direct {v0}, Lcom/kakaogame/KGFriendLeaderboard$initInterfaceBroker$1;-><init>()V

    check-cast v0, Lcom/kakaogame/broker/InterfaceBrokerHandler$InterfaceBroker;

    const v1, -0x22455ea4

    invoke-static {v1}, Lcom/liapp/y;->״دش۲ݮ(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/kakaogame/broker/InterfaceBrokerHandler;->registerInterfaceBroker(Ljava/lang/String;Lcom/kakaogame/broker/InterfaceBrokerHandler$InterfaceBroker;)V

    .line 2309
    new-instance v0, Lcom/kakaogame/KGFriendLeaderboard$initInterfaceBroker$2;

    invoke-direct {v0}, Lcom/kakaogame/KGFriendLeaderboard$initInterfaceBroker$2;-><init>()V

    check-cast v0, Lcom/kakaogame/broker/InterfaceBrokerHandler$InterfaceBroker;

    const v1, -0x22455854

    invoke-static {v1}, Lcom/liapp/y;->״دش۲ݮ(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/kakaogame/broker/InterfaceBrokerHandler;->registerInterfaceBroker(Ljava/lang/String;Lcom/kakaogame/broker/InterfaceBrokerHandler$InterfaceBroker;)V

    .line 2509
    new-instance v0, Lcom/kakaogame/KGFriendLeaderboard$initInterfaceBroker$3;

    invoke-direct {v0}, Lcom/kakaogame/KGFriendLeaderboard$initInterfaceBroker$3;-><init>()V

    check-cast v0, Lcom/kakaogame/broker/InterfaceBrokerHandler$InterfaceBroker;

    const v1, 0x7d77924d

    invoke-static {v1}, Lcom/liapp/y;->حֲݴܳޯ(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/kakaogame/broker/InterfaceBrokerHandler;->registerInterfaceBroker(Ljava/lang/String;Lcom/kakaogame/broker/InterfaceBrokerHandler$InterfaceBroker;)V

    .line 2719
    new-instance v0, Lcom/kakaogame/KGFriendLeaderboard$initInterfaceBroker$4;

    invoke-direct {v0}, Lcom/kakaogame/KGFriendLeaderboard$initInterfaceBroker$4;-><init>()V

    check-cast v0, Lcom/kakaogame/broker/InterfaceBrokerHandler$InterfaceBroker;

    const v1, 0x6d0bf1b0

    invoke-static {v1}, Lcom/liapp/y;->ٱڳܴڭܩ(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/kakaogame/broker/InterfaceBrokerHandler;->registerInterfaceBroker(Ljava/lang/String;Lcom/kakaogame/broker/InterfaceBrokerHandler$InterfaceBroker;)V

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method private final loadFriendRankings(Ljava/lang/String;I)Lcom/kakaogame/KGResult;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Lcom/kakaogame/KGResult<",
            "Lcom/kakaogame/KGFriendLeaderboard$KGFriendRankingResponse;",
            ">;"
        }
    .end annotation

    .line 1249
    sget-object v0, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const v2, 0x543eeca2

    invoke-static {v2}, Lcom/liapp/y;->׳ֳֳ֬د(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const v2, 0x6d0b8100

    invoke-static {v2}, Lcom/liapp/y;->ٱڳܴڭܩ(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lcom/kakaogame/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1259
    sget-object v0, Lcom/kakaogame/core/FeatureManager;->INSTANCE:Lcom/kakaogame/core/FeatureManager;

    sget-object v1, Lcom/kakaogame/core/FeatureManager$Feature;->leaderboard:Lcom/kakaogame/core/FeatureManager$Feature;

    invoke-virtual {v0, v1}, Lcom/kakaogame/core/FeatureManager;->isNotSupportedFeature(Lcom/kakaogame/core/FeatureManager$Feature;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1269
    sget-object p1, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    const/16 p2, 0x1389

    invoke-virtual {p1, p2}, Lcom/kakaogame/KGResult$Companion;->getResult(I)Lcom/kakaogame/KGResult;

    move-result-object p1

    return-object p1

    .line 1289
    :cond_0
    move-object v0, p1

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1299
    sget-object p2, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    new-instance v0, Ljava/lang/StringBuilder;

    const v1, 0x2252e736

    invoke-static {v1}, Lcom/liapp/y;->ֲֳگܱޭ(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/16 v0, 0xfa0

    invoke-virtual {p2, v0, p1}, Lcom/kakaogame/KGResult$Companion;->getResult(ILjava/lang/String;)Lcom/kakaogame/KGResult;

    move-result-object p1

    return-object p1

    .line 1329
    :cond_1
    sget-object v0, Lcom/kakaogame/util/Stopwatch;->Companion:Lcom/kakaogame/util/Stopwatch$Companion;

    const v1, 0x7d77ef15

    invoke-static {v1}, Lcom/liapp/y;->حֲݴܳޯ(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kakaogame/util/Stopwatch$Companion;->start(Ljava/lang/String;)Lcom/kakaogame/util/Stopwatch;

    move-result-object v0

    .line 1349
    :try_start_0
    sget-object v1, Lcom/kakaogame/core/CoreManager;->Companion:Lcom/kakaogame/core/CoreManager$Companion;

    invoke-virtual {v1}, Lcom/kakaogame/core/CoreManager$Companion;->getInstance()Lcom/kakaogame/core/CoreManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/kakaogame/core/CoreManager;->isNotAuthorized()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1359
    sget-object p1, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    const/16 p2, 0xbba

    invoke-virtual {p1, p2}, Lcom/kakaogame/KGResult$Companion;->getResult(I)Lcom/kakaogame/KGResult;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1629
    invoke-virtual {v0}, Lcom/kakaogame/util/Stopwatch;->stop()V

    .line 1639
    invoke-virtual {v0}, Lcom/kakaogame/util/Stopwatch;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0}, Lcom/kakaogame/util/Stopwatch;->getDurationMs()J

    move-result-wide v0

    invoke-static {p2, p1, v0, v1}, Lcom/kakaogame/core/KGResultUtil;->writeClientApiCall(Ljava/lang/String;Lcom/kakaogame/KGResult;J)V

    return-object p1

    .line 1379
    :cond_2
    :try_start_1
    sget-object v1, Lcom/kakaogame/KGLocalPlayer;->Companion:Lcom/kakaogame/KGLocalPlayer$Companion;

    invoke-virtual {v1}, Lcom/kakaogame/KGLocalPlayer$Companion;->getCurrentPlayer()Lcom/kakaogame/KGLocalPlayer;

    move-result-object v1

    if-nez v1, :cond_3

    .line 1389
    sget-object p1, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    const-string p2, "local player is null"

    const/16 v1, 0xfa2

    invoke-virtual {p1, v1, p2}, Lcom/kakaogame/KGResult$Companion;->getResult(ILjava/lang/String;)Lcom/kakaogame/KGResult;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1629
    invoke-virtual {v0}, Lcom/kakaogame/util/Stopwatch;->stop()V

    .line 1639
    invoke-virtual {v0}, Lcom/kakaogame/util/Stopwatch;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0}, Lcom/kakaogame/util/Stopwatch;->getDurationMs()J

    move-result-wide v0

    invoke-static {p2, p1, v0, v1}, Lcom/kakaogame/core/KGResultUtil;->writeClientApiCall(Ljava/lang/String;Lcom/kakaogame/KGResult;J)V

    return-object p1

    .line 1399
    :cond_3
    :try_start_2
    sget-object v3, Lcom/kakaogame/KGPlayer;->Companion:Lcom/kakaogame/KGPlayer$Companion;

    invoke-virtual {v3}, Lcom/kakaogame/KGPlayer$Companion;->loadFriendPlayers()Lcom/kakaogame/KGResult;

    move-result-object v3

    .line 1409
    invoke-virtual {v3}, Lcom/kakaogame/KGResult;->isNotSuccess()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1419
    sget-object p1, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    check-cast v3, Ljava/util/Map;

    invoke-virtual {p1, v3}, Lcom/kakaogame/KGResult$Companion;->getResult(Ljava/util/Map;)Lcom/kakaogame/KGResult;

    move-result-object p1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1629
    invoke-virtual {v0}, Lcom/kakaogame/util/Stopwatch;->stop()V

    .line 1639
    invoke-virtual {v0}, Lcom/kakaogame/util/Stopwatch;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0}, Lcom/kakaogame/util/Stopwatch;->getDurationMs()J

    move-result-wide v0

    invoke-static {p2, p1, v0, v1}, Lcom/kakaogame/core/KGResultUtil;->writeClientApiCall(Ljava/lang/String;Lcom/kakaogame/KGResult;J)V

    return-object p1

    .line 1439
    :cond_4
    :try_start_3
    new-instance v4, Ljava/util/LinkedHashMap;

    invoke-direct {v4}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast v4, Ljava/util/Map;

    .line 1449
    invoke-virtual {v3}, Lcom/kakaogame/KGResult;->getContent()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v3, Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/kakaogame/KGPlayer;

    .line 1459
    invoke-virtual {v5}, Lcom/kakaogame/KGPlayer;->getPlayerId()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1479
    :cond_5
    invoke-virtual {v1}, Lcom/kakaogame/KGLocalPlayer;->getPlayerId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v4, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1489
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    check-cast v3, Ljava/util/Collection;

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    check-cast v1, Ljava/util/List;

    .line 1499
    invoke-static {p1, p2, v1}, Lcom/kakaogame/leaderboard/LeaderboardService;->getScores(Ljava/lang/String;ILjava/util/List;)Lcom/kakaogame/KGResult;

    move-result-object p1

    .line 1509
    invoke-virtual {p1}, Lcom/kakaogame/KGResult;->isNotSuccess()Z

    move-result p2

    if-eqz p2, :cond_6

    .line 1519
    sget-object p2, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    check-cast p1, Ljava/util/Map;

    invoke-virtual {p2, p1}, Lcom/kakaogame/KGResult$Companion;->getResult(Ljava/util/Map;)Lcom/kakaogame/KGResult;

    move-result-object p1
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1629
    invoke-virtual {v0}, Lcom/kakaogame/util/Stopwatch;->stop()V

    .line 1639
    invoke-virtual {v0}, Lcom/kakaogame/util/Stopwatch;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0}, Lcom/kakaogame/util/Stopwatch;->getDurationMs()J

    move-result-wide v0

    invoke-static {p2, p1, v0, v1}, Lcom/kakaogame/core/KGResultUtil;->writeClientApiCall(Ljava/lang/String;Lcom/kakaogame/KGResult;J)V

    return-object p1

    .line 1539
    :cond_6
    :try_start_4
    invoke-virtual {p1}, Lcom/kakaogame/KGResult;->getContent()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/kakaogame/util/json/JSONObject;

    if-nez p1, :cond_7

    .line 1549
    sget-object p1, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    const-string p2, "content is null"

    const/16 v1, 0x7d3

    invoke-virtual {p1, v1, p2}, Lcom/kakaogame/KGResult$Companion;->getResult(ILjava/lang/String;)Lcom/kakaogame/KGResult;

    move-result-object p1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1629
    invoke-virtual {v0}, Lcom/kakaogame/util/Stopwatch;->stop()V

    .line 1639
    invoke-virtual {v0}, Lcom/kakaogame/util/Stopwatch;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0}, Lcom/kakaogame/util/Stopwatch;->getDurationMs()J

    move-result-wide v0

    invoke-static {p2, p1, v0, v1}, Lcom/kakaogame/core/KGResultUtil;->writeClientApiCall(Ljava/lang/String;Lcom/kakaogame/KGResult;J)V

    return-object p1

    .line 1559
    :cond_7
    :try_start_5
    new-instance p2, Lcom/kakaogame/KGFriendLeaderboard$KGFriendRankingResponse;

    invoke-direct {p2, p1, v4}, Lcom/kakaogame/KGFriendLeaderboard$KGFriendRankingResponse;-><init>(Lcom/kakaogame/util/json/JSONObject;Ljava/util/Map;)V

    .line 1569
    invoke-virtual {p2}, Lcom/kakaogame/KGFriendLeaderboard$KGFriendRankingResponse;->getRankingInfos()Ljava/util/List;

    move-result-object p1

    invoke-virtual {p2}, Lcom/kakaogame/KGFriendLeaderboard$KGFriendRankingResponse;->getSortOrder$gamesdk_release()Lcom/kakaogame/KGLeaderboard$KGRankingSortOrder;

    move-result-object v1

    sget-object v3, Lcom/kakaogame/KGLeaderboard$KGRankingSortOrder;->ASCENDING:Lcom/kakaogame/KGLeaderboard$KGRankingSortOrder;

    if-ne v1, v3, :cond_8

    const/4 v1, 0x1

    goto :goto_1

    :cond_8
    const/4 v1, 0x0

    :goto_1
    invoke-direct {p0, p1, v1}, Lcom/kakaogame/KGFriendLeaderboard;->setRankings(Ljava/util/List;Z)V

    .line 1579
    sget-object p1, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    invoke-virtual {p1, p2}, Lcom/kakaogame/KGResult$Companion;->getSuccessResult(Ljava/lang/Object;)Lcom/kakaogame/KGResult;

    move-result-object p1
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1629
    invoke-virtual {v0}, Lcom/kakaogame/util/Stopwatch;->stop()V

    .line 1639
    invoke-virtual {v0}, Lcom/kakaogame/util/Stopwatch;->getName()Ljava/lang/String;

    move-result-object p2

    goto :goto_2

    :catchall_0
    move-exception p1

    goto :goto_3

    :catch_0
    move-exception p1

    .line 1599
    :try_start_6
    sget-object p2, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v3, p1

    check-cast v3, Ljava/lang/Throwable;

    invoke-virtual {p2, v2, v1, v3}, Lcom/kakaogame/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1609
    sget-object p2, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    const/16 v1, 0xfa1

    invoke-virtual {p2, v1, p1}, Lcom/kakaogame/KGResult$Companion;->getResult(ILjava/lang/String;)Lcom/kakaogame/KGResult;

    move-result-object p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 1629
    invoke-virtual {v0}, Lcom/kakaogame/util/Stopwatch;->stop()V

    .line 1639
    invoke-virtual {v0}, Lcom/kakaogame/util/Stopwatch;->getName()Ljava/lang/String;

    move-result-object p2

    move-object v1, p1

    check-cast v1, Lcom/kakaogame/KGResult;

    :goto_2
    invoke-virtual {v0}, Lcom/kakaogame/util/Stopwatch;->getDurationMs()J

    move-result-wide v0

    invoke-static {p2, p1, v0, v1}, Lcom/kakaogame/core/KGResultUtil;->writeClientApiCall(Ljava/lang/String;Lcom/kakaogame/KGResult;J)V

    return-object p1

    .line 1629
    :goto_3
    invoke-virtual {v0}, Lcom/kakaogame/util/Stopwatch;->stop()V

    .line 1639
    invoke-virtual {v0}, Lcom/kakaogame/util/Stopwatch;->getName()Ljava/lang/String;

    move-result-object p2

    const/4 v1, 0x0

    move-object v2, v1

    check-cast v2, Lcom/kakaogame/KGResult;

    invoke-virtual {v0}, Lcom/kakaogame/util/Stopwatch;->getDurationMs()J

    move-result-wide v2

    invoke-static {p2, v1, v2, v3}, Lcom/kakaogame/core/KGResultUtil;->writeClientApiCall(Ljava/lang/String;Lcom/kakaogame/KGResult;J)V

    throw p1

    .array-data 1
    .end array-data
.end method

.method public static final loadFriendRankings(Ljava/lang/String;Lcom/kakaogame/KGResultCallback;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/kakaogame/KGResultCallback<",
            "Lcom/kakaogame/KGFriendLeaderboard$KGFriendRankingResponse;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 539
    sget-object v0, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const v2, 0x543eea7a

    invoke-static {v2}, Lcom/liapp/y;->׳ֳֳ֬د(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const v2, 0x6d0b8100

    invoke-static {v2}, Lcom/liapp/y;->ٱڳܴڭܩ(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lcom/kakaogame/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 549
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    invoke-static {v0}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    new-instance v0, Lcom/kakaogame/KGFriendLeaderboard$loadFriendRankings$1;

    const/4 v4, 0x0

    invoke-direct {v0, p0, p1, v4}, Lcom/kakaogame/KGFriendLeaderboard$loadFriendRankings$1;-><init>(Ljava/lang/String;Lcom/kakaogame/KGResultCallback;Lkotlin/coroutines/Continuation;)V

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

.method public static final loadLastSeasonFriendRankings(Ljava/lang/String;Lcom/kakaogame/KGResultCallback;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/kakaogame/KGResultCallback<",
            "Lcom/kakaogame/KGFriendLeaderboard$KGFriendRankingResponse;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 729
    sget-object v0, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const v2, -0x224520cc

    invoke-static {v2}, Lcom/liapp/y;->״دش۲ݮ(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const v2, 0x6d0b8100

    invoke-static {v2}, Lcom/liapp/y;->ٱڳܴڭܩ(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lcom/kakaogame/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 739
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    invoke-static {v0}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    new-instance v0, Lcom/kakaogame/KGFriendLeaderboard$loadLastSeasonFriendRankings$1;

    const/4 v4, 0x0

    invoke-direct {v0, p0, p1, v4}, Lcom/kakaogame/KGFriendLeaderboard$loadLastSeasonFriendRankings$1;-><init>(Ljava/lang/String;Lcom/kakaogame/KGResultCallback;Lkotlin/coroutines/Continuation;)V

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

.method public static final loadLastSeasonPlayersRankings(Ljava/util/List;Ljava/lang/String;Lcom/kakaogame/KGResultCallback;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/kakaogame/KGResultCallback<",
            "Lcom/kakaogame/KGFriendLeaderboard$KGFriendRankingResponse;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 1129
    sget-object v0, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const v2, 0x2252e36e

    invoke-static {v2}, Lcom/liapp/y;->ֲֳگܱޭ(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const v2, 0x7d77eb6d

    invoke-static {v2}, Lcom/liapp/y;->حֲݴܳޯ(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const v2, 0x6d0b8100

    invoke-static {v2}, Lcom/liapp/y;->ٱڳܴڭܩ(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lcom/kakaogame/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1139
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    invoke-static {v0}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    new-instance v0, Lcom/kakaogame/KGFriendLeaderboard$loadLastSeasonPlayersRankings$1;

    const/4 v4, 0x0

    invoke-direct {v0, p0, p1, p2, v4}, Lcom/kakaogame/KGFriendLeaderboard$loadLastSeasonPlayersRankings$1;-><init>(Ljava/util/List;Ljava/lang/String;Lcom/kakaogame/KGResultCallback;Lkotlin/coroutines/Continuation;)V

    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v5, 0x3

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void

    .array-data 1
    .end array-data
.end method

.method private final loadPlayersRankings(Ljava/util/List;Ljava/lang/String;I)Lcom/kakaogame/KGResult;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "I)",
            "Lcom/kakaogame/KGResult<",
            "Lcom/kakaogame/KGFriendLeaderboard$KGFriendRankingResponse;",
            ">;"
        }
    .end annotation

    .line 1689
    sget-object v0, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const v2, 0x5d17cd6f

    invoke-static {v2}, Lcom/liapp/y;->ڴݮگ֮ت(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const v2, -0x22452d94

    invoke-static {v2}, Lcom/liapp/y;->״دش۲ݮ(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const v2, 0x6d0b8100

    invoke-static {v2}, Lcom/liapp/y;->ٱڳܴڭܩ(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lcom/kakaogame/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_3

    .line 1699
    check-cast p1, Ljava/lang/Iterable;

    .line 4439
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    check-cast v2, Ljava/util/Collection;

    .line 4449
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Ljava/lang/String;

    .line 1699
    check-cast v4, Ljava/lang/CharSequence;

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-lez v4, :cond_1

    move v4, v1

    goto :goto_1

    :cond_1
    move v4, v0

    :goto_1
    if-eqz v4, :cond_0

    .line 4449
    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 4459
    :cond_2
    check-cast v2, Ljava/util/List;

    goto :goto_2

    :cond_3
    const/4 v2, 0x0

    .line 1729
    :goto_2
    sget-object p1, Lcom/kakaogame/core/FeatureManager;->INSTANCE:Lcom/kakaogame/core/FeatureManager;

    sget-object v3, Lcom/kakaogame/core/FeatureManager$Feature;->leaderboard:Lcom/kakaogame/core/FeatureManager$Feature;

    invoke-virtual {p1, v3}, Lcom/kakaogame/core/FeatureManager;->isNotSupportedFeature(Lcom/kakaogame/core/FeatureManager$Feature;)Z

    move-result p1

    if-eqz p1, :cond_4

    sget-object p1, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    const/16 p2, 0x1389

    invoke-virtual {p1, p2}, Lcom/kakaogame/KGResult$Companion;->getResult(I)Lcom/kakaogame/KGResult;

    move-result-object p1

    goto/16 :goto_3

    .line 1739
    :cond_4
    move-object p1, p2

    check-cast p1, Ljava/lang/CharSequence;

    if-eqz p1, :cond_5

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-nez p1, :cond_6

    :cond_5
    move v0, v1

    :cond_6
    const/16 p1, 0xfa0

    if-eqz v0, :cond_7

    sget-object p3, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    new-instance v0, Ljava/lang/StringBuilder;

    const v1, 0x2252e736

    invoke-static {v1}, Lcom/liapp/y;->ֲֳگܱޭ(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p1, p2}, Lcom/kakaogame/KGResult$Companion;->getResult(ILjava/lang/String;)Lcom/kakaogame/KGResult;

    move-result-object p1

    goto :goto_3

    :cond_7
    if-nez v2, :cond_8

    .line 1749
    sget-object p2, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    const-string p3, "playerId list is null."

    invoke-virtual {p2, p1, p3}, Lcom/kakaogame/KGResult$Companion;->getResult(ILjava/lang/String;)Lcom/kakaogame/KGResult;

    move-result-object p1

    goto :goto_3

    .line 1759
    :cond_8
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_9

    sget-object p1, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    new-instance p2, Lcom/kakaogame/KGFriendLeaderboard$KGFriendRankingResponse;

    invoke-direct {p2}, Lcom/kakaogame/KGFriendLeaderboard$KGFriendRankingResponse;-><init>()V

    invoke-virtual {p1, p2}, Lcom/kakaogame/KGResult$Companion;->getSuccessResult(Ljava/lang/Object;)Lcom/kakaogame/KGResult;

    move-result-object p1

    goto :goto_3

    .line 1769
    :cond_9
    sget-object p1, Lcom/kakaogame/core/CoreManager;->Companion:Lcom/kakaogame/core/CoreManager$Companion;

    invoke-virtual {p1}, Lcom/kakaogame/core/CoreManager$Companion;->getInstance()Lcom/kakaogame/core/CoreManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/kakaogame/core/CoreManager;->isNotAuthorized()Z

    move-result p1

    if-eqz p1, :cond_a

    sget-object p1, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    const/16 p2, 0xbba

    invoke-virtual {p1, p2}, Lcom/kakaogame/KGResult$Companion;->getResult(I)Lcom/kakaogame/KGResult;

    move-result-object p1

    goto :goto_3

    .line 1779
    :cond_a
    sget-object p1, Lcom/kakaogame/KGLocalPlayer;->Companion:Lcom/kakaogame/KGLocalPlayer$Companion;

    invoke-virtual {p1}, Lcom/kakaogame/KGLocalPlayer$Companion;->getCurrentPlayer()Lcom/kakaogame/KGLocalPlayer;

    move-result-object p1

    if-nez p1, :cond_b

    sget-object p1, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    const/16 p2, 0xfa2

    const-string p3, "local player is null"

    invoke-virtual {p1, p2, p3}, Lcom/kakaogame/KGResult$Companion;->getResult(ILjava/lang/String;)Lcom/kakaogame/KGResult;

    move-result-object p1

    goto :goto_3

    .line 1789
    :cond_b
    invoke-direct {p0, v2, p2, p3}, Lcom/kakaogame/KGFriendLeaderboard;->loadPlayersRankingsImpl(Ljava/util/List;Ljava/lang/String;I)Lcom/kakaogame/KGResult;

    move-result-object p1

    :goto_3
    return-object p1

    nop

    .array-data 1
    .end array-data
.end method

.method public static final loadPlayersRankings(Ljava/util/List;Ljava/lang/String;Lcom/kakaogame/KGResultCallback;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/kakaogame/KGResultCallback<",
            "Lcom/kakaogame/KGFriendLeaderboard$KGFriendRankingResponse;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 929
    sget-object v0, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const v2, 0x3365415b

    invoke-static {v2}, Lcom/liapp/y;->ׯ״ٲ֬ب(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const v2, 0x7d77eb6d

    invoke-static {v2}, Lcom/liapp/y;->حֲݴܳޯ(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const v2, 0x6d0b8100

    invoke-static {v2}, Lcom/liapp/y;->ٱڳܴڭܩ(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lcom/kakaogame/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 939
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    invoke-static {v0}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    new-instance v0, Lcom/kakaogame/KGFriendLeaderboard$loadPlayersRankings$1;

    const/4 v4, 0x0

    invoke-direct {v0, p0, p1, p2, v4}, Lcom/kakaogame/KGFriendLeaderboard$loadPlayersRankings$1;-><init>(Ljava/util/List;Ljava/lang/String;Lcom/kakaogame/KGResultCallback;Lkotlin/coroutines/Continuation;)V

    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v5, 0x3

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void

    .array-data 1
    .end array-data
.end method

.method private final loadPlayersRankingsImpl(Ljava/util/List;Ljava/lang/String;I)Lcom/kakaogame/KGResult;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "I)",
            "Lcom/kakaogame/KGResult<",
            "Lcom/kakaogame/KGFriendLeaderboard$KGFriendRankingResponse;",
            ">;"
        }
    .end annotation

    .line 1849
    sget-object v0, Lcom/kakaogame/util/Stopwatch;->Companion:Lcom/kakaogame/util/Stopwatch$Companion;

    const v1, 0x5d17cf07

    invoke-static {v1}, Lcom/liapp/y;->ڴݮگ֮ت(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kakaogame/util/Stopwatch$Companion;->start(Ljava/lang/String;)Lcom/kakaogame/util/Stopwatch;

    move-result-object v0

    .line 1869
    :try_start_0
    sget-object v1, Lcom/kakaogame/KGPlayer;->Companion:Lcom/kakaogame/KGPlayer$Companion;

    invoke-virtual {v1, p1}, Lcom/kakaogame/KGPlayer$Companion;->loadPlayers(Ljava/util/List;)Lcom/kakaogame/KGResult;

    move-result-object v1

    .line 1879
    invoke-virtual {v1}, Lcom/kakaogame/KGResult;->isNotSuccess()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1889
    sget-object p1, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    check-cast v1, Ljava/util/Map;

    invoke-virtual {p1, v1}, Lcom/kakaogame/KGResult$Companion;->getResult(Ljava/util/Map;)Lcom/kakaogame/KGResult;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2049
    :goto_0
    invoke-virtual {v0}, Lcom/kakaogame/util/Stopwatch;->stop()V

    .line 2059
    invoke-virtual {v0}, Lcom/kakaogame/util/Stopwatch;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0}, Lcom/kakaogame/util/Stopwatch;->getDurationMs()J

    move-result-wide v0

    invoke-static {p2, p1, v0, v1}, Lcom/kakaogame/core/KGResultUtil;->writeClientApiCall(Ljava/lang/String;Lcom/kakaogame/KGResult;J)V

    return-object p1

    .line 1909
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Lcom/kakaogame/KGResult;->getContent()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v1, Ljava/util/Map;

    .line 1919
    invoke-static {p2, p3, p1}, Lcom/kakaogame/leaderboard/LeaderboardService;->getScores(Ljava/lang/String;ILjava/util/List;)Lcom/kakaogame/KGResult;

    move-result-object p1

    .line 1929
    invoke-virtual {p1}, Lcom/kakaogame/KGResult;->isNotSuccess()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 1939
    sget-object p2, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    check-cast p1, Ljava/util/Map;

    invoke-virtual {p2, p1}, Lcom/kakaogame/KGResult$Companion;->getResult(Ljava/util/Map;)Lcom/kakaogame/KGResult;

    move-result-object p1

    goto :goto_0

    .line 1959
    :cond_1
    invoke-virtual {p1}, Lcom/kakaogame/KGResult;->getContent()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/kakaogame/util/json/JSONObject;

    if-nez p1, :cond_2

    .line 1969
    sget-object p1, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    const-string p2, "content is null"

    const/16 p3, 0x7d3

    invoke-virtual {p1, p3, p2}, Lcom/kakaogame/KGResult$Companion;->getResult(ILjava/lang/String;)Lcom/kakaogame/KGResult;

    move-result-object p1

    goto :goto_0

    .line 1979
    :cond_2
    new-instance p2, Lcom/kakaogame/KGFriendLeaderboard$KGFriendRankingResponse;

    invoke-direct {p2, p1, v1}, Lcom/kakaogame/KGFriendLeaderboard$KGFriendRankingResponse;-><init>(Lcom/kakaogame/util/json/JSONObject;Ljava/util/Map;)V

    .line 1989
    invoke-virtual {p2}, Lcom/kakaogame/KGFriendLeaderboard$KGFriendRankingResponse;->getRankingInfos()Ljava/util/List;

    move-result-object p1

    invoke-virtual {p2}, Lcom/kakaogame/KGFriendLeaderboard$KGFriendRankingResponse;->getSortOrder$gamesdk_release()Lcom/kakaogame/KGLeaderboard$KGRankingSortOrder;

    move-result-object p3

    sget-object v1, Lcom/kakaogame/KGLeaderboard$KGRankingSortOrder;->ASCENDING:Lcom/kakaogame/KGLeaderboard$KGRankingSortOrder;

    if-ne p3, v1, :cond_3

    const/4 p3, 0x1

    goto :goto_1

    :cond_3
    const/4 p3, 0x0

    :goto_1
    invoke-direct {p0, p1, p3}, Lcom/kakaogame/KGFriendLeaderboard;->setRankings(Ljava/util/List;Z)V

    .line 1999
    sget-object p1, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    invoke-virtual {p1, p2}, Lcom/kakaogame/KGResult$Companion;->getSuccessResult(Ljava/lang/Object;)Lcom/kakaogame/KGResult;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2049
    invoke-virtual {v0}, Lcom/kakaogame/util/Stopwatch;->stop()V

    .line 2059
    invoke-virtual {v0}, Lcom/kakaogame/util/Stopwatch;->getName()Ljava/lang/String;

    move-result-object p2

    goto :goto_2

    :catchall_0
    move-exception p1

    goto :goto_3

    :catch_0
    move-exception p1

    .line 2019
    :try_start_2
    sget-object p2, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    const-string p3, "KGFriendLeaderboard"

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v2, p1

    check-cast v2, Ljava/lang/Throwable;

    invoke-virtual {p2, p3, v1, v2}, Lcom/kakaogame/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2029
    sget-object p2, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    const/16 p3, 0xfa1

    invoke-virtual {p2, p3, p1}, Lcom/kakaogame/KGResult$Companion;->getResult(ILjava/lang/String;)Lcom/kakaogame/KGResult;

    move-result-object p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2049
    invoke-virtual {v0}, Lcom/kakaogame/util/Stopwatch;->stop()V

    .line 2059
    invoke-virtual {v0}, Lcom/kakaogame/util/Stopwatch;->getName()Ljava/lang/String;

    move-result-object p2

    move-object p3, p1

    check-cast p3, Lcom/kakaogame/KGResult;

    :goto_2
    invoke-virtual {v0}, Lcom/kakaogame/util/Stopwatch;->getDurationMs()J

    move-result-wide v0

    invoke-static {p2, p1, v0, v1}, Lcom/kakaogame/core/KGResultUtil;->writeClientApiCall(Ljava/lang/String;Lcom/kakaogame/KGResult;J)V

    return-object p1

    .line 2049
    :goto_3
    invoke-virtual {v0}, Lcom/kakaogame/util/Stopwatch;->stop()V

    .line 2059
    invoke-virtual {v0}, Lcom/kakaogame/util/Stopwatch;->getName()Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x0

    move-object v1, p3

    check-cast v1, Lcom/kakaogame/KGResult;

    invoke-virtual {v0}, Lcom/kakaogame/util/Stopwatch;->getDurationMs()J

    move-result-wide v0

    invoke-static {p2, p3, v0, v1}, Lcom/kakaogame/core/KGResultUtil;->writeClientApiCall(Ljava/lang/String;Lcom/kakaogame/KGResult;J)V

    throw p1

    .array-data 1
    .end array-data
.end method

.method private final setRankings(Ljava/util/List;Z)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/kakaogame/KGFriendLeaderboard$KGFriendRankingInfo;",
            ">;Z)V"
        }
    .end annotation

    .line 2959
    new-instance v0, Lcom/kakaogame/KGFriendLeaderboard$ScoreComparator;

    invoke-direct {v0, p2}, Lcom/kakaogame/KGFriendLeaderboard$ScoreComparator;-><init>(Z)V

    check-cast v0, Ljava/util/Comparator;

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 2989
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 p2, 0x1

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/kakaogame/KGFriendLeaderboard$KGFriendRankingInfo;

    .line 2999
    invoke-virtual {v1}, Lcom/kakaogame/KGFriendLeaderboard$KGFriendRankingInfo;->getScore()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    const/4 v2, 0x0

    .line 3009
    invoke-virtual {v1, v2}, Lcom/kakaogame/KGFriendLeaderboard$KGFriendRankingInfo;->setRanking(I)V

    goto :goto_0

    :cond_0
    if-nez v0, :cond_1

    .line 3039
    invoke-virtual {v1, p2}, Lcom/kakaogame/KGFriendLeaderboard$KGFriendRankingInfo;->setRanking(I)V

    goto :goto_1

    .line 3059
    :cond_1
    invoke-virtual {v0}, Lcom/kakaogame/KGLeaderboard$KGRankingInfo;->getScore()J

    move-result-wide v2

    invoke-virtual {v1}, Lcom/kakaogame/KGFriendLeaderboard$KGFriendRankingInfo;->getScore()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    .line 3069
    invoke-virtual {v0}, Lcom/kakaogame/KGLeaderboard$KGRankingInfo;->getRank()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/kakaogame/KGFriendLeaderboard$KGFriendRankingInfo;->setRanking(I)V

    goto :goto_1

    .line 3089
    :cond_2
    invoke-virtual {v1, p2}, Lcom/kakaogame/KGFriendLeaderboard$KGFriendRankingInfo;->setRanking(I)V

    .line 3119
    :goto_1
    move-object v0, v1

    check-cast v0, Lcom/kakaogame/KGLeaderboard$KGRankingInfo;

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_3
    return-void

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public final initialize()V
    .locals 0

    .line 429
    invoke-direct {p0}, Lcom/kakaogame/KGFriendLeaderboard;->initInterfaceBroker()V

    return-void

    .array-data 1
    .end array-data
.end method
