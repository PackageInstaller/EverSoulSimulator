.class final Lcom/kakaogame/auth/agreement/AdConsentManager$showAdConsentView$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "AdConsentManager.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kakaogame/auth/agreement/AdConsentManager;->showAdConsentView(Landroid/app/Activity;Lcom/kakaogame/KGResultCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lkotlinx/coroutines/CoroutineScope;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"
    }
    d2 = {
        "<anonymous>",
        "",
        "Lkotlinx/coroutines/CoroutineScope;"
    }
    k = 0x3
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.kakaogame.auth.agreement.AdConsentManager$showAdConsentView$1"
    f = "AdConsentManager.kt"
    i = {}
    l = {}
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $activity:Landroid/app/Activity;

.field final synthetic $callback:Lcom/kakaogame/KGResultCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/kakaogame/KGResultCallback<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $isSetting:Z

.field label:I


# direct methods
.method public static synthetic $r8$lambda$jA_TMWVShwJfQZ3wuaFc3aGUlnY(Landroid/app/Activity;ZLcom/kakaogame/KGResultCallback;Z)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/kakaogame/auth/agreement/AdConsentManager$showAdConsentView$1;->invokeSuspend$lambda$1$lambda$0(Landroid/app/Activity;ZLcom/kakaogame/KGResultCallback;Z)Lkotlin/Unit;

    move-result-object p0

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static synthetic $r8$lambda$z6OKyZgPq_WRl1oAfXnTB4yK6f8(Landroid/app/Activity;ZLcom/kakaogame/KGResultCallback;Z)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/kakaogame/auth/agreement/AdConsentManager$showAdConsentView$1;->invokeSuspend$lambda$1(Landroid/app/Activity;ZLcom/kakaogame/KGResultCallback;Z)Lkotlin/Unit;

    move-result-object p0

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method constructor <init>(Landroid/app/Activity;ZLcom/kakaogame/KGResultCallback;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Z",
            "Lcom/kakaogame/KGResultCallback<",
            "Ljava/lang/Void;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/kakaogame/auth/agreement/AdConsentManager$showAdConsentView$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/kakaogame/auth/agreement/AdConsentManager$showAdConsentView$1;->$activity:Landroid/app/Activity;

    iput-boolean p2, p0, Lcom/kakaogame/auth/agreement/AdConsentManager$showAdConsentView$1;->$isSetting:Z

    iput-object p3, p0, Lcom/kakaogame/auth/agreement/AdConsentManager$showAdConsentView$1;->$callback:Lcom/kakaogame/KGResultCallback;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method private static final invokeSuspend$lambda$1(Landroid/app/Activity;ZLcom/kakaogame/KGResultCallback;Z)Lkotlin/Unit;
    .locals 2

    .line 349
    sget-object v0, Lcom/kakaogame/util/DeviceUtil;->INSTANCE:Lcom/kakaogame/util/DeviceUtil;

    invoke-virtual {v0}, Lcom/kakaogame/util/DeviceUtil;->isLimitAdTracking()Z

    move-result v0

    and-int/2addr v0, p3

    if-eqz v0, :cond_0

    .line 359
    sget-object p3, Lcom/kakaogame/auth/agreement/AdConsentManager;->INSTANCE:Lcom/kakaogame/auth/agreement/AdConsentManager;

    new-instance v0, Lcom/kakaogame/auth/agreement/AdConsentManager$showAdConsentView$1$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p1, p2}, Lcom/kakaogame/auth/agreement/AdConsentManager$showAdConsentView$1$$ExternalSyntheticLambda1;-><init>(Landroid/app/Activity;ZLcom/kakaogame/KGResultCallback;)V

    invoke-static {p3, p0, v0}, Lcom/kakaogame/auth/agreement/AdConsentManager;->access$showGoSettings(Lcom/kakaogame/auth/agreement/AdConsentManager;Landroid/app/Activity;Lkotlin/jvm/functions/Function1;)V

    goto :goto_1

    .line 509
    :cond_0
    sget-object v0, Lcom/kakaogame/auth/agreement/AdConsentManager;->INSTANCE:Lcom/kakaogame/auth/agreement/AdConsentManager;

    .line 519
    check-cast p0, Landroid/content/Context;

    .line 509
    invoke-static {v0, p0, p3}, Lcom/kakaogame/auth/agreement/AdConsentManager;->access$setAgreement(Lcom/kakaogame/auth/agreement/AdConsentManager;Landroid/content/Context;Z)V

    .line 549
    sget-object v0, Lcom/kakaogame/auth/agreement/AdConsentManager;->INSTANCE:Lcom/kakaogame/auth/agreement/AdConsentManager;

    if-eqz p3, :cond_1

    .line 589
    invoke-static {p0}, Lcom/kakaogame/util/DeviceUtil;->getAdvertisingId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 549
    :goto_0
    invoke-static {v0, p0, p3, p1, v1}, Lcom/kakaogame/auth/agreement/AdConsentManager;->access$sendBasicLog(Lcom/kakaogame/auth/agreement/AdConsentManager;Landroid/content/Context;ZZLjava/lang/String;)V

    .line 609
    sget-object p0, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    invoke-virtual {p0}, Lcom/kakaogame/KGResult$Companion;->getSuccessResult()Lcom/kakaogame/KGResult;

    move-result-object p0

    invoke-interface {p2, p0}, Lcom/kakaogame/KGResultCallback;->onResult(Lcom/kakaogame/KGResult;)V

    .line 629
    :goto_1
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    .array-data 1
    .end array-data
