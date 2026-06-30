.class public Lorg/apache/commons/lang3/builder/HashCodeBuilder;
.super Ljava/lang/Object;
.source "HashCodeBuilder.java"

# interfaces
.implements Lorg/apache/commons/lang3/builder/Builder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/commons/lang3/builder/Builder<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INITIAL_VALUE:I = 0x11

.field private static final DEFAULT_MULTIPLIER_VALUE:I = 0x25

.field private static final REGISTRY:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/util/Set<",
            "Lorg/apache/commons/lang3/builder/IDKey;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private final iConstant:I

.field private iTotal:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1219
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->REGISTRY:Ljava/lang/ThreadLocal;

    return-void

    .array-data 1
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .line 5439
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x25

    .line 5449
    iput v0, p0, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->iConstant:I

    const/16 v0, 0x11

    .line 5459
    iput v0, p0, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->iTotal:I

    return-void

    .array-data 1
    .end array-data
.end method

.method public constructor <init>(II)V
    .locals 5

    .line 5659
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 5369
    iput v0, p0, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->iTotal:I

    .line 5669
    rem-int/lit8 v1, p1, 0x2

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    const v3, 0x336b206b

    invoke-static {v3}, Lcom/liapp/y;->ׯ״ٲ֬ب(I)Ljava/lang/String;

    move-result-object v3

    new-array v4, v0, [Ljava/lang/Object;

    invoke-static {v1, v3, v4}, Lorg/apache/commons/lang3/Validate;->isTrue(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 5679
    rem-int/lit8 v1, p2, 0x2

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    move v2, v0

    :goto_1
    const v1, 0x543084a2

    invoke-static {v1}, Lcom/liapp/y;->׳ֳֳ֬د(I)Ljava/lang/String;

    move-result-object v1

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v2, v1, v0}, Lorg/apache/commons/lang3/Validate;->isTrue(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 5689
    iput p2, p0, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->iConstant:I

    .line 5699
    iput p1, p0, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->iTotal:I

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method private appendArray(Ljava/lang/Object;)V
    .locals 1

    .line 8659
    instance-of v0, p1, [J

    if-eqz v0, :cond_0

    .line 8669
    check-cast p1, [J

    check-cast p1, [J

    invoke-virtual {p0, p1}, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->append([J)Lorg/apache/commons/lang3/builder/HashCodeBuilder;

    goto :goto_0

    .line 8679
    :cond_0
    instance-of v0, p1, [I

    if-eqz v0, :cond_1

    .line 8689
    check-cast p1, [I

    check-cast p1, [I

    invoke-virtual {p0, p1}, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->append([I)Lorg/apache/commons/lang3/builder/HashCodeBuilder;

    goto :goto_0

    .line 8699
    :cond_1
    instance-of v0, p1, [S

    if-eqz v0, :cond_2

    .line 8709
    check-cast p1, [S

    check-cast p1, [S

    invoke-virtual {p0, p1}, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->append([S)Lorg/apache/commons/lang3/builder/HashCodeBuilder;

    goto :goto_0

    .line 8719
    :cond_2
    instance-of v0, p1, [C

    if-eqz v0, :cond_3

    .line 8729
    check-cast p1, [C

    check-cast p1, [C

    invoke-virtual {p0, p1}, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->append([C)Lorg/apache/commons/lang3/builder/HashCodeBuilder;

    goto :goto_0

    .line 8739
    :cond_3
    instance-of v0, p1, [B

    if-eqz v0, :cond_4

    .line 8749
    check-cast p1, [B

    check-cast p1, [B

    invoke-virtual {p0, p1}, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->append([B)Lorg/apache/commons/lang3/builder/HashCodeBuilder;

    goto :goto_0

    .line 8759
    :cond_4
    instance-of v0, p1, [D

    if-eqz v0, :cond_5

    .line 8769
    check-cast p1, [D

    check-cast p1, [D

    invoke-virtual {p0, p1}, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->append([D)Lorg/apache/commons/lang3/builder/HashCodeBuilder;

    goto :goto_0

    .line 8779
    :cond_5
    instance-of v0, p1, [F

    if-eqz v0, :cond_6

    .line 8789
    check-cast p1, [F

    check-cast p1, [F

    invoke-virtual {p0, p1}, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->append([F)Lorg/apache/commons/lang3/builder/HashCodeBuilder;

    goto :goto_0

    .line 8799
    :cond_6
    instance-of v0, p1, [Z

    if-eqz v0, :cond_7

    .line 8809
    check-cast p1, [Z

    check-cast p1, [Z

    invoke-virtual {p0, p1}, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->append([Z)Lorg/apache/commons/lang3/builder/HashCodeBuilder;

    goto :goto_0

    .line 8839
    :cond_7
    check-cast p1, [Ljava/lang/Object;

    check-cast p1, [Ljava/lang/Object;

    invoke-virtual {p0, p1}, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->append([Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/HashCodeBuilder;

    :goto_0
    return-void

    .array-data 1
    .end array-data
.end method

.method static getRegistry()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lorg/apache/commons/lang3/builder/IDKey;",
            ">;"
        }
    .end annotation

    .line 1499
    sget-object v0, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->REGISTRY:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method static isRegistered(Ljava/lang/Object;)Z
    .locals 2

    .line 1649
    invoke-static {}, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->getRegistry()Ljava/util/Set;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1659
    new-instance v1, Lorg/apache/commons/lang3/builder/IDKey;

    invoke-direct {v1, p0}, Lorg/apache/commons/lang3/builder/IDKey;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

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

.method private static reflectionAppend(Ljava/lang/Object;Ljava/lang/Class;Lorg/apache/commons/lang3/builder/HashCodeBuilder;Z[Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class<",
            "*>;",
            "Lorg/apache/commons/lang3/builder/HashCodeBuilder;",
            "Z[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1869
    invoke-static {p0}, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->isRegistered(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 1909
    :cond_0
    :try_start_0
    invoke-static {p0}, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->register(Ljava/lang/Object;)V

    .line 1919
    invoke-virtual {p1}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object p1

    const/4 v0, 0x1

    .line 1929
    invoke-static {p1, v0}, Ljava/lang/reflect/AccessibleObject;->setAccessible([Ljava/lang/reflect/AccessibleObject;Z)V

    .line 1939
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_3

    aget-object v2, p1, v1

    .line 1949
    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {p4, v3}, Lorg/apache/commons/lang3/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 1959
    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "$"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    if-nez p3, :cond_1

    .line 1969
    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v3

    invoke-static {v3}, Ljava/lang/reflect/Modifier;->isTransient(I)Z

    move-result v3

    if-nez v3, :cond_2

    .line 1979
    :cond_1
    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v3

    invoke-static {v3}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v3

    if-nez v3, :cond_2

    const-class v3, Lorg/apache/commons/lang3/builder/HashCodeExclude;

    .line 1989
    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v3, :cond_2

    .line 2009
    :try_start_1
    invoke-virtual {v2, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 2019
    invoke-virtual {p2, v2}, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->append(Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/HashCodeBuilder;
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 2059
    :catch_0
    :try_start_2
    new-instance p1, Ljava/lang/InternalError;

    const-string p2, "Unexpected IllegalAccessException"

    invoke-direct {p1, p2}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2109
    :cond_3
    invoke-static {p0}, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->unregister(Ljava/lang/Object;)V

    return-void

    :catchall_0
    move-exception p1

    invoke-static {p0}, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->unregister(Ljava/lang/Object;)V

    .line 2119
    throw p1

    .array-data 1
    .end array-data
.end method

.method public static reflectionHashCode(IILjava/lang/Object;)I
    .locals 6

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v0, 0x0

    new-array v5, v0, [Ljava/lang/String;

    move v0, p0

    move v1, p1

    move-object v2, p2

    .line 2559
    invoke-static/range {v0 .. v5}, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->reflectionHashCode(IILjava/lang/Object;ZLjava/lang/Class;[Ljava/lang/String;)I

    move-result p0

    return p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static reflectionHashCode(IILjava/lang/Object;Z)I
    .locals 6

    const/4 v4, 0x0

    const/4 v0, 0x0

    new-array v5, v0, [Ljava/lang/String;

    move v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    .line 3029
    invoke-static/range {v0 .. v5}, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->reflectionHashCode(IILjava/lang/Object;ZLjava/lang/Class;[Ljava/lang/String;)I

    move-result p0

    return p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static varargs reflectionHashCode(IILjava/lang/Object;ZLjava/lang/Class;[Ljava/lang/String;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(IITT;Z",
            "Ljava/lang/Class<",
            "-TT;>;[",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    const v2, 0x54308502

    invoke-static {v2}, Lcom/liapp/y;->׳ֳֳ֬د(I)Ljava/lang/String;

    move-result-object v2

    new-array v0, v0, [Ljava/lang/Object;

    .line 3579
    invoke-static {v1, v2, v0}, Lorg/apache/commons/lang3/Validate;->isTrue(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 3589
    new-instance v0, Lorg/apache/commons/lang3/builder/HashCodeBuilder;

    invoke-direct {v0, p0, p1}, Lorg/apache/commons/lang3/builder/HashCodeBuilder;-><init>(II)V

    .line 3599
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    .line 3609
    invoke-static {p2, p0, v0, p3, p5}, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->reflectionAppend(Ljava/lang/Object;Ljava/lang/Class;Lorg/apache/commons/lang3/builder/HashCodeBuilder;Z[Ljava/lang/String;)V

    .line 3619
    :goto_1
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object p1

    if-eqz p1, :cond_1

    if-eq p0, p4, :cond_1

    .line 3629
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object p0

    .line 3639
    invoke-static {p2, p0, v0, p3, p5}, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->reflectionAppend(Ljava/lang/Object;Ljava/lang/Class;Lorg/apache/commons/lang3/builder/HashCodeBuilder;Z[Ljava/lang/String;)V

    goto :goto_1

    .line 3659
    :cond_1
    invoke-virtual {v0}, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->toHashCode()I

    move-result p0

    return p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static reflectionHashCode(Ljava/lang/Object;Ljava/util/Collection;)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .line 4449
    invoke-static {p1}, Lorg/apache/commons/lang3/builder/ReflectionToStringBuilder;->toNoNullStringArray(Ljava/util/Collection;)[Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->reflectionHashCode(Ljava/lang/Object;[Ljava/lang/String;)I

    move-result p0

    return p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static reflectionHashCode(Ljava/lang/Object;Z)I
    .locals 6

    const/16 v0, 0x11

    const/16 v1, 0x25

    const/4 v4, 0x0

    const/4 v2, 0x0

    new-array v5, v2, [Ljava/lang/String;

    move-object v2, p0

    move v3, p1

    .line 4049
    invoke-static/range {v0 .. v5}, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->reflectionHashCode(IILjava/lang/Object;ZLjava/lang/Class;[Ljava/lang/String;)I

    move-result p0

    return p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static varargs reflectionHashCode(Ljava/lang/Object;[Ljava/lang/String;)I
    .locals 6

    const/16 v0, 0x11

    const/16 v1, 0x25

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v2, p0

    move-object v5, p1

    .line 4859
    invoke-static/range {v0 .. v5}, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->reflectionHashCode(IILjava/lang/Object;ZLjava/lang/Class;[Ljava/lang/String;)I

    move-result p0

    return p0

    nop

    .array-data 1
    .end array-data
.end method

.method private static register(Ljava/lang/Object;)V
    .locals 2

    .line 4989
    invoke-static {}, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->getRegistry()Ljava/util/Set;

    move-result-object v0

    if-nez v0, :cond_0

    .line 5009
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 5019
    sget-object v1, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->REGISTRY:Ljava/lang/ThreadLocal;

    invoke-virtual {v1, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 5039
    :cond_0
    new-instance v1, Lorg/apache/commons/lang3/builder/IDKey;

    invoke-direct {v1, p0}, Lorg/apache/commons/lang3/builder/IDKey;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method private static unregister(Ljava/lang/Object;)V
    .locals 2

    .line 5199
    invoke-static {}, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->getRegistry()Ljava/util/Set;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 5219
    new-instance v1, Lorg/apache/commons/lang3/builder/IDKey;

    invoke-direct {v1, p0}, Lorg/apache/commons/lang3/builder/IDKey;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 5229
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 5239
    sget-object p0, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->REGISTRY:Ljava/lang/ThreadLocal;

    invoke-virtual {p0}, Ljava/lang/ThreadLocal;->remove()V

    :cond_0
    return-void

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public append(B)Lorg/apache/commons/lang3/builder/HashCodeBuilder;
    .locals 2

    .line 6309
    iget v0, p0, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->iTotal:I

    iget v1, p0, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->iConstant:I

    mul-int/2addr v0, v1

    add-int/2addr v0, p1

    iput v0, p0, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->iTotal:I

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public append(C)Lorg/apache/commons/lang3/builder/HashCodeBuilder;
    .locals 2

    .line 6669
    iget v0, p0, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->iTotal:I

    iget v1, p0, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->iConstant:I

    mul-int/2addr v0, v1

    add-int/2addr v0, p1

    iput v0, p0, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->iTotal:I

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public append(D)Lorg/apache/commons/lang3/builder/HashCodeBuilder;
    .locals 0

    .line 7009
    invoke-static {p1, p2}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->append(J)Lorg/apache/commons/lang3/builder/HashCodeBuilder;

    move-result-object p1

    return-object p1

    nop

    .array-data 1
    .end array-data
.end method

.method public append(F)Lorg/apache/commons/lang3/builder/HashCodeBuilder;
    .locals 2

    .line 7339
    iget v0, p0, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->iTotal:I

    iget v1, p0, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->iConstant:I

    mul-int/2addr v0, v1

    invoke-static {p1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result p1

    add-int/2addr v0, p1

    iput v0, p0, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->iTotal:I

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public append(I)Lorg/apache/commons/lang3/builder/HashCodeBuilder;
    .locals 2

    .line 7679
    iget v0, p0, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->iTotal:I

    iget v1, p0, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->iConstant:I

    mul-int/2addr v0, v1

    add-int/2addr v0, p1

    iput v0, p0, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->iTotal:I

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public append(J)Lorg/apache/commons/lang3/builder/HashCodeBuilder;
    .locals 3

    .line 8059
    iget v0, p0, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->iTotal:I

    iget v1, p0, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->iConstant:I

    mul-int/2addr v0, v1

    const/16 v1, 0x20

    shr-long v1, p1, v1

    xor-long/2addr p1, v1

    long-to-int p1, p1

    add-int/2addr v0, p1

    iput v0, p0, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->iTotal:I

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public append(Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/HashCodeBuilder;
    .locals 2

    if-nez p1, :cond_0

    .line 8409
    iget p1, p0, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->iTotal:I

    iget v0, p0, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->iConstant:I

    mul-int/2addr p1, v0

    iput p1, p0, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->iTotal:I

    goto :goto_0

    .line 8439
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 8469
    invoke-direct {p0, p1}, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->appendArray(Ljava/lang/Object;)V

    goto :goto_0

    .line 8489
    :cond_1
    iget v0, p0, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->iTotal:I

    iget v1, p0, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->iConstant:I

    mul-int/2addr v0, v1

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    add-int/2addr v0, p1

    iput v0, p0, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->iTotal:I

    :goto_0
    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public append(S)Lorg/apache/commons/lang3/builder/HashCodeBuilder;
    .locals 2

    .line 9179
    iget v0, p0, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->iTotal:I

    iget v1, p0, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->iConstant:I

    mul-int/2addr v0, v1

    add-int/2addr v0, p1

    iput v0, p0, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->iTotal:I

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public append(Z)Lorg/apache/commons/lang3/builder/HashCodeBuilder;
    .locals 2

    .line 5949
    iget v0, p0, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->iTotal:I

    iget v1, p0, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->iConstant:I

    mul-int/2addr v0, v1

    xor-int/lit8 p1, p1, 0x1

    add-int/2addr v0, p1

    iput v0, p0, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->iTotal:I

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public append([B)Lorg/apache/commons/lang3/builder/HashCodeBuilder;
    .locals 3

    if-nez p1, :cond_0

    .line 6479
    iget p1, p0, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->iTotal:I

    iget v0, p0, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->iConstant:I

    mul-int/2addr p1, v0

    iput p1, p0, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->iTotal:I

    goto :goto_1

    .line 6499
    :cond_0
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-byte v2, p1, v1

    .line 6509
    invoke-virtual {p0, v2}, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->append(B)Lorg/apache/commons/lang3/builder/HashCodeBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public append([C)Lorg/apache/commons/lang3/builder/HashCodeBuilder;
    .locals 3

    if-nez p1, :cond_0

    .line 6819
    iget p1, p0, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->iTotal:I

    iget v0, p0, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->iConstant:I

    mul-int/2addr p1, v0

    iput p1, p0, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->iTotal:I

    goto :goto_1

    .line 6839
    :cond_0
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-char v2, p1, v1

    .line 6849
    invoke-virtual {p0, v2}, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->append(C)Lorg/apache/commons/lang3/builder/HashCodeBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public append([D)Lorg/apache/commons/lang3/builder/HashCodeBuilder;
    .locals 4

    if-nez p1, :cond_0

    .line 7149
    iget p1, p0, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->iTotal:I

    iget v0, p0, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->iConstant:I

    mul-int/2addr p1, v0

    iput p1, p0, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->iTotal:I

    goto :goto_1

    .line 7169
    :cond_0
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-wide v2, p1, v1

    .line 7179
    invoke-virtual {p0, v2, v3}, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->append(D)Lorg/apache/commons/lang3/builder/HashCodeBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public append([F)Lorg/apache/commons/lang3/builder/HashCodeBuilder;
    .locals 3

    if-nez p1, :cond_0

    .line 7489
    iget p1, p0, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->iTotal:I

    iget v0, p0, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->iConstant:I

    mul-int/2addr p1, v0

    iput p1, p0, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->iTotal:I

    goto :goto_1

    .line 7509
    :cond_0
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget v2, p1, v1

    .line 7519
    invoke-virtual {p0, v2}, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->append(F)Lorg/apache/commons/lang3/builder/HashCodeBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public append([I)Lorg/apache/commons/lang3/builder/HashCodeBuilder;
    .locals 3

    if-nez p1, :cond_0

    .line 7829
    iget p1, p0, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->iTotal:I

    iget v0, p0, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->iConstant:I

    mul-int/2addr p1, v0

    iput p1, p0, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->iTotal:I

    goto :goto_1

    .line 7849
    :cond_0
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget v2, p1, v1

    .line 7859
    invoke-virtual {p0, v2}, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->append(I)Lorg/apache/commons/lang3/builder/HashCodeBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public append([J)Lorg/apache/commons/lang3/builder/HashCodeBuilder;
    .locals 4

    if-nez p1, :cond_0

    .line 8209
    iget p1, p0, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->iTotal:I

    iget v0, p0, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->iConstant:I

    mul-int/2addr p1, v0

    iput p1, p0, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->iTotal:I

    goto :goto_1

    .line 8229
    :cond_0
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-wide v2, p1, v1

    .line 8239
    invoke-virtual {p0, v2, v3}, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->append(J)Lorg/apache/commons/lang3/builder/HashCodeBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public append([Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/HashCodeBuilder;
    .locals 3

    if-nez p1, :cond_0

    .line 8989
    iget p1, p0, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->iTotal:I

    iget v0, p0, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->iConstant:I

    mul-int/2addr p1, v0

    iput p1, p0, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->iTotal:I

    goto :goto_1

    .line 9009
    :cond_0
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p1, v1

    .line 9019
    invoke-virtual {p0, v2}, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->append(Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/HashCodeBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public append([S)Lorg/apache/commons/lang3/builder/HashCodeBuilder;
    .locals 3

    if-nez p1, :cond_0

    .line 9329
    iget p1, p0, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->iTotal:I

    iget v0, p0, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->iConstant:I

    mul-int/2addr p1, v0

    iput p1, p0, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->iTotal:I

    goto :goto_1

    .line 9349
    :cond_0
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-short v2, p1, v1

    .line 9359
    invoke-virtual {p0, v2}, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->append(S)Lorg/apache/commons/lang3/builder/HashCodeBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public append([Z)Lorg/apache/commons/lang3/builder/HashCodeBuilder;
    .locals 3

    if-nez p1, :cond_0

    .line 6099
    iget p1, p0, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->iTotal:I

    iget v0, p0, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->iConstant:I

    mul-int/2addr p1, v0

    iput p1, p0, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->iTotal:I

    goto :goto_1

    .line 6119
    :cond_0
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-boolean v2, p1, v1

    .line 6129
    invoke-virtual {p0, v2}, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->append(Z)Lorg/apache/commons/lang3/builder/HashCodeBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public appendSuper(I)Lorg/apache/commons/lang3/builder/HashCodeBuilder;
    .locals 2

    .line 9529
    iget v0, p0, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->iTotal:I

    iget v1, p0, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->iConstant:I

    mul-int/2addr v0, v1

    add-int/2addr v0, p1

    iput v0, p0, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->iTotal:I

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public build()Ljava/lang/Integer;
    .locals 1

    .line 9769
    invoke-virtual {p0}, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->toHashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public bridge synthetic build()Ljava/lang/Object;
    .locals 1

    .line 1039
    invoke-virtual {p0}, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->build()Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public hashCode()I
    .locals 1

    .line 9909
    invoke-virtual {p0}, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->toHashCode()I

    move-result v0

    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public toHashCode()I
    .locals 1

    .line 9649
    iget v0, p0, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->iTotal:I

    return v0

    nop

    .array-data 1
    .end array-data
.end method
