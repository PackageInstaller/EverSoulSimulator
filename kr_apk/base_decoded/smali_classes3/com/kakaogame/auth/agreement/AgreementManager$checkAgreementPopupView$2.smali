.class final Lcom/kakaogame/auth/agreement/AgreementManager$checkAgreementPopupView$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "AgreementManager.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kakaogame/auth/agreement/AgreementManager;->checkAgreementPopupView(Landroid/app/Activity;Lcom/kakaogame/auth/agreement/AgreementManager$AgreementCheckType;Lcom/kakaogame/util/json/JSONObject;I)Lcom/kakaogame/KGResult;
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
        "Lcom/kakaogame/KGResult<",
        "Ljava/lang/Void;",
        ">;>;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00020\u0001*\u00020\u0003H\n"
    }
    d2 = {
        "<anonymous>",
        "Lcom/kakaogame/KGResult;",
        "Ljava/lang/Void;",
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
    c = "com.kakaogame.auth.agreement.AgreementManager$checkAgreementPopupView$2"
    f = "AgreementManager.kt"
    i = {}
    l = {
        0xa2
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $activity:Landroid/app/Activity;

.field final synthetic $agreementParams:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $checkType:Lcom/kakaogame/auth/agreement/AgreementManager$AgreementCheckType;

.field final synthetic $traceJobId:I

.field label:I


# direct methods
.method constructor <init>(Landroid/app/Activity;Lcom/kakaogame/auth/agreement/AgreementManager$AgreementCheckType;Ljava/util/Map;ILkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lcom/kakaogame/auth/agreement/AgreementManager$AgreementCheckType;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;I",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/kakaogame/auth/agreement/AgreementManager$checkAgreementPopupView$2;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/kakaogame/auth/agreement/AgreementManager$checkAgreementPopupView$2;->$activity:Landroid/app/Activity;

    iput-object p2, p0, Lcom/kakaogame/auth/agreement/AgreementManager$checkAgreementPopupView$2;->$checkType:Lcom/kakaogame/auth/agreement/AgreementManager$AgreementCheckType;

    iput-object p3, p0, Lcom/kakaogame/auth/agreement/AgreementManager$checkAgreementPopupView$2;->$agreementParams:Ljava/util/Map;

    iput p4, p0, Lcom/kakaogame/auth/agreement/AgreementManager$checkAgreementPopupView$2;->$traceJobId:I

    const/4 p1, 0x2

    invoke-direct {p0, p1, p5}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void

    nop

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 6
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

    new-instance p1, Lcom/kakaogame/auth/agreement/AgreementManager$checkAgreementPopupView$2;

    iget-object v1, p0, Lcom/kakaogame/auth/agreement/AgreementManager$checkAgreementPopupView$2;->$activity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/kakaogame/auth/agreement/AgreementManager$checkAgreementPopupView$2;->$checkType:Lcom/kakaogame/auth/agreement/AgreementManager$AgreementCheckType;

    iget-object v3, p0, Lcom/kakaogame/auth/agreement/AgreementManager$checkAgreementPopupView$2;->$agreementParams:Ljava/util/Map;

    iget v4, p0, Lcom/kakaogame/auth/agreement/AgreementManager$checkAgreementPopupView$2;->$traceJobId:I

    move-object v0, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/kakaogame/auth/agreement/AgreementManager$checkAgreementPopupView$2;-><init>(Landroid/app/Activity;Lcom/kakaogame/auth/agreement/AgreementManager$AgreementCheckType;Ljava/util/Map;ILkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlin/coroutines/Continuation;

    return-object p1

    .array-data 1
    .end array-data
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/kakaogame/auth/agreement/AgreementManager$checkAgreementPopupView$2;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
            "Lcom/kakaogame/KGResult<",
            "Ljava/lang/Void;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/kakaogame/auth/agreement/AgreementManager$checkAgreementPopupView$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/kakaogame/auth/agreement/AgreementManager$checkAgreementPopupView$2;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/kakaogame/auth/agreement/AgreementManager$checkAgreementPopupView$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    nop

    .array-data 1
    .end array-data
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 1619
    iget v1, p0, Lcom/kakaogame/auth/agreement/AgreementManager$checkAgreementPopupView$2;->label:I

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

    .line 1629
    sget-object v1, Lcom/kakaogame/auth/agreement/AgreementManager;->INSTANCE:Lcom/kakaogame/auth/agreement/AgreementManager;

    iget-object p1, p0, Lcom/kakaogame/auth/agreement/AgreementManager$checkAgreementPopupView$2;->$activity:Landroid/app/Activity;

    iget-object v3, p0, Lcom/kakaogame/auth/agreement/AgreementManager$checkAgreementPopupView$2;->$checkType:Lcom/kakaogame/auth/agreement/AgreementManager$AgreementCheckType;

    iget-object v4, p0, Lcom/kakaogame/auth/agreement/AgreementManager$checkAgreementPopupView$2;->$agreementParams:Ljava/util/Map;

    iget v5, p0, Lcom/kakaogame/auth/agreement/AgreementManager$checkAgreementPopupView$2;->$traceJobId:I

    move-object v6, p0

    check-cast v6, Lkotlin/coroutines/Continuation;

    iput v2, p0, Lcom/kakaogame/auth/agreement/AgreementManager$checkAgreementPopupView$2;->label:I

    move-object v2, p1

    invoke-static/range {v1 .. v6}, Lcom/kakaogame/auth/agreement/AgreementManager;->access$showAgreement(Lcom/kakaogame/auth/agreement/AgreementManager;Landroid/app/Activity;Lcom/kakaogame/auth/agreement/AgreementManager$AgreementCheckType;Ljava/util/Map;ILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    :cond_2
    :goto_0
    return-object p1

    nop

    .array-data 1
    .end array-data
.end method
