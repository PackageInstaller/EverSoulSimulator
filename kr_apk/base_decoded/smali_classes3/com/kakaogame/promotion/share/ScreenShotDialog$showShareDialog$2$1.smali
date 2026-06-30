.class final Lcom/kakaogame/promotion/share/ScreenShotDialog$showShareDialog$2$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "ScreenShotDialog.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kakaogame/promotion/share/ScreenShotDialog$showShareDialog$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
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
    c = "com.kakaogame.promotion.share.ScreenShotDialog$showShareDialog$2$1"
    f = "ScreenShotDialog.kt"
    i = {}
    l = {}
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
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

.field final synthetic this$0:Lcom/kakaogame/promotion/share/ScreenShotDialog;


# direct methods
.method constructor <init>(Lcom/kakaogame/promotion/share/ScreenShotDialog;Lcom/kakaogame/KGResult;Lcom/kakaogame/promotion/SNSShareData;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/kakaogame/promotion/share/ScreenShotDialog;",
            "Lcom/kakaogame/KGResult<",
            "Ljava/lang/Void;",
            ">;",
            "Lcom/kakaogame/promotion/SNSShareData;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/kakaogame/promotion/share/ScreenShotDialog$showShareDialog$2$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/kakaogame/promotion/share/ScreenShotDialog$showShareDialog$2$1;->this$0:Lcom/kakaogame/promotion/share/ScreenShotDialog;

    iput-object p2, p0, Lcom/kakaogame/promotion/share/ScreenShotDialog$showShareDialog$2$1;->$result:Lcom/kakaogame/KGResult;

    iput-object p3, p0, Lcom/kakaogame/promotion/share/ScreenShotDialog$showShareDialog$2$1;->$data:Lcom/kakaogame/promotion/SNSShareData;

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

    new-instance p1, Lcom/kakaogame/promotion/share/ScreenShotDialog$showShareDialog$2$1;

    iget-object v0, p0, Lcom/kakaogame/promotion/share/ScreenShotDialog$showShareDialog$2$1;->this$0:Lcom/kakaogame/promotion/share/ScreenShotDialog;

    iget-object v1, p0, Lcom/kakaogame/promotion/share/ScreenShotDialog$showShareDialog$2$1;->$result:Lcom/kakaogame/KGResult;

    iget-object v2, p0, Lcom/kakaogame/promotion/share/ScreenShotDialog$showShareDialog$2$1;->$data:Lcom/kakaogame/promotion/SNSShareData;

    invoke-direct {p1, v0, v1, v2, p2}, Lcom/kakaogame/promotion/share/ScreenShotDialog$showShareDialog$2$1;-><init>(Lcom/kakaogame/promotion/share/ScreenShotDialog;Lcom/kakaogame/KGResult;Lcom/kakaogame/promotion/SNSShareData;Lkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlin/coroutines/Continuation;

    return-object p1

    .array-data 1
    .end array-data
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/kakaogame/promotion/share/ScreenShotDialog$showShareDialog$2$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/kakaogame/promotion/share/ScreenShotDialog$showShareDialog$2$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/kakaogame/promotion/share/ScreenShotDialog$showShareDialog$2$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/kakaogame/promotion/share/ScreenShotDialog$showShareDialog$2$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    nop

    .array-data 1
    .end array-data
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 1909
    iget v0, p0, Lcom/kakaogame/promotion/share/ScreenShotDialog$showShareDialog$2$1;->label:I

    if-nez v0, :cond_6

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 1919
    iget-object p1, p0, Lcom/kakaogame/promotion/share/ScreenShotDialog$showShareDialog$2$1;->this$0:Lcom/kakaogame/promotion/share/ScreenShotDialog;

    invoke-static {p1}, Lcom/kakaogame/promotion/share/ScreenShotDialog;->access$isNative$p(Lcom/kakaogame/promotion/share/ScreenShotDialog;)Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_1

    .line 1929
    iget-object p1, p0, Lcom/kakaogame/promotion/share/ScreenShotDialog$showShareDialog$2$1;->this$0:Lcom/kakaogame/promotion/share/ScreenShotDialog;

    invoke-static {p1}, Lcom/kakaogame/promotion/share/ScreenShotDialog;->access$getBinding$p(Lcom/kakaogame/promotion/share/ScreenShotDialog;)Lcom/kakaogame/databinding/KakaoGameSdkShareScreenshotBinding;

    move-result-object p1

    if-nez p1, :cond_0

    const-string p1, "binding"

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v0

    :cond_0
    iget-object p1, p1, Lcom/kakaogame/databinding/KakaoGameSdkShareScreenshotBinding;->kakaoGameSdkScreenshotResultImage:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1949
    :cond_1
    iget-object p1, p0, Lcom/kakaogame/promotion/share/ScreenShotDialog$showShareDialog$2$1;->this$0:Lcom/kakaogame/promotion/share/ScreenShotDialog;

    const/4 v1, 0x0

    invoke-static {p1, v1}, Lcom/kakaogame/promotion/share/ScreenShotDialog;->access$setProgressSharing(Lcom/kakaogame/promotion/share/ScreenShotDialog;Z)V

    .line 1959
    sget-object p1, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const v2, 0x6d00b8e8

    invoke-static {v2}, Lcom/liapp/y;->ٱڳܴڭܩ(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/kakaogame/promotion/share/ScreenShotDialog$showShareDialog$2$1;->$result:Lcom/kakaogame/KGResult;

    invoke-virtual {v2}, Lcom/kakaogame/KGResult;->getCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7d7ca505

    invoke-static {v2}, Lcom/liapp/y;->حֲݴܳޯ(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2, v1}, Lcom/kakaogame/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1969
    iget-object p1, p0, Lcom/kakaogame/promotion/share/ScreenShotDialog$showShareDialog$2$1;->$result:Lcom/kakaogame/KGResult;

    invoke-virtual {p1}, Lcom/kakaogame/KGResult;->isSuccess()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 1989
    iget-object p1, p0, Lcom/kakaogame/promotion/share/ScreenShotDialog$showShareDialog$2$1;->this$0:Lcom/kakaogame/promotion/share/ScreenShotDialog;

    invoke-virtual {p1}, Lcom/kakaogame/promotion/share/ScreenShotDialog;->getOwnerActivity()Landroid/app/Activity;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Landroid/content/Context;

    const v2, 0x6d0daec0

    invoke-static {v2}, Lcom/liapp/y;->ٱڳܴڭܩ(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x2254ba5e

    invoke-static {v3}, Lcom/liapp/y;->ֲֳگܱޭ(I)Ljava/lang/String;

    move-result-object v3

    const v4, 0x5d1c8f1f

    invoke-static {v4}, Lcom/liapp/y;->ڴݮگ֮ت(I)Ljava/lang/String;

    move-result-object v4

    const v5, 0x6d0d91c0

    invoke-static {v5}, Lcom/liapp/y;->ٱڳܴڭܩ(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 1979
    invoke-static/range {v1 .. v8}, Lcom/kakaogame/log/service/BasicLogService;->writeBasicActionLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2079
    iget-object p1, p0, Lcom/kakaogame/promotion/share/ScreenShotDialog$showShareDialog$2$1;->this$0:Lcom/kakaogame/promotion/share/ScreenShotDialog;

    iget-object v1, p0, Lcom/kakaogame/promotion/share/ScreenShotDialog$showShareDialog$2$1;->$result:Lcom/kakaogame/KGResult;

    invoke-virtual {v1}, Lcom/kakaogame/KGResult;->getCode()I

    move-result v1

    invoke-static {p1, v1}, Lcom/kakaogame/promotion/share/ScreenShotDialog;->access$setResultCode$p(Lcom/kakaogame/promotion/share/ScreenShotDialog;I)V

    .line 2099
    iget-object p1, p0, Lcom/kakaogame/promotion/share/ScreenShotDialog$showShareDialog$2$1;->$data:Lcom/kakaogame/promotion/SNSShareData;

    invoke-virtual {p1}, Lcom/kakaogame/promotion/SNSShareData;->getSeq()J

    move-result-wide v1

    .line 2109
    sget-object p1, Lcom/kakaogame/promotion/SNSShareData$SNSShareType;->nonLinkShare:Lcom/kakaogame/promotion/SNSShareData$SNSShareType;

    .line 2089
    invoke-static {v1, v2, p1, v0}, Lcom/kakaogame/promotion/PromotionService;->sendRequestSNSShareReward(JLcom/kakaogame/promotion/SNSShareData$SNSShareType;Ljava/lang/String;)Lcom/kakaogame/KGResult;

    move-result-object p1

    .line 2139
    invoke-virtual {p1}, Lcom/kakaogame/KGResult;->isSuccess()Z

    move-result v0

    if-nez v0, :cond_2

    .line 2149
    iget-object v0, p0, Lcom/kakaogame/promotion/share/ScreenShotDialog$showShareDialog$2$1;->this$0:Lcom/kakaogame/promotion/share/ScreenShotDialog;

    invoke-virtual {p1}, Lcom/kakaogame/KGResult;->getCode()I

    move-result p1

    invoke-static {v0, p1}, Lcom/kakaogame/promotion/share/ScreenShotDialog;->access$setResultCode$p(Lcom/kakaogame/promotion/share/ScreenShotDialog;I)V

    .line 2169
    :cond_2
    iget-object p1, p0, Lcom/kakaogame/promotion/share/ScreenShotDialog$showShareDialog$2$1;->this$0:Lcom/kakaogame/promotion/share/ScreenShotDialog;

    invoke-virtual {p1}, Lcom/kakaogame/promotion/share/ScreenShotDialog;->dismiss()V

    goto :goto_0

    .line 2179
    :cond_3
    iget-object p1, p0, Lcom/kakaogame/promotion/share/ScreenShotDialog$showShareDialog$2$1;->$result:Lcom/kakaogame/KGResult;

    invoke-virtual {p1}, Lcom/kakaogame/KGResult;->getCode()I

    move-result p1

    const/16 v0, 0x1f41

    if-ne p1, v0, :cond_4

    .line 2189
    iget-object p1, p0, Lcom/kakaogame/promotion/share/ScreenShotDialog$showShareDialog$2$1;->this$0:Lcom/kakaogame/promotion/share/ScreenShotDialog;

    iget-object v0, p0, Lcom/kakaogame/promotion/share/ScreenShotDialog$showShareDialog$2$1;->$result:Lcom/kakaogame/KGResult;

    invoke-virtual {v0}, Lcom/kakaogame/KGResult;->getCode()I

    move-result v0

    invoke-static {p1, v0}, Lcom/kakaogame/promotion/share/ScreenShotDialog;->access$setResultCode$p(Lcom/kakaogame/promotion/share/ScreenShotDialog;I)V

    .line 2199
    iget-object p1, p0, Lcom/kakaogame/promotion/share/ScreenShotDialog$showShareDialog$2$1;->this$0:Lcom/kakaogame/promotion/share/ScreenShotDialog;

    invoke-virtual {p1}, Lcom/kakaogame/promotion/share/ScreenShotDialog;->dismiss()V

    goto :goto_0

    .line 2209
    :cond_4
    iget-object p1, p0, Lcom/kakaogame/promotion/share/ScreenShotDialog$showShareDialog$2$1;->$result:Lcom/kakaogame/KGResult;

    invoke-virtual {p1}, Lcom/kakaogame/KGResult;->getCode()I

    move-result p1

    const/16 v0, 0x2329

    if-ne p1, v0, :cond_5

    .line 2219
    iget-object p1, p0, Lcom/kakaogame/promotion/share/ScreenShotDialog$showShareDialog$2$1;->this$0:Lcom/kakaogame/promotion/share/ScreenShotDialog;

    invoke-static {p1}, Lcom/kakaogame/promotion/share/ScreenShotDialog;->access$isNative$p(Lcom/kakaogame/promotion/share/ScreenShotDialog;)Z

    move-result p1

    if-nez p1, :cond_5

    .line 2229
    iget-object p1, p0, Lcom/kakaogame/promotion/share/ScreenShotDialog$showShareDialog$2$1;->this$0:Lcom/kakaogame/promotion/share/ScreenShotDialog;

    const v0, 0x186a0

    invoke-static {p1, v0}, Lcom/kakaogame/promotion/share/ScreenShotDialog;->access$setResultCode$p(Lcom/kakaogame/promotion/share/ScreenShotDialog;I)V

    .line 2239
    iget-object p1, p0, Lcom/kakaogame/promotion/share/ScreenShotDialog$showShareDialog$2$1;->this$0:Lcom/kakaogame/promotion/share/ScreenShotDialog;

    invoke-virtual {p1}, Lcom/kakaogame/promotion/share/ScreenShotDialog;->dismiss()V

    .line 2269
    :cond_5
    :goto_0
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 1909
    :cond_6
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
