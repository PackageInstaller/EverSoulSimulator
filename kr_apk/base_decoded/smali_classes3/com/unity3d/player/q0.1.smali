.class final Lcom/unity3d/player/q0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field a:Z

.field b:Z

.field final synthetic c:Ljava/util/concurrent/Semaphore;

.field final synthetic d:Lcom/unity3d/player/UnityPlayer;

.field final synthetic e:Lcom/unity3d/player/UnityPlayer;


# direct methods
.method constructor <init>(Lcom/unity3d/player/UnityPlayer;Ljava/util/concurrent/Semaphore;Lcom/unity3d/player/UnityPlayer;)V
    .locals 0

    iput-object p1, p0, Lcom/unity3d/player/q0;->e:Lcom/unity3d/player/UnityPlayer;

    iput-object p2, p0, Lcom/unity3d/player/q0;->c:Ljava/util/concurrent/Semaphore;

    iput-object p3, p0, Lcom/unity3d/player/q0;->d:Lcom/unity3d/player/UnityPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/unity3d/player/q0;->a:Z

    iput-boolean p1, p0, Lcom/unity3d/player/q0;->b:Z

    return-void

    nop

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/unity3d/player/q0;->e:Lcom/unity3d/player/UnityPlayer;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {v0, v1}, Lcom/unity3d/player/UnityPlayer;->reportSoftInputArea(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/unity3d/player/q0;->e:Lcom/unity3d/player/UnityPlayer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/unity3d/player/UnityPlayer;->reportSoftInputIsVisible(Z)V

    iget-object v0, p0, Lcom/unity3d/player/q0;->e:Lcom/unity3d/player/UnityPlayer;

    iget-object v0, v0, Lcom/unity3d/player/UnityPlayer;->mSoftInput:Lcom/unity3d/player/S;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/unity3d/player/q0;->d:Lcom/unity3d/player/UnityPlayer;

    new-instance v1, Lcom/unity3d/player/o0;

    invoke-direct {v1, p0}, Lcom/unity3d/player/o0;-><init>(Lcom/unity3d/player/q0;)V

    invoke-virtual {v0, v1}, Lcom/unity3d/player/UnityPlayer;->setOnHandleFocusListener(Lcom/unity3d/player/E;)V

    iget-object v0, p0, Lcom/unity3d/player/q0;->e:Lcom/unity3d/player/UnityPlayer;

    iget-object v1, v0, Lcom/unity3d/player/UnityPlayer;->mSoftInput:Lcom/unity3d/player/S;

    new-instance v2, Lcom/unity3d/player/p0;

    invoke-direct {v2, p0}, Lcom/unity3d/player/p0;-><init>(Lcom/unity3d/player/q0;)V

    iput-object v2, v1, Lcom/unity3d/player/S;->g:Lcom/unity3d/player/G;

    invoke-static {v0}, Lcom/unity3d/player/UnityPlayer;->-$$Nest$mdismissSoftInput(Lcom/unity3d/player/UnityPlayer;)V

    :cond_0
    return-void

    nop

    .array-data 1
    .end array-data
.end method
