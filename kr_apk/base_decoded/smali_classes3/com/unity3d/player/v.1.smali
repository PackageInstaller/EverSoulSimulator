.class final Lcom/unity3d/player/v;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;


# instance fields
.field final synthetic a:Lcom/unity3d/player/w;


# direct methods
.method constructor <init>(Lcom/unity3d/player/w;)V
    .locals 0

    iput-object p1, p0, Lcom/unity3d/player/v;->a:Lcom/unity3d/player/w;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public final onFrameAvailable(Landroid/graphics/SurfaceTexture;)V
    .locals 1

    iget-object v0, p0, Lcom/unity3d/player/v;->a:Lcom/unity3d/player/w;

    invoke-static {v0}, Lcom/unity3d/player/w;->-$$Nest$fgeta(Lcom/unity3d/player/w;)Lcom/unity3d/player/a/b;

    move-result-object v0

    check-cast v0, Lcom/unity3d/player/Camera2Wrapper;

    invoke-virtual {v0, p1}, Lcom/unity3d/player/Camera2Wrapper;->a(Ljava/lang/Object;)V

    return-void

    .array-data 1
    .end array-data
.end method
