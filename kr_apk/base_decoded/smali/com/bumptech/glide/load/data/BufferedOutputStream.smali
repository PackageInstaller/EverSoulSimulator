.class public final Lcom/bumptech/glide/load/data/BufferedOutputStream;
.super Ljava/io/OutputStream;
.source "BufferedOutputStream.java"


# instance fields
.field private arrayPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;

.field private buffer:[B

.field private index:I

.field private final out:Ljava/io/OutputStream;


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;)V
    .locals 1

    const/high16 v0, 0x10000

    .line 209
    invoke-direct {p0, p1, p2, v0}, Lcom/bumptech/glide/load/data/BufferedOutputStream;-><init>(Ljava/io/OutputStream;Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;I)V

    return-void

    .array-data 1
    .end array-data
.end method

.method constructor <init>(Ljava/io/OutputStream;Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;I)V
    .locals 0

    .line 249
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 259
    iput-object p1, p0, Lcom/bumptech/glide/load/data/BufferedOutputStream;->out:Ljava/io/OutputStream;

    .line 269
    iput-object p2, p0, Lcom/bumptech/glide/load/data/BufferedOutputStream;->arrayPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;

    .line 279
    const-class p1, [B

    invoke-interface {p2, p3, p1}, Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;->get(ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    iput-object p1, p0, Lcom/bumptech/glide/load/data/BufferedOutputStream;->buffer:[B

    return-void

    .array-data 1
    .end array-data
.end method

.method private flushBuffer()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 739
    iget v0, p0, Lcom/bumptech/glide/load/data/BufferedOutputStream;->index:I

    if-lez v0, :cond_0

    .line 749
    iget-object v1, p0, Lcom/bumptech/glide/load/data/BufferedOutputStream;->out:Ljava/io/OutputStream;

    iget-object v2, p0, Lcom/bumptech/glide/load/data/BufferedOutputStream;->buffer:[B

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Ljava/io/OutputStream;->write([BII)V

    .line 759
    iput v3, p0, Lcom/bumptech/glide/load/data/BufferedOutputStream;->index:I

    :cond_0
    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method private maybeFlushBuffer()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 809
    iget v0, p0, Lcom/bumptech/glide/load/data/BufferedOutputStream;->index:I

    iget-object v1, p0, Lcom/bumptech/glide/load/data/BufferedOutputStream;->buffer:[B

    array-length v1, v1

    if-ne v0, v1, :cond_0

    .line 819
    invoke-direct {p0}, Lcom/bumptech/glide/load/data/BufferedOutputStream;->flushBuffer()V

    :cond_0
    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method private release()V
    .locals 2

    .line 969
    iget-object v0, p0, Lcom/bumptech/glide/load/data/BufferedOutputStream;->buffer:[B

    if-eqz v0, :cond_0

    .line 979
    iget-object v1, p0, Lcom/bumptech/glide/load/data/BufferedOutputStream;->arrayPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;

    invoke-interface {v1, v0}, Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;->put(Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 989
    iput-object v0, p0, Lcom/bumptech/glide/load/data/BufferedOutputStream;->buffer:[B

    :cond_0
    return-void

    nop

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 889
    :try_start_0
    invoke-virtual {p0}, Lcom/bumptech/glide/load/data/BufferedOutputStream;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 909
    iget-object v0, p0, Lcom/bumptech/glide/load/data/BufferedOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 929
    invoke-direct {p0}, Lcom/bumptech/glide/load/data/BufferedOutputStream;->release()V

    return-void

    :catchall_0
    move-exception v0

    .line 909
    iget-object v1, p0, Lcom/bumptech/glide/load/data/BufferedOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    throw v0

    nop

    .array-data 1
    .end array-data
.end method

.method public flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 689
    invoke-direct {p0}, Lcom/bumptech/glide/load/data/BufferedOutputStream;->flushBuffer()V

    .line 699
    iget-object v0, p0, Lcom/bumptech/glide/load/data/BufferedOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public write(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 329
    iget-object v0, p0, Lcom/bumptech/glide/load/data/BufferedOutputStream;->buffer:[B

    iget v1, p0, Lcom/bumptech/glide/load/data/BufferedOutputStream;->index:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/bumptech/glide/load/data/BufferedOutputStream;->index:I

    int-to-byte p1, p1

    aput-byte p1, v0, v1

    .line 339
    invoke-direct {p0}, Lcom/bumptech/glide/load/data/BufferedOutputStream;->maybeFlushBuffer()V

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public write([B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 389
    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lcom/bumptech/glide/load/data/BufferedOutputStream;->write([BII)V

    return-void

    .array-data 1
    .end array-data
.end method

.method public write([BII)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    :cond_0
    sub-int v1, p3, v0

    add-int v2, p2, v0

    .line 499
    iget v3, p0, Lcom/bumptech/glide/load/data/BufferedOutputStream;->index:I

    if-nez v3, :cond_1

    iget-object v4, p0, Lcom/bumptech/glide/load/data/BufferedOutputStream;->buffer:[B

    array-length v4, v4

    if-lt v1, v4, :cond_1

    .line 509
    iget-object p2, p0, Lcom/bumptech/glide/load/data/BufferedOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {p2, p1, v2, v1}, Ljava/io/OutputStream;->write([BII)V

    return-void

    .line 549
    :cond_1
    iget-object v4, p0, Lcom/bumptech/glide/load/data/BufferedOutputStream;->buffer:[B

    array-length v4, v4

    sub-int/2addr v4, v3

    .line 559
    invoke-static {v1, v4}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 579
    iget-object v3, p0, Lcom/bumptech/glide/load/data/BufferedOutputStream;->buffer:[B

    iget v4, p0, Lcom/bumptech/glide/load/data/BufferedOutputStream;->index:I

    invoke-static {p1, v2, v3, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 599
    iget v2, p0, Lcom/bumptech/glide/load/data/BufferedOutputStream;->index:I

    add-int/2addr v2, v1

    iput v2, p0, Lcom/bumptech/glide/load/data/BufferedOutputStream;->index:I

    add-int/2addr v0, v1

    .line 629
    invoke-direct {p0}, Lcom/bumptech/glide/load/data/BufferedOutputStream;->maybeFlushBuffer()V

    if-lt v0, p3, :cond_0

    return-void

    nop

    .array-data 1
    .end array-data
.end method
