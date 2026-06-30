.class public final Lcom/singular/sdk/internal/QueueFile$Builder;
.super Ljava/lang/Object;
.source "QueueFile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/singular/sdk/internal/QueueFile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field final file:Ljava/io/File;

.field forceLegacy:Z

.field zero:Z


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .locals 1

    .line 7959
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 7899
    iput-boolean v0, p0, Lcom/singular/sdk/internal/QueueFile$Builder;->zero:Z

    const/4 v0, 0x0

    .line 7909
    iput-boolean v0, p0, Lcom/singular/sdk/internal/QueueFile$Builder;->forceLegacy:Z

    if-eqz p1, :cond_0

    .line 7999
    iput-object p1, p0, Lcom/singular/sdk/internal/QueueFile$Builder;->file:Ljava/io/File;

    return-void

    .line 7979
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "file == null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public build()Lcom/singular/sdk/internal/QueueFile;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 8239
    iget-object v0, p0, Lcom/singular/sdk/internal/QueueFile$Builder;->file:Ljava/io/File;

    iget-boolean v1, p0, Lcom/singular/sdk/internal/QueueFile$Builder;->forceLegacy:Z

    invoke-static {v0, v1}, Lcom/singular/sdk/internal/QueueFile;->access$000(Ljava/io/File;Z)Ljava/io/RandomAccessFile;

    move-result-object v0

    .line 8249
    new-instance v1, Lcom/singular/sdk/internal/QueueFile;

    iget-object v2, p0, Lcom/singular/sdk/internal/QueueFile$Builder;->file:Ljava/io/File;

    iget-boolean v3, p0, Lcom/singular/sdk/internal/QueueFile$Builder;->zero:Z

    iget-boolean v4, p0, Lcom/singular/sdk/internal/QueueFile$Builder;->forceLegacy:Z

    invoke-direct {v1, v2, v0, v3, v4}, Lcom/singular/sdk/internal/QueueFile;-><init>(Ljava/io/File;Ljava/io/RandomAccessFile;ZZ)V

    return-object v1

    .array-data 1
    .end array-data
.end method

.method public forceLegacy(Z)Lcom/singular/sdk/internal/QueueFile$Builder;
    .locals 0

    .line 8149
    iput-boolean p1, p0, Lcom/singular/sdk/internal/QueueFile$Builder;->forceLegacy:Z

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public zero(Z)Lcom/singular/sdk/internal/QueueFile$Builder;
    .locals 0

    .line 8069
    iput-boolean p1, p0, Lcom/singular/sdk/internal/QueueFile$Builder;->zero:Z

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method
