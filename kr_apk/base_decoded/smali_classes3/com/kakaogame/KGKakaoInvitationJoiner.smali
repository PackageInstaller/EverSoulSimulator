.class public final Lcom/kakaogame/KGKakaoInvitationJoiner;
.super Lcom/kakaogame/KGObject;
.source "KGKakaoInvitationJoiner.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kakaogame/KGKakaoInvitationJoiner$Companion;,
        Lcom/kakaogame/KGKakaoInvitationJoiner$KGKakaoInvitationRewardState;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010\t\n\u0002\u0008\u0005\u0018\u0000 \u001b2\u00020\u0001:\u0002\u001a\u001bB\u0019\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\u0006\u0010\u0007R\u0013\u0010\u0002\u001a\u0004\u0018\u00010\u00038F\u00a2\u0006\u0006\u001a\u0004\u0008\u0008\u0010\tR\u0013\u0010\n\u001a\u0004\u0018\u00010\u000b8F\u00a2\u0006\u0006\u001a\u0004\u0008\u000c\u0010\rR\u0011\u0010\u000e\u001a\u00020\u000f8F\u00a2\u0006\u0006\u001a\u0004\u0008\u0010\u0010\u0011R\u0013\u0010\u0012\u001a\u0004\u0018\u00010\u000b8F\u00a2\u0006\u0006\u001a\u0004\u0008\u0013\u0010\rR\u0011\u0010\u0014\u001a\u00020\u000f8F\u00a2\u0006\u0006\u001a\u0004\u0008\u0015\u0010\u0011R\u0011\u0010\u0016\u001a\u00020\u00178F\u00a2\u0006\u0006\u001a\u0004\u0008\u0018\u0010\u0019\u00a8\u0006\u001c"
    }
    d2 = {
        "Lcom/kakaogame/KGKakaoInvitationJoiner;",
        "Lcom/kakaogame/KGObject;",
        "player",
        "Lcom/kakaogame/KGPlayer;",
        "state",
        "Lcom/kakaogame/game/model/InvitationState;",
        "<init>",
        "(Lcom/kakaogame/KGPlayer;Lcom/kakaogame/game/model/InvitationState;)V",
        "getPlayer",
        "()Lcom/kakaogame/KGPlayer;",
        "hostRewardCode",
        "",
        "getHostRewardCode",
        "()Ljava/lang/String;",
        "hostRewardState",
        "Lcom/kakaogame/KGKakaoInvitationJoiner$KGKakaoInvitationRewardState;",
        "getHostRewardState",
        "()Lcom/kakaogame/KGKakaoInvitationJoiner$KGKakaoInvitationRewardState;",
        "joinRewardCode",
        "getJoinRewardCode",
        "joinRewardState",
        "getJoinRewardState",
        "joinTime",
        "",
        "getJoinTime",
        "()J",
        "KGKakaoInvitationRewardState",
        "Companion",
        "idp_kakao_release"
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
.field private static final CLASS_NAME_KEY:Ljava/lang/String; = "KGKakaoInvitationJoiner"

.field public static final Companion:Lcom/kakaogame/KGKakaoInvitationJoiner$Companion;

.field private static final KEY_HOST_REWARD_CODE:Ljava/lang/String; = "hostRewardCode"

.field private static final KEY_HOST_REWARD_STATE:Ljava/lang/String; = "hostRewardState"

.field private static final KEY_JOIN_REWARD_CODE:Ljava/lang/String; = "joinRewardCode"

.field private static final KEY_JOIN_REWARD_STATE:Ljava/lang/String; = "joinRewardState"

.field private static final KEY_JOIN_TIME:Ljava/lang/String; = "joinTime"

.field private static final KEY_PLAYER:Ljava/lang/String; = "player"

.field private static final TAG:Ljava/lang/String; = "KGKakaoInvitationJoiner"

.field private static final serialVersionUID:J = -0x2f6fbe45b17df044L


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/kakaogame/KGKakaoInvitationJoiner$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/kakaogame/KGKakaoInvitationJoiner$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/kakaogame/KGKakaoInvitationJoiner;->Companion:Lcom/kakaogame/KGKakaoInvitationJoiner$Companion;

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method private constructor <init>(Lcom/kakaogame/KGPlayer;Lcom/kakaogame/game/model/InvitationState;)V
    .locals 7

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 289
    invoke-direct {p0, v0, v1, v0}, Lcom/kakaogame/KGObject;-><init>(Ljava/util/Map;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const v0, 0x22528e2e

    invoke-static {v0}, Lcom/liapp/y;->ֲֳگܱޭ(I)Ljava/lang/String;

    move-result-object v0

    .line 2059
    invoke-virtual {p0, v0, p1}, Lcom/kakaogame/KGKakaoInvitationJoiner;->put(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p1, "hostRewardCode"

    .line 2069
    invoke-virtual {p2}, Lcom/kakaogame/game/model/InvitationState;->getSenderReward()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/kakaogame/KGKakaoInvitationJoiner;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 2079
    invoke-virtual {p2}, Lcom/kakaogame/game/model/InvitationState;->getSenderRewardState()Ljava/lang/String;

    move-result-object p1

    .line 2089
    invoke-static {}, Lcom/kakaogame/KGKakaoInvitationJoiner$KGKakaoInvitationRewardState;->values()[Lcom/kakaogame/KGKakaoInvitationJoiner$KGKakaoInvitationRewardState;

    move-result-object v0

    array-length v2, v0

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_1

    aget-object v5, v0, v4

    .line 2099
    invoke-virtual {v5}, Lcom/kakaogame/KGKakaoInvitationJoiner$KGKakaoInvitationRewardState;->getCode()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, p1, v1}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_0

    const v6, -0x451f0def

    invoke-static {v6}, Lcom/liapp/y;->ڳݬ٬ۮݪ(I)Ljava/lang/String;

    move-result-object v6

    .line 2109
    invoke-virtual {v5}, Lcom/kakaogame/KGKakaoInvitationJoiner$KGKakaoInvitationRewardState;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v6, v5}, Lcom/kakaogame/KGKakaoInvitationJoiner;->put(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    const-string p1, "joinRewardCode"

    .line 2139
    invoke-virtual {p2}, Lcom/kakaogame/game/model/InvitationState;->getReceiverReward()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/kakaogame/KGKakaoInvitationJoiner;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 2149
    invoke-virtual {p2}, Lcom/kakaogame/game/model/InvitationState;->getReceiverRewardState()Ljava/lang/String;

    move-result-object p1

    .line 2159
    invoke-static {}, Lcom/kakaogame/KGKakaoInvitationJoiner$KGKakaoInvitationRewardState;->values()[Lcom/kakaogame/KGKakaoInvitationJoiner$KGKakaoInvitationRewardState;

    move-result-object v0

    array-length v2, v0

    :goto_1
    if-ge v3, v2, :cond_3

    aget-object v4, v0, v3

    .line 2169
    invoke-virtual {v4}, Lcom/kakaogame/KGKakaoInvitationJoiner$KGKakaoInvitationRewardState;->getCode()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, p1, v1}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_2

    const v5, -0x451f0c77

    invoke-static {v5}, Lcom/liapp/y;->ڳݬ٬ۮݪ(I)Ljava/lang/String;

    move-result-object v5

    .line 2179
    invoke-virtual {v4}, Lcom/kakaogame/KGKakaoInvitationJoiner$KGKakaoInvitationRewardState;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v5, v4}, Lcom/kakaogame/KGKakaoInvitationJoiner;->put(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 2209
    :cond_3
    invoke-virtual {p2}, Lcom/kakaogame/game/model/InvitationState;->getCreatedAt()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/kakaogame/kakao/KakaoUtil;->parseInvitataionDateForJoiner(Ljava/lang/String;)J

    move-result-wide p1

    const v0, 0x7d766365

    invoke-static {v0}, Lcom/liapp/y;->حֲݴܳޯ(I)Ljava/lang/String;

    move-result-object v0

    .line 2219
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/kakaogame/KGKakaoInvitationJoiner;->put(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method public synthetic constructor <init>(Lcom/kakaogame/KGPlayer;Lcom/kakaogame/game/model/InvitationState;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/kakaogame/KGKakaoInvitationJoiner;-><init>(Lcom/kakaogame/KGPlayer;Lcom/kakaogame/game/model/InvitationState;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method public static final loadInvitationJoiners(ILcom/kakaogame/KGResultCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/kakaogame/KGResultCallback<",
            "Ljava/util/List<",
            "Lcom/kakaogame/KGKakaoInvitationJoiner;",
            ">;>;)V"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/kakaogame/KGKakaoInvitationJoiner;->Companion:Lcom/kakaogame/KGKakaoInvitationJoiner$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/kakaogame/KGKakaoInvitationJoiner$Companion;->loadInvitationJoiners(ILcom/kakaogame/KGResultCallback;)V

    return-void

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public final getHostRewardCode()Ljava/lang/String;
    .locals 1

    const v0, 0x3364bfeb

    invoke-static {v0}, Lcom/liapp/y;->ׯ״ٲ֬ب(I)Ljava/lang/String;

    move-result-object v0

    .line 439
    invoke-virtual {p0, v0}, Lcom/kakaogame/KGKakaoInvitationJoiner;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0

    .array-data 1
    .end array-data
.end method

.method public final getHostRewardState()Lcom/kakaogame/KGKakaoInvitationJoiner$KGKakaoInvitationRewardState;
    .locals 7

    const v0, -0x451f0def

    invoke-static {v0}, Lcom/liapp/y;->ڳݬ٬ۮݪ(I)Ljava/lang/String;

    move-result-object v0

    .line 529
    invoke-virtual {p0, v0}, Lcom/kakaogame/KGKakaoInvitationJoiner;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 539
    invoke-static {}, Lcom/kakaogame/KGKakaoInvitationJoiner$KGKakaoInvitationRewardState;->values()[Lcom/kakaogame/KGKakaoInvitationJoiner$KGKakaoInvitationRewardState;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    .line 549
    invoke-virtual {v4}, Lcom/kakaogame/KGKakaoInvitationJoiner$KGKakaoInvitationRewardState;->name()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    invoke-static {v5, v0, v6}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_0

    return-object v4

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 589
    :cond_1
    sget-object v0, Lcom/kakaogame/KGKakaoInvitationJoiner$KGKakaoInvitationRewardState;->NotRewarded:Lcom/kakaogame/KGKakaoInvitationJoiner$KGKakaoInvitationRewardState;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final getJoinRewardCode()Ljava/lang/String;
    .locals 1

    const v0, 0x5d1632ef

    invoke-static {v0}, Lcom/liapp/y;->ڴݮگ֮ت(I)Ljava/lang/String;

    move-result-object v0

    .line 679
    invoke-virtual {p0, v0}, Lcom/kakaogame/KGKakaoInvitationJoiner;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0

    .array-data 1
    .end array-data
.end method

.method public final getJoinRewardState()Lcom/kakaogame/KGKakaoInvitationJoiner$KGKakaoInvitationRewardState;
    .locals 7

    const v0, -0x451f0c77

    invoke-static {v0}, Lcom/liapp/y;->ڳݬ٬ۮݪ(I)Ljava/lang/String;

    move-result-object v0

    .line 769
    invoke-virtual {p0, v0}, Lcom/kakaogame/KGKakaoInvitationJoiner;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 779
    invoke-static {}, Lcom/kakaogame/KGKakaoInvitationJoiner$KGKakaoInvitationRewardState;->values()[Lcom/kakaogame/KGKakaoInvitationJoiner$KGKakaoInvitationRewardState;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    .line 789
    invoke-virtual {v4}, Lcom/kakaogame/KGKakaoInvitationJoiner$KGKakaoInvitationRewardState;->name()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    invoke-static {v5, v0, v6}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_0

    return-object v4

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 829
    :cond_1
    sget-object v0, Lcom/kakaogame/KGKakaoInvitationJoiner$KGKakaoInvitationRewardState;->NotRewarded:Lcom/kakaogame/KGKakaoInvitationJoiner$KGKakaoInvitationRewardState;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final getJoinTime()J
    .locals 2

    const v0, 0x7d766365

    invoke-static {v0}, Lcom/liapp/y;->حֲݴܳޯ(I)Ljava/lang/String;

    move-result-object v0

    .line 919
    invoke-virtual {p0, v0}, Lcom/kakaogame/KGKakaoInvitationJoiner;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const v1, 0x3364b21b

    invoke-static {v1}, Lcom/liapp/y;->ׯ״ٲ֬ب(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0

    .array-data 1
    .end array-data
.end method

.method public final getPlayer()Lcom/kakaogame/KGPlayer;
    .locals 1

    const v0, 0x22528e2e

    invoke-static {v0}, Lcom/liapp/y;->ֲֳگܱޭ(I)Ljava/lang/String;

    move-result-object v0

    .line 359
    invoke-virtual {p0, v0}, Lcom/kakaogame/KGKakaoInvitationJoiner;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kakaogame/KGPlayer;

    return-object v0

    .array-data 1
    .end array-data
.end method
