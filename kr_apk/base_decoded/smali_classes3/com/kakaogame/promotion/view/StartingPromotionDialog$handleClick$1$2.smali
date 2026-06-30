.class final Lcom/kakaogame/promotion/view/StartingPromotionDialog$handleClick$1$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "StartingPromotionDialog.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kakaogame/promotion/view/StartingPromotionDialog$handleClick$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
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

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nStartingPromotionDialog.kt\nKotlin\n*S Kotlin\n*F\n+ 1 StartingPromotionDialog.kt\ncom/kakaogame/promotion/view/StartingPromotionDialog$handleClick$1$2\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,274:1\n1#2:275\n*E\n"
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
    c = "com.kakaogame.promotion.view.StartingPromotionDialog$handleClick$1$2"
    f = "StartingPromotionDialog.kt"
    i = {}
    l = {}
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $progress:Lcom/kakaogame/ui/CustomProgressDialog;

.field final synthetic $result:Lcom/kakaogame/KGResult;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/kakaogame/KGResult<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field label:I

.field final synthetic this$0:Lcom/kakaogame/promotion/view/StartingPromotionDialog;


# direct methods
.method public static synthetic $r8$lambda$GLFnNzKSARMu6HbB7ZQDDpy_vWA(Landroid/content/DialogInterface;)V
    .locals 0

    invoke-static {p0}, Lcom/kakaogame/promotion/view/StartingPromotionDialog$handleClick$1$2;->invokeSuspend$lambda$1(Landroid/content/DialogInterface;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method constructor <init>(Lcom/kakaogame/promotion/view/StartingPromotionDialog;Lcom/kakaogame/ui/CustomProgressDialog;Lcom/kakaogame/KGResult;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/kakaogame/promotion/view/StartingPromotionDialog;",
            "Lcom/kakaogame/ui/CustomProgressDialog;",
            "Lcom/kakaogame/KGResult<",
            "Ljava/lang/Void;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/kakaogame/promotion/view/StartingPromotionDialog$handleClick$1$2;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/kakaogame/promotion/view/StartingPromotionDialog$handleClick$1$2;->this$0:Lcom/kakaogame/promotion/view/StartingPromotionDialog;

    iput-object p2, p0, Lcom/kakaogame/promotion/view/StartingPromotionDialog$handleClick$1$2;->$progress:Lcom/kakaogame/ui/CustomProgressDialog;

    iput-object p3, p0, Lcom/kakaogame/promotion/view/StartingPromotionDialog$handleClick$1$2;->$result:Lcom/kakaogame/KGResult;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method private static final invokeSuspend$lambda$1(Landroid/content/DialogInterface;)V
    .locals 0

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

    new-instance p1, Lcom/kakaogame/promotion/view/StartingPromotionDialog$handleClick$1$2;

    iget-object v0, p0, Lcom/kakaogame/promotion/view/StartingPromotionDialog$handleClick$1$2;->this$0:Lcom/kakaogame/promotion/view/StartingPromotionDialog;

    iget-object v1, p0, Lcom/kakaogame/promotion/view/StartingPromotionDialog$handleClick$1$2;->$progress:Lcom/kakaogame/ui/CustomProgressDialog;

    iget-object v2, p0, Lcom/kakaogame/promotion/view/StartingPromotionDialog$handleClick$1$2;->$result:Lcom/kakaogame/KGResult;

    invoke-direct {p1, v0, v1, v2, p2}, Lcom/kakaogame/promotion/view/StartingPromotionDialog$handleClick$1$2;-><init>(Lcom/kakaogame/promotion/view/StartingPromotionDialog;Lcom/kakaogame/ui/CustomProgressDialog;Lcom/kakaogame/KGResult;Lkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlin/coroutines/Continuation;

    return-object p1

    .array-data 1
    .end array-data
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/kakaogame/promotion/view/StartingPromotionDialog$handleClick$1$2;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/kakaogame/promotion/view/StartingPromotionDialog$handleClick$1$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/kakaogame/promotion/view/StartingPromotionDialog$handleClick$1$2;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/kakaogame/promotion/view/StartingPromotionDialog$handleClick$1$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    nop

    .array-data 1
    .end array-data
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 1009
    iget v0, p0, Lcom/kakaogame/promotion/view/StartingPromotionDialog$handleClick$1$2;->label:I

    if-nez v0, :cond_3

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 1019
    iget-object p1, p0, Lcom/kakaogame/promotion/view/StartingPromotionDialog$handleClick$1$2;->this$0:Lcom/kakaogame/promotion/view/StartingPromotionDialog;

    invoke-static {p1}, Lcom/kakaogame/promotion/view/StartingPromotionDialog;->access$getApplyClick$p(Lcom/kakaogame/promotion/view/StartingPromotionDialog;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1029
    iget-object p1, p0, Lcom/kakaogame/promotion/view/StartingPromotionDialog$handleClick$1$2;->$progress:Lcom/kakaogame/ui/CustomProgressDialog;

    invoke-virtual {p1}, Lcom/kakaogame/ui/CustomProgressDialog;->dismiss()V

    .line 1049
    :cond_0
    iget-object p1, p0, Lcom/kakaogame/promotion/view/StartingPromotionDialog$handleClick$1$2;->$result:Lcom/kakaogame/KGResult;

    invoke-virtual {p1}, Lcom/kakaogame/KGResult;->isSuccess()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 1059
    iget-object p1, p0, Lcom/kakaogame/promotion/view/StartingPromotionDialog$handleClick$1$2;->this$0:Lcom/kakaogame/promotion/view/StartingPromotionDialog;

    invoke-static {p1}, Lcom/kakaogame/promotion/view/StartingPromotionDialog;->access$getPromotion$p(Lcom/kakaogame/promotion/view/StartingPromotionDialog;)Lcom/kakaogame/promotion/KGPromotionData;

    move-result-object p1

    invoke-virtual {p1}, Lcom/kakaogame/promotion/KGPromotionData;->getLinkUrl()Ljava/lang/String;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 1069
    iget-object p1, p0, Lcom/kakaogame/promotion/view/StartingPromotionDialog$handleClick$1$2;->this$0:Lcom/kakaogame/promotion/view/StartingPromotionDialog;

    invoke-static {p1}, Lcom/kakaogame/promotion/view/StartingPromotionDialog;->access$getPromotion$p(Lcom/kakaogame/promotion/view/StartingPromotionDialog;)Lcom/kakaogame/promotion/KGPromotionData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kakaogame/promotion/KGPromotionData;->getLinkUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/kakaogame/promotion/view/StartingPromotionDialog;->access$setClickLink$p(Lcom/kakaogame/promotion/view/StartingPromotionDialog;Ljava/lang/String;)V

    .line 1079
    iget-object p1, p0, Lcom/kakaogame/promotion/view/StartingPromotionDialog$handleClick$1$2;->this$0:Lcom/kakaogame/promotion/view/StartingPromotionDialog;

    invoke-static {p1}, Lcom/kakaogame/promotion/view/StartingPromotionDialog;->access$getCallbackListener$p(Lcom/kakaogame/promotion/view/StartingPromotionDialog;)Lcom/kakaogame/promotion/view/StartingPromotionDialog$StartingPromotionDialogListener;

    move-result-object p1

    iget-object v0, p0, Lcom/kakaogame/promotion/view/StartingPromotionDialog$handleClick$1$2;->this$0:Lcom/kakaogame/promotion/view/StartingPromotionDialog;

    invoke-static {v0}, Lcom/kakaogame/promotion/view/StartingPromotionDialog;->access$getClickLink$p(Lcom/kakaogame/promotion/view/StartingPromotionDialog;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/kakaogame/promotion/view/StartingPromotionDialog$StartingPromotionDialogListener;->onImageLinkClicked(Ljava/lang/String;)V

    goto :goto_0

    .line 1099
    :cond_1
    iget-object p1, p0, Lcom/kakaogame/promotion/view/StartingPromotionDialog$handleClick$1$2;->this$0:Lcom/kakaogame/promotion/view/StartingPromotionDialog;

    invoke-static {p1}, Lcom/kakaogame/promotion/view/StartingPromotionDialog;->access$getCallbackListener$p(Lcom/kakaogame/promotion/view/StartingPromotionDialog;)Lcom/kakaogame/promotion/view/StartingPromotionDialog$StartingPromotionDialogListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/kakaogame/promotion/view/StartingPromotionDialog$StartingPromotionDialogListener;->onDismiss()V

    .line 1119
    :goto_0
    iget-object p1, p0, Lcom/kakaogame/promotion/view/StartingPromotionDialog$handleClick$1$2;->this$0:Lcom/kakaogame/promotion/view/StartingPromotionDialog;

    invoke-virtual {p1}, Lcom/kakaogame/promotion/view/StartingPromotionDialog;->dismiss()V

    goto :goto_1

    .line 1149
    :cond_2
    iget-object p1, p0, Lcom/kakaogame/promotion/view/StartingPromotionDialog$handleClick$1$2;->$result:Lcom/kakaogame/KGResult;

    iget-object v0, p0, Lcom/kakaogame/promotion/view/StartingPromotionDialog$handleClick$1$2;->this$0:Lcom/kakaogame/promotion/view/StartingPromotionDialog;

    sget-object v1, Lcom/kakaogame/promotion/StartingPromotionManager;->INSTANCE:Lcom/kakaogame/promotion/StartingPromotionManager;

    invoke-virtual {v0}, Lcom/kakaogame/promotion/view/StartingPromotionDialog;->getOwnerActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-virtual {p1}, Lcom/kakaogame/KGResult;->getCode()I

    move-result p1

    invoke-virtual {v1, v0, p1}, Lcom/kakaogame/promotion/StartingPromotionManager;->getErrorMessage(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p1

    .line 1159
    sget-object v0, Lcom/kakaogame/ui/DialogManager;->INSTANCE:Lcom/kakaogame/ui/DialogManager;

    iget-object v1, p0, Lcom/kakaogame/promotion/view/StartingPromotionDialog$handleClick$1$2;->this$0:Lcom/kakaogame/promotion/view/StartingPromotionDialog;

    invoke-virtual {v1}, Lcom/kakaogame/promotion/view/StartingPromotionDialog;->getOwnerActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    new-instance v2, Lcom/kakaogame/promotion/view/StartingPromotionDialog$handleClick$1$2$$ExternalSyntheticLambda0;

    invoke-direct {v2}, Lcom/kakaogame/promotion/view/StartingPromotionDialog$handleClick$1$2$$ExternalSyntheticLambda0;-><init>()V

    const/4 v3, 0x0

    invoke-virtual {v0, v1, p1, v3, v2}, Lcom/kakaogame/ui/DialogManager;->showErrorDialog(Landroid/app/Activity;Ljava/lang/String;ZLandroid/content/DialogInterface$OnDismissListener;)V

    .line 1179
    :goto_1
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 1009
    :cond_3
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
