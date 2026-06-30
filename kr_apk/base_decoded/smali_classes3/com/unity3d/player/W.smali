.class final Lcom/unity3d/player/W;
.super Landroid/widget/EditText;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/unity3d/player/S;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/unity3d/player/S;)V
    .locals 0

    iput-object p2, p0, Lcom/unity3d/player/W;->a:Lcom/unity3d/player/S;

    invoke-direct {p0, p1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    return-void

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public final onEditorAction(I)V
    .locals 2

    const/4 v0, 0x6

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/unity3d/player/W;->a:Lcom/unity3d/player/S;

    const/4 v0, 0x0

    invoke-virtual {p1}, Lcom/unity3d/player/S;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1, v0}, Lcom/unity3d/player/S;->a(Ljava/lang/String;Z)V

    :cond_0
    return-void

    .array-data 1
    .end array-data
.end method

.method public final onKeyPreIme(ILandroid/view/KeyEvent;)Z
    .locals 4

    const/4 v0, 0x4

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne p1, v0, :cond_1

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    if-ne p1, v2, :cond_0

    iget-object p1, p0, Lcom/unity3d/player/W;->a:Lcom/unity3d/player/S;

    invoke-virtual {p1}, Lcom/unity3d/player/S;->b()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2, v1}, Lcom/unity3d/player/S;->a(Ljava/lang/String;Z)V

    :cond_0
    return v2

    :cond_1
    const/16 v0, 0x54

    if-ne p1, v0, :cond_2

    return v2

    :cond_2
    const/16 v0, 0x42

    if-ne p1, v0, :cond_3

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Landroid/widget/EditText;->getInputType()I

    move-result v0

    const/high16 v3, 0x20000

    and-int/2addr v0, v3

    if-nez v0, :cond_3

    iget-object p1, p0, Lcom/unity3d/player/W;->a:Lcom/unity3d/player/S;

    invoke-virtual {p1}, Lcom/unity3d/player/S;->b()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2, v1}, Lcom/unity3d/player/S;->a(Ljava/lang/String;Z)V

    return v2

    :cond_3
    invoke-super {p0, p1, p2}, Landroid/widget/EditText;->onKeyPreIme(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1

    .array-data 1
    .end array-data
.end method

.method protected onSelectionChanged(II)V
    .locals 1

    invoke-super {p0, p1, p2}, Landroid/widget/EditText;->onSelectionChanged(II)V

    iget-object v0, p0, Lcom/unity3d/player/W;->a:Lcom/unity3d/player/S;

    sub-int/2addr p2, p1

    iget-object v0, v0, Lcom/unity3d/player/S;->b:Lcom/unity3d/player/UnityPlayer;

    invoke-virtual {v0, p1, p2}, Lcom/unity3d/player/UnityPlayer;->reportSoftInputSelection(II)V

    return-void

    .array-data 1
    .end array-data
.end method
