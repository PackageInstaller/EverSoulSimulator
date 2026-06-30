.class final Ltwitter4j/DispatcherFactory;
.super Ljava/lang/Object;
.source "DispatcherFactory.java"


# instance fields
.field private final conf:Ltwitter4j/conf/Configuration;

.field private final dispatcherImpl:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 389
    invoke-static {}, Ltwitter4j/conf/ConfigurationContext;->getInstance()Ltwitter4j/conf/Configuration;

    move-result-object v0

    invoke-direct {p0, v0}, Ltwitter4j/DispatcherFactory;-><init>(Ltwitter4j/conf/Configuration;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method public constructor <init>(Ltwitter4j/conf/Configuration;)V
    .locals 1

    .line 329
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 339
    invoke-interface {p1}, Ltwitter4j/conf/Configuration;->getDispatcherImpl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ltwitter4j/DispatcherFactory;->dispatcherImpl:Ljava/lang/String;

    .line 349
    iput-object p1, p0, Ltwitter4j/DispatcherFactory;->conf:Ltwitter4j/conf/Configuration;

    return-void

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public getInstance()Ltwitter4j/Dispatcher;
    .locals 5

    .line 489
    :try_start_0
    iget-object v0, p0, Ltwitter4j/DispatcherFactory;->dispatcherImpl:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Class;

    const-class v3, Ltwitter4j/conf/Configuration;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 499
    invoke-virtual {v0, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Ltwitter4j/DispatcherFactory;->conf:Ltwitter4j/conf/Configuration;

    aput-object v2, v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltwitter4j/Dispatcher;
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 619
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    :catch_1
    move-exception v0

    .line 599
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    :catch_2
    move-exception v0

    .line 579
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    :catch_3
    move-exception v0

    .line 559
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    :catch_4
    move-exception v0

    .line 539
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    :catch_5
    move-exception v0

    .line 519
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    nop

    .array-data 1
    .end array-data
.end method
