.class Lcom/yasirkula/unity/DebugConsoleLogcatLogger$LogcatWorker;
.super Ljava/lang/Object;
.source "DebugConsoleLogcatLogger.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yasirkula/unity/DebugConsoleLogcatLogger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LogcatWorker"
.end annotation


# instance fields
.field private command:Ljava/lang/String;

.field private logReceiver:Lcom/yasirkula/unity/DebugConsoleLogcatLogReceiver;

.field private volatile running:Z


# direct methods
.method public constructor <init>(Lcom/yasirkula/unity/DebugConsoleLogcatLogReceiver;Ljava/lang/String;)V
    .locals 1

    .line 219
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 189
    iput-boolean v0, p0, Lcom/yasirkula/unity/DebugConsoleLogcatLogger$LogcatWorker;->running:Z

    .line 229
    iput-object p1, p0, Lcom/yasirkula/unity/DebugConsoleLogcatLogger$LogcatWorker;->logReceiver:Lcom/yasirkula/unity/DebugConsoleLogcatLogReceiver;

    .line 239
    iput-object p2, p0, Lcom/yasirkula/unity/DebugConsoleLogcatLogger$LogcatWorker;->command:Ljava/lang/String;

    return-void

    nop

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 329
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    const-string v1, "logcat -c"

    invoke-virtual {v0, v1}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    .line 349
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    iget-object v1, p0, Lcom/yasirkula/unity/DebugConsoleLogcatLogger$LogcatWorker;->command:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v0

    .line 359
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    invoke-virtual {v0}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 389
    :catch_0
    :goto_0
    iget-boolean v0, p0, Lcom/yasirkula/unity/DebugConsoleLogcatLogger$LogcatWorker;->running:Z

    if-eqz v0, :cond_1

    .line 409
    :goto_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 419
    iget-object v2, p0, Lcom/yasirkula/unity/DebugConsoleLogcatLogger$LogcatWorker;->logReceiver:Lcom/yasirkula/unity/DebugConsoleLogcatLogReceiver;

    invoke-interface {v2, v0}, Lcom/yasirkula/unity/DebugConsoleLogcatLogReceiver;->OnLogReceived(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    :cond_0
    const-wide/16 v2, 0x3e8

    .line 459
    :try_start_1
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    :cond_1
    return-void

    .array-data 1
    .end array-data
.end method

.method public terminate()V
    .locals 1

    const/4 v0, 0x0

    .line 599
    iput-boolean v0, p0, Lcom/yasirkula/unity/DebugConsoleLogcatLogger$LogcatWorker;->running:Z

    return-void

    .array-data 1
    .end array-data
.end method
