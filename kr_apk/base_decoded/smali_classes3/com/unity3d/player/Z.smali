.class final Lcom/unity3d/player/Z;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# instance fields
.field final synthetic a:Lcom/unity3d/player/c0;


# direct methods
.method constructor <init>(Lcom/unity3d/player/c0;)V
    .locals 0

    iput-object p1, p0, Lcom/unity3d/player/Z;->a:Lcom/unity3d/player/c0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public final onGlobalLayout()V
    .locals 1

    iget-object v0, p0, Lcom/unity3d/player/Z;->a:Lcom/unity3d/player/c0;

    invoke-virtual {v0}, Lcom/unity3d/player/c0;->reportSoftInputArea()V

    iget-object v0, p0, Lcom/unity3d/player/Z;->a:Lcom/unity3d/player/c0;

    iget-object v0, v0, Lcom/unity3d/player/c0;->h:Lcom/unity3d/player/U;

    invoke-virtual {v0}, Lcom/unity3d/player/U;->b()V

    return-void

    nop

    .array-data 1
    .end array-data
.end method
