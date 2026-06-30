.class final Lcom/unity3d/player/h0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# instance fields
.field final synthetic a:Lcom/unity3d/player/i0;


# direct methods
.method constructor <init>(Lcom/unity3d/player/i0;)V
    .locals 0

    iput-object p1, p0, Lcom/unity3d/player/h0;->a:Lcom/unity3d/player/i0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public final surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 0

    iget-object p2, p0, Lcom/unity3d/player/h0;->a:Lcom/unity3d/player/i0;

    invoke-static {p2}, Lcom/unity3d/player/i0;->-$$Nest$fgetb(Lcom/unity3d/player/i0;)Lcom/unity3d/player/UnityPlayer;

    move-result-object p2

    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object p1

    const/4 p3, 0x0

    invoke-virtual {p2, p3, p1}, Lcom/unity3d/player/UnityPlayer;->updateGLDisplay(ILandroid/view/Surface;)V

    iget-object p1, p0, Lcom/unity3d/player/h0;->a:Lcom/unity3d/player/i0;

    invoke-static {p1}, Lcom/unity3d/player/i0;->-$$Nest$fgetb(Lcom/unity3d/player/i0;)Lcom/unity3d/player/UnityPlayer;

    move-result-object p1

    invoke-virtual {p1}, Lcom/unity3d/player/UnityPlayer;->sendSurfaceChangedEvent()V

    return-void

    .array-data 1
    .end array-data
.end method

.method public final surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 2

    iget-object v0, p0, Lcom/unity3d/player/h0;->a:Lcom/unity3d/player/i0;

    invoke-static {v0}, Lcom/unity3d/player/i0;->-$$Nest$fgetb(Lcom/unity3d/player/i0;)Lcom/unity3d/player/UnityPlayer;

    move-result-object v0

    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/unity3d/player/UnityPlayer;->updateGLDisplay(ILandroid/view/Surface;)V

    iget-object p1, p0, Lcom/unity3d/player/h0;->a:Lcom/unity3d/player/i0;

    invoke-static {p1}, Lcom/unity3d/player/i0;->-$$Nest$fgetc(Lcom/unity3d/player/i0;)Lcom/unity3d/player/K;

    move-result-object v0

    invoke-static {p1}, Lcom/unity3d/player/i0;->-$$Nest$fgetb(Lcom/unity3d/player/i0;)Lcom/unity3d/player/UnityPlayer;

    move-result-object p1

    iget-object v1, v0, Lcom/unity3d/player/K;->b:Lcom/unity3d/player/J;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-nez v1, :cond_0

    iget-object v1, v0, Lcom/unity3d/player/K;->b:Lcom/unity3d/player/J;

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v0, v0, Lcom/unity3d/player/K;->b:Lcom/unity3d/player/J;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->bringChildToFront(Landroid/view/View;)V

    :cond_0
    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public final surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 3

    iget-object p1, p0, Lcom/unity3d/player/h0;->a:Lcom/unity3d/player/i0;

    invoke-static {p1}, Lcom/unity3d/player/i0;->-$$Nest$fgetc(Lcom/unity3d/player/i0;)Lcom/unity3d/player/K;

    move-result-object v0

    invoke-static {p1}, Lcom/unity3d/player/i0;->-$$Nest$fgeta(Lcom/unity3d/player/i0;)Lcom/unity3d/player/f;

    move-result-object p1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-boolean v1, Lcom/unity3d/player/PlatformSupport;->NOUGAT_SUPPORT:Z

    if-eqz v1, :cond_1

    iget-object v1, v0, Lcom/unity3d/player/K;->a:Landroid/content/Context;

    if-eqz v1, :cond_1

    iget-object v1, v0, Lcom/unity3d/player/K;->b:Lcom/unity3d/player/J;

    if-nez v1, :cond_0

    new-instance v1, Lcom/unity3d/player/J;

    iget-object v2, v0, Lcom/unity3d/player/K;->a:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/unity3d/player/J;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lcom/unity3d/player/K;->b:Lcom/unity3d/player/J;

    :cond_0
    iget-object v0, v0, Lcom/unity3d/player/K;->b:Lcom/unity3d/player/J;

    invoke-virtual {v0, p1}, Lcom/unity3d/player/J;->a(Landroid/view/SurfaceView;)V

    :cond_1
    iget-object p1, p0, Lcom/unity3d/player/h0;->a:Lcom/unity3d/player/i0;

    invoke-static {p1}, Lcom/unity3d/player/i0;->-$$Nest$fgetb(Lcom/unity3d/player/i0;)Lcom/unity3d/player/UnityPlayer;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/unity3d/player/UnityPlayer;->updateGLDisplay(ILandroid/view/Surface;)V

    return-void

    nop

    .array-data 1
    .end array-data
.end method
