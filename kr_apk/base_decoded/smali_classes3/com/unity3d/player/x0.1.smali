.class final Lcom/unity3d/player/x0;
.super Lcom/unity3d/player/V0;
.source "SourceFile"


# instance fields
.field final synthetic b:I

.field final synthetic c:I

.field final synthetic d:Lcom/unity3d/player/UnityPlayer;


# direct methods
.method constructor <init>(Lcom/unity3d/player/UnityPlayer;II)V
    .locals 0

    iput-object p1, p0, Lcom/unity3d/player/x0;->d:Lcom/unity3d/player/UnityPlayer;

    iput p2, p0, Lcom/unity3d/player/x0;->b:I

    iput p3, p0, Lcom/unity3d/player/x0;->c:I

    const/4 p2, 0x0

    invoke-direct {p0, p1, p2}, Lcom/unity3d/player/V0;-><init>(Lcom/unity3d/player/UnityPlayer;Lcom/unity3d/player/V0-IA;)V

    return-void

    nop

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public final a()V
    .locals 3

    iget-object v0, p0, Lcom/unity3d/player/x0;->d:Lcom/unity3d/player/UnityPlayer;

    iget v1, p0, Lcom/unity3d/player/x0;->b:I

    iget v2, p0, Lcom/unity3d/player/x0;->c:I

    invoke-static {v0, v1, v2}, Lcom/unity3d/player/UnityPlayer;->-$$Nest$mnativeSetInputSelection(Lcom/unity3d/player/UnityPlayer;II)V

    return-void

    .array-data 1
    .end array-data
.end method
