.class final Lorg/apache/commons/lang3/reflect/TypeUtils$WildcardTypeImpl;
.super Ljava/lang/Object;
.source "TypeUtils.java"

# interfaces
.implements Ljava/lang/reflect/WildcardType;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/lang3/reflect/TypeUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "WildcardTypeImpl"
.end annotation


# static fields
.field private static final EMPTY_BOUNDS:[Ljava/lang/reflect/Type;


# instance fields
.field private final lowerBounds:[Ljava/lang/reflect/Type;

.field private final upperBounds:[Ljava/lang/reflect/Type;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/reflect/Type;

    .line 2239
    sput-object v0, Lorg/apache/commons/lang3/reflect/TypeUtils$WildcardTypeImpl;->EMPTY_BOUNDS:[Ljava/lang/reflect/Type;

    return-void

    .array-data 1
    .end array-data
.end method

.method private constructor <init>([Ljava/lang/reflect/Type;[Ljava/lang/reflect/Type;)V
    .locals 1

    .line 2339
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2349
    sget-object v0, Lorg/apache/commons/lang3/reflect/TypeUtils$WildcardTypeImpl;->EMPTY_BOUNDS:[Ljava/lang/reflect/Type;

    invoke-static {p1, v0}, Lorg/apache/commons/lang3/ObjectUtils;->defaultIfNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/reflect/Type;

    iput-object p1, p0, Lorg/apache/commons/lang3/reflect/TypeUtils$WildcardTypeImpl;->upperBounds:[Ljava/lang/reflect/Type;

    .line 2359
    invoke-static {p2, v0}, Lorg/apache/commons/lang3/ObjectUtils;->defaultIfNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/reflect/Type;

    iput-object p1, p0, Lorg/apache/commons/lang3/reflect/TypeUtils$WildcardTypeImpl;->lowerBounds:[Ljava/lang/reflect/Type;

    return-void

    .array-data 1
    .end array-data
.end method

.method synthetic constructor <init>([Ljava/lang/reflect/Type;[Ljava/lang/reflect/Type;Lorg/apache/commons/lang3/reflect/TypeUtils$1;)V
    .locals 0

    .line 2229
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/lang3/reflect/TypeUtils$WildcardTypeImpl;-><init>([Ljava/lang/reflect/Type;[Ljava/lang/reflect/Type;)V

    return-void

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-eq p1, p0, :cond_1

    .line 2679
    instance-of v0, p1, Ljava/lang/reflect/WildcardType;

    if-eqz v0, :cond_0

    check-cast p1, Ljava/lang/reflect/WildcardType;

    invoke-static {p0, p1}, Lorg/apache/commons/lang3/reflect/TypeUtils;->access$300(Ljava/lang/reflect/WildcardType;Ljava/lang/reflect/Type;)Z

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

.method public getLowerBounds()[Ljava/lang/reflect/Type;
    .locals 1

    .line 2519
    iget-object v0, p0, Lorg/apache/commons/lang3/reflect/TypeUtils$WildcardTypeImpl;->lowerBounds:[Ljava/lang/reflect/Type;

    invoke-virtual {v0}, [Ljava/lang/reflect/Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/reflect/Type;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getUpperBounds()[Ljava/lang/reflect/Type;
    .locals 1

    .line 2439
    iget-object v0, p0, Lorg/apache/commons/lang3/reflect/TypeUtils$WildcardTypeImpl;->upperBounds:[Ljava/lang/reflect/Type;

    invoke-virtual {v0}, [Ljava/lang/reflect/Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/reflect/Type;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public hashCode()I
    .locals 2

    .line 2769
    iget-object v0, p0, Lorg/apache/commons/lang3/reflect/TypeUtils$WildcardTypeImpl;->upperBounds:[Ljava/lang/reflect/Type;

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    or-int/lit16 v0, v0, 0x4900

    shl-int/lit8 v0, v0, 0x8

    .line 2789
    iget-object v1, p0, Lorg/apache/commons/lang3/reflect/TypeUtils$WildcardTypeImpl;->lowerBounds:[Ljava/lang/reflect/Type;

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    return v0

    .array-data 1
    .end array-data
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 2599
    invoke-static {p0}, Lorg/apache/commons/lang3/reflect/TypeUtils;->toString(Ljava/lang/reflect/Type;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method
