.class final Ltwitter4j/JULLogger;
.super Ltwitter4j/Logger;
.source "JULLogger.java"


# instance fields
.field private final LOGGER:Ljava/util/logging/Logger;


# direct methods
.method constructor <init>(Ljava/util/logging/Logger;)V
    .locals 0

    .line 279
    invoke-direct {p0}, Ltwitter4j/Logger;-><init>()V

    .line 289
    iput-object p1, p0, Ltwitter4j/JULLogger;->LOGGER:Ljava/util/logging/Logger;

    return-void

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public debug(Ljava/lang/String;)V
    .locals 1

    .line 539
    iget-object v0, p0, Ltwitter4j/JULLogger;->LOGGER:Ljava/util/logging/Logger;

    invoke-virtual {v0, p1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method public debug(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 589
    iget-object v0, p0, Ltwitter4j/JULLogger;->LOGGER:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public error(Ljava/lang/String;)V
    .locals 1

    .line 889
    iget-object v0, p0, Ltwitter4j/JULLogger;->LOGGER:Ljava/util/logging/Logger;

    invoke-virtual {v0, p1}, Ljava/util/logging/Logger;->severe(Ljava/lang/String;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method public error(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    .line 939
    iget-object v0, p0, Ltwitter4j/JULLogger;->LOGGER:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/logging/Logger;->severe(Ljava/lang/String;)V

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public info(Ljava/lang/String;)V
    .locals 1

    .line 639
    iget-object v0, p0, Ltwitter4j/JULLogger;->LOGGER:Ljava/util/logging/Logger;

    invoke-virtual {v0, p1}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method public info(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 689
    iget-object v0, p0, Ltwitter4j/JULLogger;->LOGGER:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public isDebugEnabled()Z
    .locals 2

    .line 339
    iget-object v0, p0, Ltwitter4j/JULLogger;->LOGGER:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public isErrorEnabled()Z
    .locals 2

    .line 489
    iget-object v0, p0, Ltwitter4j/JULLogger;->LOGGER:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public isInfoEnabled()Z
    .locals 2

    .line 389
    iget-object v0, p0, Ltwitter4j/JULLogger;->LOGGER:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public isWarnEnabled()Z
    .locals 2

    .line 439
    iget-object v0, p0, Ltwitter4j/JULLogger;->LOGGER:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public warn(Ljava/lang/String;)V
    .locals 1

    .line 739
    iget-object v0, p0, Ltwitter4j/JULLogger;->LOGGER:Ljava/util/logging/Logger;

    invoke-virtual {v0, p1}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method public warn(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 789
    iget-object v0, p0, Ltwitter4j/JULLogger;->LOGGER:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public warn(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    .line 839
    iget-object v0, p0, Ltwitter4j/JULLogger;->LOGGER:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    return-void

    nop

    .array-data 1
    .end array-data
.end method
