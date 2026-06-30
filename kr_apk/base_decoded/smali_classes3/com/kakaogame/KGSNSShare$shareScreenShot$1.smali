.class final Lcom/kakaogame/KGSNSShare$shareScreenShot$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "KGSNSShare.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kakaogame/KGSNSShare;->shareScreenShot(Landroid/app/Activity;ZLcom/kakaogame/KGResultCallback;)V
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
    c = "com.kakaogame.KGSNSShare$shareScreenShot$1"
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

.field final synthetic $fbEvent:Lcom/kakaogame/log/FirebaseEvent;

.field final synthetic $isNative:Z

.field label:I


# direct methods
.method constructor <init>(Landroid/app/Activity;ZLcom/kakaogame/KGResultCallback;Lcom/kakaogame/log/FirebaseEvent;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Z",
            "Lcom/kakaogame/KGResultCallback<",
            "Ljava/lang/Void;",
            ">;",
            "Lcom/kakaogame/log/FirebaseEvent;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/kakaogame/KGSNSShare$shareScreenShot$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/kakaogame/KGSNSShare$shareScreenShot$1;->$activity:Landroid/app/Activity;

    iput-boolean p2, p0, Lcom/kakaogame/KGSNSShare$shareScreenShot$1;->$isNative:Z

    iput-object p3, p0, Lcom/kakaogame/KGSNSShare$shareScreenShot$1;->$callback:Lcom/kakaogame/KGResultCallback;

    iput-object p4, p0, Lcom/kakaogame/KGSNSShare$shareScreenShot$1;->$fbEvent:Lcom/kakaogame/log/FirebaseEvent;

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

    new-instance p1, Lcom/kakaogame/KGSNSShare$shareScreenShot$1;

    iget-object v1, p0, Lcom/kakaogame/KGSNSShare$shareScreenShot$1;->$activity:Landroid/app/Activity;

    iget-boolean v2, p0, Lcom/kakaogame/KGSNSShare$shareScreenShot$1;->$isNative:Z

    iget-object v3, p0, Lcom/kakaogame/KGSNSShare$shareScreenShot$1;->$callback:Lcom/kakaogame/KGResultCallback;

    iget-object v4, p0, Lcom/kakaogame/KGSNSShare$shareScreenShot$1;->$fbEvent:Lcom/kakaogame/log/FirebaseEvent;

    move-object v0, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/kakaogame/KGSNSShare$shareScreenShot$1;-><init>(Landroid/app/Activity;ZLcom/kakaogame/KGResultCallback;Lcom/kakaogame/log/FirebaseEvent;Lkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlin/coroutines/Continuation;

    return-object p1

    .array-data 1
    .end array-data
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/kakaogame/KGSNSShare$shareScreenShot$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/kakaogame/KGSNSShare$shareScreenShot$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/kakaogame/KGSNSShare$shareScreenShot$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/kakaogame/KGSNSShare$shareScreenShot$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    nop

    .array-data 1
    .end array-data
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 7009
    iget v0, p0, Lcom/kakaogame/KGSNSShare$shareScreenShot$1;->label:I

    if-nez v0, :cond_1

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 7029
    :try_start_0
    new-instance p1, Lcom/kakaogame/promotion/share/ScreenShotDialog;

    iget-object v0, p0, Lcom/kakaogame/KGSNSShare$shareScreenShot$1;->$activity:Landroid/app/Activity;

    iget-boolean v1, p0, Lcom/kakaogame/KGSNSShare$shareScreenShot$1;->$isNative:Z

    new-instance v2, Lcom/kakaogame/KGSNSShare$shareScreenShot$1$screenShotDialog$1;

    iget-object v3, p0, Lcom/kakaogame/KGSNSShare$shareScreenShot$1;->$callback:Lcom/kakaogame/KGResultCallback;

    iget-object v4, p0, Lcom/kakaogame/KGSNSShare$shareScreenShot$1;->$fbEvent:Lcom/kakaogame/log/FirebaseEvent;

    invoke-direct {v2, v3, v4}, Lcom/kakaogame/KGSNSShare$shareScreenShot$1$screenShotDialog$1;-><init>(Lcom/kakaogame/KGResultCallback;Lcom/kakaogame/log/FirebaseEvent;)V

    check-cast v2, Lcom/kakaogame/KGResultCallback;

    invoke-direct {p1, v0, v1, v2}, Lcom/kakaogame/promotion/share/ScreenShotDialog;-><init>(Landroid/app/Activity;ZLcom/kakaogame/KGResultCallback;)V

    .line 7089
    invoke-virtual {p1}, Lcom/kakaogame/promotion/share/ScreenShotDialog;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 7109
    sget-object v0, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v2, p1

    check-cast v2, Ljava/lang/Throwable;

    const v3, 0x7d71b74d

    invoke-static {v3}, Lcom/liapp/y;->حֲݴܳޯ(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3, v1, v2}, Lcom/kakaogame/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 7119
    sget-object v0, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    const/16 v1, 0xfa1

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/kakaogame/KGResult$Companion;->getResult(ILjava/lang/String;)Lcom/kakaogame/KGResult;

    move-result-object p1

    .line 7129
    iget-object v0, p0, Lcom/kakaogame/KGSNSShare$shareScreenShot$1;->$callback:Lcom/kakaogame/KGResultCallback;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/kakaogame/KGResultCallback;->onResult(Lcom/kakaogame/KGResult;)V

    .line 7139
    :cond_0
    iget-object v0, p0, Lcom/kakaogame/KGSNSShare$shareScreenShot$1;->$fbEvent:Lcom/kakaogame/log/FirebaseEvent;

    invoke-virtual {v0, p1}, Lcom/kakaogame/log/FirebaseEvent;->setResult(Lcom/kakaogame/KGResult;)V

    .line 7159
    :goto_0
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 7009
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const v0, -0x451e018f

    invoke-static {v0}, Lcom/liapp/y;->ڳݬ٬ۮݪ(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .array-data 1
    .end array-data
.end method
