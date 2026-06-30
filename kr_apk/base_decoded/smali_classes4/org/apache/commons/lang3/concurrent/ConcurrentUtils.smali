.class public Lorg/apache/commons/lang3/concurrent/ConcurrentUtils;
.super Ljava/lang/Object;
.source "ConcurrentUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/lang3/concurrent/ConcurrentUtils$ConstantFuture;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 409
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void

    .array-data 1
    .end array-data
.end method

.method static checkedException(Ljava/lang/Throwable;)Ljava/lang/Throwable;
    .locals 4

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    .line 1459
    instance-of v1, p0, Ljava/lang/RuntimeException;

    if-nez v1, :cond_0

    instance-of v1, p0, Ljava/lang/Error;

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    const v3, 0x543096fa

    invoke-static {v3}, Lcom/liapp/y;->׳ֳֳ֬د(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v1, v2, v0}, Lorg/apache/commons/lang3/Validate;->isTrue(ZLjava/lang/String;[Ljava/lang/Object;)V

    return-object p0

    .array-data 1
    .end array-data
.end method

.method public static constantFuture(Ljava/lang/Object;)Ljava/util/concurrent/Future;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Ljava/util/concurrent/Future<",
            "TT;>;"
        }
    .end annotation

    .line 3259
    new-instance v0, Lorg/apache/commons/lang3/concurrent/ConcurrentUtils$ConstantFuture;

    invoke-direct {v0, p0}, Lorg/apache/commons/lang3/concurrent/ConcurrentUtils$ConstantFuture;-><init>(Ljava/lang/Object;)V

    return-object v0

    .array-data 1
    .end array-data
.end method

