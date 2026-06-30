.class final Lcom/kakaogame/auth/view/LoginUIManager$loginImpl$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "LoginUIManager.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kakaogame/auth/view/LoginUIManager;->loginImpl(Landroid/app/Activity;Ljava/lang/String;Lcom/kakaogame/auth/view/LoginUIManager$RequestType;ILcom/kakaogame/KGResultCallback;)V
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
    c = "com.kakaogame.auth.view.LoginUIManager$loginImpl$1"
    f = "LoginUIManager.kt"
    i = {}
    l = {
        0x145
    }
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

.field final synthetic $idpCode:Ljava/lang/String;

.field final synthetic $requestType:Lcom/kakaogame/auth/view/LoginUIManager$RequestType;

.field final synthetic $traceJobId:I

.field label:I


# direct methods
.method constructor <init>(Lcom/kakaogame/auth/view/LoginUIManager$RequestType;Landroid/app/Activity;Ljava/lang/String;ILcom/kakaogame/KGResultCallback;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/kakaogame/auth/view/LoginUIManager$RequestType;",
            "Landroid/app/Activity;",
            "Ljava/lang/String;",
            "I",
            "Lcom/kakaogame/KGResultCallback<",
            "Ljava/lang/Void;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/kakaogame/auth/view/LoginUIManager$loginImpl$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/kakaogame/auth/view/LoginUIManager$loginImpl$1;->$requestType:Lcom/kakaogame/auth/view/LoginUIManager$RequestType;

    iput-object p2, p0, Lcom/kakaogame/auth/view/LoginUIManager$loginImpl$1;->$activity:Landroid/app/Activity;

    iput-object p3, p0, Lcom/kakaogame/auth/view/LoginUIManager$loginImpl$1;->$idpCode:Ljava/lang/String;

    iput p4, p0, Lcom/kakaogame/auth/view/LoginUIManager$loginImpl$1;->$traceJobId:I

    iput-object p5, p0, Lcom/kakaogame/auth/view/LoginUIManager$loginImpl$1;->$callback:Lcom/kakaogame/KGResultCallback;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p6}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void

    nop

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 7
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

    new-instance p1, Lcom/kakaogame/auth/view/LoginUIManager$loginImpl$1;

    iget-object v1, p0, Lcom/kakaogame/auth/view/LoginUIManager$loginImpl$1;->$requestType:Lcom/kakaogame/auth/view/LoginUIManager$RequestType;

    iget-object v2, p0, Lcom/kakaogame/auth/view/LoginUIManager$loginImpl$1;->$activity:Landroid/app/Activity;

    iget-object v3, p0, Lcom/kakaogame/auth/view/LoginUIManager$loginImpl$1;->$idpCode:Ljava/lang/String;

    iget v4, p0, Lcom/kakaogame/auth/view/LoginUIManager$loginImpl$1;->$traceJobId:I

    iget-object v5, p0, Lcom/kakaogame/auth/view/LoginUIManager$loginImpl$1;->$callback:Lcom/kakaogame/KGResultCallback;

    move-object v0, p1

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/kakaogame/auth/view/LoginUIManager$loginImpl$1;-><init>(Lcom/kakaogame/auth/view/LoginUIManager$RequestType;Landroid/app/Activity;Ljava/lang/String;ILcom/kakaogame/KGResultCallback;Lkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlin/coroutines/Continuation;

    return-object p1

    .array-data 1
    .end array-data
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/kakaogame/auth/view/LoginUIManager$loginImpl$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/kakaogame/auth/view/LoginUIManager$loginImpl$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/kakaogame/auth/view/LoginUIManager$loginImpl$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/kakaogame/auth/view/LoginUIManager$loginImpl$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    nop

    .array-data 1
    .end array-data
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 3079
    iget v1, p0, Lcom/kakaogame/auth/view/LoginUIManager$loginImpl$1;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const v0, -0x451e018f

    invoke-static {v0}, Lcom/liapp/y;->ڳݬ٬ۮݪ(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 3089
    iget-object p1, p0, Lcom/kakaogame/auth/view/LoginUIManager$loginImpl$1;->$requestType:Lcom/kakaogame/auth/view/LoginUIManager$RequestType;

    sget-object v1, Lcom/kakaogame/auth/view/LoginUIManager$RequestType;->CONNECT:Lcom/kakaogame/auth/view/LoginUIManager$RequestType;

    const/4 v3, 0x0

    if-ne p1, v1, :cond_2

    .line 3109
    iget-object p1, p0, Lcom/kakaogame/auth/view/LoginUIManager$loginImpl$1;->$activity:Landroid/app/Activity;

    .line 3119
    iget-object v1, p0, Lcom/kakaogame/auth/view/LoginUIManager$loginImpl$1;->$idpCode:Ljava/lang/String;

    .line 3149
    iget v4, p0, Lcom/kakaogame/auth/view/LoginUIManager$loginImpl$1;->$traceJobId:I

    .line 3099
    invoke-static {p1, v1, v3, v2, v4}, Lcom/kakaogame/auth/AuthImpl;->connectImpl(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;ZI)Lcom/kakaogame/KGResult;

    move-result-object p1

    goto :goto_0

    .line 3189
    :cond_2
    iget-object p1, p0, Lcom/kakaogame/auth/view/LoginUIManager$loginImpl$1;->$activity:Landroid/app/Activity;

    .line 3199
    iget-object v1, p0, Lcom/kakaogame/auth/view/LoginUIManager$loginImpl$1;->$idpCode:Ljava/lang/String;

    .line 3219
    iget v4, p0, Lcom/kakaogame/auth/view/LoginUIManager$loginImpl$1;->$traceJobId:I

    .line 3179
    invoke-static {p1, v1, v3, v4}, Lcom/kakaogame/auth/AuthImpl;->loginImpl(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;I)Lcom/kakaogame/KGResult;

    move-result-object p1

    .line 3259
    :goto_0
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getMain()Lkotlinx/coroutines/MainCoroutineDispatcher;

    move-result-object v1

    check-cast v1, Lkotlin/coroutines/CoroutineContext;

    new-instance v4, Lcom/kakaogame/auth/view/LoginUIManager$loginImpl$1$1;

    iget-object v5, p0, Lcom/kakaogame/auth/view/LoginUIManager$loginImpl$1;->$callback:Lcom/kakaogame/KGResultCallback;

    invoke-direct {v4, p1, v5, v3}, Lcom/kakaogame/auth/view/LoginUIManager$loginImpl$1$1;-><init>(Lcom/kakaogame/KGResult;Lcom/kakaogame/KGResultCallback;Lkotlin/coroutines/Continuation;)V

    check-cast v4, Lkotlin/jvm/functions/Function2;

    move-object p1, p0

    check-cast p1, Lkotlin/coroutines/Continuation;

    iput v2, p0, Lcom/kakaogame/auth/view/LoginUIManager$loginImpl$1;->label:I

    invoke-static {v1, v4, p1}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_3

    return-object v0

    .line 3309
    :cond_3
    :goto_1
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    nop

    .array-data 1
    .end array-data
.end method
