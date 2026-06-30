.class public Lorg/apache/commons/lang3/mutable/MutableByte;
.super Ljava/lang/Number;
.source "MutableByte.java"

# interfaces
.implements Ljava/lang/Comparable;
.implements Lorg/apache/commons/lang3/mutable/Mutable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Number;",
        "Ljava/lang/Comparable<",
        "Lorg/apache/commons/lang3/mutable/MutableByte;",
        ">;",
        "Lorg/apache/commons/lang3/mutable/Mutable<",
        "Ljava/lang/Number;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x5e85be21L


# instance fields
.field private value:B


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 459
    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    return-void

    .array-data 1
    .end array-data
.end method

.method public constructor <init>(B)V
    .locals 0

    .line 549
    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    .line 559
    iput-byte p1, p0, Lorg/apache/commons/lang3/mutable/MutableByte;->value:B

    return-void

    .array-data 1
    .end array-data
.end method

.method public constructor <init>(Ljava/lang/Number;)V
    .locals 0

    .line 659
    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    .line 669
    invoke-virtual {p1}, Ljava/lang/Number;->byteValue()B

    move-result p1

    iput-byte p1, p0, Lorg/apache/commons/lang3/mutable/MutableByte;->value:B

    return-void

    .array-data 1
    .end array-data
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 779
    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    .line 789
    invoke-static {p1}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;)B

    move-result p1

    iput-byte p1, p0, Lorg/apache/commons/lang3/mutable/MutableByte;->value:B

    return-void

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public add(B)V
    .locals 1

    .line 1899
    iget-byte v0, p0, Lorg/apache/commons/lang3/mutable/MutableByte;->value:B

    add-int/2addr v0, p1

    int-to-byte p1, v0

    iput-byte p1, p0, Lorg/apache/commons/lang3/mutable/MutableByte;->value:B

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public add(Ljava/lang/Number;)V
    .locals 1

    .line 2009
    iget-byte v0, p0, Lorg/apache/commons/lang3/mutable/MutableByte;->value:B

    invoke-virtual {p1}, Ljava/lang/Number;->byteValue()B

    move-result p1

    add-int/2addr v0, p1

    int-to-byte p1, v0

    iput-byte p1, p0, Lorg/apache/commons/lang3/mutable/MutableByte;->value:B

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public addAndGet(B)B
    .locals 1

    .line 2339
    iget-byte v0, p0, Lorg/apache/commons/lang3/mutable/MutableByte;->value:B

    add-int/2addr v0, p1

    int-to-byte p1, v0

    iput-byte p1, p0, Lorg/apache/commons/lang3/mutable/MutableByte;->value:B

    return p1

    nop

    .array-data 1
    .end array-data
.end method

.method public addAndGet(Ljava/lang/Number;)B
    .locals 1

    .line 2479
    iget-byte v0, p0, Lorg/apache/commons/lang3/mutable/MutableByte;->value:B

    invoke-virtual {p1}, Ljava/lang/Number;->byteValue()B

    move-result p1

    add-int/2addr v0, p1

    int-to-byte p1, v0

    iput-byte p1, p0, Lorg/apache/commons/lang3/mutable/MutableByte;->value:B

    return p1

    nop

    .array-data 1
    .end array-data
.end method

.method public byteValue()B
    .locals 1

    .line 2899
    iget-byte v0, p0, Lorg/apache/commons/lang3/mutable/MutableByte;->value:B

    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 299
    check-cast p1, Lorg/apache/commons/lang3/mutable/MutableByte;

    invoke-virtual {p0, p1}, Lorg/apache/commons/lang3/mutable/MutableByte;->compareTo(Lorg/apache/commons/lang3/mutable/MutableByte;)I

    move-result p1

    return p1

    nop

    .array-data 1
    .end array-data
.end method

