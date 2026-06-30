.class final Lcom/unity3d/player/t;
.super Landroid/hardware/camera2/CameraDevice$StateCallback;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/unity3d/player/w;


# direct methods
.method constructor <init>(Lcom/unity3d/player/w;)V
    .locals 0

    iput-object p1, p0, Lcom/unity3d/player/t;->a:Lcom/unity3d/player/w;

    invoke-direct {p0}, Landroid/hardware/camera2/CameraDevice$StateCallback;-><init>()V

    return-void

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public final onClosed(Landroid/hardware/camera2/CameraDevice;)V
    .locals 0

    invoke-static {}, Lcom/unity3d/player/w;->-$$Nest$sfgetD()Ljava/util/concurrent/Semaphore;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/Semaphore;->release()V

    return-void

    .array-data 1
    .end array-data
.end method

.method public final onDisconnected(Landroid/hardware/camera2/CameraDevice;)V
    .locals 2

    const/4 v0, 0x5

    const-string v1, "Camera2: CameraDevice disconnected."

    invoke-static {v0, v1}, Lcom/unity3d/player/z;->Log(ILjava/lang/String;)V

    iget-object v0, p0, Lcom/unity3d/player/t;->a:Lcom/unity3d/player/w;

    invoke-static {v0, p1}, Lcom/unity3d/player/w;->-$$Nest$ma(Lcom/unity3d/player/w;Landroid/hardware/camera2/CameraDevice;)V

    invoke-static {}, Lcom/unity3d/player/w;->-$$Nest$sfgetD()Ljava/util/concurrent/Semaphore;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/Semaphore;->release()V

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public final onError(Landroid/hardware/camera2/CameraDevice;I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Camera2: Error opeining CameraDevice "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x6

    invoke-static {v0, p2}, Lcom/unity3d/player/z;->Log(ILjava/lang/String;)V

    iget-object p2, p0, Lcom/unity3d/player/t;->a:Lcom/unity3d/player/w;

    invoke-static {p2, p1}, Lcom/unity3d/player/w;->-$$Nest$ma(Lcom/unity3d/player/w;Landroid/hardware/camera2/CameraDevice;)V

    invoke-static {}, Lcom/unity3d/player/w;->-$$Nest$sfgetD()Ljava/util/concurrent/Semaphore;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/Semaphore;->release()V

    return-void

    .array-data 1
    .end array-data
.end method

.method public final onOpened(Landroid/hardware/camera2/CameraDevice;)V
    .locals 1

    iget-object v0, p0, Lcom/unity3d/player/t;->a:Lcom/unity3d/player/w;

    invoke-static {v0, p1}, Lcom/unity3d/player/w;->-$$Nest$fputb(Lcom/unity3d/player/w;Landroid/hardware/camera2/CameraDevice;)V

    invoke-static {}, Lcom/unity3d/player/w;->-$$Nest$sfgetD()Ljava/util/concurrent/Semaphore;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/Semaphore;->release()V

    return-void

    nop

    .array-data 1
    .end array-data
.end method
