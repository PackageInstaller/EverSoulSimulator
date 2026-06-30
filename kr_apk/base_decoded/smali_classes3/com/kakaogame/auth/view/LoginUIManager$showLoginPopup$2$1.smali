.class final Lcom/kakaogame/auth/view/LoginUIManager$showLoginPopup$2$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "LoginUIManager.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kakaogame/auth/view/LoginUIManager;->showLoginPopup(Landroid/app/Activity;Ljava/util/List;Lcom/kakaogame/auth/view/LoginUIManager$RequestType;ILkotlin/coroutines/Continuation;)Ljava/lang/Object;
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
    c = "com.kakaogame.auth.view.LoginUIManager$showLoginPopup$2$1"
    f = "LoginUIManager.kt"
    i = {}
    l = {}
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
            "Lcom/kakaogame/KGResult<",
            "Ljava/lang/Void;",
            ">;>;"
        }
    .end annotation
.end field

.field final synthetic $idpCodes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $requestType:Lcom/kakaogame/auth/view/LoginUIManager$RequestType;

.field final synthetic $traceJobId:I

.field label:I


# direct methods
.method constructor <init>(Landroid/app/Activity;Ljava/util/List;Lcom/kakaogame/auth/view/LoginUIManager$RequestType;ILkotlin/coroutines/Continuation;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/kakaogame/auth/view/LoginUIManager$RequestType;",
            "I",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/kakaogame/KGResult<",
            "Ljava/lang/Void;",
            ">;>;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/kakaogame/auth/view/LoginUIManager$showLoginPopup$2$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/kakaogame/auth/view/LoginUIManager$showLoginPopup$2$1;->$activity:Landroid/app/Activity;

    iput-object p2, p0, Lcom/kakaogame/auth/view/LoginUIManager$showLoginPopup$2$1;->$idpCodes:Ljava/util/List;

    iput-object p3, p0, Lcom/kakaogame/auth/view/LoginUIManager$showLoginPopup$2$1;->$requestType:Lcom/kakaogame/auth/view/LoginUIManager$RequestType;

    iput p4, p0, Lcom/kakaogame/auth/view/LoginUIManager$showLoginPopup$2$1;->$traceJobId:I

    iput-object p5, p0, Lcom/kakaogame/auth/view/LoginUIManager$showLoginPopup$2$1;->$cont:Lkotlin/coroutines/Continuation;

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

    new-instance p1, Lcom/kakaogame/auth/view/LoginUIManager$showLoginPopup$2$1;

    iget-object v1, p0, Lcom/kakaogame/auth/view/LoginUIManager$showLoginPopup$2$1;->$activity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/kakaogame/auth/view/LoginUIManager$showLoginPopup$2$1;->$idpCodes:Ljava/util/List;

    iget-object v3, p0, Lcom/kakaogame/auth/view/LoginUIManager$showLoginPopup$2$1;->$requestType:Lcom/kakaogame/auth/view/LoginUIManager$RequestType;

    iget v4, p0, Lcom/kakaogame/auth/view/LoginUIManager$showLoginPopup$2$1;->$traceJobId:I

    iget-object v5, p0, Lcom/kakaogame/auth/view/LoginUIManager$showLoginPopup$2$1;->$cont:Lkotlin/coroutines/Continuation;

    move-object v0, p1

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/kakaogame/auth/view/LoginUIManager$showLoginPopup$2$1;-><init>(Landroid/app/Activity;Ljava/util/List;Lcom/kakaogame/auth/view/LoginUIManager$RequestType;ILkotlin/coroutines/Continuation;Lkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlin/coroutines/Continuation;

    return-object p1

    .array-data 1
    .end array-data
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/kakaogame/auth/view/LoginUIManager$showLoginPopup$2$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/kakaogame/auth/view/LoginUIManager$showLoginPopup$2$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/kakaogame/auth/view/LoginUIManager$showLoginPopup$2$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/kakaogame/auth/view/LoginUIManager$showLoginPopup$2$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    nop

    .array-data 1
    .end array-data
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 2839
    iget v0, p0, Lcom/kakaogame/auth/view/LoginUIManager$showLoginPopup$2$1;->label:I

    if-nez v0, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 2849
    sget-object v1, Lcom/kakaogame/auth/view/LoginUIManager;->INSTANCE:Lcom/kakaogame/auth/view/LoginUIManager;

    .line 2859
    iget-object v2, p0, Lcom/kakaogame/auth/view/LoginUIManager$showLoginPopup$2$1;->$activity:Landroid/app/Activity;

    .line 2869
    iget-object v3, p0, Lcom/kakaogame/auth/view/LoginUIManager$showLoginPopup$2$1;->$idpCodes:Ljava/util/List;

    .line 2879
    iget-object v4, p0, Lcom/kakaogame/auth/view/LoginUIManager$showLoginPopup$2$1;->$requestType:Lcom/kakaogame/auth/view/LoginUIManager$RequestType;

    .line 2889
    iget v5, p0, Lcom/kakaogame/auth/view/LoginUIManager$showLoginPopup$2$1;->$traceJobId:I

    .line 2849
    new-instance p1, Lcom/kakaogame/auth/view/LoginUIManager$showLoginPopup$2$1$1;

    iget-object v0, p0, Lcom/kakaogame/auth/view/LoginUIManager$showLoginPopup$2$1;->$cont:Lkotlin/coroutines/Continuation;

    invoke-direct {p1, v0}, Lcom/kakaogame/auth/view/LoginUIManager$showLoginPopup$2$1$1;-><init>(Lkotlin/coroutines/Continuation;)V

    move-object v6, p1

    check-cast v6, Lkotlin/jvm/functions/Function1;

    invoke-static/range {v1 .. v6}, Lcom/kakaogame/auth/view/LoginUIManager;->access$showLoginDialog(Lcom/kakaogame/auth/view/LoginUIManager;Landroid/app/Activity;Ljava/util/List;Lcom/kakaogame/auth/view/LoginUIManager$RequestType;ILkotlin/jvm/functions/Function1;)V

    .line 2929
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 2839
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
