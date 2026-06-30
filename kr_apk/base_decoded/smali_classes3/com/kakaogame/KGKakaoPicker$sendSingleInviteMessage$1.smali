.class final Lcom/kakaogame/KGKakaoPicker$sendSingleInviteMessage$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "KGKakaoPicker.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kakaogame/KGKakaoPicker;->sendSingleInviteMessage(Landroid/app/Activity;ZLjava/lang/String;Ljava/util/Map;Lcom/kakaogame/KGResultCallback;)V
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
    c = "com.kakaogame.KGKakaoPicker$sendSingleInviteMessage$1"
    f = "KGKakaoPicker.kt"
    i = {}
    l = {
        0x5d
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $activity:Landroid/app/Activity;

.field final synthetic $args:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $callback:Lcom/kakaogame/KGResultCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/kakaogame/KGResultCallback<",
            "Lcom/kakaogame/KGKakaoPicker$KGKakaoUser;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $isPopup:Z

.field final synthetic $templateId:Ljava/lang/String;

.field label:I


# direct methods
.method constructor <init>(Landroid/app/Activity;ZLjava/lang/String;Ljava/util/Map;Lcom/kakaogame/KGResultCallback;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Z",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/kakaogame/KGResultCallback<",
            "Lcom/kakaogame/KGKakaoPicker$KGKakaoUser;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/kakaogame/KGKakaoPicker$sendSingleInviteMessage$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/kakaogame/KGKakaoPicker$sendSingleInviteMessage$1;->$activity:Landroid/app/Activity;

    iput-boolean p2, p0, Lcom/kakaogame/KGKakaoPicker$sendSingleInviteMessage$1;->$isPopup:Z

    iput-object p3, p0, Lcom/kakaogame/KGKakaoPicker$sendSingleInviteMessage$1;->$templateId:Ljava/lang/String;

    iput-object p4, p0, Lcom/kakaogame/KGKakaoPicker$sendSingleInviteMessage$1;->$args:Ljava/util/Map;

    iput-object p5, p0, Lcom/kakaogame/KGKakaoPicker$sendSingleInviteMessage$1;->$callback:Lcom/kakaogame/KGResultCallback;

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

    new-instance p1, Lcom/kakaogame/KGKakaoPicker$sendSingleInviteMessage$1;

    iget-object v1, p0, Lcom/kakaogame/KGKakaoPicker$sendSingleInviteMessage$1;->$activity:Landroid/app/Activity;

    iget-boolean v2, p0, Lcom/kakaogame/KGKakaoPicker$sendSingleInviteMessage$1;->$isPopup:Z

    iget-object v3, p0, Lcom/kakaogame/KGKakaoPicker$sendSingleInviteMessage$1;->$templateId:Ljava/lang/String;

    iget-object v4, p0, Lcom/kakaogame/KGKakaoPicker$sendSingleInviteMessage$1;->$args:Ljava/util/Map;

    iget-object v5, p0, Lcom/kakaogame/KGKakaoPicker$sendSingleInviteMessage$1;->$callback:Lcom/kakaogame/KGResultCallback;

    move-object v0, p1

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/kakaogame/KGKakaoPicker$sendSingleInviteMessage$1;-><init>(Landroid/app/Activity;ZLjava/lang/String;Ljava/util/Map;Lcom/kakaogame/KGResultCallback;Lkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlin/coroutines/Continuation;

    return-object p1

    .array-data 1
    .end array-data
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/kakaogame/KGKakaoPicker$sendSingleInviteMessage$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/kakaogame/KGKakaoPicker$sendSingleInviteMessage$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/kakaogame/KGKakaoPicker$sendSingleInviteMessage$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/kakaogame/KGKakaoPicker$sendSingleInviteMessage$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    nop

    .array-data 1
    .end array-data
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 919
    iget v1, p0, Lcom/kakaogame/KGKakaoPicker$sendSingleInviteMessage$1;->label:I

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

    .line 929
    sget-object p1, Lcom/kakaogame/KGKakaoPicker;->INSTANCE:Lcom/kakaogame/KGKakaoPicker;

    iget-object v1, p0, Lcom/kakaogame/KGKakaoPicker$sendSingleInviteMessage$1;->$activity:Landroid/app/Activity;

    iget-boolean v3, p0, Lcom/kakaogame/KGKakaoPicker$sendSingleInviteMessage$1;->$isPopup:Z

    iget-object v4, p0, Lcom/kakaogame/KGKakaoPicker$sendSingleInviteMessage$1;->$templateId:Ljava/lang/String;

    iget-object v5, p0, Lcom/kakaogame/KGKakaoPicker$sendSingleInviteMessage$1;->$args:Ljava/util/Map;

    invoke-static {p1, v1, v3, v4, v5}, Lcom/kakaogame/KGKakaoPicker;->access$sendSingleInviteMessage(Lcom/kakaogame/KGKakaoPicker;Landroid/app/Activity;ZLjava/lang/String;Ljava/util/Map;)Lcom/kakaogame/KGResult;

    move-result-object p1

    .line 939
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getMain()Lkotlinx/coroutines/MainCoroutineDispatcher;

    move-result-object v1

    check-cast v1, Lkotlin/coroutines/CoroutineContext;

    new-instance v3, Lcom/kakaogame/KGKakaoPicker$sendSingleInviteMessage$1$1;

    iget-object v4, p0, Lcom/kakaogame/KGKakaoPicker$sendSingleInviteMessage$1;->$callback:Lcom/kakaogame/KGResultCallback;

    const/4 v5, 0x0

    invoke-direct {v3, p1, v4, v5}, Lcom/kakaogame/KGKakaoPicker$sendSingleInviteMessage$1$1;-><init>(Lcom/kakaogame/KGResult;Lcom/kakaogame/KGResultCallback;Lkotlin/coroutines/Continuation;)V

    check-cast v3, Lkotlin/jvm/functions/Function2;

    move-object p1, p0

    check-cast p1, Lkotlin/coroutines/Continuation;

    iput v2, p0, Lcom/kakaogame/KGKakaoPicker$sendSingleInviteMessage$1;->label:I

    invoke-static {v1, v3, p1}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    .line 989
    :cond_2
    :goto_0
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .array-data 1
    .end array-data
.end method
