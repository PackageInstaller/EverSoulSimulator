.class final Ltwitter4j/StreamingGZIPInputStream;
.super Ljava/util/zip/GZIPInputStream;
.source "StreamingGZIPInputStream.java"


# instance fields
.field private final wrapped:Ljava/io/InputStream;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 289
    invoke-direct {p0, p1}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    .line 299
    iput-object p1, p0, Ltwitter4j/StreamingGZIPInputStream;->wrapped:Ljava/io/InputStream;

    return-void

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public available()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 459
    iget-object v0, p0, Ltwitter4j/StreamingGZIPInputStream;->wrapped:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v0

    return v0

    nop

    .array-data 1
    .end array-data
.end method
