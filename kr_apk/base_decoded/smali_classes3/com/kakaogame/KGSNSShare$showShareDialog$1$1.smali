.class final Lcom/kakaogame/KGSNSShare$showShareDialog$1$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "KGSNSShare.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kakaogame/KGSNSShare$showShareDialog$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
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
    c = "com.kakaogame.KGSNSShare$showShareDialog$1$1"
    f = "KGSNSShare.kt"
    i = {}
    l = {}
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

.field final synthetic $code:Ljava/lang/String;

.field final synthetic $data:Lcom/kakaogame/promotion/SNSShareData;

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


# direct methods
.method constructor <init>(Lcom/kakaogame/KGResult;Landroid/app/Activity;Lcom/kakaogame/promotion/SNSShareData;Ljava/lang/String;Lcom/kakaogame/KGResultCallback;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/kakaogame/KGResult<",
            "Ljava/lang/Void;",
            ">;",
            "Landroid/app/Activity;",
            "Lcom/kakaogame/promotion/SNSShareData;",
            "Ljava/lang/String;",
            "Lcom/kakaogame/KGResultCallback<",
            "Ljava/lang/Void;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/kakaogame/KGSNSShare$showShareDialog$1$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/kakaogame/KGSNSShare$showShareDialog$1$1;->$result:Lcom/kakaogame/KGResult;

    iput-object p2, p0, Lcom/kakaogame/KGSNSShare$showShareDialog$1$1;->$activity:Landroid/app/Activity;

    iput-object p3, p0, Lcom/kakaogame/KGSNSShare$showShareDialog$1$1;->$data:Lcom/kakaogame/promotion/SNSShareData;

    iput-object p4, p0, Lcom/kakaogame/KGSNSShare$showShareDialog$1$1;->$code:Ljava/lang/String;

    iput-object p5, p0, Lcom/kakaogame/KGSNSShare$showShareDialog$1$1;->$callback:Lcom/kakaogame/KGResultCallback;

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

    new-instance p1, Lcom/kakaogame/KGSNSShare$showShareDialog$1$1;

    iget-object v1, p0, Lcom/kakaogame/KGSNSShare$showShareDialog$1$1;->$result:Lcom/kakaogame/KGResult;

    iget-object v2, p0, Lcom/kakaogame/KGSNSShare$showShareDialog$1$1;->$activity:Landroid/app/Activity;

    iget-object v3, p0, Lcom/kakaogame/KGSNSShare$showShareDialog$1$1;->$data:Lcom/kakaogame/promotion/SNSShareData;

    iget-object v4, p0, Lcom/kakaogame/KGSNSShare$showShareDialog$1$1;->$code:Ljava/lang/String;

    iget-object v5, p0, Lcom/kakaogame/KGSNSShare$showShareDialog$1$1;->$callback:Lcom/kakaogame/KGResultCallback;

    move-object v0, p1

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/kakaogame/KGSNSShare$showShareDialog$1$1;-><init>(Lcom/kakaogame/KGResult;Landroid/app/Activity;Lcom/kakaogame/promotion/SNSShareData;Ljava/lang/String;Lcom/kakaogame/KGResultCallback;Lkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlin/coroutines/Continuation;

    return-object p1

    .array-data 1
    .end array-data
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/kakaogame/KGSNSShare$showShareDialog$1$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/kakaogame/KGSNSShare$showShareDialog$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/kakaogame/KGSNSShare$showShareDialog$1$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/kakaogame/KGSNSShare$showShareDialog$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    nop

    .array-data 1
    .end array-data
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 7389
    iget v0, p0, Lcom/kakaogame/KGSNSShare$showShareDialog$1$1;->label:I

    if-nez v0, :cond_2

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 7399
    iget-object p1, p0, Lcom/kakaogame/KGSNSShare$showShareDialog$1$1;->$result:Lcom/kakaogame/KGResult;

    .line 7409
    invoke-virtual {p1}, Lcom/kakaogame/KGResult;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7419
    iget-object v0, p0, Lcom/kakaogame/KGSNSShare$showShareDialog$1$1;->$activity:Landroid/app/Activity;

    move-object v1, v0

    check-cast v1, Landroid/content/Context;

    const v2, 0x6d0daec0

    invoke-static {v2}, Lcom/liapp/y;->ٱڳܴڭܩ(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x2254ba5e

    invoke-static {v3}, Lcom/liapp/y;->ֲֳگܱޭ(I)Ljava/lang/String;

    move-result-object v3

    const v4, -0x4518dce7

    invoke-static {v4}, Lcom/liapp/y;->ڳݬ٬ۮݪ(I)Ljava/lang/String;

    move-result-object v4

    const v5, 0x6d0d91c0

    invoke-static {v5}, Lcom/liapp/y;->ٱڳܴڭܩ(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v1 .. v8}, Lcom/kakaogame/log/service/BasicLogService;->writeBasicActionLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 7499
    iget-object v0, p0, Lcom/kakaogame/KGSNSShare$showShareDialog$1$1;->$data:Lcom/kakaogame/promotion/SNSShareData;

    invoke-virtual {v0}, Lcom/kakaogame/promotion/SNSShareData;->getSeq()J

    move-result-wide v0

    .line 7509
    sget-object v2, Lcom/kakaogame/promotion/SNSShareData$SNSShareType;->linkShare:Lcom/kakaogame/promotion/SNSShareData$SNSShareType;

    iget-object v3, p0, Lcom/kakaogame/KGSNSShare$showShareDialog$1$1;->$code:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcom/kakaogame/promotion/PromotionService;->sendRequestSNSShareReward(JLcom/kakaogame/promotion/SNSShareData$SNSShareType;Ljava/lang/String;)Lcom/kakaogame/KGResult;

    move-result-object v0

    .line 7519
    invoke-virtual {v0}, Lcom/kakaogame/KGResult;->isSuccess()Z

    move-result v1

    if-nez v1, :cond_0

    move-object p1, v0

    .line 7559
    :cond_0
    iget-object v0, p0, Lcom/kakaogame/KGSNSShare$showShareDialog$1$1;->$callback:Lcom/kakaogame/KGResultCallback;

    if-eqz v0, :cond_1

    invoke-interface {v0, p1}, Lcom/kakaogame/KGResultCallback;->onResult(Lcom/kakaogame/KGResult;)V

    .line 7569
    :cond_1
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 7389
    :cond_2
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
