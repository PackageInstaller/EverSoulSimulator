.class public final Lcom/kakaogame/KGSNSShare$KGJoinerCount;
.super Lcom/kakaogame/KGObject;
.source "KGSNSShare.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kakaogame/KGSNSShare;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "KGJoinerCount"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kakaogame/KGSNSShare$KGJoinerCount$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0006\u0018\u0000 \u000e2\u00020\u0001:\u0001\u000eB\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u0006\u0010\u0006\u001a\u00020\u0007R\u0011\u0010\u0008\u001a\u00020\t8F\u00a2\u0006\u0006\u001a\u0004\u0008\n\u0010\u000bR\u0011\u0010\u000c\u001a\u00020\t8F\u00a2\u0006\u0006\u001a\u0004\u0008\r\u0010\u000b\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcom/kakaogame/KGSNSShare$KGJoinerCount;",
        "Lcom/kakaogame/KGObject;",
        "joinerCount",
        "",
        "<init>",
        "(J)V",
        "hasNewJoiner",
        "",
        "newJoinerCount",
        "",
        "getNewJoinerCount",
        "()I",
        "totalJoinerCount",
        "getTotalJoinerCount",
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
.field public static final Companion:Lcom/kakaogame/KGSNSShare$KGJoinerCount$Companion;

.field private static final KEY_HAS_NEW_JOINER:Ljava/lang/String; = "hasNewJoiner"

.field private static final KEY_NEW_JOINER_COUNT:Ljava/lang/String; = "newJoinerCount"

.field private static final KEY_TOTAL_JOINER_COUNT:Ljava/lang/String; = "totalJoinerCount"

.field private static final TAG:Ljava/lang/String; = "KGJoinerCount"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/kakaogame/KGSNSShare$KGJoinerCount$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/kakaogame/KGSNSShare$KGJoinerCount$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/kakaogame/KGSNSShare$KGJoinerCount;->Companion:Lcom/kakaogame/KGSNSShare$KGJoinerCount$Companion;

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public constructor <init>(J)V
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 8919
    invoke-direct {p0, v0, v1, v0}, Lcom/kakaogame/KGObject;-><init>(Ljava/util/Map;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 9259
    sget-object v0, Lcom/kakaogame/core/CoreManager;->Companion:Lcom/kakaogame/core/CoreManager$Companion;

    invoke-virtual {v0}, Lcom/kakaogame/core/CoreManager$Companion;->getInstance()Lcom/kakaogame/core/CoreManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kakaogame/core/CoreManager;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 9269
    sget-object v2, Lcom/kakaogame/core/CoreManager;->Companion:Lcom/kakaogame/core/CoreManager$Companion;

    invoke-virtual {v2}, Lcom/kakaogame/core/CoreManager$Companion;->getInstance()Lcom/kakaogame/core/CoreManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/kakaogame/core/CoreManager;->getPlayerId()Ljava/lang/String;

    move-result-object v2

    .line 9279
    invoke-static {v0, v2}, Lcom/kakaogame/invite/InviteDataManager;->loadPlayerInvitationCount(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v2

    sub-long v2, p1, v2

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const v0, 0x6d0dab90

    invoke-static {v0}, Lcom/liapp/y;->ٱڳܴڭܩ(I)Ljava/lang/String;

    move-result-object v0

    .line 9339
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/kakaogame/KGSNSShare$KGJoinerCount;->put(Ljava/lang/String;Ljava/lang/Object;)V

    const v0, -0x22437fdc

    invoke-static {v0}, Lcom/liapp/y;->״دش۲ݮ(I)Ljava/lang/String;

    move-result-object v0

    .line 9349
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/kakaogame/KGSNSShare$KGJoinerCount;->put(Ljava/lang/String;Ljava/lang/Object;)V

    const v0, 0x7d76140d

    invoke-static {v0}, Lcom/liapp/y;->حֲݴܳޯ(I)Ljava/lang/String;

    move-result-object v0

    .line 9359
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/kakaogame/KGSNSShare$KGJoinerCount;->put(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public final getNewJoinerCount()I
    .locals 1

    const v0, -0x22437fdc

    invoke-static {v0}, Lcom/liapp/y;->״دش۲ݮ(I)Ljava/lang/String;

    move-result-object v0

    .line 9079
    invoke-virtual {p0, v0}, Lcom/kakaogame/KGSNSShare$KGJoinerCount;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final getTotalJoinerCount()I
    .locals 1

    const v0, 0x7d76140d

    invoke-static {v0}, Lcom/liapp/y;->حֲݴܳޯ(I)Ljava/lang/String;

    move-result-object v0

    .line 9159
    invoke-virtual {p0, v0}, Lcom/kakaogame/KGSNSShare$KGJoinerCount;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final hasNewJoiner()Z
    .locals 2

    const v0, 0x6d0dab90

    invoke-static {v0}, Lcom/liapp/y;->ٱڳܴڭܩ(I)Ljava/lang/String;

    move-result-object v0

    .line 8989
    invoke-virtual {p0, v0}, Lcom/kakaogame/KGSNSShare$KGJoinerCount;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const v1, 0x3364b48b

    invoke-static {v1}, Lcom/liapp/y;->ׯ״ٲ֬ب(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    .array-data 1
    .end array-data
.end method
