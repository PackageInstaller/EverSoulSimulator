.class public Lcom/gamania/beanfunsdk/util/Base64$OutputStream;
.super Ljava/io/FilterOutputStream;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gamania/beanfunsdk/util/Base64;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OutputStream"
.end annotation


# instance fields
.field private a:Z

.field private b:I

.field private c:[B

.field private d:I

.field private e:I

.field private f:Z


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/gamania/beanfunsdk/util/Base64$OutputStream;-><init>(Ljava/io/OutputStream;Z)V

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public constructor <init>(Ljava/io/OutputStream;Z)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/gamania/beanfunsdk/util/Base64$OutputStream;-><init>(Ljava/io/OutputStream;ZZ)V

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public constructor <init>(Ljava/io/OutputStream;ZZ)V
    .locals 0

    invoke-direct {p0, p1}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-boolean p3, p0, Lcom/gamania/beanfunsdk/util/Base64$OutputStream;->f:Z

    iput-boolean p2, p0, Lcom/gamania/beanfunsdk/util/Base64$OutputStream;->a:Z

    if-eqz p2, :cond_0

    const/4 p1, 0x3

    goto :goto_0

    :cond_0
    const/4 p1, 0x4

    :goto_0
    iput p1, p0, Lcom/gamania/beanfunsdk/util/Base64$OutputStream;->d:I

    new-array p1, p1, [B

    iput-object p1, p0, Lcom/gamania/beanfunsdk/util/Base64$OutputStream;->c:[B

    const/4 p1, 0x0

    iput p1, p0, Lcom/gamania/beanfunsdk/util/Base64$OutputStream;->b:I

    iput p1, p0, Lcom/gamania/beanfunsdk/util/Base64$OutputStream;->e:I

    return-void

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public close()V
    .locals 1

    invoke-super {p0}, Ljava/io/FilterOutputStream;->close()V

    iget-object v0, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/gamania/beanfunsdk/util/Base64$OutputStream;->c:[B

    iput-object v0, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    return-void

    .array-data 1
    .end array-data
.end method

.method public flush()V
    .locals 3

    invoke-super {p0}, Ljava/io/FilterOutputStream;->flush()V

    iget v0, p0, Lcom/gamania/beanfunsdk/util/Base64$OutputStream;->b:I

    if-lez v0, :cond_1

    iget-boolean v1, p0, Lcom/gamania/beanfunsdk/util/Base64$OutputStream;->a:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    iget-object v2, p0, Lcom/gamania/beanfunsdk/util/Base64$OutputStream;->c:[B

    invoke-static {v2, v0}, Lcom/gamania/beanfunsdk/util/Base64;->a([BI)[B

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/OutputStream;->write([B)V

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Base64 input not properly padded."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    iget-object v0, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public write(I)V
    .locals 4

    iget-boolean v0, p0, Lcom/gamania/beanfunsdk/util/Base64$OutputStream;->a:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/gamania/beanfunsdk/util/Base64$OutputStream;->c:[B

    iget v2, p0, Lcom/gamania/beanfunsdk/util/Base64$OutputStream;->b:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/gamania/beanfunsdk/util/Base64$OutputStream;->b:I

    int-to-byte p1, p1

    aput-byte p1, v0, v2

    iget p1, p0, Lcom/gamania/beanfunsdk/util/Base64$OutputStream;->d:I

    if-lt v3, p1, :cond_3

    iget-object v2, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    invoke-static {v0, p1}, Lcom/gamania/beanfunsdk/util/Base64;->a([BI)[B

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/io/OutputStream;->write([B)V

    iget p1, p0, Lcom/gamania/beanfunsdk/util/Base64$OutputStream;->e:I

    add-int/lit8 p1, p1, 0x4

    iput p1, p0, Lcom/gamania/beanfunsdk/util/Base64$OutputStream;->e:I

    iget-boolean v0, p0, Lcom/gamania/beanfunsdk/util/Base64$OutputStream;->f:Z

    if-eqz v0, :cond_1

    const/16 v0, 0x4c

    if-lt p1, v0, :cond_1

    iget-object p1, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    const/16 v0, 0xa

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    iput v1, p0, Lcom/gamania/beanfunsdk/util/Base64$OutputStream;->e:I

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/gamania/beanfunsdk/util/Base64;->a()[B

    move-result-object v0

    and-int/lit8 v2, p1, 0x7f

    aget-byte v0, v0, v2

    const/4 v3, -0x5

    if-le v0, v3, :cond_2

    iget-object v0, p0, Lcom/gamania/beanfunsdk/util/Base64$OutputStream;->c:[B

    iget v2, p0, Lcom/gamania/beanfunsdk/util/Base64$OutputStream;->b:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/gamania/beanfunsdk/util/Base64$OutputStream;->b:I

    int-to-byte p1, p1

    aput-byte p1, v0, v2

    iget p1, p0, Lcom/gamania/beanfunsdk/util/Base64$OutputStream;->d:I

    if-lt v3, p1, :cond_3

    iget-object p1, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    invoke-static {v0}, Lcom/gamania/beanfunsdk/util/Base64;->a([B)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    :cond_1
    :goto_0
    iput v1, p0, Lcom/gamania/beanfunsdk/util/Base64$OutputStream;->b:I

    goto :goto_1

    :cond_2
    invoke-static {}, Lcom/gamania/beanfunsdk/util/Base64;->a()[B

    move-result-object p1

    aget-byte p1, p1, v2

    if-ne p1, v3, :cond_4

    :cond_3
    :goto_1
    return-void

    :cond_4
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Invalid character in Base64 data."

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .array-data 1
    .end array-data
.end method

.method public write([BII)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p3, :cond_0

    add-int v1, p2, v0

    aget-byte v1, p1, v1

    invoke-virtual {p0, v1}, Lcom/gamania/beanfunsdk/util/Base64$OutputStream;->write(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void

    .array-data 1
    .end array-data
.end method
