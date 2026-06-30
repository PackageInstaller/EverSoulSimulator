.class public final Lcom/kakaogame/KGFriendLeaderboard$KGFriendRankingResponse$RankingComparator;
.super Ljava/lang/Object;
.source "KGFriendLeaderboard.kt"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kakaogame/KGFriendLeaderboard$KGFriendRankingResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "RankingComparator"
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
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0003\u0008\u0080\u0004\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u0018\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00022\u0006\u0010\u0008\u001a\u00020\u0002H\u0016\u00a8\u0006\t"
    }
    d2 = {
        "Lcom/kakaogame/KGFriendLeaderboard$KGFriendRankingResponse$RankingComparator;",
        "Ljava/util/Comparator;",
        "Lcom/kakaogame/KGLeaderboard$KGRankingInfo;",
        "<init>",
        "(Lcom/kakaogame/KGFriendLeaderboard$KGFriendRankingResponse;)V",
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
.field final synthetic this$0:Lcom/kakaogame/KGFriendLeaderboard$KGFriendRankingResponse;


# direct methods
.method public constructor <init>(Lcom/kakaogame/KGFriendLeaderboard$KGFriendRankingResponse;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 3669
    iput-object p1, p0, Lcom/kakaogame/KGFriendLeaderboard$KGFriendRankingResponse$RankingComparator;->this$0:Lcom/kakaogame/KGFriendLeaderboard$KGFriendRankingResponse;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public compare(Lcom/kakaogame/KGLeaderboard$KGRankingInfo;Lcom/kakaogame/KGLeaderboard$KGRankingInfo;)I
    .locals 3

    const v0, -0x451eef1f

    invoke-static {v0}, Lcom/liapp/y;->ڳݬ٬ۮݪ(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const v0, -0x22454904

    invoke-static {v0}, Lcom/liapp/y;->״دش۲ݮ(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3689
    invoke-virtual {p2}, Lcom/kakaogame/KGLeaderboard$KGRankingInfo;->getRank()I

    move-result v0

    const/4 v1, -0x1

    if-nez v0, :cond_0

    return v1

    .line 3719
    :cond_0
    invoke-virtual {p1}, Lcom/kakaogame/KGLeaderboard$KGRankingInfo;->getRank()I

    move-result v0

    invoke-virtual {p2}, Lcom/kakaogame/KGLeaderboard$KGRankingInfo;->getRank()I

    move-result v2

    if-ge v0, v2, :cond_1

    goto :goto_0

    .line 3739
    :cond_1
    invoke-virtual {p1}, Lcom/kakaogame/KGLeaderboard$KGRankingInfo;->getRank()I

    move-result p1

    invoke-virtual {p2}, Lcom/kakaogame/KGLeaderboard$KGRankingInfo;->getRank()I

    move-result p2

    if-ne p1, p2, :cond_2

    const/4 v1, 0x0

    goto :goto_0

    :cond_2
    const/4 v1, 0x1

    :goto_0
    return v1

    nop

    .array-data 1
    .end array-data
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 3669
    check-cast p1, Lcom/kakaogame/KGLeaderboard$KGRankingInfo;

    check-cast p2, Lcom/kakaogame/KGLeaderboard$KGRankingInfo;

    invoke-virtual {p0, p1, p2}, Lcom/kakaogame/KGFriendLeaderboard$KGFriendRankingResponse$RankingComparator;->compare(Lcom/kakaogame/KGLeaderboard$KGRankingInfo;Lcom/kakaogame/KGLeaderboard$KGRankingInfo;)I

    move-result p1

    return p1

    nop

    .array-data 1
    .end array-data
.end method
