.class public Lorg/apache/commons/lang3/ArrayUtils;
.super Ljava/lang/Object;
.source "ArrayUtils.java"


# static fields
.field public static final EMPTY_BOOLEAN_ARRAY:[Z

.field public static final EMPTY_BOOLEAN_OBJECT_ARRAY:[Ljava/lang/Boolean;

.field public static final EMPTY_BYTE_ARRAY:[B

.field public static final EMPTY_BYTE_OBJECT_ARRAY:[Ljava/lang/Byte;

.field public static final EMPTY_CHARACTER_OBJECT_ARRAY:[Ljava/lang/Character;

.field public static final EMPTY_CHAR_ARRAY:[C

.field public static final EMPTY_CLASS_ARRAY:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field public static final EMPTY_DOUBLE_ARRAY:[D

.field public static final EMPTY_DOUBLE_OBJECT_ARRAY:[Ljava/lang/Double;

.field public static final EMPTY_FLOAT_ARRAY:[F

.field public static final EMPTY_FLOAT_OBJECT_ARRAY:[Ljava/lang/Float;

.field public static final EMPTY_INTEGER_OBJECT_ARRAY:[Ljava/lang/Integer;

.field public static final EMPTY_INT_ARRAY:[I

.field public static final EMPTY_LONG_ARRAY:[J

.field public static final EMPTY_LONG_OBJECT_ARRAY:[Ljava/lang/Long;

.field public static final EMPTY_OBJECT_ARRAY:[Ljava/lang/Object;

.field public static final EMPTY_SHORT_ARRAY:[S

.field public static final EMPTY_SHORT_OBJECT_ARRAY:[Ljava/lang/Short;

.field public static final EMPTY_STRING_ARRAY:[Ljava/lang/String;

.field public static final INDEX_NOT_FOUND:I = -0x1


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    .line 519
    sput-object v1, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_OBJECT_ARRAY:[Ljava/lang/Object;

    new-array v1, v0, [Ljava/lang/Class;

    .line 559
    sput-object v1, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_CLASS_ARRAY:[Ljava/lang/Class;

    new-array v1, v0, [Ljava/lang/String;

    .line 599
    sput-object v1, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    new-array v1, v0, [J

    .line 639
    sput-object v1, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_LONG_ARRAY:[J

    new-array v1, v0, [Ljava/lang/Long;

    .line 679
    sput-object v1, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_LONG_OBJECT_ARRAY:[Ljava/lang/Long;

    new-array v1, v0, [I

    .line 719
    sput-object v1, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_INT_ARRAY:[I

    new-array v1, v0, [Ljava/lang/Integer;

    .line 759
    sput-object v1, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_INTEGER_OBJECT_ARRAY:[Ljava/lang/Integer;

    new-array v1, v0, [S

    .line 799
    sput-object v1, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_SHORT_ARRAY:[S

    new-array v1, v0, [Ljava/lang/Short;

    .line 839
    sput-object v1, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_SHORT_OBJECT_ARRAY:[Ljava/lang/Short;

    new-array v1, v0, [B

    .line 879
    sput-object v1, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_BYTE_ARRAY:[B

    new-array v1, v0, [Ljava/lang/Byte;

    .line 919
    sput-object v1, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_BYTE_OBJECT_ARRAY:[Ljava/lang/Byte;

    new-array v1, v0, [D

    .line 959
    sput-object v1, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_DOUBLE_ARRAY:[D

    new-array v1, v0, [Ljava/lang/Double;

    .line 999
    sput-object v1, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_DOUBLE_OBJECT_ARRAY:[Ljava/lang/Double;

    new-array v1, v0, [F

    .line 1039
    sput-object v1, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_FLOAT_ARRAY:[F

    new-array v1, v0, [Ljava/lang/Float;

    .line 1079
    sput-object v1, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_FLOAT_OBJECT_ARRAY:[Ljava/lang/Float;

    new-array v1, v0, [Z

    .line 1119
    sput-object v1, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_BOOLEAN_ARRAY:[Z

    new-array v1, v0, [Ljava/lang/Boolean;

    .line 1159
    sput-object v1, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_BOOLEAN_OBJECT_ARRAY:[Ljava/lang/Boolean;

    new-array v1, v0, [C

    .line 1199
    sput-object v1, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_CHAR_ARRAY:[C

    new-array v0, v0, [Ljava/lang/Character;

    .line 1239
    sput-object v0, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_CHARACTER_OBJECT_ARRAY:[Ljava/lang/Character;

    return-void

    .array-data 1
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .line 1409
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void

    .array-data 1
    .end array-data
.end method

.method private static add(Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "I",
            "Ljava/lang/Object;",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    const v0, 0x6d051030

    invoke-static {v0}, Lcom/liapp/y;->ٱڳܴڭܩ(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-nez p0, :cond_1

    if-nez p1, :cond_0

    const/4 p0, 0x1

    .line 59469
    invoke-static {p3, p0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object p0

    .line 59479
    invoke-static {p0, v1, p2}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    return-object p0

    .line 59449
    :cond_0
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, ", Length: 0"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 59509
    :cond_1
    invoke-static {p0}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v2

    if-gt p1, v2, :cond_3

    if-ltz p1, :cond_3

    add-int/lit8 v0, v2, 0x1

    .line 59549
    invoke-static {p3, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object p3

    .line 59559
    invoke-static {p0, v1, p3, v1, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 59569
    invoke-static {p3, p1, p2}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    if-ge p1, v2, :cond_2

    add-int/lit8 p2, p1, 0x1

    sub-int/2addr v2, p1

    .line 59589
    invoke-static {p0, p1, p3, p2, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_2
    return-object p3

    .line 59529
    :cond_3
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, ", Length: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0

    .array-data 1
    .end array-data
.end method

.method public static add([BB)[B
    .locals 1

    .line 54179
    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-static {p0, v0}, Lorg/apache/commons/lang3/ArrayUtils;->copyArrayGrow1(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [B

    check-cast p0, [B

    .line 54189
    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    aput-byte p1, p0, v0

    return-object p0

    .array-data 1
    .end array-data
.end method

.method public static add([BIB)[B
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 57529
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p2

    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-static {p0, p1, p2, v0}, Lorg/apache/commons/lang3/ArrayUtils;->add(Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [B

    check-cast p0, [B

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static add([CC)[C
    .locals 1

    .line 54449
    sget-object v0, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    invoke-static {p0, v0}, Lorg/apache/commons/lang3/ArrayUtils;->copyArrayGrow1(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [C

    check-cast p0, [C

    .line 54459
    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    aput-char p1, p0, v0

    return-object p0

    .array-data 1
    .end array-data
.end method

.method public static add([CIC)[C
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 57179
    invoke-static {p2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object p2

    sget-object v0, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    invoke-static {p0, p1, p2, v0}, Lorg/apache/commons/lang3/ArrayUtils;->add(Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [C

    check-cast p0, [C

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static add([DD)[D
    .locals 1

    .line 54719
    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {p0, v0}, Lorg/apache/commons/lang3/ArrayUtils;->copyArrayGrow1(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [D

    check-cast p0, [D

    .line 54729
    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    aput-wide p1, p0, v0

    return-object p0

    .array-data 1
    .end array-data
.end method

.method public static add([DID)[D
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 59279
    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    sget-object p3, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {p0, p1, p2, p3}, Lorg/apache/commons/lang3/ArrayUtils;->add(Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [D

    check-cast p0, [D

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static add([FF)[F
    .locals 1

    .line 54989
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {p0, v0}, Lorg/apache/commons/lang3/ArrayUtils;->copyArrayGrow1(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [F

    check-cast p0, [F

    .line 54999
    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    aput p1, p0, v0

    return-object p0

    .array-data 1
    .end array-data
.end method

.method public static add([FIF)[F
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 58929
    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {p0, p1, p2, v0}, Lorg/apache/commons/lang3/ArrayUtils;->add(Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [F

    check-cast p0, [F

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static add([II)[I
    .locals 1

    .line 55259
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {p0, v0}, Lorg/apache/commons/lang3/ArrayUtils;->copyArrayGrow1(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [I

    check-cast p0, [I

    .line 55269
    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    aput p1, p0, v0

    return-object p0

    .array-data 1
    .end array-data
.end method

.method public static add([III)[I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 58229
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {p0, p1, p2, v0}, Lorg/apache/commons/lang3/ArrayUtils;->add(Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [I

    check-cast p0, [I

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static add([JIJ)[J
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 58579
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    sget-object p3, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-static {p0, p1, p2, p3}, Lorg/apache/commons/lang3/ArrayUtils;->add(Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [J

    check-cast p0, [J

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static add([JJ)[J
    .locals 1

    .line 55529
    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-static {p0, v0}, Lorg/apache/commons/lang3/ArrayUtils;->copyArrayGrow1(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [J

    check-cast p0, [J

    .line 55539
    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    aput-wide p1, p0, v0

    return-object p0

    .array-data 1
    .end array-data
.end method

.method public static add([Ljava/lang/Object;ILjava/lang/Object;)[Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;ITT;)[TT;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    if-eqz p0, :cond_0

    .line 56399
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_1

    .line 56419
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 56469
    :goto_0
    invoke-static {p0, p1, p2, v0}, Lorg/apache/commons/lang3/ArrayUtils;->add(Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/Object;

    check-cast p0, [Ljava/lang/Object;

    return-object p0

    .line 56439
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Array and element cannot both be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .array-data 1
    .end array-data
.end method

.method public static add([Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;TT;)[TT;"
        }
    .end annotation

    if-eqz p0, :cond_0

    .line 53559
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    .line 53579
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 53639
    :goto_0
    invoke-static {p0, v0}, Lorg/apache/commons/lang3/ArrayUtils;->copyArrayGrow1(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/Object;

    check-cast p0, [Ljava/lang/Object;

    .line 53649
    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    aput-object p1, p0, v0

    return-object p0

    .line 53599
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Arguments cannot both be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static add([SIS)[S
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 57879
    invoke-static {p2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p2

    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-static {p0, p1, p2, v0}, Lorg/apache/commons/lang3/ArrayUtils;->add(Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [S

    check-cast p0, [S

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static add([SS)[S
    .locals 1

    .line 55799
    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-static {p0, v0}, Lorg/apache/commons/lang3/ArrayUtils;->copyArrayGrow1(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [S

    check-cast p0, [S

    .line 55809
    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    aput-short p1, p0, v0

    return-object p0

    .array-data 1
    .end array-data
.end method

.method public static add([ZIZ)[Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 56819
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {p0, p1, p2, v0}, Lorg/apache/commons/lang3/ArrayUtils;->add(Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Z

    check-cast p0, [Z

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static add([ZZ)[Z
    .locals 1

    .line 53909
    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {p0, v0}, Lorg/apache/commons/lang3/ArrayUtils;->copyArrayGrow1(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Z

    check-cast p0, [Z

    .line 53919
    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    aput-boolean p1, p0, v0

    return-object p0

    .array-data 1
    .end array-data
.end method

.method public static varargs addAll([B[B)[B
    .locals 3

    if-nez p0, :cond_0

    .line 51689
    invoke-static {p1}, Lorg/apache/commons/lang3/ArrayUtils;->clone([B)[B

    move-result-object p0

    return-object p0

    :cond_0
    if-nez p1, :cond_1

    .line 51709
    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->clone([B)[B

    move-result-object p0

    return-object p0

    .line 51729
    :cond_1
    array-length v0, p0

    array-length v1, p1

    add-int/2addr v0, v1

    new-array v0, v0, [B

    .line 51739
    array-length v1, p0

    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 51749
    array-length p0, p0

    array-length v1, p1

    invoke-static {p1, v2, v0, p0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0

    .array-data 1
    .end array-data
.end method

.method public static varargs addAll([C[C)[C
    .locals 3

    if-nez p0, :cond_0

    .line 51399
    invoke-static {p1}, Lorg/apache/commons/lang3/ArrayUtils;->clone([C)[C

    move-result-object p0

    return-object p0

    :cond_0
    if-nez p1, :cond_1

    .line 51419
    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->clone([C)[C

    move-result-object p0

    return-object p0

    .line 51439
    :cond_1
    array-length v0, p0

    array-length v1, p1

    add-int/2addr v0, v1

    new-array v0, v0, [C

    .line 51449
    array-length v1, p0

    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 51459
    array-length p0, p0

    array-length v1, p1

    invoke-static {p1, v2, v0, p0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0

    .array-data 1
    .end array-data
.end method

.method public static varargs addAll([D[D)[D
    .locals 3

    if-nez p0, :cond_0

    .line 53139
    invoke-static {p1}, Lorg/apache/commons/lang3/ArrayUtils;->clone([D)[D

    move-result-object p0

    return-object p0

    :cond_0
    if-nez p1, :cond_1

    .line 53159
    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->clone([D)[D

    move-result-object p0

    return-object p0

    .line 53179
    :cond_1
    array-length v0, p0

    array-length v1, p1

    add-int/2addr v0, v1

    new-array v0, v0, [D

    .line 53189
    array-length v1, p0

    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 53199
    array-length p0, p0

    array-length v1, p1

    invoke-static {p1, v2, v0, p0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0

    .array-data 1
    .end array-data
.end method

.method public static varargs addAll([F[F)[F
    .locals 3

    if-nez p0, :cond_0

    .line 52849
    invoke-static {p1}, Lorg/apache/commons/lang3/ArrayUtils;->clone([F)[F

    move-result-object p0

    return-object p0

    :cond_0
    if-nez p1, :cond_1

    .line 52869
    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->clone([F)[F

    move-result-object p0

    return-object p0

    .line 52889
    :cond_1
    array-length v0, p0

    array-length v1, p1

    add-int/2addr v0, v1

    new-array v0, v0, [F

    .line 52899
    array-length v1, p0

    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 52909
    array-length p0, p0

    array-length v1, p1

    invoke-static {p1, v2, v0, p0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0

    .array-data 1
    .end array-data
.end method

.method public static varargs addAll([I[I)[I
    .locals 3

    if-nez p0, :cond_0

    .line 52269
    invoke-static {p1}, Lorg/apache/commons/lang3/ArrayUtils;->clone([I)[I

    move-result-object p0

    return-object p0

    :cond_0
    if-nez p1, :cond_1

    .line 52289
    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->clone([I)[I

    move-result-object p0

    return-object p0

    .line 52309
    :cond_1
    array-length v0, p0

    array-length v1, p1

    add-int/2addr v0, v1

    new-array v0, v0, [I

    .line 52319
    array-length v1, p0

    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 52329
    array-length p0, p0

    array-length v1, p1

    invoke-static {p1, v2, v0, p0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0

    .array-data 1
    .end array-data
.end method

.method public static varargs addAll([J[J)[J
    .locals 3

    if-nez p0, :cond_0

    .line 52559
    invoke-static {p1}, Lorg/apache/commons/lang3/ArrayUtils;->clone([J)[J

    move-result-object p0

    return-object p0

    :cond_0
    if-nez p1, :cond_1

    .line 52579
    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->clone([J)[J

    move-result-object p0

    return-object p0

    .line 52599
    :cond_1
    array-length v0, p0

    array-length v1, p1

    add-int/2addr v0, v1

    new-array v0, v0, [J

    .line 52609
    array-length v1, p0

    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 52619
    array-length p0, p0

    array-length v1, p1

    invoke-static {p1, v2, v0, p0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0

    .array-data 1
    .end array-data
.end method

.method public static varargs addAll([Ljava/lang/Object;[Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;[TT;)[TT;"
        }
    .end annotation

    if-nez p0, :cond_0

    .line 50649
    invoke-static {p1}, Lorg/apache/commons/lang3/ArrayUtils;->clone([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_0
    if-nez p1, :cond_1

    .line 50669
    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->clone([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 50689
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    .line 50709
    array-length v1, p0

    array-length v2, p1

    add-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Object;

    check-cast v1, [Ljava/lang/Object;

    .line 50719
    array-length v2, p0

    const/4 v3, 0x0

    invoke-static {p0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 50739
    :try_start_0
    array-length p0, p0

    array-length v2, p1

    invoke-static {p1, v3, v1, p0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_0
    .catch Ljava/lang/ArrayStoreException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception p0

    .line 50819
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object p1

    .line 50829
    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 50839
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const v3, 0x336baae3

    invoke-static {v3}, Lcom/liapp/y;->ׯ״ٲ֬ب(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const v2, -0x4510618f

    invoke-static {v2}, Lcom/liapp/y;->ڳݬ٬ۮݪ(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 50849
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 50869
    :cond_2
    throw p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static varargs addAll([S[S)[S
    .locals 3

    if-nez p0, :cond_0

    .line 51979
    invoke-static {p1}, Lorg/apache/commons/lang3/ArrayUtils;->clone([S)[S

    move-result-object p0

    return-object p0

    :cond_0
    if-nez p1, :cond_1

    .line 51999
    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->clone([S)[S

    move-result-object p0

    return-object p0

    .line 52019
    :cond_1
    array-length v0, p0

    array-length v1, p1

    add-int/2addr v0, v1

    new-array v0, v0, [S

    .line 52029
    array-length v1, p0

    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 52039
    array-length p0, p0

    array-length v1, p1

    invoke-static {p1, v2, v0, p0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0

    .array-data 1
    .end array-data
.end method

.method public static varargs addAll([Z[Z)[Z
    .locals 3

    if-nez p0, :cond_0

    .line 51109
    invoke-static {p1}, Lorg/apache/commons/lang3/ArrayUtils;->clone([Z)[Z

    move-result-object p0

    return-object p0

    :cond_0
    if-nez p1, :cond_1

    .line 51129
    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->clone([Z)[Z

    move-result-object p0

    return-object p0

    .line 51149
    :cond_1
    array-length v0, p0

    array-length v1, p1

    add-int/2addr v0, v1

    new-array v0, v0, [Z

    .line 51159
    array-length v1, p0

    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 51169
    array-length p0, p0

    array-length v1, p1

    invoke-static {p1, v2, v0, p0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0

    .array-data 1
    .end array-data
.end method

.method public static clone([B)[B
    .locals 0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 4089
    :cond_0
    invoke-virtual {p0}, [B->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [B

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static clone([C)[C
    .locals 0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 3929
    :cond_0
    invoke-virtual {p0}, [C->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [C

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static clone([D)[D
    .locals 0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 4249
    :cond_0
    invoke-virtual {p0}, [D->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [D

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static clone([F)[F
    .locals 0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 4409
    :cond_0
    invoke-virtual {p0}, [F->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [F

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static clone([I)[I
    .locals 0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 3609
    :cond_0
    invoke-virtual {p0}, [I->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [I

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static clone([J)[J
    .locals 0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 3449
    :cond_0
    invoke-virtual {p0}, [J->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [J

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static clone([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 3289
    :cond_0
    invoke-virtual {p0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/Object;

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static clone([S)[S
    .locals 0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 3769
    :cond_0
    invoke-virtual {p0}, [S->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [S

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static clone([Z)[Z
    .locals 0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 4569
    :cond_0
    invoke-virtual {p0}, [Z->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Z

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static contains([BB)Z
    .locals 0

    .line 38229
    invoke-static {p0, p1}, Lorg/apache/commons/lang3/ArrayUtils;->indexOf([BB)I

    move-result p0

    const/4 p1, -0x1

    if-eq p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static contains([CC)Z
    .locals 0

    .line 37199
    invoke-static {p0, p1}, Lorg/apache/commons/lang3/ArrayUtils;->indexOf([CC)I

    move-result p0

    const/4 p1, -0x1

    if-eq p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static contains([DD)Z
    .locals 0

    .line 40299
    invoke-static {p0, p1, p2}, Lorg/apache/commons/lang3/ArrayUtils;->indexOf([DD)I

    move-result p0

    const/4 p1, -0x1

    if-eq p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static contains([DDD)Z
    .locals 6

    const/4 v3, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-wide v4, p3

    .line 40469
    invoke-static/range {v0 .. v5}, Lorg/apache/commons/lang3/ArrayUtils;->indexOf([DDID)I

    move-result p0

    const/4 p1, -0x1

    if-eq p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static contains([FF)Z
    .locals 0

    .line 41499
    invoke-static {p0, p1}, Lorg/apache/commons/lang3/ArrayUtils;->indexOf([FF)I

    move-result p0

    const/4 p1, -0x1

    if-eq p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static contains([II)Z
    .locals 0

    .line 35089
    invoke-static {p0, p1}, Lorg/apache/commons/lang3/ArrayUtils;->indexOf([II)I

    move-result p0

    const/4 p1, -0x1

    if-eq p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static contains([JJ)Z
    .locals 0

    .line 34059
    invoke-static {p0, p1, p2}, Lorg/apache/commons/lang3/ArrayUtils;->indexOf([JJ)I

    move-result p0

    const/4 p1, -0x1

    if-eq p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static contains([Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    .line 33029
    invoke-static {p0, p1}, Lorg/apache/commons/lang3/ArrayUtils;->indexOf([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p0

    const/4 p1, -0x1

    if-eq p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static contains([SS)Z
    .locals 0

    .line 36119
    invoke-static {p0, p1}, Lorg/apache/commons/lang3/ArrayUtils;->indexOf([SS)I

    move-result p0

    const/4 p1, -0x1

    if-eq p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static contains([ZZ)Z
    .locals 0

    .line 42549
    invoke-static {p0, p1}, Lorg/apache/commons/lang3/ArrayUtils;->indexOf([ZZ)I

    move-result p0

    const/4 p1, -0x1

    if-eq p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0

    nop

    .array-data 1
    .end array-data
.end method

.method private static copyArrayGrow1(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    if-eqz p0, :cond_0

    .line 55959
    invoke-static {p0}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result p1

    .line 55969
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    add-int/lit8 v1, p1, 0x1

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    .line 55979
    invoke-static {p0, v1, v0, v1, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0

    :cond_0
    const/4 p0, 0x1

    .line 56009
    invoke-static {p1, p0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static getLength(Ljava/lang/Object;)I
    .locals 0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 13879
    :cond_0
    invoke-static {p0}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result p0

    return p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static hashCode(Ljava/lang/Object;)I
    .locals 1

    .line 1929
    new-instance v0, Lorg/apache/commons/lang3/builder/HashCodeBuilder;

    invoke-direct {v0}, Lorg/apache/commons/lang3/builder/HashCodeBuilder;-><init>()V

    invoke-virtual {v0, p0}, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->append(Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/HashCodeBuilder;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->toHashCode()I

    move-result p0

    return p0

    .array-data 1
    .end array-data
.end method

.method public static indexOf([BB)I
    .locals 1

    const/4 v0, 0x0

    .line 37359
    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang3/ArrayUtils;->indexOf([BBI)I

    move-result p0

    return p0

    .array-data 1
    .end array-data
.end method

.method public static indexOf([BBI)I
    .locals 2

    const/4 v0, -0x1

    if-nez p0, :cond_0

    return v0

    :cond_0
    if-gez p2, :cond_1

    const/4 p2, 0x0

    .line 37599
    :cond_1
    :goto_0
    array-length v1, p0

    if-ge p2, v1, :cond_3

    .line 37609
    aget-byte v1, p0, p2

    if-ne p1, v1, :cond_2

    return p2

    :cond_2
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_3
    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public static indexOf([CC)I
    .locals 1

    const/4 v0, 0x0

    .line 36289
    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang3/ArrayUtils;->indexOf([CCI)I

    move-result p0

    return p0

    .array-data 1
    .end array-data
.end method

.method public static indexOf([CCI)I
    .locals 2

    const/4 v0, -0x1

    if-nez p0, :cond_0

    return v0

    :cond_0
    if-gez p2, :cond_1

    const/4 p2, 0x0

    .line 36539
    :cond_1
    :goto_0
    array-length v1, p0

    if-ge p2, v1, :cond_3

    .line 36549
    aget-char v1, p0, p2

    if-ne p1, v1, :cond_2

    return p2

    :cond_2
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_3
    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public static indexOf([DD)I
    .locals 1

    const/4 v0, 0x0

    .line 38389
    invoke-static {p0, p1, p2, v0}, Lorg/apache/commons/lang3/ArrayUtils;->indexOf([DDI)I

    move-result p0

    return p0

    .array-data 1
    .end array-data
.end method

.method public static indexOf([DDD)I
    .locals 6

    const/4 v3, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-wide v4, p3

    .line 38559
    invoke-static/range {v0 .. v5}, Lorg/apache/commons/lang3/ArrayUtils;->indexOf([DDID)I

    move-result p0

    return p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static indexOf([DDI)I
    .locals 4

    .line 38739
    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->isEmpty([D)Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    if-gez p3, :cond_1

    const/4 p3, 0x0

    .line 38799
    :cond_1
    :goto_0
    array-length v0, p0

    if-ge p3, v0, :cond_3

    .line 38809
    aget-wide v2, p0, p3

    cmpl-double v0, p1, v2

    if-nez v0, :cond_2

    return p3

    :cond_2
    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_3
    return v1

    nop

    .array-data 1
    .end array-data
.end method

.method public static indexOf([DDID)I
    .locals 4

    .line 39059
    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->isEmpty([D)Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    if-gez p3, :cond_1

    const/4 p3, 0x0

    :cond_1
    sub-double v2, p1, p4

    add-double/2addr p1, p4

    .line 39139
    :goto_0
    array-length p4, p0

    if-ge p3, p4, :cond_3

    .line 39149
    aget-wide p4, p0, p3

    cmpl-double v0, p4, v2

    if-ltz v0, :cond_2

    cmpg-double p4, p4, p1

    if-gtz p4, :cond_2

    return p3

    :cond_2
    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_3
    return v1

    .array-data 1
    .end array-data
.end method

.method public static indexOf([FF)I
    .locals 1

    const/4 v0, 0x0

    .line 40629
    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang3/ArrayUtils;->indexOf([FFI)I

    move-result p0

    return p0

    .array-data 1
    .end array-data
.end method

.method public static indexOf([FFI)I
    .locals 2

    .line 40809
    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->isEmpty([F)Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    if-gez p2, :cond_1

    const/4 p2, 0x0

    .line 40869
    :cond_1
    :goto_0
    array-length v0, p0

    if-ge p2, v0, :cond_3

    .line 40879
    aget v0, p0, p2

    cmpl-float v0, p1, v0

    if-nez v0, :cond_2

    return p2

    :cond_2
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_3
    return v1

    nop

    .array-data 1
    .end array-data
.end method

.method public static indexOf([II)I
    .locals 1

    const/4 v0, 0x0

    .line 34219
    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang3/ArrayUtils;->indexOf([III)I

    move-result p0

    return p0

    .array-data 1
    .end array-data
.end method

.method public static indexOf([III)I
    .locals 2

    const/4 v0, -0x1

    if-nez p0, :cond_0

    return v0

    :cond_0
    if-gez p2, :cond_1

    const/4 p2, 0x0

    .line 34459
    :cond_1
    :goto_0
    array-length v1, p0

    if-ge p2, v1, :cond_3

    .line 34469
    aget v1, p0, p2

    if-ne p1, v1, :cond_2

    return p2

    :cond_2
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_3
    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public static indexOf([JJ)I
    .locals 1

    const/4 v0, 0x0

    .line 33189
    invoke-static {p0, p1, p2, v0}, Lorg/apache/commons/lang3/ArrayUtils;->indexOf([JJI)I

    move-result p0

    return p0

    .array-data 1
    .end array-data
.end method

.method public static indexOf([JJI)I
    .locals 3

    const/4 v0, -0x1

    if-nez p0, :cond_0

    return v0

    :cond_0
    if-gez p3, :cond_1

    const/4 p3, 0x0

    .line 33429
    :cond_1
    :goto_0
    array-length v1, p0

    if-ge p3, v1, :cond_3

    .line 33439
    aget-wide v1, p0, p3

    cmp-long v1, p1, v1

    if-nez v1, :cond_2

    return p3

    :cond_2
    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_3
    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public static indexOf([Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    const/4 v0, 0x0

    .line 31999
    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang3/ArrayUtils;->indexOf([Ljava/lang/Object;Ljava/lang/Object;I)I

    move-result p0

    return p0

    .array-data 1
    .end array-data
.end method

.method public static indexOf([Ljava/lang/Object;Ljava/lang/Object;I)I
    .locals 2

    const/4 v0, -0x1

    if-nez p0, :cond_0

    return v0

    :cond_0
    if-gez p2, :cond_1

    const/4 p2, 0x0

    :cond_1
    if-nez p1, :cond_3

    .line 32249
    :goto_0
    array-length p1, p0

    if-ge p2, p1, :cond_5

    .line 32259
    aget-object p1, p0, p2

    if-nez p1, :cond_2

    return p2

    :cond_2
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 32309
    :cond_3
    :goto_1
    array-length v1, p0

    if-ge p2, v1, :cond_5

    .line 32319
    aget-object v1, p0, p2

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    return p2

    :cond_4
    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_5
    return v0

    .array-data 1
    .end array-data
.end method

.method public static indexOf([SS)I
    .locals 1

    const/4 v0, 0x0

    .line 35249
    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang3/ArrayUtils;->indexOf([SSI)I

    move-result p0

    return p0

    .array-data 1
    .end array-data
.end method

.method public static indexOf([SSI)I
    .locals 2

    const/4 v0, -0x1

    if-nez p0, :cond_0

    return v0

    :cond_0
    if-gez p2, :cond_1

    const/4 p2, 0x0

    .line 35489
    :cond_1
    :goto_0
    array-length v1, p0

    if-ge p2, v1, :cond_3

    .line 35499
    aget-short v1, p0, p2

    if-ne p1, v1, :cond_2

    return p2

    :cond_2
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_3
    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public static indexOf([ZZ)I
    .locals 1

    const/4 v0, 0x0

    .line 41659
    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang3/ArrayUtils;->indexOf([ZZI)I

    move-result p0

    return p0

    .array-data 1
    .end array-data
.end method

.method public static indexOf([ZZI)I
    .locals 2

    .line 41849
    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->isEmpty([Z)Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    if-gez p2, :cond_1

    const/4 p2, 0x0

    .line 41909
    :cond_1
    :goto_0
    array-length v0, p0

    if-ge p2, v0, :cond_3

    .line 41919
    aget-boolean v0, p0, p2

    if-ne p1, v0, :cond_2

    return p2

    :cond_2
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_3
    return v1

    nop

    .array-data 1
    .end array-data
.end method

.method public static varargs insert(I[B[B)[B
    .locals 3

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    if-eqz p2, :cond_5

    .line 81259
    array-length v0, p2

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    if-ltz p0, :cond_4

    .line 81289
    array-length v0, p1

    if-gt p0, v0, :cond_4

    .line 81329
    array-length v0, p1

    array-length v1, p2

    add-int/2addr v0, v1

    new-array v0, v0, [B

    .line 81349
    array-length v1, p2

    const/4 v2, 0x0

    invoke-static {p2, v2, v0, p0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    if-lez p0, :cond_2

    .line 81369
    invoke-static {p1, v2, v0, v2, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 81389
    :cond_2
    array-length v1, p1

    if-ge p0, v1, :cond_3

    .line 81399
    array-length p2, p2

    add-int/2addr p2, p0

    array-length v1, p1

    sub-int/2addr v1, p0

    invoke-static {p1, p0, v0, p2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_3
    return-object v0

    .line 81299
    :cond_4
    new-instance p2, Ljava/lang/IndexOutOfBoundsException;

    new-instance v0, Ljava/lang/StringBuilder;

    const v1, 0x6d051030

    invoke-static {v1}, Lcom/liapp/y;->ٱڳܴڭܩ(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const v0, -0x4510601f

    invoke-static {v0}, Lcom/liapp/y;->ڳݬ٬ۮݪ(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    array-length p1, p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 81269
    :cond_5
    :goto_0
    invoke-static {p1}, Lorg/apache/commons/lang3/ArrayUtils;->clone([B)[B

    move-result-object p0

    return-object p0

    .array-data 1
    .end array-data
.end method

.method public static varargs insert(I[C[C)[C
    .locals 3

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    if-eqz p2, :cond_5

    .line 81679
    array-length v0, p2

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    if-ltz p0, :cond_4

    .line 81709
    array-length v0, p1

    if-gt p0, v0, :cond_4

    .line 81749
    array-length v0, p1

    array-length v1, p2

    add-int/2addr v0, v1

    new-array v0, v0, [C

    .line 81769
    array-length v1, p2

    const/4 v2, 0x0

    invoke-static {p2, v2, v0, p0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    if-lez p0, :cond_2

    .line 81789
    invoke-static {p1, v2, v0, v2, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 81809
    :cond_2
    array-length v1, p1

    if-ge p0, v1, :cond_3

    .line 81819
    array-length p2, p2

    add-int/2addr p2, p0

    array-length v1, p1

    sub-int/2addr v1, p0

    invoke-static {p1, p0, v0, p2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_3
    return-object v0

    .line 81719
    :cond_4
    new-instance p2, Ljava/lang/IndexOutOfBoundsException;

    new-instance v0, Ljava/lang/StringBuilder;

    const v1, 0x6d051030

    invoke-static {v1}, Lcom/liapp/y;->ٱڳܴڭܩ(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const v0, -0x4510601f

    invoke-static {v0}, Lcom/liapp/y;->ڳݬ٬ۮݪ(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    array-length p1, p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 81689
    :cond_5
    :goto_0
    invoke-static {p1}, Lorg/apache/commons/lang3/ArrayUtils;->clone([C)[C

    move-result-object p0

    return-object p0

    .array-data 1
    .end array-data
.end method

.method public static varargs insert(I[D[D)[D
    .locals 3

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    if-eqz p2, :cond_5

    .line 82099
    array-length v0, p2

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    if-ltz p0, :cond_4

    .line 82129
    array-length v0, p1

    if-gt p0, v0, :cond_4

    .line 82169
    array-length v0, p1

    array-length v1, p2

    add-int/2addr v0, v1

    new-array v0, v0, [D

    .line 82189
    array-length v1, p2

    const/4 v2, 0x0

    invoke-static {p2, v2, v0, p0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    if-lez p0, :cond_2

    .line 82209
    invoke-static {p1, v2, v0, v2, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 82229
    :cond_2
    array-length v1, p1

    if-ge p0, v1, :cond_3

    .line 82239
    array-length p2, p2

    add-int/2addr p2, p0

    array-length v1, p1

    sub-int/2addr v1, p0

    invoke-static {p1, p0, v0, p2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_3
    return-object v0

    .line 82139
    :cond_4
    new-instance p2, Ljava/lang/IndexOutOfBoundsException;

    new-instance v0, Ljava/lang/StringBuilder;

    const v1, 0x6d051030

    invoke-static {v1}, Lcom/liapp/y;->ٱڳܴڭܩ(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const v0, -0x4510601f

    invoke-static {v0}, Lcom/liapp/y;->ڳݬ٬ۮݪ(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    array-length p1, p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 82109
    :cond_5
    :goto_0
    invoke-static {p1}, Lorg/apache/commons/lang3/ArrayUtils;->clone([D)[D

    move-result-object p0

    return-object p0

    .array-data 1
    .end array-data
.end method

.method public static varargs insert(I[F[F)[F
    .locals 3

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    if-eqz p2, :cond_5

    .line 82519
    array-length v0, p2

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    if-ltz p0, :cond_4

    .line 82549
    array-length v0, p1

    if-gt p0, v0, :cond_4

    .line 82589
    array-length v0, p1

    array-length v1, p2

    add-int/2addr v0, v1

    new-array v0, v0, [F

    .line 82609
    array-length v1, p2

    const/4 v2, 0x0

    invoke-static {p2, v2, v0, p0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    if-lez p0, :cond_2

    .line 82629
    invoke-static {p1, v2, v0, v2, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 82649
    :cond_2
    array-length v1, p1

    if-ge p0, v1, :cond_3

    .line 82659
    array-length p2, p2

    add-int/2addr p2, p0

    array-length v1, p1

    sub-int/2addr v1, p0

    invoke-static {p1, p0, v0, p2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_3
    return-object v0

    .line 82559
    :cond_4
    new-instance p2, Ljava/lang/IndexOutOfBoundsException;

    new-instance v0, Ljava/lang/StringBuilder;

    const v1, 0x6d051030

    invoke-static {v1}, Lcom/liapp/y;->ٱڳܴڭܩ(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const v0, -0x4510601f

    invoke-static {v0}, Lcom/liapp/y;->ڳݬ٬ۮݪ(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    array-length p1, p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 82529
    :cond_5
    :goto_0
    invoke-static {p1}, Lorg/apache/commons/lang3/ArrayUtils;->clone([F)[F

    move-result-object p0

    return-object p0

    .array-data 1
    .end array-data
.end method

.method public static varargs insert(I[I[I)[I
    .locals 3

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    if-eqz p2, :cond_5

    .line 82939
    array-length v0, p2

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    if-ltz p0, :cond_4

    .line 82969
    array-length v0, p1

    if-gt p0, v0, :cond_4

    .line 83009
    array-length v0, p1

    array-length v1, p2

    add-int/2addr v0, v1

    new-array v0, v0, [I

    .line 83029
    array-length v1, p2

    const/4 v2, 0x0

    invoke-static {p2, v2, v0, p0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    if-lez p0, :cond_2

    .line 83049
    invoke-static {p1, v2, v0, v2, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 83069
    :cond_2
    array-length v1, p1

    if-ge p0, v1, :cond_3

    .line 83079
    array-length p2, p2

    add-int/2addr p2, p0

    array-length v1, p1

    sub-int/2addr v1, p0

    invoke-static {p1, p0, v0, p2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_3
    return-object v0

    .line 82979
    :cond_4
    new-instance p2, Ljava/lang/IndexOutOfBoundsException;

    new-instance v0, Ljava/lang/StringBuilder;

    const v1, 0x6d051030

    invoke-static {v1}, Lcom/liapp/y;->ٱڳܴڭܩ(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const v0, -0x4510601f

    invoke-static {v0}, Lcom/liapp/y;->ڳݬ٬ۮݪ(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    array-length p1, p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 82949
    :cond_5
    :goto_0
    invoke-static {p1}, Lorg/apache/commons/lang3/ArrayUtils;->clone([I)[I

    move-result-object p0

    return-object p0

    .array-data 1
    .end array-data
.end method

.method public static varargs insert(I[J[J)[J
    .locals 3

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    if-eqz p2, :cond_5

    .line 83359
    array-length v0, p2

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    if-ltz p0, :cond_4

    .line 83389
    array-length v0, p1

    if-gt p0, v0, :cond_4

    .line 83429
    array-length v0, p1

    array-length v1, p2

    add-int/2addr v0, v1

    new-array v0, v0, [J

    .line 83449
    array-length v1, p2

    const/4 v2, 0x0

    invoke-static {p2, v2, v0, p0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    if-lez p0, :cond_2

    .line 83469
    invoke-static {p1, v2, v0, v2, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 83489
    :cond_2
    array-length v1, p1

    if-ge p0, v1, :cond_3

    .line 83499
    array-length p2, p2

    add-int/2addr p2, p0

    array-length v1, p1

    sub-int/2addr v1, p0

    invoke-static {p1, p0, v0, p2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_3
    return-object v0

    .line 83399
    :cond_4
    new-instance p2, Ljava/lang/IndexOutOfBoundsException;

    new-instance v0, Ljava/lang/StringBuilder;

    const v1, 0x6d051030

    invoke-static {v1}, Lcom/liapp/y;->ٱڳܴڭܩ(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const v0, -0x4510601f

    invoke-static {v0}, Lcom/liapp/y;->ڳݬ٬ۮݪ(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    array-length p1, p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 83369
    :cond_5
    :goto_0
    invoke-static {p1}, Lorg/apache/commons/lang3/ArrayUtils;->clone([J)[J

    move-result-object p0

    return-object p0

    .array-data 1
    .end array-data
.end method

.method public static varargs insert(I[Ljava/lang/Object;[Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(I[TT;[TT;)[TT;"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    if-eqz p2, :cond_5

    .line 84299
    array-length v0, p2

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    if-ltz p0, :cond_4

    .line 84329
    array-length v0, p1

    if-gt p0, v0, :cond_4

    .line 84369
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    .line 84399
    array-length v1, p1

    array-length v2, p2

    add-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    .line 84419
    array-length v1, p2

    const/4 v2, 0x0

    invoke-static {p2, v2, v0, p0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    if-lez p0, :cond_2

    .line 84439
    invoke-static {p1, v2, v0, v2, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 84459
    :cond_2
    array-length v1, p1

    if-ge p0, v1, :cond_3

    .line 84469
    array-length p2, p2

    add-int/2addr p2, p0

    array-length v1, p1

    sub-int/2addr v1, p0

    invoke-static {p1, p0, v0, p2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_3
    return-object v0

    .line 84339
    :cond_4
    new-instance p2, Ljava/lang/IndexOutOfBoundsException;

    new-instance v0, Ljava/lang/StringBuilder;

    const v1, 0x6d051030

    invoke-static {v1}, Lcom/liapp/y;->ٱڳܴڭܩ(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const v0, -0x4510601f

    invoke-static {v0}, Lcom/liapp/y;->ڳݬ٬ۮݪ(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    array-length p1, p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 84309
    :cond_5
    :goto_0
    invoke-static {p1}, Lorg/apache/commons/lang3/ArrayUtils;->clone([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .array-data 1
    .end array-data
.end method

.method public static varargs insert(I[S[S)[S
    .locals 3

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    if-eqz p2, :cond_5

    .line 83779
    array-length v0, p2

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    if-ltz p0, :cond_4

    .line 83809
    array-length v0, p1

    if-gt p0, v0, :cond_4

    .line 83849
    array-length v0, p1

    array-length v1, p2

    add-int/2addr v0, v1

    new-array v0, v0, [S

    .line 83869
    array-length v1, p2

    const/4 v2, 0x0

    invoke-static {p2, v2, v0, p0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    if-lez p0, :cond_2

    .line 83889
    invoke-static {p1, v2, v0, v2, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 83909
    :cond_2
    array-length v1, p1

    if-ge p0, v1, :cond_3

    .line 83919
    array-length p2, p2

    add-int/2addr p2, p0

    array-length v1, p1

    sub-int/2addr v1, p0

    invoke-static {p1, p0, v0, p2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_3
    return-object v0

    .line 83819
    :cond_4
    new-instance p2, Ljava/lang/IndexOutOfBoundsException;

    new-instance v0, Ljava/lang/StringBuilder;

    const v1, 0x6d051030

    invoke-static {v1}, Lcom/liapp/y;->ٱڳܴڭܩ(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const v0, -0x4510601f

    invoke-static {v0}, Lcom/liapp/y;->ڳݬ٬ۮݪ(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    array-length p1, p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 83789
    :cond_5
    :goto_0
    invoke-static {p1}, Lorg/apache/commons/lang3/ArrayUtils;->clone([S)[S

    move-result-object p0

    return-object p0

    .array-data 1
    .end array-data
.end method

.method public static varargs insert(I[Z[Z)[Z
    .locals 3

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    if-eqz p2, :cond_5

    .line 80839
    array-length v0, p2

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    if-ltz p0, :cond_4

    .line 80869
    array-length v0, p1

    if-gt p0, v0, :cond_4

    .line 80909
    array-length v0, p1

    array-length v1, p2

    add-int/2addr v0, v1

    new-array v0, v0, [Z

    .line 80929
    array-length v1, p2

    const/4 v2, 0x0

    invoke-static {p2, v2, v0, p0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    if-lez p0, :cond_2

    .line 80949
    invoke-static {p1, v2, v0, v2, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 80969
    :cond_2
    array-length v1, p1

    if-ge p0, v1, :cond_3

    .line 80979
    array-length p2, p2

    add-int/2addr p2, p0

    array-length v1, p1

    sub-int/2addr v1, p0

    invoke-static {p1, p0, v0, p2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_3
    return-object v0

    .line 80879
    :cond_4
    new-instance p2, Ljava/lang/IndexOutOfBoundsException;

    new-instance v0, Ljava/lang/StringBuilder;

    const v1, 0x6d051030

    invoke-static {v1}, Lcom/liapp/y;->ٱڳܴڭܩ(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const v0, -0x4510601f

    invoke-static {v0}, Lcom/liapp/y;->ڳݬ٬ۮݪ(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    array-length p1, p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 80849
    :cond_5
    :goto_0
    invoke-static {p1}, Lorg/apache/commons/lang3/ArrayUtils;->clone([Z)[Z

    move-result-object p0

    return-object p0

    .array-data 1
    .end array-data
.end method

.method public static isArrayIndexValid([Ljava/lang/Object;I)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;I)Z"
        }
    .end annotation

    .line 86859
    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->getLength(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    array-length p0, p0

    if-gt p0, p1, :cond_0

    goto :goto_0

    :cond_0
    if-ltz p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    :goto_0
    return v1

    nop

    .array-data 1
    .end array-data
.end method

.method public static isEmpty([B)Z
    .locals 0

    .line 49019
    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->getLength(Ljava/lang/Object;)I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0

    .array-data 1
    .end array-data
.end method

.method public static isEmpty([C)Z
    .locals 0

    .line 48909
    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->getLength(Ljava/lang/Object;)I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0

    .array-data 1
    .end array-data
.end method

.method public static isEmpty([D)Z
    .locals 0

    .line 49129
    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->getLength(Ljava/lang/Object;)I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0

    .array-data 1
    .end array-data
.end method

.method public static isEmpty([F)Z
    .locals 0

    .line 49239
    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->getLength(Ljava/lang/Object;)I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0

    .array-data 1
    .end array-data
.end method

.method public static isEmpty([I)Z
    .locals 0

    .line 48689
    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->getLength(Ljava/lang/Object;)I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0

    .array-data 1
    .end array-data
.end method

.method public static isEmpty([J)Z
    .locals 0

    .line 48579
    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->getLength(Ljava/lang/Object;)I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0

    .array-data 1
    .end array-data
.end method

.method public static isEmpty([Ljava/lang/Object;)Z
    .locals 0

    .line 48469
    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->getLength(Ljava/lang/Object;)I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0

    .array-data 1
    .end array-data
.end method

.method public static isEmpty([S)Z
    .locals 0

    .line 48799
    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->getLength(Ljava/lang/Object;)I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0

    .array-data 1
    .end array-data
.end method

.method public static isEmpty([Z)Z
    .locals 0

    .line 49349
    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->getLength(Ljava/lang/Object;)I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0

    .array-data 1
    .end array-data
.end method

.method public static isEquals(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2099
    new-instance v0, Lorg/apache/commons/lang3/builder/EqualsBuilder;

    invoke-direct {v0}, Lorg/apache/commons/lang3/builder/EqualsBuilder;-><init>()V

    invoke-virtual {v0, p0, p1}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->append(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/EqualsBuilder;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->isEquals()Z

    move-result p0

    return p0

    .array-data 1
    .end array-data
.end method

.method public static isNotEmpty([B)Z
    .locals 0

    .line 50029
    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->isEmpty([B)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static isNotEmpty([C)Z
    .locals 0

    .line 49919
    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->isEmpty([C)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static isNotEmpty([D)Z
    .locals 0

    .line 50139
    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->isEmpty([D)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static isNotEmpty([F)Z
    .locals 0

    .line 50249
    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->isEmpty([F)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static isNotEmpty([I)Z
    .locals 0

    .line 49699
    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->isEmpty([I)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static isNotEmpty([J)Z
    .locals 0

    .line 49589
    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->isEmpty([J)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static isNotEmpty([Ljava/lang/Object;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)Z"
        }
    .end annotation

    .line 49479
    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static isNotEmpty([S)Z
    .locals 0

    .line 49809
    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->isEmpty([S)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static isNotEmpty([Z)Z
    .locals 0

    .line 50359
    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->isEmpty([Z)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static isSameLength([B[B)Z
    .locals 0

    .line 13209
    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->getLength(Ljava/lang/Object;)I

    move-result p0

    invoke-static {p1}, Lorg/apache/commons/lang3/ArrayUtils;->getLength(Ljava/lang/Object;)I

    move-result p1

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0

    .array-data 1
    .end array-data
.end method

.method public static isSameLength([C[C)Z
    .locals 0

    .line 13079
    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->getLength(Ljava/lang/Object;)I

    move-result p0

    invoke-static {p1}, Lorg/apache/commons/lang3/ArrayUtils;->getLength(Ljava/lang/Object;)I

    move-result p1

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0

    .array-data 1
    .end array-data
.end method

.method public static isSameLength([D[D)Z
    .locals 0

    .line 13339
    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->getLength(Ljava/lang/Object;)I

    move-result p0

    invoke-static {p1}, Lorg/apache/commons/lang3/ArrayUtils;->getLength(Ljava/lang/Object;)I

    move-result p1

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0

    .array-data 1
    .end array-data
.end method

.method public static isSameLength([F[F)Z
    .locals 0

    .line 13469
    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->getLength(Ljava/lang/Object;)I

    move-result p0

    invoke-static {p1}, Lorg/apache/commons/lang3/ArrayUtils;->getLength(Ljava/lang/Object;)I

    move-result p1

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0

    .array-data 1
    .end array-data
.end method

.method public static isSameLength([I[I)Z
    .locals 0

    .line 12819
    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->getLength(Ljava/lang/Object;)I

    move-result p0

    invoke-static {p1}, Lorg/apache/commons/lang3/ArrayUtils;->getLength(Ljava/lang/Object;)I

    move-result p1

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0

    .array-data 1
    .end array-data
.end method

.method public static isSameLength([J[J)Z
    .locals 0

    .line 12689
    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->getLength(Ljava/lang/Object;)I

    move-result p0

    invoke-static {p1}, Lorg/apache/commons/lang3/ArrayUtils;->getLength(Ljava/lang/Object;)I

    move-result p1

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0

    .array-data 1
    .end array-data
.end method

.method public static isSameLength([Ljava/lang/Object;[Ljava/lang/Object;)Z
    .locals 0

    .line 12559
    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->getLength(Ljava/lang/Object;)I

    move-result p0

    invoke-static {p1}, Lorg/apache/commons/lang3/ArrayUtils;->getLength(Ljava/lang/Object;)I

    move-result p1

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0

    .array-data 1
    .end array-data
.end method

.method public static isSameLength([S[S)Z
    .locals 0

    .line 12949
    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->getLength(Ljava/lang/Object;)I

    move-result p0

    invoke-static {p1}, Lorg/apache/commons/lang3/ArrayUtils;->getLength(Ljava/lang/Object;)I

    move-result p1

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0

    .array-data 1
    .end array-data
.end method

.method public static isSameLength([Z[Z)Z
    .locals 0

    .line 13599
    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->getLength(Ljava/lang/Object;)I

    move-result p0

    invoke-static {p1}, Lorg/apache/commons/lang3/ArrayUtils;->getLength(Ljava/lang/Object;)I

    move-result p1

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0

    .array-data 1
    .end array-data
.end method

.method public static isSameType(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    .line 14039
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    .line 14019
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "The Array must not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static isSorted([B)Z
    .locals 6

    const/4 v0, 0x1

    if-eqz p0, :cond_2

    .line 76509
    array-length v1, p0

    const/4 v2, 0x2

    if-ge v1, v2, :cond_0

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    .line 76549
    aget-byte v2, p0, v1

    .line 76559
    array-length v3, p0

    move v4, v0

    :goto_0
    if-ge v4, v3, :cond_2

    .line 76579
    aget-byte v5, p0, v4

    .line 76589
    invoke-static {v2, v5}, Lorg/apache/commons/lang3/math/NumberUtils;->compare(BB)I

    move-result v2

    if-lez v2, :cond_1

    return v1

    :cond_1
    add-int/lit8 v4, v4, 0x1

    move v2, v5

    goto :goto_0

    :cond_2
    :goto_1
    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public static isSorted([C)Z
    .locals 6

    const/4 v0, 0x1

    if-eqz p0, :cond_2

    .line 76759
    array-length v1, p0

    const/4 v2, 0x2

    if-ge v1, v2, :cond_0

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    .line 76799
    aget-char v2, p0, v1

    .line 76809
    array-length v3, p0

    move v4, v0

    :goto_0
    if-ge v4, v3, :cond_2

    .line 76829
    aget-char v5, p0, v4

    .line 76839
    invoke-static {v2, v5}, Lorg/apache/commons/lang3/CharUtils;->compare(CC)I

    move-result v2

    if-lez v2, :cond_1

    return v1

    :cond_1
    add-int/lit8 v4, v4, 0x1

    move v2, v5

    goto :goto_0

    :cond_2
    :goto_1
    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public static isSorted([D)Z
    .locals 8

    const/4 v0, 0x1

    if-eqz p0, :cond_2

    .line 76009
    array-length v1, p0

    const/4 v2, 0x2

    if-ge v1, v2, :cond_0

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    .line 76049
    aget-wide v2, p0, v1

    .line 76059
    array-length v4, p0

    move v5, v0

    :goto_0
    if-ge v5, v4, :cond_2

    .line 76079
    aget-wide v6, p0, v5

    .line 76089
    invoke-static {v2, v3, v6, v7}, Ljava/lang/Double;->compare(DD)I

    move-result v2

    if-lez v2, :cond_1

    return v1

    :cond_1
    add-int/lit8 v5, v5, 0x1

    move-wide v2, v6

    goto :goto_0

    :cond_2
    :goto_1
    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public static isSorted([F)Z
    .locals 6

    const/4 v0, 0x1

    if-eqz p0, :cond_2

    .line 76259
    array-length v1, p0

    const/4 v2, 0x2

    if-ge v1, v2, :cond_0

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    .line 76299
    aget v2, p0, v1

    .line 76309
    array-length v3, p0

    move v4, v0

    :goto_0
    if-ge v4, v3, :cond_2

    .line 76329
    aget v5, p0, v4

    .line 76339
    invoke-static {v2, v5}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-lez v2, :cond_1

    return v1

    :cond_1
    add-int/lit8 v4, v4, 0x1

    move v2, v5

    goto :goto_0

    :cond_2
    :goto_1
    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public static isSorted([I)Z
    .locals 6

    const/4 v0, 0x1

    if-eqz p0, :cond_2

    .line 75259
    array-length v1, p0

    const/4 v2, 0x2

    if-ge v1, v2, :cond_0

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    .line 75299
    aget v2, p0, v1

    .line 75309
    array-length v3, p0

    move v4, v0

    :goto_0
    if-ge v4, v3, :cond_2

    .line 75329
    aget v5, p0, v4

    .line 75339
    invoke-static {v2, v5}, Lorg/apache/commons/lang3/math/NumberUtils;->compare(II)I

    move-result v2

    if-lez v2, :cond_1

    return v1

    :cond_1
    add-int/lit8 v4, v4, 0x1

    move v2, v5

    goto :goto_0

    :cond_2
    :goto_1
    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public static isSorted([J)Z
    .locals 8

    const/4 v0, 0x1

    if-eqz p0, :cond_2

    .line 75509
    array-length v1, p0

    const/4 v2, 0x2

    if-ge v1, v2, :cond_0

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    .line 75549
    aget-wide v2, p0, v1

    .line 75559
    array-length v4, p0

    move v5, v0

    :goto_0
    if-ge v5, v4, :cond_2

    .line 75579
    aget-wide v6, p0, v5

    .line 75589
    invoke-static {v2, v3, v6, v7}, Lorg/apache/commons/lang3/math/NumberUtils;->compare(JJ)I

    move-result v2

    if-lez v2, :cond_1

    return v1

    :cond_1
    add-int/lit8 v5, v5, 0x1

    move-wide v2, v6

    goto :goto_0

    :cond_2
    :goto_1
    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public static isSorted([Ljava/lang/Comparable;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/Comparable<",
            "-TT;>;>([TT;)Z"
        }
    .end annotation

    .line 74779
    new-instance v0, Lorg/apache/commons/lang3/ArrayUtils$1;

    invoke-direct {v0}, Lorg/apache/commons/lang3/ArrayUtils$1;-><init>()V

    invoke-static {p0, v0}, Lorg/apache/commons/lang3/ArrayUtils;->isSorted([Ljava/lang/Object;Ljava/util/Comparator;)Z

    move-result p0

    return p0

    .array-data 1
    .end array-data
.end method

.method public static isSorted([Ljava/lang/Object;Ljava/util/Comparator;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;",
            "Ljava/util/Comparator<",
            "TT;>;)Z"
        }
    .end annotation

    if-eqz p1, :cond_3

    const/4 v0, 0x1

    if-eqz p0, :cond_2

    .line 75009
    array-length v1, p0

    const/4 v2, 0x2

    if-ge v1, v2, :cond_0

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    .line 75049
    aget-object v2, p0, v1

    .line 75059
    array-length v3, p0

    move v4, v0

    :goto_0
    if-ge v4, v3, :cond_2

    .line 75079
    aget-object v5, p0, v4

    .line 75089
    invoke-interface {p1, v2, v5}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v2

    if-lez v2, :cond_1

    return v1

    :cond_1
    add-int/lit8 v4, v4, 0x1

    move-object v2, v5

    goto :goto_0

    :cond_2
    :goto_1
    return v0

    .line 74979
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Comparator should not be null."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static isSorted([S)Z
    .locals 6

    const/4 v0, 0x1

    if-eqz p0, :cond_2

    .line 75759
    array-length v1, p0

    const/4 v2, 0x2

    if-ge v1, v2, :cond_0

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    .line 75799
    aget-short v2, p0, v1

    .line 75809
    array-length v3, p0

    move v4, v0

    :goto_0
    if-ge v4, v3, :cond_2

    .line 75829
    aget-short v5, p0, v4

    .line 75839
    invoke-static {v2, v5}, Lorg/apache/commons/lang3/math/NumberUtils;->compare(SS)I

    move-result v2

    if-lez v2, :cond_1

    return v1

    :cond_1
    add-int/lit8 v4, v4, 0x1

    move v2, v5

    goto :goto_0

    :cond_2
    :goto_1
    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public static isSorted([Z)Z
    .locals 6

    const/4 v0, 0x1

    if-eqz p0, :cond_2

    .line 77019
    array-length v1, p0

    const/4 v2, 0x2

    if-ge v1, v2, :cond_0

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    .line 77059
    aget-boolean v2, p0, v1

    .line 77069
    array-length v3, p0

    move v4, v0

    :goto_0
    if-ge v4, v3, :cond_2

    .line 77089
    aget-boolean v5, p0, v4

    .line 77099
    invoke-static {v2, v5}, Lorg/apache/commons/lang3/BooleanUtils;->compare(ZZ)I

    move-result v2

    if-lez v2, :cond_1

    return v1

    :cond_1
    add-int/lit8 v4, v4, 0x1

    move v2, v5

    goto :goto_0

    :cond_2
    :goto_1
    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public static lastIndexOf([BB)I
    .locals 1

    const v0, 0x7fffffff

    .line 37789
    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang3/ArrayUtils;->lastIndexOf([BBI)I

    move-result p0

    return p0

    .array-data 1
    .end array-data
.end method

.method public static lastIndexOf([BBI)I
    .locals 2

    const/4 v0, -0x1

    if-nez p0, :cond_0

    return v0

    :cond_0
    if-gez p2, :cond_1

    return v0

    .line 38019
    :cond_1
    array-length v1, p0

    if-lt p2, v1, :cond_2

    .line 38029
    array-length p2, p0

    add-int/lit8 p2, p2, -0x1

    :cond_2
    :goto_0
    if-ltz p2, :cond_4

    .line 38059
    aget-byte v1, p0, p2

    if-ne p1, v1, :cond_3

    return p2

    :cond_3
    add-int/lit8 p2, p2, -0x1

    goto :goto_0

    :cond_4
    return v0

    .array-data 1
    .end array-data
.end method

.method public static lastIndexOf([CC)I
    .locals 1

    const v0, 0x7fffffff

    .line 36739
    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang3/ArrayUtils;->lastIndexOf([CCI)I

    move-result p0

    return p0

    .array-data 1
    .end array-data
.end method

.method public static lastIndexOf([CCI)I
    .locals 2

    const/4 v0, -0x1

    if-nez p0, :cond_0

    return v0

    :cond_0
    if-gez p2, :cond_1

    return v0

    .line 36979
    :cond_1
    array-length v1, p0

    if-lt p2, v1, :cond_2

    .line 36989
    array-length p2, p0

    add-int/lit8 p2, p2, -0x1

    :cond_2
    :goto_0
    if-ltz p2, :cond_4

    .line 37019
    aget-char v1, p0, p2

    if-ne p1, v1, :cond_3

    return p2

    :cond_3
    add-int/lit8 p2, p2, -0x1

    goto :goto_0

    :cond_4
    return v0

    .array-data 1
    .end array-data
.end method

.method public static lastIndexOf([DD)I
    .locals 1

    const v0, 0x7fffffff

    .line 39329
    invoke-static {p0, p1, p2, v0}, Lorg/apache/commons/lang3/ArrayUtils;->lastIndexOf([DDI)I

    move-result p0

    return p0

    .array-data 1
    .end array-data
.end method

.method public static lastIndexOf([DDD)I
    .locals 6

    const v3, 0x7fffffff

    move-object v0, p0

    move-wide v1, p1

    move-wide v4, p3

    .line 39499
    invoke-static/range {v0 .. v5}, Lorg/apache/commons/lang3/ArrayUtils;->lastIndexOf([DDID)I

    move-result p0

    return p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static lastIndexOf([DDI)I
    .locals 4

    .line 39679
    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->isEmpty([D)Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    if-gez p3, :cond_1

    return v1

    .line 39729
    :cond_1
    array-length v0, p0

    if-lt p3, v0, :cond_2

    .line 39739
    array-length p3, p0

    add-int/lit8 p3, p3, -0x1

    :cond_2
    :goto_0
    if-ltz p3, :cond_4

    .line 39769
    aget-wide v2, p0, p3

    cmpl-double v0, p1, v2

    if-nez v0, :cond_3

    return p3

    :cond_3
    add-int/lit8 p3, p3, -0x1

    goto :goto_0

    :cond_4
    return v1

    .array-data 1
    .end array-data
.end method

.method public static lastIndexOf([DDID)I
    .locals 4

    .line 40019
    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->isEmpty([D)Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    if-gez p3, :cond_1

    return v1

    .line 40069
    :cond_1
    array-length v0, p0

    if-lt p3, v0, :cond_2

    .line 40079
    array-length p3, p0

    add-int/lit8 p3, p3, -0x1

    :cond_2
    sub-double v2, p1, p4

    add-double/2addr p1, p4

    :goto_0
    if-ltz p3, :cond_4

    .line 40129
    aget-wide p4, p0, p3

    cmpl-double v0, p4, v2

    if-ltz v0, :cond_3

    cmpg-double p4, p4, p1

    if-gtz p4, :cond_3

    return p3

    :cond_3
    add-int/lit8 p3, p3, -0x1

    goto :goto_0

    :cond_4
    return v1

    nop

    .array-data 1
    .end array-data
.end method

.method public static lastIndexOf([FF)I
    .locals 1

    const v0, 0x7fffffff

    .line 41059
    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang3/ArrayUtils;->lastIndexOf([FFI)I

    move-result p0

    return p0

    .array-data 1
    .end array-data
.end method

.method public static lastIndexOf([FFI)I
    .locals 2

    .line 41239
    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->isEmpty([F)Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    if-gez p2, :cond_1

    return v1

    .line 41289
    :cond_1
    array-length v0, p0

    if-lt p2, v0, :cond_2

    .line 41299
    array-length p2, p0

    add-int/lit8 p2, p2, -0x1

    :cond_2
    :goto_0
    if-ltz p2, :cond_4

    .line 41329
    aget v0, p0, p2

    cmpl-float v0, p1, v0

    if-nez v0, :cond_3

    return p2

    :cond_3
    add-int/lit8 p2, p2, -0x1

    goto :goto_0

    :cond_4
    return v1

    .array-data 1
    .end array-data
.end method

.method public static lastIndexOf([II)I
    .locals 1

    const v0, 0x7fffffff

    .line 34649
    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang3/ArrayUtils;->lastIndexOf([III)I

    move-result p0

    return p0

    .array-data 1
    .end array-data
.end method

.method public static lastIndexOf([III)I
    .locals 2

    const/4 v0, -0x1

    if-nez p0, :cond_0

    return v0

    :cond_0
    if-gez p2, :cond_1

    return v0

    .line 34879
    :cond_1
    array-length v1, p0

    if-lt p2, v1, :cond_2

    .line 34889
    array-length p2, p0

    add-int/lit8 p2, p2, -0x1

    :cond_2
    :goto_0
    if-ltz p2, :cond_4

    .line 34919
    aget v1, p0, p2

    if-ne p1, v1, :cond_3

    return p2

    :cond_3
    add-int/lit8 p2, p2, -0x1

    goto :goto_0

    :cond_4
    return v0

    .array-data 1
    .end array-data
.end method

.method public static lastIndexOf([JJ)I
    .locals 1

    const v0, 0x7fffffff

    .line 33619
    invoke-static {p0, p1, p2, v0}, Lorg/apache/commons/lang3/ArrayUtils;->lastIndexOf([JJI)I

    move-result p0

    return p0

    .array-data 1
    .end array-data
.end method

.method public static lastIndexOf([JJI)I
    .locals 3

    const/4 v0, -0x1

    if-nez p0, :cond_0

    return v0

    :cond_0
    if-gez p3, :cond_1

    return v0

    .line 33849
    :cond_1
    array-length v1, p0

    if-lt p3, v1, :cond_2

    .line 33859
    array-length p3, p0

    add-int/lit8 p3, p3, -0x1

    :cond_2
    :goto_0
    if-ltz p3, :cond_4

    .line 33889
    aget-wide v1, p0, p3

    cmp-long v1, p1, v1

    if-nez v1, :cond_3

    return p3

    :cond_3
    add-int/lit8 p3, p3, -0x1

    goto :goto_0

    :cond_4
    return v0

    .array-data 1
    .end array-data
.end method

.method public static lastIndexOf([Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    const v0, 0x7fffffff

    .line 32509
    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang3/ArrayUtils;->lastIndexOf([Ljava/lang/Object;Ljava/lang/Object;I)I

    move-result p0

    return p0

    .array-data 1
    .end array-data
.end method

.method public static lastIndexOf([Ljava/lang/Object;Ljava/lang/Object;I)I
    .locals 2

    const/4 v0, -0x1

    if-nez p0, :cond_0

    return v0

    :cond_0
    if-gez p2, :cond_1

    return v0

    .line 32739
    :cond_1
    array-length v1, p0

    if-lt p2, v1, :cond_2

    .line 32749
    array-length p2, p0

    add-int/lit8 p2, p2, -0x1

    :cond_2
    if-nez p1, :cond_4

    :goto_0
    if-ltz p2, :cond_6

    .line 32789
    aget-object p1, p0, p2

    if-nez p1, :cond_3

    return p2

    :cond_3
    add-int/lit8 p2, p2, -0x1

    goto :goto_0

    .line 32829
    :cond_4
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    :goto_1
    if-ltz p2, :cond_6

    .line 32849
    aget-object v1, p0, p2

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    return p2

    :cond_5
    add-int/lit8 p2, p2, -0x1

    goto :goto_1

    :cond_6
    return v0

    .array-data 1
    .end array-data
.end method

.method public static lastIndexOf([SS)I
    .locals 1

    const v0, 0x7fffffff

    .line 35679
    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang3/ArrayUtils;->lastIndexOf([SSI)I

    move-result p0

    return p0

    .array-data 1
    .end array-data
.end method

.method public static lastIndexOf([SSI)I
    .locals 2

    const/4 v0, -0x1

    if-nez p0, :cond_0

    return v0

    :cond_0
    if-gez p2, :cond_1

    return v0

    .line 35909
    :cond_1
    array-length v1, p0

    if-lt p2, v1, :cond_2

    .line 35919
    array-length p2, p0

    add-int/lit8 p2, p2, -0x1

    :cond_2
    :goto_0
    if-ltz p2, :cond_4

    .line 35949
    aget-short v1, p0, p2

    if-ne p1, v1, :cond_3

    return p2

    :cond_3
    add-int/lit8 p2, p2, -0x1

    goto :goto_0

    :cond_4
    return v0

    .array-data 1
    .end array-data
.end method

.method public static lastIndexOf([ZZ)I
    .locals 1

    const v0, 0x7fffffff

    .line 42109
    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang3/ArrayUtils;->lastIndexOf([ZZI)I

    move-result p0

    return p0

    .array-data 1
    .end array-data
.end method

.method public static lastIndexOf([ZZI)I
    .locals 2

    .line 42289
    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->isEmpty([Z)Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    if-gez p2, :cond_1

    return v1

    .line 42339
    :cond_1
    array-length v0, p0

    if-lt p2, v0, :cond_2

    .line 42349
    array-length p2, p0

    add-int/lit8 p2, p2, -0x1

    :cond_2
    :goto_0
    if-ltz p2, :cond_4

    .line 42379
    aget-boolean v0, p0, p2

    if-ne p1, v0, :cond_3

    return p2

    :cond_3
    add-int/lit8 p2, p2, -0x1

    goto :goto_0

    :cond_4
    return v1

    .array-data 1
    .end array-data
.end method

.method public static nullToEmpty([B)[B
    .locals 1

    .line 6409
    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->isEmpty([B)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6419
    sget-object p0, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_BYTE_ARRAY:[B

    :cond_0
    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static nullToEmpty([C)[C
    .locals 1

    .line 6209
    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->isEmpty([C)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6219
    sget-object p0, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_CHAR_ARRAY:[C

    :cond_0
    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static nullToEmpty([D)[D
    .locals 1

    .line 6609
    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->isEmpty([D)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6619
    sget-object p0, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_DOUBLE_ARRAY:[D

    :cond_0
    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static nullToEmpty([F)[F
    .locals 1

    .line 6809
    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->isEmpty([F)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6819
    sget-object p0, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_FLOAT_ARRAY:[F

    :cond_0
    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static nullToEmpty([I)[I
    .locals 1

    .line 5809
    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->isEmpty([I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5819
    sget-object p0, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_INT_ARRAY:[I

    :cond_0
    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static nullToEmpty([J)[J
    .locals 1

    .line 5609
    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->isEmpty([J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5619
    sget-object p0, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_LONG_ARRAY:[J

    :cond_0
    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static nullToEmpty([Ljava/lang/Boolean;)[Ljava/lang/Boolean;
    .locals 1

    .line 8609
    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 8619
    sget-object p0, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_BOOLEAN_OBJECT_ARRAY:[Ljava/lang/Boolean;

    :cond_0
    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static nullToEmpty([Ljava/lang/Byte;)[Ljava/lang/Byte;
    .locals 1

    .line 8009
    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 8019
    sget-object p0, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_BYTE_OBJECT_ARRAY:[Ljava/lang/Byte;

    :cond_0
    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static nullToEmpty([Ljava/lang/Character;)[Ljava/lang/Character;
    .locals 1

    .line 7809
    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7819
    sget-object p0, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_CHARACTER_OBJECT_ARRAY:[Ljava/lang/Character;

    :cond_0
    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static nullToEmpty([Ljava/lang/Class;)[Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class<",
            "*>;)[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 5209
    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5219
    sget-object p0, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_CLASS_ARRAY:[Ljava/lang/Class;

    :cond_0
    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static nullToEmpty([Ljava/lang/Double;)[Ljava/lang/Double;
    .locals 1

    .line 8209
    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 8219
    sget-object p0, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_DOUBLE_OBJECT_ARRAY:[Ljava/lang/Double;

    :cond_0
    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static nullToEmpty([Ljava/lang/Float;)[Ljava/lang/Float;
    .locals 1

    .line 8409
    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 8419
    sget-object p0, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_FLOAT_OBJECT_ARRAY:[Ljava/lang/Float;

    :cond_0
    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static nullToEmpty([Ljava/lang/Integer;)[Ljava/lang/Integer;
    .locals 1

    .line 7409
    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7419
    sget-object p0, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_INTEGER_OBJECT_ARRAY:[Ljava/lang/Integer;

    :cond_0
    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static nullToEmpty([Ljava/lang/Long;)[Ljava/lang/Long;
    .locals 1

    .line 7209
    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7219
    sget-object p0, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_LONG_OBJECT_ARRAY:[Ljava/lang/Long;

    :cond_0
    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static nullToEmpty([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 1

    .line 5009
    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5019
    sget-object p0, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_OBJECT_ARRAY:[Ljava/lang/Object;

    :cond_0
    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static nullToEmpty([Ljava/lang/Object;Ljava/lang/Class;)[Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;",
            "Ljava/lang/Class<",
            "[TT;>;)[TT;"
        }
    .end annotation

    if-eqz p1, :cond_1

    if-nez p0, :cond_0

    .line 4809
    invoke-virtual {p1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object p0

    const/4 v0, 0x0

    invoke-static {p0, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/Object;

    :cond_0
    return-object p0

    .line 4769
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "The type must not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .array-data 1
    .end array-data
.end method

.method public static nullToEmpty([Ljava/lang/Short;)[Ljava/lang/Short;
    .locals 1

    .line 7609
    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7619
    sget-object p0, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_SHORT_OBJECT_ARRAY:[Ljava/lang/Short;

    :cond_0
    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static nullToEmpty([Ljava/lang/String;)[Ljava/lang/String;
    .locals 1

    .line 5409
    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5419
    sget-object p0, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    :cond_0
    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static nullToEmpty([S)[S
    .locals 1

    .line 6009
    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->isEmpty([S)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6019
    sget-object p0, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_SHORT_ARRAY:[S

    :cond_0
    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static nullToEmpty([Z)[Z
    .locals 1

    .line 7009
    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->isEmpty([Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7019
    sget-object p0, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_BOOLEAN_ARRAY:[Z

    :cond_0
    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method private static remove(Ljava/lang/Object;I)Ljava/lang/Object;
    .locals 4

    .line 65739
    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->getLength(Ljava/lang/Object;)I

    move-result v0

    if-ltz p1, :cond_1

    if-ge p1, v0, :cond_1

    .line 65789
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v1

    add-int/lit8 v2, v0, -0x1

    invoke-static {v1, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v1

    const/4 v3, 0x0

    .line 65799
    invoke-static {p0, v3, v1, v3, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    if-ge p1, v2, :cond_0

    add-int/lit8 v2, p1, 0x1

    sub-int/2addr v0, p1

    add-int/lit8 v0, v0, -0x1

    .line 65819
    invoke-static {p0, v2, v1, p1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_0
    return-object v1

    .line 65759
    :cond_1
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    const v2, 0x6d051030

    invoke-static {v2}, Lcom/liapp/y;->ٱڳܴڭܩ(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const v1, -0x4510601f

    invoke-static {v1}, Lcom/liapp/y;->ڳݬ٬ۮݪ(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0

    .array-data 1
    .end array-data
.end method

.method public static remove([BI)[B
    .locals 0

    .line 61259
    invoke-static {p0, p1}, Lorg/apache/commons/lang3/ArrayUtils;->remove(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [B

    check-cast p0, [B

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static remove([CI)[C
    .locals 0

    .line 61909
    invoke-static {p0, p1}, Lorg/apache/commons/lang3/ArrayUtils;->remove(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [C

    check-cast p0, [C

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static remove([DI)[D
    .locals 0

    .line 62559
    invoke-static {p0, p1}, Lorg/apache/commons/lang3/ArrayUtils;->remove(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [D

    check-cast p0, [D

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static remove([FI)[F
    .locals 0

    .line 63209
    invoke-static {p0, p1}, Lorg/apache/commons/lang3/ArrayUtils;->remove(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [F

    check-cast p0, [F

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static remove([II)[I
    .locals 0

    .line 63859
    invoke-static {p0, p1}, Lorg/apache/commons/lang3/ArrayUtils;->remove(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [I

    check-cast p0, [I

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static remove([JI)[J
    .locals 0

    .line 64509
    invoke-static {p0, p1}, Lorg/apache/commons/lang3/ArrayUtils;->remove(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [J

    check-cast p0, [J

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static remove([Ljava/lang/Object;I)[Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;I)[TT;"
        }
    .end annotation

    .line 59949
    invoke-static {p0, p1}, Lorg/apache/commons/lang3/ArrayUtils;->remove(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/Object;

    check-cast p0, [Ljava/lang/Object;

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static remove([SI)[S
    .locals 0

    .line 65159
    invoke-static {p0, p1}, Lorg/apache/commons/lang3/ArrayUtils;->remove(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [S

    check-cast p0, [S

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static remove([ZI)[Z
    .locals 0

    .line 60609
    invoke-static {p0, p1}, Lorg/apache/commons/lang3/ArrayUtils;->remove(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Z

    check-cast p0, [Z

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method static removeAll(Ljava/lang/Object;Ljava/util/BitSet;)Ljava/lang/Object;
    .locals 6

    .line 74399
    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->getLength(Ljava/lang/Object;)I

    move-result v0

    .line 74469
    invoke-virtual {p1}, Ljava/util/BitSet;->cardinality()I

    move-result v1

    .line 74479
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v2

    sub-int v1, v0, v1

    invoke-static {v2, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x0

    move v3, v2

    .line 74529
    :goto_0
    invoke-virtual {p1, v2}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_1

    sub-int v5, v4, v2

    if-lez v5, :cond_0

    .line 74559
    invoke-static {p0, v2, v1, v3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v3, v5

    .line 74589
    :cond_0
    invoke-virtual {p1, v4}, Ljava/util/BitSet;->nextClearBit(I)I

    move-result v2

    goto :goto_0

    :cond_1
    sub-int/2addr v0, v2

    if-lez v0, :cond_2

    .line 74629
    invoke-static {p0, v2, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_2
    return-object v1

    nop

    .array-data 1
    .end array-data
.end method

.method static varargs removeAll(Ljava/lang/Object;[I)Ljava/lang/Object;
    .locals 8

    .line 73859
    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->getLength(Ljava/lang/Object;)I

    move-result v0

    .line 73879
    invoke-static {p1}, Lorg/apache/commons/lang3/ArrayUtils;->clone([I)[I

    move-result-object p1

    .line 73889
    invoke-static {p1}, Ljava/util/Arrays;->sort([I)V

    .line 73919
    invoke-static {p1}, Lorg/apache/commons/lang3/ArrayUtils;->isNotEmpty([I)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 73929
    array-length v1, p1

    move v4, v0

    move v3, v2

    :goto_0
    add-int/lit8 v1, v1, -0x1

    if-ltz v1, :cond_3

    .line 73959
    aget v5, p1, v1

    if-ltz v5, :cond_1

    if-ge v5, v0, :cond_1

    if-lt v5, v4, :cond_0

    goto :goto_0

    :cond_0
    add-int/lit8 v3, v3, 0x1

    move v4, v5

    goto :goto_0

    .line 73979
    :cond_1
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    new-instance p1, Ljava/lang/StringBuilder;

    const v1, 0x6d051030

    invoke-static {v1}, Lcom/liapp/y;->ٱڳܴڭܩ(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const v1, -0x4510601f

    invoke-static {v1}, Lcom/liapp/y;->ڳݬ٬ۮݪ(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    move v3, v2

    .line 74089
    :cond_3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v1

    sub-int v4, v0, v3

    invoke-static {v1, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v1

    if-ge v3, v0, :cond_6

    .line 74129
    array-length v3, p1

    const/4 v5, 0x1

    sub-int/2addr v3, v5

    :goto_1
    if-ltz v3, :cond_5

    .line 74139
    aget v6, p1, v3

    sub-int/2addr v0, v6

    if-le v0, v5, :cond_4

    add-int/lit8 v0, v0, -0x1

    sub-int/2addr v4, v0

    add-int/lit8 v7, v6, 0x1

    .line 74179
    invoke-static {p0, v7, v1, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_4
    add-int/lit8 v3, v3, -0x1

    move v0, v6

    goto :goto_1

    :cond_5
    if-lez v0, :cond_6

    .line 74239
    invoke-static {p0, v2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_6
    return-object v1

    .array-data 1
    .end array-data
.end method

.method public static varargs removeAll([B[I)[B
    .locals 0

    .line 67069
    invoke-static {p0, p1}, Lorg/apache/commons/lang3/ArrayUtils;->removeAll(Ljava/lang/Object;[I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [B

    check-cast p0, [B

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static varargs removeAll([C[I)[C
    .locals 0

    .line 69709
    invoke-static {p0, p1}, Lorg/apache/commons/lang3/ArrayUtils;->removeAll(Ljava/lang/Object;[I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [C

    check-cast p0, [C

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static varargs removeAll([D[I)[D
    .locals 0

    .line 72349
    invoke-static {p0, p1}, Lorg/apache/commons/lang3/ArrayUtils;->removeAll(Ljava/lang/Object;[I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [D

    check-cast p0, [D

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static varargs removeAll([F[I)[F
    .locals 0

    .line 71469
    invoke-static {p0, p1}, Lorg/apache/commons/lang3/ArrayUtils;->removeAll(Ljava/lang/Object;[I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [F

    check-cast p0, [F

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static varargs removeAll([I[I)[I
    .locals 0

    .line 68829
    invoke-static {p0, p1}, Lorg/apache/commons/lang3/ArrayUtils;->removeAll(Ljava/lang/Object;[I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [I

    check-cast p0, [I

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static varargs removeAll([J[I)[J
    .locals 0

    .line 70589
    invoke-static {p0, p1}, Lorg/apache/commons/lang3/ArrayUtils;->removeAll(Ljava/lang/Object;[I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [J

    check-cast p0, [J

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static varargs removeAll([Ljava/lang/Object;[I)[Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;[I)[TT;"
        }
    .end annotation

    .line 66159
    invoke-static {p0, p1}, Lorg/apache/commons/lang3/ArrayUtils;->removeAll(Ljava/lang/Object;[I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/Object;

    check-cast p0, [Ljava/lang/Object;

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static varargs removeAll([S[I)[S
    .locals 0

    .line 67949
    invoke-static {p0, p1}, Lorg/apache/commons/lang3/ArrayUtils;->removeAll(Ljava/lang/Object;[I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [S

    check-cast p0, [S

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static varargs removeAll([Z[I)[Z
    .locals 0

    .line 73189
    invoke-static {p0, p1}, Lorg/apache/commons/lang3/ArrayUtils;->removeAll(Ljava/lang/Object;[I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Z

    check-cast p0, [Z

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static removeAllOccurences([BB)[B
    .locals 6

    .line 77989
    invoke-static {p0, p1}, Lorg/apache/commons/lang3/ArrayUtils;->indexOf([BB)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 78009
    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->clone([B)[B

    move-result-object p0

    return-object p0

    .line 78039
    :cond_0
    array-length v2, p0

    sub-int/2addr v2, v0

    new-array v2, v2, [I

    const/4 v3, 0x0

    .line 78049
    aput v0, v2, v3

    const/4 v0, 0x1

    move v3, v0

    :goto_0
    add-int/lit8 v4, v3, -0x1

    .line 78079
    aget v4, v2, v4

    add-int/2addr v4, v0

    invoke-static {p0, p1, v4}, Lorg/apache/commons/lang3/ArrayUtils;->indexOf([BBI)I

    move-result v4

    if-eq v4, v1, :cond_1

    add-int/lit8 v5, v3, 0x1

    .line 78089
    aput v4, v2, v3

    move v3, v5

    goto :goto_0

    .line 78119
    :cond_1
    invoke-static {v2, v3}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object p1

    invoke-static {p0, p1}, Lorg/apache/commons/lang3/ArrayUtils;->removeAll([B[I)[B

    move-result-object p0

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static removeAllOccurences([CC)[C
    .locals 6

    .line 77669
    invoke-static {p0, p1}, Lorg/apache/commons/lang3/ArrayUtils;->indexOf([CC)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 77689
    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->clone([C)[C

    move-result-object p0

    return-object p0

    .line 77719
    :cond_0
    array-length v2, p0

    sub-int/2addr v2, v0

    new-array v2, v2, [I

    const/4 v3, 0x0

    .line 77729
    aput v0, v2, v3

    const/4 v0, 0x1

    move v3, v0

    :goto_0
    add-int/lit8 v4, v3, -0x1

    .line 77759
    aget v4, v2, v4

    add-int/2addr v4, v0

    invoke-static {p0, p1, v4}, Lorg/apache/commons/lang3/ArrayUtils;->indexOf([CCI)I

    move-result v4

    if-eq v4, v1, :cond_1

    add-int/lit8 v5, v3, 0x1

    .line 77769
    aput v4, v2, v3

    move v3, v5

    goto :goto_0

    .line 77799
    :cond_1
    invoke-static {v2, v3}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object p1

    invoke-static {p0, p1}, Lorg/apache/commons/lang3/ArrayUtils;->removeAll([C[I)[C

    move-result-object p0

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static removeAllOccurences([DD)[D
    .locals 6

    .line 79589
    invoke-static {p0, p1, p2}, Lorg/apache/commons/lang3/ArrayUtils;->indexOf([DD)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 79609
    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->clone([D)[D

    move-result-object p0

    return-object p0

    .line 79639
    :cond_0
    array-length v2, p0

    sub-int/2addr v2, v0

    new-array v2, v2, [I

    const/4 v3, 0x0

    .line 79649
    aput v0, v2, v3

    const/4 v0, 0x1

    move v3, v0

    :goto_0
    add-int/lit8 v4, v3, -0x1

    .line 79679
    aget v4, v2, v4

    add-int/2addr v4, v0

    invoke-static {p0, p1, p2, v4}, Lorg/apache/commons/lang3/ArrayUtils;->indexOf([DDI)I

    move-result v4

    if-eq v4, v1, :cond_1

    add-int/lit8 v5, v3, 0x1

    .line 79689
    aput v4, v2, v3

    move v3, v5

    goto :goto_0

    .line 79719
    :cond_1
    invoke-static {v2, v3}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object p1

    invoke-static {p0, p1}, Lorg/apache/commons/lang3/ArrayUtils;->removeAll([D[I)[D

    move-result-object p0

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static removeAllOccurences([FF)[F
    .locals 6

    .line 79269
    invoke-static {p0, p1}, Lorg/apache/commons/lang3/ArrayUtils;->indexOf([FF)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 79289
    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->clone([F)[F

    move-result-object p0

    return-object p0

    .line 79319
    :cond_0
    array-length v2, p0

    sub-int/2addr v2, v0

    new-array v2, v2, [I

    const/4 v3, 0x0

    .line 79329
    aput v0, v2, v3

    const/4 v0, 0x1

    move v3, v0

    :goto_0
    add-int/lit8 v4, v3, -0x1

    .line 79359
    aget v4, v2, v4

    add-int/2addr v4, v0

    invoke-static {p0, p1, v4}, Lorg/apache/commons/lang3/ArrayUtils;->indexOf([FFI)I

    move-result v4

    if-eq v4, v1, :cond_1

    add-int/lit8 v5, v3, 0x1

    .line 79369
    aput v4, v2, v3

    move v3, v5

    goto :goto_0

    .line 79399
    :cond_1
    invoke-static {v2, v3}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object p1

    invoke-static {p0, p1}, Lorg/apache/commons/lang3/ArrayUtils;->removeAll([F[I)[F

    move-result-object p0

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static removeAllOccurences([II)[I
    .locals 6

    .line 78629
    invoke-static {p0, p1}, Lorg/apache/commons/lang3/ArrayUtils;->indexOf([II)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 78649
    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->clone([I)[I

    move-result-object p0

    return-object p0

    .line 78679
    :cond_0
    array-length v2, p0

    sub-int/2addr v2, v0

    new-array v2, v2, [I

    const/4 v3, 0x0

    .line 78689
    aput v0, v2, v3

    const/4 v0, 0x1

    move v3, v0

    :goto_0
    add-int/lit8 v4, v3, -0x1

    .line 78719
    aget v4, v2, v4

    add-int/2addr v4, v0

    invoke-static {p0, p1, v4}, Lorg/apache/commons/lang3/ArrayUtils;->indexOf([III)I

    move-result v4

    if-eq v4, v1, :cond_1

    add-int/lit8 v5, v3, 0x1

    .line 78729
    aput v4, v2, v3

    move v3, v5

    goto :goto_0

    .line 78759
    :cond_1
    invoke-static {v2, v3}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object p1

    invoke-static {p0, p1}, Lorg/apache/commons/lang3/ArrayUtils;->removeAll([I[I)[I

    move-result-object p0

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static removeAllOccurences([JJ)[J
    .locals 6

    .line 78949
    invoke-static {p0, p1, p2}, Lorg/apache/commons/lang3/ArrayUtils;->indexOf([JJ)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 78969
    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->clone([J)[J

    move-result-object p0

    return-object p0

    .line 78999
    :cond_0
    array-length v2, p0

    sub-int/2addr v2, v0

    new-array v2, v2, [I

    const/4 v3, 0x0

    .line 79009
    aput v0, v2, v3

    const/4 v0, 0x1

    move v3, v0

    :goto_0
    add-int/lit8 v4, v3, -0x1

    .line 79039
    aget v4, v2, v4

    add-int/2addr v4, v0

    invoke-static {p0, p1, p2, v4}, Lorg/apache/commons/lang3/ArrayUtils;->indexOf([JJI)I

    move-result v4

    if-eq v4, v1, :cond_1

    add-int/lit8 v5, v3, 0x1

    .line 79049
    aput v4, v2, v3

    move v3, v5

    goto :goto_0

    .line 79079
    :cond_1
    invoke-static {v2, v3}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object p1

    invoke-static {p0, p1}, Lorg/apache/commons/lang3/ArrayUtils;->removeAll([J[I)[J

    move-result-object p0

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static removeAllOccurences([Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;TT;)[TT;"
        }
    .end annotation

    .line 79919
    invoke-static {p0, p1}, Lorg/apache/commons/lang3/ArrayUtils;->indexOf([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 79939
    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->clone([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 79969
    :cond_0
    array-length v2, p0

    sub-int/2addr v2, v0

    new-array v2, v2, [I

    const/4 v3, 0x0

    .line 79979
    aput v0, v2, v3

    const/4 v0, 0x1

    move v3, v0

    :goto_0
    add-int/lit8 v4, v3, -0x1

    .line 80009
    aget v4, v2, v4

    add-int/2addr v4, v0

    invoke-static {p0, p1, v4}, Lorg/apache/commons/lang3/ArrayUtils;->indexOf([Ljava/lang/Object;Ljava/lang/Object;I)I

    move-result v4

    if-eq v4, v1, :cond_1

    add-int/lit8 v5, v3, 0x1

    .line 80019
    aput v4, v2, v3

    move v3, v5

    goto :goto_0

    .line 80049
    :cond_1
    invoke-static {v2, v3}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object p1

    invoke-static {p0, p1}, Lorg/apache/commons/lang3/ArrayUtils;->removeAll([Ljava/lang/Object;[I)[Ljava/lang/Object;

    move-result-object p0

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static removeAllOccurences([SS)[S
    .locals 6

    .line 78309
    invoke-static {p0, p1}, Lorg/apache/commons/lang3/ArrayUtils;->indexOf([SS)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 78329
    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->clone([S)[S

    move-result-object p0

    return-object p0

    .line 78359
    :cond_0
    array-length v2, p0

    sub-int/2addr v2, v0

    new-array v2, v2, [I

    const/4 v3, 0x0

    .line 78369
    aput v0, v2, v3

    const/4 v0, 0x1

    move v3, v0

    :goto_0
    add-int/lit8 v4, v3, -0x1

    .line 78399
    aget v4, v2, v4

    add-int/2addr v4, v0

    invoke-static {p0, p1, v4}, Lorg/apache/commons/lang3/ArrayUtils;->indexOf([SSI)I

    move-result v4

    if-eq v4, v1, :cond_1

    add-int/lit8 v5, v3, 0x1

    .line 78409
    aput v4, v2, v3

    move v3, v5

    goto :goto_0

    .line 78439
    :cond_1
    invoke-static {v2, v3}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object p1

    invoke-static {p0, p1}, Lorg/apache/commons/lang3/ArrayUtils;->removeAll([S[I)[S

    move-result-object p0

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static removeAllOccurences([ZZ)[Z
    .locals 6

    .line 77349
    invoke-static {p0, p1}, Lorg/apache/commons/lang3/ArrayUtils;->indexOf([ZZ)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 77369
    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->clone([Z)[Z

    move-result-object p0

    return-object p0

    .line 77399
    :cond_0
    array-length v2, p0

    sub-int/2addr v2, v0

    new-array v2, v2, [I

    const/4 v3, 0x0

    .line 77409
    aput v0, v2, v3

    const/4 v0, 0x1

    move v3, v0

    :goto_0
    add-int/lit8 v4, v3, -0x1

    .line 77439
    aget v4, v2, v4

    add-int/2addr v4, v0

    invoke-static {p0, p1, v4}, Lorg/apache/commons/lang3/ArrayUtils;->indexOf([ZZI)I

    move-result v4

    if-eq v4, v1, :cond_1

    add-int/lit8 v5, v3, 0x1

    .line 77449
    aput v4, v2, v3

    move v3, v5

    goto :goto_0

    .line 77479
    :cond_1
    invoke-static {v2, v3}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object p1

    invoke-static {p0, p1}, Lorg/apache/commons/lang3/ArrayUtils;->removeAll([Z[I)[Z

    move-result-object p0

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static removeElement([BB)[B
    .locals 1

    .line 61549
    invoke-static {p0, p1}, Lorg/apache/commons/lang3/ArrayUtils;->indexOf([BB)I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 61569
    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->clone([B)[B

    move-result-object p0

    return-object p0

    .line 61589
    :cond_0
    invoke-static {p0, p1}, Lorg/apache/commons/lang3/ArrayUtils;->remove([BI)[B

    move-result-object p0

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static removeElement([CC)[C
    .locals 1

    .line 62199
    invoke-static {p0, p1}, Lorg/apache/commons/lang3/ArrayUtils;->indexOf([CC)I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 62219
    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->clone([C)[C

    move-result-object p0

    return-object p0

    .line 62239
    :cond_0
    invoke-static {p0, p1}, Lorg/apache/commons/lang3/ArrayUtils;->remove([CI)[C

    move-result-object p0

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static removeElement([DD)[D
    .locals 0

    .line 62849
    invoke-static {p0, p1, p2}, Lorg/apache/commons/lang3/ArrayUtils;->indexOf([DD)I

    move-result p1

    const/4 p2, -0x1

    if-ne p1, p2, :cond_0

    .line 62869
    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->clone([D)[D

    move-result-object p0

    return-object p0

    .line 62889
    :cond_0
    invoke-static {p0, p1}, Lorg/apache/commons/lang3/ArrayUtils;->remove([DI)[D

    move-result-object p0

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static removeElement([FF)[F
    .locals 1

    .line 63499
    invoke-static {p0, p1}, Lorg/apache/commons/lang3/ArrayUtils;->indexOf([FF)I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 63519
    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->clone([F)[F

    move-result-object p0

    return-object p0

    .line 63539
    :cond_0
    invoke-static {p0, p1}, Lorg/apache/commons/lang3/ArrayUtils;->remove([FI)[F

    move-result-object p0

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static removeElement([II)[I
    .locals 1

    .line 64149
    invoke-static {p0, p1}, Lorg/apache/commons/lang3/ArrayUtils;->indexOf([II)I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 64169
    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->clone([I)[I

    move-result-object p0

    return-object p0

    .line 64189
    :cond_0
    invoke-static {p0, p1}, Lorg/apache/commons/lang3/ArrayUtils;->remove([II)[I

    move-result-object p0

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static removeElement([JJ)[J
    .locals 0

    .line 64799
    invoke-static {p0, p1, p2}, Lorg/apache/commons/lang3/ArrayUtils;->indexOf([JJ)I

    move-result p1

    const/4 p2, -0x1

    if-ne p1, p2, :cond_0

    .line 64819
    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->clone([J)[J

    move-result-object p0

    return-object p0

    .line 64839
    :cond_0
    invoke-static {p0, p1}, Lorg/apache/commons/lang3/ArrayUtils;->remove([JI)[J

    move-result-object p0

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static removeElement([Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;",
            "Ljava/lang/Object;",
            ")[TT;"
        }
    .end annotation

    .line 60249
    invoke-static {p0, p1}, Lorg/apache/commons/lang3/ArrayUtils;->indexOf([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 60269
    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->clone([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 60289
    :cond_0
    invoke-static {p0, p1}, Lorg/apache/commons/lang3/ArrayUtils;->remove([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p0

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static removeElement([SS)[S
    .locals 1

    .line 65449
    invoke-static {p0, p1}, Lorg/apache/commons/lang3/ArrayUtils;->indexOf([SS)I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 65469
    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->clone([S)[S

    move-result-object p0

    return-object p0

    .line 65489
    :cond_0
    invoke-static {p0, p1}, Lorg/apache/commons/lang3/ArrayUtils;->remove([SI)[S

    move-result-object p0

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static removeElement([ZZ)[Z
    .locals 1

    .line 60899
    invoke-static {p0, p1}, Lorg/apache/commons/lang3/ArrayUtils;->indexOf([ZZ)I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 60919
    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->clone([Z)[Z

    move-result-object p0

    return-object p0

    .line 60939
    :cond_0
    invoke-static {p0, p1}, Lorg/apache/commons/lang3/ArrayUtils;->remove([ZI)[Z

    move-result-object p0

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static varargs removeElements([B[B)[B
    .locals 7

    .line 67379
    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->isEmpty([B)Z

    move-result v0

    if-nez v0, :cond_6

    invoke-static {p1}, Lorg/apache/commons/lang3/ArrayUtils;->isEmpty([B)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_3

    .line 67409
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    array-length v1, p1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 67419
    array-length v1, p1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_2

    aget-byte v4, p1, v3

    .line 67429
    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    .line 67439
    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/commons/lang3/mutable/MutableInt;

    if-nez v5, :cond_1

    .line 67459
    new-instance v5, Lorg/apache/commons/lang3/mutable/MutableInt;

    const/4 v6, 0x1

    invoke-direct {v5, v6}, Lorg/apache/commons/lang3/mutable/MutableInt;-><init>(I)V

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 67479
    :cond_1
    invoke-virtual {v5}, Lorg/apache/commons/lang3/mutable/MutableInt;->increment()V

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 67509
    :cond_2
    new-instance p1, Ljava/util/BitSet;

    invoke-direct {p1}, Ljava/util/BitSet;-><init>()V

    .line 67519
    :goto_2
    array-length v1, p0

    if-ge v2, v1, :cond_5

    .line 67529
    aget-byte v1, p0, v2

    .line 67539
    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/lang3/mutable/MutableInt;

    if-eqz v3, :cond_4

    .line 67559
    invoke-virtual {v3}, Lorg/apache/commons/lang3/mutable/MutableInt;->decrementAndGet()I

    move-result v3

    if-nez v3, :cond_3

    .line 67569
    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 67589
    :cond_3
    invoke-virtual {p1, v2}, Ljava/util/BitSet;->set(I)V

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 67619
    :cond_5
    invoke-static {p0, p1}, Lorg/apache/commons/lang3/ArrayUtils;->removeAll(Ljava/lang/Object;Ljava/util/BitSet;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [B

    check-cast p0, [B

    return-object p0

    .line 67389
    :cond_6
    :goto_3
    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->clone([B)[B

    move-result-object p0

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static varargs removeElements([C[C)[C
    .locals 7

    .line 70019
    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->isEmpty([C)Z

    move-result v0

    if-nez v0, :cond_6

    invoke-static {p1}, Lorg/apache/commons/lang3/ArrayUtils;->isEmpty([C)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_3

    .line 70049
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    array-length v1, p1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 70059
    array-length v1, p1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_2

    aget-char v4, p1, v3

    .line 70069
    invoke-static {v4}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v4

    .line 70079
    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/commons/lang3/mutable/MutableInt;

    if-nez v5, :cond_1

    .line 70099
    new-instance v5, Lorg/apache/commons/lang3/mutable/MutableInt;

    const/4 v6, 0x1

    invoke-direct {v5, v6}, Lorg/apache/commons/lang3/mutable/MutableInt;-><init>(I)V

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 70119
    :cond_1
    invoke-virtual {v5}, Lorg/apache/commons/lang3/mutable/MutableInt;->increment()V

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 70149
    :cond_2
    new-instance p1, Ljava/util/BitSet;

    invoke-direct {p1}, Ljava/util/BitSet;-><init>()V

    .line 70159
    :goto_2
    array-length v1, p0

    if-ge v2, v1, :cond_5

    .line 70169
    aget-char v1, p0, v2

    .line 70179
    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/lang3/mutable/MutableInt;

    if-eqz v3, :cond_4

    .line 70199
    invoke-virtual {v3}, Lorg/apache/commons/lang3/mutable/MutableInt;->decrementAndGet()I

    move-result v3

    if-nez v3, :cond_3

    .line 70209
    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 70229
    :cond_3
    invoke-virtual {p1, v2}, Ljava/util/BitSet;->set(I)V

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 70259
    :cond_5
    invoke-static {p0, p1}, Lorg/apache/commons/lang3/ArrayUtils;->removeAll(Ljava/lang/Object;Ljava/util/BitSet;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [C

    check-cast p0, [C

    return-object p0

    .line 70029
    :cond_6
    :goto_3
    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->clone([C)[C

    move-result-object p0

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static varargs removeElements([D[D)[D
    .locals 7

    .line 72659
    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->isEmpty([D)Z

    move-result v0

    if-nez v0, :cond_6

    invoke-static {p1}, Lorg/apache/commons/lang3/ArrayUtils;->isEmpty([D)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_3

    .line 72689
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    array-length v1, p1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 72699
    array-length v1, p1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_2

    aget-wide v4, p1, v3

    .line 72709
    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    .line 72719
    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/commons/lang3/mutable/MutableInt;

    if-nez v5, :cond_1

    .line 72739
    new-instance v5, Lorg/apache/commons/lang3/mutable/MutableInt;

    const/4 v6, 0x1

    invoke-direct {v5, v6}, Lorg/apache/commons/lang3/mutable/MutableInt;-><init>(I)V

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 72759
    :cond_1
    invoke-virtual {v5}, Lorg/apache/commons/lang3/mutable/MutableInt;->increment()V

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 72789
    :cond_2
    new-instance p1, Ljava/util/BitSet;

    invoke-direct {p1}, Ljava/util/BitSet;-><init>()V

    .line 72799
    :goto_2
    array-length v1, p0

    if-ge v2, v1, :cond_5

    .line 72809
    aget-wide v3, p0, v2

    .line 72819
    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/lang3/mutable/MutableInt;

    if-eqz v1, :cond_4

    .line 72839
    invoke-virtual {v1}, Lorg/apache/commons/lang3/mutable/MutableInt;->decrementAndGet()I

    move-result v1

    if-nez v1, :cond_3

    .line 72849
    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 72869
    :cond_3
    invoke-virtual {p1, v2}, Ljava/util/BitSet;->set(I)V

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 72899
    :cond_5
    invoke-static {p0, p1}, Lorg/apache/commons/lang3/ArrayUtils;->removeAll(Ljava/lang/Object;Ljava/util/BitSet;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [D

    check-cast p0, [D

    return-object p0

    .line 72669
    :cond_6
    :goto_3
    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->clone([D)[D

    move-result-object p0

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static varargs removeElements([F[F)[F
    .locals 7

    .line 71779
    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->isEmpty([F)Z

    move-result v0

    if-nez v0, :cond_6

    invoke-static {p1}, Lorg/apache/commons/lang3/ArrayUtils;->isEmpty([F)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_3

    .line 71809
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    array-length v1, p1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 71819
    array-length v1, p1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_2

    aget v4, p1, v3

    .line 71829
    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    .line 71839
    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/commons/lang3/mutable/MutableInt;

    if-nez v5, :cond_1

    .line 71859
    new-instance v5, Lorg/apache/commons/lang3/mutable/MutableInt;

    const/4 v6, 0x1

    invoke-direct {v5, v6}, Lorg/apache/commons/lang3/mutable/MutableInt;-><init>(I)V

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 71879
    :cond_1
    invoke-virtual {v5}, Lorg/apache/commons/lang3/mutable/MutableInt;->increment()V

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 71909
    :cond_2
    new-instance p1, Ljava/util/BitSet;

    invoke-direct {p1}, Ljava/util/BitSet;-><init>()V

    .line 71919
    :goto_2
    array-length v1, p0

    if-ge v2, v1, :cond_5

    .line 71929
    aget v1, p0, v2

    .line 71939
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/lang3/mutable/MutableInt;

    if-eqz v3, :cond_4

    .line 71959
    invoke-virtual {v3}, Lorg/apache/commons/lang3/mutable/MutableInt;->decrementAndGet()I

    move-result v3

    if-nez v3, :cond_3

    .line 71969
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 71989
    :cond_3
    invoke-virtual {p1, v2}, Ljava/util/BitSet;->set(I)V

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 72019
    :cond_5
    invoke-static {p0, p1}, Lorg/apache/commons/lang3/ArrayUtils;->removeAll(Ljava/lang/Object;Ljava/util/BitSet;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [F

    check-cast p0, [F

    return-object p0

    .line 71789
    :cond_6
    :goto_3
    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->clone([F)[F

    move-result-object p0

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static varargs removeElements([I[I)[I
    .locals 7

    .line 69139
    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->isEmpty([I)Z

    move-result v0

    if-nez v0, :cond_6

    invoke-static {p1}, Lorg/apache/commons/lang3/ArrayUtils;->isEmpty([I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_3

    .line 69169
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    array-length v1, p1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 69179
    array-length v1, p1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_2

    aget v4, p1, v3

    .line 69189
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 69199
    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/commons/lang3/mutable/MutableInt;

    if-nez v5, :cond_1

    .line 69219
    new-instance v5, Lorg/apache/commons/lang3/mutable/MutableInt;

    const/4 v6, 0x1

    invoke-direct {v5, v6}, Lorg/apache/commons/lang3/mutable/MutableInt;-><init>(I)V

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 69239
    :cond_1
    invoke-virtual {v5}, Lorg/apache/commons/lang3/mutable/MutableInt;->increment()V

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 69269
    :cond_2
    new-instance p1, Ljava/util/BitSet;

    invoke-direct {p1}, Ljava/util/BitSet;-><init>()V

    .line 69279
    :goto_2
    array-length v1, p0

    if-ge v2, v1, :cond_5

    .line 69289
    aget v1, p0, v2

    .line 69299
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/lang3/mutable/MutableInt;

    if-eqz v3, :cond_4

    .line 69319
    invoke-virtual {v3}, Lorg/apache/commons/lang3/mutable/MutableInt;->decrementAndGet()I

    move-result v3

    if-nez v3, :cond_3

    .line 69329
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 69349
    :cond_3
    invoke-virtual {p1, v2}, Ljava/util/BitSet;->set(I)V

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 69379
    :cond_5
    invoke-static {p0, p1}, Lorg/apache/commons/lang3/ArrayUtils;->removeAll(Ljava/lang/Object;Ljava/util/BitSet;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [I

    check-cast p0, [I

    return-object p0

    .line 69149
    :cond_6
    :goto_3
    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->clone([I)[I

    move-result-object p0

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static varargs removeElements([J[J)[J
    .locals 7

    .line 70899
    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->isEmpty([J)Z

    move-result v0

    if-nez v0, :cond_6

    invoke-static {p1}, Lorg/apache/commons/lang3/ArrayUtils;->isEmpty([J)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_3

    .line 70929
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    array-length v1, p1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 70939
    array-length v1, p1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_2

    aget-wide v4, p1, v3

    .line 70949
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    .line 70959
    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/commons/lang3/mutable/MutableInt;

    if-nez v5, :cond_1

    .line 70979
    new-instance v5, Lorg/apache/commons/lang3/mutable/MutableInt;

    const/4 v6, 0x1

    invoke-direct {v5, v6}, Lorg/apache/commons/lang3/mutable/MutableInt;-><init>(I)V

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 70999
    :cond_1
    invoke-virtual {v5}, Lorg/apache/commons/lang3/mutable/MutableInt;->increment()V

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 71029
    :cond_2
    new-instance p1, Ljava/util/BitSet;

    invoke-direct {p1}, Ljava/util/BitSet;-><init>()V

    .line 71039
    :goto_2
    array-length v1, p0

    if-ge v2, v1, :cond_5

    .line 71049
    aget-wide v3, p0, v2

    .line 71059
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/lang3/mutable/MutableInt;

    if-eqz v1, :cond_4

    .line 71079
    invoke-virtual {v1}, Lorg/apache/commons/lang3/mutable/MutableInt;->decrementAndGet()I

    move-result v1

    if-nez v1, :cond_3

    .line 71089
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 71109
    :cond_3
    invoke-virtual {p1, v2}, Ljava/util/BitSet;->set(I)V

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 71139
    :cond_5
    invoke-static {p0, p1}, Lorg/apache/commons/lang3/ArrayUtils;->removeAll(Ljava/lang/Object;Ljava/util/BitSet;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [J

    check-cast p0, [J

    return-object p0

    .line 70909
    :cond_6
    :goto_3
    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->clone([J)[J

    move-result-object p0

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static varargs removeElements([Ljava/lang/Object;[Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;[TT;)[TT;"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    .line 66489
    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    invoke-static {p1}, Lorg/apache/commons/lang3/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_3

    .line 66519
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    array-length v1, p1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 66529
    array-length v1, p1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_2

    aget-object v4, p1, v3

    .line 66539
    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/commons/lang3/mutable/MutableInt;

    if-nez v5, :cond_1

    .line 66559
    new-instance v5, Lorg/apache/commons/lang3/mutable/MutableInt;

    const/4 v6, 0x1

    invoke-direct {v5, v6}, Lorg/apache/commons/lang3/mutable/MutableInt;-><init>(I)V

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 66579
    :cond_1
    invoke-virtual {v5}, Lorg/apache/commons/lang3/mutable/MutableInt;->increment()V

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 66609
    :cond_2
    new-instance p1, Ljava/util/BitSet;

    invoke-direct {p1}, Ljava/util/BitSet;-><init>()V

    .line 66619
    :goto_2
    array-length v1, p0

    if-ge v2, v1, :cond_5

    .line 66629
    aget-object v1, p0, v2

    .line 66639
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/lang3/mutable/MutableInt;

    if-eqz v3, :cond_4

    .line 66659
    invoke-virtual {v3}, Lorg/apache/commons/lang3/mutable/MutableInt;->decrementAndGet()I

    move-result v3

    if-nez v3, :cond_3

    .line 66669
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 66689
    :cond_3
    invoke-virtual {p1, v2}, Ljava/util/BitSet;->set(I)V

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 66729
    :cond_5
    invoke-static {p0, p1}, Lorg/apache/commons/lang3/ArrayUtils;->removeAll(Ljava/lang/Object;Ljava/util/BitSet;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/Object;

    check-cast p0, [Ljava/lang/Object;

    return-object p0

    .line 66499
    :cond_6
    :goto_3
    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->clone([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static varargs removeElements([S[S)[S
    .locals 7

    .line 68259
    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->isEmpty([S)Z

    move-result v0

    if-nez v0, :cond_6

    invoke-static {p1}, Lorg/apache/commons/lang3/ArrayUtils;->isEmpty([S)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_3

    .line 68289
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    array-length v1, p1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 68299
    array-length v1, p1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_2

    aget-short v4, p1, v3

    .line 68309
    invoke-static {v4}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v4

    .line 68319
    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/commons/lang3/mutable/MutableInt;

    if-nez v5, :cond_1

    .line 68339
    new-instance v5, Lorg/apache/commons/lang3/mutable/MutableInt;

    const/4 v6, 0x1

    invoke-direct {v5, v6}, Lorg/apache/commons/lang3/mutable/MutableInt;-><init>(I)V

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 68359
    :cond_1
    invoke-virtual {v5}, Lorg/apache/commons/lang3/mutable/MutableInt;->increment()V

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 68389
    :cond_2
    new-instance p1, Ljava/util/BitSet;

    invoke-direct {p1}, Ljava/util/BitSet;-><init>()V

    .line 68399
    :goto_2
    array-length v1, p0

    if-ge v2, v1, :cond_5

    .line 68409
    aget-short v1, p0, v2

    .line 68419
    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/lang3/mutable/MutableInt;

    if-eqz v3, :cond_4

    .line 68439
    invoke-virtual {v3}, Lorg/apache/commons/lang3/mutable/MutableInt;->decrementAndGet()I

    move-result v3

    if-nez v3, :cond_3

    .line 68449
    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 68469
    :cond_3
    invoke-virtual {p1, v2}, Ljava/util/BitSet;->set(I)V

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 68499
    :cond_5
    invoke-static {p0, p1}, Lorg/apache/commons/lang3/ArrayUtils;->removeAll(Ljava/lang/Object;Ljava/util/BitSet;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [S

    check-cast p0, [S

    return-object p0

    .line 68269
    :cond_6
    :goto_3
    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->clone([S)[S

    move-result-object p0

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static varargs removeElements([Z[Z)[Z
    .locals 7

    .line 73499
    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->isEmpty([Z)Z

    move-result v0

    if-nez v0, :cond_6

    invoke-static {p1}, Lorg/apache/commons/lang3/ArrayUtils;->isEmpty([Z)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_3

    .line 73529
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 73539
    array-length v1, p1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_2

    aget-boolean v4, p1, v3

    .line 73549
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    .line 73559
    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/commons/lang3/mutable/MutableInt;

    if-nez v5, :cond_1

    .line 73579
    new-instance v5, Lorg/apache/commons/lang3/mutable/MutableInt;

    const/4 v6, 0x1

    invoke-direct {v5, v6}, Lorg/apache/commons/lang3/mutable/MutableInt;-><init>(I)V

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 73599
    :cond_1
    invoke-virtual {v5}, Lorg/apache/commons/lang3/mutable/MutableInt;->increment()V

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 73629
    :cond_2
    new-instance p1, Ljava/util/BitSet;

    invoke-direct {p1}, Ljava/util/BitSet;-><init>()V

    .line 73639
    :goto_2
    array-length v1, p0

    if-ge v2, v1, :cond_5

    .line 73649
    aget-boolean v1, p0, v2

    .line 73659
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/lang3/mutable/MutableInt;

    if-eqz v3, :cond_4

    .line 73679
    invoke-virtual {v3}, Lorg/apache/commons/lang3/mutable/MutableInt;->decrementAndGet()I

    move-result v3

    if-nez v3, :cond_3

    .line 73689
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 73709
    :cond_3
    invoke-virtual {p1, v2}, Ljava/util/BitSet;->set(I)V

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 73739
    :cond_5
    invoke-static {p0, p1}, Lorg/apache/commons/lang3/ArrayUtils;->removeAll(Ljava/lang/Object;Ljava/util/BitSet;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Z

    check-cast p0, [Z

    return-object p0

    .line 73509
    :cond_6
    :goto_3
    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->clone([Z)[Z

    move-result-object p0

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static reverse([B)V
    .locals 2

    if-nez p0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 14919
    array-length v1, p0

    invoke-static {p0, v0, v1}, Lorg/apache/commons/lang3/ArrayUtils;->reverse([BII)V

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public static reverse([BII)V
    .locals 2

    if-nez p0, :cond_0

    return-void

    :cond_0
    if-gez p1, :cond_1

    const/4 p1, 0x0

    .line 15919
    :cond_1
    array-length v0, p0

    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    :goto_0
    if-le p2, p1, :cond_2

    .line 15949
    aget-byte v0, p0, p2

    .line 15959
    aget-byte v1, p0, p1

    aput-byte v1, p0, p2

    .line 15969
    aput-byte v0, p0, p1

    add-int/lit8 p2, p2, -0x1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_2
    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public static reverse([C)V
    .locals 2

    if-nez p0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 14779
    array-length v1, p0

    invoke-static {p0, v0, v1}, Lorg/apache/commons/lang3/ArrayUtils;->reverse([CII)V

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public static reverse([CII)V
    .locals 2

    if-nez p0, :cond_0

    return-void

    :cond_0
    if-gez p1, :cond_1

    const/4 p1, 0x0

    .line 16249
    :cond_1
    array-length v0, p0

    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    :goto_0
    if-le p2, p1, :cond_2

    .line 16279
    aget-char v0, p0, p2

    .line 16289
    aget-char v1, p0, p1

    aput-char v1, p0, p2

    .line 16299
    aput-char v0, p0, p1

    add-int/lit8 p2, p2, -0x1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_2
    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public static reverse([D)V
    .locals 2

    if-nez p0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 15059
    array-length v1, p0

    invoke-static {p0, v0, v1}, Lorg/apache/commons/lang3/ArrayUtils;->reverse([DII)V

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public static reverse([DII)V
    .locals 4

    if-nez p0, :cond_0

    return-void

    :cond_0
    if-gez p1, :cond_1

    const/4 p1, 0x0

    .line 16579
    :cond_1
    array-length v0, p0

    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    :goto_0
    if-le p2, p1, :cond_2

    .line 16609
    aget-wide v0, p0, p2

    .line 16619
    aget-wide v2, p0, p1

    aput-wide v2, p0, p2

    .line 16629
    aput-wide v0, p0, p1

    add-int/lit8 p2, p2, -0x1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_2
    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public static reverse([F)V
    .locals 2

    if-nez p0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 15199
    array-length v1, p0

    invoke-static {p0, v0, v1}, Lorg/apache/commons/lang3/ArrayUtils;->reverse([FII)V

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public static reverse([FII)V
    .locals 2

    if-nez p0, :cond_0

    return-void

    :cond_0
    if-gez p1, :cond_1

    const/4 p1, 0x0

    .line 16909
    :cond_1
    array-length v0, p0

    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    :goto_0
    if-le p2, p1, :cond_2

    .line 16939
    aget v0, p0, p2

    .line 16949
    aget v1, p0, p1

    aput v1, p0, p2

    .line 16959
    aput v0, p0, p1

    add-int/lit8 p2, p2, -0x1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_2
    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public static reverse([I)V
    .locals 2

    if-nez p0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 14499
    array-length v1, p0

    invoke-static {p0, v0, v1}, Lorg/apache/commons/lang3/ArrayUtils;->reverse([III)V

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public static reverse([III)V
    .locals 2

    if-nez p0, :cond_0

    return-void

    :cond_0
    if-gez p1, :cond_1

    const/4 p1, 0x0

    .line 17239
    :cond_1
    array-length v0, p0

    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    :goto_0
    if-le p2, p1, :cond_2

    .line 17269
    aget v0, p0, p2

    .line 17279
    aget v1, p0, p1

    aput v1, p0, p2

    .line 17289
    aput v0, p0, p1

    add-int/lit8 p2, p2, -0x1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_2
    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public static reverse([J)V
    .locals 2

    if-nez p0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 14359
    array-length v1, p0

    invoke-static {p0, v0, v1}, Lorg/apache/commons/lang3/ArrayUtils;->reverse([JII)V

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public static reverse([JII)V
    .locals 4

    if-nez p0, :cond_0

    return-void

    :cond_0
    if-gez p1, :cond_1

    const/4 p1, 0x0

    .line 17569
    :cond_1
    array-length v0, p0

    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    :goto_0
    if-le p2, p1, :cond_2

    .line 17599
    aget-wide v0, p0, p2

    .line 17609
    aget-wide v2, p0, p1

    aput-wide v2, p0, p2

    .line 17619
    aput-wide v0, p0, p1

    add-int/lit8 p2, p2, -0x1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_2
    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public static reverse([Ljava/lang/Object;)V
    .locals 2

    if-nez p0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 14219
    array-length v1, p0

    invoke-static {p0, v0, v1}, Lorg/apache/commons/lang3/ArrayUtils;->reverse([Ljava/lang/Object;II)V

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public static reverse([Ljava/lang/Object;II)V
    .locals 2

    if-nez p0, :cond_0

    return-void

    :cond_0
    if-gez p1, :cond_1

    const/4 p1, 0x0

    .line 17899
    :cond_1
    array-length v0, p0

    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    :goto_0
    if-le p2, p1, :cond_2

    .line 17929
    aget-object v0, p0, p2

    .line 17939
    aget-object v1, p0, p1

    aput-object v1, p0, p2

    .line 17949
    aput-object v0, p0, p1

    add-int/lit8 p2, p2, -0x1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_2
    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public static reverse([S)V
    .locals 2

    if-nez p0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 14639
    array-length v1, p0

    invoke-static {p0, v0, v1}, Lorg/apache/commons/lang3/ArrayUtils;->reverse([SII)V

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public static reverse([SII)V
    .locals 2

    if-nez p0, :cond_0

    return-void

    :cond_0
    if-gez p1, :cond_1

    const/4 p1, 0x0

    .line 18229
    :cond_1
    array-length v0, p0

    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    :goto_0
    if-le p2, p1, :cond_2

    .line 18259
    aget-short v0, p0, p2

    .line 18269
    aget-short v1, p0, p1

    aput-short v1, p0, p2

    .line 18279
    aput-short v0, p0, p1

    add-int/lit8 p2, p2, -0x1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_2
    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public static reverse([Z)V
    .locals 2

    if-nez p0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 15339
    array-length v1, p0

    invoke-static {p0, v0, v1}, Lorg/apache/commons/lang3/ArrayUtils;->reverse([ZII)V

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public static reverse([ZII)V
    .locals 2

    if-nez p0, :cond_0

    return-void

    :cond_0
    if-gez p1, :cond_1

    const/4 p1, 0x0

    .line 15589
    :cond_1
    array-length v0, p0

    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    :goto_0
    if-le p2, p1, :cond_2

    .line 15619
    aget-boolean v0, p0, p2

    .line 15629
    aget-boolean v1, p0, p1

    aput-boolean v1, p0, p2

    .line 15639
    aput-boolean v0, p0, p1

    add-int/lit8 p2, p2, -0x1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_2
    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public static shift([BI)V
    .locals 2

    if-nez p0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 25839
    array-length v1, p0

    invoke-static {p0, v0, v1, p1}, Lorg/apache/commons/lang3/ArrayUtils;->shift([BIII)V

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public static shift([BIII)V
    .locals 3

    if-nez p0, :cond_0

    return-void

    .line 27269
    :cond_0
    array-length v0, p0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    if-ge p1, v0, :cond_8

    if-gtz p2, :cond_1

    goto :goto_1

    :cond_1
    if-gez p1, :cond_2

    const/4 p1, 0x0

    .line 27329
    :cond_2
    array-length v0, p0

    if-lt p2, v0, :cond_3

    .line 27339
    array-length p2, p0

    :cond_3
    sub-int/2addr p2, p1

    if-gt p2, v1, :cond_4

    return-void

    .line 27399
    :cond_4
    rem-int/2addr p3, p2

    if-gez p3, :cond_5

    add-int/2addr p3, p2

    :cond_5
    :goto_0
    if-le p2, v1, :cond_8

    if-lez p3, :cond_8

    sub-int v0, p2, p3

    if-le p3, v0, :cond_6

    add-int/2addr p2, p1

    sub-int/2addr p2, v0

    .line 27499
    invoke-static {p0, p1, p2, v0}, Lorg/apache/commons/lang3/ArrayUtils;->swap([BIII)V

    sub-int p2, p3, v0

    move v2, p3

    move p3, p2

    move p2, v2

    goto :goto_0

    :cond_6
    if-ge p3, v0, :cond_7

    add-int p2, p1, v0

    .line 27539
    invoke-static {p0, p1, p2, p3}, Lorg/apache/commons/lang3/ArrayUtils;->swap([BIII)V

    add-int/2addr p1, p3

    move p2, v0

    goto :goto_0

    :cond_7
    add-int/2addr v0, p1

    .line 27579
    invoke-static {p0, p1, v0, p3}, Lorg/apache/commons/lang3/ArrayUtils;->swap([BIII)V

    :cond_8
    :goto_1
    return-void

    .array-data 1
    .end array-data
.end method

.method public static shift([CI)V
    .locals 2

    if-nez p0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 25649
    array-length v1, p0

    invoke-static {p0, v0, v1, p1}, Lorg/apache/commons/lang3/ArrayUtils;->shift([CIII)V

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public static shift([CIII)V
    .locals 3

    if-nez p0, :cond_0

    return-void

    .line 27869
    :cond_0
    array-length v0, p0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    if-ge p1, v0, :cond_8

    if-gtz p2, :cond_1

    goto :goto_1

    :cond_1
    if-gez p1, :cond_2

    const/4 p1, 0x0

    .line 27929
    :cond_2
    array-length v0, p0

    if-lt p2, v0, :cond_3

    .line 27939
    array-length p2, p0

    :cond_3
    sub-int/2addr p2, p1

    if-gt p2, v1, :cond_4

    return-void

    .line 27999
    :cond_4
    rem-int/2addr p3, p2

    if-gez p3, :cond_5

    add-int/2addr p3, p2

    :cond_5
    :goto_0
    if-le p2, v1, :cond_8

    if-lez p3, :cond_8

    sub-int v0, p2, p3

    if-le p3, v0, :cond_6

    add-int/2addr p2, p1

    sub-int/2addr p2, v0

    .line 28099
    invoke-static {p0, p1, p2, v0}, Lorg/apache/commons/lang3/ArrayUtils;->swap([CIII)V

    sub-int p2, p3, v0

    move v2, p3

    move p3, p2

    move p2, v2

    goto :goto_0

    :cond_6
    if-ge p3, v0, :cond_7

    add-int p2, p1, v0

    .line 28139
    invoke-static {p0, p1, p2, p3}, Lorg/apache/commons/lang3/ArrayUtils;->swap([CIII)V

    add-int/2addr p1, p3

    move p2, v0

    goto :goto_0

    :cond_7
    add-int/2addr v0, p1

    .line 28179
    invoke-static {p0, p1, v0, p3}, Lorg/apache/commons/lang3/ArrayUtils;->swap([CIII)V

    :cond_8
    :goto_1
    return-void

    .array-data 1
    .end array-data
.end method

.method public static shift([DI)V
    .locals 2

    if-nez p0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 26029
    array-length v1, p0

    invoke-static {p0, v0, v1, p1}, Lorg/apache/commons/lang3/ArrayUtils;->shift([DIII)V

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public static shift([DIII)V
    .locals 3

    if-nez p0, :cond_0

    return-void

    .line 28469
    :cond_0
    array-length v0, p0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    if-ge p1, v0, :cond_8

    if-gtz p2, :cond_1

    goto :goto_1

    :cond_1
    if-gez p1, :cond_2

    const/4 p1, 0x0

    .line 28529
    :cond_2
    array-length v0, p0

    if-lt p2, v0, :cond_3

    .line 28539
    array-length p2, p0

    :cond_3
    sub-int/2addr p2, p1

    if-gt p2, v1, :cond_4

    return-void

    .line 28599
    :cond_4
    rem-int/2addr p3, p2

    if-gez p3, :cond_5

    add-int/2addr p3, p2

    :cond_5
    :goto_0
    if-le p2, v1, :cond_8

    if-lez p3, :cond_8

    sub-int v0, p2, p3

    if-le p3, v0, :cond_6

    add-int/2addr p2, p1

    sub-int/2addr p2, v0

    .line 28699
    invoke-static {p0, p1, p2, v0}, Lorg/apache/commons/lang3/ArrayUtils;->swap([DIII)V

    sub-int p2, p3, v0

    move v2, p3

    move p3, p2

    move p2, v2

    goto :goto_0

    :cond_6
    if-ge p3, v0, :cond_7

    add-int p2, p1, v0

    .line 28739
    invoke-static {p0, p1, p2, p3}, Lorg/apache/commons/lang3/ArrayUtils;->swap([DIII)V

    add-int/2addr p1, p3

    move p2, v0

    goto :goto_0

    :cond_7
    add-int/2addr v0, p1

    .line 28779
    invoke-static {p0, p1, v0, p3}, Lorg/apache/commons/lang3/ArrayUtils;->swap([DIII)V

    :cond_8
    :goto_1
    return-void

    .array-data 1
    .end array-data
.end method

.method public static shift([FI)V
    .locals 2

    if-nez p0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 26219
    array-length v1, p0

    invoke-static {p0, v0, v1, p1}, Lorg/apache/commons/lang3/ArrayUtils;->shift([FIII)V

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public static shift([FIII)V
    .locals 3

    if-nez p0, :cond_0

    return-void

    .line 29069
    :cond_0
    array-length v0, p0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    if-ge p1, v0, :cond_8

    if-gtz p2, :cond_1

    goto :goto_1

    :cond_1
    if-gez p1, :cond_2

    const/4 p1, 0x0

    .line 29129
    :cond_2
    array-length v0, p0

    if-lt p2, v0, :cond_3

    .line 29139
    array-length p2, p0

    :cond_3
    sub-int/2addr p2, p1

    if-gt p2, v1, :cond_4

    return-void

    .line 29199
    :cond_4
    rem-int/2addr p3, p2

    if-gez p3, :cond_5

    add-int/2addr p3, p2

    :cond_5
    :goto_0
    if-le p2, v1, :cond_8

    if-lez p3, :cond_8

    sub-int v0, p2, p3

    if-le p3, v0, :cond_6

    add-int/2addr p2, p1

    sub-int/2addr p2, v0

    .line 29299
    invoke-static {p0, p1, p2, v0}, Lorg/apache/commons/lang3/ArrayUtils;->swap([FIII)V

    sub-int p2, p3, v0

    move v2, p3

    move p3, p2

    move p2, v2

    goto :goto_0

    :cond_6
    if-ge p3, v0, :cond_7

    add-int p2, p1, v0

    .line 29339
    invoke-static {p0, p1, p2, p3}, Lorg/apache/commons/lang3/ArrayUtils;->swap([FIII)V

    add-int/2addr p1, p3

    move p2, v0

    goto :goto_0

    :cond_7
    add-int/2addr v0, p1

    .line 29379
    invoke-static {p0, p1, v0, p3}, Lorg/apache/commons/lang3/ArrayUtils;->swap([FIII)V

    :cond_8
    :goto_1
    return-void

    .array-data 1
    .end array-data
.end method

.method public static shift([II)V
    .locals 2

    if-nez p0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 25269
    array-length v1, p0

    invoke-static {p0, v0, v1, p1}, Lorg/apache/commons/lang3/ArrayUtils;->shift([IIII)V

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public static shift([IIII)V
    .locals 3

    if-nez p0, :cond_0

    return-void

    .line 29669
    :cond_0
    array-length v0, p0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    if-ge p1, v0, :cond_8

    if-gtz p2, :cond_1

    goto :goto_1

    :cond_1
    if-gez p1, :cond_2

    const/4 p1, 0x0

    .line 29729
    :cond_2
    array-length v0, p0

    if-lt p2, v0, :cond_3

    .line 29739
    array-length p2, p0

    :cond_3
    sub-int/2addr p2, p1

    if-gt p2, v1, :cond_4

    return-void

    .line 29799
    :cond_4
    rem-int/2addr p3, p2

    if-gez p3, :cond_5

    add-int/2addr p3, p2

    :cond_5
    :goto_0
    if-le p2, v1, :cond_8

    if-lez p3, :cond_8

    sub-int v0, p2, p3

    if-le p3, v0, :cond_6

    add-int/2addr p2, p1

    sub-int/2addr p2, v0

    .line 29899
    invoke-static {p0, p1, p2, v0}, Lorg/apache/commons/lang3/ArrayUtils;->swap([IIII)V

    sub-int p2, p3, v0

    move v2, p3

    move p3, p2

    move p2, v2

    goto :goto_0

    :cond_6
    if-ge p3, v0, :cond_7

    add-int p2, p1, v0

    .line 29939
    invoke-static {p0, p1, p2, p3}, Lorg/apache/commons/lang3/ArrayUtils;->swap([IIII)V

    add-int/2addr p1, p3

    move p2, v0

    goto :goto_0

    :cond_7
    add-int/2addr v0, p1

    .line 29979
    invoke-static {p0, p1, v0, p3}, Lorg/apache/commons/lang3/ArrayUtils;->swap([IIII)V

    :cond_8
    :goto_1
    return-void

    .array-data 1
    .end array-data
.end method

.method public static shift([JI)V
    .locals 2

    if-nez p0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 25079
    array-length v1, p0

    invoke-static {p0, v0, v1, p1}, Lorg/apache/commons/lang3/ArrayUtils;->shift([JIII)V

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public static shift([JIII)V
    .locals 3

    if-nez p0, :cond_0

    return-void

    .line 30269
    :cond_0
    array-length v0, p0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    if-ge p1, v0, :cond_8

    if-gtz p2, :cond_1

    goto :goto_1

    :cond_1
    if-gez p1, :cond_2

    const/4 p1, 0x0

    .line 30329
    :cond_2
    array-length v0, p0

    if-lt p2, v0, :cond_3

    .line 30339
    array-length p2, p0

    :cond_3
    sub-int/2addr p2, p1

    if-gt p2, v1, :cond_4

    return-void

    .line 30399
    :cond_4
    rem-int/2addr p3, p2

    if-gez p3, :cond_5

    add-int/2addr p3, p2

    :cond_5
    :goto_0
    if-le p2, v1, :cond_8

    if-lez p3, :cond_8

    sub-int v0, p2, p3

    if-le p3, v0, :cond_6

    add-int/2addr p2, p1

    sub-int/2addr p2, v0

    .line 30499
    invoke-static {p0, p1, p2, v0}, Lorg/apache/commons/lang3/ArrayUtils;->swap([JIII)V

    sub-int p2, p3, v0

    move v2, p3

    move p3, p2

    move p2, v2

    goto :goto_0

    :cond_6
    if-ge p3, v0, :cond_7

    add-int p2, p1, v0

    .line 30539
    invoke-static {p0, p1, p2, p3}, Lorg/apache/commons/lang3/ArrayUtils;->swap([JIII)V

    add-int/2addr p1, p3

    move p2, v0

    goto :goto_0

    :cond_7
    add-int/2addr v0, p1

    .line 30579
    invoke-static {p0, p1, v0, p3}, Lorg/apache/commons/lang3/ArrayUtils;->swap([JIII)V

    :cond_8
    :goto_1
    return-void

    .array-data 1
    .end array-data
.end method

.method public static shift([Ljava/lang/Object;I)V
    .locals 2

    if-nez p0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 24889
    array-length v1, p0

    invoke-static {p0, v0, v1, p1}, Lorg/apache/commons/lang3/ArrayUtils;->shift([Ljava/lang/Object;III)V

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public static shift([Ljava/lang/Object;III)V
    .locals 3

    if-nez p0, :cond_0

    return-void

    .line 30869
    :cond_0
    array-length v0, p0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    if-ge p1, v0, :cond_8

    if-gtz p2, :cond_1

    goto :goto_1

    :cond_1
    if-gez p1, :cond_2

    const/4 p1, 0x0

    .line 30929
    :cond_2
    array-length v0, p0

    if-lt p2, v0, :cond_3

    .line 30939
    array-length p2, p0

    :cond_3
    sub-int/2addr p2, p1

    if-gt p2, v1, :cond_4

    return-void

    .line 30999
    :cond_4
    rem-int/2addr p3, p2

    if-gez p3, :cond_5

    add-int/2addr p3, p2

    :cond_5
    :goto_0
    if-le p2, v1, :cond_8

    if-lez p3, :cond_8

    sub-int v0, p2, p3

    if-le p3, v0, :cond_6

    add-int/2addr p2, p1

    sub-int/2addr p2, v0

    .line 31099
    invoke-static {p0, p1, p2, v0}, Lorg/apache/commons/lang3/ArrayUtils;->swap([Ljava/lang/Object;III)V

    sub-int p2, p3, v0

    move v2, p3

    move p3, p2

    move p2, v2

    goto :goto_0

    :cond_6
    if-ge p3, v0, :cond_7

    add-int p2, p1, v0

    .line 31139
    invoke-static {p0, p1, p2, p3}, Lorg/apache/commons/lang3/ArrayUtils;->swap([Ljava/lang/Object;III)V

    add-int/2addr p1, p3

    move p2, v0

    goto :goto_0

    :cond_7
    add-int/2addr v0, p1

    .line 31179
    invoke-static {p0, p1, v0, p3}, Lorg/apache/commons/lang3/ArrayUtils;->swap([Ljava/lang/Object;III)V

    :cond_8
    :goto_1
    return-void

    .array-data 1
    .end array-data
.end method

.method public static shift([SI)V
    .locals 2

    if-nez p0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 25459
    array-length v1, p0

    invoke-static {p0, v0, v1, p1}, Lorg/apache/commons/lang3/ArrayUtils;->shift([SIII)V

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public static shift([SIII)V
    .locals 3

    if-nez p0, :cond_0

    return-void

    .line 31469
    :cond_0
    array-length v0, p0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    if-ge p1, v0, :cond_8

    if-gtz p2, :cond_1

    goto :goto_1

    :cond_1
    if-gez p1, :cond_2

    const/4 p1, 0x0

    .line 31529
    :cond_2
    array-length v0, p0

    if-lt p2, v0, :cond_3

    .line 31539
    array-length p2, p0

    :cond_3
    sub-int/2addr p2, p1

    if-gt p2, v1, :cond_4

    return-void

    .line 31599
    :cond_4
    rem-int/2addr p3, p2

    if-gez p3, :cond_5

    add-int/2addr p3, p2

    :cond_5
    :goto_0
    if-le p2, v1, :cond_8

    if-lez p3, :cond_8

    sub-int v0, p2, p3

    if-le p3, v0, :cond_6

    add-int/2addr p2, p1

    sub-int/2addr p2, v0

    .line 31699
    invoke-static {p0, p1, p2, v0}, Lorg/apache/commons/lang3/ArrayUtils;->swap([SIII)V

    sub-int p2, p3, v0

    move v2, p3

    move p3, p2

    move p2, v2

    goto :goto_0

    :cond_6
    if-ge p3, v0, :cond_7

    add-int p2, p1, v0

    .line 31739
    invoke-static {p0, p1, p2, p3}, Lorg/apache/commons/lang3/ArrayUtils;->swap([SIII)V

    add-int/2addr p1, p3

    move p2, v0

    goto :goto_0

    :cond_7
    add-int/2addr v0, p1

    .line 31779
    invoke-static {p0, p1, v0, p3}, Lorg/apache/commons/lang3/ArrayUtils;->swap([SIII)V

    :cond_8
    :goto_1
    return-void

    .array-data 1
    .end array-data
.end method

.method public static shift([ZI)V
    .locals 2

    if-nez p0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 26409
    array-length v1, p0

    invoke-static {p0, v0, v1, p1}, Lorg/apache/commons/lang3/ArrayUtils;->shift([ZIII)V

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public static shift([ZIII)V
    .locals 3

    if-nez p0, :cond_0

    return-void

    .line 26669
    :cond_0
    array-length v0, p0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    if-ge p1, v0, :cond_8

    if-gtz p2, :cond_1

    goto :goto_1

    :cond_1
    if-gez p1, :cond_2

    const/4 p1, 0x0

    .line 26729
    :cond_2
    array-length v0, p0

    if-lt p2, v0, :cond_3

    .line 26739
    array-length p2, p0

    :cond_3
    sub-int/2addr p2, p1

    if-gt p2, v1, :cond_4

    return-void

    .line 26799
    :cond_4
    rem-int/2addr p3, p2

    if-gez p3, :cond_5

    add-int/2addr p3, p2

    :cond_5
    :goto_0
    if-le p2, v1, :cond_8

    if-lez p3, :cond_8

    sub-int v0, p2, p3

    if-le p3, v0, :cond_6

    add-int/2addr p2, p1

    sub-int/2addr p2, v0

    .line 26899
    invoke-static {p0, p1, p2, v0}, Lorg/apache/commons/lang3/ArrayUtils;->swap([ZIII)V

    sub-int p2, p3, v0

    move v2, p3

    move p3, p2

    move p2, v2

    goto :goto_0

    :cond_6
    if-ge p3, v0, :cond_7

    add-int p2, p1, v0

    .line 26939
    invoke-static {p0, p1, p2, p3}, Lorg/apache/commons/lang3/ArrayUtils;->swap([ZIII)V

    add-int/2addr p1, p3

    move p2, v0

    goto :goto_0

    :cond_7
    add-int/2addr v0, p1

    .line 26979
    invoke-static {p0, p1, v0, p3}, Lorg/apache/commons/lang3/ArrayUtils;->swap([ZIII)V

    :cond_8
    :goto_1
    return-void

    .array-data 1
    .end array-data
.end method

.method public static shuffle([B)V
    .locals 1

    .line 85099
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    invoke-static {p0, v0}, Lorg/apache/commons/lang3/ArrayUtils;->shuffle([BLjava/util/Random;)V

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public static shuffle([BLjava/util/Random;)V
    .locals 4

    .line 85219
    array-length v0, p0

    :goto_0
    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    add-int/lit8 v2, v0, -0x1

    .line 85229
    invoke-virtual {p1, v0}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    invoke-static {p0, v2, v3, v1}, Lorg/apache/commons/lang3/ArrayUtils;->swap([BIII)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public static shuffle([C)V
    .locals 1

    .line 85349
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    invoke-static {p0, v0}, Lorg/apache/commons/lang3/ArrayUtils;->shuffle([CLjava/util/Random;)V

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public static shuffle([CLjava/util/Random;)V
    .locals 4

    .line 85469
    array-length v0, p0

    :goto_0
    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    add-int/lit8 v2, v0, -0x1

    .line 85479
    invoke-virtual {p1, v0}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    invoke-static {p0, v2, v3, v1}, Lorg/apache/commons/lang3/ArrayUtils;->swap([CIII)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public static shuffle([D)V
    .locals 1

    .line 86599
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    invoke-static {p0, v0}, Lorg/apache/commons/lang3/ArrayUtils;->shuffle([DLjava/util/Random;)V

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public static shuffle([DLjava/util/Random;)V
    .locals 4

    .line 86719
    array-length v0, p0

    :goto_0
    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    add-int/lit8 v2, v0, -0x1

    .line 86729
    invoke-virtual {p1, v0}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    invoke-static {p0, v2, v3, v1}, Lorg/apache/commons/lang3/ArrayUtils;->swap([DIII)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public static shuffle([F)V
    .locals 1

    .line 86349
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    invoke-static {p0, v0}, Lorg/apache/commons/lang3/ArrayUtils;->shuffle([FLjava/util/Random;)V

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public static shuffle([FLjava/util/Random;)V
    .locals 4

    .line 86469
    array-length v0, p0

    :goto_0
    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    add-int/lit8 v2, v0, -0x1

    .line 86479
    invoke-virtual {p1, v0}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    invoke-static {p0, v2, v3, v1}, Lorg/apache/commons/lang3/ArrayUtils;->swap([FIII)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public static shuffle([I)V
    .locals 1

    .line 85849
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    invoke-static {p0, v0}, Lorg/apache/commons/lang3/ArrayUtils;->shuffle([ILjava/util/Random;)V

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public static shuffle([ILjava/util/Random;)V
    .locals 4

    .line 85969
    array-length v0, p0

    :goto_0
    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    add-int/lit8 v2, v0, -0x1

    .line 85979
    invoke-virtual {p1, v0}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    invoke-static {p0, v2, v3, v1}, Lorg/apache/commons/lang3/ArrayUtils;->swap([IIII)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public static shuffle([J)V
    .locals 1

    .line 86099
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    invoke-static {p0, v0}, Lorg/apache/commons/lang3/ArrayUtils;->shuffle([JLjava/util/Random;)V

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public static shuffle([JLjava/util/Random;)V
    .locals 4

    .line 86219
    array-length v0, p0

    :goto_0
    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    add-int/lit8 v2, v0, -0x1

    .line 86229
    invoke-virtual {p1, v0}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    invoke-static {p0, v2, v3, v1}, Lorg/apache/commons/lang3/ArrayUtils;->swap([JIII)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public static shuffle([Ljava/lang/Object;)V
    .locals 1

    .line 84599
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    invoke-static {p0, v0}, Lorg/apache/commons/lang3/ArrayUtils;->shuffle([Ljava/lang/Object;Ljava/util/Random;)V

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public static shuffle([Ljava/lang/Object;Ljava/util/Random;)V
    .locals 4

    .line 84719
    array-length v0, p0

    :goto_0
    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    add-int/lit8 v2, v0, -0x1

    .line 84729
    invoke-virtual {p1, v0}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    invoke-static {p0, v2, v3, v1}, Lorg/apache/commons/lang3/ArrayUtils;->swap([Ljava/lang/Object;III)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public static shuffle([S)V
    .locals 1

    .line 85599
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    invoke-static {p0, v0}, Lorg/apache/commons/lang3/ArrayUtils;->shuffle([SLjava/util/Random;)V

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public static shuffle([SLjava/util/Random;)V
    .locals 4

    .line 85719
    array-length v0, p0

    :goto_0
    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    add-int/lit8 v2, v0, -0x1

    .line 85729
    invoke-virtual {p1, v0}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    invoke-static {p0, v2, v3, v1}, Lorg/apache/commons/lang3/ArrayUtils;->swap([SIII)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public static shuffle([Z)V
    .locals 1

    .line 84849
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    invoke-static {p0, v0}, Lorg/apache/commons/lang3/ArrayUtils;->shuffle([ZLjava/util/Random;)V

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public static shuffle([ZLjava/util/Random;)V
    .locals 4

    .line 84969
    array-length v0, p0

    :goto_0
    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    add-int/lit8 v2, v0, -0x1

    .line 84979
    invoke-virtual {p1, v0}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    invoke-static {p0, v2, v3, v1}, Lorg/apache/commons/lang3/ArrayUtils;->swap([ZIII)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public static subarray([BII)[B
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const/4 v0, 0x0

    if-gez p1, :cond_1

    move p1, v0

    .line 11089
    :cond_1
    array-length v1, p0

    if-le p2, v1, :cond_2

    .line 11099
    array-length p2, p0

    :cond_2
    sub-int/2addr p2, p1

    if-gtz p2, :cond_3

    .line 11139
    sget-object p0, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_BYTE_ARRAY:[B

    return-object p0

    .line 11169
    :cond_3
    new-array v1, p2, [B

    .line 11179
    invoke-static {p0, p1, v1, v0, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v1

    .array-data 1
    .end array-data
.end method

.method public static subarray([CII)[C
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const/4 v0, 0x0

    if-gez p1, :cond_1

    move p1, v0

    .line 10689
    :cond_1
    array-length v1, p0

    if-le p2, v1, :cond_2

    .line 10699
    array-length p2, p0

    :cond_2
    sub-int/2addr p2, p1

    if-gtz p2, :cond_3

    .line 10739
    sget-object p0, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_CHAR_ARRAY:[C

    return-object p0

    .line 10769
    :cond_3
    new-array v1, p2, [C

    .line 10779
    invoke-static {p0, p1, v1, v0, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v1

    .array-data 1
    .end array-data
.end method

.method public static subarray([DII)[D
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const/4 v0, 0x0

    if-gez p1, :cond_1

    move p1, v0

    .line 11489
    :cond_1
    array-length v1, p0

    if-le p2, v1, :cond_2

    .line 11499
    array-length p2, p0

    :cond_2
    sub-int/2addr p2, p1

    if-gtz p2, :cond_3

    .line 11539
    sget-object p0, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_DOUBLE_ARRAY:[D

    return-object p0

    .line 11569
    :cond_3
    new-array v1, p2, [D

    .line 11579
    invoke-static {p0, p1, v1, v0, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v1

    .array-data 1
    .end array-data
.end method

.method public static subarray([FII)[F
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const/4 v0, 0x0

    if-gez p1, :cond_1

    move p1, v0

    .line 11889
    :cond_1
    array-length v1, p0

    if-le p2, v1, :cond_2

    .line 11899
    array-length p2, p0

    :cond_2
    sub-int/2addr p2, p1

    if-gtz p2, :cond_3

    .line 11939
    sget-object p0, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_FLOAT_ARRAY:[F

    return-object p0

    .line 11969
    :cond_3
    new-array v1, p2, [F

    .line 11979
    invoke-static {p0, p1, v1, v0, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v1

    .array-data 1
    .end array-data
.end method

.method public static subarray([III)[I
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const/4 v0, 0x0

    if-gez p1, :cond_1

    move p1, v0

    .line 9889
    :cond_1
    array-length v1, p0

    if-le p2, v1, :cond_2

    .line 9899
    array-length p2, p0

    :cond_2
    sub-int/2addr p2, p1

    if-gtz p2, :cond_3

    .line 9939
    sget-object p0, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_INT_ARRAY:[I

    return-object p0

    .line 9969
    :cond_3
    new-array v1, p2, [I

    .line 9979
    invoke-static {p0, p1, v1, v0, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v1

    .array-data 1
    .end array-data
.end method

.method public static subarray([JII)[J
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const/4 v0, 0x0

    if-gez p1, :cond_1

    move p1, v0

    .line 9489
    :cond_1
    array-length v1, p0

    if-le p2, v1, :cond_2

    .line 9499
    array-length p2, p0

    :cond_2
    sub-int/2addr p2, p1

    if-gtz p2, :cond_3

    .line 9539
    sget-object p0, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_LONG_ARRAY:[J

    return-object p0

    .line 9569
    :cond_3
    new-array v1, p2, [J

    .line 9579
    invoke-static {p0, p1, v1, v0, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v1

    .array-data 1
    .end array-data
.end method

.method public static subarray([Ljava/lang/Object;II)[Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;II)[TT;"
        }
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const/4 v0, 0x0

    if-gez p1, :cond_1

    move p1, v0

    .line 9049
    :cond_1
    array-length v1, p0

    if-le p2, v1, :cond_2

    .line 9059
    array-length p2, p0

    :cond_2
    sub-int/2addr p2, p1

    .line 9089
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v1

    if-gtz p2, :cond_3

    .line 9119
    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/Object;

    check-cast p0, [Ljava/lang/Object;

    return-object p0

    .line 9169
    :cond_3
    invoke-static {v1, p2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Object;

    check-cast v1, [Ljava/lang/Object;

    .line 9179
    invoke-static {p0, p1, v1, v0, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v1

    .array-data 1
    .end array-data
.end method

.method public static subarray([SII)[S
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const/4 v0, 0x0

    if-gez p1, :cond_1

    move p1, v0

    .line 10289
    :cond_1
    array-length v1, p0

    if-le p2, v1, :cond_2

    .line 10299
    array-length p2, p0

    :cond_2
    sub-int/2addr p2, p1

    if-gtz p2, :cond_3

    .line 10339
    sget-object p0, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_SHORT_ARRAY:[S

    return-object p0

    .line 10369
    :cond_3
    new-array v1, p2, [S

    .line 10379
    invoke-static {p0, p1, v1, v0, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v1

    .array-data 1
    .end array-data
.end method

.method public static subarray([ZII)[Z
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const/4 v0, 0x0

    if-gez p1, :cond_1

    move p1, v0

    .line 12289
    :cond_1
    array-length v1, p0

    if-le p2, v1, :cond_2

    .line 12299
    array-length p2, p0

    :cond_2
    sub-int/2addr p2, p1

    if-gtz p2, :cond_3

    .line 12339
    sget-object p0, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_BOOLEAN_ARRAY:[Z

    return-object p0

    .line 12369
    :cond_3
    new-array v1, p2, [Z

    .line 12379
    invoke-static {p0, p1, v1, v0, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v1

    .array-data 1
    .end array-data
.end method

.method public static swap([BII)V
    .locals 1

    if-eqz p0, :cond_1

    .line 19989
    array-length v0, p0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 20019
    invoke-static {p0, p1, p2, v0}, Lorg/apache/commons/lang3/ArrayUtils;->swap([BIII)V

    :cond_1
    :goto_0
    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public static swap([BIII)V
    .locals 3

    if-eqz p0, :cond_3

    .line 21559
    array-length v0, p0

    if-eqz v0, :cond_3

    array-length v0, p0

    if-ge p1, v0, :cond_3

    array-length v0, p0

    if-lt p2, v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    if-gez p1, :cond_1

    move p1, v0

    :cond_1
    if-gez p2, :cond_2

    move p2, v0

    .line 21649
    :cond_2
    array-length v1, p0

    sub-int/2addr v1, p1

    invoke-static {p3, v1}, Ljava/lang/Math;->min(II)I

    move-result p3

    array-length v1, p0

    sub-int/2addr v1, p2

    invoke-static {p3, v1}, Ljava/lang/Math;->min(II)I

    move-result p3

    :goto_0
    if-ge v0, p3, :cond_3

    .line 21669
    aget-byte v1, p0, p1

    .line 21679
    aget-byte v2, p0, p2

    aput-byte v2, p0, p1

    .line 21689
    aput-byte v1, p0, p2

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 p1, p1, 0x1

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public static swap([CII)V
    .locals 1

    if-eqz p0, :cond_1

    .line 19709
    array-length v0, p0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 19739
    invoke-static {p0, p1, p2, v0}, Lorg/apache/commons/lang3/ArrayUtils;->swap([CIII)V

    :cond_1
    :goto_0
    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public static swap([CIII)V
    .locals 3

    if-eqz p0, :cond_3

    .line 21979
    array-length v0, p0

    if-eqz v0, :cond_3

    array-length v0, p0

    if-ge p1, v0, :cond_3

    array-length v0, p0

    if-lt p2, v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    if-gez p1, :cond_1

    move p1, v0

    :cond_1
    if-gez p2, :cond_2

    move p2, v0

    .line 22069
    :cond_2
    array-length v1, p0

    sub-int/2addr v1, p1

    invoke-static {p3, v1}, Ljava/lang/Math;->min(II)I

    move-result p3

    array-length v1, p0

    sub-int/2addr v1, p2

    invoke-static {p3, v1}, Ljava/lang/Math;->min(II)I

    move-result p3

    :goto_0
    if-ge v0, p3, :cond_3

    .line 22089
    aget-char v1, p0, p1

    .line 22099
    aget-char v2, p0, p2

    aput-char v2, p0, p1

    .line 22109
    aput-char v1, p0, p2

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 p1, p1, 0x1

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public static swap([DII)V
    .locals 1

    if-eqz p0, :cond_1

    .line 20269
    array-length v0, p0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 20299
    invoke-static {p0, p1, p2, v0}, Lorg/apache/commons/lang3/ArrayUtils;->swap([DIII)V

    :cond_1
    :goto_0
    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public static swap([DIII)V
    .locals 5

    if-eqz p0, :cond_3

    .line 22399
    array-length v0, p0

    if-eqz v0, :cond_3

    array-length v0, p0

    if-ge p1, v0, :cond_3

    array-length v0, p0

    if-lt p2, v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    if-gez p1, :cond_1

    move p1, v0

    :cond_1
    if-gez p2, :cond_2

    move p2, v0

    .line 22489
    :cond_2
    array-length v1, p0

    sub-int/2addr v1, p1

    invoke-static {p3, v1}, Ljava/lang/Math;->min(II)I

    move-result p3

    array-length v1, p0

    sub-int/2addr v1, p2

    invoke-static {p3, v1}, Ljava/lang/Math;->min(II)I

    move-result p3

    :goto_0
    if-ge v0, p3, :cond_3

    .line 22509
    aget-wide v1, p0, p1

    .line 22519
    aget-wide v3, p0, p2

    aput-wide v3, p0, p1

    .line 22529
    aput-wide v1, p0, p2

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 p1, p1, 0x1

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public static swap([FII)V
    .locals 1

    if-eqz p0, :cond_1

    .line 20549
    array-length v0, p0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 20579
    invoke-static {p0, p1, p2, v0}, Lorg/apache/commons/lang3/ArrayUtils;->swap([FIII)V

    :cond_1
    :goto_0
    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public static swap([FIII)V
    .locals 3

    if-eqz p0, :cond_3

    .line 22819
    array-length v0, p0

    if-eqz v0, :cond_3

    array-length v0, p0

    if-ge p1, v0, :cond_3

    array-length v0, p0

    if-lt p2, v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    if-gez p1, :cond_1

    move p1, v0

    :cond_1
    if-gez p2, :cond_2

    move p2, v0

    .line 22909
    :cond_2
    array-length v1, p0

    sub-int/2addr v1, p1

    invoke-static {p3, v1}, Ljava/lang/Math;->min(II)I

    move-result p3

    array-length v1, p0

    sub-int/2addr v1, p2

    invoke-static {p3, v1}, Ljava/lang/Math;->min(II)I

    move-result p3

    :goto_0
    if-ge v0, p3, :cond_3

    .line 22929
    aget v1, p0, p1

    .line 22939
    aget v2, p0, p2

    aput v2, p0, p1

    .line 22949
    aput v1, p0, p2

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 p1, p1, 0x1

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public static swap([III)V
    .locals 1

    if-eqz p0, :cond_1

    .line 19149
    array-length v0, p0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 19179
    invoke-static {p0, p1, p2, v0}, Lorg/apache/commons/lang3/ArrayUtils;->swap([IIII)V

    :cond_1
    :goto_0
    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public static swap([IIII)V
    .locals 3

    if-eqz p0, :cond_3

    .line 23249
    array-length v0, p0

    if-eqz v0, :cond_3

    array-length v0, p0

    if-ge p1, v0, :cond_3

    array-length v0, p0

    if-lt p2, v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    if-gez p1, :cond_1

    move p1, v0

    :cond_1
    if-gez p2, :cond_2

    move p2, v0

    .line 23339
    :cond_2
    array-length v1, p0

    sub-int/2addr v1, p1

    invoke-static {p3, v1}, Ljava/lang/Math;->min(II)I

    move-result p3

    array-length v1, p0

    sub-int/2addr v1, p2

    invoke-static {p3, v1}, Ljava/lang/Math;->min(II)I

    move-result p3

    :goto_0
    if-ge v0, p3, :cond_3

    .line 23359
    aget v1, p0, p1

    .line 23369
    aget v2, p0, p2

    aput v2, p0, p1

    .line 23379
    aput v1, p0, p2

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 p1, p1, 0x1

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public static swap([JII)V
    .locals 1

    if-eqz p0, :cond_1

    .line 18869
    array-length v0, p0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 18899
    invoke-static {p0, p1, p2, v0}, Lorg/apache/commons/lang3/ArrayUtils;->swap([JIII)V

    :cond_1
    :goto_0
    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public static swap([JIII)V
    .locals 5

    if-eqz p0, :cond_3

    .line 23669
    array-length v0, p0

    if-eqz v0, :cond_3

    array-length v0, p0

    if-ge p1, v0, :cond_3

    array-length v0, p0

    if-lt p2, v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    if-gez p1, :cond_1

    move p1, v0

    :cond_1
    if-gez p2, :cond_2

    move p2, v0

    .line 23759
    :cond_2
    array-length v1, p0

    sub-int/2addr v1, p1

    invoke-static {p3, v1}, Ljava/lang/Math;->min(II)I

    move-result p3

    array-length v1, p0

    sub-int/2addr v1, p2

    invoke-static {p3, v1}, Ljava/lang/Math;->min(II)I

    move-result p3

    :goto_0
    if-ge v0, p3, :cond_3

    .line 23779
    aget-wide v1, p0, p1

    .line 23789
    aget-wide v3, p0, p2

    aput-wide v3, p0, p1

    .line 23799
    aput-wide v1, p0, p2

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 p1, p1, 0x1

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public static swap([Ljava/lang/Object;II)V
    .locals 1

    if-eqz p0, :cond_1

    .line 18579
    array-length v0, p0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 18609
    invoke-static {p0, p1, p2, v0}, Lorg/apache/commons/lang3/ArrayUtils;->swap([Ljava/lang/Object;III)V

    :cond_1
    :goto_0
    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public static swap([Ljava/lang/Object;III)V
    .locals 3

    if-eqz p0, :cond_3

    .line 24089
    array-length v0, p0

    if-eqz v0, :cond_3

    array-length v0, p0

    if-ge p1, v0, :cond_3

    array-length v0, p0

    if-lt p2, v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    if-gez p1, :cond_1

    move p1, v0

    :cond_1
    if-gez p2, :cond_2

    move p2, v0

    .line 24179
    :cond_2
    array-length v1, p0

    sub-int/2addr v1, p1

    invoke-static {p3, v1}, Ljava/lang/Math;->min(II)I

    move-result p3

    array-length v1, p0

    sub-int/2addr v1, p2

    invoke-static {p3, v1}, Ljava/lang/Math;->min(II)I

    move-result p3

    :goto_0
    if-ge v0, p3, :cond_3

    .line 24199
    aget-object v1, p0, p1

    .line 24209
    aget-object v2, p0, p2

    aput-object v2, p0, p1

    .line 24219
    aput-object v1, p0, p2

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 p1, p1, 0x1

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public static swap([SII)V
    .locals 1

    if-eqz p0, :cond_1

    .line 19429
    array-length v0, p0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 19459
    invoke-static {p0, p1, p2, v0}, Lorg/apache/commons/lang3/ArrayUtils;->swap([SIII)V

    :cond_1
    :goto_0
    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public static swap([SIII)V
    .locals 3

    if-eqz p0, :cond_4

    .line 24509
    array-length v0, p0

    if-eqz v0, :cond_4

    array-length v0, p0

    if-ge p1, v0, :cond_4

    array-length v0, p0

    if-lt p2, v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    if-gez p1, :cond_1

    move p1, v0

    :cond_1
    if-gez p2, :cond_2

    move p2, v0

    :cond_2
    if-ne p1, p2, :cond_3

    return-void

    .line 24629
    :cond_3
    array-length v1, p0

    sub-int/2addr v1, p1

    invoke-static {p3, v1}, Ljava/lang/Math;->min(II)I

    move-result p3

    array-length v1, p0

    sub-int/2addr v1, p2

    invoke-static {p3, v1}, Ljava/lang/Math;->min(II)I

    move-result p3

    :goto_0
    if-ge v0, p3, :cond_4

    .line 24649
    aget-short v1, p0, p1

    .line 24659
    aget-short v2, p0, p2

    aput-short v2, p0, p1

    .line 24669
    aput-short v1, p0, p2

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 p1, p1, 0x1

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_4
    :goto_1
    return-void

    .array-data 1
    .end array-data
.end method

.method public static swap([ZII)V
    .locals 1

    if-eqz p0, :cond_1

    .line 20829
    array-length v0, p0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 20859
    invoke-static {p0, p1, p2, v0}, Lorg/apache/commons/lang3/ArrayUtils;->swap([ZIII)V

    :cond_1
    :goto_0
    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public static swap([ZIII)V
    .locals 3

    if-eqz p0, :cond_3

    .line 21139
    array-length v0, p0

    if-eqz v0, :cond_3

    array-length v0, p0

    if-ge p1, v0, :cond_3

    array-length v0, p0

    if-lt p2, v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    if-gez p1, :cond_1

    move p1, v0

    :cond_1
    if-gez p2, :cond_2

    move p2, v0

    .line 21229
    :cond_2
    array-length v1, p0

    sub-int/2addr v1, p1

    invoke-static {p3, v1}, Ljava/lang/Math;->min(II)I

    move-result p3

    array-length v1, p0

    sub-int/2addr v1, p2

    invoke-static {p3, v1}, Ljava/lang/Math;->min(II)I

    move-result p3

    :goto_0
    if-ge v0, p3, :cond_3

    .line 21249
    aget-boolean v1, p0, p1

    .line 21259
    aget-boolean v2, p0, p2

    aput-boolean v2, p0, p1

    .line 21269
    aput-boolean v1, p0, p2

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 p1, p1, 0x1

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public static varargs toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static toMap([Ljava/lang/Object;)Ljava/util/Map;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 2439
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    array-length v1, p0

    int-to-double v1, v1

    const-wide/high16 v3, 0x3ff8000000000000L    # 1.5

    mul-double/2addr v1, v3

    double-to-int v1, v1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    const/4 v1, 0x0

    move v2, v1

    .line 2449
    :goto_0
    array-length v3, p0

    if-ge v2, v3, :cond_4

    .line 2459
    aget-object v3, p0, v2

    .line 2469
    instance-of v4, v3, Ljava/util/Map$Entry;

    if-eqz v4, :cond_1

    .line 2479
    check-cast v3, Ljava/util/Map$Entry;

    .line 2489
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 2499
    :cond_1
    instance-of v4, v3, [Ljava/lang/Object;

    const v5, 0x54300d0a

    invoke-static {v5}, Lcom/liapp/y;->׳ֳֳ֬د(I)Ljava/lang/String;

    move-result-object v5

    const v6, 0x225c0616

    invoke-static {v6}, Lcom/liapp/y;->ֲֳگܱޭ(I)Ljava/lang/String;

    move-result-object v6

    if-eqz v4, :cond_3

    .line 2509
    move-object v4, v3

    check-cast v4, [Ljava/lang/Object;

    check-cast v4, [Ljava/lang/Object;

    .line 2519
    array-length v7, v4

    const/4 v8, 0x2

    if-lt v7, v8, :cond_2

    .line 2569
    aget-object v3, v4, v1

    const/4 v5, 0x1

    aget-object v4, v4, v5

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2529
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const v1, 0x6d051598

    invoke-static {v1}, Lcom/liapp/y;->ٱڳܴڭܩ(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 2589
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const v1, 0x7d790995

    invoke-static {v1}, Lcom/liapp/y;->حֲݴܳޯ(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public static toObject([Z)[Ljava/lang/Boolean;
    .locals 3

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 48279
    :cond_0
    array-length v0, p0

    if-nez v0, :cond_1

    .line 48289
    sget-object p0, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_BOOLEAN_OBJECT_ARRAY:[Ljava/lang/Boolean;

    return-object p0

    .line 48309
    :cond_1
    array-length v0, p0

    new-array v0, v0, [Ljava/lang/Boolean;

    const/4 v1, 0x0

    .line 48319
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_3

    .line 48329
    aget-boolean v2, p0, v1

    if-eqz v2, :cond_2

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_1

    :cond_2
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_1
    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-object v0

    .array-data 1
    .end array-data
.end method

.method public static toObject([B)[Ljava/lang/Byte;
    .locals 3

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 45909
    :cond_0
    array-length v0, p0

    if-nez v0, :cond_1

    .line 45919
    sget-object p0, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_BYTE_OBJECT_ARRAY:[Ljava/lang/Byte;

    return-object p0

    .line 45939
    :cond_1
    array-length v0, p0

    new-array v0, v0, [Ljava/lang/Byte;

    const/4 v1, 0x0

    .line 45949
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_2

    .line 45959
    aget-byte v2, p0, v1

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public static toObject([C)[Ljava/lang/Character;
    .locals 3

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 43189
    :cond_0
    array-length v0, p0

    if-nez v0, :cond_1

    .line 43199
    sget-object p0, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_CHARACTER_OBJECT_ARRAY:[Ljava/lang/Character;

    return-object p0

    .line 43219
    :cond_1
    array-length v0, p0

    new-array v0, v0, [Ljava/lang/Character;

    const/4 v1, 0x0

    .line 43229
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_2

    .line 43239
    aget-char v2, p0, v1

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public static toObject([D)[Ljava/lang/Double;
    .locals 4

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 46589
    :cond_0
    array-length v0, p0

    if-nez v0, :cond_1

    .line 46599
    sget-object p0, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_DOUBLE_OBJECT_ARRAY:[Ljava/lang/Double;

    return-object p0

    .line 46619
    :cond_1
    array-length v0, p0

    new-array v0, v0, [Ljava/lang/Double;

    const/4 v1, 0x0

    .line 46629
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_2

    .line 46639
    aget-wide v2, p0, v1

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public static toObject([F)[Ljava/lang/Float;
    .locals 3

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 47269
    :cond_0
    array-length v0, p0

    if-nez v0, :cond_1

    .line 47279
    sget-object p0, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_FLOAT_OBJECT_ARRAY:[Ljava/lang/Float;

    return-object p0

    .line 47299
    :cond_1
    array-length v0, p0

    new-array v0, v0, [Ljava/lang/Float;

    const/4 v1, 0x0

    .line 47309
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_2

    .line 47319
    aget v2, p0, v1

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public static toObject([I)[Ljava/lang/Integer;
    .locals 3

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 44549
    :cond_0
    array-length v0, p0

    if-nez v0, :cond_1

    .line 44559
    sget-object p0, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_INTEGER_OBJECT_ARRAY:[Ljava/lang/Integer;

    return-object p0

    .line 44579
    :cond_1
    array-length v0, p0

    new-array v0, v0, [Ljava/lang/Integer;

    const/4 v1, 0x0

    .line 44589
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_2

    .line 44599
    aget v2, p0, v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public static toObject([J)[Ljava/lang/Long;
    .locals 4

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 43869
    :cond_0
    array-length v0, p0

    if-nez v0, :cond_1

    .line 43879
    sget-object p0, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_LONG_OBJECT_ARRAY:[Ljava/lang/Long;

    return-object p0

    .line 43899
    :cond_1
    array-length v0, p0

    new-array v0, v0, [Ljava/lang/Long;

    const/4 v1, 0x0

    .line 43909
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_2

    .line 43919
    aget-wide v2, p0, v1

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public static toObject([S)[Ljava/lang/Short;
    .locals 3

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 45229
    :cond_0
    array-length v0, p0

    if-nez v0, :cond_1

    .line 45239
    sget-object p0, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_SHORT_OBJECT_ARRAY:[Ljava/lang/Short;

    return-object p0

    .line 45259
    :cond_1
    array-length v0, p0

    new-array v0, v0, [Ljava/lang/Short;

    const/4 v1, 0x0

    .line 45269
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_2

    .line 45279
    aget-short v2, p0, v1

    invoke-static {v2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public static toPrimitive(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 47499
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    .line 47509
    invoke-static {v0}, Lorg/apache/commons/lang3/ClassUtils;->wrapperToPrimitive(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    .line 47519
    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 47529
    check-cast p0, [Ljava/lang/Integer;

    check-cast p0, [Ljava/lang/Integer;

    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->toPrimitive([Ljava/lang/Integer;)[I

    move-result-object p0

    return-object p0

    .line 47549
    :cond_1
    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 47559
    check-cast p0, [Ljava/lang/Long;

    check-cast p0, [Ljava/lang/Long;

    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->toPrimitive([Ljava/lang/Long;)[J

    move-result-object p0

    return-object p0

    .line 47579
    :cond_2
    sget-object v1, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 47589
    check-cast p0, [Ljava/lang/Short;

    check-cast p0, [Ljava/lang/Short;

    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->toPrimitive([Ljava/lang/Short;)[S

    move-result-object p0

    return-object p0

    .line 47609
    :cond_3
    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 47619
    check-cast p0, [Ljava/lang/Double;

    check-cast p0, [Ljava/lang/Double;

    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->toPrimitive([Ljava/lang/Double;)[D

    move-result-object p0

    return-object p0

    .line 47639
    :cond_4
    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 47649
    check-cast p0, [Ljava/lang/Float;

    check-cast p0, [Ljava/lang/Float;

    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->toPrimitive([Ljava/lang/Float;)[F

    move-result-object p0

    :cond_5
    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static toPrimitive([Ljava/lang/Byte;)[B
    .locals 3

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 45469
    :cond_0
    array-length v0, p0

    if-nez v0, :cond_1

    .line 45479
    sget-object p0, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_BYTE_ARRAY:[B

    return-object p0

    .line 45499
    :cond_1
    array-length v0, p0

    new-array v0, v0, [B

    const/4 v1, 0x0

    .line 45509
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_2

    .line 45519
    aget-object v2, p0, v1

    invoke-virtual {v2}, Ljava/lang/Byte;->byteValue()B

    move-result v2

    aput-byte v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public static toPrimitive([Ljava/lang/Byte;B)[B
    .locals 3

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 45689
    :cond_0
    array-length v0, p0

    if-nez v0, :cond_1

    .line 45699
    sget-object p0, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_BYTE_ARRAY:[B

    return-object p0

    .line 45719
    :cond_1
    array-length v0, p0

    new-array v0, v0, [B

    const/4 v1, 0x0

    .line 45729
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_3

    .line 45739
    aget-object v2, p0, v1

    if-nez v2, :cond_2

    move v2, p1

    goto :goto_1

    .line 45749
    :cond_2
    invoke-virtual {v2}, Ljava/lang/Byte;->byteValue()B

    move-result v2

    :goto_1
    aput-byte v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public static toPrimitive([Ljava/lang/Character;)[C
    .locals 3

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 42749
    :cond_0
    array-length v0, p0

    if-nez v0, :cond_1

    .line 42759
    sget-object p0, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_CHAR_ARRAY:[C

    return-object p0

    .line 42779
    :cond_1
    array-length v0, p0

    new-array v0, v0, [C

    const/4 v1, 0x0

    .line 42789
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_2

    .line 42799
    aget-object v2, p0, v1

    invoke-virtual {v2}, Ljava/lang/Character;->charValue()C

    move-result v2

    aput-char v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public static toPrimitive([Ljava/lang/Character;C)[C
    .locals 3

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 42969
    :cond_0
    array-length v0, p0

    if-nez v0, :cond_1

    .line 42979
    sget-object p0, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_CHAR_ARRAY:[C

    return-object p0

    .line 42999
    :cond_1
    array-length v0, p0

    new-array v0, v0, [C

    const/4 v1, 0x0

    .line 43009
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_3

    .line 43019
    aget-object v2, p0, v1

    if-nez v2, :cond_2

    move v2, p1

    goto :goto_1

    .line 43029
    :cond_2
    invoke-virtual {v2}, Ljava/lang/Character;->charValue()C

    move-result v2

    :goto_1
    aput-char v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public static toPrimitive([Ljava/lang/Double;)[D
    .locals 4

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 46149
    :cond_0
    array-length v0, p0

    if-nez v0, :cond_1

    .line 46159
    sget-object p0, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_DOUBLE_ARRAY:[D

    return-object p0

    .line 46179
    :cond_1
    array-length v0, p0

    new-array v0, v0, [D

    const/4 v1, 0x0

    .line 46189
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_2

    .line 46199
    aget-object v2, p0, v1

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    aput-wide v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public static toPrimitive([Ljava/lang/Double;D)[D
    .locals 4

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 46369
    :cond_0
    array-length v0, p0

    if-nez v0, :cond_1

    .line 46379
    sget-object p0, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_DOUBLE_ARRAY:[D

    return-object p0

    .line 46399
    :cond_1
    array-length v0, p0

    new-array v0, v0, [D

    const/4 v1, 0x0

    .line 46409
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_3

    .line 46419
    aget-object v2, p0, v1

    if-nez v2, :cond_2

    move-wide v2, p1

    goto :goto_1

    .line 46429
    :cond_2
    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    :goto_1
    aput-wide v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public static toPrimitive([Ljava/lang/Float;)[F
    .locals 3

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 46829
    :cond_0
    array-length v0, p0

    if-nez v0, :cond_1

    .line 46839
    sget-object p0, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_FLOAT_ARRAY:[F

    return-object p0

    .line 46859
    :cond_1
    array-length v0, p0

    new-array v0, v0, [F

    const/4 v1, 0x0

    .line 46869
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_2

    .line 46879
    aget-object v2, p0, v1

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    aput v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public static toPrimitive([Ljava/lang/Float;F)[F
    .locals 3

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 47049
    :cond_0
    array-length v0, p0

    if-nez v0, :cond_1

    .line 47059
    sget-object p0, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_FLOAT_ARRAY:[F

    return-object p0

    .line 47079
    :cond_1
    array-length v0, p0

    new-array v0, v0, [F

    const/4 v1, 0x0

    .line 47089
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_3

    .line 47099
    aget-object v2, p0, v1

    if-nez v2, :cond_2

    move v2, p1

    goto :goto_1

    .line 47109
    :cond_2
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    :goto_1
    aput v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public static toPrimitive([Ljava/lang/Integer;)[I
    .locals 3

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 44109
    :cond_0
    array-length v0, p0

    if-nez v0, :cond_1

    .line 44119
    sget-object p0, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_INT_ARRAY:[I

    return-object p0

    .line 44139
    :cond_1
    array-length v0, p0

    new-array v0, v0, [I

    const/4 v1, 0x0

    .line 44149
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_2

    .line 44159
    aget-object v2, p0, v1

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aput v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public static toPrimitive([Ljava/lang/Integer;I)[I
    .locals 3

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 44329
    :cond_0
    array-length v0, p0

    if-nez v0, :cond_1

    .line 44339
    sget-object p0, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_INT_ARRAY:[I

    return-object p0

    .line 44359
    :cond_1
    array-length v0, p0

    new-array v0, v0, [I

    const/4 v1, 0x0

    .line 44369
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_3

    .line 44379
    aget-object v2, p0, v1

    if-nez v2, :cond_2

    move v2, p1

    goto :goto_1

    .line 44389
    :cond_2
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    :goto_1
    aput v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public static toPrimitive([Ljava/lang/Long;)[J
    .locals 4

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 43429
    :cond_0
    array-length v0, p0

    if-nez v0, :cond_1

    .line 43439
    sget-object p0, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_LONG_ARRAY:[J

    return-object p0

    .line 43459
    :cond_1
    array-length v0, p0

    new-array v0, v0, [J

    const/4 v1, 0x0

    .line 43469
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_2

    .line 43479
    aget-object v2, p0, v1

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    aput-wide v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public static toPrimitive([Ljava/lang/Long;J)[J
    .locals 4

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 43649
    :cond_0
    array-length v0, p0

    if-nez v0, :cond_1

    .line 43659
    sget-object p0, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_LONG_ARRAY:[J

    return-object p0

    .line 43679
    :cond_1
    array-length v0, p0

    new-array v0, v0, [J

    const/4 v1, 0x0

    .line 43689
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_3

    .line 43699
    aget-object v2, p0, v1

    if-nez v2, :cond_2

    move-wide v2, p1

    goto :goto_1

    .line 43709
    :cond_2
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    :goto_1
    aput-wide v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public static toPrimitive([Ljava/lang/Short;)[S
    .locals 3

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 44789
    :cond_0
    array-length v0, p0

    if-nez v0, :cond_1

    .line 44799
    sget-object p0, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_SHORT_ARRAY:[S

    return-object p0

    .line 44819
    :cond_1
    array-length v0, p0

    new-array v0, v0, [S

    const/4 v1, 0x0

    .line 44829
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_2

    .line 44839
    aget-object v2, p0, v1

    invoke-virtual {v2}, Ljava/lang/Short;->shortValue()S

    move-result v2

    aput-short v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public static toPrimitive([Ljava/lang/Short;S)[S
    .locals 3

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 45009
    :cond_0
    array-length v0, p0

    if-nez v0, :cond_1

    .line 45019
    sget-object p0, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_SHORT_ARRAY:[S

    return-object p0

    .line 45039
    :cond_1
    array-length v0, p0

    new-array v0, v0, [S

    const/4 v1, 0x0

    .line 45049
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_3

    .line 45059
    aget-object v2, p0, v1

    if-nez v2, :cond_2

    move v2, p1

    goto :goto_1

    .line 45069
    :cond_2
    invoke-virtual {v2}, Ljava/lang/Short;->shortValue()S

    move-result v2

    :goto_1
    aput-short v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public static toPrimitive([Ljava/lang/Boolean;)[Z
    .locals 3

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 47839
    :cond_0
    array-length v0, p0

    if-nez v0, :cond_1

    .line 47849
    sget-object p0, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_BOOLEAN_ARRAY:[Z

    return-object p0

    .line 47869
    :cond_1
    array-length v0, p0

    new-array v0, v0, [Z

    const/4 v1, 0x0

    .line 47879
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_2

    .line 47889
    aget-object v2, p0, v1

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    aput-boolean v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public static toPrimitive([Ljava/lang/Boolean;Z)[Z
    .locals 3

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 48059
    :cond_0
    array-length v0, p0

    if-nez v0, :cond_1

    .line 48069
    sget-object p0, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_BOOLEAN_ARRAY:[Z

    return-object p0

    .line 48089
    :cond_1
    array-length v0, p0

    new-array v0, v0, [Z

    const/4 v1, 0x0

    .line 48099
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_3

    .line 48109
    aget-object v2, p0, v1

    if-nez v2, :cond_2

    move v2, p1

    goto :goto_1

    .line 48119
    :cond_2
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    :goto_1
    aput-boolean v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public static toString(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    const v0, -0x224bc3fc

    invoke-static {v0}, Lcom/liapp/y;->״دش۲ݮ(I)Ljava/lang/String;

    move-result-object v0

    .line 1619
    invoke-static {p0, v0}, Lorg/apache/commons/lang3/ArrayUtils;->toString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .array-data 1
    .end array-data
.end method

.method public static toString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    if-nez p0, :cond_0

    return-object p1

    .line 1809
    :cond_0
    new-instance p1, Lorg/apache/commons/lang3/builder/ToStringBuilder;

    sget-object v0, Lorg/apache/commons/lang3/builder/ToStringStyle;->SIMPLE_STYLE:Lorg/apache/commons/lang3/builder/ToStringStyle;

    invoke-direct {p1, p0, v0}, Lorg/apache/commons/lang3/builder/ToStringBuilder;-><init>(Ljava/lang/Object;Lorg/apache/commons/lang3/builder/ToStringStyle;)V

    invoke-virtual {p1, p0}, Lorg/apache/commons/lang3/builder/ToStringBuilder;->append(Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/ToStringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/commons/lang3/builder/ToStringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static toStringArray([Ljava/lang/Object;)[Ljava/lang/String;
    .locals 3

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 80219
    :cond_0
    array-length v0, p0

    if-nez v0, :cond_1

    .line 80229
    sget-object p0, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    return-object p0

    .line 80259
    :cond_1
    array-length v0, p0

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 80269
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_2

    .line 80279
    aget-object v2, p0, v1

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public static toStringArray([Ljava/lang/Object;Ljava/lang/String;)[Ljava/lang/String;
    .locals 3

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 80479
    :cond_0
    array-length v0, p0

    if-nez v0, :cond_1

    .line 80489
    sget-object p0, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    return-object p0

    .line 80519
    :cond_1
    array-length v0, p0

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 80529
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_3

    .line 80539
    aget-object v2, p0, v1

    if-nez v2, :cond_2

    move-object v2, p1

    goto :goto_1

    .line 80549
    :cond_2
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_1
    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-object v0

    nop

    .array-data 1
    .end array-data
.end method
