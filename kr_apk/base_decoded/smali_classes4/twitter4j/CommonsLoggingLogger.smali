.class final Ltwitter4j/CommonsLoggingLogger;
.super Ltwitter4j/Logger;
.source "CommonsLoggingLogger.java"


# instance fields
.field private final LOGGER:Lorg/apache/commons/logging/Log;


# direct methods
.method constructor <init>(Lorg/apache/commons/logging/Log;)V
    .locals 0

    .line 279
    invoke-direct {p0}, Ltwitter4j/Logger;-><init>()V

    .line 289
    iput-object p1, p0, Ltwitter4j/CommonsLoggingLogger;->LOGGER:Lorg/apache/commons/logging/Log;

    return-void

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public debug(Ljava/lang/String;)V
    .locals 1

    .line 539
    iget-object v0, p0, Ltwitter4j/CommonsLoggingLogger;->LOGGER:Lorg/apache/commons/logging/Log;

    invoke-interface {v0, p1}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method public debug(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 589
    iget-object v0, p0, Ltwitter4j/CommonsLoggingLogger;->LOGGER:Lorg/apache/commons/logging/Log;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public error(Ljava/lang/String;)V
    .locals 1

    .line 889
    iget-object v0, p0, Ltwitter4j/CommonsLoggingLogger;->LOGGER:Lorg/apache/commons/logging/Log;

    invoke-interface {v0, p1}, Lorg/apache/commons/logging/Log;->error(Ljava/lang/Object;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method public error(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .line 939
    iget-object v0, p0, Ltwitter4j/CommonsLoggingLogger;->LOGGER:Lorg/apache/commons/logging/Log;

    invoke-interface {v0, p1, p2}, Lorg/apache/commons/logging/Log;->error(Ljava/lang/Object;Ljava/lang/Throwable;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method public info(Ljava/lang/String;)V
    .locals 1

    .line 639
    iget-object v0, p0, Ltwitter4j/CommonsLoggingLogger;->LOGGER:Lorg/apache/commons/logging/Log;

    invoke-interface {v0, p1}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method public info(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 689
    iget-object v0, p0, Ltwitter4j/CommonsLoggingLogger;->LOGGER:Lorg/apache/commons/logging/Log;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public isDebugEnabled()Z
    .locals 1

    .line 339
    iget-object v0, p0, Ltwitter4j/CommonsLoggingLogger;->LOGGER:Lorg/apache/commons/logging/Log;

    invoke-interface {v0}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v0

    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public isErrorEnabled()Z
    .locals 1

    .line 489
    iget-object v0, p0, Ltwitter4j/CommonsLoggingLogger;->LOGGER:Lorg/apache/commons/logging/Log;

    invoke-interface {v0}, Lorg/apache/commons/logging/Log;->isErrorEnabled()Z

    move-result v0

    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public isInfoEnabled()Z
    .locals 1

    .line 389
    iget-object v0, p0, Ltwitter4j/CommonsLoggingLogger;->LOGGER:Lorg/apache/commons/logging/Log;

    invoke-interface {v0}, Lorg/apache/commons/logging/Log;->isInfoEnabled()Z

    move-result v0

    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public isWarnEnabled()Z
    .locals 1

    .line 439
    iget-object v0, p0, Ltwitter4j/CommonsLoggingLogger;->LOGGER:Lorg/apache/commons/logging/Log;

    invoke-interface {v0}, Lorg/apache/commons/logging/Log;->isWarnEnabled()Z

    move-result v0

    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public warn(Ljava/lang/String;)V
    .locals 1

    .line 739
    iget-object v0, p0, Ltwitter4j/CommonsLoggingLogger;->LOGGER:Lorg/apache/commons/logging/Log;

    invoke-interface {v0, p1}, Lorg/apache/commons/logging/Log;->warn(Ljava/lang/Object;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method public warn(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 789
    iget-object v0, p0, Ltwitter4j/CommonsLoggingLogger;->LOGGER:Lorg/apache/commons/logging/Log;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lorg/apache/commons/logging/Log;->warn(Ljava/lang/Object;)V

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public warn(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .line 839
    iget-object v0, p0, Ltwitter4j/CommonsLoggingLogger;->LOGGER:Lorg/apache/commons/logging/Log;

    invoke-interface {v0, p1, p2}, Lorg/apache/commons/logging/Log;->warn(Ljava/lang/Object;Ljava/lang/Throwable;)V

    return-void

    .array-data 1
    .end array-data
.end method
