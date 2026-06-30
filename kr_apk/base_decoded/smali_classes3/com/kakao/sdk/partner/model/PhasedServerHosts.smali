.class public final Lcom/kakao/sdk/partner/model/PhasedServerHosts;
.super Lcom/kakao/sdk/common/model/ServerHosts;
.source "PhasedServerHosts.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kakao/sdk/partner/model/PhasedServerHosts$WhenMappings;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0013\u0008\u0000\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004R\u0014\u0010\u0005\u001a\u00020\u0006X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008R\u0014\u0010\t\u001a\u00020\u0006X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u0008R\u0014\u0010\u000b\u001a\u00020\u0006X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\u0008R\u0014\u0010\r\u001a\u00020\u0006X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u0008R\u0014\u0010\u000f\u001a\u00020\u0006X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\u0008R\u0014\u0010\u0011\u001a\u00020\u0006X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0012\u0010\u0008R\u0014\u0010\u0013\u001a\u00020\u0006X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0014\u0010\u0008R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0015\u0010\u0016R\u0014\u0010\u0017\u001a\u00020\u0006X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0018\u0010\u0008\u00a8\u0006\u0019"
    }
    d2 = {
        "Lcom/kakao/sdk/partner/model/PhasedServerHosts;",
        "Lcom/kakao/sdk/common/model/ServerHosts;",
        "phase",
        "Lcom/kakao/sdk/partner/model/KakaoPhase;",
        "(Lcom/kakao/sdk/partner/model/KakaoPhase;)V",
        "account",
        "",
        "getAccount",
        "()Ljava/lang/String;",
        "apps",
        "getApps",
        "channel",
        "getChannel",
        "kapi",
        "getKapi",
        "kauth",
        "getKauth",
        "mobileAccount",
        "getMobileAccount",
        "navi",
        "getNavi",
        "getPhase",
        "()Lcom/kakao/sdk/partner/model/KakaoPhase;",
        "sharer",
        "getSharer",
        "partner-common_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final account:Ljava/lang/String;

.field private final apps:Ljava/lang/String;

.field private final channel:Ljava/lang/String;

.field private final kapi:Ljava/lang/String;

.field private final kauth:Ljava/lang/String;

.field private final mobileAccount:Ljava/lang/String;

.field private final navi:Ljava/lang/String;

.field private final phase:Lcom/kakao/sdk/partner/model/KakaoPhase;

.field private final sharer:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/kakao/sdk/partner/model/KakaoPhase;)V
    .locals 6

    const-string v0, "phase"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 229
    invoke-direct {p0}, Lcom/kakao/sdk/common/model/ServerHosts;-><init>()V

    iput-object p1, p0, Lcom/kakao/sdk/partner/model/PhasedServerHosts;->phase:Lcom/kakao/sdk/partner/model/KakaoPhase;

    .line 249
    sget-object v0, Lcom/kakao/sdk/partner/model/PhasedServerHosts$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Lcom/kakao/sdk/partner/model/KakaoPhase;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x4

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eq v0, v4, :cond_3

    if-eq v0, v3, :cond_2

    if-eq v0, v2, :cond_1

    if-ne v0, v1, :cond_0

    const-string v0, "kauth.kakao.com"

    goto :goto_0

    .line 289
    :cond_0
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    :cond_1
    const-string v0, "beta-kauth.kakao.com"

    goto :goto_0

    :cond_2
    const-string v0, "sandbox-kauth.kakao.com"

    goto :goto_0

    :cond_3
    const-string v0, "alpha-kauth.kakao.com"

    .line 249
    :goto_0
    iput-object v0, p0, Lcom/kakao/sdk/partner/model/PhasedServerHosts;->kauth:Ljava/lang/String;

    .line 329
    sget-object v0, Lcom/kakao/sdk/partner/model/PhasedServerHosts$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Lcom/kakao/sdk/partner/model/KakaoPhase;->ordinal()I

    move-result v5

    aget v0, v0, v5

    if-eq v0, v4, :cond_7

    if-eq v0, v3, :cond_6

    if-eq v0, v2, :cond_5

    if-ne v0, v1, :cond_4

    const-string v0, "kapi.kakao.com"

    goto :goto_1

    .line 369
    :cond_4
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    :cond_5
    const-string v0, "beta-kapi.kakao.com"

    goto :goto_1

    :cond_6
    const-string v0, "sandbox-kapi.kakao.com"

    goto :goto_1

    :cond_7
    const-string v0, "alpha-kapi.kakao.com"

    .line 329
    :goto_1
    iput-object v0, p0, Lcom/kakao/sdk/partner/model/PhasedServerHosts;->kapi:Ljava/lang/String;

    .line 409
    sget-object v0, Lcom/kakao/sdk/partner/model/PhasedServerHosts$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Lcom/kakao/sdk/partner/model/KakaoPhase;->ordinal()I

    move-result v5

    aget v0, v0, v5

    if-eq v0, v4, :cond_b

    if-eq v0, v3, :cond_a

    if-eq v0, v2, :cond_9

    if-ne v0, v1, :cond_8

    const-string v0, "apps.kakao.com"

    goto :goto_2

    .line 449
    :cond_8
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    :cond_9
    const-string v0, "beta-apps.kakao.com"

    goto :goto_2

    :cond_a
    const-string v0, "sandbox-apps.kakao.com"

    goto :goto_2

    :cond_b
    const-string v0, "alpha-apps.kakao.com"

    .line 409
    :goto_2
    iput-object v0, p0, Lcom/kakao/sdk/partner/model/PhasedServerHosts;->apps:Ljava/lang/String;

    .line 489
    sget-object v0, Lcom/kakao/sdk/partner/model/PhasedServerHosts$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Lcom/kakao/sdk/partner/model/KakaoPhase;->ordinal()I

    move-result v5

    aget v0, v0, v5

    if-eq v0, v4, :cond_f

    if-eq v0, v3, :cond_e

    if-eq v0, v2, :cond_d

    if-ne v0, v1, :cond_c

    const-string v0, "accounts.kakao.com"

    goto :goto_3

    .line 529
    :cond_c
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    :cond_d
    const-string v0, "beta-accounts.kakao.com"

    goto :goto_3

    :cond_e
    const-string v0, "sandbox-accounts.kakao.com"

    goto :goto_3

    :cond_f
    const-string v0, "alpha-accounts.kakao.com"

    .line 489
    :goto_3
    iput-object v0, p0, Lcom/kakao/sdk/partner/model/PhasedServerHosts;->account:Ljava/lang/String;

    .line 569
    sget-object v0, Lcom/kakao/sdk/partner/model/PhasedServerHosts$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Lcom/kakao/sdk/partner/model/KakaoPhase;->ordinal()I

    move-result v5

    aget v0, v0, v5

    if-eq v0, v4, :cond_13

    if-eq v0, v3, :cond_12

    if-eq v0, v2, :cond_11

    if-ne v0, v1, :cond_10

    const-string v0, "auth.kakao.com"

    goto :goto_4

    .line 609
    :cond_10
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    :cond_11
    const-string v0, "beta-auth.kakao.com"

    goto :goto_4

    :cond_12
    const-string v0, "sandbox-auth.kakao.com"

    goto :goto_4

    :cond_13
    const-string v0, "alpha-auth.kakao.com"

    .line 569
    :goto_4
    iput-object v0, p0, Lcom/kakao/sdk/partner/model/PhasedServerHosts;->mobileAccount:Ljava/lang/String;

    .line 649
    sget-object v0, Lcom/kakao/sdk/partner/model/PhasedServerHosts$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Lcom/kakao/sdk/partner/model/KakaoPhase;->ordinal()I

    move-result v5

    aget v0, v0, v5

    if-eq v0, v4, :cond_17

    if-eq v0, v3, :cond_16

    if-eq v0, v2, :cond_15

    if-ne v0, v1, :cond_14

    const-string v0, "sharer.kakao.com"

    goto :goto_5

    .line 689
    :cond_14
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    :cond_15
    const-string v0, "beta-sharer.kakao.com"

    goto :goto_5

    :cond_16
    const-string v0, "sandbox-sharer.devel.kakao.com"

    goto :goto_5

    :cond_17
    const-string v0, "alpha-sharer.devel.kakao.com"

    .line 649
    :goto_5
    iput-object v0, p0, Lcom/kakao/sdk/partner/model/PhasedServerHosts;->sharer:Ljava/lang/String;

    .line 729
    sget-object v0, Lcom/kakao/sdk/partner/model/PhasedServerHosts$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Lcom/kakao/sdk/partner/model/KakaoPhase;->ordinal()I

    move-result v5

    aget v0, v0, v5

    if-eq v0, v4, :cond_1a

    if-eq v0, v3, :cond_1a

    if-eq v0, v2, :cond_19

    if-ne v0, v1, :cond_18

    goto :goto_6

    .line 749
    :cond_18
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    :cond_19
    :goto_6
    const-string v0, "kakaonavi-wguide.kakao.com"

    goto :goto_7

    :cond_1a
    const-string v0, "sandbox-kakaonavi-wguide.kakao.com"

    .line 729
    :goto_7
    iput-object v0, p0, Lcom/kakao/sdk/partner/model/PhasedServerHosts;->navi:Ljava/lang/String;

    .line 789
    sget-object v0, Lcom/kakao/sdk/partner/model/PhasedServerHosts$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Lcom/kakao/sdk/partner/model/KakaoPhase;->ordinal()I

    move-result p1

    aget p1, v0, p1

    if-eq p1, v4, :cond_1d

    if-eq p1, v3, :cond_1d

    if-eq p1, v2, :cond_1c

    if-ne p1, v1, :cond_1b

    const-string p1, "pf.kakao.com"

    goto :goto_8

    .line 819
    :cond_1b
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    :cond_1c
    const-string p1, "beta-pf.kakao.com"

    goto :goto_8

    :cond_1d
    const-string p1, "sandbox-pf.kakao.com"

    .line 789
    :goto_8
    iput-object p1, p0, Lcom/kakao/sdk/partner/model/PhasedServerHosts;->channel:Ljava/lang/String;

    return-void

    nop

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public getAccount()Ljava/lang/String;
    .locals 1

    .line 479
    iget-object v0, p0, Lcom/kakao/sdk/partner/model/PhasedServerHosts;->account:Ljava/lang/String;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getApps()Ljava/lang/String;
    .locals 1

    .line 399
    iget-object v0, p0, Lcom/kakao/sdk/partner/model/PhasedServerHosts;->apps:Ljava/lang/String;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getChannel()Ljava/lang/String;
    .locals 1

    .line 779
    iget-object v0, p0, Lcom/kakao/sdk/partner/model/PhasedServerHosts;->channel:Ljava/lang/String;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getKapi()Ljava/lang/String;
    .locals 1

    .line 319
    iget-object v0, p0, Lcom/kakao/sdk/partner/model/PhasedServerHosts;->kapi:Ljava/lang/String;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getKauth()Ljava/lang/String;
    .locals 1

    .line 239
    iget-object v0, p0, Lcom/kakao/sdk/partner/model/PhasedServerHosts;->kauth:Ljava/lang/String;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getMobileAccount()Ljava/lang/String;
    .locals 1

    .line 559
    iget-object v0, p0, Lcom/kakao/sdk/partner/model/PhasedServerHosts;->mobileAccount:Ljava/lang/String;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getNavi()Ljava/lang/String;
    .locals 1

    .line 719
    iget-object v0, p0, Lcom/kakao/sdk/partner/model/PhasedServerHosts;->navi:Ljava/lang/String;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final getPhase()Lcom/kakao/sdk/partner/model/KakaoPhase;
    .locals 1

    .line 229
    iget-object v0, p0, Lcom/kakao/sdk/partner/model/PhasedServerHosts;->phase:Lcom/kakao/sdk/partner/model/KakaoPhase;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getSharer()Ljava/lang/String;
    .locals 1

    .line 639
    iget-object v0, p0, Lcom/kakao/sdk/partner/model/PhasedServerHosts;->sharer:Ljava/lang/String;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method
