.class final Lcom/kakaogame/KGFriendLeaderboard$ScoreComparator;
.super Ljava/lang/Object;
.source "KGFriendLeaderboard.kt"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kakaogame/KGFriendLeaderboard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ScoreComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/kakaogame/KGLeaderboard$KGRankingInfo;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0003\u0008\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u0011\u0008\u0000\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\u0018\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\u00022\u0006\u0010\n\u001a\u00020\u0002H\u0016R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/kakaogame/KGFriendLeaderboard$ScoreComparator;",
        "Ljava/util/Comparator;",
        "Lcom/kakaogame/KGLeaderboard$KGRankingInfo;",
        "ascending",
        "",
        "<init>",
        "(Z)V",
        "compare",
        "",
        "lhs",
        "rhs",
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
.field private final ascending:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 0

    .line 4219
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/kakaogame/KGFriendLeaderboard$ScoreComparator;->ascending:Z

    return-void

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public compare(Lcom/kakaogame/KGLeaderboard$KGRankingInfo;Lcom/kakaogame/KGLeaderboard$KGRankingInfo;)I
    .locals 5

    const v0, -0x451eef1f

    invoke-static {v0}, Lcom/liapp/y;->ڳݬ٬ۮݪ(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const v0, -0x22454904

    invoke-static {v0}, Lcom/liapp/y;->״دش۲ݮ(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4239
    invoke-virtual {p2}, Lcom/kakaogame/KGLeaderboard$KGRankingInfo;->getScore()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/4 v1, -0x1

    if-nez v0, :cond_0

    return v1

    .line 4269
    :cond_0
    iget-boolean v0, p0, Lcom/kakaogame/KGFriendLeaderboard$ScoreComparator;->ascending:Z

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 4279
    invoke-virtual {p1}, Lcom/kakaogame/KGLeaderboard$KGRankingInfo;->getScore()J

    move-result-wide v3

    invoke-virtual {p2}, Lcom/kakaogame/KGLeaderboard$KGRankingInfo;->getScore()J

    move-result-wide p1

    cmp-long p1, v3, p1

    if-gez p1, :cond_2

    goto :goto_0

    .line 4339
    :cond_1
    invoke-virtual {p1}, Lcom/kakaogame/KGLeaderboard$KGRankingInfo;->getScore()J

    move-result-wide v3

    invoke-virtual {p2}, Lcom/kakaogame/KGLeaderboard$KGRankingInfo;->getScore()J

    move-result-wide p1

    cmp-long p1, v3, p1

    if-lez p1, :cond_2

    goto :goto_0

    :cond_2
    move v1, v2

    :goto_0
    return v1

    nop

    .array-data 1
    .end array-data
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 4219
    check-cast p1, Lcom/kakaogame/KGLeaderboard$KGRankingInfo;

    check-cast p2, Lcom/kakaogame/KGLeaderboard$KGRankingInfo;

    invoke-virtual {p0, p1, p2}, Lcom/kakaogame/KGFriendLeaderboard$ScoreComparator;->compare(Lcom/kakaogame/KGLeaderboard$KGRankingInfo;Lcom/kakaogame/KGLeaderboard$KGRankingInfo;)I

    move-result p1

    return p1

    nop

    .array-data 1
    .end array-data
.end method
