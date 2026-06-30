.class final Lcom/unity3d/player/p0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/unity3d/player/G;


# instance fields
.field final synthetic a:Lcom/unity3d/player/q0;


# direct methods
.method constructor <init>(Lcom/unity3d/player/q0;)V
    .locals 0

    iput-object p1, p0, Lcom/unity3d/player/p0;->a:Lcom/unity3d/player/q0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-object v0, p0, Lcom/unity3d/player/p0;->a:Lcom/unity3d/player/q0;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/unity3d/player/q0;->a:Z

    iget-boolean v1, v0, Lcom/unity3d/player/q0;->b:Z

    if-eqz v1, :cond_0

    iget-object v0, v0, Lcom/unity3d/player/q0;->c:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    :cond_0
    return-void

    nop

    .array-data 1
    .end array-data
.end method
