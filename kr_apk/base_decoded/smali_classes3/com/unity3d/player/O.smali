.class final Lcom/unity3d/player/O;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final a:J

.field final b:J


# direct methods
.method public constructor <init>(JJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/unity3d/player/O;->a:J

    iput-wide p3, p0, Lcom/unity3d/player/O;->b:J

    return-void

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-wide v0, p0, Lcom/unity3d/player/O;->a:J

    invoke-static {v0, v1}, Lcom/unity3d/player/ReflectionHelper;->beginProxyCall(J)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    iget-wide v0, p0, Lcom/unity3d/player/O;->b:J

    invoke-static {v0, v1}, Lcom/unity3d/player/ReflectionHelper;->-$$Nest$smnativeProxyFinalize(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/unity3d/player/ReflectionHelper;->endProxyCall()V

    return-void

    :catchall_0
    move-exception v0

    invoke-static {}, Lcom/unity3d/player/ReflectionHelper;->endProxyCall()V

    throw v0

    nop

    .array-data 1
    .end array-data
.end method
