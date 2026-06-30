.class final Lcom/kakaogame/KGKakaoPicker$sendMultiInviteMessage$friendPickerResult$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "KGKakaoPicker.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kakaogame/KGKakaoPicker;->sendMultiInviteMessage(Landroid/app/Activity;ZLjava/lang/String;Ljava/util/Map;)Lcom/kakaogame/KGResult;
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
        "Ljava/util/List<",
        "+",
        "Lcom/kakaogame/KGKakaoPicker$KGKakaoUser;",
        ">;>;>;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u0010\u0012\u000c\u0012\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u00020\u0001*\u00020\u0004H\n"
    }
    d2 = {
        "<anonymous>",
        "Lcom/kakaogame/KGResult;",
        "",
        "Lcom/kakaogame/KGKakaoPicker$KGKakaoUser;",
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
    c = "com.kakaogame.KGKakaoPicker$sendMultiInviteMessage$friendPickerResult$1"
    f = "KGKakaoPicker.kt"
    i = {}
    l = {
        0xc8
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $activity:Landroid/app/Activity;

.field final synthetic $isPopup:Z

.field label:I


# direct methods
.method constructor <init>(Landroid/app/Activity;ZLkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Z",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/kakaogame/KGKakaoPicker$sendMultiInviteMessage$friendPickerResult$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/kakaogame/KGKakaoPicker$sendMultiInviteMessage$friendPickerResult$1;->$activity:Landroid/app/Activity;

    iput-boolean p2, p0, Lcom/kakaogame/KGKakaoPicker$sendMultiInviteMessage$friendPickerResult$1;->$isPopup:Z

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void

    nop

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 2
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

    new-instance p1, Lcom/kakaogame/KGKakaoPicker$sendMultiInviteMessage$friendPickerResult$1;

    iget-object v0, p0, Lcom/kakaogame/KGKakaoPicker$sendMultiInviteMessage$friendPickerResult$1;->$activity:Landroid/app/Activity;

    iget-boolean v1, p0, Lcom/kakaogame/KGKakaoPicker$sendMultiInviteMessage$friendPickerResult$1;->$isPopup:Z

    invoke-direct {p1, v0, v1, p2}, Lcom/kakaogame/KGKakaoPicker$sendMultiInviteMessage$friendPickerResult$1;-><init>(Landroid/app/Activity;ZLkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlin/coroutines/Continuation;

    return-object p1

    .array-data 1
    .end array-data
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/kakaogame/KGKakaoPicker$sendMultiInviteMessage$friendPickerResult$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
            "Ljava/util/List<",
            "Lcom/kakaogame/KGKakaoPicker$KGKakaoUser;",
            ">;>;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/kakaogame/KGKakaoPicker$sendMultiInviteMessage$friendPickerResult$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/kakaogame/KGKakaoPicker$sendMultiInviteMessage$friendPickerResult$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/kakaogame/KGKakaoPicker$sendMultiInviteMessage$friendPickerResult$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    nop

    .array-data 1
    .end array-data
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 1999
    iget v1, p0, Lcom/kakaogame/KGKakaoPicker$sendMultiInviteMessage$friendPickerResult$1;->label:I

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

    .line 2009
    sget-object p1, Lcom/kakaogame/KGKakaoPicker;->INSTANCE:Lcom/kakaogame/KGKakaoPicker;

    iget-object v1, p0, Lcom/kakaogame/KGKakaoPicker$sendMultiInviteMessage$friendPickerResult$1;->$activity:Landroid/app/Activity;

    iget-boolean v3, p0, Lcom/kakaogame/KGKakaoPicker$sendMultiInviteMessage$friendPickerResult$1;->$isPopup:Z

    move-object v4, p0

    check-cast v4, Lkotlin/coroutines/Continuation;

    iput v2, p0, Lcom/kakaogame/KGKakaoPicker$sendMultiInviteMessage$friendPickerResult$1;->label:I

    invoke-static {p1, v1, v3, v4}, Lcom/kakaogame/KGKakaoPicker;->access$showMultiFriendPicker(Lcom/kakaogame/KGKakaoPicker;Landroid/app/Activity;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    :cond_2
    :goto_0
    return-object p1

    .array-data 1
    .end array-data
.end method
