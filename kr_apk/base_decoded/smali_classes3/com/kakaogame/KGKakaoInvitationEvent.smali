.class public final Lcom/kakaogame/KGKakaoInvitationEvent;
.super Lcom/kakaogame/KGObject;
.source "KGKakaoInvitationEvent.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kakaogame/KGKakaoInvitationEvent$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0002\u0008\u0007\n\u0002\u0010\u000e\n\u0002\u0008\n\u0018\u0000 \u001f2\u00020\u0001:\u0001\u001fB\u0011\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005R\u0011\u0010\u0006\u001a\u00020\u00078F\u00a2\u0006\u0006\u001a\u0004\u0008\u0008\u0010\tR\u0011\u0010\n\u001a\u00020\u000b8F\u00a2\u0006\u0006\u001a\u0004\u0008\n\u0010\u000cR\u0011\u0010\r\u001a\u00020\u000e8F\u00a2\u0006\u0006\u001a\u0004\u0008\u000f\u0010\u0010R\u0011\u0010\u0011\u001a\u00020\u000e8F\u00a2\u0006\u0006\u001a\u0004\u0008\u0012\u0010\u0010R\u0011\u0010\u0013\u001a\u00020\u00078F\u00a2\u0006\u0006\u001a\u0004\u0008\u0014\u0010\tR\u0013\u0010\u0015\u001a\u0004\u0018\u00010\u00168F\u00a2\u0006\u0006\u001a\u0004\u0008\u0017\u0010\u0018R\u0013\u0010\u0019\u001a\u0004\u0018\u00010\u00168F\u00a2\u0006\u0006\u001a\u0004\u0008\u001a\u0010\u0018R\u0013\u0010\u001b\u001a\u0004\u0018\u00010\u00168F\u00a2\u0006\u0006\u001a\u0004\u0008\u001c\u0010\u0018R\u0011\u0010\u001d\u001a\u00020\u00078F\u00a2\u0006\u0006\u001a\u0004\u0008\u001e\u0010\t\u00a8\u0006 "
    }
    d2 = {
        "Lcom/kakaogame/KGKakaoInvitationEvent;",
        "Lcom/kakaogame/KGObject;",
        "event",
        "Lcom/kakaogame/game/model/InvitationEvent;",
        "<init>",
        "(Lcom/kakaogame/game/model/InvitationEvent;)V",
        "eventId",
        "",
        "getEventId",
        "()I",
        "isEventCardEnabled",
        "",
        "()Z",
        "startTime",
        "",
        "getStartTime",
        "()J",
        "finishTime",
        "getFinishTime",
        "maxHostRewardCount",
        "getMaxHostRewardCount",
        "hostRewardCode",
        "",
        "getHostRewardCode",
        "()Ljava/lang/String;",
        "joinRewardCode",
        "getJoinRewardCode",
        "invitationUrl",
        "getInvitationUrl",
        "totalJoinerCount",
        "getTotalJoinerCount",
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
.field private static final CLASS_NAME_KEY:Ljava/lang/String; = "KGKakaoInvitationEvent"

.field public static final Companion:Lcom/kakaogame/KGKakaoInvitationEvent$Companion;

.field private static final KEY_EVENT_CARD_ENABLED:Ljava/lang/String; = "isEventCardEnabled"

.field private static final KEY_EVENT_ID:Ljava/lang/String; = "eventId"

.field private static final KEY_FINISH_TIME:Ljava/lang/String; = "finishTime"

.field private static final KEY_HOST_REWARD_CODE:Ljava/lang/String; = "hostRewardCode"

.field private static final KEY_INVITATION_URL:Ljava/lang/String; = "invitationUrl"

.field private static final KEY_JOIN_REWARD_CODE:Ljava/lang/String; = "joinRewardCode"

.field private static final KEY_MAX_HOST_REWARD_COUNT:Ljava/lang/String; = "maxHostRewardCount"

.field private static final KEY_START_TIME:Ljava/lang/String; = "startTime"

.field private static final KEY_TOTAL_JOINER_COUNT:Ljava/lang/String; = "totalJoinerCount"

.field private static final TAG:Ljava/lang/String; = "KGKakaoInvitationEvent"

.field private static final serialVersionUID:J = 0x40f0fb2cbd234159L


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/kakaogame/KGKakaoInvitationEvent$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/kakaogame/KGKakaoInvitationEvent$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/kakaogame/KGKakaoInvitationEvent;->Companion:Lcom/kakaogame/KGKakaoInvitationEvent$Companion;

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method private constructor <init>(Lcom/kakaogame/game/model/InvitationEvent;)V
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 279
    invoke-direct {p0, v0, v1, v0}, Lcom/kakaogame/KGObject;-><init>(Ljava/util/Map;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 1929
    invoke-virtual {p1}, Lcom/kakaogame/game/model/InvitationEvent;->getId()Ljava/lang/Integer;

    move-result-object v0

    const v1, 0x543f22f2

    invoke-static {v1}, Lcom/liapp/y;->׳ֳֳ֬د(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v0, :cond_0

    .line 1939
    invoke-virtual {p1}, Lcom/kakaogame/game/model/InvitationEvent;->getId()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/kakaogame/KGKakaoInvitationEvent;->put(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    .line 1959
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/kakaogame/KGKakaoInvitationEvent;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1979
    :goto_0
    invoke-virtual {p1}, Lcom/kakaogame/game/model/InvitationEvent;->getEnabled()Ljava/lang/Boolean;

    move-result-object v0

    const v1, -0x2244d09c

    invoke-static {v1}, Lcom/liapp/y;->״دش۲ݮ(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 1989
    invoke-virtual {p1}, Lcom/kakaogame/game/model/InvitationEvent;->getEnabled()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/kakaogame/KGKakaoInvitationEvent;->put(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1

    .line 2009
    :cond_1
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/kakaogame/KGKakaoInvitationEvent;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 2029
    :goto_1
    invoke-virtual {p1}, Lcom/kakaogame/game/model/InvitationEvent;->getStartsAt()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/kakaogame/kakao/KakaoUtil;->parseInvitataionDate(Ljava/lang/String;)J

    move-result-wide v0

    const v3, -0x2244e9cc

    invoke-static {v3}, Lcom/liapp/y;->״دش۲ݮ(I)Ljava/lang/String;

    move-result-object v3

    .line 2039
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p0, v3, v0}, Lcom/kakaogame/KGKakaoInvitationEvent;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 2049
    invoke-virtual {p1}, Lcom/kakaogame/game/model/InvitationEvent;->getEndsAt()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/kakaogame/kakao/KakaoUtil;->parseInvitataionDate(Ljava/lang/String;)J

    move-result-wide v0

    const v3, 0x543f2392

    invoke-static {v3}, Lcom/liapp/y;->׳ֳֳ֬د(I)Ljava/lang/String;

    move-result-object v3

    .line 2059
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p0, v3, v0}, Lcom/kakaogame/KGKakaoInvitationEvent;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 2069
    invoke-virtual {p1}, Lcom/kakaogame/game/model/InvitationEvent;->getMaxSenderRewardsCount()Ljava/lang/Integer;

    move-result-object v0

    const v1, -0x2244d3fc

    invoke-static {v1}, Lcom/liapp/y;->״دش۲ݮ(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v0, :cond_2

    .line 2079
    invoke-virtual {p1}, Lcom/kakaogame/game/model/InvitationEvent;->getMaxSenderRewardsCount()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/kakaogame/KGKakaoInvitationEvent;->put(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_2

    .line 2099
    :cond_2
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/kakaogame/KGKakaoInvitationEvent;->put(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_2
    const v0, 0x3364bfeb

    invoke-static {v0}, Lcom/liapp/y;->ׯ״ٲ֬ب(I)Ljava/lang/String;

    move-result-object v0

    .line 2119
    invoke-virtual {p1}, Lcom/kakaogame/game/model/InvitationEvent;->getSenderReward()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/kakaogame/KGKakaoInvitationEvent;->put(Ljava/lang/String;Ljava/lang/Object;)V

    const v0, 0x5d1632ef

    invoke-static {v0}, Lcom/liapp/y;->ڴݮگ֮ت(I)Ljava/lang/String;

    move-result-object v0

    .line 2129
    invoke-virtual {p1}, Lcom/kakaogame/game/model/InvitationEvent;->getReceiverReward()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/kakaogame/KGKakaoInvitationEvent;->put(Ljava/lang/String;Ljava/lang/Object;)V

    const v0, 0x22531dee

    invoke-static {v0}, Lcom/liapp/y;->ֲֳگܱޭ(I)Ljava/lang/String;

    move-result-object v0

    .line 2139
    invoke-virtual {p1}, Lcom/kakaogame/game/model/InvitationEvent;->getInvitationUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/kakaogame/KGKakaoInvitationEvent;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 2149
    invoke-virtual {p1}, Lcom/kakaogame/game/model/InvitationEvent;->getTotalReceiversCount()Ljava/lang/Integer;

    move-result-object v0

    const v1, 0x7d76140d

    invoke-static {v1}, Lcom/liapp/y;->حֲݴܳޯ(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v0, :cond_3

    .line 2159
    invoke-virtual {p1}, Lcom/kakaogame/game/model/InvitationEvent;->getTotalReceiversCount()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, v1, p1}, Lcom/kakaogame/KGKakaoInvitationEvent;->put(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_3

    .line 2179
    :cond_3
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, v1, p1}, Lcom/kakaogame/KGKakaoInvitationEvent;->put(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_3
    return-void

    .array-data 1
    .end array-data
.end method

.method public synthetic constructor <init>(Lcom/kakaogame/game/model/InvitationEvent;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/kakaogame/KGKakaoInvitationEvent;-><init>(Lcom/kakaogame/game/model/InvitationEvent;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method public static final loadInvitationEvents(Lcom/kakaogame/KGResultCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/kakaogame/KGResultCallback<",
            "Ljava/util/List<",
            "Lcom/kakaogame/KGKakaoInvitationEvent;",
            ">;>;)V"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/kakaogame/KGKakaoInvitationEvent;->Companion:Lcom/kakaogame/KGKakaoInvitationEvent$Companion;

    invoke-virtual {v0, p0}, Lcom/kakaogame/KGKakaoInvitationEvent$Companion;->loadInvitationEvents(Lcom/kakaogame/KGResultCallback;)V

    return-void

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public final getEventId()I
    .locals 2

    const v0, 0x543f22f2

    invoke-static {v0}, Lcom/liapp/y;->׳ֳֳ֬د(I)Ljava/lang/String;

    move-result-object v0

    .line 349
    invoke-virtual {p0, v0}, Lcom/kakaogame/KGKakaoInvitationEvent;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const v1, -0x2244dc24

    invoke-static {v1}, Lcom/liapp/y;->״دش۲ݮ(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    .array-data 1
    .end array-data
.end method

.method public final getFinishTime()J
    .locals 2

    const v0, 0x543f2392

    invoke-static {v0}, Lcom/liapp/y;->׳ֳֳ֬د(I)Ljava/lang/String;

    move-result-object v0

    .line 589
    invoke-virtual {p0, v0}, Lcom/kakaogame/KGKakaoInvitationEvent;->get(Ljava/lang/String;)Ljava/lang/Object;

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

.method public final getHostRewardCode()Ljava/lang/String;
    .locals 1

    const v0, 0x3364bfeb

    invoke-static {v0}, Lcom/liapp/y;->ׯ״ٲ֬ب(I)Ljava/lang/String;

    move-result-object v0

    .line 749
    invoke-virtual {p0, v0}, Lcom/kakaogame/KGKakaoInvitationEvent;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0

    .array-data 1
    .end array-data
.end method

.method public final getInvitationUrl()Ljava/lang/String;
    .locals 1

    const v0, 0x22531dee

    invoke-static {v0}, Lcom/liapp/y;->ֲֳگܱޭ(I)Ljava/lang/String;

    move-result-object v0

    .line 909
    invoke-virtual {p0, v0}, Lcom/kakaogame/KGKakaoInvitationEvent;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0

    .array-data 1
    .end array-data
.end method

.method public final getJoinRewardCode()Ljava/lang/String;
    .locals 1

    const v0, 0x5d1632ef

    invoke-static {v0}, Lcom/liapp/y;->ڴݮگ֮ت(I)Ljava/lang/String;

    move-result-object v0

    .line 829
    invoke-virtual {p0, v0}, Lcom/kakaogame/KGKakaoInvitationEvent;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0

    .array-data 1
    .end array-data
.end method

.method public final getMaxHostRewardCount()I
    .locals 2

    const v0, -0x2244d3fc

    invoke-static {v0}, Lcom/liapp/y;->״دش۲ݮ(I)Ljava/lang/String;

    move-result-object v0

    .line 669
    invoke-virtual {p0, v0}, Lcom/kakaogame/KGKakaoInvitationEvent;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const v1, -0x2244dc24

    invoke-static {v1}, Lcom/liapp/y;->״دش۲ݮ(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    .array-data 1
    .end array-data
.end method

.method public final getStartTime()J
    .locals 2

    const v0, -0x2244e9cc

    invoke-static {v0}, Lcom/liapp/y;->״دش۲ݮ(I)Ljava/lang/String;

    move-result-object v0

    .line 509
    invoke-virtual {p0, v0}, Lcom/kakaogame/KGKakaoInvitationEvent;->get(Ljava/lang/String;)Ljava/lang/Object;

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

.method public final getTotalJoinerCount()I
    .locals 2

    const v0, 0x7d76140d

    invoke-static {v0}, Lcom/liapp/y;->حֲݴܳޯ(I)Ljava/lang/String;

    move-result-object v0

    .line 989
    invoke-virtual {p0, v0}, Lcom/kakaogame/KGKakaoInvitationEvent;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const v1, -0x2244dc24

    invoke-static {v1}, Lcom/liapp/y;->״دش۲ݮ(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    .array-data 1
    .end array-data
.end method

.method public final isEventCardEnabled()Z
    .locals 2

    const v0, -0x2244d09c

    invoke-static {v0}, Lcom/liapp/y;->״دش۲ݮ(I)Ljava/lang/String;

    move-result-object v0

    .line 429
    invoke-virtual {p0, v0}, Lcom/kakaogame/KGKakaoInvitationEvent;->get(Ljava/lang/String;)Ljava/lang/Object;

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