.method public static createIfAbsent(Ljava/util/concurrent/ConcurrentMap;Ljava/lang/Object;Lorg/apache/commons/lang3/concurrent/ConcurrentInitializer;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/ConcurrentMap<",
            "TK;TV;>;TK;",
            "Lorg/apache/commons/lang3/concurrent/ConcurrentInitializer<",
            "TV;>;)TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/lang3/concurrent/ConcurrentException;
        }
    .end annotation

    if-eqz p0, :cond_2

    if-nez p2, :cond_0

    goto :goto_0

    .line 2779
    :cond_0
    invoke-interface {p0, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    .line 2799
    invoke-interface {p2}, Lorg/apache/commons/lang3/concurrent/ConcurrentInitializer;->get()Ljava/lang/Object;

    move-result-object p2

    invoke-static {p0, p1, p2}, Lorg/apache/commons/lang3/concurrent/ConcurrentUtils;->putIfAbsent(Ljava/util/concurrent/ConcurrentMap;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_1
    return-object v0

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static createIfAbsentUnchecked(Ljava/util/concurrent/ConcurrentMap;Ljava/lang/Object;Lorg/apache/commons/lang3/concurrent/ConcurrentInitializer;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/ConcurrentMap<",
            "TK;TV;>;TK;",
            "Lorg/apache/commons/lang3/concurrent/ConcurrentInitializer<",
            "TV;>;)TV;"
        }
    .end annotation

    .line 3029
    :try_start_0
    invoke-static {p0, p1, p2}, Lorg/apache/commons/lang3/concurrent/ConcurrentUtils;->createIfAbsent(Ljava/util/concurrent/ConcurrentMap;Ljava/lang/Object;Lorg/apache/commons/lang3/concurrent/ConcurrentInitializer;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Lorg/apache/commons/lang3/concurrent/ConcurrentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 3049
    new-instance p1, Lorg/apache/commons/lang3/concurrent/ConcurrentRuntimeException;

    invoke-virtual {p0}, Lorg/apache/commons/lang3/concurrent/ConcurrentException;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    invoke-direct {p1, p0}, Lorg/apache/commons/lang3/concurrent/ConcurrentRuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    .array-data 1
    .end array-data
.end method

.method public static extractCause(Ljava/util/concurrent/ExecutionException;)Lorg/apache/commons/lang3/concurrent/ConcurrentException;
    .locals 2

    if-eqz p0, :cond_1

    .line 629
    invoke-virtual {p0}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 669
    :cond_0
    invoke-static {p0}, Lorg/apache/commons/lang3/concurrent/ConcurrentUtils;->throwCause(Ljava/util/concurrent/ExecutionException;)V

    .line 679
    new-instance v0, Lorg/apache/commons/lang3/concurrent/ConcurrentException;

    invoke-virtual {p0}, Ljava/util/concurrent/ExecutionException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lorg/apache/commons/lang3/concurrent/ConcurrentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0

    .array-data 1
    .end array-data
.end method

.method public static extractCauseUnchecked(Ljava/util/concurrent/ExecutionException;)Lorg/apache/commons/lang3/concurrent/ConcurrentRuntimeException;
    .locals 2

    if-eqz p0, :cond_1

    .line 849
    invoke-virtual {p0}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 889
    :cond_0
    invoke-static {p0}, Lorg/apache/commons/lang3/concurrent/ConcurrentUtils;->throwCause(Ljava/util/concurrent/ExecutionException;)V

    .line 899
    new-instance v0, Lorg/apache/commons/lang3/concurrent/ConcurrentRuntimeException;

    invoke-virtual {p0}, Ljava/util/concurrent/ExecutionException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lorg/apache/commons/lang3/concurrent/ConcurrentRuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0

    .array-data 1
    .end array-data
.end method

.method public static handleCause(Ljava/util/concurrent/ExecutionException;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/lang3/concurrent/ConcurrentException;
        }
    .end annotation

    .line 1079
    invoke-static {p0}, Lorg/apache/commons/lang3/concurrent/ConcurrentUtils;->extractCause(Ljava/util/concurrent/ExecutionException;)Lorg/apache/commons/lang3/concurrent/ConcurrentException;

    move-result-object p0

    if-nez p0, :cond_0

    return-void

    .line 1109
    :cond_0
    throw p0

    .array-data 1
    .end array-data
.end method

.method public static handleCauseUnchecked(Ljava/util/concurrent/ExecutionException;)V
    .locals 0

    .line 1289
    invoke-static {p0}, Lorg/apache/commons/lang3/concurrent/ConcurrentUtils;->extractCauseUnchecked(Ljava/util/concurrent/ExecutionException;)Lorg/apache/commons/lang3/concurrent/ConcurrentRuntimeException;

    move-result-object p0

    if-nez p0, :cond_0

    return-void

    .line 1319
    :cond_0
    throw p0

    .array-data 1
    .end array-data
.end method

.method public static initialize(Lorg/apache/commons/lang3/concurrent/ConcurrentInitializer;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/commons/lang3/concurrent/ConcurrentInitializer<",
            "TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/lang3/concurrent/ConcurrentException;
        }
    .end annotation

    if-eqz p0, :cond_0

    .line 1839
    invoke-interface {p0}, Lorg/apache/commons/lang3/concurrent/ConcurrentInitializer;->get()Ljava/lang/Object;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static initializeUnchecked(Lorg/apache/commons/lang3/concurrent/ConcurrentInitializer;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/commons/lang3/concurrent/ConcurrentInitializer<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 2019
    :try_start_0
    invoke-static {p0}, Lorg/apache/commons/lang3/concurrent/ConcurrentUtils;->initialize(Lorg/apache/commons/lang3/concurrent/ConcurrentInitializer;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Lorg/apache/commons/lang3/concurrent/ConcurrentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 2039
    new-instance v0, Lorg/apache/commons/lang3/concurrent/ConcurrentRuntimeException;

    invoke-virtual {p0}, Lorg/apache/commons/lang3/concurrent/ConcurrentException;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/apache/commons/lang3/concurrent/ConcurrentRuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .array-data 1
    .end array-data
.end method

.method public static putIfAbsent(Ljava/util/concurrent/ConcurrentMap;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/ConcurrentMap<",
            "TK;TV;>;TK;TV;)TV;"
        }
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 2479
    :cond_0
    invoke-interface {p0, p1, p2}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_1

    move-object p2, p0

    :cond_1
    return-object p2

    .array-data 1
    .end array-data
.end method

.method private static throwCause(Ljava/util/concurrent/ExecutionException;)V
    .locals 1

    .line 1589
    invoke-virtual {p0}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    instance-of v0, v0, Ljava/lang/RuntimeException;

    if-nez v0, :cond_1

    .line 1629
    invoke-virtual {p0}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    instance-of v0, v0, Ljava/lang/Error;

    if-nez v0, :cond_0

    return-void

    .line 1639
    :cond_0
    invoke-virtual {p0}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    check-cast p0, Ljava/lang/Error;

    throw p0

    .line 1599
    :cond_1
    invoke-virtual {p0}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    check-cast p0, Ljava/lang/RuntimeException;

    throw p0

    nop

    .array-data 1
    .end array-data
.end method
