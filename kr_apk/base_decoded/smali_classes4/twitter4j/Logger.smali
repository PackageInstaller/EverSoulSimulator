.class public abstract Ltwitter4j/Logger;
.super Ljava/lang/Object;
.source "Logger.java"


# static fields
.field private static final LOGGER_FACTORY:Ltwitter4j/LoggerFactory;

.field private static final LOGGER_FACTORY_IMPLEMENTATION:Ljava/lang/String; = "twitter4j.loggerFactory"

.field private static final LOGGER_FACTORY_IMPLEMENTATION_ENV:Ljava/lang/String; = "twitter4j_loggerFactory"


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const v0, -0x2249b744

    invoke-static {v0}, Lcom/liapp/y;->״دش۲ݮ(I)Ljava/lang/String;

    move-result-object v0

    .line 379
    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const v0, -0x451211cf

    invoke-static {v0}, Lcom/liapp/y;->ڳݬ٬ۮݪ(I)Ljava/lang/String;

    move-result-object v0

    .line 399
    invoke-static {v0}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    if-eqz v0, :cond_1

    .line 429
    invoke-static {v0, v0}, Ltwitter4j/Logger;->getLoggerFactoryIfAvailable(Ljava/lang/String;Ljava/lang/String;)Ltwitter4j/LoggerFactory;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 459
    :goto_0
    invoke-static {}, Ltwitter4j/conf/ConfigurationContext;->getInstance()Ltwitter4j/conf/Configuration;

    move-result-object v1

    .line 489
    invoke-interface {v1}, Ltwitter4j/conf/Configuration;->getLoggerFactory()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 509
    invoke-static {v2, v2}, Ltwitter4j/Logger;->getLoggerFactoryIfAvailable(Ljava/lang/String;Ljava/lang/String;)Ltwitter4j/LoggerFactory;

    move-result-object v0

    :cond_2
    if-nez v0, :cond_3

    const v0, 0x5d1b56e7

    invoke-static {v0}, Lcom/liapp/y;->ڴݮگ֮ت(I)Ljava/lang/String;

    move-result-object v0

    const v2, 0x7d7b7875

    invoke-static {v2}, Lcom/liapp/y;->حֲݴܳޯ(I)Ljava/lang/String;

    move-result-object v2

    .line 549
    invoke-static {v0, v2}, Ltwitter4j/Logger;->getLoggerFactoryIfAvailable(Ljava/lang/String;Ljava/lang/String;)Ltwitter4j/LoggerFactory;

    move-result-object v0

    :cond_3
    if-nez v0, :cond_4

    const v0, 0x6d076460

    invoke-static {v0}, Lcom/liapp/y;->ٱڳܴڭܩ(I)Ljava/lang/String;

    move-result-object v0

    const v2, 0x225e736e

    invoke-static {v2}, Lcom/liapp/y;->ֲֳگܱޭ(I)Ljava/lang/String;

    move-result-object v2

    .line 589
    invoke-static {v0, v2}, Ltwitter4j/Logger;->getLoggerFactoryIfAvailable(Ljava/lang/String;Ljava/lang/String;)Ltwitter4j/LoggerFactory;

    move-result-object v0

    :cond_4
    if-nez v0, :cond_5

    const v0, -0x451214d7

    invoke-static {v0}, Lcom/liapp/y;->ڳݬ٬ۮݪ(I)Ljava/lang/String;

    move-result-object v0

    const v2, 0x5432762a

    invoke-static {v2}, Lcom/liapp/y;->׳ֳֳ֬د(I)Ljava/lang/String;

    move-result-object v2

    .line 629
    invoke-static {v0, v2}, Ltwitter4j/Logger;->getLoggerFactoryIfAvailable(Ljava/lang/String;Ljava/lang/String;)Ltwitter4j/LoggerFactory;

    move-result-object v0

    :cond_5
    if-nez v0, :cond_6

    const v0, -0x45121a8f

    invoke-static {v0}, Lcom/liapp/y;->ڳݬ٬ۮݪ(I)Ljava/lang/String;

    move-result-object v0

    const v2, 0x543275d2

    invoke-static {v2}, Lcom/liapp/y;->׳ֳֳ֬د(I)Ljava/lang/String;

    move-result-object v2

    .line 669
    invoke-static {v0, v2}, Ltwitter4j/Logger;->getLoggerFactoryIfAvailable(Ljava/lang/String;Ljava/lang/String;)Ltwitter4j/LoggerFactory;

    move-result-object v0

    :cond_6
    if-nez v0, :cond_7

    .line 709
    new-instance v0, Ltwitter4j/StdOutLoggerFactory;

    invoke-direct {v0}, Ltwitter4j/StdOutLoggerFactory;-><init>()V

    .line 729
    :cond_7
    sput-object v0, Ltwitter4j/Logger;->LOGGER_FACTORY:Ltwitter4j/LoggerFactory;

    .line 759
    :try_start_0
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v2, "dumpConfiguration"

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Class;

    invoke-virtual {v0, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v2, 0x1

    .line 769
    invoke-virtual {v0, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    new-array v2, v3, [Ljava/lang/Object;

    .line 779
    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void

    .array-data 1
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .line 299
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void

    .array-data 1
    .end array-data
.end method

.method public static getLogger(Ljava/lang/Class;)Ltwitter4j/Logger;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ltwitter4j/Logger;"
        }
    .end annotation

    .line 1069
    sget-object v0, Ltwitter4j/Logger;->LOGGER_FACTORY:Ltwitter4j/LoggerFactory;

    invoke-virtual {v0, p0}, Ltwitter4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Ltwitter4j/Logger;

    move-result-object p0

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method private static getLoggerFactoryIfAvailable(Ljava/lang/String;Ljava/lang/String;)Ltwitter4j/LoggerFactory;
    .locals 0

    .line 869
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 879
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ltwitter4j/LoggerFactory;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 949
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1

    :catch_1
    move-exception p0

    .line 909
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1

    :catch_2
    const/4 p0, 0x0

    return-object p0

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public abstract debug(Ljava/lang/String;)V
.end method

.method public abstract debug(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract error(Ljava/lang/String;)V
.end method

.method public abstract error(Ljava/lang/String;Ljava/lang/Throwable;)V
.end method

.method public abstract info(Ljava/lang/String;)V
.end method

.method public abstract info(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract isDebugEnabled()Z
.end method

.method public abstract isErrorEnabled()Z
.end method

.method public abstract isInfoEnabled()Z
.end method

.method public abstract isWarnEnabled()Z
.end method

.method public abstract warn(Ljava/lang/String;)V
.end method

.method public abstract warn(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract warn(Ljava/lang/String;Ljava/lang/Throwable;)V
.end method
