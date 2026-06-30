.class final Ltwitter4j/JULLoggerFactory;
.super Ltwitter4j/LoggerFactory;
.source "JULLoggerFactory.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 229
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

    .line 259
    new-instance v0, Ltwitter4j/JULLogger;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object p1

    invoke-direct {v0, p1}, Ltwitter4j/JULLogger;-><init>(Ljava/util/logging/Logger;)V

    return-object v0

    .array-data 1
    .end array-data
.end method
