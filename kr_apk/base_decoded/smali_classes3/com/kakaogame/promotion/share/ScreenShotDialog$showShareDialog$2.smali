.class final Lcom/kakaogame/promotion/share/ScreenShotDialog$showShareDialog$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "ScreenShotDialog.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kakaogame/promotion/share/ScreenShotDialog;->showShareDialog(Landroid/graphics/Bitmap;)V
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
    c = "com.kakaogame.promotion.share.ScreenShotDialog$showShareDialog$2"
    f = "ScreenShotDialog.kt"
    i = {}
    l = {
        0xbe
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $data:Lcom/kakaogame/promotion/SNSShareData;

.field final synthetic $path:Ljava/lang/String;

.field label:I

.field final synthetic this$0:Lcom/kakaogame/promotion/share/ScreenShotDialog;


# direct methods
.method constructor <init>(Lcom/kakaogame/promotion/share/ScreenShotDialog;Lcom/kakaogame/promotion/SNSShareData;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/kakaogame/promotion/share/ScreenShotDialog;",
            "Lcom/kakaogame/promotion/SNSShareData;",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/kakaogame/promotion/share/ScreenShotDialog$showShareDialog$2;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/kakaogame/promotion/share/ScreenShotDialog$showShareDialog$2;->this$0:Lcom/kakaogame/promotion/share/ScreenShotDialog;

    iput-object p2, p0, Lcom/kakaogame/promotion/share/ScreenShotDialog$showShareDialog$2;->$data:Lcom/kakaogame/promotion/SNSShareData;

    iput-object p3, p0, Lcom/kakaogame/promotion/share/ScreenShotDialog$showShareDialog$2;->$path:Ljava/lang/String;

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

    new-instance p1, Lcom/kakaogame/promotion/share/ScreenShotDialog$showShareDialog$2;

    iget-object v0, p0, Lcom/kakaogame/promotion/share/ScreenShotDialog$showShareDialog$2;->this$0:Lcom/kakaogame/promotion/share/ScreenShotDialog;

    iget-object v1, p0, Lcom/kakaogame/promotion/share/ScreenShotDialog$showShareDialog$2;->$data:Lcom/kakaogame/promotion/SNSShareData;

    iget-object v2, p0, Lcom/kakaogame/promotion/share/ScreenShotDialog$showShareDialog$2;->$path:Ljava/lang/String;

    invoke-direct {p1, v0, v1, v2, p2}, Lcom/kakaogame/promotion/share/ScreenShotDialog$showShareDialog$2;-><init>(Lcom/kakaogame/promotion/share/ScreenShotDialog;Lcom/kakaogame/promotion/SNSShareData;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlin/coroutines/Continuation;

    return-object p1

    .array-data 1
    .end array-data
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/kakaogame/promotion/share/ScreenShotDialog$showShareDialog$2;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/kakaogame/promotion/share/ScreenShotDialog$showShareDialog$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/kakaogame/promotion/share/ScreenShotDialog$showShareDialog$2;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/kakaogame/promotion/share/ScreenShotDialog$showShareDialog$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    nop

    .array-data 1
    .end array-data
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 1749
    iget v1, p0, Lcom/kakaogame/promotion/share/ScreenShotDialog$showShareDialog$2;->label:I

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

    .line 1779
    iget-object p1, p0, Lcom/kakaogame/promotion/share/ScreenShotDialog$showShareDialog$2;->this$0:Lcom/kakaogame/promotion/share/ScreenShotDialog;

    invoke-virtual {p1}, Lcom/kakaogame/promotion/share/ScreenShotDialog;->getOwnerActivity()Landroid/app/Activity;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Landroid/content/Context;

    const v4, 0x6d0daec0

    invoke-static {v4}, Lcom/liapp/y;->ٱڳܴڭܩ(I)Ljava/lang/String;

    move-result-object v4

    const v5, -0x4518e31f

    invoke-static {v5}, Lcom/liapp/y;->ڳݬ٬ۮݪ(I)Ljava/lang/String;

    move-result-object v5

    const v6, 0x5d1c8f1f

    invoke-static {v6}, Lcom/liapp/y;->ڴݮگ֮ت(I)Ljava/lang/String;

    move-result-object v6

    const v7, 0x6d0d91c0

    invoke-static {v7}, Lcom/liapp/y;->ٱڳܴڭܩ(I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 1769
    invoke-static/range {v3 .. v10}, Lcom/kakaogame/log/service/BasicLogService;->writeBasicActionLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1869
    iget-object p1, p0, Lcom/kakaogame/promotion/share/ScreenShotDialog$showShareDialog$2;->$data:Lcom/kakaogame/promotion/SNSShareData;

    sget-object v1, Lcom/kakaogame/promotion/SNSShareData$SNSShareType;->nonLinkShare:Lcom/kakaogame/promotion/SNSShareData$SNSShareType;

    invoke-virtual {p1, v1}, Lcom/kakaogame/promotion/SNSShareData;->getShareData(Lcom/kakaogame/promotion/SNSShareData$SNSShareType;)Lcom/kakaogame/promotion/SNSShareData$ShareInfo;

    move-result-object p1

    .line 1879
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/kakaogame/promotion/SNSShareData$ShareInfo;->getFirstHashtag()Ljava/lang/String;

    move-result-object p1

    .line 1889
    iget-object v1, p0, Lcom/kakaogame/promotion/share/ScreenShotDialog$showShareDialog$2;->this$0:Lcom/kakaogame/promotion/share/ScreenShotDialog;

    invoke-virtual {v1}, Lcom/kakaogame/promotion/share/ScreenShotDialog;->getOwnerActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v3, p0, Lcom/kakaogame/promotion/share/ScreenShotDialog$showShareDialog$2;->$path:Ljava/lang/String;

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {v1, v3, p1}, Lcom/kakaogame/idp/ChannelConnectHelper;->facebookShareImage(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)Lcom/kakaogame/KGResult;

    move-result-object p1

    .line 1909
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getMain()Lkotlinx/coroutines/MainCoroutineDispatcher;

    move-result-object v1

    check-cast v1, Lkotlin/coroutines/CoroutineContext;

    new-instance v3, Lcom/kakaogame/promotion/share/ScreenShotDialog$showShareDialog$2$1;

    iget-object v4, p0, Lcom/kakaogame/promotion/share/ScreenShotDialog$showShareDialog$2;->this$0:Lcom/kakaogame/promotion/share/ScreenShotDialog;

    iget-object v5, p0, Lcom/kakaogame/promotion/share/ScreenShotDialog$showShareDialog$2;->$data:Lcom/kakaogame/promotion/SNSShareData;

    const/4 v6, 0x0

    invoke-direct {v3, v4, p1, v5, v6}, Lcom/kakaogame/promotion/share/ScreenShotDialog$showShareDialog$2$1;-><init>(Lcom/kakaogame/promotion/share/ScreenShotDialog;Lcom/kakaogame/KGResult;Lcom/kakaogame/promotion/SNSShareData;Lkotlin/coroutines/Continuation;)V

    check-cast v3, Lkotlin/jvm/functions/Function2;

    move-object p1, p0

    check-cast p1, Lkotlin/coroutines/Continuation;

    iput v2, p0, Lcom/kakaogame/promotion/share/ScreenShotDialog$showShareDialog$2;->label:I

    invoke-static {v1, v3, p1}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    .line 2279
    :cond_2
    :goto_0
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    nop

    .array-data 1
    .end array-data
.end method
