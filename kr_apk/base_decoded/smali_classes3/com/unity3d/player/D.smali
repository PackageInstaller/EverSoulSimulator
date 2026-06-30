.class final Lcom/unity3d/player/D;
.super Lcom/unity3d/player/C;
.source "SourceFile"


# instance fields
.field private d:Landroid/window/OnBackInvokedCallback;

.field private e:Landroid/window/OnBackInvokedDispatcher;

.field private f:I


# direct methods
.method private constructor <init>(Landroid/window/OnBackInvokedDispatcher;ILjava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0, p3}, Lcom/unity3d/player/C;-><init>(Ljava/lang/Runnable;)V

    const/4 p3, 0x0

    iput-object p3, p0, Lcom/unity3d/player/D;->d:Landroid/window/OnBackInvokedCallback;

    iput p2, p0, Lcom/unity3d/player/D;->f:I

    iput-object p1, p0, Lcom/unity3d/player/D;->e:Landroid/window/OnBackInvokedDispatcher;

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public static a(Ljava/lang/Object;ILjava/lang/Runnable;)Lcom/unity3d/player/C;
    .locals 1

    sget-boolean v0, Lcom/unity3d/player/PlatformSupport;->TIRAMISU_SUPPORT:Z

    if-eqz v0, :cond_1

    instance-of v0, p0, Landroid/app/Activity;

    if-nez v0, :cond_0

    instance-of v0, p0, Landroid/app/Dialog;

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    invoke-static {p0}, Lcom/unity3d/player/e;->a(Ljava/lang/Object;)Landroid/window/OnBackInvokedDispatcher;

    move-result-object p0

    new-instance v0, Lcom/unity3d/player/D;

    invoke-direct {v0, p0, p1, p2}, Lcom/unity3d/player/D;-><init>(Landroid/window/OnBackInvokedDispatcher;ILjava/lang/Runnable;)V

    goto :goto_1

    :cond_2
    new-instance v0, Lcom/unity3d/player/C;

    invoke-direct {v0, p2}, Lcom/unity3d/player/C;-><init>(Ljava/lang/Runnable;)V

    :goto_1
    invoke-virtual {v0}, Lcom/unity3d/player/C;->registerOnBackPressedCallback()V

    return-object v0

    .array-data 1
    .end array-data
.end method


# virtual methods
.method protected registerOnBackPressedCallback()V
    .locals 3

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
    invoke-super {p0}, Lcom/unity3d/player/C;->registerOnBackPressedCallback()V

    sget-boolean v0, Lcom/unity3d/player/PlatformSupport;->TIRAMISU_SUPPORT:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/unity3d/player/C;->a:Lcom/unity3d/player/a/c;

    new-instance v1, Lcom/unity3d/player/d;

    invoke-direct {v1, v0}, Lcom/unity3d/player/d;-><init>(Lcom/unity3d/player/a/c;)V

    iput-object v1, p0, Lcom/unity3d/player/D;->d:Landroid/window/OnBackInvokedCallback;

    iget-object v0, p0, Lcom/unity3d/player/D;->e:Landroid/window/OnBackInvokedDispatcher;

    iget v2, p0, Lcom/unity3d/player/D;->f:I

    invoke-static {v0, v2, v1}, Lcom/unity3d/player/e;->a(Landroid/window/OnBackInvokedDispatcher;ILandroid/window/OnBackInvokedCallback;)V

    :cond_2
    return-void

    .array-data 1
    .end array-data
.end method

.method protected unregisterOnBackPressedCallback()V
    .locals 2

    iget-object v0, p0, Lcom/unity3d/player/C;->a:Lcom/unity3d/player/a/c;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    return-void

    :cond_1
    sget-boolean v0, Lcom/unity3d/player/PlatformSupport;->TIRAMISU_SUPPORT:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/unity3d/player/D;->e:Landroid/window/OnBackInvokedDispatcher;

    iget-object v1, p0, Lcom/unity3d/player/D;->d:Landroid/window/OnBackInvokedCallback;

    invoke-static {v0, v1}, Lcom/unity3d/player/e;->a(Landroid/window/OnBackInvokedDispatcher;Landroid/window/OnBackInvokedCallback;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/unity3d/player/D;->d:Landroid/window/OnBackInvokedCallback;

    :cond_2
    invoke-super {p0}, Lcom/unity3d/player/C;->unregisterOnBackPressedCallback()V

    return-void

    .array-data 1
    .end array-data
.end method
