.class public Lcom/kakaogame/KGLeaderboard$KGRankingInfo;
.super Lcom/kakaogame/KGObject;
.source "KGLeaderboard.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kakaogame/KGLeaderboard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "KGRankingInfo"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kakaogame/KGLeaderboard$KGRankingInfo$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nKGLeaderboard.kt\nKotlin\n*S Kotlin\n*F\n+ 1 KGLeaderboard.kt\ncom/kakaogame/KGLeaderboard$KGRankingInfo\n+ 2 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n*L\n1#1,799:1\n126#2:800\n153#2,3:801\n*S KotlinDebug\n*F\n+ 1 KGLeaderboard.kt\ncom/kakaogame/KGLeaderboard$KGRankingInfo\n*L\n695#1:800\n695#1:801,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0008\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\t\n\u0002\u0008\u0003\n\u0002\u0010$\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0003\u0008\u0016\u0018\u0000  2\u00020\u0001:\u0001 B\u001b\u0012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u000e\u0010\u001d\u001a\u00020\u001e2\u0006\u0010\u001f\u001a\u00020\u000eR\u0016\u0010\u0002\u001a\u0004\u0018\u00010\u0003X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\tR\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0011\u0010\n\u001a\u00020\u00058F\u00a2\u0006\u0006\u001a\u0004\u0008\u000b\u0010\u000cR\u0011\u0010\r\u001a\u00020\u000e8F\u00a2\u0006\u0006\u001a\u0004\u0008\u000f\u0010\u0010R\u0011\u0010\u0011\u001a\u00020\u00128F\u00a2\u0006\u0006\u001a\u0004\u0008\u0013\u0010\u0014R\u001f\u0010\u0015\u001a\u0010\u0012\u0004\u0012\u00020\u0005\u0012\u0006\u0012\u0004\u0018\u00010\u00170\u00168F\u00a2\u0006\u0006\u001a\u0004\u0008\u0018\u0010\u0019R\u0011\u0010\u001a\u001a\u00020\u001b8F\u00a2\u0006\u0006\u001a\u0004\u0008\u001a\u0010\u001c\u00a8\u0006!"
    }
    d2 = {
        "Lcom/kakaogame/KGLeaderboard$KGRankingInfo;",
        "Lcom/kakaogame/KGObject;",
        "object",
        "Lcom/kakaogame/util/json/JSONObject;",
        "subkey",
        "",
        "<init>",
        "(Lcom/kakaogame/util/json/JSONObject;Ljava/lang/String;)V",
        "getObject",
        "()Lcom/kakaogame/util/json/JSONObject;",
        "playerId",
        "getPlayerId",
        "()Ljava/lang/String;",
        "rank",
        "",
        "getRank",
        "()I",
        "score",
        "",
        "getScore",
        "()J",
        "rankingProperties",
        "",
        "",
        "getRankingProperties",
        "()Ljava/util/Map;",
        "isLocalPlayer",
        "",
        "()Z",
        "setRanking",
        "",
        "ranking",
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
.field public static final Companion:Lcom/kakaogame/KGLeaderboard$KGRankingInfo$Companion;

.field private static final serialVersionUID:J = 0x145cad8dffe09d9cL


# instance fields
.field private final object:Lcom/kakaogame/util/json/JSONObject;

.field private subkey:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/kakaogame/KGLeaderboard$KGRankingInfo$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/kakaogame/KGLeaderboard$KGRankingInfo$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/kakaogame/KGLeaderboard$KGRankingInfo;->Companion:Lcom/kakaogame/KGLeaderboard$KGRankingInfo$Companion;

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public constructor <init>(Lcom/kakaogame/util/json/JSONObject;Ljava/lang/String;)V
    .locals 1

    .line 6609
    move-object v0, p1

    check-cast v0, Ljava/util/Map;

    invoke-direct {p0, v0}, Lcom/kakaogame/KGObject;-><init>(Ljava/util/Map;)V

    iput-object p1, p0, Lcom/kakaogame/KGLeaderboard$KGRankingInfo;->object:Lcom/kakaogame/util/json/JSONObject;

    const-string p1, ""

    .line 6619
    iput-object p1, p0, Lcom/kakaogame/KGLeaderboard$KGRankingInfo;->subkey:Ljava/lang/String;

    .line 7229
    move-object p1, p2

    check-cast p1, Ljava/lang/CharSequence;

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    if-nez p1, :cond_2

    .line 7239
    iput-object p2, p0, Lcom/kakaogame/KGLeaderboard$KGRankingInfo;->subkey:Ljava/lang/String;

    :cond_2
    return-void

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public getObject()Lcom/kakaogame/util/json/JSONObject;
    .locals 1

    .line 6609
    iget-object v0, p0, Lcom/kakaogame/KGLeaderboard$KGRankingInfo;->object:Lcom/kakaogame/util/json/JSONObject;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public bridge synthetic getObject()Ljava/util/Map;
    .locals 1

    .line 6609
    invoke-virtual {p0}, Lcom/kakaogame/KGLeaderboard$KGRankingInfo;->getObject()Lcom/kakaogame/util/json/JSONObject;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final getPlayerId()Ljava/lang/String;
    .locals 3

    .line 6699
    invoke-virtual {p0}, Lcom/kakaogame/KGLeaderboard$KGRankingInfo;->getObject()Lcom/kakaogame/util/json/JSONObject;

    move-result-object v0

    const v1, -0x224509cc

    invoke-static {v1}, Lcom/liapp/y;->״دش۲ݮ(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/kakaogame/util/json/JSONUtil;->getString(Lcom/kakaogame/util/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .array-data 1
    .end array-data
.end method

.method public final getRank()I
    .locals 3

    .line 6779
    invoke-virtual {p0}, Lcom/kakaogame/KGLeaderboard$KGRankingInfo;->getObject()Lcom/kakaogame/util/json/JSONObject;

    move-result-object v0

    const v1, 0x2253e756

    invoke-static {v1}, Lcom/liapp/y;->ֲֳگܱޭ(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/kakaogame/util/json/JSONUtil;->getInt(Lcom/kakaogame/util/json/JSONObject;Ljava/lang/String;I)I

    move-result v0

    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final getRankingProperties()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    const v0, 0x22500986

    invoke-static {v0}, Lcom/liapp/y;->ֲֳگܱޭ(I)Ljava/lang/String;

    move-result-object v0

    .line 6949
    invoke-virtual {p0, v0}, Lcom/kakaogame/KGLeaderboard$KGRankingInfo;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kakaogame/util/json/JSONObject;

    if-eqz v0, :cond_1

    .line 6959
    check-cast v0, Ljava/util/Map;

    .line 8009
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v1, Ljava/util/Collection;

    .line 8019
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 6969
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v3, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    .line 8029
    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 8039
    :cond_0
    check-cast v1, Ljava/util/List;

    .line 6959
    check-cast v1, Ljava/lang/Iterable;

    .line 6979
    invoke-static {v1}, Lkotlin/collections/MapsKt;->toMap(Ljava/lang/Iterable;)Ljava/util/Map;

    move-result-object v0

    if-nez v0, :cond_2

    :cond_1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    check-cast v0, Ljava/util/Map;

    :cond_2
    return-object v0

    .array-data 1
    .end array-data
.end method

.method public final getScore()J
    .locals 3

    .line 6859
    invoke-virtual {p0}, Lcom/kakaogame/KGLeaderboard$KGRankingInfo;->getObject()Lcom/kakaogame/util/json/JSONObject;

    move-result-object v0

    const v1, 0x7d77f77d

    invoke-static {v1}, Lcom/liapp/y;->حֲݴܳޯ(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/kakaogame/util/json/JSONUtil;->getInt(Lcom/kakaogame/util/json/JSONObject;Ljava/lang/String;I)I

    move-result v0

    int-to-long v0, v0

    return-wide v0

    .array-data 1
    .end array-data
.end method

.method public final isLocalPlayer()Z
    .locals 3

    .line 7089
    iget-object v0, p0, Lcom/kakaogame/KGLeaderboard$KGRankingInfo;->subkey:Ljava/lang/String;

    check-cast v0, Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    sget-object v0, Lcom/kakaogame/core/CoreManager;->Companion:Lcom/kakaogame/core/CoreManager$Companion;

    invoke-virtual {v0}, Lcom/kakaogame/core/CoreManager$Companion;->getInstance()Lcom/kakaogame/core/CoreManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kakaogame/core/CoreManager;->getPlayerId()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/kakaogame/core/CoreManager;->Companion:Lcom/kakaogame/core/CoreManager$Companion;

    invoke-virtual {v2}, Lcom/kakaogame/core/CoreManager$Companion;->getInstance()Lcom/kakaogame/core/CoreManager;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const v2, -0x224427d4

    invoke-static {v2}, Lcom/liapp/y;->״دش۲ݮ(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/kakaogame/KGLeaderboard$KGRankingInfo;->subkey:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 7099
    :goto_1
    invoke-virtual {p0}, Lcom/kakaogame/KGLeaderboard$KGRankingInfo;->getPlayerId()Ljava/lang/String;

    move-result-object v2

    .line 7109
    invoke-static {v2, v0, v1}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0

    .array-data 1
    .end array-data
.end method

.method public final setRanking(I)V
    .locals 2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 7149
    invoke-virtual {p0}, Lcom/kakaogame/KGLeaderboard$KGRankingInfo;->getObject()Lcom/kakaogame/util/json/JSONObject;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v0, Ljava/util/Map;

    const v1, 0x2253e756

    invoke-static {v1}, Lcom/liapp/y;->ֲֳگܱޭ(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .array-data 1
    .end array-data
.end method
