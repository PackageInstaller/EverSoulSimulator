.class public final Lcom/kakaogame/auth/agreement/AdConsentManager;
.super Ljava/lang/Object;
.source "AdConsentManager.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000D\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\t\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u001e\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000b2\u000e\u0010\u000c\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u000e0\rJ$\u0010\u000f\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000b2\u0012\u0010\u000c\u001a\u000e\u0012\u0004\u0012\u00020\u0011\u0012\u0004\u0012\u00020\t0\u0010H\u0002J\u0010\u0010\u0012\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000bH\u0002J\u000e\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u0016J\u0018\u0010\u0017\u001a\u00020\t2\u0006\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0018\u001a\u00020\u0011H\u0002J\u0010\u0010\u0019\u001a\u00020\u00112\u0006\u0010\u0015\u001a\u00020\u0016H\u0002J\u0010\u0010\u001a\u001a\u00020\t2\u0008\u0010\u0015\u001a\u0004\u0018\u00010\u0016J*\u0010\u001b\u001a\u00020\t2\u0006\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u001c\u001a\u00020\u00112\u0006\u0010\u001d\u001a\u00020\u00112\u0008\u0010\u001e\u001a\u0004\u0018\u00010\u0005H\u0002R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0005X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0005X\u0082T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001f"
    }
    d2 = {
        "Lcom/kakaogame/auth/agreement/AdConsentManager;",
        "",
        "<init>",
        "()V",
        "TAG",
        "",
        "PREF_AGREEMENT_NAME",
        "PREF_AD_CONSENT_NAME",
        "showAdConsentView",
        "",
        "activity",
        "Landroid/app/Activity;",
        "callback",
        "Lcom/kakaogame/KGResultCallback;",
        "Ljava/lang/Void;",
        "showGoSettings",
        "Lkotlin/Function1;",
        "",
        "goSettings",
        "isEnableAdConsent",
        "Lcom/kakaogame/KGAdConsent;",
        "context",
        "Landroid/content/Context;",
        "setAgreement",
        "enable",
        "getAgreement",
        "clearPreference",
        "sendBasicLog",
        "accept",
        "isSetting",
        "adid",
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
.field public static final INSTANCE:Lcom/kakaogame/auth/agreement/AdConsentManager;

.field private static final PREF_AD_CONSENT_NAME:Ljava/lang/String; = "AdConsent"

.field private static final PREF_AGREEMENT_NAME:Ljava/lang/String; = "AdAgreementData"

.field private static final TAG:Ljava/lang/String; = "AdConsentManager"


# direct methods
.method public static synthetic $r8$lambda$xZFrxu-PHSjeHXtnYv9E27Znlxk(Landroid/app/Activity;Lkotlin/jvm/functions/Function1;Z)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/kakaogame/auth/agreement/AdConsentManager;->showGoSettings$lambda$0(Landroid/app/Activity;Lkotlin/jvm/functions/Function1;Z)Lkotlin/Unit;

    move-result-object p0

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/kakaogame/auth/agreement/AdConsentManager;

    invoke-direct {v0}, Lcom/kakaogame/auth/agreement/AdConsentManager;-><init>()V

    sput-object v0, Lcom/kakaogame/auth/agreement/AdConsentManager;->INSTANCE:Lcom/kakaogame/auth/agreement/AdConsentManager;

    return-void

    .array-data 1
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .line 239
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void

    .array-data 1
    .end array-data
.end method

.method public static final synthetic access$sendBasicLog(Lcom/kakaogame/auth/agreement/AdConsentManager;Landroid/content/Context;ZZLjava/lang/String;)V
    .locals 0

    .line 239
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/kakaogame/auth/agreement/AdConsentManager;->sendBasicLog(Landroid/content/Context;ZZLjava/lang/String;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method public static final synthetic access$setAgreement(Lcom/kakaogame/auth/agreement/AdConsentManager;Landroid/content/Context;Z)V
    .locals 0

    .line 239
    invoke-direct {p0, p1, p2}, Lcom/kakaogame/auth/agreement/AdConsentManager;->setAgreement(Landroid/content/Context;Z)V

    return-void

    .array-data 1
    .end array-data
.end method

.method public static final synthetic access$showGoSettings(Lcom/kakaogame/auth/agreement/AdConsentManager;Landroid/app/Activity;Lkotlin/jvm/functions/Function1;)V
    .locals 0

    .line 239
    invoke-direct {p0, p1, p2}, Lcom/kakaogame/auth/agreement/AdConsentManager;->showGoSettings(Landroid/app/Activity;Lkotlin/jvm/functions/Function1;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method private final getAgreement(Landroid/content/Context;)Z
    .locals 3

    const v0, 0x33622963

    invoke-static {v0}, Lcom/liapp/y;->ׯ״ٲ֬ب(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const v2, -0x2242476c

    invoke-static {v2}, Lcom/liapp/y;->״دش۲ݮ(I)Ljava/lang/String;

    move-result-object v2

    .line 1089
    invoke-static {p1, v2, v0, v1}, Lcom/kakaogame/util/PreferenceUtil;->getBoolean(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p1

    return p1

    .array-data 1
    .end array-data
.end method

.method private final goSettings(Landroid/app/Activity;)V
    .locals 5

    .line 849
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    const/high16 v2, 0x10000000

    if-lt v0, v1, :cond_0

    .line 859
    new-instance v0, Landroid/content/Intent;

    const v1, 0x7d708e2d

    invoke-static {v1}, Lcom/liapp/y;->حֲݴܳޯ(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 869
    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v0

    const v1, 0x7d708f45

    invoke-static {v1}, Lcom/liapp/y;->حֲݴܳޯ(I)Ljava/lang/String;

    move-result-object v1

    .line 879
    invoke-virtual {p1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    goto :goto_0

    .line 899
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    const v4, 0x5d1506e7

    invoke-static {v4}, Lcom/liapp/y;->ڴݮگ֮ت(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v1, v3}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const v3, 0x33622dcb

    invoke-static {v3}, Lcom/liapp/y;->ׯ״ٲ֬ب(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 909
    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v1

    .line 889
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 929
    :goto_0
    invoke-virtual {p1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method private final sendBasicLog(Landroid/content/Context;ZZLjava/lang/String;)V
    .locals 12

    const v2, 0x6d0c9748

    invoke-static {v2}, Lcom/liapp/y;->ٱڳܴڭܩ(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7d708bad

    invoke-static {v3}, Lcom/liapp/y;->حֲݴܳޯ(I)Ljava/lang/String;

    move-result-object v3

    if-eqz p2, :cond_0

    const v0, -0x22424234

    invoke-static {v0}, Lcom/liapp/y;->״دش۲ݮ(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const v0, 0x5d10a2c7

    invoke-static {v0}, Lcom/liapp/y;->ڴݮگ֮ت(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    move-object v4, v0

    if-eqz p3, :cond_1

    const v0, 0x5d10a28f

    invoke-static {v0}, Lcom/liapp/y;->ڴݮگ֮ت(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_1
    const v0, 0x336220fb

    invoke-static {v0}, Lcom/liapp/y;->ׯ״ٲ֬ب(I)Ljava/lang/String;

    move-result-object v0

    :goto_1
    move-object v5, v0

    .line 1299
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    invoke-static {v0}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    new-instance v11, Lcom/kakaogame/auth/agreement/AdConsentManager$sendBasicLog$1;

    const/4 v7, 0x0

    move-object v0, v11

    move-object v1, p1

    move-object/from16 v6, p4

    invoke-direct/range {v0 .. v7}, Lcom/kakaogame/auth/agreement/AdConsentManager$sendBasicLog$1;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    move-object v0, v11

    check-cast v0, Lkotlin/jvm/functions/Function2;

    const/4 v1, 0x3

    const/4 v11, 0x0

    move-object v6, v8

    move-object v7, v9

    move-object v8, v10

    move-object v9, v0

    move v10, v1

    invoke-static/range {v6 .. v11}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void

    .array-data 1
    .end array-data
.end method

.method private final setAgreement(Landroid/content/Context;Z)V
    .locals 2

    const v0, -0x2242476c

    invoke-static {v0}, Lcom/liapp/y;->״دش۲ݮ(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x33622963

    invoke-static {v1}, Lcom/liapp/y;->ׯ״ٲ֬ب(I)Ljava/lang/String;

    move-result-object v1

    .line 1049
    invoke-static {p1, v0, v1, p2}, Lcom/kakaogame/util/PreferenceUtil;->setBoolean(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void

    .array-data 1
    .end array-data
.end method

.method private final showGoSettings(Landroid/app/Activity;Lkotlin/jvm/functions/Function1;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 689
    new-instance v0, Lcom/kakaogame/auth/view/AdConsentSettingsDialog;

    new-instance v1, Lcom/kakaogame/auth/agreement/AdConsentManager$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1, p2}, Lcom/kakaogame/auth/agreement/AdConsentManager$$ExternalSyntheticLambda0;-><init>(Landroid/app/Activity;Lkotlin/jvm/functions/Function1;)V

    invoke-direct {v0, p1, v1}, Lcom/kakaogame/auth/view/AdConsentSettingsDialog;-><init>(Landroid/app/Activity;Lkotlin/jvm/functions/Function1;)V

    .line 799
    invoke-virtual {v0}, Lcom/kakaogame/auth/view/AdConsentSettingsDialog;->show()V

    return-void

    .array-data 1
    .end array-data
.end method

.method private static final showGoSettings$lambda$0(Landroid/app/Activity;Lkotlin/jvm/functions/Function1;Z)Lkotlin/Unit;
    .locals 0

    if-eqz p2, :cond_0

    .line 729
    sget-object p1, Lcom/kakaogame/auth/agreement/AdConsentManager;->INSTANCE:Lcom/kakaogame/auth/agreement/AdConsentManager;

    move-object p2, p0

    check-cast p2, Landroid/content/Context;

    invoke-virtual {p1, p2}, Lcom/kakaogame/auth/agreement/AdConsentManager;->clearPreference(Landroid/content/Context;)V

    .line 739
    invoke-direct {p1, p0}, Lcom/kakaogame/auth/agreement/AdConsentManager;->goSettings(Landroid/app/Activity;)V

    .line 749
    invoke-static {p0}, Lcom/kakaogame/util/AppUtil;->terminateApp(Landroid/app/Activity;)V

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 769
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-interface {p1, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 789
    :goto_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public final clearPreference(Landroid/content/Context;)V
    .locals 3

    :try_start_0
    const-string v0, "AdAgreementData"

    .line 1139
    invoke-static {p1, v0}, Lcom/kakaogame/util/PreferenceUtil;->remove(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1159
    sget-object v0, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    check-cast p1, Ljava/lang/Throwable;

    const v2, 0x7d7084dd

    invoke-static {v2}, Lcom/liapp/y;->حֲݴܳޯ(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1, p1}, Lcom/kakaogame/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void

    .array-data 1
    .end array-data
.end method

.method public final isEnableAdConsent(Landroid/content/Context;)Lcom/kakaogame/KGAdConsent;
    .locals 2

    const v0, -0x451e0c57

    invoke-static {v0}, Lcom/liapp/y;->ڳݬ٬ۮݪ(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const v0, -0x2242476c

    invoke-static {v0}, Lcom/liapp/y;->״دش۲ݮ(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x33622963

    invoke-static {v1}, Lcom/liapp/y;->ׯ״ٲ֬ب(I)Ljava/lang/String;

    move-result-object v1

    .line 979
    invoke-static {p1, v0, v1}, Lcom/kakaogame/util/PreferenceUtil;->contains(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object p1, Lcom/kakaogame/KGAdConsent;->NONE:Lcom/kakaogame/KGAdConsent;

    goto :goto_0

    .line 989
    :cond_0
    sget-object v0, Lcom/kakaogame/util/DeviceUtil;->INSTANCE:Lcom/kakaogame/util/DeviceUtil;

    invoke-virtual {v0}, Lcom/kakaogame/util/DeviceUtil;->isLimitAdTracking()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object p1, Lcom/kakaogame/KGAdConsent;->DISABLE:Lcom/kakaogame/KGAdConsent;

    goto :goto_0

    .line 999
    :cond_1
    invoke-direct {p0, p1}, Lcom/kakaogame/auth/agreement/AdConsentManager;->getAgreement(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_2

    sget-object p1, Lcom/kakaogame/KGAdConsent;->ENABLE:Lcom/kakaogame/KGAdConsent;

    goto :goto_0

    :cond_2
    sget-object p1, Lcom/kakaogame/KGAdConsent;->DISABLE:Lcom/kakaogame/KGAdConsent;

    :goto_0
    return-object p1

    .array-data 1
    .end array-data
.end method

.method public final showAdConsentView(Landroid/app/Activity;Lcom/kakaogame/KGResultCallback;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lcom/kakaogame/KGResultCallback<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    const v0, 0x543d14da

    invoke-static {v0}, Lcom/liapp/y;->׳ֳֳ֬د(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const v0, 0x6d0d7b60

    invoke-static {v0}, Lcom/liapp/y;->ٱڳܴڭܩ(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 299
    move-object v0, p1

    check-cast v0, Landroid/content/Context;

    const v1, -0x2242476c

    invoke-static {v1}, Lcom/liapp/y;->״دش۲ݮ(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x33622963

    invoke-static {v2}, Lcom/liapp/y;->ׯ״ٲ֬ب(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/kakaogame/util/PreferenceUtil;->contains(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 309
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getMain()Lkotlinx/coroutines/MainCoroutineDispatcher;

    move-result-object v1

    check-cast v1, Lkotlin/coroutines/CoroutineContext;

    invoke-static {v1}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    new-instance v1, Lcom/kakaogame/auth/agreement/AdConsentManager$showAdConsentView$1;

    const/4 v5, 0x0

    invoke-direct {v1, p1, v0, p2, v5}, Lcom/kakaogame/auth/agreement/AdConsentManager$showAdConsentView$1;-><init>(Landroid/app/Activity;ZLcom/kakaogame/KGResultCallback;Lkotlin/coroutines/Continuation;)V

    move-object v5, v1

    check-cast v5, Lkotlin/jvm/functions/Function2;

    const/4 v6, 0x3

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void

    .array-data 1
    .end array-data
.end method
