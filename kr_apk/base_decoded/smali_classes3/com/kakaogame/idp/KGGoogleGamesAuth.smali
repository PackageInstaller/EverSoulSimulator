.class public final Lcom/kakaogame/idp/KGGoogleGamesAuth;
.super Ljava/lang/Object;
.source "KGGoogleGamesAuth.kt"

# interfaces
.implements Lcom/kakaogame/idp/IdpAuthHandler;
.implements Lcom/kakaogame/idp/IdpAuthExHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kakaogame/idp/KGGoogleGamesAuth$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000X\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0018\u0000 &2\u00020\u00012\u00020\u0002:\u0001&B\u0007\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u0018\u0010\u0007\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\t0\u00082\u0006\u0010\n\u001a\u00020\u000bH\u0016J*\u0010\u000c\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\r0\u00082\u0006\u0010\n\u001a\u00020\u000b2\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u00062\u0006\u0010\u000f\u001a\u00020\u0010H\u0016J*\u0010\u0011\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\r0\u00082\u0006\u0010\n\u001a\u00020\u000b2\u0008\u0010\u0012\u001a\u0004\u0018\u00010\r2\u0006\u0010\u000f\u001a\u00020\u0010H\u0016J\u0010\u0010\u0013\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\t0\u0008H\u0016J\u0010\u0010\u0014\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\t0\u0008H\u0016J\u0014\u0010\u0019\u001a\u0004\u0018\u00010\u00062\u0008\u0010\n\u001a\u0004\u0018\u00010\u000bH\u0016J&\u0010\u001a\u001a\u00020\u001b2\u0006\u0010\n\u001a\u00020\u000b2\u0014\u0010\u001c\u001a\u0010\u0012\u0006\u0012\u0004\u0018\u00010\u0006\u0012\u0004\u0012\u00020\u001b0\u001dH\u0002J\u0010\u0010\u001e\u001a\u00020\u001f2\u0006\u0010 \u001a\u00020!H\u0002J\u0012\u0010\"\u001a\u00020\u001b2\u0008\u0010 \u001a\u0004\u0018\u00010!H\u0002J\u0018\u0010#\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\t0\u00082\u0006\u0010\n\u001a\u00020\u000bH\u0002J\u0018\u0010$\u001a\u0004\u0018\u00010\u00062\u0006\u0010\n\u001a\u00020\u000bH\u0082@\u00a2\u0006\u0002\u0010%R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u0015\u001a\u0004\u0018\u00010\u00168VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0017\u0010\u0018\u00a8\u0006\'"
    }
    d2 = {
        "Lcom/kakaogame/idp/KGGoogleGamesAuth;",
        "Lcom/kakaogame/idp/IdpAuthHandler;",
        "Lcom/kakaogame/idp/IdpAuthExHandler;",
        "<init>",
        "()V",
        "serverClientId",
        "",
        "initialize",
        "Lcom/kakaogame/KGResult;",
        "Ljava/lang/Void;",
        "activity",
        "Landroid/app/Activity;",
        "idpLogin",
        "Lcom/kakaogame/idp/IdpAccount;",
        "extras",
        "traceJobId",
        "",
        "checkAuth",
        "authData",
        "logout",
        "unregister",
        "localIdpProfile",
        "Lcom/kakaogame/KGIdpProfile;",
        "getLocalIdpProfile",
        "()Lcom/kakaogame/KGIdpProfile;",
        "getAccessToken",
        "getServerToken",
        "",
        "callback",
        "Lkotlin/Function1;",
        "getLoginAttempted",
        "",
        "context",
        "Landroid/content/Context;",
        "setLoginAttempted",
        "isGooglePlayServicesAvailable",
        "signIn",
        "(Landroid/app/Activity;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "Companion",
        "idp_google_release"
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
.field public static final Companion:Lcom/kakaogame/idp/KGGoogleGamesAuth$Companion;

.field private static final LOGIN_ATTEMPTED_PREF_NAME:Ljava/lang/String; = "GoogleGamesLoginAttempted"

.field public static final MANUAL_LOGIN:Ljava/lang/String; = "manualLogin"

.field private static final TAG:Ljava/lang/String; = "KGGoogleGamesAuth"

.field private static isSignedIn:Z


# instance fields
.field private serverClientId:Ljava/lang/String;


# direct methods
.method public static synthetic $r8$lambda$RWZ-pqLOn120A2gHXIgSn-A_N38(Lkotlin/jvm/functions/Function1;Lcom/google/android/gms/tasks/Task;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/kakaogame/idp/KGGoogleGamesAuth;->getServerToken$lambda$1(Lkotlin/jvm/functions/Function1;Lcom/google/android/gms/tasks/Task;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/kakaogame/idp/KGGoogleGamesAuth$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/kakaogame/idp/KGGoogleGamesAuth$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/kakaogame/idp/KGGoogleGamesAuth;->Companion:Lcom/kakaogame/idp/KGGoogleGamesAuth$Companion;

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .line 319
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 429
    iput-object v0, p0, Lcom/kakaogame/idp/KGGoogleGamesAuth;->serverClientId:Ljava/lang/String;

    return-void

    .array-data 1
    .end array-data
.end method

.method public static final synthetic access$getServerToken(Lcom/kakaogame/idp/KGGoogleGamesAuth;Landroid/app/Activity;Lkotlin/jvm/functions/Function1;)V
    .locals 0

    .line 319
    invoke-direct {p0, p1, p2}, Lcom/kakaogame/idp/KGGoogleGamesAuth;->getServerToken(Landroid/app/Activity;Lkotlin/jvm/functions/Function1;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method public static final synthetic access$isSignedIn$cp()Z
    .locals 1

    .line 319
    sget-boolean v0, Lcom/kakaogame/idp/KGGoogleGamesAuth;->isSignedIn:Z

    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public static final synthetic access$setLoginAttempted(Lcom/kakaogame/idp/KGGoogleGamesAuth;Landroid/content/Context;)V
    .locals 0

    .line 319
    invoke-direct {p0, p1}, Lcom/kakaogame/idp/KGGoogleGamesAuth;->setLoginAttempted(Landroid/content/Context;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method public static final synthetic access$setSignedIn$cp(Z)V
    .locals 0

    .line 319
    sput-boolean p0, Lcom/kakaogame/idp/KGGoogleGamesAuth;->isSignedIn:Z

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public static final synthetic access$signIn(Lcom/kakaogame/idp/KGGoogleGamesAuth;Landroid/app/Activity;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 319
    invoke-direct {p0, p1, p2}, Lcom/kakaogame/idp/KGGoogleGamesAuth;->signIn(Landroid/app/Activity;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method private final getLoginAttempted(Landroid/content/Context;)Z
    .locals 3

    .line 1629
    sget-object v0, Lcom/kakaogame/core/CoreManager;->Companion:Lcom/kakaogame/core/CoreManager$Companion;

    invoke-virtual {v0}, Lcom/kakaogame/core/CoreManager$Companion;->getInstance()Lcom/kakaogame/core/CoreManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kakaogame/core/CoreManager;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    const v1, 0x6d0eb130

    invoke-static {v1}, Lcom/liapp/y;->ٱڳܴڭܩ(I)Ljava/lang/String;

    move-result-object v1

    .line 1639
    invoke-static {p1, v1, v0}, Lcom/kakaogame/util/PreferenceUtil;->getBoolean(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    .line 1659
    sget-object v0, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const v2, -0x451bca37

    invoke-static {v2}, Lcom/liapp/y;->ڳݬ٬ۮݪ(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const v2, -0x22406724

    invoke-static {v2}, Lcom/liapp/y;->״دش۲ݮ(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lcom/kakaogame/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    return p1

    .array-data 1
    .end array-data
.end method

.method private final getServerToken(Landroid/app/Activity;Lkotlin/jvm/functions/Function1;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1469
    invoke-static {p1}, Lcom/google/android/gms/games/PlayGames;->getGamesSignInClient(Landroid/app/Activity;)Lcom/google/android/gms/games/GamesSignInClient;

    move-result-object p1

    const v0, 0x7d72a505

    invoke-static {v0}, Lcom/liapp/y;->حֲݴܳޯ(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1489
    iget-object v0, p0, Lcom/kakaogame/idp/KGGoogleGamesAuth;->serverClientId:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/games/GamesSignInClient;->requestServerSideAccess(Ljava/lang/String;Z)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    .line 1499
    new-instance v0, Lcom/kakaogame/idp/KGGoogleGamesAuth$$ExternalSyntheticLambda0;

    invoke-direct {v0, p2}, Lcom/kakaogame/idp/KGGoogleGamesAuth$$ExternalSyntheticLambda0;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/tasks/Task;->addOnCompleteListener(Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;

    return-void

    .array-data 1
    .end array-data
.end method

.method private static final getServerToken$lambda$1(Lkotlin/jvm/functions/Function1;Lcom/google/android/gms/tasks/Task;)V
    .locals 3

    const v0, 0x5d121fff

    invoke-static {v0}, Lcom/liapp/y;->ڴݮگ֮ت(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1509
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->isSuccessful()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1519
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->getResult()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 1529
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1549
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->getException()Ljava/lang/Exception;

    move-result-object p1

    const v0, -0x451bc0af

    invoke-static {v0}, Lcom/liapp/y;->ڳݬ٬ۮݪ(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/google/android/gms/common/api/ApiException;

    .line 1559
    sget-object v0, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const v2, -0x451bc517

    invoke-static {v2}, Lcom/liapp/y;->ڳݬ٬ۮݪ(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/ApiException;->getStatusCode()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const v1, -0x22406724

    invoke-static {v1}, Lcom/liapp/y;->״دش۲ݮ(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/kakaogame/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 1569
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method private final isGooglePlayServicesAvailable(Landroid/app/Activity;)Lcom/kakaogame/KGResult;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            ")",
            "Lcom/kakaogame/KGResult<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 1769
    sget-object v0, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    const v1, -0x22406724

    invoke-static {v1}, Lcom/liapp/y;->״دش۲ݮ(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x2257af46

    invoke-static {v2}, Lcom/liapp/y;->ֲֳگܱޭ(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/kakaogame/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1779
    invoke-static {}, Lcom/google/android/gms/common/GoogleApiAvailability;->getInstance()Lcom/google/android/gms/common/GoogleApiAvailability;

    move-result-object v0

    move-object v1, p1

    check-cast v1, Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/GoogleApiAvailability;->isGooglePlayServicesAvailable(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const/16 v1, 0x9

    if-eq v0, v1, :cond_0

    .line 1889
    sget-object p1, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    invoke-virtual {p1}, Lcom/kakaogame/KGResult$Companion;->getSuccessResult()Lcom/kakaogame/KGResult;

    move-result-object p1

    goto :goto_0

    .line 1799
    :cond_0
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getMain()Lkotlinx/coroutines/MainCoroutineDispatcher;

    move-result-object v1

    check-cast v1, Lkotlin/coroutines/CoroutineContext;

    invoke-static {v1}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    new-instance v1, Lcom/kakaogame/idp/KGGoogleGamesAuth$isGooglePlayServicesAvailable$1;

    const/4 v5, 0x0

    invoke-direct {v1, p1, v0, v5}, Lcom/kakaogame/idp/KGGoogleGamesAuth$isGooglePlayServicesAvailable$1;-><init>(Landroid/app/Activity;ILkotlin/coroutines/Continuation;)V

    move-object v5, v1

    check-cast v5, Lkotlin/jvm/functions/Function2;

    const/4 v6, 0x3

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 1839
    sget-object p1, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    .line 1859
    new-instance v1, Ljava/lang/StringBuilder;

    const v2, -0x451bc8af

    invoke-static {v2}, Lcom/liapp/y;->ڳݬ٬ۮݪ(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x1f42

    .line 1839
    invoke-virtual {p1, v1, v0}, Lcom/kakaogame/KGResult$Companion;->getResult(ILjava/lang/String;)Lcom/kakaogame/KGResult;

    move-result-object p1

    :goto_0
    return-object p1

    nop

    .array-data 1
    .end array-data
.end method

.method private final setLoginAttempted(Landroid/content/Context;)V
    .locals 3

    .line 1709
    sget-object v0, Lcom/kakaogame/core/CoreManager;->Companion:Lcom/kakaogame/core/CoreManager$Companion;

    invoke-virtual {v0}, Lcom/kakaogame/core/CoreManager$Companion;->getInstance()Lcom/kakaogame/core/CoreManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kakaogame/core/CoreManager;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    const v1, 0x6d0eb130

    invoke-static {v1}, Lcom/liapp/y;->ٱڳܴڭܩ(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    .line 1719
    invoke-static {p1, v1, v0, v2}, Lcom/kakaogame/util/PreferenceUtil;->setBoolean(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void

    .array-data 1
    .end array-data
.end method

.method private final signIn(Landroid/app/Activity;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1929
    new-instance v0, Lkotlin/coroutines/SafeContinuation;

    invoke-static {p2}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->intercepted(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v1

    invoke-direct {v0, v1}, Lkotlin/coroutines/SafeContinuation;-><init>(Lkotlin/coroutines/Continuation;)V

    move-object v1, v0

    check-cast v1, Lkotlin/coroutines/Continuation;

    .line 1939
    invoke-static {p1}, Lcom/google/android/gms/games/PlayGames;->getGamesSignInClient(Landroid/app/Activity;)Lcom/google/android/gms/games/GamesSignInClient;

    move-result-object v2

    const v3, 0x7d72a505

    invoke-static {v3}, Lcom/liapp/y;->حֲݴܳޯ(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1949
    invoke-interface {v2}, Lcom/google/android/gms/games/GamesSignInClient;->isAuthenticated()Lcom/google/android/gms/tasks/Task;

    move-result-object v3

    .line 1959
    new-instance v4, Lcom/kakaogame/idp/KGGoogleGamesAuth$signIn$2$1;

    invoke-direct {v4, p0, p1, v2, v1}, Lcom/kakaogame/idp/KGGoogleGamesAuth$signIn$2$1;-><init>(Lcom/kakaogame/idp/KGGoogleGamesAuth;Landroid/app/Activity;Lcom/google/android/gms/games/GamesSignInClient;Lkotlin/coroutines/Continuation;)V

    check-cast v4, Lcom/google/android/gms/tasks/OnCompleteListener;

    invoke-virtual {v3, v4}, Lcom/google/android/gms/tasks/Task;->addOnCompleteListener(Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;

    .line 1929
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
.method public checkAuth(Landroid/app/Activity;Lcom/kakaogame/idp/IdpAccount;I)Lcom/kakaogame/KGResult;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lcom/kakaogame/idp/IdpAccount;",
            "I)",
            "Lcom/kakaogame/KGResult<",
            "Lcom/kakaogame/idp/IdpAccount;",
            ">;"
        }
    .end annotation

    const-string p2, "activity"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1239
    sget-object p1, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    const/16 p2, 0x1389

    const-string p3, "KGGoogleGamesAuth does not support checkAuth"

    invoke-virtual {p1, p2, p3}, Lcom/kakaogame/KGResult$Companion;->getResult(ILjava/lang/String;)Lcom/kakaogame/KGResult;

    move-result-object p1

    return-object p1

    .array-data 1
    .end array-data
.end method

.method public getAccessToken(Landroid/app/Activity;)Ljava/lang/String;
    .locals 2

    .line 1419
    sget-object p1, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    const v0, -0x22406724

    invoke-static {v0}, Lcom/liapp/y;->״دش۲ݮ(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x2257a956

    invoke-static {v1}, Lcom/liapp/y;->ֲֳگܱޭ(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/kakaogame/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1

    nop

    .array-data 1
    .end array-data
.end method

.method public getLocalIdpProfile()Lcom/kakaogame/KGIdpProfile;
    .locals 3

    .line 1369
    sget-object v0, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    const v1, -0x22406724

    invoke-static {v1}, Lcom/liapp/y;->״دش۲ݮ(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x5d128b4f

    invoke-static {v2}, Lcom/liapp/y;->ڴݮگ֮ت(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/kakaogame/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public idpLogin(Landroid/app/Activity;Ljava/lang/String;I)Lcom/kakaogame/KGResult;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/lang/String;",
            "I)",
            "Lcom/kakaogame/KGResult<",
            "Lcom/kakaogame/idp/IdpAccount;",
            ">;"
        }
    .end annotation

    const-string p3, "activity"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 879
    sget-object p3, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    const v0, 0x6d0e4248

    invoke-static {v0}, Lcom/liapp/y;->ٱڳܴڭܩ(I)Ljava/lang/String;

    move-result-object v0

    const v1, -0x22406724

    invoke-static {v1}, Lcom/liapp/y;->״دش۲ݮ(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1, v0}, Lcom/kakaogame/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string p3, "manualLogin"

    const/4 v0, 0x1

    .line 909
    invoke-static {p2, p3, v0}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p2

    if-nez p2, :cond_0

    .line 929
    move-object p2, p1

    check-cast p2, Landroid/content/Context;

    invoke-direct {p0, p2}, Lcom/kakaogame/idp/KGGoogleGamesAuth;->getLoginAttempted(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 939
    sget-object p1, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    const-string p2, "Login already attempted. Skipping login process."

    invoke-virtual {p1, v1, p2}, Lcom/kakaogame/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 949
    sget-object p1, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    invoke-virtual {p1}, Lcom/kakaogame/KGResult$Companion;->getSuccessResult()Lcom/kakaogame/KGResult;

    move-result-object p1

    return-object p1

    .line 989
    :cond_0
    invoke-direct {p0, p1}, Lcom/kakaogame/idp/KGGoogleGamesAuth;->isGooglePlayServicesAvailable(Landroid/app/Activity;)Lcom/kakaogame/KGResult;

    move-result-object p2

    .line 999
    invoke-virtual {p2}, Lcom/kakaogame/KGResult;->isNotSuccess()Z

    move-result p3

    if-eqz p3, :cond_1

    .line 1009
    sget-object p1, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    new-instance p3, Ljava/lang/StringBuilder;

    const v0, 0x5d128aef

    invoke-static {v0}, Lcom/liapp/y;->ڴݮگ֮ت(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/kakaogame/KGResult;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, v1, p3}, Lcom/kakaogame/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1019
    sget-object p1, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    check-cast p2, Ljava/util/Map;

    invoke-virtual {p1, p2}, Lcom/kakaogame/KGResult$Companion;->getResult(Ljava/util/Map;)Lcom/kakaogame/KGResult;

    move-result-object p1

    return-object p1

    .line 1059
    :cond_1
    :try_start_0
    new-instance p2, Lcom/kakaogame/idp/KGGoogleGamesAuth$idpLogin$serverToken$1;

    const/4 p3, 0x0

    invoke-direct {p2, p0, p1, p3}, Lcom/kakaogame/idp/KGGoogleGamesAuth$idpLogin$serverToken$1;-><init>(Lcom/kakaogame/idp/KGGoogleGamesAuth;Landroid/app/Activity;Lkotlin/coroutines/Continuation;)V

    check-cast p2, Lkotlin/jvm/functions/Function2;

    invoke-static {p3, p2, v0, p3}, Lkotlinx/coroutines/BuildersKt;->runBlocking$default(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-eqz p1, :cond_2

    .line 1099
    sget-object p2, Lcom/kakaogame/idp/IdpAccount;->Companion:Lcom/kakaogame/idp/IdpAccount$Companion;

    invoke-virtual {p2, p1}, Lcom/kakaogame/idp/IdpAccount$Companion;->createGoogleGamesAccount(Ljava/lang/String;)Lcom/kakaogame/idp/IdpAccount;

    move-result-object p1

    .line 1109
    sget-object p2, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    invoke-virtual {p2, p1}, Lcom/kakaogame/KGResult$Companion;->getSuccessResult(Ljava/lang/Object;)Lcom/kakaogame/KGResult;

    move-result-object p1

    if-nez p1, :cond_3

    .line 1119
    :cond_2
    sget-object p1, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    const/16 p2, 0xfaa

    invoke-virtual {p1, p2}, Lcom/kakaogame/KGResult$Companion;->getResult(I)Lcom/kakaogame/KGResult;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    return-object p1

    :catch_0
    move-exception p1

    .line 1139
    sget-object p2, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p3

    move-object v0, p1

    check-cast v0, Ljava/lang/Throwable;

    invoke-virtual {p2, v1, p3, v0}, Lcom/kakaogame/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1149
    sget-object p2, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    const/16 p3, 0xfa1

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p3, p1}, Lcom/kakaogame/KGResult$Companion;->getResult(ILjava/lang/String;)Lcom/kakaogame/KGResult;

    move-result-object p1

    return-object p1

    nop

    .array-data 1
    .end array-data
.end method

.method public initialize(Landroid/app/Activity;)Lcom/kakaogame/KGResult;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            ")",
            "Lcom/kakaogame/KGResult<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    const v0, 0x543d14da

    invoke-static {v0}, Lcom/liapp/y;->׳ֳֳ֬د(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 459
    sget-object v0, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    const v1, 0x33655853

    invoke-static {v1}, Lcom/liapp/y;->ׯ״ٲ֬ب(I)Ljava/lang/String;

    move-result-object v1

    const v2, -0x22406724

    invoke-static {v2}, Lcom/liapp/y;->״دش۲ݮ(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lcom/kakaogame/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 479
    move-object v0, p1

    check-cast v0, Landroid/content/Context;

    const v1, 0x2257b53e

    invoke-static {v1}, Lcom/liapp/y;->ֲֳگܱޭ(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/kakaogame/util/AndroidManifestUtil;->checkMetaData(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    const/16 v3, 0xbb8

    if-nez v1, :cond_0

    .line 499
    sget-object p1, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    invoke-virtual {p1, v3}, Lcom/kakaogame/KGResult$Companion;->getResult(I)Lcom/kakaogame/KGResult;

    move-result-object p1

    return-object p1

    :cond_0
    const v1, 0x543bbc82

    invoke-static {v1}, Lcom/liapp/y;->׳ֳֳ֬د(I)Ljava/lang/String;

    move-result-object v1

    .line 529
    invoke-static {v0, v1}, Lcom/kakaogame/util/ResourceUtil;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kakaogame/idp/KGGoogleGamesAuth;->serverClientId:Ljava/lang/String;

    .line 539
    check-cast v0, Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    .line 549
    sget-object p1, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    const v0, 0x543bbc6a

    invoke-static {v0}, Lcom/liapp/y;->׳ֳֳ֬د(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Lcom/kakaogame/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 559
    sget-object p1, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    invoke-virtual {p1, v3, v0}, Lcom/kakaogame/KGResult$Companion;->getResult(ILjava/lang/String;)Lcom/kakaogame/KGResult;

    move-result-object p1

    return-object p1

    .line 629
    :cond_2
    :try_start_0
    sget-object v0, Lcom/kakaogame/core/CoreManager;->Companion:Lcom/kakaogame/core/CoreManager$Companion;

    invoke-virtual {v0}, Lcom/kakaogame/core/CoreManager$Companion;->getInstance()Lcom/kakaogame/core/CoreManager;

    move-result-object v0

    new-instance v1, Lcom/kakaogame/idp/KGGoogleGamesAuth$initialize$1;

    invoke-direct {v1, p1}, Lcom/kakaogame/idp/KGGoogleGamesAuth$initialize$1;-><init>(Landroid/app/Activity;)V

    check-cast v1, Lcom/kakaogame/core/CoreManager$CoreStateListener;

    invoke-virtual {v0, v1}, Lcom/kakaogame/core/CoreManager;->addCoreStateListener(Lcom/kakaogame/core/CoreManager$CoreStateListener;)V

    .line 759
    sget-object p1, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    invoke-virtual {p1}, Lcom/kakaogame/KGResult$Companion;->getSuccessResult()Lcom/kakaogame/KGResult;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 779
    sget-object v0, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v3, p1

    check-cast v3, Ljava/lang/Throwable;

    invoke-virtual {v0, v2, v1, v3}, Lcom/kakaogame/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 789
    sget-object v0, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    const/16 v1, 0xfa1

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/kakaogame/KGResult$Companion;->getResult(ILjava/lang/String;)Lcom/kakaogame/KGResult;

    move-result-object p1

    :goto_1
    return-object p1

    .array-data 1
    .end array-data
.end method

.method public logout()Lcom/kakaogame/KGResult;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/kakaogame/KGResult<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 1279
    sget-object v0, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    const/16 v1, 0x1389

    const v2, 0x7d72b97d

    invoke-static {v2}, Lcom/liapp/y;->حֲݴܳޯ(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/kakaogame/KGResult$Companion;->getResult(ILjava/lang/String;)Lcom/kakaogame/KGResult;

    move-result-object v0

    return-object v0

    .array-data 1
    .end array-data
.end method

.method public unregister()Lcom/kakaogame/KGResult;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/kakaogame/KGResult<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 1319
    sget-object v0, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    const/16 v1, 0x1389

    const v2, 0x2257b2ce

    invoke-static {v2}, Lcom/liapp/y;->ֲֳگܱޭ(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/kakaogame/KGResult$Companion;->getResult(ILjava/lang/String;)Lcom/kakaogame/KGResult;

    move-result-object v0

    return-object v0

    .array-data 1
    .end array-data
.end method
