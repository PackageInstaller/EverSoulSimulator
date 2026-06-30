.class public final Lcom/kakaogame/secondpw/SecondPWViewDialog$startCountDownTimer$$inlined$timer$default$1;
.super Ljava/util/TimerTask;
.source "Timer.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kakaogame/secondpw/SecondPWViewDialog;->startCountDownTimer(Lcom/kakaogame/secondpw/viewdata/Base2ndPWViewData;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTimer.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Timer.kt\nkotlin/concurrent/TimersKt$timerTask$1\n+ 2 SecondPWViewDialog.kt\ncom/kakaogame/secondpw/SecondPWViewDialog\n*L\n1#1,147:1\n163#2,7:148\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0011\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0008\u0010\u0002\u001a\u00020\u0003H\u0016\u00a8\u0006\u0004\u00b8\u0006\u0000"
    }
    d2 = {
        "kotlin/concurrent/TimersKt$timerTask$1",
        "Ljava/util/TimerTask;",
        "run",
        "",
        "kotlin-stdlib"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $countDownSec$inlined:Lkotlin/jvm/internal/Ref$IntRef;

.field final synthetic $viewData$inlined:Lcom/kakaogame/secondpw/viewdata/Base2ndPWViewData;

.field final synthetic this$0:Lcom/kakaogame/secondpw/SecondPWViewDialog;


# direct methods
.method public constructor <init>(Lcom/kakaogame/secondpw/SecondPWViewDialog;Lkotlin/jvm/internal/Ref$IntRef;Lcom/kakaogame/secondpw/viewdata/Base2ndPWViewData;)V
    .locals 0

    iput-object p1, p0, Lcom/kakaogame/secondpw/SecondPWViewDialog$startCountDownTimer$$inlined$timer$default$1;->this$0:Lcom/kakaogame/secondpw/SecondPWViewDialog;

    iput-object p2, p0, Lcom/kakaogame/secondpw/SecondPWViewDialog$startCountDownTimer$$inlined$timer$default$1;->$countDownSec$inlined:Lkotlin/jvm/internal/Ref$IntRef;

    iput-object p3, p0, Lcom/kakaogame/secondpw/SecondPWViewDialog$startCountDownTimer$$inlined$timer$default$1;->$viewData$inlined:Lcom/kakaogame/secondpw/viewdata/Base2ndPWViewData;

    .line 1469
    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1479
    move-object v0, p0

    check-cast v0, Ljava/util/TimerTask;

    .line 1489
    iget-object v1, p0, Lcom/kakaogame/secondpw/SecondPWViewDialog$startCountDownTimer$$inlined$timer$default$1;->this$0:Lcom/kakaogame/secondpw/SecondPWViewDialog;

    iget-object v2, p0, Lcom/kakaogame/secondpw/SecondPWViewDialog$startCountDownTimer$$inlined$timer$default$1;->$countDownSec$inlined:Lkotlin/jvm/internal/Ref$IntRef;

    iget v2, v2, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    invoke-static {v1, v2}, Lcom/kakaogame/secondpw/SecondPWViewDialog;->access$changeTime(Lcom/kakaogame/secondpw/SecondPWViewDialog;I)V

    .line 1499
    iget-object v1, p0, Lcom/kakaogame/secondpw/SecondPWViewDialog$startCountDownTimer$$inlined$timer$default$1;->$countDownSec$inlined:Lkotlin/jvm/internal/Ref$IntRef;

    iget v2, v1, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    add-int/lit8 v2, v2, -0x1

    iput v2, v1, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 1509
    iget-object v1, p0, Lcom/kakaogame/secondpw/SecondPWViewDialog$startCountDownTimer$$inlined$timer$default$1;->$countDownSec$inlined:Lkotlin/jvm/internal/Ref$IntRef;

    iget v1, v1, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    if-nez v1, :cond_0

    .line 1519
    iget-object v1, p0, Lcom/kakaogame/secondpw/SecondPWViewDialog$startCountDownTimer$$inlined$timer$default$1;->this$0:Lcom/kakaogame/secondpw/SecondPWViewDialog;

    iget-object v2, p0, Lcom/kakaogame/secondpw/SecondPWViewDialog$startCountDownTimer$$inlined$timer$default$1;->$viewData$inlined:Lcom/kakaogame/secondpw/viewdata/Base2ndPWViewData;

    invoke-virtual {v2}, Lcom/kakaogame/secondpw/viewdata/Base2ndPWViewData;->getConfirmAction()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-static {v1, v2, v4, v3, v4}, Lcom/kakaogame/secondpw/SecondPWViewDialog;->selectView$default(Lcom/kakaogame/secondpw/SecondPWViewDialog;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 1529
    invoke-virtual {v0}, Ljava/util/TimerTask;->cancel()Z

    :cond_0
    return-void

    nop

    .array-data 1
    .end array-data
.end method
