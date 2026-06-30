.class public final Lcom/kakaogame/KGFriendLeaderboard$KGFriendRankingResponse;
.super Ljava/lang/Object;
.source "KGFriendLeaderboard.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kakaogame/KGFriendLeaderboard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "KGFriendRankingResponse"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kakaogame/KGFriendLeaderboard$KGFriendRankingResponse$RankingComparator;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000B\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0018\u00002\u00020\u0001:\u0001\u001bB\t\u0008\u0010\u00a2\u0006\u0004\u0008\u0002\u0010\u0003B%\u0008\u0010\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0012\u0010\u0006\u001a\u000e\u0012\u0004\u0012\u00020\u0008\u0012\u0004\u0012\u00020\t0\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\nJ\u000e\u0010\u000e\u001a\n\u0012\u0004\u0012\u00020\r\u0018\u00010\u000fJ\u0008\u0010\u001a\u001a\u00020\u0008H\u0016R\u0010\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u000b\u001a\n\u0012\u0004\u0012\u00020\r\u0018\u00010\u000cX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0010\u001a\u00020\u00118@X\u0080\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0012\u0010\u0013R\u0014\u0010\u0014\u001a\u00020\u00118@X\u0080\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0015\u0010\u0013R\u0014\u0010\u0016\u001a\u00020\u00178@X\u0080\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0018\u0010\u0019\u00a8\u0006\u001c"
    }
    d2 = {
        "Lcom/kakaogame/KGFriendLeaderboard$KGFriendRankingResponse;",
        "",
        "<init>",
        "()V",
        "object",
        "Lcom/kakaogame/util/json/JSONObject;",
        "playerMap",
        "",
        "",
        "Lcom/kakaogame/KGPlayer;",
        "(Lcom/kakaogame/util/json/JSONObject;Ljava/util/Map;)V",
        "rankingInfos",
        "",
        "Lcom/kakaogame/KGFriendLeaderboard$KGFriendRankingInfo;",
        "getRankingInfos",
        "",
        "totalPlayerCount",
        "",
        "getTotalPlayerCount$gamesdk_release",
        "()I",
        "seasonSeq",
        "getSeasonSeq$gamesdk_release",
        "sortOrder",
        "Lcom/kakaogame/KGLeaderboard$KGRankingSortOrder;",
        "getSortOrder$gamesdk_release",
        "()Lcom/kakaogame/KGLeaderboard$KGRankingSortOrder;",
        "toString",
        "RankingComparator",
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


# instance fields
.field private final object:Lcom/kakaogame/util/json/JSONObject;

.field private final rankingInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/kakaogame/KGFriendLeaderboard$KGFriendRankingInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 3249
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3229
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lcom/kakaogame/KGFriendLeaderboard$KGFriendRankingResponse;->rankingInfos:Ljava/util/List;

    const/4 v0, 0x0

    .line 3259
    iput-object v0, p0, Lcom/kakaogame/KGFriendLeaderboard$KGFriendRankingResponse;->object:Lcom/kakaogame/util/json/JSONObject;

    return-void

    .array-data 1
    .end array-data
.end method

.method public constructor <init>(Lcom/kakaogame/util/json/JSONObject;Ljava/util/Map;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/kakaogame/util/json/JSONObject;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Lcom/kakaogame/KGPlayer;",
            ">;)V"
        }
    .end annotation

    const v0, 0x6d0b9d50

    invoke-static {v0}, Lcom/liapp/y;->ٱڳܴڭܩ(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const v0, 0x2252891e

    invoke-static {v0}, Lcom/liapp/y;->ֲֳگܱޭ(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3289
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3229
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lcom/kakaogame/KGFriendLeaderboard$KGFriendRankingResponse;->rankingInfos:Ljava/util/List;

    .line 3299
    iput-object p1, p0, Lcom/kakaogame/KGFriendLeaderboard$KGFriendRankingResponse;->object:Lcom/kakaogame/util/json/JSONObject;

    const v0, -0x451eee07

    invoke-static {v0}, Lcom/liapp/y;->ڳݬ٬ۮݪ(I)Ljava/lang/String;

    move-result-object v0

    .line 3309
    invoke-virtual {p1, v0}, Lcom/kakaogame/util/json/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/kakaogame/util/json/JSONArray;

    .line 3319
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object v0, p1

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 3329
    invoke-virtual {p1, v1}, Lcom/kakaogame/util/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/kakaogame/util/json/JSONObject;

    .line 3339
    new-instance v3, Lcom/kakaogame/KGFriendLeaderboard$KGFriendRankingInfo;

    invoke-direct {v3, v2}, Lcom/kakaogame/KGFriendLeaderboard$KGFriendRankingInfo;-><init>(Lcom/kakaogame/util/json/JSONObject;)V

    .line 3349
    invoke-virtual {v3}, Lcom/kakaogame/KGFriendLeaderboard$KGFriendRankingInfo;->getPlayerId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/kakaogame/KGPlayer;

    if-eqz v2, :cond_0

    .line 3369
    invoke-virtual {v3, v2}, Lcom/kakaogame/KGFriendLeaderboard$KGFriendRankingInfo;->setPlayer(Lcom/kakaogame/KGPlayer;)V

    .line 3379
    invoke-virtual {v2}, Lcom/kakaogame/KGPlayer;->isOnline()Z

    move-result v4

    const v5, 0x336525b3

    invoke-static {v5}, Lcom/liapp/y;->ׯ״ٲ֬ب(I)Ljava/lang/String;

    move-result-object v5

    .line 3389
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v5, v4}, Lcom/kakaogame/KGPlayer;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 3409
    :cond_0
    iget-object v2, p0, Lcom/kakaogame/KGFriendLeaderboard$KGFriendRankingResponse;->rankingInfos:Ljava/util/List;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3429
    :cond_1
    iget-object p1, p0, Lcom/kakaogame/KGFriendLeaderboard$KGFriendRankingResponse;->rankingInfos:Ljava/util/List;

    new-instance p2, Lcom/kakaogame/KGFriendLeaderboard$KGFriendRankingResponse$RankingComparator;

    invoke-direct {p2, p0}, Lcom/kakaogame/KGFriendLeaderboard$KGFriendRankingResponse$RankingComparator;-><init>(Lcom/kakaogame/KGFriendLeaderboard$KGFriendRankingResponse;)V

    check-cast p2, Ljava/util/Comparator;

    invoke-static {p1, p2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-void

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public final getRankingInfos()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/kakaogame/KGFriendLeaderboard$KGFriendRankingInfo;",
            ">;"
        }
    .end annotation

    .line 3519
    iget-object v0, p0, Lcom/kakaogame/KGFriendLeaderboard$KGFriendRankingResponse;->rankingInfos:Ljava/util/List;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final getSeasonSeq$gamesdk_release()I
    .locals 3

    .line 3609
    iget-object v0, p0, Lcom/kakaogame/KGFriendLeaderboard$KGFriendRankingResponse;->object:Lcom/kakaogame/util/json/JSONObject;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const v2, 0x543e8322

    invoke-static {v2}, Lcom/liapp/y;->׳ֳֳ֬د(I)Ljava/lang/String;

    move-result-object v2

    .line 3629
    invoke-static {v0, v2, v1}, Lcom/kakaogame/util/json/JSONUtil;->getInt(Lcom/kakaogame/util/json/JSONObject;Ljava/lang/String;I)I

    move-result v1

    :goto_0
    return v1

    .array-data 1
    .end array-data
.end method

.method public final getSortOrder$gamesdk_release()Lcom/kakaogame/KGLeaderboard$KGRankingSortOrder;
    .locals 4

    .line 3649
    sget-object v0, Lcom/kakaogame/KGLeaderboard$KGRankingSortOrder;->Companion:Lcom/kakaogame/KGLeaderboard$KGRankingSortOrder$Companion;

    iget-object v1, p0, Lcom/kakaogame/KGFriendLeaderboard$KGFriendRankingResponse;->object:Lcom/kakaogame/util/json/JSONObject;

    const v2, 0x22528bde

    invoke-static {v2}, Lcom/liapp/y;->ֲֳگܱޭ(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-static {v1, v2, v3}, Lcom/kakaogame/util/json/JSONUtil;->getString(Lcom/kakaogame/util/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kakaogame/KGLeaderboard$KGRankingSortOrder$Companion;->fromString(Ljava/lang/String;)Lcom/kakaogame/KGLeaderboard$KGRankingSortOrder;

    move-result-object v0

    return-object v0

    .array-data 1
    .end array-data
.end method

.method public final getTotalPlayerCount$gamesdk_release()I
    .locals 3

    .line 3569
    iget-object v0, p0, Lcom/kakaogame/KGFriendLeaderboard$KGFriendRankingResponse;->object:Lcom/kakaogame/util/json/JSONObject;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const v2, 0x7d7782cd

    invoke-static {v2}, Lcom/liapp/y;->حֲݴܳޯ(I)Ljava/lang/String;

    move-result-object v2

    .line 3589
    invoke-static {v0, v2, v1}, Lcom/kakaogame/util/json/JSONUtil;->getInt(Lcom/kakaogame/util/json/JSONObject;Ljava/lang/String;I)I

    move-result v1

    :goto_0
    return v1

    .array-data 1
    .end array-data
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 3829
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 3839
    iget-object v1, p0, Lcom/kakaogame/KGFriendLeaderboard$KGFriendRankingResponse;->object:Lcom/kakaogame/util/json/JSONObject;

    if-eqz v1, :cond_0

    const v1, 0x6d0b9f00

    invoke-static {v1}, Lcom/liapp/y;->ٱڳܴڭܩ(I)Ljava/lang/String;

    move-result-object v1

    .line 3849
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 3859
    iget-object v1, p0, Lcom/kakaogame/KGFriendLeaderboard$KGFriendRankingResponse;->object:Lcom/kakaogame/util/json/JSONObject;

    invoke-virtual {v1}, Lcom/kakaogame/util/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_0
    const v1, 0x543e81ba

    invoke-static {v1}, Lcom/liapp/y;->׳ֳֳ֬د(I)Ljava/lang/String;

    move-result-object v1

    .line 3879
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 3899
    :goto_0
    iget-object v1, p0, Lcom/kakaogame/KGFriendLeaderboard$KGFriendRankingResponse;->rankingInfos:Ljava/util/List;

    if-eqz v1, :cond_1

    const v1, 0x7d778325

    invoke-static {v1}, Lcom/liapp/y;->حֲݴܳޯ(I)Ljava/lang/String;

    move-result-object v1

    .line 3909
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 3919
    iget-object v1, p0, Lcom/kakaogame/KGFriendLeaderboard$KGFriendRankingResponse;->rankingInfos:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_1
    const v1, 0x336538fb

    invoke-static {v1}, Lcom/liapp/y;->ׯ״ٲ֬ب(I)Ljava/lang/String;

    move-result-object v1

    .line 3939
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 3959
    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    const v1, -0x451e20f7

    invoke-static {v1}, Lcom/liapp/y;->ڳݬ٬ۮݪ(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0

    .array-data 1
    .end array-data
.end method
