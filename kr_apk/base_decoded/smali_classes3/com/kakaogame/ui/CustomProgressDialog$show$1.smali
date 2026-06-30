.class final Lcom/kakaogame/ui/CustomProgressDialog$show$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "CustomProgressDialog.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kakaogame/ui/CustomProgressDialog;->show()V
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
    c = "com.kakaogame.ui.CustomProgressDialog$show$1"
    f = "CustomProgressDialog.kt"
    i = {}
    l = {}
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field label:I

.field final synthetic this$0:Lcom/kakaogame/ui/CustomProgressDialog;


# direct methods
.method constructor <init>(Lcom/kakaogame/ui/CustomProgressDialog;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/kakaogame/ui/CustomProgressDialog;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/kakaogame/ui/CustomProgressDialog$show$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/kakaogame/ui/CustomProgressDialog$show$1;->this$0:Lcom/kakaogame/ui/CustomProgressDialog;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void

    nop

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 1
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

    new-instance p1, Lcom/kakaogame/ui/CustomProgressDialog$show$1;

    iget-object v0, p0, Lcom/kakaogame/ui/CustomProgressDialog$show$1;->this$0:Lcom/kakaogame/ui/CustomProgressDialog;

    invoke-direct {p1, v0, p2}, Lcom/kakaogame/ui/CustomProgressDialog$show$1;-><init>(Lcom/kakaogame/ui/CustomProgressDialog;Lkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlin/coroutines/Continuation;

    return-object p1

    .array-data 1
    .end array-data
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/kakaogame/ui/CustomProgressDialog$show$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/kakaogame/ui/CustomProgressDialog$show$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/kakaogame/ui/CustomProgressDialog$show$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/kakaogame/ui/CustomProgressDialog$show$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    nop

    .array-data 1
    .end array-data
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 169
    iget v0, p0, Lcom/kakaogame/ui/CustomProgressDialog$show$1;->label:I

    if-nez v0, :cond_1

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 179
    iget-object p1, p0, Lcom/kakaogame/ui/CustomProgressDialog$show$1;->this$0:Lcom/kakaogame/ui/CustomProgressDialog;

    invoke-static {p1}, Lcom/kakaogame/ui/CustomProgressDialog;->access$getDialog$p(Lcom/kakaogame/ui/CustomProgressDialog;)Lcom/kakaogame/ui/CustomProgressDialog$CustomProgressDialogImpl;

    move-result-object p1

    if-nez p1, :cond_0

    .line 189
    iget-object p1, p0, Lcom/kakaogame/ui/CustomProgressDialog$show$1;->this$0:Lcom/kakaogame/ui/CustomProgressDialog;

    new-instance v0, Lcom/kakaogame/ui/CustomProgressDialog$CustomProgressDialogImpl;

    iget-object v1, p0, Lcom/kakaogame/ui/CustomProgressDialog$show$1;->this$0:Lcom/kakaogame/ui/CustomProgressDialog;

    invoke-static {v1}, Lcom/kakaogame/ui/CustomProgressDialog;->access$getContext$p(Lcom/kakaogame/ui/CustomProgressDialog;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/kakaogame/ui/CustomProgressDialog$CustomProgressDialogImpl;-><init>(Landroid/content/Context;)V

    invoke-static {p1, v0}, Lcom/kakaogame/ui/CustomProgressDialog;->access$setDialog$p(Lcom/kakaogame/ui/CustomProgressDialog;Lcom/kakaogame/ui/CustomProgressDialog$CustomProgressDialogImpl;)V

    .line 199
    iget-object p1, p0, Lcom/kakaogame/ui/CustomProgressDialog$show$1;->this$0:Lcom/kakaogame/ui/CustomProgressDialog;

    invoke-static {p1}, Lcom/kakaogame/ui/CustomProgressDialog;->access$getDialog$p(Lcom/kakaogame/ui/CustomProgressDialog;)Lcom/kakaogame/ui/CustomProgressDialog$CustomProgressDialogImpl;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/kakaogame/ui/CustomProgressDialog$CustomProgressDialogImpl;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/16 v0, 0x8

    .line 209
    invoke-virtual {p1, v0, v0}, Landroid/view/Window;->setFlags(II)V

    .line 259
    :cond_0
    iget-object p1, p0, Lcom/kakaogame/ui/CustomProgressDialog$show$1;->this$0:Lcom/kakaogame/ui/CustomProgressDialog;

    invoke-static {p1}, Lcom/kakaogame/ui/CustomProgressDialog;->access$getDialog$p(Lcom/kakaogame/ui/CustomProgressDialog;)Lcom/kakaogame/ui/CustomProgressDialog$CustomProgressDialogImpl;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/kakaogame/ui/CustomProgressDialog$CustomProgressDialogImpl;->show()V

    .line 269
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 169
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
