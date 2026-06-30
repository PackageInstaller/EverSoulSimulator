.class public final Lcom/unity3d/player/Z0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private a:Lcom/unity3d/player/a1;

.field private b:Z


# direct methods
.method static bridge synthetic -$$Nest$fputb(Lcom/unity3d/player/Z0;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/unity3d/player/Z0;->b:Z

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public constructor <init>(Lcom/unity3d/player/a1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/unity3d/player/Z0;->a:Lcom/unity3d/player/a1;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/unity3d/player/Z0;->b:Z

    return-void

    nop

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public final run()V
    .locals 2

    const-wide/16 v0, 0x1388

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    :goto_0
    iget-boolean v0, p0, Lcom/unity3d/player/Z0;->b:Z

    if-nez v0, :cond_0

    sget v0, Lcom/unity3d/player/a1;->A:I

    iget-object v0, p0, Lcom/unity3d/player/Z0;->a:Lcom/unity3d/player/a1;

    invoke-virtual {v0}, Lcom/unity3d/player/a1;->cancelOnPrepare()V

    :cond_0
    return-void

    nop

    .array-data 1
    .end array-data
.end method
