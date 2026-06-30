.class Lcom/android/volley/toolbox/DiskBasedCache$CountingInputStream;
.super Ljava/io/FilterInputStream;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/volley/toolbox/DiskBasedCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CountingInputStream"
.end annotation


# instance fields
.field private bytesRead:I


# direct methods
.method private constructor <init>(Ljava/io/InputStream;)V
    .locals 0

    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/android/volley/toolbox/DiskBasedCache$CountingInputStream;->bytesRead:I

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method synthetic constructor <init>(Ljava/io/InputStream;Lcom/android/volley/toolbox/DiskBasedCache$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/volley/toolbox/DiskBasedCache$CountingInputStream;-><init>(Ljava/io/InputStream;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method static synthetic access$100(Lcom/android/volley/toolbox/DiskBasedCache$CountingInputStream;)I
    .locals 0

    iget p0, p0, Lcom/android/volley/toolbox/DiskBasedCache$CountingInputStream;->bytesRead:I

    return p0

    nop

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public read()I
    .locals 2

    invoke-super {p0}, Ljava/io/FilterInputStream;->read()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget v1, p0, Lcom/android/volley/toolbox/DiskBasedCache$CountingInputStream;->bytesRead:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/volley/toolbox/DiskBasedCache$CountingInputStream;->bytesRead:I

    :cond_0
    return v0

    .array-data 1
    .end array-data
.end method

.method public read([BII)I
    .locals 0

    invoke-super {p0, p1, p2, p3}, Ljava/io/FilterInputStream;->read([BII)I

    move-result p1

    const/4 p2, -0x1

    if-eq p1, p2, :cond_0

    iget p2, p0, Lcom/android/volley/toolbox/DiskBasedCache$CountingInputStream;->bytesRead:I

    add-int/2addr p2, p1

    iput p2, p0, Lcom/android/volley/toolbox/DiskBasedCache$CountingInputStream;->bytesRead:I

    :cond_0
    return p1

    nop

    .array-data 1
    .end array-data
.end method
