.class final Lcom/kakaogame/security/ProtectionManager$showPasswordInputDialog$2$1$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "ProtectionManager.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kakaogame/security/ProtectionManager$showPasswordInputDialog$2$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
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
    c = "com.kakaogame.security.ProtectionManager$showPasswordInputDialog$2$1$1"
    f = "ProtectionManager.kt"
    i = {}
    l = {}
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
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field final synthetic $keypadDataResult:Lcom/kakaogame/KGResult;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/kakaogame/KGResult<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field label:I


# direct methods
.method constructor <init>(Lcom/kakaogame/KGResult;Landroid/app/Activity;Lkotlin/coroutines/Continuation;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/kakaogame/KGResult<",
            "Ljava/lang/Void;",
            ">;",
            "Landroid/app/Activity;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/kakaogame/KGResult<",
            "Ljava/lang/String;",
            ">;>;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/kakaogame/security/ProtectionManager$showPasswordInputDialog$2$1$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/kakaogame/security/ProtectionManager$showPasswordInputDialog$2$1$1;->$keypadDataResult:Lcom/kakaogame/KGResult;

    iput-object p2, p0, Lcom/kakaogame/security/ProtectionManager$showPasswordInputDialog$2$1$1;->$activity:Landroid/app/Activity;

    iput-object p3, p0, Lcom/kakaogame/security/ProtectionManager$showPasswordInputDialog$2$1$1;->$it:Lkotlin/coroutines/Continuation;

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

    new-instance p1, Lcom/kakaogame/security/ProtectionManager$showPasswordInputDialog$2$1$1;

    iget-object v0, p0, Lcom/kakaogame/security/ProtectionManager$showPasswordInputDialog$2$1$1;->$keypadDataResult:Lcom/kakaogame/KGResult;

    iget-object v1, p0, Lcom/kakaogame/security/ProtectionManager$showPasswordInputDialog$2$1$1;->$activity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/kakaogame/security/ProtectionManager$showPasswordInputDialog$2$1$1;->$it:Lkotlin/coroutines/Continuation;

    invoke-direct {p1, v0, v1, v2, p2}, Lcom/kakaogame/security/ProtectionManager$showPasswordInputDialog$2$1$1;-><init>(Lcom/kakaogame/KGResult;Landroid/app/Activity;Lkotlin/coroutines/Continuation;Lkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlin/coroutines/Continuation;

    return-object p1

    .array-data 1
    .end array-data
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/kakaogame/security/ProtectionManager$showPasswordInputDialog$2$1$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/kakaogame/security/ProtectionManager$showPasswordInputDialog$2$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/kakaogame/security/ProtectionManager$showPasswordInputDialog$2$1$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/kakaogame/security/ProtectionManager$showPasswordInputDialog$2$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    nop

    .array-data 1
    .end array-data
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 4999
    iget v0, p0, Lcom/kakaogame/security/ProtectionManager$showPasswordInputDialog$2$1$1;->label:I

    if-nez v0, :cond_1

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 5019
    :try_start_0
    iget-object p1, p0, Lcom/kakaogame/security/ProtectionManager$showPasswordInputDialog$2$1$1;->$keypadDataResult:Lcom/kakaogame/KGResult;

    invoke-virtual {p1}, Lcom/kakaogame/KGResult;->isSuccess()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 5029
    iget-object p1, p0, Lcom/kakaogame/security/ProtectionManager$showPasswordInputDialog$2$1$1;->$activity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getRequestedOrientation()I

    move-result p1

    .line 5039
    iget-object v0, p0, Lcom/kakaogame/security/ProtectionManager$showPasswordInputDialog$2$1$1;->$activity:Landroid/app/Activity;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 5049
    new-instance v0, Lcom/kakaogame/secondpw/SecondPWViewDialog;

    .line 5059
    iget-object v1, p0, Lcom/kakaogame/security/ProtectionManager$showPasswordInputDialog$2$1$1;->$activity:Landroid/app/Activity;

    .line 5069
    sget-object v2, Lcom/kakaogame/secondpw/ActionType;->ENTER_IS_ALLOWED_ACCESS:Lcom/kakaogame/secondpw/ActionType;

    .line 5079
    new-instance v3, Lcom/kakaogame/security/ProtectionManager$showPasswordInputDialog$2$1$1$dialog$1;

    iget-object v4, p0, Lcom/kakaogame/security/ProtectionManager$showPasswordInputDialog$2$1$1;->$activity:Landroid/app/Activity;

    iget-object v5, p0, Lcom/kakaogame/security/ProtectionManager$showPasswordInputDialog$2$1$1;->$it:Lkotlin/coroutines/Continuation;

    invoke-direct {v3, v4, p1, v5}, Lcom/kakaogame/security/ProtectionManager$showPasswordInputDialog$2$1$1$dialog$1;-><init>(Landroid/app/Activity;ILkotlin/coroutines/Continuation;)V

    check-cast v3, Lcom/kakaogame/KGResultCallback;

    .line 5049
    invoke-direct {v0, v1, v2, v3}, Lcom/kakaogame/secondpw/SecondPWViewDialog;-><init>(Landroid/app/Activity;Lcom/kakaogame/secondpw/ActionType;Lcom/kakaogame/KGResultCallback;)V

    .line 5139
    invoke-virtual {v0}, Lcom/kakaogame/secondpw/SecondPWViewDialog;->show()V

    goto :goto_0

    .line 5159
    :cond_0
    iget-object p1, p0, Lcom/kakaogame/security/ProtectionManager$showPasswordInputDialog$2$1$1;->$it:Lkotlin/coroutines/Continuation;

    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    sget-object v0, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    iget-object v1, p0, Lcom/kakaogame/security/ProtectionManager$showPasswordInputDialog$2$1$1;->$keypadDataResult:Lcom/kakaogame/KGResult;

    check-cast v1, Ljava/util/Map;

    invoke-virtual {v0, v1}, Lcom/kakaogame/KGResult$Companion;->getResult(Ljava/util/Map;)Lcom/kakaogame/KGResult;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, v0}, Lkotlin/coroutines/Continuation;->resumeWith(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 5189
    sget-object v0, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v2, p1

    check-cast v2, Ljava/lang/Throwable;

    const v3, 0x5d1f14df

    invoke-static {v3}, Lcom/liapp/y;->ڴݮگ֮ت(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3, v1, v2}, Lcom/kakaogame/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 5199
    iget-object v0, p0, Lcom/kakaogame/security/ProtectionManager$showPasswordInputDialog$2$1$1;->$it:Lkotlin/coroutines/Continuation;

    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    sget-object v1, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    const/16 v2, 0xfa1

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, v2, p1}, Lcom/kakaogame/KGResult$Companion;->getResult(ILjava/lang/String;)Lcom/kakaogame/KGResult;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, p1}, Lkotlin/coroutines/Continuation;->resumeWith(Ljava/lang/Object;)V

    .line 5219
    :goto_0
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 4999
    :cond_1
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
