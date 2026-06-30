.class public final Lcom/kakaogame/kakao/KakaoAgeAuthManager;
.super Ljava/lang/Object;
.source "KakaoAgeAuthManager.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nKakaoAgeAuthManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 KakaoAgeAuthManager.kt\ncom/kakaogame/kakao/KakaoAgeAuthManager\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,368:1\n1#2:369\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000V\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J*\u0010\u0011\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00050\u00122\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\t2\n\u0008\u0002\u0010\u0016\u001a\u0004\u0018\u00010\u0005J\u000e\u0010\u0017\u001a\u00020\tH\u0082@\u00a2\u0006\u0002\u0010\u0018J\u0016\u0010\u0019\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u001a0\u0012H\u0082@\u00a2\u0006\u0002\u0010\u0018J\u0010\u0010\u001b\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u001a0\u0012H\u0002J\"\u0010\u001c\u001a\u000c\u0012\u0006\u0012\u0004\u0018\u00010\u0005\u0018\u00010\u00122\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\tH\u0002J\u001e\u0010\u001d\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u001e0\u00122\u0006\u0010\u0013\u001a\u00020\u0014H\u0082@\u00a2\u0006\u0002\u0010\u001fJ\u0018\u0010 \u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00050\u00122\u0006\u0010\u0013\u001a\u00020\u0014H\u0002J\u0018\u0010!\u001a\u0004\u0018\u00010\"2\u0006\u0010\u0013\u001a\u00020\u0014H\u0082@\u00a2\u0006\u0002\u0010\u001fJ\u0018\u0010#\u001a\u0004\u0018\u00010\"2\u0006\u0010\u0013\u001a\u00020\u0014H\u0082@\u00a2\u0006\u0002\u0010\u001fJ \u0010$\u001a\u0004\u0018\u00010\"2\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\tH\u0082@\u00a2\u0006\u0002\u0010%J\u0012\u0010&\u001a\u00020\t2\u0008\u0010\'\u001a\u0004\u0018\u00010(H\u0002R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082D\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0008\u001a\u00020\t8BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0008\u0010\nR\u0014\u0010\u000b\u001a\u00020\t8BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u000b\u0010\nR\u0014\u0010\u000c\u001a\u00020\r8BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u000e\u0010\u000fR\u0014\u0010\u0010\u001a\u00020\t8BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0010\u0010\nR\u0014\u0010)\u001a\u00020\r8BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008*\u0010\u000f\u00a8\u0006+"
    }
    d2 = {
        "Lcom/kakaogame/kakao/KakaoAgeAuthManager;",
        "",
        "<init>",
        "()V",
        "TAG",
        "",
        "ONE_DAY_TIME",
        "",
        "isReachBoardGame",
        "",
        "()Z",
        "isAgeAuthCheckOnLoginProcess",
        "ageAuthLimit",
        "",
        "getAgeAuthLimit",
        "()I",
        "isAgeAuthFailProcessKill",
        "checkAgeAuth",
        "Lcom/kakaogame/KGResult;",
        "activity",
        "Landroid/app/Activity;",
        "isLogin",
        "newAccessToken",
        "needCIAgreement",
        "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "ageAuthInfo",
        "Lcom/kakao/sdk/partner/user/model/AgeAuthInfo;",
        "requestAgeAuthInfo",
        "showAgeAuthDialog",
        "verifyAgeSync",
        "Ljava/lang/Void;",
        "(Landroid/app/Activity;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "requestShowAgeAuthDialog",
        "showAgeAuthGuideDialog",
        "",
        "showAgeAuthFailedDialog",
        "showAgeLimitDialog",
        "(Landroid/app/Activity;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "isVerifiedDate",
        "authenticatedAt",
        "Ljava/util/Date;",
        "ageAuthValidDays",
        "getAgeAuthValidDays",
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
.field public static final INSTANCE:Lcom/kakaogame/kakao/KakaoAgeAuthManager;

.field private static final ONE_DAY_TIME:J

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/kakaogame/kakao/KakaoAgeAuthManager;

    invoke-direct {v0}, Lcom/kakaogame/kakao/KakaoAgeAuthManager;-><init>()V

    sput-object v0, Lcom/kakaogame/kakao/KakaoAgeAuthManager;->INSTANCE:Lcom/kakaogame/kakao/KakaoAgeAuthManager;

    const v0, 0x336fcae3

    invoke-static {v0}, Lcom/liapp/y;->ׯ״ٲ֬ب(I)Ljava/lang/String;

    move-result-object v0

    .line 399
    sput-object v0, Lcom/kakaogame/kakao/KakaoAgeAuthManager;->TAG:Ljava/lang/String;

    const-wide/32 v0, 0x5265c00

    .line 409
    sput-wide v0, Lcom/kakaogame/kakao/KakaoAgeAuthManager;->ONE_DAY_TIME:J

    return-void

    .array-data 1
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .line 389
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void

    .array-data 1
    .end array-data
.end method

.method public static final synthetic access$ageAuthInfo(Lcom/kakaogame/kakao/KakaoAgeAuthManager;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 389
    invoke-direct {p0, p1}, Lcom/kakaogame/kakao/KakaoAgeAuthManager;->ageAuthInfo(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static final synthetic access$getAgeAuthLimit(Lcom/kakaogame/kakao/KakaoAgeAuthManager;)I
    .locals 0

    .line 389
    invoke-direct {p0}, Lcom/kakaogame/kakao/KakaoAgeAuthManager;->getAgeAuthLimit()I

    move-result p0

    return p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static final synthetic access$getTAG$p()Ljava/lang/String;
    .locals 1

    .line 389
    sget-object v0, Lcom/kakaogame/kakao/KakaoAgeAuthManager;->TAG:Ljava/lang/String;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public static final synthetic access$needCIAgreement(Lcom/kakaogame/kakao/KakaoAgeAuthManager;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 389
    invoke-direct {p0, p1}, Lcom/kakaogame/kakao/KakaoAgeAuthManager;->needCIAgreement(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static final synthetic access$showAgeAuthFailedDialog(Lcom/kakaogame/kakao/KakaoAgeAuthManager;Landroid/app/Activity;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 389
    invoke-direct {p0, p1, p2}, Lcom/kakaogame/kakao/KakaoAgeAuthManager;->showAgeAuthFailedDialog(Landroid/app/Activity;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static final synthetic access$showAgeAuthGuideDialog(Lcom/kakaogame/kakao/KakaoAgeAuthManager;Landroid/app/Activity;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 389
    invoke-direct {p0, p1, p2}, Lcom/kakaogame/kakao/KakaoAgeAuthManager;->showAgeAuthGuideDialog(Landroid/app/Activity;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static final synthetic access$showAgeLimitDialog(Lcom/kakaogame/kakao/KakaoAgeAuthManager;Landroid/app/Activity;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 389
    invoke-direct {p0, p1, p2, p3}, Lcom/kakaogame/kakao/KakaoAgeAuthManager;->showAgeLimitDialog(Landroid/app/Activity;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static final synthetic access$verifyAgeSync(Lcom/kakaogame/kakao/KakaoAgeAuthManager;Landroid/app/Activity;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 389
    invoke-direct {p0, p1, p2}, Lcom/kakaogame/kakao/KakaoAgeAuthManager;->verifyAgeSync(Landroid/app/Activity;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method private final ageAuthInfo(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/kakaogame/KGResult<",
            "Lcom/kakao/sdk/partner/user/model/AgeAuthInfo;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1769
    new-instance v0, Lkotlin/coroutines/SafeContinuation;

    invoke-static {p1}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->intercepted(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v1

    invoke-direct {v0, v1}, Lkotlin/coroutines/SafeContinuation;-><init>(Lkotlin/coroutines/Continuation;)V

    move-object v1, v0

    check-cast v1, Lkotlin/coroutines/Continuation;

    .line 1779
    sget-object v2, Lcom/kakaogame/kakao/KakaoAgeAuthManager;->INSTANCE:Lcom/kakaogame/kakao/KakaoAgeAuthManager;

    invoke-direct {v2}, Lcom/kakaogame/kakao/KakaoAgeAuthManager;->isReachBoardGame()Z

    move-result v3

    if-eqz v3, :cond_0

    const v3, 0x54346c4a

    invoke-static {v3}, Lcom/liapp/y;->׳ֳֳ֬د(I)Ljava/lang/String;

    move-result-object v3

    .line 1789
    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 1809
    :goto_0
    sget-object v4, Lcom/kakao/sdk/user/UserApiClient;->Companion:Lcom/kakao/sdk/user/UserApiClient$Companion;

    invoke-virtual {v4}, Lcom/kakao/sdk/user/UserApiClient$Companion;->getInstance()Lcom/kakao/sdk/user/UserApiClient;

    move-result-object v4

    .line 1819
    invoke-direct {v2}, Lcom/kakaogame/kakao/KakaoAgeAuthManager;->getAgeAuthLimit()I

    move-result v2

    invoke-static {v2}, Lkotlin/coroutines/jvm/internal/Boxing;->boxInt(I)Ljava/lang/Integer;

    move-result-object v2

    .line 1839
    sget-object v5, Lcom/kakao/sdk/partner/user/model/AgeCriteria;->YEAR:Lcom/kakao/sdk/partner/user/model/AgeCriteria;

    .line 1809
    new-instance v6, Lcom/kakaogame/kakao/KakaoAgeAuthManager$ageAuthInfo$2$1;

    invoke-direct {v6, v1}, Lcom/kakaogame/kakao/KakaoAgeAuthManager$ageAuthInfo$2$1;-><init>(Lkotlin/coroutines/Continuation;)V

    check-cast v6, Lkotlin/jvm/functions/Function2;

    invoke-static {v4, v2, v3, v5, v6}, Lcom/kakao/sdk/partner/user/UserApiClientKt;->ageAuthInfo(Lcom/kakao/sdk/user/UserApiClient;Ljava/lang/Integer;Ljava/util/List;Lcom/kakao/sdk/partner/user/model/AgeCriteria;Lkotlin/jvm/functions/Function2;)V

    .line 1769
    invoke-virtual {v0}, Lkotlin/coroutines/SafeContinuation;->getOrThrow()Ljava/lang/Object;

    move-result-object v0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    if-ne v0, v1, :cond_1

    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/DebugProbesKt;->probeCoroutineSuspended(Lkotlin/coroutines/Continuation;)V

    :cond_1
    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public static synthetic checkAgeAuth$default(Lcom/kakaogame/kakao/KakaoAgeAuthManager;Landroid/app/Activity;ZLjava/lang/String;ILjava/lang/Object;)Lcom/kakaogame/KGResult;
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p3, 0x0

    .line 759
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/kakaogame/kakao/KakaoAgeAuthManager;->checkAgeAuth(Landroid/app/Activity;ZLjava/lang/String;)Lcom/kakaogame/KGResult;

    move-result-object p0

    return-object p0

    .array-data 1
    .end array-data
.end method

.method private final getAgeAuthLimit()I
    .locals 5

    .line 659
    sget-object v0, Lcom/kakaogame/infodesk/InfodeskHelper;->INSTANCE:Lcom/kakaogame/infodesk/InfodeskHelper;

    invoke-virtual {v0}, Lcom/kakaogame/infodesk/InfodeskHelper;->getAgeAuthLimit()I

    move-result v0

    .line 669
    sget-object v1, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    sget-object v2, Lcom/kakaogame/kakao/KakaoAgeAuthManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const v4, 0x5d1d466f

    invoke-static {v4}, Lcom/liapp/y;->ڴݮگ֮ت(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/kakaogame/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    .array-data 1
    .end array-data
.end method

.method private final getAgeAuthValidDays()I
    .locals 1

    .line 3679
    sget-object v0, Lcom/kakaogame/infodesk/InfodeskHelper;->INSTANCE:Lcom/kakaogame/infodesk/InfodeskHelper;

    invoke-virtual {v0}, Lcom/kakaogame/infodesk/InfodeskHelper;->getAgeAuthValidDays()I

    move-result v0

    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method private final isAgeAuthCheckOnLoginProcess()Z
    .locals 1

    .line 609
    sget-object v0, Lcom/kakaogame/core/CoreManager;->Companion:Lcom/kakaogame/core/CoreManager$Companion;

    invoke-virtual {v0}, Lcom/kakaogame/core/CoreManager$Companion;->getInstance()Lcom/kakaogame/core/CoreManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kakaogame/core/CoreManager;->getConfiguration()Lcom/kakaogame/config/Configuration;

    move-result-object v0

    .line 619
    invoke-virtual {v0}, Lcom/kakaogame/config/Configuration;->isAgeAuthOnLogin()Z

    move-result v0

    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method private final isAgeAuthFailProcessKill()Z
    .locals 1

    .line 719
    sget-object v0, Lcom/kakaogame/core/CoreManager;->Companion:Lcom/kakaogame/core/CoreManager$Companion;

    invoke-virtual {v0}, Lcom/kakaogame/core/CoreManager$Companion;->getInstance()Lcom/kakaogame/core/CoreManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kakaogame/core/CoreManager;->getConfiguration()Lcom/kakaogame/config/Configuration;

    move-result-object v0

    .line 729
    invoke-virtual {v0}, Lcom/kakaogame/config/Configuration;->getAgeAuthFailProcessKill()Z

    move-result v0

    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method private final isReachBoardGame()Z
    .locals 5

    .line 489
    sget-object v0, Lcom/kakaogame/infodesk/InfodeskHelper;->INSTANCE:Lcom/kakaogame/infodesk/InfodeskHelper;

    invoke-virtual {v0}, Lcom/kakaogame/infodesk/InfodeskHelper;->isReachBoardGame()Z

    move-result v0

    .line 499
    sget-object v1, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    sget-object v2, Lcom/kakaogame/kakao/KakaoAgeAuthManager;->TAG:Ljava/lang/String;

    if-eqz v0, :cond_0

    const v3, 0x22546766

    invoke-static {v3}, Lcom/liapp/y;->ֲֳگܱޭ(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_0
    const v3, -0x2247ce84

    invoke-static {v3}, Lcom/liapp/y;->״دش۲ݮ(I)Ljava/lang/String;

    move-result-object v3

    :goto_0
    const v4, 0x5d1d46f7

    invoke-static {v4}, Lcom/liapp/y;->ڴݮگ֮ت(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/kakaogame/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    .array-data 1
    .end array-data
.end method

.method private final isVerifiedDate(Ljava/util/Date;)Z
    .locals 7

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 3599
    :cond_0
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    .line 3609
    sget-wide v3, Lcom/kakaogame/kakao/KakaoAgeAuthManager;->ONE_DAY_TIME:J

    invoke-direct {p0}, Lcom/kakaogame/kakao/KakaoAgeAuthManager;->getAgeAuthValidDays()I

    move-result p1

    int-to-long v5, p1

    mul-long/2addr v3, v5

    add-long/2addr v1, v3

    .line 3619
    sget-object p1, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    sget-object v3, Lcom/kakaogame/kakao/KakaoAgeAuthManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const v5, -0x451407f7

    invoke-static {v5}, Lcom/liapp/y;->ڳݬ٬ۮݪ(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v3, v4}, Lcom/kakaogame/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3629
    sget-object p1, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    const v5, 0x2258609e

    invoke-static {v5}, Lcom/liapp/y;->ֲֳگܱޭ(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v3, v4}, Lcom/kakaogame/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3639
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    cmp-long p1, v3, v1

    if-gez p1, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method private final needCIAgreement(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1609
    new-instance v0, Lkotlin/coroutines/SafeContinuation;

    invoke-static {p1}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->intercepted(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v1

    invoke-direct {v0, v1}, Lkotlin/coroutines/SafeContinuation;-><init>(Lkotlin/coroutines/Continuation;)V

    move-object v1, v0

    check-cast v1, Lkotlin/coroutines/Continuation;

    const v2, 0x54346c4a

    invoke-static {v2}, Lcom/liapp/y;->׳ֳֳ֬د(I)Ljava/lang/String;

    move-result-object v2

    .line 1619
    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    .line 1629
    sget-object v3, Lcom/kakao/sdk/user/UserApiClient;->Companion:Lcom/kakao/sdk/user/UserApiClient$Companion;

    invoke-virtual {v3}, Lcom/kakao/sdk/user/UserApiClient$Companion;->getInstance()Lcom/kakao/sdk/user/UserApiClient;

    move-result-object v3

    new-instance v4, Lcom/kakaogame/kakao/KakaoAgeAuthManager$needCIAgreement$2$1;

    invoke-direct {v4, v1}, Lcom/kakaogame/kakao/KakaoAgeAuthManager$needCIAgreement$2$1;-><init>(Lkotlin/coroutines/Continuation;)V

    check-cast v4, Lkotlin/jvm/functions/Function2;

    invoke-virtual {v3, v2, v4}, Lcom/kakao/sdk/user/UserApiClient;->scopes(Ljava/util/List;Lkotlin/jvm/functions/Function2;)V

    .line 1609
    invoke-virtual {v0}, Lkotlin/coroutines/SafeContinuation;->getOrThrow()Ljava/lang/Object;

    move-result-object v0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    if-ne v0, v1, :cond_0

    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/DebugProbesKt;->probeCoroutineSuspended(Lkotlin/coroutines/Continuation;)V

    :cond_0
    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method private final requestAgeAuthInfo()Lcom/kakaogame/KGResult;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/kakaogame/KGResult<",
            "Lcom/kakao/sdk/partner/user/model/AgeAuthInfo;",
            ">;"
        }
    .end annotation

    .line 2039
    sget-object v0, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    sget-object v1, Lcom/kakaogame/kakao/KakaoAgeAuthManager;->TAG:Ljava/lang/String;

    const v2, -0x224fa094

    invoke-static {v2}, Lcom/liapp/y;->״دش۲ݮ(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/kakaogame/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2059
    :try_start_0
    new-instance v0, Lcom/kakaogame/kakao/KakaoAgeAuthManager$requestAgeAuthInfo$checkAgeAuthResult$1;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/kakaogame/kakao/KakaoAgeAuthManager$requestAgeAuthInfo$checkAgeAuthResult$1;-><init>(Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/jvm/functions/Function2;

    const/4 v2, 0x1

    invoke-static {v1, v0, v2, v1}, Lkotlinx/coroutines/BuildersKt;->runBlocking$default(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kakaogame/KGResult;

    .line 2079
    invoke-virtual {v0}, Lcom/kakaogame/KGResult;->isSuccess()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2089
    invoke-virtual {v0}, Lcom/kakaogame/KGResult;->getContent()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v0, Lcom/kakao/sdk/partner/user/model/AgeAuthInfo;

    .line 2099
    sget-object v1, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    invoke-virtual {v1, v0}, Lcom/kakaogame/KGResult$Companion;->getSuccessResult(Ljava/lang/Object;)Lcom/kakaogame/KGResult;

    move-result-object v0

    goto :goto_0

    .line 2119
    :cond_0
    sget-object v1, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    check-cast v0, Ljava/util/Map;

    invoke-virtual {v1, v0}, Lcom/kakaogame/KGResult$Companion;->getResult(Ljava/util/Map;)Lcom/kakaogame/KGResult;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    .line 2149
    sget-object v1, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    sget-object v2, Lcom/kakaogame/kakao/KakaoAgeAuthManager;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v4, v0

    check-cast v4, Ljava/lang/Throwable;

    invoke-virtual {v1, v2, v3, v4}, Lcom/kakaogame/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2159
    sget-object v1, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    const/16 v2, 0xfa1

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/kakaogame/KGResult$Companion;->getResult(ILjava/lang/String;)Lcom/kakaogame/KGResult;

    move-result-object v0

    return-object v0

    .array-data 1
    .end array-data
.end method

.method private final requestShowAgeAuthDialog(Landroid/app/Activity;)Lcom/kakaogame/KGResult;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            ")",
            "Lcom/kakaogame/KGResult<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 2809
    sget-object v0, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    sget-object v1, Lcom/kakaogame/kakao/KakaoAgeAuthManager;->TAG:Ljava/lang/String;

    const v2, 0x22586356

    invoke-static {v2}, Lcom/liapp/y;->ֲֳگܱޭ(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/kakaogame/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2829
    :try_start_0
    new-instance v0, Lcom/kakaogame/kakao/KakaoAgeAuthManager$requestShowAgeAuthDialog$requestResult$1;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/kakaogame/kakao/KakaoAgeAuthManager$requestShowAgeAuthDialog$requestResult$1;-><init>(Landroid/app/Activity;Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/jvm/functions/Function2;

    const/4 v2, 0x1

    invoke-static {v1, v0, v2, v1}, Lkotlinx/coroutines/BuildersKt;->runBlocking$default(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kakaogame/KGResult;

    .line 2839
    invoke-virtual {v0}, Lcom/kakaogame/KGResult;->isSuccess()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x4

    const/4 v7, 0x0

    move-object v2, p0

    move-object v3, p1

    invoke-static/range {v2 .. v7}, Lcom/kakaogame/kakao/KakaoAgeAuthManager;->checkAgeAuth$default(Lcom/kakaogame/kakao/KakaoAgeAuthManager;Landroid/app/Activity;ZLjava/lang/String;ILjava/lang/Object;)Lcom/kakaogame/KGResult;

    move-result-object p1

    goto :goto_0

    .line 2849
    :cond_0
    sget-object p1, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    check-cast v0, Ljava/util/Map;

    invoke-virtual {p1, v0}, Lcom/kakaogame/KGResult$Companion;->getResult(Ljava/util/Map;)Lcom/kakaogame/KGResult;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 2869
    sget-object v0, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    sget-object v1, Lcom/kakaogame/kakao/KakaoAgeAuthManager;->TAG:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v3, p1

    check-cast v3, Ljava/lang/Throwable;

    invoke-virtual {v0, v1, v2, v3}, Lcom/kakaogame/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2879
    sget-object v0, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    const/16 v1, 0xfa1

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/kakaogame/KGResult$Companion;->getResult(ILjava/lang/String;)Lcom/kakaogame/KGResult;

    move-result-object p1

    :goto_0
    return-object p1

    nop

    .array-data 1
    .end array-data
.end method

.method private final showAgeAuthDialog(Landroid/app/Activity;Z)Lcom/kakaogame/KGResult;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Z)",
            "Lcom/kakaogame/KGResult<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 2279
    new-instance v0, Lcom/kakaogame/kakao/KakaoAgeAuthManager$showAgeAuthDialog$1;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/kakaogame/kakao/KakaoAgeAuthManager$showAgeAuthDialog$1;-><init>(Landroid/app/Activity;Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/jvm/functions/Function2;

    const/4 v2, 0x1

    invoke-static {v1, v0, v2, v1}, Lkotlinx/coroutines/BuildersKt;->runBlocking$default(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Ljava/lang/Object;

    .line 2299
    invoke-direct {p0, p1}, Lcom/kakaogame/kakao/KakaoAgeAuthManager;->requestShowAgeAuthDialog(Landroid/app/Activity;)Lcom/kakaogame/KGResult;

    move-result-object v0

    .line 2309
    sget-object v3, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    sget-object v4, Lcom/kakaogame/kakao/KakaoAgeAuthManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const v6, 0x543469c2

    invoke-static {v6}, Lcom/liapp/y;->׳ֳֳ֬د(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/kakaogame/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2319
    invoke-virtual {v0}, Lcom/kakaogame/KGResult;->getCode()I

    move-result v0

    const/16 v3, 0xc8

    if-ne v0, v3, :cond_0

    goto :goto_1

    .line 2339
    :cond_0
    sget-object v3, Lcom/kakao/sdk/partner/user/model/AgeAuthErrorCause;->LOWER_AGE_LIMIT:Lcom/kakao/sdk/partner/user/model/AgeAuthErrorCause;

    invoke-virtual {v3}, Lcom/kakao/sdk/partner/user/model/AgeAuthErrorCause;->getStatus()I

    move-result v3

    if-ne v0, v3, :cond_3

    .line 2349
    invoke-direct {p0}, Lcom/kakaogame/kakao/KakaoAgeAuthManager;->isAgeAuthFailProcessKill()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2359
    new-instance v0, Lcom/kakaogame/kakao/KakaoAgeAuthManager$showAgeAuthDialog$2;

    invoke-direct {v0, p1, p2, v1}, Lcom/kakaogame/kakao/KakaoAgeAuthManager$showAgeAuthDialog$2;-><init>(Landroid/app/Activity;ZLkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/jvm/functions/Function2;

    invoke-static {v1, v0, v2, v1}, Lkotlinx/coroutines/BuildersKt;->runBlocking$default(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Ljava/lang/Object;

    if-eqz p2, :cond_1

    .line 2369
    invoke-static {p1}, Lcom/kakaogame/util/AppUtil;->terminateApp(Landroid/app/Activity;)V

    :cond_1
    if-eqz p2, :cond_2

    .line 2399
    sget-object p1, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    invoke-virtual {p1}, Lcom/kakaogame/KGResult$Companion;->getSuccessResult()Lcom/kakaogame/KGResult;

    move-result-object p1

    goto :goto_0

    .line 2419
    :cond_2
    sget-object p1, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    const/16 p2, 0x1c23

    invoke-virtual {p1, p2}, Lcom/kakaogame/KGResult$Companion;->getResult(I)Lcom/kakaogame/KGResult;

    move-result-object p1

    :goto_0
    return-object p1

    :cond_3
    const/16 v3, 0x1c24

    if-ne v0, v3, :cond_4

    .line 2459
    sget-object p1, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    invoke-virtual {p1, v3}, Lcom/kakaogame/KGResult$Companion;->getResult(I)Lcom/kakaogame/KGResult;

    move-result-object v1

    :goto_1
    return-object v1

    .line 2479
    :cond_4
    new-instance v0, Lcom/kakaogame/kakao/KakaoAgeAuthManager$showAgeAuthDialog$3;

    invoke-direct {v0, p1, v1}, Lcom/kakaogame/kakao/KakaoAgeAuthManager$showAgeAuthDialog$3;-><init>(Landroid/app/Activity;Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/jvm/functions/Function2;

    invoke-static {v1, v0, v2, v1}, Lkotlinx/coroutines/BuildersKt;->runBlocking$default(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Ljava/lang/Object;

    if-eqz p2, :cond_5

    .line 2489
    invoke-direct {p0}, Lcom/kakaogame/kakao/KakaoAgeAuthManager;->isAgeAuthFailProcessKill()Z

    move-result p2

    if-eqz p2, :cond_5

    .line 2499
    invoke-static {p1}, Lcom/kakaogame/util/AppUtil;->terminateApp(Landroid/app/Activity;)V

    .line 2509
    :cond_5
    sget-object p1, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    const/16 p2, 0x2329

    invoke-virtual {p1, p2}, Lcom/kakaogame/KGResult$Companion;->getResult(I)Lcom/kakaogame/KGResult;

    move-result-object p1

    return-object p1

    .array-data 1
    .end array-data
.end method

.method private final showAgeAuthFailedDialog(Landroid/app/Activity;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 3099
    new-instance v0, Lkotlin/coroutines/SafeContinuation;

    invoke-static {p2}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->intercepted(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v1

    invoke-direct {v0, v1}, Lkotlin/coroutines/SafeContinuation;-><init>(Lkotlin/coroutines/Continuation;)V

    move-object v1, v0

    check-cast v1, Lkotlin/coroutines/Continuation;

    .line 3109
    sget-object v2, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    sget-object v3, Lcom/kakaogame/kakao/KakaoAgeAuthManager;->TAG:Ljava/lang/String;

    const v4, -0x45140b47

    invoke-static {v4}, Lcom/liapp/y;->ڳݬ٬ۮݪ(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/kakaogame/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3119
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getMain()Lkotlinx/coroutines/MainCoroutineDispatcher;

    move-result-object v2

    check-cast v2, Lkotlin/coroutines/CoroutineContext;

    invoke-static {v2}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    new-instance v2, Lcom/kakaogame/kakao/KakaoAgeAuthManager$showAgeAuthFailedDialog$2$1;

    const/4 v6, 0x0

    invoke-direct {v2, p1, v1, v6}, Lcom/kakaogame/kakao/KakaoAgeAuthManager$showAgeAuthFailedDialog$2$1;-><init>(Landroid/app/Activity;Lkotlin/coroutines/Continuation;Lkotlin/coroutines/Continuation;)V

    move-object v6, v2

    check-cast v6, Lkotlin/jvm/functions/Function2;

    const/4 v7, 0x3

    const/4 v8, 0x0

    invoke-static/range {v3 .. v8}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 3099
    invoke-virtual {v0}, Lkotlin/coroutines/SafeContinuation;->getOrThrow()Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    if-ne p1, v0, :cond_0

    invoke-static {p2}, Lkotlin/coroutines/jvm/internal/DebugProbesKt;->probeCoroutineSuspended(Lkotlin/coroutines/Continuation;)V

    :cond_0
    return-object p1

    .array-data 1
    .end array-data
.end method

.method private final showAgeAuthGuideDialog(Landroid/app/Activity;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 2919
    new-instance v0, Lkotlin/coroutines/SafeContinuation;

    invoke-static {p2}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->intercepted(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v1

    invoke-direct {v0, v1}, Lkotlin/coroutines/SafeContinuation;-><init>(Lkotlin/coroutines/Continuation;)V

    move-object v1, v0

    check-cast v1, Lkotlin/coroutines/Continuation;

    .line 2929
    sget-object v2, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    sget-object v3, Lcom/kakaogame/kakao/KakaoAgeAuthManager;->TAG:Ljava/lang/String;

    const v4, 0x7d7d6595

    invoke-static {v4}, Lcom/liapp/y;->حֲݴܳޯ(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/kakaogame/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2939
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getMain()Lkotlinx/coroutines/MainCoroutineDispatcher;

    move-result-object v2

    check-cast v2, Lkotlin/coroutines/CoroutineContext;

    invoke-static {v2}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    new-instance v2, Lcom/kakaogame/kakao/KakaoAgeAuthManager$showAgeAuthGuideDialog$2$1;

    const/4 v6, 0x0

    invoke-direct {v2, p1, v1, v6}, Lcom/kakaogame/kakao/KakaoAgeAuthManager$showAgeAuthGuideDialog$2$1;-><init>(Landroid/app/Activity;Lkotlin/coroutines/Continuation;Lkotlin/coroutines/Continuation;)V

    move-object v6, v2

    check-cast v6, Lkotlin/jvm/functions/Function2;

    const/4 v7, 0x3

    const/4 v8, 0x0

    invoke-static/range {v3 .. v8}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 2919
    invoke-virtual {v0}, Lkotlin/coroutines/SafeContinuation;->getOrThrow()Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    if-ne p1, v0, :cond_0

    invoke-static {p2}, Lkotlin/coroutines/jvm/internal/DebugProbesKt;->probeCoroutineSuspended(Lkotlin/coroutines/Continuation;)V

    :cond_0
    return-object p1

    .array-data 1
    .end array-data
.end method

.method private final showAgeLimitDialog(Landroid/app/Activity;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Z",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 3279
    new-instance v0, Lkotlin/coroutines/SafeContinuation;

    invoke-static {p3}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->intercepted(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v1

    invoke-direct {v0, v1}, Lkotlin/coroutines/SafeContinuation;-><init>(Lkotlin/coroutines/Continuation;)V

    move-object v1, v0

    check-cast v1, Lkotlin/coroutines/Continuation;

    .line 3299
    sget-object v2, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    sget-object v3, Lcom/kakaogame/kakao/KakaoAgeAuthManager;->TAG:Ljava/lang/String;

    const v4, -0x224fac8c

    invoke-static {v4}, Lcom/liapp/y;->״دش۲ݮ(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/kakaogame/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3309
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getMain()Lkotlinx/coroutines/MainCoroutineDispatcher;

    move-result-object v2

    check-cast v2, Lkotlin/coroutines/CoroutineContext;

    invoke-static {v2}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    new-instance v2, Lcom/kakaogame/kakao/KakaoAgeAuthManager$showAgeLimitDialog$2$1;

    const/4 v6, 0x0

    invoke-direct {v2, p2, p1, v1, v6}, Lcom/kakaogame/kakao/KakaoAgeAuthManager$showAgeLimitDialog$2$1;-><init>(ZLandroid/app/Activity;Lkotlin/coroutines/Continuation;Lkotlin/coroutines/Continuation;)V

    move-object v6, v2

    check-cast v6, Lkotlin/jvm/functions/Function2;

    const/4 v7, 0x3

    const/4 v8, 0x0

    invoke-static/range {v3 .. v8}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 3279
    invoke-virtual {v0}, Lkotlin/coroutines/SafeContinuation;->getOrThrow()Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object p2

    if-ne p1, p2, :cond_0

    invoke-static {p3}, Lkotlin/coroutines/jvm/internal/DebugProbesKt;->probeCoroutineSuspended(Lkotlin/coroutines/Continuation;)V

    :cond_0
    return-object p1

    .array-data 1
    .end array-data
.end method

.method private final verifyAgeSync(Landroid/app/Activity;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/kakaogame/KGResult<",
            "Ljava/lang/Void;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 2559
    new-instance v0, Lkotlin/coroutines/SafeContinuation;

    invoke-static {p2}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->intercepted(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v1

    invoke-direct {v0, v1}, Lkotlin/coroutines/SafeContinuation;-><init>(Lkotlin/coroutines/Continuation;)V

    move-object v1, v0

    check-cast v1, Lkotlin/coroutines/Continuation;

    .line 2569
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getMain()Lkotlinx/coroutines/MainCoroutineDispatcher;

    move-result-object v2

    check-cast v2, Lkotlin/coroutines/CoroutineContext;

    invoke-static {v2}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    new-instance v2, Lcom/kakaogame/kakao/KakaoAgeAuthManager$verifyAgeSync$2$1;

    const/4 v6, 0x0

    invoke-direct {v2, p1, v1, v6}, Lcom/kakaogame/kakao/KakaoAgeAuthManager$verifyAgeSync$2$1;-><init>(Landroid/app/Activity;Lkotlin/coroutines/Continuation;Lkotlin/coroutines/Continuation;)V

    move-object v6, v2

    check-cast v6, Lkotlin/jvm/functions/Function2;

    const/4 v7, 0x3

    const/4 v8, 0x0

    invoke-static/range {v3 .. v8}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 2559
    invoke-virtual {v0}, Lkotlin/coroutines/SafeContinuation;->getOrThrow()Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    if-ne p1, v0, :cond_0

    invoke-static {p2}, Lkotlin/coroutines/jvm/internal/DebugProbesKt;->probeCoroutineSuspended(Lkotlin/coroutines/Continuation;)V

    :cond_0
    return-object p1

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public final checkAgeAuth(Landroid/app/Activity;ZLjava/lang/String;)Lcom/kakaogame/KGResult;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Z",
            "Ljava/lang/String;",
            ")",
            "Lcom/kakaogame/KGResult<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const v0, 0x543d14da

    invoke-static {v0}, Lcom/liapp/y;->׳ֳֳ֬د(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 809
    sget-object v0, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    sget-object v1, Lcom/kakaogame/kakao/KakaoAgeAuthManager;->TAG:Ljava/lang/String;

    const v2, 0x336fc25b

    invoke-static {v2}, Lcom/liapp/y;->ׯ״ٲ֬ب(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/kakaogame/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 819
    sget-object v0, Lcom/kakaogame/idp/KGKakao2Auth;->Companion:Lcom/kakaogame/idp/KGKakao2Auth$Companion;

    invoke-virtual {v0}, Lcom/kakaogame/idp/KGKakao2Auth$Companion;->isCheckAgeAuthOnGame()Z

    move-result v0

    if-nez v0, :cond_0

    .line 829
    sget-object p1, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    const/16 p2, 0xfa2

    invoke-virtual {p1, p2}, Lcom/kakaogame/KGResult$Companion;->getResult(I)Lcom/kakaogame/KGResult;

    move-result-object p1

    return-object p1

    .line 859
    :cond_0
    sget-object v0, Lcom/kakaogame/util/Stopwatch;->Companion:Lcom/kakaogame/util/Stopwatch$Companion;

    const v2, -0x451409df

    invoke-static {v2}, Lcom/liapp/y;->ڳݬ٬ۮݪ(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/kakaogame/util/Stopwatch$Companion;->start(Ljava/lang/String;)Lcom/kakaogame/util/Stopwatch;

    move-result-object v0

    const/4 v2, 0x0

    .line 889
    :try_start_0
    sget-object v3, Lcom/kakaogame/core/CoreManager;->Companion:Lcom/kakaogame/core/CoreManager$Companion;

    invoke-virtual {v3}, Lcom/kakaogame/core/CoreManager$Companion;->getInstance()Lcom/kakaogame/core/CoreManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/kakaogame/core/CoreManager;->isKakaoCacheMode()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 899
    sget-object v3, Lcom/kakaogame/core/CoreManager;->Companion:Lcom/kakaogame/core/CoreManager$Companion;

    invoke-virtual {v3}, Lcom/kakaogame/core/CoreManager$Companion;->getInstance()Lcom/kakaogame/core/CoreManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/kakaogame/core/CoreManager;->tryKakaoReConnect()Lcom/kakaogame/KGResult;

    .line 919
    :cond_1
    invoke-direct {p0}, Lcom/kakaogame/kakao/KakaoAgeAuthManager;->requestAgeAuthInfo()Lcom/kakaogame/KGResult;

    move-result-object v3

    .line 929
    invoke-virtual {v3}, Lcom/kakaogame/KGResult;->isNotSuccess()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 939
    sget-object p1, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    check-cast v3, Ljava/util/Map;

    invoke-virtual {p1, v3}, Lcom/kakaogame/KGResult$Companion;->getResult(Ljava/util/Map;)Lcom/kakaogame/KGResult;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1559
    invoke-virtual {v0}, Lcom/kakaogame/util/Stopwatch;->stop()V

    .line 1569
    invoke-virtual {v0}, Lcom/kakaogame/util/Stopwatch;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0}, Lcom/kakaogame/util/Stopwatch;->getDurationMs()J

    move-result-wide v0

    invoke-static {p2, p1, v0, v1}, Lcom/kakaogame/core/KGResultUtil;->writeClientApiCall(Ljava/lang/String;Lcom/kakaogame/KGResult;J)V

    return-object p1

    .line 959
    :cond_2
    :try_start_1
    invoke-virtual {v3}, Lcom/kakaogame/KGResult;->getContent()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v3, Lcom/kakao/sdk/partner/user/model/AgeAuthInfo;

    .line 989
    invoke-virtual {v3}, Lcom/kakao/sdk/partner/user/model/AgeAuthInfo;->getBypassAgeLimit()Ljava/lang/Boolean;

    move-result-object v4

    const/4 v5, 0x1

    if-eqz v4, :cond_5

    .line 999
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-nez v6, :cond_5

    .line 1009
    invoke-virtual {v3}, Lcom/kakao/sdk/partner/user/model/AgeAuthInfo;->getAuthLevel()Lcom/kakao/sdk/partner/user/model/AgeAuthLevel;

    move-result-object v6

    sget-object v7, Lcom/kakao/sdk/partner/user/model/AgeAuthLevel;->AUTH_LEVEL2:Lcom/kakao/sdk/partner/user/model/AgeAuthLevel;

    if-ne v6, v7, :cond_5

    .line 1019
    sget-object v3, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    const-string v4, "-------- DONT_BYPASS_AGE_LIMIT"

    invoke-virtual {v3, v1, v4}, Lcom/kakaogame/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1039
    invoke-direct {p0}, Lcom/kakaogame/kakao/KakaoAgeAuthManager;->isAgeAuthFailProcessKill()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1049
    new-instance v1, Lcom/kakaogame/kakao/KakaoAgeAuthManager$checkAgeAuth$2;

    invoke-direct {v1, p1, p2, v2}, Lcom/kakaogame/kakao/KakaoAgeAuthManager$checkAgeAuth$2;-><init>(Landroid/app/Activity;ZLkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    invoke-static {v2, v1, v5, v2}, Lkotlinx/coroutines/BuildersKt;->runBlocking$default(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Ljava/lang/Object;

    if-eqz p2, :cond_3

    .line 1059
    invoke-static {p1}, Lcom/kakaogame/util/AppUtil;->terminateApp(Landroid/app/Activity;)V

    :cond_3
    if-eqz p2, :cond_4

    .line 1089
    sget-object p1, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    invoke-virtual {p1, p3}, Lcom/kakaogame/KGResult$Companion;->getSuccessResult(Ljava/lang/Object;)Lcom/kakaogame/KGResult;

    move-result-object p1

    goto :goto_0

    .line 1109
    :cond_4
    sget-object p1, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    const/16 p2, 0x1c23

    invoke-virtual {p1, p2}, Lcom/kakaogame/KGResult$Companion;->getResult(I)Lcom/kakaogame/KGResult;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1559
    :goto_0
    invoke-virtual {v0}, Lcom/kakaogame/util/Stopwatch;->stop()V

    .line 1569
    invoke-virtual {v0}, Lcom/kakaogame/util/Stopwatch;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0}, Lcom/kakaogame/util/Stopwatch;->getDurationMs()J

    move-result-wide v0

    invoke-static {p2, p1, v0, v1}, Lcom/kakaogame/core/KGResultUtil;->writeClientApiCall(Ljava/lang/String;Lcom/kakaogame/KGResult;J)V

    return-object p1

    :cond_5
    if-eqz p2, :cond_6

    .line 1159
    :try_start_2
    invoke-direct {p0}, Lcom/kakaogame/kakao/KakaoAgeAuthManager;->isAgeAuthCheckOnLoginProcess()Z

    move-result v6

    if-nez v6, :cond_6

    .line 1169
    sget-object p1, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    invoke-virtual {p1, p3}, Lcom/kakaogame/KGResult$Companion;->getSuccessResult(Ljava/lang/Object;)Lcom/kakaogame/KGResult;

    move-result-object p1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1559
    invoke-virtual {v0}, Lcom/kakaogame/util/Stopwatch;->stop()V

    .line 1569
    invoke-virtual {v0}, Lcom/kakaogame/util/Stopwatch;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0}, Lcom/kakaogame/util/Stopwatch;->getDurationMs()J

    move-result-wide v0

    invoke-static {p2, p1, v0, v1}, Lcom/kakaogame/core/KGResultUtil;->writeClientApiCall(Ljava/lang/String;Lcom/kakaogame/KGResult;J)V

    return-object p1

    .line 1219
    :cond_6
    :try_start_3
    invoke-direct {p0}, Lcom/kakaogame/kakao/KakaoAgeAuthManager;->isReachBoardGame()Z

    move-result v6

    const/4 v7, 0x0

    if-eqz v6, :cond_9

    .line 1229
    new-instance v6, Lcom/kakaogame/kakao/KakaoAgeAuthManager$checkAgeAuth$needsAgreement$1;

    invoke-direct {v6, v2}, Lcom/kakaogame/kakao/KakaoAgeAuthManager$checkAgeAuth$needsAgreement$1;-><init>(Lkotlin/coroutines/Continuation;)V

    check-cast v6, Lkotlin/jvm/functions/Function2;

    invoke-static {v2, v6, v5, v2}, Lkotlinx/coroutines/BuildersKt;->runBlocking$default(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_8

    .line 1279
    sget-object p3, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    const-string v3, "ciNeedsAgreement == TRUE"

    invoke-virtual {p3, v1, v3}, Lcom/kakaogame/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string p3, "account_ci"

    .line 1289
    invoke-static {p3}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p3

    .line 1299
    sget-object v1, Lcom/kakaogame/idp/KGKakao2Auth;->Companion:Lcom/kakaogame/idp/KGKakao2Auth$Companion;

    sget-object v3, Lcom/kakaogame/core/CoreManager;->Companion:Lcom/kakaogame/core/CoreManager$Companion;

    invoke-virtual {v3}, Lcom/kakaogame/core/CoreManager$Companion;->getInstance()Lcom/kakaogame/core/CoreManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/kakaogame/core/CoreManager;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v1, v3, p3}, Lcom/kakaogame/idp/KGKakao2Auth$Companion;->updateScope(Landroid/app/Activity;Ljava/util/List;)Lcom/kakaogame/KGResult;

    move-result-object p3

    .line 1309
    invoke-virtual {p3}, Lcom/kakaogame/KGResult;->isSuccess()Z

    move-result v1

    if-nez v1, :cond_7

    .line 1319
    sget-object p1, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    const/16 p2, 0x1c24

    invoke-virtual {p1, p2}, Lcom/kakaogame/KGResult$Companion;->getResult(I)Lcom/kakaogame/KGResult;

    move-result-object v2

    move-object p1, v2

    goto :goto_1

    .line 1339
    :cond_7
    invoke-virtual {p3}, Lcom/kakaogame/KGResult;->getContent()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    invoke-virtual {p0, p1, p2, p3}, Lcom/kakaogame/kakao/KakaoAgeAuthManager;->checkAgeAuth(Landroid/app/Activity;ZLjava/lang/String;)Lcom/kakaogame/KGResult;

    move-result-object p1
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object v8, v2

    move-object v2, p1

    move-object p1, v8

    .line 1559
    :goto_1
    invoke-virtual {v0}, Lcom/kakaogame/util/Stopwatch;->stop()V

    .line 1569
    invoke-virtual {v0}, Lcom/kakaogame/util/Stopwatch;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0}, Lcom/kakaogame/util/Stopwatch;->getDurationMs()J

    move-result-wide v0

    invoke-static {p2, p1, v0, v1}, Lcom/kakaogame/core/KGResultUtil;->writeClientApiCall(Ljava/lang/String;Lcom/kakaogame/KGResult;J)V

    return-object v2

    .line 1379
    :cond_8
    :try_start_4
    invoke-virtual {v3}, Lcom/kakao/sdk/partner/user/model/AgeAuthInfo;->getHasCi()Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-static {v1, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    :cond_9
    if-nez v7, :cond_a

    if-eqz v4, :cond_a

    .line 1429
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 1439
    invoke-virtual {v3}, Lcom/kakao/sdk/partner/user/model/AgeAuthInfo;->getAuthenticatedAt()Ljava/util/Date;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/kakaogame/kakao/KakaoAgeAuthManager;->isVerifiedDate(Ljava/util/Date;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 1449
    sget-object v1, Lcom/kakaogame/infodesk/InfodeskHelper;->INSTANCE:Lcom/kakaogame/infodesk/InfodeskHelper;

    invoke-virtual {v1}, Lcom/kakaogame/infodesk/InfodeskHelper;->getAgeAuthLevel()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3}, Lcom/kakao/sdk/partner/user/model/AgeAuthInfo;->getAuthLevel()Lcom/kakao/sdk/partner/user/model/AgeAuthLevel;

    move-result-object v3

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v3}, Lcom/kakao/sdk/partner/user/model/AgeAuthLevel;->name()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    .line 1459
    :cond_a
    invoke-direct {p0, p1, p2}, Lcom/kakaogame/kakao/KakaoAgeAuthManager;->showAgeAuthDialog(Landroid/app/Activity;Z)Lcom/kakaogame/KGResult;

    move-result-object p1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz p1, :cond_b

    .line 1559
    invoke-virtual {v0}, Lcom/kakaogame/util/Stopwatch;->stop()V

    .line 1569
    invoke-virtual {v0}, Lcom/kakaogame/util/Stopwatch;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0}, Lcom/kakaogame/util/Stopwatch;->getDurationMs()J

    move-result-wide v0

    invoke-static {p2, p1, v0, v1}, Lcom/kakaogame/core/KGResultUtil;->writeClientApiCall(Ljava/lang/String;Lcom/kakaogame/KGResult;J)V

    return-object p1

    .line 1509
    :cond_b
    :try_start_5
    sget-object p1, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    invoke-virtual {p1, p3}, Lcom/kakaogame/KGResult$Companion;->getSuccessResult(Ljava/lang/Object;)Lcom/kakaogame/KGResult;

    move-result-object p1
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1559
    invoke-virtual {v0}, Lcom/kakaogame/util/Stopwatch;->stop()V

    .line 1569
    invoke-virtual {v0}, Lcom/kakaogame/util/Stopwatch;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0}, Lcom/kakaogame/util/Stopwatch;->getDurationMs()J

    move-result-wide v0

    invoke-static {p2, p1, v0, v1}, Lcom/kakaogame/core/KGResultUtil;->writeClientApiCall(Ljava/lang/String;Lcom/kakaogame/KGResult;J)V

    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    .line 1529
    :try_start_6
    sget-object p2, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    sget-object p3, Lcom/kakaogame/kakao/KakaoAgeAuthManager;->TAG:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v3, p1

    check-cast v3, Ljava/lang/Throwable;

    invoke-virtual {p2, p3, v1, v3}, Lcom/kakaogame/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1539
    sget-object p2, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    const/16 p3, 0xfa1

    invoke-virtual {p2, p3, p1}, Lcom/kakaogame/KGResult$Companion;->getResult(ILjava/lang/String;)Lcom/kakaogame/KGResult;

    move-result-object p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 1559
    invoke-virtual {v0}, Lcom/kakaogame/util/Stopwatch;->stop()V

    .line 1569
    invoke-virtual {v0}, Lcom/kakaogame/util/Stopwatch;->getName()Ljava/lang/String;

    move-result-object p2

    move-object p3, p1

    check-cast p3, Lcom/kakaogame/KGResult;

    invoke-virtual {v0}, Lcom/kakaogame/util/Stopwatch;->getDurationMs()J

    move-result-wide v0

    invoke-static {p2, p1, v0, v1}, Lcom/kakaogame/core/KGResultUtil;->writeClientApiCall(Ljava/lang/String;Lcom/kakaogame/KGResult;J)V

    return-object p1

    .line 1559
    :goto_2
    invoke-virtual {v0}, Lcom/kakaogame/util/Stopwatch;->stop()V

    .line 1569
    invoke-virtual {v0}, Lcom/kakaogame/util/Stopwatch;->getName()Ljava/lang/String;

    move-result-object p2

    move-object p3, v2

    check-cast p3, Lcom/kakaogame/KGResult;

    invoke-virtual {v0}, Lcom/kakaogame/util/Stopwatch;->getDurationMs()J

    move-result-wide v0

    invoke-static {p2, v2, v0, v1}, Lcom/kakaogame/core/KGResultUtil;->writeClientApiCall(Ljava/lang/String;Lcom/kakaogame/KGResult;J)V

    throw p1

    nop

    .array-data 1
    .end array-data
.end method