.method public compareTo(Lorg/apache/commons/lang3/mutable/MutableByte;)I
    .locals 1

    .line 3789
    iget-byte v0, p0, Lorg/apache/commons/lang3/mutable/MutableByte;->value:B

    iget-byte p1, p1, Lorg/apache/commons/lang3/mutable/MutableByte;->value:B

    invoke-static {v0, p1}, Lorg/apache/commons/lang3/math/NumberUtils;->compare(BB)I

    move-result p1

    return p1

    nop

    .array-data 1
    .end array-data
.end method

.method public decrement()V
    .locals 1

    .line 1539
    iget-byte v0, p0, Lorg/apache/commons/lang3/mutable/MutableByte;->value:B

    add-int/lit8 v0, v0, -0x1

    int-to-byte v0, v0

    iput-byte v0, p0, Lorg/apache/commons/lang3/mutable/MutableByte;->value:B

    return-void

    .array-data 1
    .end array-data
.end method

.method public decrementAndGet()B
    .locals 1

    .line 1779
    iget-byte v0, p0, Lorg/apache/commons/lang3/mutable/MutableByte;->value:B

    add-int/lit8 v0, v0, -0x1

    int-to-byte v0, v0

    iput-byte v0, p0, Lorg/apache/commons/lang3/mutable/MutableByte;->value:B

    return v0

    .array-data 1
    .end array-data
.end method

.method public doubleValue()D
    .locals 2

    .line 3299
    iget-byte v0, p0, Lorg/apache/commons/lang3/mutable/MutableByte;->value:B

    int-to-double v0, v0

    return-wide v0

    .array-data 1
    .end array-data
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .line 3539
    instance-of v0, p1, Lorg/apache/commons/lang3/mutable/MutableByte;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 3549
    iget-byte v0, p0, Lorg/apache/commons/lang3/mutable/MutableByte;->value:B

    check-cast p1, Lorg/apache/commons/lang3/mutable/MutableByte;

    invoke-virtual {p1}, Lorg/apache/commons/lang3/mutable/MutableByte;->byteValue()B

    move-result p1

    if-ne v0, p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    nop

    .array-data 1
    .end array-data
.end method

.method public floatValue()F
    .locals 1

    .line 3199
    iget-byte v0, p0, Lorg/apache/commons/lang3/mutable/MutableByte;->value:B

    int-to-float v0, v0

    return v0

    .array-data 1
    .end array-data
.end method

.method public getAndAdd(B)B
    .locals 1

    .line 2609
    iget-byte v0, p0, Lorg/apache/commons/lang3/mutable/MutableByte;->value:B

    add-int/2addr p1, v0

    int-to-byte p1, p1

    .line 2619
    iput-byte p1, p0, Lorg/apache/commons/lang3/mutable/MutableByte;->value:B

    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getAndAdd(Ljava/lang/Number;)B
    .locals 1

    .line 2759
    iget-byte v0, p0, Lorg/apache/commons/lang3/mutable/MutableByte;->value:B

    .line 2769
    invoke-virtual {p1}, Ljava/lang/Number;->byteValue()B

    move-result p1

    add-int/2addr p1, v0

    int-to-byte p1, p1

    iput-byte p1, p0, Lorg/apache/commons/lang3/mutable/MutableByte;->value:B

    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getAndDecrement()B
    .locals 2

    .line 1649
    iget-byte v0, p0, Lorg/apache/commons/lang3/mutable/MutableByte;->value:B

    add-int/lit8 v1, v0, -0x1

    int-to-byte v1, v1

    .line 1659
    iput-byte v1, p0, Lorg/apache/commons/lang3/mutable/MutableByte;->value:B

    return v0

    .array-data 1
    .end array-data
.end method

.method public getAndIncrement()B
    .locals 2

    .line 1309
    iget-byte v0, p0, Lorg/apache/commons/lang3/mutable/MutableByte;->value:B

    add-int/lit8 v1, v0, 0x1

    int-to-byte v1, v1

    .line 1319
    iput-byte v1, p0, Lorg/apache/commons/lang3/mutable/MutableByte;->value:B

    return v0

    .array-data 1
    .end array-data
