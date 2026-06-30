.class public final Lcom/unity3d/player/w;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static B:Landroid/hardware/camera2/CameraManager;

.field private static C:[Ljava/lang/String;

.field private static D:Ljava/util/concurrent/Semaphore;


# instance fields
.field private A:I

.field private a:Lcom/unity3d/player/a/b;

.field private b:Landroid/hardware/camera2/CameraDevice;

.field private c:Landroid/os/HandlerThread;

.field private d:Landroid/os/Handler;

.field private e:Landroid/graphics/Rect;

.field private f:Landroid/graphics/Rect;

.field private g:I

.field private h:I

.field private i:F

.field private j:F

.field private k:I

.field private l:I

.field private m:Z

.field private n:Landroid/util/Range;

.field private o:Landroid/media/ImageReader;

.field private p:Landroid/media/Image;

.field private q:Landroid/hardware/camera2/CaptureRequest$Builder;

.field private r:Landroid/hardware/camera2/CameraCaptureSession;

.field private s:Ljava/lang/Object;

.field private t:I

.field private u:Landroid/graphics/SurfaceTexture;

.field private v:Landroid/view/Surface;

.field private w:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

.field private final x:Landroid/hardware/camera2/CameraDevice$StateCallback;

.field private final y:Landroid/media/ImageReader$OnImageAvailableListener;

.field private final z:Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;


# direct methods
.method static bridge synthetic -$$Nest$fgeta(Lcom/unity3d/player/w;)Lcom/unity3d/player/a/b;
    .locals 0

    iget-object p0, p0, Lcom/unity3d/player/w;->a:Lcom/unity3d/player/a/b;

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method static bridge synthetic -$$Nest$fgetb(Lcom/unity3d/player/w;)Landroid/hardware/camera2/CameraDevice;
    .locals 0

    iget-object p0, p0, Lcom/unity3d/player/w;->b:Landroid/hardware/camera2/CameraDevice;

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method static bridge synthetic -$$Nest$fgetn(Lcom/unity3d/player/w;)Landroid/util/Range;
    .locals 0

    iget-object p0, p0, Lcom/unity3d/player/w;->n:Landroid/util/Range;

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method static bridge synthetic -$$Nest$fgetp(Lcom/unity3d/player/w;)Landroid/media/Image;
    .locals 0

    iget-object p0, p0, Lcom/unity3d/player/w;->p:Landroid/media/Image;

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method static bridge synthetic -$$Nest$fgetq(Lcom/unity3d/player/w;)Landroid/hardware/camera2/CaptureRequest$Builder;
    .locals 0

    iget-object p0, p0, Lcom/unity3d/player/w;->q:Landroid/hardware/camera2/CaptureRequest$Builder;

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method static bridge synthetic -$$Nest$fgets(Lcom/unity3d/player/w;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/unity3d/player/w;->s:Ljava/lang/Object;

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method static bridge synthetic -$$Nest$fgetv(Lcom/unity3d/player/w;)Landroid/view/Surface;
    .locals 0

    iget-object p0, p0, Lcom/unity3d/player/w;->v:Landroid/view/Surface;

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method static bridge synthetic -$$Nest$fputb(Lcom/unity3d/player/w;Landroid/hardware/camera2/CameraDevice;)V
    .locals 0

    iput-object p1, p0, Lcom/unity3d/player/w;->b:Landroid/hardware/camera2/CameraDevice;

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method static bridge synthetic -$$Nest$fputp(Lcom/unity3d/player/w;Landroid/media/Image;)V
    .locals 0

    iput-object p1, p0, Lcom/unity3d/player/w;->p:Landroid/media/Image;

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method static bridge synthetic -$$Nest$fputq(Lcom/unity3d/player/w;Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 0

    iput-object p1, p0, Lcom/unity3d/player/w;->q:Landroid/hardware/camera2/CaptureRequest$Builder;

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method static bridge synthetic -$$Nest$fputr(Lcom/unity3d/player/w;Landroid/hardware/camera2/CameraCaptureSession;)V
    .locals 0

    iput-object p1, p0, Lcom/unity3d/player/w;->r:Landroid/hardware/camera2/CameraCaptureSession;

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method static bridge synthetic -$$Nest$ma(Lcom/unity3d/player/w;Landroid/hardware/camera2/CameraDevice;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/unity3d/player/w;->a(Landroid/hardware/camera2/CameraDevice;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method static bridge synthetic -$$Nest$ma(Lcom/unity3d/player/w;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/unity3d/player/w;->a(Ljava/lang/Object;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method static bridge synthetic -$$Nest$mg(Lcom/unity3d/player/w;)V
    .locals 0

    invoke-direct {p0}, Lcom/unity3d/player/w;->g()V

    return-void

    .array-data 1
    .end array-data
.end method

.method static bridge synthetic -$$Nest$sfgetD()Ljava/util/concurrent/Semaphore;
    .locals 1

    sget-object v0, Lcom/unity3d/player/w;->D:Ljava/util/concurrent/Semaphore;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/util/concurrent/Semaphore;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    sput-object v0, Lcom/unity3d/player/w;->D:Ljava/util/concurrent/Semaphore;

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method protected constructor <init>(Lcom/unity3d/player/a/b;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/unity3d/player/w;->a:Lcom/unity3d/player/a/b;

    const/high16 v1, -0x40800000    # -1.0f

    iput v1, p0, Lcom/unity3d/player/w;->i:F

    iput v1, p0, Lcom/unity3d/player/w;->j:F

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/unity3d/player/w;->m:Z

    iput-object v0, p0, Lcom/unity3d/player/w;->o:Landroid/media/ImageReader;

    iput-object v0, p0, Lcom/unity3d/player/w;->r:Landroid/hardware/camera2/CameraCaptureSession;

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/unity3d/player/w;->s:Ljava/lang/Object;

    iput-object v0, p0, Lcom/unity3d/player/w;->v:Landroid/view/Surface;

    const/4 v0, 0x3

    iput v0, p0, Lcom/unity3d/player/w;->A:I

    new-instance v0, Lcom/unity3d/player/r;

    invoke-direct {v0, p0}, Lcom/unity3d/player/r;-><init>(Lcom/unity3d/player/w;)V

    iput-object v0, p0, Lcom/unity3d/player/w;->w:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    new-instance v0, Lcom/unity3d/player/t;

    invoke-direct {v0, p0}, Lcom/unity3d/player/t;-><init>(Lcom/unity3d/player/w;)V

    iput-object v0, p0, Lcom/unity3d/player/w;->x:Landroid/hardware/camera2/CameraDevice$StateCallback;

    new-instance v0, Lcom/unity3d/player/u;

    invoke-direct {v0, p0}, Lcom/unity3d/player/u;-><init>(Lcom/unity3d/player/w;)V

    iput-object v0, p0, Lcom/unity3d/player/w;->y:Landroid/media/ImageReader$OnImageAvailableListener;

    new-instance v0, Lcom/unity3d/player/v;

    invoke-direct {v0, p0}, Lcom/unity3d/player/v;-><init>(Lcom/unity3d/player/w;)V

    iput-object v0, p0, Lcom/unity3d/player/w;->z:Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;

    iput-object p1, p0, Lcom/unity3d/player/w;->a:Lcom/unity3d/player/a/b;

    invoke-direct {p0}, Lcom/unity3d/player/w;->e()V

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public static a(Landroid/content/Context;)I
    .locals 0

    invoke-static {p0}, Lcom/unity3d/player/w;->b(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object p0

    array-length p0, p0

    return p0

    .array-data 1
    .end array-data
.end method

.method public static a(Landroid/content/Context;I)I
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    invoke-static {p0}, Lcom/unity3d/player/w;->c(Landroid/content/Context;)Landroid/hardware/camera2/CameraManager;

    move-result-object v1

    invoke-static {p0}, Lcom/unity3d/player/w;->b(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object p0

    aget-object p0, p0, p1

    invoke-virtual {v1, p0}, Landroid/hardware/camera2/CameraManager;->getCameraCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object p0

    sget-object p1, Landroid/hardware/camera2/CameraCharacteristics;->LENS_INFO_AVAILABLE_FOCAL_LENGTHS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p0, p1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [F

    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_INFO_PHYSICAL_SIZE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p0, v1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/SizeF;

    array-length v1, p1

    if-lez v1, :cond_0

    aget p1, p1, v0

    const/high16 v1, 0x42100000    # 36.0f

    mul-float/2addr p1, v1

    invoke-virtual {p0}, Landroid/util/SizeF;->getWidth()F

    move-result p0
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    div-float/2addr p1, p0

    float-to-int p0, p1

    return p0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "Camera2: CameraAccessException "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x6

    invoke-static {p1, p0}, Lcom/unity3d/player/z;->Log(ILjava/lang/String;)V

    :cond_0
    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method private a(Landroid/hardware/camera2/CameraDevice;)V
    .locals 2

    iget-object v0, p0, Lcom/unity3d/player/w;->s:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    iput-object v1, p0, Lcom/unity3d/player/w;->r:Landroid/hardware/camera2/CameraCaptureSession;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p1}, Landroid/hardware/camera2/CameraDevice;->close()V

    iput-object v1, p0, Lcom/unity3d/player/w;->b:Landroid/hardware/camera2/CameraDevice;

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    .array-data 1
    .end array-data
.end method

.method private a(Ljava/lang/Object;)V
    .locals 5

    const-string v0, "Camera2: CameraAccessException "

    const-string v1, "Focus"

    if-ne p1, v1, :cond_1

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/unity3d/player/w;->m:Z

    iget-object v1, p0, Lcom/unity3d/player/w;->s:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/unity3d/player/w;->r:Landroid/hardware/camera2/CameraCaptureSession;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    :try_start_1
    iget-object v2, p0, Lcom/unity3d/player/w;->q:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v3, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_TRIGGER:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v2, v3, p1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/unity3d/player/w;->q:Landroid/hardware/camera2/CaptureRequest$Builder;

    const-string v2, "Regular"

    invoke-virtual {p1, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->setTag(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/unity3d/player/w;->r:Landroid/hardware/camera2/CameraCaptureSession;

    iget-object v2, p0, Lcom/unity3d/player/w;->q:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-virtual {v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v2

    iget-object v3, p0, Lcom/unity3d/player/w;->w:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    iget-object v4, p0, Lcom/unity3d/player/w;->d:Landroid/os/Handler;

    invoke-virtual {p1, v2, v3, v4}, Landroid/hardware/camera2/CameraCaptureSession;->setRepeatingRequest(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I
    :try_end_1
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p1

    :try_start_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x6

    invoke-static {v0, p1}, Lcom/unity3d/player/z;->Log(ILjava/lang/String;)V

    :cond_0
    :goto_0
    monitor-exit v1

    goto :goto_1

    :catchall_0
    move-exception p1

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1

    :cond_1
    const-string v0, "Cancel focus"

    if-ne p1, v0, :cond_3

    iget-object p1, p0, Lcom/unity3d/player/w;->s:Ljava/lang/Object;

    monitor-enter p1

    :try_start_3
    iget-object v0, p0, Lcom/unity3d/player/w;->r:Landroid/hardware/camera2/CameraCaptureSession;

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/unity3d/player/w;->g()V

    :cond_2
    monitor-exit p1

    goto :goto_1

    :catchall_1
    move-exception v0

    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0

    :cond_3
    :goto_1
    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method private b()V
    .locals 6

    const/4 v0, 0x6

    :try_start_0
    sget-object v1, Lcom/unity3d/player/w;->D:Ljava/util/concurrent/Semaphore;

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0x4

    invoke-virtual {v1, v3, v4, v2}, Ljava/util/concurrent/Semaphore;->tryAcquire(JLjava/util/concurrent/TimeUnit;)Z

    move-result v1

    const/4 v5, 0x5

    if-nez v1, :cond_0

    const-string v1, "Camera2: Timeout waiting to lock camera for closing."

    invoke-static {v5, v1}, Lcom/unity3d/player/z;->Log(ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1

    return-void

    :cond_0
    iget-object v1, p0, Lcom/unity3d/player/w;->b:Landroid/hardware/camera2/CameraDevice;

    invoke-virtual {v1}, Landroid/hardware/camera2/CameraDevice;->close()V

    :try_start_1
    sget-object v1, Lcom/unity3d/player/w;->D:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v1, v3, v4, v2}, Ljava/util/concurrent/Semaphore;->tryAcquire(JLjava/util/concurrent/TimeUnit;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "Camera2: Timeout waiting to close camera."

    invoke-static {v5, v1}, Lcom/unity3d/player/z;->Log(ILjava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Camera2: Interrupted while waiting to close camera "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/unity3d/player/z;->Log(ILjava/lang/String;)V

    :cond_1
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/unity3d/player/w;->b:Landroid/hardware/camera2/CameraDevice;

    sget-object v0, Lcom/unity3d/player/w;->D:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    return-void

    :catch_1
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Camera2: Interrupted while trying to lock camera for closing "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/unity3d/player/z;->Log(ILjava/lang/String;)V

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public static b(Landroid/content/Context;I)[I
    .locals 3

    const/4 v0, 0x6

    const/4 v1, 0x0

    :try_start_0
    invoke-static {p0}, Lcom/unity3d/player/w;->c(Landroid/content/Context;)Landroid/hardware/camera2/CameraManager;

    move-result-object v2

    invoke-static {p0}, Lcom/unity3d/player/w;->b(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object p0

    aget-object p0, p0, p1

    invoke-virtual {v2, p0}, Landroid/hardware/camera2/CameraManager;->getCameraCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object p0
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    sget-object p1, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_STREAM_CONFIGURATION_MAP:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p0, p1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/hardware/camera2/params/StreamConfigurationMap;

    if-nez p0, :cond_1

    const-string p0, "Camera2: configuration map is not available."

    invoke-static {v0, p0}, Lcom/unity3d/player/z;->Log(ILjava/lang/String;)V

    :cond_0
    :goto_0
    move-object p0, v1

    goto :goto_1

    :cond_1
    const/16 p1, 0x23

    invoke-virtual {p0, p1}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getOutputSizes(I)[Landroid/util/Size;

    move-result-object p0

    if-eqz p0, :cond_0

    array-length p1, p0

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    :goto_1
    if-eqz p0, :cond_4

    array-length p1, p0

    mul-int/lit8 p1, p1, 0x2

    new-array p1, p1, [I

    const/4 v0, 0x0

    :goto_2
    array-length v1, p0

    if-ge v0, v1, :cond_3

    mul-int/lit8 v1, v0, 0x2

    aget-object v2, p0, v0

    invoke-virtual {v2}, Landroid/util/Size;->getWidth()I

    move-result v2

    aput v2, p1, v1

    add-int/lit8 v1, v1, 0x1

    aget-object v2, p0, v0

    invoke-virtual {v2}, Landroid/util/Size;->getHeight()I

    move-result v2

    aput v2, p1, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    return-object p1

    :cond_4
    return-object v1

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v2, "Camera2: CameraAccessException "

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/unity3d/player/z;->Log(ILjava/lang/String;)V

    return-object v1

    nop

    .array-data 1
    .end array-data
.end method

.method private static b(Landroid/content/Context;)[Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/unity3d/player/w;->C:[Ljava/lang/String;

    if-nez v0, :cond_0

    :try_start_0
    invoke-static {p0}, Lcom/unity3d/player/w;->c(Landroid/content/Context;)Landroid/hardware/camera2/CameraManager;

    move-result-object p0

    invoke-virtual {p0}, Landroid/hardware/camera2/CameraManager;->getCameraIdList()[Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/unity3d/player/w;->C:[Ljava/lang/String;
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Camera2: CameraAccessException "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x6

    invoke-static {v0, p0}, Lcom/unity3d/player/z;->Log(ILjava/lang/String;)V

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/String;

    sput-object p0, Lcom/unity3d/player/w;->C:[Ljava/lang/String;

    :cond_0
    :goto_0
    sget-object p0, Lcom/unity3d/player/w;->C:[Ljava/lang/String;

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static c(Landroid/content/Context;I)I
    .locals 1

    :try_start_0
    invoke-static {p0}, Lcom/unity3d/player/w;->c(Landroid/content/Context;)Landroid/hardware/camera2/CameraManager;

    move-result-object v0

    invoke-static {p0}, Lcom/unity3d/player/w;->b(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object p0

    aget-object p0, p0, p1

    invoke-virtual {v0, p0}, Landroid/hardware/camera2/CameraManager;->getCameraCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object p0

    sget-object p1, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_ORIENTATION:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p0, p1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Camera2: CameraAccessException "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x6

    invoke-static {p1, p0}, Lcom/unity3d/player/z;->Log(ILjava/lang/String;)V

    const/4 p0, 0x0

    return p0

    nop

    .array-data 1
    .end array-data
.end method

.method private static c(Landroid/content/Context;)Landroid/hardware/camera2/CameraManager;
    .locals 1

    sget-object v0, Lcom/unity3d/player/w;->B:Landroid/hardware/camera2/CameraManager;

    if-nez v0, :cond_0

    const-string v0, "camera"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/hardware/camera2/CameraManager;

    sput-object p0, Lcom/unity3d/player/w;->B:Landroid/hardware/camera2/CameraManager;

    :cond_0
    sget-object p0, Lcom/unity3d/player/w;->B:Landroid/hardware/camera2/CameraManager;

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static d(Landroid/content/Context;I)Z
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    invoke-static {p0}, Lcom/unity3d/player/w;->c(Landroid/content/Context;)Landroid/hardware/camera2/CameraManager;

    move-result-object v1

    invoke-static {p0}, Lcom/unity3d/player/w;->b(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object p0

    aget-object p0, p0, p1

    invoke-virtual {v1, p0}, Landroid/hardware/camera2/CameraManager;->getCameraCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object p0

    sget-object p1, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_MAX_REGIONS_AF:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p0, p1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    if-lez p0, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "Camera2: CameraAccessException "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x6

    invoke-static {p1, p0}, Lcom/unity3d/player/z;->Log(ILjava/lang/String;)V

    return v0

    .array-data 1
    .end array-data
.end method

.method private e()V
    .locals 2

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "CameraBackground"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/unity3d/player/w;->c:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/unity3d/player/w;->c:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/unity3d/player/w;->d:Landroid/os/Handler;

    return-void

    .array-data 1
    .end array-data
.end method

.method public static e(Landroid/content/Context;I)Z
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    invoke-static {p0}, Lcom/unity3d/player/w;->c(Landroid/content/Context;)Landroid/hardware/camera2/CameraManager;

    move-result-object v1

    invoke-static {p0}, Lcom/unity3d/player/w;->b(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object p0

    aget-object p0, p0, p1

    invoke-virtual {v1, p0}, Landroid/hardware/camera2/CameraManager;->getCameraCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object p0

    sget-object p1, Landroid/hardware/camera2/CameraCharacteristics;->LENS_FACING:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p0, p1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p0, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "Camera2: CameraAccessException "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x6

    invoke-static {p1, p0}, Lcom/unity3d/player/z;->Log(ILjava/lang/String;)V

    return v0

    .array-data 1
    .end array-data
.end method

.method private f()V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/unity3d/player/w;->r:Landroid/hardware/camera2/CameraCaptureSession;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/hardware/camera2/CameraCaptureSession;->stopRepeating()V

    iget-object v0, p0, Lcom/unity3d/player/w;->q:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_TRIGGER:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/unity3d/player/w;->q:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/unity3d/player/w;->q:Landroid/hardware/camera2/CaptureRequest$Builder;

    const-string v1, "Cancel focus"

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->setTag(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/unity3d/player/w;->r:Landroid/hardware/camera2/CameraCaptureSession;

    iget-object v1, p0, Lcom/unity3d/player/w;->q:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-virtual {v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v1

    iget-object v2, p0, Lcom/unity3d/player/w;->w:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    iget-object v3, p0, Lcom/unity3d/player/w;->d:Landroid/os/Handler;

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/camera2/CameraCaptureSession;->capture(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Camera2: CameraAccessException "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x6

    invoke-static {v1, v0}, Lcom/unity3d/player/z;->Log(ILjava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method private g()V
    .locals 13

    :try_start_0
    iget v0, p0, Lcom/unity3d/player/w;->h:I

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/unity3d/player/w;->i:F

    const/4 v1, 0x0

    cmpg-float v2, v0, v1

    if-ltz v2, :cond_1

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v2

    if-gtz v0, :cond_1

    iget v0, p0, Lcom/unity3d/player/w;->j:F

    cmpg-float v1, v0, v1

    if-ltz v1, :cond_1

    cmpl-float v0, v0, v2

    if-lez v0, :cond_0

    goto/16 :goto_0

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/unity3d/player/w;->m:Z

    iget-object v1, p0, Lcom/unity3d/player/w;->f:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    iget v2, p0, Lcom/unity3d/player/w;->k:I

    mul-int/lit8 v3, v2, 0x2

    sub-int/2addr v1, v3

    int-to-float v1, v1

    iget v3, p0, Lcom/unity3d/player/w;->i:F

    mul-float/2addr v1, v3

    int-to-float v2, v2

    add-float/2addr v1, v2

    float-to-int v1, v1

    iget-object v2, p0, Lcom/unity3d/player/w;->f:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    iget v3, p0, Lcom/unity3d/player/w;->l:I

    mul-int/lit8 v4, v3, 0x2

    sub-int/2addr v2, v4

    int-to-double v4, v2

    iget v2, p0, Lcom/unity3d/player/w;->j:F

    float-to-double v6, v2

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v8, v6

    mul-double/2addr v8, v4

    int-to-double v2, v3

    add-double/2addr v8, v2

    double-to-int v2, v8

    iget v3, p0, Lcom/unity3d/player/w;->g:I

    add-int/2addr v3, v0

    iget-object v4, p0, Lcom/unity3d/player/w;->f:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    iget v5, p0, Lcom/unity3d/player/w;->g:I

    sub-int/2addr v4, v5

    sub-int/2addr v4, v0

    invoke-static {v1, v4}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    iget v3, p0, Lcom/unity3d/player/w;->g:I

    add-int/2addr v3, v0

    iget-object v4, p0, Lcom/unity3d/player/w;->f:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    iget v5, p0, Lcom/unity3d/player/w;->g:I

    sub-int/2addr v4, v5

    sub-int/2addr v4, v0

    invoke-static {v2, v4}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    iget-object v3, p0, Lcom/unity3d/player/w;->q:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v4, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_REGIONS:Landroid/hardware/camera2/CaptureRequest$Key;

    new-array v5, v0, [Landroid/hardware/camera2/params/MeteringRectangle;

    new-instance v12, Landroid/hardware/camera2/params/MeteringRectangle;

    iget v6, p0, Lcom/unity3d/player/w;->g:I

    sub-int v7, v1, v6

    sub-int v8, v2, v6

    mul-int/lit8 v10, v6, 0x2

    const/16 v11, 0x3e7

    move-object v6, v12

    move v9, v10

    invoke-direct/range {v6 .. v11}, Landroid/hardware/camera2/params/MeteringRectangle;-><init>(IIIII)V

    const/4 v1, 0x0

    aput-object v12, v5, v1

    invoke-virtual {v3, v4, v5}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/unity3d/player/w;->q:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/unity3d/player/w;->q:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_TRIGGER:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/unity3d/player/w;->q:Landroid/hardware/camera2/CaptureRequest$Builder;

    const-string v1, "Focus"

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->setTag(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/unity3d/player/w;->r:Landroid/hardware/camera2/CameraCaptureSession;

    iget-object v1, p0, Lcom/unity3d/player/w;->q:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-virtual {v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v1

    iget-object v2, p0, Lcom/unity3d/player/w;->w:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    iget-object v3, p0, Lcom/unity3d/player/w;->d:Landroid/os/Handler;

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/camera2/CameraCaptureSession;->capture(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I

    goto :goto_1

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/unity3d/player/w;->q:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v2, 0x4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/unity3d/player/w;->q:Landroid/hardware/camera2/CaptureRequest$Builder;

    const-string v1, "Regular"

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->setTag(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/unity3d/player/w;->r:Landroid/hardware/camera2/CameraCaptureSession;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/unity3d/player/w;->q:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-virtual {v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v1

    iget-object v2, p0, Lcom/unity3d/player/w;->w:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    iget-object v3, p0, Lcom/unity3d/player/w;->d:Landroid/os/Handler;

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/camera2/CameraCaptureSession;->setRepeatingRequest(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Camera2: CameraAccessException "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x6

    invoke-static {v1, v0}, Lcom/unity3d/player/z;->Log(ILjava/lang/String;)V

    :cond_2
    :goto_1
    return-void

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public final a()V
    .locals 4

    iget-object v0, p0, Lcom/unity3d/player/w;->b:Landroid/hardware/camera2/CameraDevice;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/unity3d/player/w;->i()V

    invoke-direct {p0}, Lcom/unity3d/player/w;->b()V

    iput-object v1, p0, Lcom/unity3d/player/w;->w:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    iput-object v1, p0, Lcom/unity3d/player/w;->v:Landroid/view/Surface;

    iput-object v1, p0, Lcom/unity3d/player/w;->u:Landroid/graphics/SurfaceTexture;

    iget-object v0, p0, Lcom/unity3d/player/w;->p:Landroid/media/Image;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/media/Image;->close()V

    iput-object v1, p0, Lcom/unity3d/player/w;->p:Landroid/media/Image;

    :cond_0
    iget-object v0, p0, Lcom/unity3d/player/w;->o:Landroid/media/ImageReader;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/media/ImageReader;->close()V

    iput-object v1, p0, Lcom/unity3d/player/w;->o:Landroid/media/ImageReader;

    :cond_1
    iget-object v0, p0, Lcom/unity3d/player/w;->c:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    :try_start_0
    iget-object v0, p0, Lcom/unity3d/player/w;->c:Landroid/os/HandlerThread;

    const-wide/16 v2, 0xfa0

    invoke-virtual {v0, v2, v3}, Ljava/lang/Thread;->join(J)V

    iput-object v1, p0, Lcom/unity3d/player/w;->c:Landroid/os/HandlerThread;

    iput-object v1, p0, Lcom/unity3d/player/w;->d:Landroid/os/Handler;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/unity3d/player/w;->c:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Camera2: Interrupted while waiting for the background thread to finish "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x6

    invoke-static {v1, v0}, Lcom/unity3d/player/z;->Log(ILjava/lang/String;)V

    :goto_0
    return-void

    .array-data 1
    .end array-data
.end method

.method public final a(FF)Z
    .locals 1

    iget v0, p0, Lcom/unity3d/player/w;->h:I

    if-lez v0, :cond_2

    iget-boolean v0, p0, Lcom/unity3d/player/w;->m:Z

    if-nez v0, :cond_1

    iput p1, p0, Lcom/unity3d/player/w;->i:F

    iput p2, p0, Lcom/unity3d/player/w;->j:F

    iget-object p1, p0, Lcom/unity3d/player/w;->s:Ljava/lang/Object;

    monitor-enter p1

    :try_start_0
    iget-object p2, p0, Lcom/unity3d/player/w;->r:Landroid/hardware/camera2/CameraCaptureSession;

    if-eqz p2, :cond_0

    iget p2, p0, Lcom/unity3d/player/w;->A:I

    const/4 v0, 0x2

    if-eq p2, v0, :cond_0

    invoke-direct {p0}, Lcom/unity3d/player/w;->f()V

    :cond_0
    monitor-exit p1

    const/4 p1, 0x1

    return p1

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2

    :cond_1
    const/4 p1, 0x5

    const-string p2, "Camera2: Setting manual focus point already started."

    invoke-static {p1, p2}, Lcom/unity3d/player/z;->Log(ILjava/lang/String;)V

    :cond_2
    const/4 p1, 0x0

    return p1

    nop

    .array-data 1
    .end array-data
.end method

.method public final a(Landroid/content/Context;IIIIILandroid/view/Surface;)Z
    .locals 22

    move-object/from16 v1, p0

    move/from16 v0, p5

    const-string v2, "Camera2: CameraAccessException "

    const/4 v3, 0x6

    :try_start_0
    sget-object v5, Lcom/unity3d/player/w;->B:Landroid/hardware/camera2/CameraManager;

    invoke-static/range {p1 .. p1}, Lcom/unity3d/player/w;->b(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v6

    aget-object v6, v6, p2

    invoke-virtual {v5, v6}, Landroid/hardware/camera2/CameraManager;->getCameraCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v5
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_3

    sget-object v6, Landroid/hardware/camera2/CameraCharacteristics;->INFO_SUPPORTED_HARDWARE_LEVEL:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v5, v6}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const/4 v7, 0x2

    const/4 v8, 0x5

    if-ne v6, v7, :cond_0

    const-string v6, "Camera2: only LEGACY hardware level is supported."

    invoke-static {v8, v6}, Lcom/unity3d/player/z;->Log(ILjava/lang/String;)V

    :cond_0
    sget-object v6, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_STREAM_CONFIGURATION_MAP:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v5, v6}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/hardware/camera2/params/StreamConfigurationMap;

    const/4 v7, 0x0

    if-nez v6, :cond_1

    const-string v6, "Camera2: configuration map is not available."

    invoke-static {v3, v6}, Lcom/unity3d/player/z;->Log(ILjava/lang/String;)V

    goto :goto_0

    :cond_1
    const/16 v9, 0x23

    invoke-virtual {v6, v9}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getOutputSizes(I)[Landroid/util/Size;

    move-result-object v6

    if-eqz v6, :cond_3

    array-length v9, v6

    if-nez v9, :cond_2

    goto :goto_0

    :cond_2
    move-object v7, v6

    :cond_3
    :goto_0
    if-eqz v7, :cond_12

    array-length v6, v7

    if-nez v6, :cond_4

    goto/16 :goto_a

    :cond_4
    move/from16 v6, p3

    int-to-double v9, v6

    move/from16 v6, p4

    int-to-double v11, v6

    const/4 v6, 0x0

    const/4 v13, 0x0

    const/4 v15, 0x0

    const-wide v16, 0x7fefffffffffffffL    # Double.MAX_VALUE

    :goto_1
    array-length v14, v7

    if-ge v6, v14, :cond_6

    aget-object v14, v7, v6

    invoke-virtual {v14}, Landroid/util/Size;->getWidth()I

    move-result v14

    aget-object v18, v7, v6

    invoke-virtual/range {v18 .. v18}, Landroid/util/Size;->getHeight()I

    move-result v3

    move-object/from16 v19, v5

    int-to-double v4, v14

    div-double v4, v9, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->log(D)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    move-wide/from16 v20, v9

    int-to-double v8, v3

    div-double v8, v11, v8

    invoke-static {v8, v9}, Ljava/lang/Math;->log(D)D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Math;->abs(D)D

    move-result-wide v8

    add-double/2addr v8, v4

    cmpg-double v4, v8, v16

    if-gez v4, :cond_5

    move v13, v3

    move-wide/from16 v16, v8

    move v15, v14

    :cond_5
    add-int/lit8 v6, v6, 0x1

    move-object/from16 v5, v19

    move-wide/from16 v9, v20

    const/4 v3, 0x6

    const/4 v8, 0x5

    goto :goto_1

    :cond_6
    move-object/from16 v19, v5

    new-instance v3, Landroid/graphics/Rect;

    const/4 v4, 0x0

    invoke-direct {v3, v4, v4, v15, v13}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v3, v1, Lcom/unity3d/player/w;->e:Landroid/graphics/Rect;

    sget-object v3, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AE_AVAILABLE_TARGET_FPS_RANGES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    move-object/from16 v4, v19

    invoke-virtual {v4, v3}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/util/Range;

    if-eqz v3, :cond_11

    array-length v5, v3

    if-nez v5, :cond_7

    goto/16 :goto_9

    :cond_7
    const/4 v5, -0x1

    const/4 v6, 0x0

    const-wide v13, 0x7fefffffffffffffL    # Double.MAX_VALUE

    :goto_2
    array-length v7, v3

    if-ge v6, v7, :cond_a

    aget-object v7, v3, v6

    invoke-virtual {v7}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    aget-object v8, v3, v6

    invoke-virtual {v8}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    int-to-float v9, v0

    const v10, 0x3dcccccd    # 0.1f

    add-float v11, v9, v10

    int-to-float v12, v7

    cmpl-float v11, v11, v12

    if-lez v11, :cond_8

    sub-float/2addr v9, v10

    int-to-float v10, v8

    cmpg-float v9, v9, v10

    if-gez v9, :cond_8

    goto :goto_4

    :cond_8
    sub-int v7, v0, v7

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v7

    sub-int v8, v0, v8

    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v8

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v7

    int-to-float v7, v7

    float-to-double v7, v7

    cmpg-double v9, v7, v13

    if-gez v9, :cond_9

    move v5, v6

    move-wide v13, v7

    :cond_9
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_a
    aget-object v6, v3, v5

    invoke-virtual {v6}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-le v0, v6, :cond_b

    aget-object v0, v3, v5

    invoke-virtual {v0}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v0

    goto :goto_3

    :cond_b
    aget-object v0, v3, v5

    invoke-virtual {v0}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v0

    :goto_3
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_4
    new-instance v3, Landroid/util/Range;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {v3, v5, v0}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    iput-object v3, v1, Lcom/unity3d/player/w;->n:Landroid/util/Range;

    :try_start_1
    sget-object v0, Lcom/unity3d/player/w;->D:Ljava/util/concurrent/Semaphore;

    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v5, 0x4

    invoke-virtual {v0, v5, v6, v3}, Ljava/util/concurrent/Semaphore;->tryAcquire(JLjava/util/concurrent/TimeUnit;)Z

    move-result v0

    if-nez v0, :cond_c

    const-string v0, "Camera2: Timeout waiting to lock camera for opening."

    const/4 v2, 0x5

    invoke-static {v2, v0}, Lcom/unity3d/player/z;->Log(ILjava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_2

    const/4 v2, 0x0

    return v2

    :cond_c
    :try_start_2
    sget-object v0, Lcom/unity3d/player/w;->B:Landroid/hardware/camera2/CameraManager;

    invoke-static/range {p1 .. p1}, Lcom/unity3d/player/w;->b(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v7

    aget-object v7, v7, p2

    iget-object v8, v1, Lcom/unity3d/player/w;->x:Landroid/hardware/camera2/CameraDevice$StateCallback;

    iget-object v9, v1, Lcom/unity3d/player/w;->d:Landroid/os/Handler;

    invoke-virtual {v0, v7, v8, v9}, Landroid/hardware/camera2/CameraManager;->openCamera(Ljava/lang/String;Landroid/hardware/camera2/CameraDevice$StateCallback;Landroid/os/Handler;)V
    :try_end_2
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_2 .. :try_end_2} :catch_1

    :try_start_3
    sget-object v0, Lcom/unity3d/player/w;->D:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0, v5, v6, v3}, Ljava/util/concurrent/Semaphore;->tryAcquire(JLjava/util/concurrent/TimeUnit;)Z

    move-result v0

    if-nez v0, :cond_d

    const-string v0, "Camera2: Timeout waiting to open camera."

    const/4 v2, 0x5

    invoke-static {v2, v0}, Lcom/unity3d/player/z;->Log(ILjava/lang/String;)V

    const/4 v2, 0x0

    return v2

    :cond_d
    sget-object v0, Lcom/unity3d/player/w;->D:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_5

    :catch_0
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Camera2: Interrupted while waiting to open camera "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x6

    invoke-static {v2, v0}, Lcom/unity3d/player/z;->Log(ILjava/lang/String;)V

    :goto_5
    move/from16 v2, p6

    iput v2, v1, Lcom/unity3d/player/w;->t:I

    move-object/from16 v2, p7

    iput-object v2, v1, Lcom/unity3d/player/w;->v:Landroid/view/Surface;

    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_MAX_REGIONS_AF:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v4, v0}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, v1, Lcom/unity3d/player/w;->h:I

    if-lez v0, :cond_f

    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_INFO_ACTIVE_ARRAY_SIZE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v4, v0}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    iput-object v0, v1, Lcom/unity3d/player/w;->f:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    iget-object v2, v1, Lcom/unity3d/player/w;->f:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v0, v2

    iget-object v2, v1, Lcom/unity3d/player/w;->e:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, v1, Lcom/unity3d/player/w;->e:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    cmpl-float v0, v2, v0

    const/high16 v3, 0x40000000    # 2.0f

    const/4 v4, 0x0

    if-lez v0, :cond_e

    iput v4, v1, Lcom/unity3d/player/w;->k:I

    iget-object v0, v1, Lcom/unity3d/player/w;->f:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    iget-object v4, v1, Lcom/unity3d/player/w;->f:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v2

    sub-float/2addr v0, v4

    div-float/2addr v0, v3

    float-to-int v0, v0

    iput v0, v1, Lcom/unity3d/player/w;->l:I

    goto :goto_6

    :cond_e
    iput v4, v1, Lcom/unity3d/player/w;->l:I

    iget-object v0, v1, Lcom/unity3d/player/w;->f:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    iget-object v4, v1, Lcom/unity3d/player/w;->f:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v2

    sub-float/2addr v0, v4

    div-float/2addr v0, v3

    float-to-int v0, v0

    iput v0, v1, Lcom/unity3d/player/w;->k:I

    :goto_6
    iget-object v0, v1, Lcom/unity3d/player/w;->f:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    iget-object v2, v1, Lcom/unity3d/player/w;->f:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    div-int/lit8 v0, v0, 0x14

    iput v0, v1, Lcom/unity3d/player/w;->g:I

    :cond_f
    iget-object v0, v1, Lcom/unity3d/player/w;->b:Landroid/hardware/camera2/CameraDevice;

    if-eqz v0, :cond_10

    const/4 v4, 0x1

    goto :goto_7

    :cond_10
    const/4 v4, 0x0

    :goto_7
    return v4

    :catch_1
    move-exception v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x6

    invoke-static {v2, v0}, Lcom/unity3d/player/z;->Log(ILjava/lang/String;)V

    sget-object v0, Lcom/unity3d/player/w;->D:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    :goto_8
    const/4 v2, 0x0

    return v2

    :catch_2
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Camera2: Interrupted while trying to lock camera for opening "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x6

    invoke-static {v2, v0}, Lcom/unity3d/player/z;->Log(ILjava/lang/String;)V

    const/4 v3, 0x0

    return v3

    :cond_11
    :goto_9
    const/4 v2, 0x6

    const/4 v3, 0x0

    const-string v0, "Camera2: target FPS ranges are not avialable."

    invoke-static {v2, v0}, Lcom/unity3d/player/z;->Log(ILjava/lang/String;)V

    return v3

    :cond_12
    :goto_a
    const/4 v3, 0x0

    return v3

    :catch_3
    move-exception v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x6

    invoke-static {v2, v0}, Lcom/unity3d/player/z;->Log(ILjava/lang/String;)V

    goto :goto_8

    nop

    .array-data 1
    .end array-data
.end method

.method public final c()Landroid/graphics/Rect;
    .locals 1

    iget-object v0, p0, Lcom/unity3d/player/w;->e:Landroid/graphics/Rect;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final d()V
    .locals 4

    const-string v0, "Camera2: CameraAccessException "

    iget-object v1, p0, Lcom/unity3d/player/w;->s:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/unity3d/player/w;->r:Landroid/hardware/camera2/CameraCaptureSession;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    :try_start_1
    invoke-virtual {v2}, Landroid/hardware/camera2/CameraCaptureSession;->stopRepeating()V

    const/4 v2, 0x2

    iput v2, p0, Lcom/unity3d/player/w;->A:I
    :try_end_1
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v2

    :try_start_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x6

    invoke-static {v2, v0}, Lcom/unity3d/player/z;->Log(ILjava/lang/String;)V

    :cond_0
    :goto_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    nop

    .array-data 1
    .end array-data
.end method

.method public h()V
    .locals 5

    iget v0, p0, Lcom/unity3d/player/w;->t:I

    const/4 v1, 0x2

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/unity3d/player/w;->v:Landroid/view/Surface;

    if-nez v0, :cond_1

    new-instance v0, Landroid/graphics/SurfaceTexture;

    iget v2, p0, Lcom/unity3d/player/w;->t:I

    invoke-direct {v0, v2}, Landroid/graphics/SurfaceTexture;-><init>(I)V

    iput-object v0, p0, Lcom/unity3d/player/w;->u:Landroid/graphics/SurfaceTexture;

    iget-object v2, p0, Lcom/unity3d/player/w;->e:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    iget-object v3, p0, Lcom/unity3d/player/w;->e:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/graphics/SurfaceTexture;->setDefaultBufferSize(II)V

    iget-object v0, p0, Lcom/unity3d/player/w;->u:Landroid/graphics/SurfaceTexture;

    iget-object v2, p0, Lcom/unity3d/player/w;->z:Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;

    iget-object v3, p0, Lcom/unity3d/player/w;->d:Landroid/os/Handler;

    invoke-virtual {v0, v2, v3}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;Landroid/os/Handler;)V

    new-instance v0, Landroid/view/Surface;

    iget-object v2, p0, Lcom/unity3d/player/w;->u:Landroid/graphics/SurfaceTexture;

    invoke-direct {v0, v2}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    :goto_0
    iput-object v0, p0, Lcom/unity3d/player/w;->v:Landroid/view/Surface;

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/unity3d/player/w;->v:Landroid/view/Surface;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/unity3d/player/w;->o:Landroid/media/ImageReader;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/unity3d/player/w;->e:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    iget-object v2, p0, Lcom/unity3d/player/w;->e:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    const/16 v3, 0x23

    invoke-static {v0, v2, v3, v1}, Landroid/media/ImageReader;->newInstance(IIII)Landroid/media/ImageReader;

    move-result-object v0

    iput-object v0, p0, Lcom/unity3d/player/w;->o:Landroid/media/ImageReader;

    iget-object v2, p0, Lcom/unity3d/player/w;->y:Landroid/media/ImageReader$OnImageAvailableListener;

    iget-object v3, p0, Lcom/unity3d/player/w;->d:Landroid/os/Handler;

    invoke-virtual {v0, v2, v3}, Landroid/media/ImageReader;->setOnImageAvailableListener(Landroid/media/ImageReader$OnImageAvailableListener;Landroid/os/Handler;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/unity3d/player/w;->p:Landroid/media/Image;

    iget-object v0, p0, Lcom/unity3d/player/w;->o:Landroid/media/ImageReader;

    invoke-virtual {v0}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v0

    goto :goto_0

    :cond_1
    :goto_1
    :try_start_0
    iget-object v0, p0, Lcom/unity3d/player/w;->r:Landroid/hardware/camera2/CameraCaptureSession;

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    iget v3, p0, Lcom/unity3d/player/w;->A:I

    if-ne v3, v1, :cond_3

    iget-object v1, p0, Lcom/unity3d/player/w;->q:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-virtual {v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v1

    iget-object v3, p0, Lcom/unity3d/player/w;->w:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    iget-object v4, p0, Lcom/unity3d/player/w;->d:Landroid/os/Handler;

    invoke-virtual {v0, v1, v3, v4}, Landroid/hardware/camera2/CameraCaptureSession;->setRepeatingRequest(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lcom/unity3d/player/w;->b:Landroid/hardware/camera2/CameraDevice;

    new-array v1, v2, [Landroid/view/Surface;

    iget-object v3, p0, Lcom/unity3d/player/w;->v:Landroid/view/Surface;

    const/4 v4, 0x0

    aput-object v3, v1, v4

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    new-instance v3, Lcom/unity3d/player/s;

    invoke-direct {v3, p0}, Lcom/unity3d/player/s;-><init>(Lcom/unity3d/player/w;)V

    iget-object v4, p0, Lcom/unity3d/player/w;->d:Landroid/os/Handler;

    invoke-virtual {v0, v1, v3, v4}, Landroid/hardware/camera2/CameraDevice;->createCaptureSession(Ljava/util/List;Landroid/hardware/camera2/CameraCaptureSession$StateCallback;Landroid/os/Handler;)V

    :cond_3
    :goto_2
    iput v2, p0, Lcom/unity3d/player/w;->A:I
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Camera2: CameraAccessException "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x6

    invoke-static {v1, v0}, Lcom/unity3d/player/z;->Log(ILjava/lang/String;)V

    :goto_3
    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public final i()V
    .locals 4

    const-string v0, "Camera2: CameraAccessException "

    iget-object v1, p0, Lcom/unity3d/player/w;->s:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/unity3d/player/w;->r:Landroid/hardware/camera2/CameraCaptureSession;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    :try_start_1
    invoke-virtual {v2}, Landroid/hardware/camera2/CameraCaptureSession;->abortCaptures()V
    :try_end_1
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v2

    :try_start_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x6

    invoke-static {v2, v0}, Lcom/unity3d/player/z;->Log(ILjava/lang/String;)V

    :goto_0
    iget-object v0, p0, Lcom/unity3d/player/w;->r:Landroid/hardware/camera2/CameraCaptureSession;

    invoke-virtual {v0}, Landroid/hardware/camera2/CameraCaptureSession;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/unity3d/player/w;->r:Landroid/hardware/camera2/CameraCaptureSession;

    const/4 v0, 0x3

    iput v0, p0, Lcom/unity3d/player/w;->A:I

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    nop

    .array-data 1
    .end array-data
.end method
