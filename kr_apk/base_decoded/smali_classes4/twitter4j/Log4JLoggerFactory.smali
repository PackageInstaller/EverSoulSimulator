.class final Ltwitter4j/Log4JLoggerFactory;
.super Ltwitter4j/LoggerFactory;
.source "Log4JLoggerFactory.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 239
    invoke-direct {p0}, Ltwitter4j/LoggerFactory;-><init>()V

    return-void

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public getLogger(Ljava/lang/Class;)Ltwitter4j/Logger;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ltwitter4j/Logger;"
        }
    .end annotation

    .line 279
    new-instance v0, Ltwitter4j/Log4JLogger;

    invoke-static {p1}, Lorg/apache/log4j/Logger;->getLogger(Ljava/lang/Class;)Lorg/apache/log4j/Logger;

    move-result-object p1

    invoke-direct {v0, p1}, Ltwitter4j/Log4JLogger;-><init>(Lorg/apache/log4j/Logger;)V

    return-object v0

    .array-data 1
    .end array-data
.end method