.end method

.method public getValue()Ljava/lang/Byte;
    .locals 1

    .line 899
    iget-byte v0, p0, Lorg/apache/commons/lang3/mutable/MutableByte;->value:B

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public bridge synthetic getValue()Ljava/lang/Object;
    .locals 1

    .line 299
    invoke-virtual {p0}, Lorg/apache/commons/lang3/mutable/MutableByte;->getValue()Ljava/lang/Byte;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public hashCode()I
    .locals 1

    .line 3669
    iget-byte v0, p0, Lorg/apache/commons/lang3/mutable/MutableByte;->value:B

    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public increment()V
    .locals 1

    .line 1199
    iget-byte v0, p0, Lorg/apache/commons/lang3/mutable/MutableByte;->value:B

    add-int/lit8 v0, v0, 0x1

    int-to-byte v0, v0

    iput-byte v0, p0, Lorg/apache/commons/lang3/mutable/MutableByte;->value:B

    return-void

    .array-data 1
    .end array-data
.end method

.method public incrementAndGet()B
    .locals 1

    .line 1439
    iget-byte v0, p0, Lorg/apache/commons/lang3/mutable/MutableByte;->value:B

    add-int/lit8 v0, v0, 0x1

    int-to-byte v0, v0

    iput-byte v0, p0, Lorg/apache/commons/lang3/mutable/MutableByte;->value:B

    return v0

    .array-data 1
    .end array-data
.end method

.method public intValue()I
    .locals 1

    .line 2999
    iget-byte v0, p0, Lorg/apache/commons/lang3/mutable/MutableByte;->value:B

    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public longValue()J
    .locals 2

    .line 3099
    iget-byte v0, p0, Lorg/apache/commons/lang3/mutable/MutableByte;->value:B

    int-to-long v0, v0

    return-wide v0

    .array-data 1
    .end array-data
.end method

.method public setValue(B)V
    .locals 0

    .line 989
    iput-byte p1, p0, Lorg/apache/commons/lang3/mutable/MutableByte;->value:B

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public setValue(Ljava/lang/Number;)V
    .locals 0

    .line 1099
    invoke-virtual {p1}, Ljava/lang/Number;->byteValue()B

    move-result p1

    iput-byte p1, p0, Lorg/apache/commons/lang3/mutable/MutableByte;->value:B

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public bridge synthetic setValue(Ljava/lang/Object;)V
    .locals 0

    .line 299
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p0, p1}, Lorg/apache/commons/lang3/mutable/MutableByte;->setValue(Ljava/lang/Number;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method public subtract(B)V
    .locals 1

    .line 2109
    iget-byte v0, p0, Lorg/apache/commons/lang3/mutable/MutableByte;->value:B

    sub-int/2addr v0, p1

    int-to-byte p1, v0

    iput-byte p1, p0, Lorg/apache/commons/lang3/mutable/MutableByte;->value:B

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public subtract(Ljava/lang/Number;)V
    .locals 1

    .line 2219
    iget-byte v0, p0, Lorg/apache/commons/lang3/mutable/MutableByte;->value:B

    invoke-virtual {p1}, Ljava/lang/Number;->byteValue()B

    move-result p1

    sub-int/2addr v0, p1

    int-to-byte p1, v0

    iput-byte p1, p0, Lorg/apache/commons/lang3/mutable/MutableByte;->value:B

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public toByte()Ljava/lang/Byte;
    .locals 1

    .line 3399
    invoke-virtual {p0}, Lorg/apache/commons/lang3/mutable/MutableByte;->byteValue()B

    move-result v0

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 3899
    iget-byte v0, p0, Lorg/apache/commons/lang3/mutable/MutableByte;->value:B

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method
