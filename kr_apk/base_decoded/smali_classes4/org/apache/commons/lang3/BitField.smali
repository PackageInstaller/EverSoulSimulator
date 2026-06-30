.class public Lorg/apache/commons/lang3/BitField;
.super Ljava/lang/Object;
.source "BitField.java"


# instance fields
.field private final _mask:I

.field private final _shift_count:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 859
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 869
    iput p1, p0, Lorg/apache/commons/lang3/BitField;->_mask:I

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 879
    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    move-result p1

    :goto_0
    iput p1, p0, Lorg/apache/commons/lang3/BitField;->_shift_count:I

    return-void

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public clear(I)I
    .locals 1

    .line 2189
    iget v0, p0, Lorg/apache/commons/lang3/BitField;->_mask:I

    not-int v0, v0

    and-int/2addr p1, v0

    return p1

    nop

    .array-data 1
    .end array-data
.end method

.method public clearByte(B)B
    .locals 0

    .line 2439
    invoke-virtual {p0, p1}, Lorg/apache/commons/lang3/BitField;->clear(I)I

    move-result p1

    int-to-byte p1, p1

    return p1

    .array-data 1
    .end array-data
.end method

.method public clearShort(S)S
    .locals 0

    .line 2309
    invoke-virtual {p0, p1}, Lorg/apache/commons/lang3/BitField;->clear(I)I

    move-result p1

    int-to-short p1, p1

    return p1

    .array-data 1
    .end array-data
.end method

.method public getRawValue(I)I
    .locals 1

    .line 1349
    iget v0, p0, Lorg/apache/commons/lang3/BitField;->_mask:I

    and-int/2addr p1, v0

    return p1

    .array-data 1
    .end array-data
.end method

.method public getShortRawValue(S)S
    .locals 0

    .line 1459
    invoke-virtual {p0, p1}, Lorg/apache/commons/lang3/BitField;->getRawValue(I)I

    move-result p1

    int-to-short p1, p1

    return p1

    .array-data 1
    .end array-data
.end method

.method public getShortValue(S)S
    .locals 0

    .line 1239
    invoke-virtual {p0, p1}, Lorg/apache/commons/lang3/BitField;->getValue(I)I

    move-result p1

    int-to-short p1, p1

    return p1

    .array-data 1
    .end array-data
.end method

.method public getValue(I)I
    .locals 1

    .line 1059
    invoke-virtual {p0, p1}, Lorg/apache/commons/lang3/BitField;->getRawValue(I)I

    move-result p1

    iget v0, p0, Lorg/apache/commons/lang3/BitField;->_shift_count:I

    shr-int/2addr p1, v0

    return p1

    .array-data 1
    .end array-data
.end method

.method public isAllSet(I)Z
    .locals 1

    .line 1789
    iget v0, p0, Lorg/apache/commons/lang3/BitField;->_mask:I

    and-int/2addr p1, v0

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1

    nop

    .array-data 1
    .end array-data
.end method

.method public isSet(I)Z
    .locals 1

    .line 1629
    iget v0, p0, Lorg/apache/commons/lang3/BitField;->_mask:I

    and-int/2addr p1, v0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1

    nop

    .array-data 1
    .end array-data
.end method

.method public set(I)I
    .locals 1

    .line 2559
    iget v0, p0, Lorg/apache/commons/lang3/BitField;->_mask:I

    or-int/2addr p1, v0

    return p1

    .array-data 1
    .end array-data
.end method

.method public setBoolean(IZ)I
    .locals 0

    if-eqz p2, :cond_0

    .line 2939
    invoke-virtual {p0, p1}, Lorg/apache/commons/lang3/BitField;->set(I)I

    move-result p1

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lorg/apache/commons/lang3/BitField;->clear(I)I

    move-result p1

    :goto_0
    return p1

    .array-data 1
    .end array-data
.end method

.method public setByte(B)B
    .locals 0

    .line 2809
    invoke-virtual {p0, p1}, Lorg/apache/commons/lang3/BitField;->set(I)I

    move-result p1

    int-to-byte p1, p1

    return p1

    .array-data 1
    .end array-data
.end method

.method public setByteBoolean(BZ)B
    .locals 0

    if-eqz p2, :cond_0

    .line 3199
    invoke-virtual {p0, p1}, Lorg/apache/commons/lang3/BitField;->setByte(B)B

    move-result p1

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lorg/apache/commons/lang3/BitField;->clearByte(B)B

    move-result p1

    :goto_0
    return p1

    .array-data 1
    .end array-data
.end method

.method public setShort(S)S
    .locals 0

    .line 2679
    invoke-virtual {p0, p1}, Lorg/apache/commons/lang3/BitField;->set(I)I

    move-result p1

    int-to-short p1, p1

    return p1

    .array-data 1
    .end array-data
.end method

.method public setShortBoolean(SZ)S
    .locals 0

    if-eqz p2, :cond_0

    .line 3069
    invoke-virtual {p0, p1}, Lorg/apache/commons/lang3/BitField;->setShort(S)S

    move-result p1

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lorg/apache/commons/lang3/BitField;->clearShort(S)S

    move-result p1

    :goto_0
    return p1

    .array-data 1
    .end array-data
.end method

.method public setShortValue(SS)S
    .locals 0

    .line 2069
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/lang3/BitField;->setValue(II)I

    move-result p1

    int-to-short p1, p1

    return p1

    .array-data 1
    .end array-data
.end method

.method public setValue(II)I
    .locals 2

    .line 1929
    iget v0, p0, Lorg/apache/commons/lang3/BitField;->_mask:I

    not-int v1, v0

    and-int/2addr p1, v1

    iget v1, p0, Lorg/apache/commons/lang3/BitField;->_shift_count:I

    shl-int/2addr p2, v1

    and-int/2addr p2, v0

    or-int/2addr p1, p2

    return p1

    .array-data 1
    .end array-data
.end method
