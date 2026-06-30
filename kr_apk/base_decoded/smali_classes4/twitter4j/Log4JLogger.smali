.class final Ltwitter4j/Log4JLogger;
.super Ltwitter4j/Logger;
.source "Log4JLogger.java"


# instance fields
.field private final LOGGER:Lorg/apache/log4j/Logger;


# direct methods
.method constructor <init>(Lorg/apache/log4j/Logger;)V
    .locals 0

    .line 269
    invoke-direct {p0}, Ltwitter4j/Logger;-><init>()V

    .line 279
    iput-object p1, p0, Ltwitter4j/Log4JLogger;->LOGGER:Lorg/apache/log4j/Logger;

    return-void

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public debug(Ljava/lang/String;)V
    .locals 1

    .line 529
    iget-object v0, p0, Ltwitter4j/Log4JLogger;->LOGGER:Lorg/apache/log4j/Logger;

    invoke-virtual {v0, p1}, Lorg/apache/log4j/Logger;->debug(Ljava/lang/Object;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method public debug(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 579
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ltwitter4j/Log4JLogger;->debug(Ljava/lang/String;)V

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public error(Ljava/lang/String;)V
    .locals 1

    .line 879
    iget-object v0, p0, Ltwitter4j/Log4JLogger;->LOGGER:Lorg/apache/log4j/Logger;

    invoke-virtual {v0, p1}, Lorg/apache/log4j/Logger;->error(Ljava/lang/Object;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method public error(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .line 929
    iget-object v0, p0, Ltwitter4j/Log4JLogger;->LOGGER:Lorg/apache/log4j/Logger;

    invoke-virtual {v0, p1, p2}, Lorg/apache/log4j/Logger;->error(Ljava/lang/Object;Ljava/lang/Throwable;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method public info(Ljava/lang/String;)V
    .locals 1

    .line 629
    iget-object v0, p0, Ltwitter4j/Log4JLogger;->LOGGER:Lorg/apache/log4j/Logger;

    invoke-virtual {v0, p1}, Lorg/apache/log4j/Logger;->info(Ljava/lang/Object;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method public info(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 679
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ltwitter4j/Log4JLogger;->info(Ljava/lang/String;)V

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public isDebugEnabled()Z
    .locals 1

    .line 329
    iget-object v0, p0, Ltwitter4j/Log4JLogger;->LOGGER:Lorg/apache/log4j/Logger;

    invoke-virtual {v0}, Lorg/apache/log4j/Logger;->isDebugEnabled()Z

    move-result v0

    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public isErrorEnabled()Z
    .locals 2

    .line 479
    iget-object v0, p0, Ltwitter4j/Log4JLogger;->LOGGER:Lorg/apache/log4j/Logger;

    sget-object v1, Lorg/apache/log4j/Level;->WARN:Lorg/apache/log4j/Level;

    invoke-virtual {v0, v1}, Lorg/apache/log4j/Logger;->isEnabledFor(Lorg/apache/log4j/Priority;)Z

    move-result v0

    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public isInfoEnabled()Z
    .locals 1

    .line 379
    iget-object v0, p0, Ltwitter4j/Log4JLogger;->LOGGER:Lorg/apache/log4j/Logger;

    invoke-virtual {v0}, Lorg/apache/log4j/Logger;->isInfoEnabled()Z

    move-result v0

    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public isWarnEnabled()Z
    .locals 2

    .line 429
    iget-object v0, p0, Ltwitter4j/Log4JLogger;->LOGGER:Lorg/apache/log4j/Logger;

    sget-object v1, Lorg/apache/log4j/Level;->WARN:Lorg/apache/log4j/Level;

    invoke-virtual {v0, v1}, Lorg/apache/log4j/Logger;->isEnabledFor(Lorg/apache/log4j/Priority;)Z

    move-result v0

    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public warn(Ljava/lang/String;)V
    .locals 1

    .line 729
    iget-object v0, p0, Ltwitter4j/Log4JLogger;->LOGGER:Lorg/apache/log4j/Logger;

    invoke-virtual {v0, p1}, Lorg/apache/log4j/Logger;->warn(Ljava/lang/Object;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method public warn(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 779
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ltwitter4j/Log4JLogger;->warn(Ljava/lang/String;)V

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public warn(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .line 829
    iget-object v0, p0, Ltwitter4j/Log4JLogger;->LOGGER:Lorg/apache/log4j/Logger;

    invoke-virtual {v0, p1, p2}, Lorg/apache/log4j/Logger;->warn(Ljava/lang/Object;Ljava/lang/Throwable;)V

    return-void

    .array-data 1
    .end array-data
.end method
