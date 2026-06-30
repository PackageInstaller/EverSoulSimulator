.class final Lorg/apache/commons/lang3/reflect/TypeUtils$ParameterizedTypeImpl;
.super Ljava/lang/Object;
.source "TypeUtils.java"

# interfaces
.implements Ljava/lang/reflect/ParameterizedType;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/lang3/reflect/TypeUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ParameterizedTypeImpl"
.end annotation


# instance fields
.field private final raw:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private final typeArguments:[Ljava/lang/reflect/Type;

.field private final useOwner:Ljava/lang/reflect/Type;


# direct methods
.method private constructor <init>(Ljava/lang/Class;Ljava/lang/reflect/Type;[Ljava/lang/reflect/Type;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/reflect/Type;",
            "[",
            "Ljava/lang/reflect/Type;",
            ")V"
        }
    .end annotation

    .line 1579
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1589
    iput-object p1, p0, Lorg/apache/commons/lang3/reflect/TypeUtils$ParameterizedTypeImpl;->raw:Ljava/lang/Class;

    .line 1599
    iput-object p2, p0, Lorg/apache/commons/lang3/reflect/TypeUtils$ParameterizedTypeImpl;->useOwner:Ljava/lang/reflect/Type;

    .line 1609
    array-length p1, p3

    const-class p2, [Ljava/lang/reflect/Type;

    invoke-static {p3, p1, p2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;ILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/reflect/Type;

    iput-object p1, p0, Lorg/apache/commons/lang3/reflect/TypeUtils$ParameterizedTypeImpl;->typeArguments:[Ljava/lang/reflect/Type;

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method synthetic constructor <init>(Ljava/lang/Class;Ljava/lang/reflect/Type;[Ljava/lang/reflect/Type;Lorg/apache/commons/lang3/reflect/TypeUtils$1;)V
    .locals 0

    .line 1469
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/commons/lang3/reflect/TypeUtils$ParameterizedTypeImpl;-><init>(Ljava/lang/Class;Ljava/lang/reflect/Type;[Ljava/lang/reflect/Type;)V

    return-void

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-eq p1, p0, :cond_1

    .line 2009
    instance-of v0, p1, Ljava/lang/reflect/ParameterizedType;

    if-eqz v0, :cond_0

    check-cast p1, Ljava/lang/reflect/ParameterizedType;

    invoke-static {p0, p1}, Lorg/apache/commons/lang3/reflect/TypeUtils;->access$200(Ljava/lang/reflect/ParameterizedType;Ljava/lang/reflect/Type;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1

    nop

    .array-data 1
    .end array-data
.end method

.method public getActualTypeArguments()[Ljava/lang/reflect/Type;
    .locals 1

    .line 1849
    iget-object v0, p0, Lorg/apache/commons/lang3/reflect/TypeUtils$ParameterizedTypeImpl;->typeArguments:[Ljava/lang/reflect/Type;

    invoke-virtual {v0}, [Ljava/lang/reflect/Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/reflect/Type;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getOwnerType()Ljava/lang/reflect/Type;
    .locals 1

    .line 1769
    iget-object v0, p0, Lorg/apache/commons/lang3/reflect/TypeUtils$ParameterizedTypeImpl;->useOwner:Ljava/lang/reflect/Type;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getRawType()Ljava/lang/reflect/Type;
    .locals 1

    .line 1689
    iget-object v0, p0, Lorg/apache/commons/lang3/reflect/TypeUtils$ParameterizedTypeImpl;->raw:Ljava/lang/Class;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public hashCode()I
    .locals 2

    .line 2099
    iget-object v0, p0, Lorg/apache/commons/lang3/reflect/TypeUtils$ParameterizedTypeImpl;->raw:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    or-int/lit16 v0, v0, 0x470

    shl-int/lit8 v0, v0, 0x4

    .line 2119
    iget-object v1, p0, Lorg/apache/commons/lang3/reflect/TypeUtils$ParameterizedTypeImpl;->useOwner:Ljava/lang/reflect/Type;

    invoke-static {v1}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    shl-int/lit8 v0, v0, 0x8

    .line 2139
    iget-object v1, p0, Lorg/apache/commons/lang3/reflect/TypeUtils$ParameterizedTypeImpl;->typeArguments:[Ljava/lang/reflect/Type;

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1929
    invoke-static {p0}, Lorg/apache/commons/lang3/reflect/TypeUtils;->toString(Ljava/lang/reflect/Type;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method
