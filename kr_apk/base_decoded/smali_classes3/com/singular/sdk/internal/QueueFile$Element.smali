.class Lcom/singular/sdk/internal/QueueFile$Element;
.super Ljava/lang/Object;
.source "QueueFile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/singular/sdk/internal/QueueFile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Element"
.end annotation


# static fields
.field static final HEADER_LENGTH:I = 0x4

.field static final NULL:Lcom/singular/sdk/internal/QueueFile$Element;


# instance fields
.field final length:I

.field final position:J


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 7479
    new-instance v0, Lcom/singular/sdk/internal/QueueFile$Element;

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/singular/sdk/internal/QueueFile$Element;-><init>(JI)V

    sput-object v0, Lcom/singular/sdk/internal/QueueFile$Element;->NULL:Lcom/singular/sdk/internal/QueueFile$Element;

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method constructor <init>(JI)V
    .locals 0

    .line 7709
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7719
    iput-wide p1, p0, Lcom/singular/sdk/internal/QueueFile$Element;->position:J

    .line 7729
    iput p3, p0, Lcom/singular/sdk/internal/QueueFile$Element;->length:I

    return-void

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    .line 7779
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "[position="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/singular/sdk/internal/QueueFile$Element;->position:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", length="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/singular/sdk/internal/QueueFile$Element;->length:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .array-data 1
    .end array-data
.end method
