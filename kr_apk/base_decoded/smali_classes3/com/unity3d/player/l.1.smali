.class final Lcom/unity3d/player/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private a:Lcom/unity3d/player/IAssetPackManagerStatusQueryCallback;

.field private b:J

.field private c:[Ljava/lang/String;

.field private d:[I

.field private e:[I


# direct methods
.method constructor <init>(Lcom/unity3d/player/IAssetPackManagerStatusQueryCallback;J[Ljava/lang/String;[I[I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/unity3d/player/l;->a:Lcom/unity3d/player/IAssetPackManagerStatusQueryCallback;

    iput-wide p2, p0, Lcom/unity3d/player/l;->b:J

    iput-object p4, p0, Lcom/unity3d/player/l;->c:[Ljava/lang/String;

    iput-object p5, p0, Lcom/unity3d/player/l;->d:[I

    iput-object p6, p0, Lcom/unity3d/player/l;->e:[I

    return-void

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget-object v0, p0, Lcom/unity3d/player/l;->a:Lcom/unity3d/player/IAssetPackManagerStatusQueryCallback;

    iget-wide v1, p0, Lcom/unity3d/player/l;->b:J

    iget-object v3, p0, Lcom/unity3d/player/l;->c:[Ljava/lang/String;

    iget-object v4, p0, Lcom/unity3d/player/l;->d:[I

    iget-object v5, p0, Lcom/unity3d/player/l;->e:[I

    invoke-interface/range {v0 .. v5}, Lcom/unity3d/player/IAssetPackManagerStatusQueryCallback;->onStatusResult(J[Ljava/lang/String;[I[I)V

    return-void

    .array-data 1
    .end array-data
.end method
