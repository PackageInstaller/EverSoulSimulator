.class final Ltwitter4j/CommonsLoggingLoggerFactory;
.super Ltwitter4j/LoggerFactory;
.source "CommonsLoggingLoggerFactory.java"


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
    new-instance v0, Ltwitter4j/CommonsLoggingLogger;

    invoke-static {p1}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object p1

    invoke-direct {v0, p1}, Ltwitter4j/CommonsLoggingLogger;-><init>(Lorg/apache/commons/logging/Log;)V

    return-object v0

    .array-data 1
    .end array-data
.end method
