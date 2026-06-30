.class final Lcom/unity3d/player/e1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/unity3d/player/i1;


# direct methods
.method constructor <init>(Lcom/unity3d/player/i1;)V
    .locals 0

    iput-object p1, p0, Lcom/unity3d/player/e1;->a:Lcom/unity3d/player/i1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/unity3d/player/e1;->a:Lcom/unity3d/player/i1;

    invoke-static {v0}, Lcom/unity3d/player/i1;->-$$Nest$fgeta(Lcom/unity3d/player/i1;)Lcom/unity3d/player/UnityPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/unity3d/player/UnityPlayer;->onPause()V

    return-void

    .array-data 1
    .end array-data
.end method
