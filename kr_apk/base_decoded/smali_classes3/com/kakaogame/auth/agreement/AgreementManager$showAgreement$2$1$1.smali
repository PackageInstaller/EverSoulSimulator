.class final Lcom/kakaogame/auth/agreement/AgreementManager$showAgreement$2$1$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "AgreementManager.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kakaogame/auth/agreement/AgreementManager;->showAgreement(Landroid/app/Activity;Lcom/kakaogame/auth/agreement/AgreementManager$AgreementCheckType;Ljava/util/Map;ILkotlin/coroutines/Continuation;)Ljava/lang/Object;
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
    c = "com.kakaogame.auth.agreement.AgreementManager$showAgreement$2$1$1"
    f = "AgreementManager.kt"
    i = {}
    l = {}
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

.field final synthetic $traceJobId:I

.field label:I


# direct methods
.method constructor <init>(Landroid/app/Activity;Lcom/kakaogame/auth/agreement/AgreementManager$AgreementCheckType;Ljava/util/Map;ILkotlin/coroutines/Continuation;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lcom/kakaogame/auth/agreement/AgreementManager$AgreementCheckType;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;I",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/kakaogame/KGResult<",
            "Ljava/lang/Void;",
            ">;>;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/kakaogame/auth/agreement/AgreementManager$showAgreement$2$1$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/kakaogame/auth/agreement/AgreementManager$showAgreement$2$1$1;->$activity:Landroid/app/Activity;

    iput-object p2, p0, Lcom/kakaogame/auth/agreement/AgreementManager$showAgreement$2$1$1;->$checkType:Lcom/kakaogame/auth/agreement/AgreementManager$AgreementCheckType;

    iput-object p3, p0, Lcom/kakaogame/auth/agreement/AgreementManager$showAgreement$2$1$1;->$agreementParams:Ljava/util/Map;

    iput p4, p0, Lcom/kakaogame/auth/agreement/AgreementManager$showAgreement$2$1$1;->$traceJobId:I

    iput-object p5, p0, Lcom/kakaogame/auth/agreement/AgreementManager$showAgreement$2$1$1;->$cont:Lkotlin/coroutines/Continuation;

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

    new-instance p1, Lcom/kakaogame/auth/agreement/AgreementManager$showAgreement$2$1$1;

    iget-object v1, p0, Lcom/kakaogame/auth/agreement/AgreementManager$showAgreement$2$1$1;->$activity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/kakaogame/auth/agreement/AgreementManager$showAgreement$2$1$1;->$checkType:Lcom/kakaogame/auth/agreement/AgreementManager$AgreementCheckType;

    iget-object v3, p0, Lcom/kakaogame/auth/agreement/AgreementManager$showAgreement$2$1$1;->$agreementParams:Ljava/util/Map;

    iget v4, p0, Lcom/kakaogame/auth/agreement/AgreementManager$showAgreement$2$1$1;->$traceJobId:I

    iget-object v5, p0, Lcom/kakaogame/auth/agreement/AgreementManager$showAgreement$2$1$1;->$cont:Lkotlin/coroutines/Continuation;

    move-object v0, p1

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/kakaogame/auth/agreement/AgreementManager$showAgreement$2$1$1;-><init>(Landroid/app/Activity;Lcom/kakaogame/auth/agreement/AgreementManager$AgreementCheckType;Ljava/util/Map;ILkotlin/coroutines/Continuation;Lkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlin/coroutines/Continuation;

    return-object p1

    .array-data 1
    .end array-data
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/kakaogame/auth/agreement/AgreementManager$showAgreement$2$1$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/kakaogame/auth/agreement/AgreementManager$showAgreement$2$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/kakaogame/auth/agreement/AgreementManager$showAgreement$2$1$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/kakaogame/auth/agreement/AgreementManager$showAgreement$2$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    nop

    .array-data 1
    .end array-data
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 1939
    iget v0, p0, Lcom/kakaogame/auth/agreement/AgreementManager$showAgreement$2$1$1;->label:I

    if-nez v0, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 1949
    new-instance p1, Lcom/kakaogame/auth/agreement/AgreementManager$AgreementDialog;

    iget-object v2, p0, Lcom/kakaogame/auth/agreement/AgreementManager$showAgreement$2$1$1;->$activity:Landroid/app/Activity;

    iget-object v3, p0, Lcom/kakaogame/auth/agreement/AgreementManager$showAgreement$2$1$1;->$checkType:Lcom/kakaogame/auth/agreement/AgreementManager$AgreementCheckType;

    iget-object v4, p0, Lcom/kakaogame/auth/agreement/AgreementManager$showAgreement$2$1$1;->$agreementParams:Ljava/util/Map;

    iget v5, p0, Lcom/kakaogame/auth/agreement/AgreementManager$showAgreement$2$1$1;->$traceJobId:I

    new-instance v0, Lcom/kakaogame/auth/agreement/AgreementManager$showAgreement$2$1$1$dialog$1;

    iget-object v1, p0, Lcom/kakaogame/auth/agreement/AgreementManager$showAgreement$2$1$1;->$activity:Landroid/app/Activity;

    iget-object v6, p0, Lcom/kakaogame/auth/agreement/AgreementManager$showAgreement$2$1$1;->$checkType:Lcom/kakaogame/auth/agreement/AgreementManager$AgreementCheckType;

    iget v7, p0, Lcom/kakaogame/auth/agreement/AgreementManager$showAgreement$2$1$1;->$traceJobId:I

    iget-object v8, p0, Lcom/kakaogame/auth/agreement/AgreementManager$showAgreement$2$1$1;->$cont:Lkotlin/coroutines/Continuation;

    invoke-direct {v0, v1, v6, v7, v8}, Lcom/kakaogame/auth/agreement/AgreementManager$showAgreement$2$1$1$dialog$1;-><init>(Landroid/app/Activity;Lcom/kakaogame/auth/agreement/AgreementManager$AgreementCheckType;ILkotlin/coroutines/Continuation;)V

    move-object v6, v0

    check-cast v6, Lkotlin/jvm/functions/Function1;

    move-object v1, p1

    invoke-direct/range {v1 .. v6}, Lcom/kakaogame/auth/agreement/AgreementManager$AgreementDialog;-><init>(Landroid/app/Activity;Lcom/kakaogame/auth/agreement/AgreementManager$AgreementCheckType;Ljava/util/Map;ILkotlin/jvm/functions/Function1;)V

    .line 2119
    invoke-virtual {p1}, Lcom/kakaogame/auth/agreement/AgreementManager$AgreementDialog;->show()V

    .line 2129
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 1939
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
