.class final Lcom/unity3d/player/f1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/unity3d/player/i1;


# direct methods
.method constructor <init>(Lcom/unity3d/player/i1;)V
    .locals 0

    iput-object p1, p0, Lcom/unity3d/player/f1;->a:Lcom/unity3d/player/i1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/unity3d/player/f1;->a:Lcom/unity3d/player/i1;

    invoke-static {v0}, Lcom/unity3d/player/i1;->-$$Nest$fgetf(Lcom/unity3d/player/i1;)Lcom/unity3d/player/a1;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {v0}, Lcom/unity3d/player/i1;->-$$Nest$fgeta(Lcom/unity3d/player/i1;)Lcom/unity3d/player/UnityPlayer;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/unity3d/player/UnityPlayer;->addViewToPlayer(Landroid/view/View;Z)Z

    iget-object v0, p0, Lcom/unity3d/player/f1;->a:Lcom/unity3d/player/i1;

    invoke-static {v0, v2}, Lcom/unity3d/player/i1;->-$$Nest$fputi(Lcom/unity3d/player/i1;Z)V

    invoke-static {v0}, Lcom/unity3d/player/i1;->-$$Nest$fgetf(Lcom/unity3d/player/i1;)Lcom/unity3d/player/a1;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    :cond_0
    return-void

    nop

    .array-data 1
    .end array-data
.end method
