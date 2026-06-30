.class final Lcom/kakaogame/promotion/EndingPromotionManager$EndingPopupDialog$handleClick$1$1$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "EndingPromotionManager.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kakaogame/promotion/EndingPromotionManager$EndingPopupDialog$handleClick$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
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
    c = "com.kakaogame.promotion.EndingPromotionManager$EndingPopupDialog$handleClick$1$1$1"
    f = "EndingPromotionManager.kt"
    i = {}
    l = {}
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $applyClick:Z

.field final synthetic $progress:Lcom/kakaogame/ui/CustomProgressDialog;

.field final synthetic $promotion:Lcom/kakaogame/promotion/KGPromotionData;

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

.field final synthetic this$0:Lcom/kakaogame/promotion/EndingPromotionManager$EndingPopupDialog;


# direct methods
.method public static synthetic $r8$lambda$2LXgOdebszHXPQOjK23ZH9YKi-g(Landroid/content/DialogInterface;)V
    .locals 0

    invoke-static {p0}, Lcom/kakaogame/promotion/EndingPromotionManager$EndingPopupDialog$handleClick$1$1$1;->invokeSuspend$lambda$0(Landroid/content/DialogInterface;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method constructor <init>(ZLcom/kakaogame/ui/CustomProgressDialog;Lcom/kakaogame/KGResult;Lcom/kakaogame/promotion/KGPromotionData;Lcom/kakaogame/promotion/EndingPromotionManager$EndingPopupDialog;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lcom/kakaogame/ui/CustomProgressDialog;",
            "Lcom/kakaogame/KGResult<",
            "Ljava/lang/Void;",
            ">;",
            "Lcom/kakaogame/promotion/KGPromotionData;",
            "Lcom/kakaogame/promotion/EndingPromotionManager$EndingPopupDialog;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/kakaogame/promotion/EndingPromotionManager$EndingPopupDialog$handleClick$1$1$1;",
            ">;)V"
        }
    .end annotation

    iput-boolean p1, p0, Lcom/kakaogame/promotion/EndingPromotionManager$EndingPopupDialog$handleClick$1$1$1;->$applyClick:Z

    iput-object p2, p0, Lcom/kakaogame/promotion/EndingPromotionManager$EndingPopupDialog$handleClick$1$1$1;->$progress:Lcom/kakaogame/ui/CustomProgressDialog;

    iput-object p3, p0, Lcom/kakaogame/promotion/EndingPromotionManager$EndingPopupDialog$handleClick$1$1$1;->$result:Lcom/kakaogame/KGResult;

    iput-object p4, p0, Lcom/kakaogame/promotion/EndingPromotionManager$EndingPopupDialog$handleClick$1$1$1;->$promotion:Lcom/kakaogame/promotion/KGPromotionData;

    iput-object p5, p0, Lcom/kakaogame/promotion/EndingPromotionManager$EndingPopupDialog$handleClick$1$1$1;->this$0:Lcom/kakaogame/promotion/EndingPromotionManager$EndingPopupDialog;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p6}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method private static final invokeSuspend$lambda$0(Landroid/content/DialogInterface;)V
    .locals 0

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

    new-instance p1, Lcom/kakaogame/promotion/EndingPromotionManager$EndingPopupDialog$handleClick$1$1$1;

    iget-boolean v1, p0, Lcom/kakaogame/promotion/EndingPromotionManager$EndingPopupDialog$handleClick$1$1$1;->$applyClick:Z

    iget-object v2, p0, Lcom/kakaogame/promotion/EndingPromotionManager$EndingPopupDialog$handleClick$1$1$1;->$progress:Lcom/kakaogame/ui/CustomProgressDialog;

    iget-object v3, p0, Lcom/kakaogame/promotion/EndingPromotionManager$EndingPopupDialog$handleClick$1$1$1;->$result:Lcom/kakaogame/KGResult;

    iget-object v4, p0, Lcom/kakaogame/promotion/EndingPromotionManager$EndingPopupDialog$handleClick$1$1$1;->$promotion:Lcom/kakaogame/promotion/KGPromotionData;

    iget-object v5, p0, Lcom/kakaogame/promotion/EndingPromotionManager$EndingPopupDialog$handleClick$1$1$1;->this$0:Lcom/kakaogame/promotion/EndingPromotionManager$EndingPopupDialog;

    move-object v0, p1

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/kakaogame/promotion/EndingPromotionManager$EndingPopupDialog$handleClick$1$1$1;-><init>(ZLcom/kakaogame/ui/CustomProgressDialog;Lcom/kakaogame/KGResult;Lcom/kakaogame/promotion/KGPromotionData;Lcom/kakaogame/promotion/EndingPromotionManager$EndingPopupDialog;Lkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlin/coroutines/Continuation;

    return-object p1

    .array-data 1
    .end array-data
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/kakaogame/promotion/EndingPromotionManager$EndingPopupDialog$handleClick$1$1$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/kakaogame/promotion/EndingPromotionManager$EndingPopupDialog$handleClick$1$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/kakaogame/promotion/EndingPromotionManager$EndingPopupDialog$handleClick$1$1$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/kakaogame/promotion/EndingPromotionManager$EndingPopupDialog$handleClick$1$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    nop

    .array-data 1
    .end array-data
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 1319
    iget v0, p0, Lcom/kakaogame/promotion/EndingPromotionManager$EndingPopupDialog$handleClick$1$1$1;->label:I

    if-nez v0, :cond_5

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 1329
    iget-boolean p1, p0, Lcom/kakaogame/promotion/EndingPromotionManager$EndingPopupDialog$handleClick$1$1$1;->$applyClick:Z

    if-eqz p1, :cond_0

    .line 1339
    iget-object p1, p0, Lcom/kakaogame/promotion/EndingPromotionManager$EndingPopupDialog$handleClick$1$1$1;->$progress:Lcom/kakaogame/ui/CustomProgressDialog;

    invoke-virtual {p1}, Lcom/kakaogame/ui/CustomProgressDialog;->dismiss()V

    .line 1359
    :cond_0
    iget-object p1, p0, Lcom/kakaogame/promotion/EndingPromotionManager$EndingPopupDialog$handleClick$1$1$1;->$result:Lcom/kakaogame/KGResult;

    invoke-virtual {p1}, Lcom/kakaogame/KGResult;->isSuccess()Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    .line 1369
    iget-object p1, p0, Lcom/kakaogame/promotion/EndingPromotionManager$EndingPopupDialog$handleClick$1$1$1;->$promotion:Lcom/kakaogame/promotion/KGPromotionData;

    invoke-virtual {p1}, Lcom/kakaogame/promotion/KGPromotionData;->getLinkUrl()Ljava/lang/String;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-nez p1, :cond_2

    :cond_1
    const/4 v0, 0x1

    :cond_2
    if-nez v0, :cond_4

    .line 1379
    iget-object p1, p0, Lcom/kakaogame/promotion/EndingPromotionManager$EndingPopupDialog$handleClick$1$1$1;->this$0:Lcom/kakaogame/promotion/EndingPromotionManager$EndingPopupDialog;

    iget-object v0, p0, Lcom/kakaogame/promotion/EndingPromotionManager$EndingPopupDialog$handleClick$1$1$1;->$promotion:Lcom/kakaogame/promotion/KGPromotionData;

    invoke-virtual {v0}, Lcom/kakaogame/promotion/KGPromotionData;->getLinkUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/kakaogame/promotion/EndingPromotionManager$EndingPopupDialog;->setClickLink(Ljava/lang/String;)V

    .line 1389
    iget-object p1, p0, Lcom/kakaogame/promotion/EndingPromotionManager$EndingPopupDialog$handleClick$1$1$1;->this$0:Lcom/kakaogame/promotion/EndingPromotionManager$EndingPopupDialog;

    invoke-virtual {p1}, Lcom/kakaogame/promotion/EndingPromotionManager$EndingPopupDialog;->dismiss()V

    goto :goto_0

    .line 1419
    :cond_3
    sget-object p1, Lcom/kakaogame/promotion/StartingPromotionManager;->INSTANCE:Lcom/kakaogame/promotion/StartingPromotionManager;

    iget-object v1, p0, Lcom/kakaogame/promotion/EndingPromotionManager$EndingPopupDialog$handleClick$1$1$1;->this$0:Lcom/kakaogame/promotion/EndingPromotionManager$EndingPopupDialog;

    invoke-static {v1}, Lcom/kakaogame/promotion/EndingPromotionManager$EndingPopupDialog;->access$getActivity$p(Lcom/kakaogame/promotion/EndingPromotionManager$EndingPopupDialog;)Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    iget-object v2, p0, Lcom/kakaogame/promotion/EndingPromotionManager$EndingPopupDialog$handleClick$1$1$1;->$result:Lcom/kakaogame/KGResult;

    invoke-virtual {v2}, Lcom/kakaogame/KGResult;->getCode()I

    move-result v2

    invoke-virtual {p1, v1, v2}, Lcom/kakaogame/promotion/StartingPromotionManager;->getErrorMessage(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p1

    .line 1429
    sget-object v1, Lcom/kakaogame/ui/DialogManager;->INSTANCE:Lcom/kakaogame/ui/DialogManager;

    iget-object v2, p0, Lcom/kakaogame/promotion/EndingPromotionManager$EndingPopupDialog$handleClick$1$1$1;->this$0:Lcom/kakaogame/promotion/EndingPromotionManager$EndingPopupDialog;

    invoke-static {v2}, Lcom/kakaogame/promotion/EndingPromotionManager$EndingPopupDialog;->access$getActivity$p(Lcom/kakaogame/promotion/EndingPromotionManager$EndingPopupDialog;)Landroid/app/Activity;

    move-result-object v2

    new-instance v3, Lcom/kakaogame/promotion/EndingPromotionManager$EndingPopupDialog$handleClick$1$1$1$$ExternalSyntheticLambda0;

    invoke-direct {v3}, Lcom/kakaogame/promotion/EndingPromotionManager$EndingPopupDialog$handleClick$1$1$1$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {v1, v2, p1, v0, v3}, Lcom/kakaogame/ui/DialogManager;->showErrorDialog(Landroid/app/Activity;Ljava/lang/String;ZLandroid/content/DialogInterface$OnDismissListener;)V

    .line 1449
    :cond_4
    :goto_0
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 1319
    :cond_5
    new-instance p1, Ljava/lang/IllegalStateException;

    const v0, -0x451e018f

    invoke-static {v0}, Lcom/liapp/y;->ڳݬ٬ۮݪ(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .array-data 1
    .end array-data
.end method
