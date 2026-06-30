.class public Lcom/yasirkula/unity/DebugConsoleLogcatLogger;
.super Ljava/lang/Object;
.source "DebugConsoleLogcatLogger.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yasirkula/unity/DebugConsoleLogcatLogger$LogcatWorker;
    }
.end annotation


# instance fields
.field private worker:Lcom/yasirkula/unity/DebugConsoleLogcatLogger$LogcatWorker;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public Start(Lcom/yasirkula/unity/DebugConsoleLogcatLogReceiver;Ljava/lang/String;)V
    .locals 2

    .line 679
    invoke-virtual {p0}, Lcom/yasirkula/unity/DebugConsoleLogcatLogger;->Stop()V

    if-nez p1, :cond_0

    return-void

    :cond_0
    if-eqz p2, :cond_1

    .line 759
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    .line 769
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 779
    new-instance v0, Ljava/lang/StringBuilder;

    const v1, 0x6d0523b8

    invoke-static {v1}, Lcom/liapp/y;->ٱڳܴڭܩ(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_1
    const-string p2, "logcat"

    .line 809
    :goto_0
    new-instance v0, Lcom/yasirkula/unity/DebugConsoleLogcatLogger$LogcatWorker;

    invoke-direct {v0, p1, p2}, Lcom/yasirkula/unity/DebugConsoleLogcatLogger$LogcatWorker;-><init>(Lcom/yasirkula/unity/DebugConsoleLogcatLogReceiver;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/yasirkula/unity/DebugConsoleLogcatLogger;->worker:Lcom/yasirkula/unity/DebugConsoleLogcatLogger$LogcatWorker;

    .line 819
    new-instance p1, Ljava/lang/Thread;

    iget-object p2, p0, Lcom/yasirkula/unity/DebugConsoleLogcatLogger;->worker:Lcom/yasirkula/unity/DebugConsoleLogcatLogger$LogcatWorker;

    invoke-direct {p1, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 829
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public Stop()V
    .locals 1

    .line 879
    iget-object v0, p0, Lcom/yasirkula/unity/DebugConsoleLogcatLogger;->worker:Lcom/yasirkula/unity/DebugConsoleLogcatLogger$LogcatWorker;

    if-eqz v0, :cond_0

    .line 899
    invoke-virtual {v0}, Lcom/yasirkula/unity/DebugConsoleLogcatLogger$LogcatWorker;->terminate()V

    const/4 v0, 0x0

    .line 909
    iput-object v0, p0, Lcom/yasirkula/unity/DebugConsoleLogcatLogger;->worker:Lcom/yasirkula/unity/DebugConsoleLogcatLogger$LogcatWorker;

    :cond_0
    return-void

    nop

    .array-data 1
    .end array-data
.end method
