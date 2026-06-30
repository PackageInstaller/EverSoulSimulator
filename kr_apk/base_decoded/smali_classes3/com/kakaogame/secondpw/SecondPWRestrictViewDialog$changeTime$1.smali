.class final Lcom/kakaogame/secondpw/SecondPWRestrictViewDialog$changeTime$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SecondPWRestrictViewDialog.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kakaogame/secondpw/SecondPWRestrictViewDialog;->changeTime(I)V
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
    c = "com.kakaogame.secondpw.SecondPWRestrictViewDialog$changeTime$1"
    f = "SecondPWRestrictViewDialog.kt"
    i = {}
    l = {}
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $countDownSec:I

.field label:I

.field final synthetic this$0:Lcom/kakaogame/secondpw/SecondPWRestrictViewDialog;


# direct methods
.method constructor <init>(Lcom/kakaogame/secondpw/SecondPWRestrictViewDialog;ILkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/kakaogame/secondpw/SecondPWRestrictViewDialog;",
            "I",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/kakaogame/secondpw/SecondPWRestrictViewDialog$changeTime$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/kakaogame/secondpw/SecondPWRestrictViewDialog$changeTime$1;->this$0:Lcom/kakaogame/secondpw/SecondPWRestrictViewDialog;

    iput p2, p0, Lcom/kakaogame/secondpw/SecondPWRestrictViewDialog$changeTime$1;->$countDownSec:I

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

    new-instance p1, Lcom/kakaogame/secondpw/SecondPWRestrictViewDialog$changeTime$1;

    iget-object v0, p0, Lcom/kakaogame/secondpw/SecondPWRestrictViewDialog$changeTime$1;->this$0:Lcom/kakaogame/secondpw/SecondPWRestrictViewDialog;

    iget v1, p0, Lcom/kakaogame/secondpw/SecondPWRestrictViewDialog$changeTime$1;->$countDownSec:I

    invoke-direct {p1, v0, v1, p2}, Lcom/kakaogame/secondpw/SecondPWRestrictViewDialog$changeTime$1;-><init>(Lcom/kakaogame/secondpw/SecondPWRestrictViewDialog;ILkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlin/coroutines/Continuation;

    return-object p1

    .array-data 1
    .end array-data
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/kakaogame/secondpw/SecondPWRestrictViewDialog$changeTime$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/kakaogame/secondpw/SecondPWRestrictViewDialog$changeTime$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/kakaogame/secondpw/SecondPWRestrictViewDialog$changeTime$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/kakaogame/secondpw/SecondPWRestrictViewDialog$changeTime$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    nop

    .array-data 1
    .end array-data
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 649
    iget v0, p0, Lcom/kakaogame/secondpw/SecondPWRestrictViewDialog$changeTime$1;->label:I

    if-nez v0, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 659
    iget-object p1, p0, Lcom/kakaogame/secondpw/SecondPWRestrictViewDialog$changeTime$1;->this$0:Lcom/kakaogame/secondpw/SecondPWRestrictViewDialog;

    invoke-static {p1}, Lcom/kakaogame/secondpw/SecondPWRestrictViewDialog;->access$getBinding$p(Lcom/kakaogame/secondpw/SecondPWRestrictViewDialog;)Lcom/kakaogame/security/databinding/KakaoGame2ndPwRestrictViewBinding;

    move-result-object p1

    iget v0, p0, Lcom/kakaogame/secondpw/SecondPWRestrictViewDialog$changeTime$1;->$countDownSec:I

    iget-object v1, p0, Lcom/kakaogame/secondpw/SecondPWRestrictViewDialog$changeTime$1;->this$0:Lcom/kakaogame/secondpw/SecondPWRestrictViewDialog;

    .line 669
    div-int/lit8 v2, v0, 0x3c

    mul-int/lit8 v3, v2, 0x3c

    sub-int/2addr v0, v3

    .line 689
    iget-object p1, p1, Lcom/kakaogame/security/databinding/KakaoGame2ndPwRestrictViewBinding;->kakaoGame2ndPwError2lineTime:Lcom/kakaogame/ui/font/NotoSansTextView;

    sget-object v3, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    new-instance v3, Ljava/lang/StringBuilder;

    const v4, 0x6d0116c8

    invoke-static {v4}, Lcom/liapp/y;->ٱڳܴڭܩ(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/kakaogame/secondpw/SecondPWRestrictViewDialog;->getViewData()Lcom/kakaogame/secondpw/viewdata/RestrictPopupViewData;

    move-result-object v4

    invoke-virtual {v4}, Lcom/kakaogame/secondpw/viewdata/RestrictPopupViewData;->getMinLabel()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const v4, -0x4515a9d7

    invoke-static {v4}, Lcom/liapp/y;->ڳݬ٬ۮݪ(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/kakaogame/secondpw/SecondPWRestrictViewDialog;->getViewData()Lcom/kakaogame/secondpw/viewdata/RestrictPopupViewData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/kakaogame/secondpw/viewdata/RestrictPopupViewData;->getSecLabel()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x2

    new-array v4, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v2}, Lkotlin/coroutines/jvm/internal/Boxing;->boxInt(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v4, v5

    const/4 v2, 0x1

    invoke-static {v0}, Lkotlin/coroutines/jvm/internal/Boxing;->boxInt(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v2

    invoke-static {v4, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const v1, 0x22595326

    invoke-static {v1}, Lcom/liapp/y;->ֲֳگܱޭ(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Lcom/kakaogame/ui/font/NotoSansTextView;->setText(Ljava/lang/CharSequence;)V

    .line 709
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 649
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const v0, -0x451e018f

    invoke-static {v0}, Lcom/liapp/y;->ڳݬ٬ۮݪ(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .array-data 1
    .end array-data
.end method
