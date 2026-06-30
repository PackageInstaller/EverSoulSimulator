.class final Lcom/unity3d/player/X0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/unity3d/player/a1;


# direct methods
.method constructor <init>(Lcom/unity3d/player/a1;)V
    .locals 0

    iput-object p1, p0, Lcom/unity3d/player/X0;->a:Lcom/unity3d/player/a1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/unity3d/player/X0;->a:Lcom/unity3d/player/a1;

    invoke-virtual {v0}, Lcom/unity3d/player/a1;->destroyPlayer()V

    iget-object v0, p0, Lcom/unity3d/player/X0;->a:Lcom/unity3d/player/a1;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/unity3d/player/a1;->-$$Nest$ma(Lcom/unity3d/player/a1;I)V

    return-void

    .array-data 1
    .end array-data
.end method
