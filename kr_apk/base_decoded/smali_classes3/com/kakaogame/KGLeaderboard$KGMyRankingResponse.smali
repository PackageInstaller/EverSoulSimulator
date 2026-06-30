.class public final Lcom/kakaogame/KGLeaderboard$KGMyRankingResponse;
.super Ljava/lang/Object;
.source "KGLeaderboard.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kakaogame/KGLeaderboard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "KGMyRankingResponse"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0005\u0018\u00002\u00020\u0001B\u0019\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0004\u0008\u0006\u0010\u0007R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u0008\u001a\u00020\t8F\u00a2\u0006\u0006\u001a\u0004\u0008\n\u0010\u000bR\u0011\u0010\u000c\u001a\u00020\r8F\u00a2\u0006\u0006\u001a\u0004\u0008\u000e\u0010\u000fR\u0011\u0010\u0010\u001a\u00020\r8F\u00a2\u0006\u0006\u001a\u0004\u0008\u0011\u0010\u000f\u00a8\u0006\u0012"
    }
    d2 = {
        "Lcom/kakaogame/KGLeaderboard$KGMyRankingResponse;",
        "",
        "object",
        "Lcom/kakaogame/util/json/JSONObject;",
        "subkey",
        "",
        "<init>",
        "(Lcom/kakaogame/util/json/JSONObject;Ljava/lang/String;)V",
        "rankingInfo",
        "Lcom/kakaogame/KGLeaderboard$KGRankingInfo;",
        "getRankingInfo",
        "()Lcom/kakaogame/KGLeaderboard$KGRankingInfo;",
        "totalPlayerCount",
        "",
        "getTotalPlayerCount",
        "()I",
        "seasonSeq",
        "getSeasonSeq",
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

.field private final subkey:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/kakaogame/util/json/JSONObject;Ljava/lang/String;)V
    .locals 1

    const v0, 0x6d0b9d50

    invoke-static {v0}, Lcom/liapp/y;->ٱڳܴڭܩ(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7319
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/kakaogame/KGLeaderboard$KGMyRankingResponse;->object:Lcom/kakaogame/util/json/JSONObject;

    iput-object p2, p0, Lcom/kakaogame/KGLeaderboard$KGMyRankingResponse;->subkey:Ljava/lang/String;

    return-void

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public final getRankingInfo()Lcom/kakaogame/KGLeaderboard$KGRankingInfo;
    .locals 3

    .line 7389
    new-instance v0, Lcom/kakaogame/KGLeaderboard$KGRankingInfo;

    iget-object v1, p0, Lcom/kakaogame/KGLeaderboard$KGMyRankingResponse;->object:Lcom/kakaogame/util/json/JSONObject;

    iget-object v2, p0, Lcom/kakaogame/KGLeaderboard$KGMyRankingResponse;->subkey:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/kakaogame/KGLeaderboard$KGRankingInfo;-><init>(Lcom/kakaogame/util/json/JSONObject;Ljava/lang/String;)V

    return-object v0

    .array-data 1
    .end array-data
.end method

.method public final getSeasonSeq()I
    .locals 3

    .line 7499
    iget-object v0, p0, Lcom/kakaogame/KGLeaderboard$KGMyRankingResponse;->object:Lcom/kakaogame/util/json/JSONObject;

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

.method public final getTotalPlayerCount()I
    .locals 3

    .line 7479
    iget-object v0, p0, Lcom/kakaogame/KGLeaderboard$KGMyRankingResponse;->object:Lcom/kakaogame/util/json/JSONObject;

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
