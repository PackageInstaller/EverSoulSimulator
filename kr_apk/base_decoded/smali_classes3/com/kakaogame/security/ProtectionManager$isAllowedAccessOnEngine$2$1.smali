.class final Lcom/kakaogame/security/ProtectionManager$isAllowedAccessOnEngine$2$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "ProtectionManager.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kakaogame/security/ProtectionManager;->isAllowedAccessOnEngine(Landroid/app/Activity;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
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
    c = "com.kakaogame.security.ProtectionManager$isAllowedAccessOnEngine$2$1"
    f = "ProtectionManager.kt"
    i = {}
    l = {
        0xf7
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $activity:Landroid/app/Activity;

.field final synthetic $it:Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/coroutines/Continuation<",
            "Lcom/kakaogame/KGResult<",
            "Lcom/kakaogame/secondpw/viewdata/Base2ndPWViewData;",
            ">;>;"
        }
    .end annotation
.end field

.field label:I


# direct methods
.method constructor <init>(Landroid/app/Activity;Lkotlin/coroutines/Continuation;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/kakaogame/KGResult<",
            "Lcom/kakaogame/secondpw/viewdata/Base2ndPWViewData;",
            ">;>;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/kakaogame/security/ProtectionManager$isAllowedAccessOnEngine$2$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/kakaogame/security/ProtectionManager$isAllowedAccessOnEngine$2$1;->$activity:Landroid/app/Activity;

    iput-object p2, p0, Lcom/kakaogame/security/ProtectionManager$isAllowedAccessOnEngine$2$1;->$it:Lkotlin/coroutines/Continuation;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void

    nop

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 2
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

    new-instance p1, Lcom/kakaogame/security/ProtectionManager$isAllowedAccessOnEngine$2$1;

    iget-object v0, p0, Lcom/kakaogame/security/ProtectionManager$isAllowedAccessOnEngine$2$1;->$activity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/kakaogame/security/ProtectionManager$isAllowedAccessOnEngine$2$1;->$it:Lkotlin/coroutines/Continuation;

    invoke-direct {p1, v0, v1, p2}, Lcom/kakaogame/security/ProtectionManager$isAllowedAccessOnEngine$2$1;-><init>(Landroid/app/Activity;Lkotlin/coroutines/Continuation;Lkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlin/coroutines/Continuation;

    return-object p1

    .array-data 1
    .end array-data
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/kakaogame/security/ProtectionManager$isAllowedAccessOnEngine$2$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/kakaogame/security/ProtectionManager$isAllowedAccessOnEngine$2$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/kakaogame/security/ProtectionManager$isAllowedAccessOnEngine$2$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/kakaogame/security/ProtectionManager$isAllowedAccessOnEngine$2$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    nop

    .array-data 1
    .end array-data
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 2469
    iget v1, p0, Lcom/kakaogame/security/ProtectionManager$isAllowedAccessOnEngine$2$1;->label:I

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

    .line 2479
    sget-object v1, Lcom/kakaogame/secondpw/SecondPWViewManager;->INSTANCE:Lcom/kakaogame/secondpw/SecondPWViewManager;

    iget-object p1, p0, Lcom/kakaogame/security/ProtectionManager$isAllowedAccessOnEngine$2$1;->$activity:Landroid/app/Activity;

    check-cast p1, Landroid/content/Context;

    const/4 v3, 0x0

    move-object v4, p0

    check-cast v4, Lkotlin/coroutines/Continuation;

    const/4 v5, 0x2

    const/4 v6, 0x0

    iput v2, p0, Lcom/kakaogame/security/ProtectionManager$isAllowedAccessOnEngine$2$1;->label:I

    move-object v2, p1

    invoke-static/range {v1 .. v6}, Lcom/kakaogame/secondpw/SecondPWViewManager;->getKeypadData$default(Lcom/kakaogame/secondpw/SecondPWViewManager;Landroid/content/Context;ILkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    .line 2469
    :cond_2
    :goto_0
    check-cast p1, Lcom/kakaogame/KGResult;

    .line 2489
    invoke-virtual {p1}, Lcom/kakaogame/KGResult;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2499
    sget-object v1, Lcom/kakaogame/secondpw/SecondPWViewManager;->INSTANCE:Lcom/kakaogame/secondpw/SecondPWViewManager;

    .line 2509
    iget-object v2, p0, Lcom/kakaogame/security/ProtectionManager$isAllowedAccessOnEngine$2$1;->$activity:Landroid/app/Activity;

    .line 2519
    sget-object v3, Lcom/kakaogame/secondpw/ActionType;->ENTER_IS_ALLOWED_ACCESS:Lcom/kakaogame/secondpw/ActionType;

    const/4 v4, 0x0

    .line 2499
    new-instance p1, Lcom/kakaogame/security/ProtectionManager$isAllowedAccessOnEngine$2$1$1;

    iget-object v0, p0, Lcom/kakaogame/security/ProtectionManager$isAllowedAccessOnEngine$2$1;->$it:Lkotlin/coroutines/Continuation;

    invoke-direct {p1, v0}, Lcom/kakaogame/security/ProtectionManager$isAllowedAccessOnEngine$2$1$1;-><init>(Lkotlin/coroutines/Continuation;)V

    move-object v5, p1

    check-cast v5, Lkotlin/jvm/functions/Function1;

    const/4 v6, 0x4

    const/4 v7, 0x0

    invoke-static/range {v1 .. v7}, Lcom/kakaogame/secondpw/SecondPWViewManager;->getUIData$default(Lcom/kakaogame/secondpw/SecondPWViewManager;Landroid/app/Activity;Lcom/kakaogame/secondpw/ActionType;Ljava/lang/String;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    goto :goto_1

    .line 2599
    :cond_3
    iget-object v0, p0, Lcom/kakaogame/security/ProtectionManager$isAllowedAccessOnEngine$2$1;->$it:Lkotlin/coroutines/Continuation;

    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    sget-object v1, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    check-cast p1, Ljava/util/Map;

    invoke-virtual {v1, p1}, Lcom/kakaogame/KGResult$Companion;->getResult(Ljava/util/Map;)Lcom/kakaogame/KGResult;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, p1}, Lkotlin/coroutines/Continuation;->resumeWith(Ljava/lang/Object;)V

    .line 2619
    :goto_1
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .array-data 1
    .end array-data
.end method
