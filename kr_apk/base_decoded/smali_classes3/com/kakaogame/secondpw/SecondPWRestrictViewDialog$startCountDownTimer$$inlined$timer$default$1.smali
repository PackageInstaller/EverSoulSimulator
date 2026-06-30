.class public final Lcom/kakaogame/secondpw/SecondPWRestrictViewDialog$startCountDownTimer$$inlined$timer$default$1;
.super Ljava/util/TimerTask;
.source "Timer.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kakaogame/secondpw/SecondPWRestrictViewDialog;->startCountDownTimer()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTimer.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Timer.kt\nkotlin/concurrent/TimersKt$timerTask$1\n+ 2 SecondPWRestrictViewDialog.kt\ncom/kakaogame/secondpw/SecondPWRestrictViewDialog\n*L\n1#1,147:1\n76#2,6:148\n*E\n"
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

.field final synthetic this$0:Lcom/kakaogame/secondpw/SecondPWRestrictViewDialog;


# direct methods
.method public constructor <init>(Lcom/kakaogame/secondpw/SecondPWRestrictViewDialog;Lkotlin/jvm/internal/Ref$IntRef;)V
    .locals 0

    iput-object p1, p0, Lcom/kakaogame/secondpw/SecondPWRestrictViewDialog$startCountDownTimer$$inlined$timer$default$1;->this$0:Lcom/kakaogame/secondpw/SecondPWRestrictViewDialog;

    iput-object p2, p0, Lcom/kakaogame/secondpw/SecondPWRestrictViewDialog$startCountDownTimer$$inlined$timer$default$1;->$countDownSec$inlined:Lkotlin/jvm/internal/Ref$IntRef;

    .line 1469
    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1479
    move-object v0, p0

    check-cast v0, Ljava/util/TimerTask;

    .line 1489
    iget-object v0, p0, Lcom/kakaogame/secondpw/SecondPWRestrictViewDialog$startCountDownTimer$$inlined$timer$default$1;->this$0:Lcom/kakaogame/secondpw/SecondPWRestrictViewDialog;

    iget-object v1, p0, Lcom/kakaogame/secondpw/SecondPWRestrictViewDialog$startCountDownTimer$$inlined$timer$default$1;->$countDownSec$inlined:Lkotlin/jvm/internal/Ref$IntRef;

    iget v1, v1, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    invoke-static {v0, v1}, Lcom/kakaogame/secondpw/SecondPWRestrictViewDialog;->access$changeTime(Lcom/kakaogame/secondpw/SecondPWRestrictViewDialog;I)V

    .line 1499
    iget-object v0, p0, Lcom/kakaogame/secondpw/SecondPWRestrictViewDialog$startCountDownTimer$$inlined$timer$default$1;->$countDownSec$inlined:Lkotlin/jvm/internal/Ref$IntRef;

    iget v1, v0, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 1509
    iget-object v0, p0, Lcom/kakaogame/secondpw/SecondPWRestrictViewDialog$startCountDownTimer$$inlined$timer$default$1;->$countDownSec$inlined:Lkotlin/jvm/internal/Ref$IntRef;

    iget v0, v0, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    if-nez v0, :cond_0

    .line 1519
    iget-object v0, p0, Lcom/kakaogame/secondpw/SecondPWRestrictViewDialog$startCountDownTimer$$inlined$timer$default$1;->this$0:Lcom/kakaogame/secondpw/SecondPWRestrictViewDialog;

    invoke-static {v0}, Lcom/kakaogame/secondpw/SecondPWRestrictViewDialog;->access$closePopup(Lcom/kakaogame/secondpw/SecondPWRestrictViewDialog;)V

    :cond_0
    return-void

    .array-data 1
    .end array-data
.end method
