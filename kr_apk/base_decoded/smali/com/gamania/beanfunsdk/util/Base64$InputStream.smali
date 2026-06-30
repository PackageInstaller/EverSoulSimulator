.class public Lcom/gamania/beanfunsdk/util/Base64$InputStream;
.super Ljava/io/FilterInputStream;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gamania/beanfunsdk/util/Base64;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InputStream"
.end annotation


# instance fields
.field private a:Z

.field private b:I

.field private c:[B

.field private d:I

.field private e:I

.field private f:I

.field private g:Z


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/gamania/beanfunsdk/util/Base64$InputStream;-><init>(Ljava/io/InputStream;Z)V

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public constructor <init>(Ljava/io/InputStream;Z)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/gamania/beanfunsdk/util/Base64$InputStream;-><init>(Ljava/io/InputStream;ZZ)V

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public constructor <init>(Ljava/io/InputStream;ZZ)V
    .locals 0

    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    iput-boolean p3, p0, Lcom/gamania/beanfunsdk/util/Base64$InputStream;->g:Z

    iput-boolean p2, p0, Lcom/gamania/beanfunsdk/util/Base64$InputStream;->a:Z

    if-eqz p2, :cond_0

    const/4 p1, 0x4

    goto :goto_0

    :cond_0
    const/4 p1, 0x3

    :goto_0
    iput p1, p0, Lcom/gamania/beanfunsdk/util/Base64$InputStream;->d:I

    new-array p1, p1, [B

    iput-object p1, p0, Lcom/gamania/beanfunsdk/util/Base64$InputStream;->c:[B

    const/4 p1, -0x1

    iput p1, p0, Lcom/gamania/beanfunsdk/util/Base64$InputStream;->b:I

    const/4 p1, 0x0

    iput p1, p0, Lcom/gamania/beanfunsdk/util/Base64$InputStream;->f:I

    return-void

    nop

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public read()I
    .locals 8

    iget v0, p0, Lcom/gamania/beanfunsdk/util/Base64$InputStream;->b:I

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-gez v0, :cond_b

    iget-boolean v0, p0, Lcom/gamania/beanfunsdk/util/Base64$InputStream;->a:Z

    const/4 v3, 0x4

    if-eqz v0, :cond_4

    const/4 v0, 0x3

    new-array v4, v0, [B

    move v5, v2

    move v6, v5

    :goto_0
    if-ge v5, v0, :cond_2

    :try_start_0
    iget-object v7, p0, Ljava/io/FilterInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v7}, Ljava/io/InputStream;->read()I

    move-result v7

    if-ltz v7, :cond_0

    int-to-byte v7, v7

    aput-byte v7, v4, v5
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :catch_0
    move-exception v7

    if-eqz v5, :cond_1

    :cond_0
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    throw v7

    :cond_2
    if-lez v6, :cond_3

    iget-object v0, p0, Lcom/gamania/beanfunsdk/util/Base64$InputStream;->c:[B

    invoke-static {v4, v2, v6, v0, v2}, Lcom/gamania/beanfunsdk/util/Base64;->a([BII[BI)[B

    iput v2, p0, Lcom/gamania/beanfunsdk/util/Base64$InputStream;->b:I

    iput v3, p0, Lcom/gamania/beanfunsdk/util/Base64$InputStream;->e:I

    goto :goto_4

    :cond_3
    return v1

    :cond_4
    new-array v0, v3, [B

    move v4, v2

    :goto_2
    if-ge v4, v3, :cond_8

    :cond_5
    iget-object v5, p0, Ljava/io/FilterInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v5}, Ljava/io/InputStream;->read()I

    move-result v5

    if-ltz v5, :cond_6

    invoke-static {}, Lcom/gamania/beanfunsdk/util/Base64;->a()[B

    move-result-object v6

    and-int/lit8 v7, v5, 0x7f

    aget-byte v6, v6, v7

    const/4 v7, -0x5

    if-le v6, v7, :cond_5

    :cond_6
    if-gez v5, :cond_7

    goto :goto_3

    :cond_7
    int-to-byte v5, v5

    aput-byte v5, v0, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_8
    :goto_3
    if-ne v4, v3, :cond_9

    iget-object v3, p0, Lcom/gamania/beanfunsdk/util/Base64$InputStream;->c:[B

    invoke-static {v0, v2, v3, v2}, Lcom/gamania/beanfunsdk/util/Base64;->a([BI[BI)I

    move-result v0

    iput v0, p0, Lcom/gamania/beanfunsdk/util/Base64$InputStream;->e:I

    iput v2, p0, Lcom/gamania/beanfunsdk/util/Base64$InputStream;->b:I

    goto :goto_4

    :cond_9
    if-nez v4, :cond_a

    return v1

    :cond_a
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Improperly padded Base64 input."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_b
    :goto_4
    iget v0, p0, Lcom/gamania/beanfunsdk/util/Base64$InputStream;->b:I

    if-ltz v0, :cond_f

    iget v3, p0, Lcom/gamania/beanfunsdk/util/Base64$InputStream;->e:I

    if-lt v0, v3, :cond_c

    return v1

    :cond_c
    iget-boolean v3, p0, Lcom/gamania/beanfunsdk/util/Base64$InputStream;->a:Z

    if-eqz v3, :cond_d

    iget-boolean v3, p0, Lcom/gamania/beanfunsdk/util/Base64$InputStream;->g:Z

    if-eqz v3, :cond_d

    iget v3, p0, Lcom/gamania/beanfunsdk/util/Base64$InputStream;->f:I

    const/16 v4, 0x4c

    if-lt v3, v4, :cond_d

    iput v2, p0, Lcom/gamania/beanfunsdk/util/Base64$InputStream;->f:I

    const/16 v0, 0xa

    return v0

    :cond_d
    iget v2, p0, Lcom/gamania/beanfunsdk/util/Base64$InputStream;->f:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/gamania/beanfunsdk/util/Base64$InputStream;->f:I

    iget-object v2, p0, Lcom/gamania/beanfunsdk/util/Base64$InputStream;->c:[B

    add-int/lit8 v3, v0, 0x1

    iput v3, p0, Lcom/gamania/beanfunsdk/util/Base64$InputStream;->b:I

    aget-byte v0, v2, v0

    iget v2, p0, Lcom/gamania/beanfunsdk/util/Base64$InputStream;->d:I

    if-lt v3, v2, :cond_e

    iput v1, p0, Lcom/gamania/beanfunsdk/util/Base64$InputStream;->b:I

    :cond_e
    and-int/lit16 v0, v0, 0xff

    return v0

    :cond_f
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Error in Base64 code reading stream."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .array-data 1
    .end array-data
.end method

.method public read([BII)I
    .locals 3

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p3, :cond_1

    invoke-virtual {p0}, Lcom/gamania/beanfunsdk/util/Base64$InputStream;->read()I

    move-result v1

    if-ltz v1, :cond_0

    add-int v2, p2, v0

    int-to-byte v1, v1

    aput-byte v1, p1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    if-nez v0, :cond_1

    const/4 p1, -0x1

    return p1

    :cond_1
    return v0

    .array-data 1
    .end array-data
.end method
