.class public final Lcom/kakaogame/KGLeaderboard$KGRankingResponse;
.super Ljava/lang/Object;
.source "KGLeaderboard.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kakaogame/KGLeaderboard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "KGRankingResponse"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kakaogame/KGLeaderboard$KGRankingResponse$RankingComparator;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nKGLeaderboard.kt\nKotlin\n*S Kotlin\n*F\n+ 1 KGLeaderboard.kt\ncom/kakaogame/KGLeaderboard$KGRankingResponse\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,799:1\n1557#2:800\n1628#2,3:801\n*S KotlinDebug\n*F\n+ 1 KGLeaderboard.kt\ncom/kakaogame/KGLeaderboard$KGRankingResponse\n*L\n793#1:800\n793#1:801,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001:\u0001\u0016B\u001b\u0008\u0000\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u000c\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00020\n0\tR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\n0\tX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u000c\u001a\u00020\r8F\u00a2\u0006\u0006\u001a\u0004\u0008\u000e\u0010\u000fR\u0011\u0010\u0010\u001a\u00020\r8F\u00a2\u0006\u0006\u001a\u0004\u0008\u0011\u0010\u000fR\u0011\u0010\u0012\u001a\u00020\u00138F\u00a2\u0006\u0006\u001a\u0004\u0008\u0014\u0010\u0015\u00a8\u0006\u0017"
    }
    d2 = {
        "Lcom/kakaogame/KGLeaderboard$KGRankingResponse;",
        "",
        "object",
        "Lcom/kakaogame/util/json/JSONObject;",
        "subkey",
        "",
        "<init>",
        "(Lcom/kakaogame/util/json/JSONObject;Ljava/lang/String;)V",
        "rankingInfos",
        "",
        "Lcom/kakaogame/KGLeaderboard$KGRankingInfo;",
        "getRankingInfos",
        "totalPlayerCount",
        "",
        "getTotalPlayerCount",
        "()I",
        "seasonSeq",
        "getSeasonSeq",
        "sortOrder",
        "Lcom/kakaogame/KGLeaderboard$KGRankingSortOrder;",
        "getSortOrder",
        "()Lcom/kakaogame/KGLeaderboard$KGRankingSortOrder;",
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

.field private rankingInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Lcom/kakaogame/KGLeaderboard$KGRankingInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/kakaogame/util/json/JSONObject;Ljava/lang/String;)V
    .locals 3

    const v0, 0x6d0b9d50

    invoke-static {v0}, Lcom/liapp/y;->ٱڳܴڭܩ(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7559
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/kakaogame/KGLeaderboard$KGRankingResponse;->object:Lcom/kakaogame/util/json/JSONObject;

    const v0, -0x451eee07

    invoke-static {v0}, Lcom/liapp/y;->ڳݬ٬ۮݪ(I)Ljava/lang/String;

    move-result-object v0

    .line 7929
    invoke-virtual {p1, v0}, Lcom/kakaogame/util/json/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/kakaogame/util/json/JSONArray;

    if-eqz p1, :cond_1

    .line 7939
    check-cast p1, Ljava/lang/Iterable;

    .line 8009
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p1, v1}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v0, Ljava/util/Collection;

    .line 8019
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 7949
    new-instance v2, Lcom/kakaogame/KGLeaderboard$KGRankingInfo;

    check-cast v1, Lcom/kakaogame/util/json/JSONObject;

    invoke-direct {v2, v1, p2}, Lcom/kakaogame/KGLeaderboard$KGRankingInfo;-><init>(Lcom/kakaogame/util/json/JSONObject;Ljava/lang/String;)V

    .line 8029
    invoke-interface {v0, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 8039
    :cond_0
    check-cast v0, Ljava/util/List;

    goto :goto_1

    .line 7959
    :cond_1
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    move-object v0, p1

    check-cast v0, Ljava/util/List;

    .line 7939
    :goto_1
    iput-object v0, p0, Lcom/kakaogame/KGLeaderboard$KGRankingResponse;->rankingInfos:Ljava/util/List;

    .line 7969
    new-instance p1, Lcom/kakaogame/KGLeaderboard$KGRankingResponse$RankingComparator;

    invoke-direct {p1, p0}, Lcom/kakaogame/KGLeaderboard$KGRankingResponse$RankingComparator;-><init>(Lcom/kakaogame/KGLeaderboard$KGRankingResponse;)V

    check-cast p1, Ljava/util/Comparator;

    invoke-static {v0, p1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

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
            "Lcom/kakaogame/KGLeaderboard$KGRankingInfo;",
            ">;"
        }
    .end annotation

    .line 7649
    iget-object v0, p0, Lcom/kakaogame/KGLeaderboard$KGRankingResponse;->rankingInfos:Ljava/util/List;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final getSeasonSeq()I
    .locals 3

    .line 7769
    iget-object v0, p0, Lcom/kakaogame/KGLeaderboard$KGRankingResponse;->object:Lcom/kakaogame/util/json/JSONObject;

    const v1, 0x543e8322

    invoke-static {v1}, Lcom/liapp/y;->׳ֳֳ֬د(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/kakaogame/util/json/JSONUtil;->getInt(Lcom/kakaogame/util/json/JSONObject;Ljava/lang/String;I)I

    move-result v0

    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final getSortOrder()Lcom/kakaogame/KGLeaderboard$KGRankingSortOrder;
    .locals 4

    .line 7789
    sget-object v0, Lcom/kakaogame/KGLeaderboard$KGRankingSortOrder;->Companion:Lcom/kakaogame/KGLeaderboard$KGRankingSortOrder$Companion;

    iget-object v1, p0, Lcom/kakaogame/KGLeaderboard$KGRankingResponse;->object:Lcom/kakaogame/util/json/JSONObject;

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

.method public final getTotalPlayerCount()I
    .locals 3

    .line 7749
    iget-object v0, p0, Lcom/kakaogame/KGLeaderboard$KGRankingResponse;->object:Lcom/kakaogame/util/json/JSONObject;

    const v1, 0x7d7782cd

    invoke-static {v1}, Lcom/liapp/y;->حֲݴܳޯ(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/kakaogame/util/json/JSONUtil;->getInt(Lcom/kakaogame/util/json/JSONObject;Ljava/lang/String;I)I

    move-result v0

    return v0

    nop

    .array-data 1
    .end array-data
.end method
