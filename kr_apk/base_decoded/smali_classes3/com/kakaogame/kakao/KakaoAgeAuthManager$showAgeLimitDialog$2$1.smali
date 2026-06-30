.class final Lcom/kakaogame/kakao/KakaoAgeAuthManager$showAgeLimitDialog$2$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "KakaoAgeAuthManager.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kakaogame/kakao/KakaoAgeAuthManager;->showAgeLimitDialog(Landroid/app/Activity;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;
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
    c = "com.kakaogame.kakao.KakaoAgeAuthManager$showAgeLimitDialog$2$1"
    f = "KakaoAgeAuthManager.kt"
    i = {}
    l = {
        0x14c
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $activity:Landroid/app/Activity;

.field final synthetic $cont:Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/coroutines/Continuation<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $isLogin:Z

.field label:I


# direct methods
.method constructor <init>(ZLandroid/app/Activity;Lkotlin/coroutines/Continuation;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Landroid/app/Activity;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/kakaogame/kakao/KakaoAgeAuthManager$showAgeLimitDialog$2$1;",
            ">;)V"
        }
    .end annotation

    iput-boolean p1, p0, Lcom/kakaogame/kakao/KakaoAgeAuthManager$showAgeLimitDialog$2$1;->$isLogin:Z

    iput-object p2, p0, Lcom/kakaogame/kakao/KakaoAgeAuthManager$showAgeLimitDialog$2$1;->$activity:Landroid/app/Activity;

    iput-object p3, p0, Lcom/kakaogame/kakao/KakaoAgeAuthManager$showAgeLimitDialog$2$1;->$cont:Lkotlin/coroutines/Continuation;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void

    nop

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

    new-instance p1, Lcom/kakaogame/kakao/KakaoAgeAuthManager$showAgeLimitDialog$2$1;

    iget-boolean v0, p0, Lcom/kakaogame/kakao/KakaoAgeAuthManager$showAgeLimitDialog$2$1;->$isLogin:Z

    iget-object v1, p0, Lcom/kakaogame/kakao/KakaoAgeAuthManager$showAgeLimitDialog$2$1;->$activity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/kakaogame/kakao/KakaoAgeAuthManager$showAgeLimitDialog$2$1;->$cont:Lkotlin/coroutines/Continuation;

    invoke-direct {p1, v0, v1, v2, p2}, Lcom/kakaogame/kakao/KakaoAgeAuthManager$showAgeLimitDialog$2$1;-><init>(ZLandroid/app/Activity;Lkotlin/coroutines/Continuation;Lkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlin/coroutines/Continuation;

    return-object p1

    .array-data 1
    .end array-data
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/kakaogame/kakao/KakaoAgeAuthManager$showAgeLimitDialog$2$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/kakaogame/kakao/KakaoAgeAuthManager$showAgeLimitDialog$2$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/kakaogame/kakao/KakaoAgeAuthManager$showAgeLimitDialog$2$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/kakaogame/kakao/KakaoAgeAuthManager$showAgeLimitDialog$2$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    nop

    .array-data 1
    .end array-data
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 3309
    iget v1, p0, Lcom/kakaogame/kakao/KakaoAgeAuthManager$showAgeLimitDialog$2$1;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const v0, -0x451e018f

    invoke-static {v0}, Lcom/liapp/y;->ڳݬ٬ۮݪ(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 3319
    iget-boolean p1, p0, Lcom/kakaogame/kakao/KakaoAgeAuthManager$showAgeLimitDialog$2$1;->$isLogin:Z

    if-eqz p1, :cond_3

    .line 3329
    sget-object p1, Lcom/kakaogame/kakao/KakaoManager;->INSTANCE:Lcom/kakaogame/kakao/KakaoManager;

    move-object v1, p0

    check-cast v1, Lkotlin/coroutines/Continuation;

    iput v2, p0, Lcom/kakaogame/kakao/KakaoAgeAuthManager$showAgeLimitDialog$2$1;->label:I

    invoke-virtual {p1, v1}, Lcom/kakaogame/kakao/KakaoManager;->unlink(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    .line 3309
    :cond_2
    :goto_0
    check-cast p1, Lcom/kakaogame/KGResult;

    .line 3339
    sget-object v0, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    invoke-static {}, Lcom/kakaogame/kakao/KakaoAgeAuthManager;->access$getTAG$p()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    const v4, -0x451bf537

    invoke-static {v4}, Lcom/liapp/y;->ڳݬ٬ۮݪ(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/kakaogame/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3349
    sget-object p1, Lcom/kakaogame/core/CoreManager;->Companion:Lcom/kakaogame/core/CoreManager$Companion;

    invoke-virtual {p1}, Lcom/kakaogame/core/CoreManager$Companion;->getInstance()Lcom/kakaogame/core/CoreManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/kakaogame/core/CoreManager;->logout()Lcom/kakaogame/KGResult;

    .line 3389
    :cond_3
    :try_start_0
    iget-object p1, p0, Lcom/kakaogame/kakao/KakaoAgeAuthManager$showAgeLimitDialog$2$1;->$activity:Landroid/app/Activity;

    invoke-static {p1}, Lcom/kakaogame/ui/DialogManager;->createAlertDialogBuilder(Landroid/app/Activity;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 3399
    sget-object v0, Lcom/kakaogame/kakao/KakaoAgeAuthManager;->INSTANCE:Lcom/kakaogame/kakao/KakaoAgeAuthManager;

    invoke-static {v0}, Lcom/kakaogame/kakao/KakaoAgeAuthManager;->access$getAgeAuthLimit(Lcom/kakaogame/kakao/KakaoAgeAuthManager;)I

    move-result v0

    sub-int/2addr v0, v2

    .line 3409
    iget-object v1, p0, Lcom/kakaogame/kakao/KakaoAgeAuthManager$showAgeLimitDialog$2$1;->$activity:Landroid/app/Activity;

    check-cast v1, Landroid/content/Context;

    const-string/jumbo v3, "zinny_sdk_reach_kakao_age_limit"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0}, Lkotlin/coroutines/jvm/internal/Boxing;->boxInt(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v4, 0x0

    aput-object v0, v2, v4

    invoke-static {v1, v3, v2}, Lcom/kakaogame/util/ResourceUtil;->getString(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 3419
    iget-object v1, p0, Lcom/kakaogame/kakao/KakaoAgeAuthManager$showAgeLimitDialog$2$1;->$activity:Landroid/app/Activity;

    check-cast v1, Landroid/content/Context;

    const-string/jumbo v2, "zinny_sdk_common_button_ok"

    invoke-static {v1, v2}, Lcom/kakaogame/util/ResourceUtil;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3429
    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 3439
    check-cast v1, Ljava/lang/CharSequence;

    new-instance v0, Lcom/kakaogame/kakao/KakaoAgeAuthManager$showAgeLimitDialog$2$1$1;

    iget-object v2, p0, Lcom/kakaogame/kakao/KakaoAgeAuthManager$showAgeLimitDialog$2$1;->$cont:Lkotlin/coroutines/Continuation;

    invoke-direct {v0, v2}, Lcom/kakaogame/kakao/KakaoAgeAuthManager$showAgeLimitDialog$2$1$1;-><init>(Lkotlin/coroutines/Continuation;)V

    check-cast v0, Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p1, v1, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 3469
    invoke-virtual {p1, v4}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 3479
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 3499
    sget-object v0, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    invoke-static {}, Lcom/kakaogame/kakao/KakaoAgeAuthManager;->access$getTAG$p()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {v0, v1, v2, p1}, Lcom/kakaogame/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3509
    iget-object p1, p0, Lcom/kakaogame/kakao/KakaoAgeAuthManager$showAgeLimitDialog$2$1;->$cont:Lkotlin/coroutines/Continuation;

    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    const/4 v0, 0x0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, v0}, Lkotlin/coroutines/Continuation;->resumeWith(Ljava/lang/Object;)V

    .line 3529
    :goto_1
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .array-data 1
    .end array-data
.end method
