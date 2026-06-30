.class public abstract Lorg/apache/commons/lang3/reflect/TypeLiteral;
.super Ljava/lang/Object;
.source "TypeLiteral.java"

# interfaces
.implements Lorg/apache/commons/lang3/reflect/Typed;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/apache/commons/lang3/reflect/Typed<",
        "TT;>;"
    }
.end annotation


# static fields
.field private static final T:Ljava/lang/reflect/TypeVariable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/TypeVariable<",
            "Ljava/lang/Class<",
            "Lorg/apache/commons/lang3/reflect/TypeLiteral;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private final toString:Ljava/lang/String;

.field public final value:Ljava/lang/reflect/Type;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 779
    const-class v0, Lorg/apache/commons/lang3/reflect/TypeLiteral;

    invoke-virtual {v0}, Ljava/lang/Class;->getTypeParameters()[Ljava/lang/reflect/TypeVariable;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    sput-object v0, Lorg/apache/commons/lang3/reflect/TypeLiteral;->T:Ljava/lang/reflect/TypeVariable;

    return-void

    .array-data 1
    .end array-data
.end method

.method protected constructor <init>()V
    .locals 6

    .line 899
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 919
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lorg/apache/commons/lang3/reflect/TypeLiteral;

    invoke-static {v0, v1}, Lorg/apache/commons/lang3/reflect/TypeUtils;->getTypeArguments(Ljava/lang/reflect/Type;Ljava/lang/Class;)Ljava/util/Map;

    move-result-object v0

    sget-object v1, Lorg/apache/commons/lang3/reflect/TypeLiteral;->T:Ljava/lang/reflect/TypeVariable;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/Object;

    .line 929
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {v1}, Lorg/apache/commons/lang3/reflect/TypeUtils;->toLongString(Ljava/lang/reflect/TypeVariable;)Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x1

    aput-object v1, v3, v4

    const v1, 0x225cca1e

    invoke-static {v1}, Lcom/liapp/y;->ֲֳگܱޭ(I)Ljava/lang/String;

    move-result-object v1

    .line 919
    invoke-static {v0, v1, v3}, Lorg/apache/commons/lang3/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Type;

    iput-object v0, p0, Lorg/apache/commons/lang3/reflect/TypeLiteral;->value:Ljava/lang/reflect/Type;

    new-array v1, v2, [Ljava/lang/Object;

    const v2, 0x225cd52e

    invoke-static {v2}, Lcom/liapp/y;->ֲֳگܱޭ(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    .line 949
    invoke-static {v0}, Lorg/apache/commons/lang3/reflect/TypeUtils;->toString(Ljava/lang/reflect/Type;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v4

    const v0, 0x225cd4b6

    invoke-static {v0}, Lcom/liapp/y;->ֲֳگܱޭ(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/lang3/reflect/TypeLiteral;->toString:Ljava/lang/String;

    return-void

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p1, p0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 1029
    :cond_0
    instance-of v0, p1, Lorg/apache/commons/lang3/reflect/TypeLiteral;

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return p1

    .line 1059
    :cond_1
    check-cast p1, Lorg/apache/commons/lang3/reflect/TypeLiteral;

    .line 1069
    iget-object v0, p0, Lorg/apache/commons/lang3/reflect/TypeLiteral;->value:Ljava/lang/reflect/Type;

    iget-object p1, p1, Lorg/apache/commons/lang3/reflect/TypeLiteral;->value:Ljava/lang/reflect/Type;

    invoke-static {v0, p1}, Lorg/apache/commons/lang3/reflect/TypeUtils;->equals(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)Z

    move-result p1

    return p1

    nop

    .array-data 1
    .end array-data
.end method

.method public getType()Ljava/lang/reflect/Type;
    .locals 1

    .line 1219
    iget-object v0, p0, Lorg/apache/commons/lang3/reflect/TypeLiteral;->value:Ljava/lang/reflect/Type;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public hashCode()I
    .locals 1

    .line 1119
    iget-object v0, p0, Lorg/apache/commons/lang3/reflect/TypeLiteral;->value:Ljava/lang/reflect/Type;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    or-int/lit16 v0, v0, 0x250

    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1169
    iget-object v0, p0, Lorg/apache/commons/lang3/reflect/TypeLiteral;->toString:Ljava/lang/String;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method
