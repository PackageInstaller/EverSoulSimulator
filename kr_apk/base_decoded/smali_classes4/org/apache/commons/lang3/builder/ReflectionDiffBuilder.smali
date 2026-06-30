.class public Lorg/apache/commons/lang3/builder/ReflectionDiffBuilder;
.super Ljava/lang/Object;
.source "ReflectionDiffBuilder.java"

# interfaces
.implements Lorg/apache/commons/lang3/builder/Builder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/commons/lang3/builder/Builder<",
        "Lorg/apache/commons/lang3/builder/DiffResult;",
        ">;"
    }
.end annotation


# instance fields
.field private final diffBuilder:Lorg/apache/commons/lang3/builder/DiffBuilder;

.field private final left:Ljava/lang/Object;

.field private final right:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Lorg/apache/commons/lang3/builder/ToStringStyle;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;TT;",
            "Lorg/apache/commons/lang3/builder/ToStringStyle;",
            ")V"
        }
    .end annotation

    .line 969
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 979
    iput-object p1, p0, Lorg/apache/commons/lang3/builder/ReflectionDiffBuilder;->left:Ljava/lang/Object;

    .line 989
    iput-object p2, p0, Lorg/apache/commons/lang3/builder/ReflectionDiffBuilder;->right:Ljava/lang/Object;

    .line 999
    new-instance v0, Lorg/apache/commons/lang3/builder/DiffBuilder;

    invoke-direct {v0, p1, p2, p3}, Lorg/apache/commons/lang3/builder/DiffBuilder;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lorg/apache/commons/lang3/builder/ToStringStyle;)V

    iput-object v0, p0, Lorg/apache/commons/lang3/builder/ReflectionDiffBuilder;->diffBuilder:Lorg/apache/commons/lang3/builder/DiffBuilder;

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method private accept(Ljava/lang/reflect/Field;)Z
    .locals 3

    .line 1289
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x24

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    return v2

    .line 1319
    :cond_0
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isTransient(I)Z

    move-result v0

    if-eqz v0, :cond_1

    return v2

    .line 1349
    :cond_1
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result p1

    invoke-static {p1}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1

    nop

    .array-data 1
    .end array-data
.end method

.method private appendFields(Ljava/lang/Class;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 1139
    invoke-static {p1}, Lorg/apache/commons/lang3/reflect/FieldUtils;->getAllFields(Ljava/lang/Class;)[Ljava/lang/reflect/Field;

    move-result-object p1

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p1, v1

    .line 1149
    invoke-direct {p0, v2}, Lorg/apache/commons/lang3/builder/ReflectionDiffBuilder;->accept(Ljava/lang/reflect/Field;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1169
    :try_start_0
    iget-object v3, p0, Lorg/apache/commons/lang3/builder/ReflectionDiffBuilder;->diffBuilder:Lorg/apache/commons/lang3/builder/DiffBuilder;

    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lorg/apache/commons/lang3/builder/ReflectionDiffBuilder;->left:Ljava/lang/Object;

    const/4 v6, 0x1

    invoke-static {v2, v5, v6}, Lorg/apache/commons/lang3/reflect/FieldUtils;->readField(Ljava/lang/reflect/Field;Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object v5

    iget-object v7, p0, Lorg/apache/commons/lang3/builder/ReflectionDiffBuilder;->right:Ljava/lang/Object;

    .line 1179
    invoke-static {v2, v7, v6}, Lorg/apache/commons/lang3/reflect/FieldUtils;->readField(Ljava/lang/reflect/Field;Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object v2

    .line 1169
    invoke-virtual {v3, v4, v5, v2}, Lorg/apache/commons/lang3/builder/DiffBuilder;->append(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/DiffBuilder;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 1219
    new-instance v0, Ljava/lang/InternalError;

    new-instance v1, Ljava/lang/StringBuilder;

    const v2, 0x225c888e

    invoke-static {v2}, Lcom/liapp/y;->ֲֳگܱޭ(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/IllegalAccessException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public bridge synthetic build()Ljava/lang/Object;
    .locals 1

    .line 689
    invoke-virtual {p0}, Lorg/apache/commons/lang3/builder/ReflectionDiffBuilder;->build()Lorg/apache/commons/lang3/builder/DiffResult;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public build()Lorg/apache/commons/lang3/builder/DiffResult;
    .locals 2

    .line 1049
    iget-object v0, p0, Lorg/apache/commons/lang3/builder/ReflectionDiffBuilder;->left:Ljava/lang/Object;

    iget-object v1, p0, Lorg/apache/commons/lang3/builder/ReflectionDiffBuilder;->right:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1059
    iget-object v0, p0, Lorg/apache/commons/lang3/builder/ReflectionDiffBuilder;->diffBuilder:Lorg/apache/commons/lang3/builder/DiffBuilder;

    invoke-virtual {v0}, Lorg/apache/commons/lang3/builder/DiffBuilder;->build()Lorg/apache/commons/lang3/builder/DiffResult;

    move-result-object v0

    return-object v0

    .line 1089
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/lang3/builder/ReflectionDiffBuilder;->left:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/commons/lang3/builder/ReflectionDiffBuilder;->appendFields(Ljava/lang/Class;)V

    .line 1099
    iget-object v0, p0, Lorg/apache/commons/lang3/builder/ReflectionDiffBuilder;->diffBuilder:Lorg/apache/commons/lang3/builder/DiffBuilder;

    invoke-virtual {v0}, Lorg/apache/commons/lang3/builder/DiffBuilder;->build()Lorg/apache/commons/lang3/builder/DiffResult;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method
