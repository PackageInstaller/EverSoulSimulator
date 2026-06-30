.class public Lcom/gamania/beanfunsdk/util/Base64;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gamania/beanfunsdk/util/Base64$OutputStream;,
        Lcom/gamania/beanfunsdk/util/Base64$InputStream;
    }
.end annotation


# static fields
.field public static final DECODE:Z = false

.field public static final ENCODE:Z = true

.field private static final a:[B

.field private static final b:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x40

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/gamania/beanfunsdk/util/Base64;->a:[B

    const/16 v0, 0x7f

    new-array v0, v0, [B

    fill-array-data v0, :array_1

    sput-object v0, Lcom/gamania/beanfunsdk/util/Base64;->b:[B

    return-void

    nop

    :array_0
    .array-data 1
        0x41t
        0x42t
        0x43t
        0x44t
        0x45t
        0x46t
        0x47t
        0x48t
        0x49t
        0x4at
        0x4bt
        0x4ct
        0x4dt
        0x4et
        0x4ft
        0x50t
        0x51t
        0x52t
        0x53t
        0x54t
        0x55t
        0x56t
        0x57t
        0x58t
        0x59t
        0x5at
        0x61t
        0x62t
        0x63t
        0x64t
        0x65t
        0x66t
        0x67t
        0x68t
        0x69t
        0x6at
        0x6bt
        0x6ct
        0x6dt
        0x6et
        0x6ft
        0x70t
        0x71t
        0x72t
        0x73t
        0x74t
        0x75t
        0x76t
        0x77t
        0x78t
        0x79t
        0x7at
        0x30t
        0x31t
        0x32t
        0x33t
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x2bt
        0x2ft
    .end array-data

    :array_1
    .array-data 1
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x5t
        -0x5t
        -0x9t
        -0x9t
        -0x5t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x5t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        0x3et
        -0x9t
        -0x9t
        -0x9t
        0x3ft
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x3at
        0x3bt
        0x3ct
        0x3dt
        -0x9t
        -0x9t
        -0x9t
        -0x1t
        -0x9t
        -0x9t
        -0x9t
        0x0t
        0x1t
        0x2t
        0x3t
        0x4t
        0x5t
        0x6t
        0x7t
        0x8t
        0x9t
        0xat
        0xbt
        0xct
        0xdt
        0xet
        0xft
        0x10t
        0x11t
        0x12t
        0x13t
        0x14t
        0x15t
        0x16t
        0x17t
        0x18t
        0x19t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        0x1at
        0x1bt
        0x1ct
        0x1dt
        0x1et
        0x1ft
        0x20t
        0x21t
        0x22t
        0x23t
        0x24t
        0x25t
        0x26t
        0x27t
        0x28t
        0x29t
        0x2at
        0x2bt
        0x2ct
        0x2dt
        0x2et
        0x2ft
        0x30t
        0x31t
        0x32t
        0x33t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
    .end array-data

    .array-data 1
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void

    .array-data 1
    .end array-data
.end method

.method static synthetic a([BI[BI)I
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/gamania/beanfunsdk/util/Base64;->b([BI[BI)I

    move-result p0

    return p0

    nop

    .array-data 1
    .end array-data
.end method

.method static synthetic a()[B
    .locals 1

    sget-object v0, Lcom/gamania/beanfunsdk/util/Base64;->b:[B

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method static synthetic a([B)[B
    .locals 0

    invoke-static {p0}, Lcom/gamania/beanfunsdk/util/Base64;->b([B)[B

    move-result-object p0

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method static synthetic a([BI)[B
    .locals 0

    invoke-static {p0, p1}, Lcom/gamania/beanfunsdk/util/Base64;->b([BI)[B

    move-result-object p0

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method static synthetic a([BII[BI)[B
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/gamania/beanfunsdk/util/Base64;->b([BII[BI)[B

    move-result-object p0

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method private static b([BI[BI)I
    .locals 6

    add-int/lit8 v0, p1, 0x2

    aget-byte v0, p0, v0

    const/4 v1, 0x1

    const/16 v2, 0x3d

    if-ne v0, v2, :cond_0

    sget-object v0, Lcom/gamania/beanfunsdk/util/Base64;->b:[B

    aget-byte v2, p0, p1

    aget-byte v2, v0, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x12

    add-int/2addr p1, v1

    aget-byte p0, p0, p1

    aget-byte p0, v0, p0

    and-int/lit16 p0, p0, 0xff

    shl-int/lit8 p0, p0, 0xc

    or-int/2addr p0, v2

    ushr-int/lit8 p0, p0, 0x10

    int-to-byte p0, p0

    aput-byte p0, p2, p3

    return v1

    :cond_0
    add-int/lit8 v3, p1, 0x3

    aget-byte v3, p0, v3

    const/4 v4, 0x2

    if-ne v3, v2, :cond_1

    sget-object v2, Lcom/gamania/beanfunsdk/util/Base64;->b:[B

    aget-byte v3, p0, p1

    aget-byte v3, v2, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x12

    add-int/2addr p1, v1

    aget-byte p0, p0, p1

    aget-byte p0, v2, p0

    and-int/lit16 p0, p0, 0xff

    shl-int/lit8 p0, p0, 0xc

    or-int/2addr p0, v3

    aget-byte p1, v2, v0

    and-int/lit16 p1, p1, 0xff

    shl-int/lit8 p1, p1, 0x6

    or-int/2addr p0, p1

    ushr-int/lit8 p1, p0, 0x10

    int-to-byte p1, p1

    aput-byte p1, p2, p3

    add-int/2addr p3, v1

    ushr-int/lit8 p0, p0, 0x8

    int-to-byte p0, p0

    aput-byte p0, p2, p3

    return v4

    :cond_1
    :try_start_0
    sget-object v2, Lcom/gamania/beanfunsdk/util/Base64;->b:[B

    aget-byte v5, p0, p1

    aget-byte v5, v2, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x12

    add-int/2addr p1, v1

    aget-byte p0, p0, p1

    aget-byte p0, v2, p0

    and-int/lit16 p0, p0, 0xff

    shl-int/lit8 p0, p0, 0xc

    or-int/2addr p0, v5

    aget-byte p1, v2, v0

    and-int/lit16 p1, p1, 0xff

    shl-int/lit8 p1, p1, 0x6

    or-int/2addr p0, p1

    aget-byte p1, v2, v3

    and-int/lit16 p1, p1, 0xff

    or-int/2addr p0, p1

    shr-int/lit8 p1, p0, 0x10

    int-to-byte p1, p1

    aput-byte p1, p2, p3

    add-int/lit8 p1, p3, 0x1

    shr-int/lit8 v0, p0, 0x8

    int-to-byte v0, v0

    aput-byte v0, p2, p1

    add-int/2addr p3, v4

    int-to-byte p0, p0

    aput-byte p0, p2, p3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x3

    return p0

    :catch_0
    const/4 p0, -0x1

    return p0

    nop

    .array-data 1
    .end array-data
.end method

.method private static b([B)[B
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [B

    const/4 v1, 0x0

    invoke-static {p0, v1, v0, v1}, Lcom/gamania/beanfunsdk/util/Base64;->b([BI[BI)I

    move-result p0

    new-array v2, p0, [B

    invoke-static {v0, v1, v2, v1, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2

    .array-data 1
    .end array-data
.end method

.method private static b([BI)[B
    .locals 2

    const/4 v0, 0x4

    new-array v0, v0, [B

    const/4 v1, 0x0

    invoke-static {p0, v1, p1, v0, v1}, Lcom/gamania/beanfunsdk/util/Base64;->b([BII[BI)[B

    return-object v0

    .array-data 1
    .end array-data
.end method

.method private static b([BII[BI)[B
    .locals 4

    const/4 v0, 0x0

    if-lez p2, :cond_0

    aget-byte v1, p0, p1

    shl-int/lit8 v1, v1, 0x18

    ushr-int/lit8 v1, v1, 0x8

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    const/4 v2, 0x1

    if-le p2, v2, :cond_1

    add-int/lit8 v3, p1, 0x1

    aget-byte v3, p0, v3

    shl-int/lit8 v3, v3, 0x18

    ushr-int/lit8 v3, v3, 0x10

    goto :goto_1

    :cond_1
    move v3, v0

    :goto_1
    or-int/2addr v1, v3

    const/4 v3, 0x2

    if-le p2, v3, :cond_2

    add-int/2addr p1, v3

    aget-byte p0, p0, p1

    shl-int/lit8 p0, p0, 0x18

    ushr-int/lit8 v0, p0, 0x18

    :cond_2
    or-int p0, v1, v0

    const/16 p1, 0x3d

    const/4 v0, 0x3

    if-eq p2, v2, :cond_5

    if-eq p2, v3, :cond_4

    if-eq p2, v0, :cond_3

    return-object p3

    :cond_3
    sget-object p1, Lcom/gamania/beanfunsdk/util/Base64;->a:[B

    ushr-int/lit8 p2, p0, 0x12

    aget-byte p2, p1, p2

    aput-byte p2, p3, p4

    add-int/lit8 p2, p4, 0x1

    ushr-int/lit8 v1, p0, 0xc

    and-int/lit8 v1, v1, 0x3f

    aget-byte v1, p1, v1

    aput-byte v1, p3, p2

    add-int/lit8 p2, p4, 0x2

    ushr-int/lit8 v1, p0, 0x6

    and-int/lit8 v1, v1, 0x3f

    aget-byte v1, p1, v1

    aput-byte v1, p3, p2

    add-int/2addr p4, v0

    and-int/lit8 p0, p0, 0x3f

    aget-byte p0, p1, p0

    aput-byte p0, p3, p4

    return-object p3

    :cond_4
    sget-object p2, Lcom/gamania/beanfunsdk/util/Base64;->a:[B

    ushr-int/lit8 v1, p0, 0x12

    aget-byte v1, p2, v1

    aput-byte v1, p3, p4

    add-int/lit8 v1, p4, 0x1

    ushr-int/lit8 v2, p0, 0xc

    and-int/lit8 v2, v2, 0x3f

    aget-byte v2, p2, v2

    aput-byte v2, p3, v1

    add-int/lit8 v1, p4, 0x2

    ushr-int/lit8 p0, p0, 0x6

    and-int/lit8 p0, p0, 0x3f

    aget-byte p0, p2, p0

    aput-byte p0, p3, v1

    add-int/2addr p4, v0

    aput-byte p1, p3, p4

    return-object p3

    :cond_5
    sget-object p2, Lcom/gamania/beanfunsdk/util/Base64;->a:[B

    ushr-int/lit8 v1, p0, 0x12

    aget-byte v1, p2, v1

    aput-byte v1, p3, p4

    add-int/lit8 v1, p4, 0x1

    ushr-int/lit8 p0, p0, 0xc

    and-int/lit8 p0, p0, 0x3f

    aget-byte p0, p2, p0

    aput-byte p0, p3, v1

    add-int/lit8 p0, p4, 0x2

    aput-byte p1, p3, p0

    add-int/2addr p4, v0

    aput-byte p1, p3, p4

    return-object p3

    nop

    .array-data 1
    .end array-data
.end method

.method public static decode(Ljava/lang/String;)[B
    .locals 2

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Lcom/gamania/beanfunsdk/util/Base64;->decode([BII)[B

    move-result-object p0

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static decode([BII)[B
    .locals 8

    mul-int/lit8 p1, p2, 0x3

    const/4 v0, 0x4

    div-int/2addr p1, v0

    new-array p1, p1, [B

    new-array v0, v0, [B

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    move v4, v3

    :goto_0
    if-ge v2, p2, :cond_4

    aget-byte v5, p0, v2

    and-int/lit8 v5, v5, 0x7f

    int-to-byte v5, v5

    sget-object v6, Lcom/gamania/beanfunsdk/util/Base64;->b:[B

    aget-byte v6, v6, v5

    const/4 v7, -0x5

    if-lt v6, v7, :cond_3

    const/4 v7, -0x1

    if-lt v6, v7, :cond_2

    add-int/lit8 v6, v3, 0x1

    aput-byte v5, v0, v3

    const/4 v3, 0x3

    if-le v6, v3, :cond_1

    invoke-static {v0, v1, p1, v4}, Lcom/gamania/beanfunsdk/util/Base64;->b([BI[BI)I

    move-result v3

    add-int/2addr v4, v3

    const/16 v3, 0x3d

    if-ne v5, v3, :cond_0

    goto :goto_2

    :cond_0
    move v3, v1

    goto :goto_1

    :cond_1
    move v3, v6

    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    const/4 p0, 0x0

    return-object p0

    :cond_4
    :goto_2
    new-array p0, v4, [B

    invoke-static {p1, v1, p0, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p0

    .array-data 1
    .end array-data
.end method

.method public static decodeToObject(Ljava/lang/String;)Ljava/lang/Object;
    .locals 4

    invoke-static {p0}, Lcom/gamania/beanfunsdk/util/Base64;->decode(Ljava/lang/String;)[B

    move-result-object p0

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_9
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_6
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    new-instance p0, Ljava/io/ObjectInputStream;

    invoke-direct {p0, v1}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {p0}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :try_start_3
    invoke-virtual {v1}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    :catch_0
    :try_start_4
    invoke-virtual {p0}, Ljava/io/ObjectInputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    :catch_1
    return-object v0

    :catch_2
    move-exception v2

    goto :goto_0

    :catch_3
    move-exception v2

    goto :goto_1

    :catchall_0
    move-exception p0

    move-object v3, v1

    move-object v1, v0

    goto :goto_2

    :catch_4
    move-exception p0

    move-object v2, p0

    move-object p0, v0

    goto :goto_0

    :catch_5
    move-exception p0

    move-object v2, p0

    move-object p0, v0

    goto :goto_1

    :catchall_1
    move-exception p0

    move-object v1, v0

    goto :goto_3

    :catch_6
    move-exception p0

    move-object v2, p0

    move-object p0, v0

    move-object v1, p0

    :goto_0
    :try_start_5
    invoke-virtual {v2}, Ljava/lang/ClassNotFoundException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :try_start_6
    invoke-virtual {v1}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_7

    :catch_7
    :try_start_7
    invoke-virtual {p0}, Ljava/io/ObjectInputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_8

    :catch_8
    return-object v0

    :catch_9
    move-exception p0

    move-object v2, p0

    move-object p0, v0

    move-object v1, p0

    :goto_1
    :try_start_8
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    :try_start_9
    invoke-virtual {v1}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_a

    :catch_a
    :try_start_a
    invoke-virtual {p0}, Ljava/io/ObjectInputStream;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_b

    :catch_b
    return-object v0

    :catchall_2
    move-exception v0

    move-object v3, v1

    move-object v1, p0

    move-object p0, v0

    :goto_2
    move-object v0, v3

    :goto_3
    :try_start_b
    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_c

    :catch_c
    :try_start_c
    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->close()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_d

    :catch_d
    throw p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static decodeToString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    new-instance v0, Ljava/lang/String;

    invoke-static {p0}, Lcom/gamania/beanfunsdk/util/Base64;->decode(Ljava/lang/String;)[B

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0

    .array-data 1
    .end array-data
.end method

.method public static encodeBytes([B)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/gamania/beanfunsdk/util/Base64;->encodeBytes([BZ)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .array-data 1
    .end array-data
.end method

.method public static encodeBytes([BII)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Lcom/gamania/beanfunsdk/util/Base64;->encodeBytes([BIIZ)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .array-data 1
    .end array-data
.end method

.method public static encodeBytes([BIIZ)Ljava/lang/String;
    .locals 10

    mul-int/lit8 v0, p2, 0x4

    const/4 v1, 0x3

    div-int/2addr v0, v1

    rem-int/lit8 v2, p2, 0x3

    const/4 v3, 0x0

    const/4 v4, 0x4

    if-lez v2, :cond_0

    move v2, v4

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    add-int/2addr v2, v0

    const/16 v5, 0x4c

    if-eqz p3, :cond_1

    div-int/2addr v0, v5

    goto :goto_1

    :cond_1
    move v0, v3

    :goto_1
    add-int/2addr v2, v0

    new-array v0, v2, [B

    add-int/lit8 v2, p2, -0x2

    move v6, v3

    move v7, v6

    move v8, v7

    :goto_2
    if-ge v6, v2, :cond_3

    add-int v9, v6, p1

    invoke-static {p0, v9, v1, v0, v7}, Lcom/gamania/beanfunsdk/util/Base64;->b([BII[BI)[B

    add-int/2addr v8, v4

    if-eqz p3, :cond_2

    if-ne v8, v5, :cond_2

    add-int/lit8 v8, v7, 0x4

    const/16 v9, 0xa

    aput-byte v9, v0, v8

    add-int/lit8 v7, v7, 0x1

    move v8, v3

    :cond_2
    add-int/lit8 v6, v6, 0x3

    add-int/2addr v7, v4

    goto :goto_2

    :cond_3
    if-ge v6, p2, :cond_4

    add-int/2addr p1, v6

    sub-int/2addr p2, v6

    invoke-static {p0, p1, p2, v0, v7}, Lcom/gamania/beanfunsdk/util/Base64;->b([BII[BI)[B

    add-int/lit8 v7, v7, 0x4

    :cond_4
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v0, v3, v7}, Ljava/lang/String;-><init>([BII)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static encodeBytes([BZ)Ljava/lang/String;
    .locals 2

    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0, p1}, Lcom/gamania/beanfunsdk/util/Base64;->encodeBytes([BIIZ)Ljava/lang/String;

    move-result-object p0

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static encodeObject(Ljava/io/Serializable;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/gamania/beanfunsdk/util/Base64;->encodeObject(Ljava/io/Serializable;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .array-data 1
    .end array-data
.end method

.method public static encodeObject(Ljava/io/Serializable;Z)Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_6
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    new-instance v2, Lcom/gamania/beanfunsdk/util/Base64$OutputStream;

    const/4 v3, 0x1

    invoke-direct {v2, v1, v3, p1}, Lcom/gamania/beanfunsdk/util/Base64$OutputStream;-><init>(Ljava/io/OutputStream;ZZ)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    new-instance p1, Ljava/io/ObjectOutputStream;

    invoke-direct {p1, v2}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-virtual {p1, p0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    :try_start_4
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    :try_start_5
    invoke-virtual {v2}, Lcom/gamania/beanfunsdk/util/Base64$OutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    :catch_1
    :try_start_6
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    :catch_2
    new-instance p0, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/String;-><init>([B)V

    return-object p0

    :catch_3
    move-exception p0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_4
    move-exception p0

    move-object p1, v0

    goto :goto_0

    :catchall_1
    move-exception p0

    move-object v2, v0

    goto :goto_1

    :catch_5
    move-exception p0

    move-object p1, v0

    move-object v2, p1

    goto :goto_0

    :catchall_2
    move-exception p0

    move-object v1, v0

    move-object v2, v1

    goto :goto_1

    :catch_6
    move-exception p0

    move-object p1, v0

    move-object v1, p1

    move-object v2, v1

    :goto_0
    :try_start_7
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    :try_start_8
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_7

    :catch_7
    :try_start_9
    invoke-virtual {v2}, Lcom/gamania/beanfunsdk/util/Base64$OutputStream;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_8

    :catch_8
    :try_start_a
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_9

    :catch_9
    return-object v0

    :catchall_3
    move-exception p0

    move-object v0, p1

    :goto_1
    :try_start_b
    invoke-virtual {v0}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_a

    :catch_a
    :try_start_c
    invoke-virtual {v2}, Lcom/gamania/beanfunsdk/util/Base64$OutputStream;->close()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_b

    :catch_b
    :try_start_d
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_c

    :catch_c
    throw p0

    .array-data 1
    .end array-data
.end method

.method public static encodeString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/gamania/beanfunsdk/util/Base64;->encodeString(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .array-data 1
    .end array-data
.end method

.method public static encodeString(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    invoke-static {p0, p1}, Lcom/gamania/beanfunsdk/util/Base64;->encodeBytes([BZ)Ljava/lang/String;

    move-result-object p0

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static main([Ljava/lang/String;)V
    .locals 0

    return-void

    nop

    .array-data 1
    .end array-data
.end method
