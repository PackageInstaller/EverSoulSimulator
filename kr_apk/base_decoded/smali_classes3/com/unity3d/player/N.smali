.class final Lcom/unity3d/player/N;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:J

.field private b:Z


# direct methods
.method static bridge synthetic -$$Nest$fgeta(Lcom/unity3d/player/N;)J
    .locals 2

    iget-wide v0, p0, Lcom/unity3d/player/N;->a:J

    return-wide v0

    nop

    .array-data 1
    .end array-data
.end method

.method static bridge synthetic -$$Nest$fgetb(Lcom/unity3d/player/N;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/unity3d/player/N;->b:Z

    return p0

    nop

    .array-data 1
    .end array-data
.end method

.method static bridge synthetic -$$Nest$fputa(Lcom/unity3d/player/N;J)V
    .locals 0

    iput-wide p1, p0, Lcom/unity3d/player/N;->a:J

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public constructor <init>(JZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/unity3d/player/N;->a:J

    iput-boolean p3, p0, Lcom/unity3d/player/N;->b:Z

    return-void

    .array-data 1
    .end array-data
.end method
