.class final Lcom/unity3d/player/u0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:I

.field final synthetic b:I

.field final synthetic c:Lcom/unity3d/player/UnityPlayer;


# direct methods
.method constructor <init>(Lcom/unity3d/player/UnityPlayer;II)V
    .locals 0

    iput-object p1, p0, Lcom/unity3d/player/u0;->c:Lcom/unity3d/player/UnityPlayer;

    iput p2, p0, Lcom/unity3d/player/u0;->a:I

    iput p3, p0, Lcom/unity3d/player/u0;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/unity3d/player/u0;->c:Lcom/unity3d/player/UnityPlayer;

    iget-object v0, v0, Lcom/unity3d/player/UnityPlayer;->mSoftInput:Lcom/unity3d/player/S;

    if-eqz v0, :cond_0

    iget v1, p0, Lcom/unity3d/player/u0;->a:I

    iget v2, p0, Lcom/unity3d/player/u0;->b:I

    iget-object v3, v0, Lcom/unity3d/player/S;->c:Landroid/widget/EditText;

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    add-int/2addr v2, v1

    if-lt v3, v2, :cond_0

    iget-object v0, v0, Lcom/unity3d/player/S;->c:Landroid/widget/EditText;

    invoke-virtual {v0, v1, v2}, Landroid/widget/EditText;->setSelection(II)V

    :cond_0
    return-void

    nop

    .array-data 1
    .end array-data
.end method
