.class public final Lcom/kakaogame/secondpw/SecondPWViewDialog$startLimitTimer$$inlined$timer$default$1;
.super Ljava/util/TimerTask;
.source "Timer.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kakaogame/secondpw/SecondPWViewDialog;->startLimitTimer(ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTimer.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Timer.kt\nkotlin/concurrent/TimersKt$timerTask$1\n+ 2 SecondPWViewDialog.kt\ncom/kakaogame/secondpw/SecondPWViewDialog\n*L\n1#1,147:1\n136#2,3:148\n*E\n"
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
.field final synthetic $limitAction$inlined:Ljava/lang/String;

.field final synthetic this$0:Lcom/kakaogame/secondpw/SecondPWViewDialog;


# direct methods
.method public constructor <init>(Lcom/kakaogame/secondpw/SecondPWViewDialog;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/kakaogame/secondpw/SecondPWViewDialog$startLimitTimer$$inlined$timer$default$1;->this$0:Lcom/kakaogame/secondpw/SecondPWViewDialog;

    iput-object p2, p0, Lcom/kakaogame/secondpw/SecondPWViewDialog$startLimitTimer$$inlined$timer$default$1;->$limitAction$inlined:Ljava/lang/String;

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
    iget-object v1, p0, Lcom/kakaogame/secondpw/SecondPWViewDialog$startLimitTimer$$inlined$timer$default$1;->this$0:Lcom/kakaogame/secondpw/SecondPWViewDialog;

    iget-object v2, p0, Lcom/kakaogame/secondpw/SecondPWViewDialog$startLimitTimer$$inlined$timer$default$1;->$limitAction$inlined:Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x2

    invoke-static {v1, v2, v3, v4, v3}, Lcom/kakaogame/secondpw/SecondPWViewDialog;->selectView$default(Lcom/kakaogame/secondpw/SecondPWViewDialog;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 1499
    invoke-virtual {v0}, Ljava/util/TimerTask;->cancel()Z

    return-void

    .array-data 1
    .end array-data
.end method
