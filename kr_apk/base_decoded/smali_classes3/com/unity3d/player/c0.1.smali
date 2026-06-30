.class final Lcom/unity3d/player/c0;
.super Lcom/unity3d/player/S;
.source "SourceFile"


# instance fields
.field h:Lcom/unity3d/player/U;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/unity3d/player/UnityPlayer;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/unity3d/player/S;-><init>(Landroid/content/Context;Lcom/unity3d/player/UnityPlayer;)V

    return-void

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public final a(Ljava/lang/String;IZZZZLjava/lang/String;IZZ)V
    .locals 3

    new-instance v0, Lcom/unity3d/player/U;

    iget-object v1, p0, Lcom/unity3d/player/S;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/unity3d/player/S;->b:Lcom/unity3d/player/UnityPlayer;

    invoke-direct {v0, v1, v2}, Lcom/unity3d/player/U;-><init>(Landroid/content/Context;Lcom/unity3d/player/UnityPlayer;)V

    iput-object v0, p0, Lcom/unity3d/player/c0;->h:Lcom/unity3d/player/U;

    invoke-virtual {v0, p0, p9, p10}, Lcom/unity3d/player/U;->a(Lcom/unity3d/player/S;ZZ)V

    iget-object v0, p0, Lcom/unity3d/player/c0;->h:Lcom/unity3d/player/U;

    new-instance v1, Lcom/unity3d/player/Y;

    invoke-direct {v1, p0}, Lcom/unity3d/player/Y;-><init>(Lcom/unity3d/player/c0;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    invoke-super/range {p0 .. p10}, Lcom/unity3d/player/S;->a(Ljava/lang/String;IZZZZLjava/lang/String;IZZ)V

    iget-object p1, p0, Lcom/unity3d/player/S;->b:Lcom/unity3d/player/UnityPlayer;

    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    new-instance p2, Lcom/unity3d/player/Z;

    invoke-direct {p2, p0}, Lcom/unity3d/player/Z;-><init>(Lcom/unity3d/player/c0;)V

    invoke-virtual {p1, p2}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    iget-object p1, p0, Lcom/unity3d/player/S;->c:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    iget-object p1, p0, Lcom/unity3d/player/c0;->h:Lcom/unity3d/player/U;

    new-instance p2, Lcom/unity3d/player/a0;

    invoke-direct {p2, p0}, Lcom/unity3d/player/a0;-><init>(Lcom/unity3d/player/c0;)V

    invoke-virtual {p1, p2}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public final a(Z)V
    .locals 1

    iput-boolean p1, p0, Lcom/unity3d/player/S;->d:Z

    iget-object v0, p0, Lcom/unity3d/player/c0;->h:Lcom/unity3d/player/U;

    invoke-virtual {v0, p1}, Lcom/unity3d/player/U;->a(Z)V

    return-void

    .array-data 1
    .end array-data
.end method

.method public final c()V
    .locals 1

    iget-object v0, p0, Lcom/unity3d/player/c0;->h:Lcom/unity3d/player/U;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    return-void

    .array-data 1
    .end array-data
.end method

.method protected createEditText(Lcom/unity3d/player/S;)Landroid/widget/EditText;
    .locals 2

    new-instance v0, Lcom/unity3d/player/b0;

    iget-object v1, p0, Lcom/unity3d/player/S;->a:Landroid/content/Context;

    invoke-direct {v0, p0, v1, p1}, Lcom/unity3d/player/b0;-><init>(Lcom/unity3d/player/c0;Landroid/content/Context;Lcom/unity3d/player/S;)V

    return-object v0

    .array-data 1
    .end array-data
.end method

.method public final e()V
    .locals 1

    iget-object v0, p0, Lcom/unity3d/player/c0;->h:Lcom/unity3d/player/U;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void

    .array-data 1
    .end array-data
.end method

.method protected reportSoftInputArea()V
    .locals 2

    iget-object v0, p0, Lcom/unity3d/player/c0;->h:Lcom/unity3d/player/U;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/unity3d/player/c0;->h:Lcom/unity3d/player/U;

    invoke-virtual {v0}, Lcom/unity3d/player/U;->a()Landroid/graphics/Rect;

    move-result-object v0

    iget-object v1, p0, Lcom/unity3d/player/S;->b:Lcom/unity3d/player/UnityPlayer;

    invoke-virtual {v1, v0}, Lcom/unity3d/player/UnityPlayer;->reportSoftInputArea(Landroid/graphics/Rect;)V

    :cond_0
    return-void

    .array-data 1
    .end array-data
.end method
