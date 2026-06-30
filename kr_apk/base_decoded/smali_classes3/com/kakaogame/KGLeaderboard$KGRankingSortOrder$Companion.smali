.class public final Lcom/kakaogame/KGLeaderboard$KGRankingSortOrder$Companion;
.super Ljava/lang/Object;
.source "KGLeaderboard.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kakaogame/KGLeaderboard$KGRankingSortOrder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0010\u0010\u0004\u001a\u00020\u00052\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u00a8\u0006\u0008"
    }
    d2 = {
        "Lcom/kakaogame/KGLeaderboard$KGRankingSortOrder$Companion;",
        "",
        "<init>",
        "()V",
        "fromString",
        "Lcom/kakaogame/KGLeaderboard$KGRankingSortOrder;",
        "value",
        "",
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

    .line 6469
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void

    .array-data 1
    .end array-data
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/kakaogame/KGLeaderboard$KGRankingSortOrder$Companion;-><init>()V

    return-void

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public final fromString(Ljava/lang/String;)Lcom/kakaogame/KGLeaderboard$KGRankingSortOrder;
    .locals 2

    const v0, 0x2253e6c6

    invoke-static {v0}, Lcom/liapp/y;->ֲֳگܱޭ(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    .line 6489
    invoke-static {v0, p1, v1}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 6499
    sget-object p1, Lcom/kakaogame/KGLeaderboard$KGRankingSortOrder;->ASCENDING:Lcom/kakaogame/KGLeaderboard$KGRankingSortOrder;

    goto :goto_0

    .line 6519
    :cond_0
    sget-object p1, Lcom/kakaogame/KGLeaderboard$KGRankingSortOrder;->DESCENDING:Lcom/kakaogame/KGLeaderboard$KGRankingSortOrder;

    :goto_0
    return-object p1

    .array-data 1
    .end array-data
.end method