.end method

.method private static final invokeSuspend$lambda$1$lambda$0(Landroid/app/Activity;ZLcom/kakaogame/KGResultCallback;Z)Lkotlin/Unit;
    .locals 2

    .line 379
    sget-object p3, Lcom/kakaogame/auth/agreement/AdConsentManager;->INSTANCE:Lcom/kakaogame/auth/agreement/AdConsentManager;

    .line 389
    check-cast p0, Landroid/content/Context;

    const/4 v0, 0x0

    .line 379
    invoke-static {p3, p0, v0}, Lcom/kakaogame/auth/agreement/AdConsentManager;->access$setAgreement(Lcom/kakaogame/auth/agreement/AdConsentManager;Landroid/content/Context;Z)V

    .line 419
    sget-object p3, Lcom/kakaogame/auth/agreement/AdConsentManager;->INSTANCE:Lcom/kakaogame/auth/agreement/AdConsentManager;

    const/4 v1, 0x0

    invoke-static {p3, p0, v0, p1, v1}, Lcom/kakaogame/auth/agreement/AdConsentManager;->access$sendBasicLog(Lcom/kakaogame/auth/agreement/AdConsentManager;Landroid/content/Context;ZZLjava/lang/String;)V

    .line 479
    sget-object p0, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    invoke-virtual {p0}, Lcom/kakaogame/KGResult$Companion;->getSuccessResult()Lcom/kakaogame/KGResult;

    move-result-object p0

    invoke-interface {p2, p0}, Lcom/kakaogame/KGResultCallback;->onResult(Lcom/kakaogame/KGResult;)V

    .line 489
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlin/coroutines/Continuation<",
            "*>;)",
            "Lkotlin/coroutines/Continuation<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    new-instance p1, Lcom/kakaogame/auth/agreement/AdConsentManager$showAdConsentView$1;

    iget-object v0, p0, Lcom/kakaogame/auth/agreement/AdConsentManager$showAdConsentView$1;->$activity:Landroid/app/Activity;

    iget-boolean v1, p0, Lcom/kakaogame/auth/agreement/AdConsentManager$showAdConsentView$1;->$isSetting:Z

    iget-object v2, p0, Lcom/kakaogame/auth/agreement/AdConsentManager$showAdConsentView$1;->$callback:Lcom/kakaogame/KGResultCallback;

    invoke-direct {p1, v0, v1, v2, p2}, Lcom/kakaogame/auth/agreement/AdConsentManager$showAdConsentView$1;-><init>(Landroid/app/Activity;ZLcom/kakaogame/KGResultCallback;Lkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlin/coroutines/Continuation;

    return-object p1

    .array-data 1
    .end array-data
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/kakaogame/auth/agreement/AdConsentManager$showAdConsentView$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    nop

    .array-data 1
    .end array-data
.end method

.method public final invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/CoroutineScope;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/kakaogame/auth/agreement/AdConsentManager$showAdConsentView$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/kakaogame/auth/agreement/AdConsentManager$showAdConsentView$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/kakaogame/auth/agreement/AdConsentManager$showAdConsentView$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    nop

    .array-data 1
    .end array-data
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 309
    iget v0, p0, Lcom/kakaogame/auth/agreement/AdConsentManager$showAdConsentView$1;->label:I

    if-nez v0, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 319
    new-instance p1, Lcom/kakaogame/auth/view/AdConsentDialog;

    .line 329
    iget-object v0, p0, Lcom/kakaogame/auth/agreement/AdConsentManager$showAdConsentView$1;->$activity:Landroid/app/Activity;

    .line 319
    iget-boolean v1, p0, Lcom/kakaogame/auth/agreement/AdConsentManager$showAdConsentView$1;->$isSetting:Z

    iget-object v2, p0, Lcom/kakaogame/auth/agreement/AdConsentManager$showAdConsentView$1;->$callback:Lcom/kakaogame/KGResultCallback;

    new-instance v3, Lcom/kakaogame/auth/agreement/AdConsentManager$showAdConsentView$1$$ExternalSyntheticLambda0;

    invoke-direct {v3, v0, v1, v2}, Lcom/kakaogame/auth/agreement/AdConsentManager$showAdConsentView$1$$ExternalSyntheticLambda0;-><init>(Landroid/app/Activity;ZLcom/kakaogame/KGResultCallback;)V

    invoke-direct {p1, v0, v3}, Lcom/kakaogame/auth/view/AdConsentDialog;-><init>(Landroid/app/Activity;Lkotlin/jvm/functions/Function1;)V

    .line 639
    invoke-virtual {p1}, Lcom/kakaogame/auth/view/AdConsentDialog;->show()V

    .line 649
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 309
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const v0, -0x451e018f

    invoke-static {v0}, Lcom/liapp/y;->ڳݬ٬ۮݪ(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    nop

    .array-data 1
    .end array-data
.end method
