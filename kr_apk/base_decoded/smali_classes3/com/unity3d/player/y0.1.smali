.class final Lcom/unity3d/player/y0;
.super Lcom/unity3d/player/V0;
.source "SourceFile"


# instance fields
.field final synthetic b:Landroid/graphics/Rect;

.field final synthetic c:Lcom/unity3d/player/UnityPlayer;


# direct methods
.method constructor <init>(Lcom/unity3d/player/UnityPlayer;Landroid/graphics/Rect;)V
    .locals 0

    iput-object p1, p0, Lcom/unity3d/player/y0;->c:Lcom/unity3d/player/UnityPlayer;

    iput-object p2, p0, Lcom/unity3d/player/y0;->b:Landroid/graphics/Rect;

    const/4 p2, 0x0

    invoke-direct {p0, p1, p2}, Lcom/unity3d/player/V0;-><init>(Lcom/unity3d/player/UnityPlayer;Lcom/unity3d/player/V0-IA;)V

    return-void

    nop

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public final a()V
    .locals 5

    iget-object v0, p0, Lcom/unity3d/player/y0;->c:Lcom/unity3d/player/UnityPlayer;

    iget-object v1, p0, Lcom/unity3d/player/y0;->b:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->left:I

    iget v3, v1, Landroid/graphics/Rect;->top:I

    iget v4, v1, Landroid/graphics/Rect;->right:I

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    invoke-static {v0, v2, v3, v4, v1}, Lcom/unity3d/player/UnityPlayer;->-$$Nest$mnativeSetInputArea(Lcom/unity3d/player/UnityPlayer;IIII)V

    return-void

    .array-data 1
    .end array-data
.end method
