.class final Lcom/unity3d/player/L0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:I

.field final synthetic b:Landroid/view/Surface;

.field final synthetic c:Ljava/util/concurrent/Semaphore;

.field final synthetic d:Lcom/unity3d/player/UnityPlayer;


# direct methods
.method constructor <init>(Lcom/unity3d/player/UnityPlayer;ILandroid/view/Surface;Ljava/util/concurrent/Semaphore;)V
    .locals 0

    iput-object p1, p0, Lcom/unity3d/player/L0;->d:Lcom/unity3d/player/UnityPlayer;

    iput p2, p0, Lcom/unity3d/player/L0;->a:I

    iput-object p3, p0, Lcom/unity3d/player/L0;->b:Landroid/view/Surface;

    iput-object p4, p0, Lcom/unity3d/player/L0;->c:Ljava/util/concurrent/Semaphore;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/unity3d/player/L0;->d:Lcom/unity3d/player/UnityPlayer;

    iget v1, p0, Lcom/unity3d/player/L0;->a:I

    iget-object v2, p0, Lcom/unity3d/player/L0;->b:Landroid/view/Surface;

    invoke-static {v0, v1, v2}, Lcom/unity3d/player/UnityPlayer;->-$$Nest$mnativeRecreateGfxState(Lcom/unity3d/player/UnityPlayer;ILandroid/view/Surface;)V

    iget-object v0, p0, Lcom/unity3d/player/L0;->c:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    return-void

    nop

    .array-data 1
    .end array-data
.end method
