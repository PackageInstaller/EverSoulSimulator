.class public final Lcom/kakaogame/KGFriendLeaderboard$KGFriendRankingInfo;
.super Lcom/kakaogame/KGLeaderboard$KGRankingInfo;
.source "KGFriendLeaderboard.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kakaogame/KGFriendLeaderboard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "KGFriendRankingInfo"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kakaogame/KGFriendLeaderboard$KGFriendRankingInfo$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u0000 \u000c2\u00020\u0001:\u0001\u000cB\u0011\u0012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u000e\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\tR\u0013\u0010\u0008\u001a\u0004\u0018\u00010\t8F\u00a2\u0006\u0006\u001a\u0004\u0008\n\u0010\u000b\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/kakaogame/KGFriendLeaderboard$KGFriendRankingInfo;",
        "Lcom/kakaogame/KGLeaderboard$KGRankingInfo;",
        "object",
        "Lcom/kakaogame/util/json/JSONObject;",
        "<init>",
        "(Lcom/kakaogame/util/json/JSONObject;)V",
        "setPlayer",
        "",
        "player",
        "Lcom/kakaogame/KGPlayer;",
        "getPlayer",
        "()Lcom/kakaogame/KGPlayer;",
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
.field public static final Companion:Lcom/kakaogame/KGFriendLeaderboard$KGFriendRankingInfo$Companion;

.field private static final KEY_PLAYER:Ljava/lang/String; = "player"

.field private static final serialVersionUID:J = -0x7a8b56435313a9d0L


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/kakaogame/KGFriendLeaderboard$KGFriendRankingInfo$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/kakaogame/KGFriendLeaderboard$KGFriendRankingInfo$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/kakaogame/KGFriendLeaderboard$KGFriendRankingInfo;->Companion:Lcom/kakaogame/KGFriendLeaderboard$KGFriendRankingInfo$Companion;

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public constructor <init>(Lcom/kakaogame/util/json/JSONObject;)V
    .locals 1

    const-string v0, ""

    .line 4029
    invoke-direct {p0, p1, v0}, Lcom/kakaogame/KGLeaderboard$KGRankingInfo;-><init>(Lcom/kakaogame/util/json/JSONObject;Ljava/lang/String;)V

    return-void

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public final getPlayer()Lcom/kakaogame/KGPlayer;
    .locals 1

    const v0, 0x22528e2e

    invoke-static {v0}, Lcom/liapp/y;->ֲֳگܱޭ(I)Ljava/lang/String;

    move-result-object v0

    .line 4139
    invoke-virtual {p0, v0}, Lcom/kakaogame/KGFriendLeaderboard$KGFriendRankingInfo;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kakaogame/KGPlayer;

    return-object v0

    .array-data 1
    .end array-data
.end method

.method public final setPlayer(Lcom/kakaogame/KGPlayer;)V
    .locals 1

    const v0, 0x22528e2e

    invoke-static {v0}, Lcom/liapp/y;->ֲֳگܱޭ(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4049
    invoke-virtual {p0, v0, p1}, Lcom/kakaogame/KGFriendLeaderboard$KGFriendRankingInfo;->put(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    .array-data 1
    .end array-data
.end method
