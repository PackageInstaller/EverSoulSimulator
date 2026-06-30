.class Lcom/unity3d/player/C;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected a:Lcom/unity3d/player/a/c;

.field protected b:Ljava/lang/Runnable;

.field protected c:Z


# direct methods
.method protected constructor <init>(Ljava/lang/Runnable;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/unity3d/player/C;->a:Lcom/unity3d/player/a/c;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/unity3d/player/C;->c:Z

    iput-object p1, p0, Lcom/unity3d/player/C;->b:Ljava/lang/Runnable;

    return-void

    .array-data 1
    .end array-data
.end method


# virtual methods
.method protected registerOnBackPressedCallback()V
    .locals 2

    iget-object v0, p0, Lcom/unity3d/player/C;->a:Lcom/unity3d/player/a/c;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/unity3d/player/C;->b:Ljava/lang/Runnable;

    new-instance v1, Lcom/unity3d/player/B;

    invoke-direct {v1, v0}, Lcom/unity3d/player/B;-><init>(Ljava/lang/Runnable;)V

    iput-object v1, p0, Lcom/unity3d/player/C;->a:Lcom/unity3d/player/a/c;

    return-void

    .array-data 1
    .end array-data
.end method

.method protected unregisterOnBackPressedCallback()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/unity3d/player/C;->a:Lcom/unity3d/player/a/c;

    return-void

    .array-data 1
    .end array-data
.end method
