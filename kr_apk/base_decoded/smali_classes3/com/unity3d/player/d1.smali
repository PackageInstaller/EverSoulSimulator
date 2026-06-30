.class final Lcom/unity3d/player/d1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:I

.field final synthetic c:I

.field final synthetic d:I

.field final synthetic e:Z

.field final synthetic f:J

.field final synthetic g:J

.field final synthetic h:Lcom/unity3d/player/i1;


# direct methods
.method constructor <init>(Lcom/unity3d/player/i1;Ljava/lang/String;IIIZJJ)V
    .locals 0

    iput-object p1, p0, Lcom/unity3d/player/d1;->h:Lcom/unity3d/player/i1;

    iput-object p2, p0, Lcom/unity3d/player/d1;->a:Ljava/lang/String;

    iput p3, p0, Lcom/unity3d/player/d1;->b:I

    iput p4, p0, Lcom/unity3d/player/d1;->c:I

    iput p5, p0, Lcom/unity3d/player/d1;->d:I

    iput-boolean p6, p0, Lcom/unity3d/player/d1;->e:Z

    iput-wide p7, p0, Lcom/unity3d/player/d1;->f:J

    iput-wide p9, p0, Lcom/unity3d/player/d1;->g:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public final run()V
    .locals 15

    iget-object v0, p0, Lcom/unity3d/player/d1;->h:Lcom/unity3d/player/i1;

    invoke-static {v0}, Lcom/unity3d/player/i1;->-$$Nest$fgetf(Lcom/unity3d/player/i1;)Lcom/unity3d/player/a1;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v0, 0x5

    const-string v1, "Video already playing"

    invoke-static {v0, v1}, Lcom/unity3d/player/z;->Log(ILjava/lang/String;)V

    iget-object v0, p0, Lcom/unity3d/player/d1;->h:Lcom/unity3d/player/i1;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/unity3d/player/i1;->-$$Nest$fputg(Lcom/unity3d/player/i1;I)V

    invoke-static {v0}, Lcom/unity3d/player/i1;->-$$Nest$fgetd(Lcom/unity3d/player/i1;)Ljava/util/concurrent/Semaphore;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    return-void

    :cond_0
    new-instance v14, Lcom/unity3d/player/a1;

    iget-object v1, p0, Lcom/unity3d/player/d1;->h:Lcom/unity3d/player/i1;

    invoke-static {v1}, Lcom/unity3d/player/i1;->-$$Nest$fgetb(Lcom/unity3d/player/i1;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v1}, Lcom/unity3d/player/i1;->-$$Nest$fgeta(Lcom/unity3d/player/i1;)Lcom/unity3d/player/UnityPlayer;

    move-result-object v3

    iget-object v4, p0, Lcom/unity3d/player/d1;->a:Ljava/lang/String;

    iget v5, p0, Lcom/unity3d/player/d1;->b:I

    iget v6, p0, Lcom/unity3d/player/d1;->c:I

    iget v7, p0, Lcom/unity3d/player/d1;->d:I

    iget-boolean v8, p0, Lcom/unity3d/player/d1;->e:Z

    iget-wide v9, p0, Lcom/unity3d/player/d1;->f:J

    iget-wide v11, p0, Lcom/unity3d/player/d1;->g:J

    new-instance v13, Lcom/unity3d/player/c1;

    invoke-direct {v13, p0}, Lcom/unity3d/player/c1;-><init>(Lcom/unity3d/player/d1;)V

    move-object v1, v14

    invoke-direct/range {v1 .. v13}, Lcom/unity3d/player/a1;-><init>(Landroid/content/Context;Lcom/unity3d/player/UnityPlayer;Ljava/lang/String;IIIZJJLcom/unity3d/player/Y0;)V

    invoke-static {v0, v14}, Lcom/unity3d/player/i1;->-$$Nest$fputf(Lcom/unity3d/player/i1;Lcom/unity3d/player/a1;)V

    iget-object v0, p0, Lcom/unity3d/player/d1;->h:Lcom/unity3d/player/i1;

    invoke-static {v0}, Lcom/unity3d/player/i1;->-$$Nest$fgetf(Lcom/unity3d/player/i1;)Lcom/unity3d/player/a1;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-static {v0}, Lcom/unity3d/player/i1;->-$$Nest$fgeta(Lcom/unity3d/player/i1;)Lcom/unity3d/player/UnityPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->bringToFront()V

    iget-object v0, p0, Lcom/unity3d/player/d1;->h:Lcom/unity3d/player/i1;

    invoke-static {v0}, Lcom/unity3d/player/i1;->-$$Nest$fgeta(Lcom/unity3d/player/i1;)Lcom/unity3d/player/UnityPlayer;

    move-result-object v1

    invoke-static {v0}, Lcom/unity3d/player/i1;->-$$Nest$fgetf(Lcom/unity3d/player/i1;)Lcom/unity3d/player/a1;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_1
    return-void

    nop

    .array-data 1
    .end array-data
.end method
