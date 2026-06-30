.class public Lcom/google/firebase/perf/logging/AndroidLogger;
.super Ljava/lang/Object;
.source "AndroidLogger.java"


# static fields
.field private static volatile instance:Lcom/google/firebase/perf/logging/AndroidLogger;


# instance fields
.field private isLogcatEnabled:Z

.field private final logWrapper:Lcom/google/firebase/perf/logging/LogWrapper;


# direct methods
.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 47
    invoke-direct {p0, v0}, Lcom/google/firebase/perf/logging/AndroidLogger;-><init>(Lcom/google/firebase/perf/logging/LogWrapper;)V

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public constructor <init>(Lcom/google/firebase/perf/logging/LogWrapper;)V
    .locals 1

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 27
    iput-boolean v0, p0, Lcom/google/firebase/perf/logging/AndroidLogger;->isLogcatEnabled:Z

    if-nez p1, :cond_0

    .line 43
    invoke-static {}, Lcom/google/firebase/perf/logging/LogWrapper;->getInstance()Lcom/google/firebase/perf/logging/LogWrapper;

    move-result-object p1

    :cond_0
    iput-object p1, p0, Lcom/google/firebase/perf/logging/AndroidLogger;->logWrapper:Lcom/google/firebase/perf/logging/LogWrapper;

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public static getInstance()Lcom/google/firebase/perf/logging/AndroidLogger;
    .locals 2

    .line 30
    sget-object v0, Lcom/google/firebase/perf/logging/AndroidLogger;->instance:Lcom/google/firebase/perf/logging/AndroidLogger;

    if-nez v0, :cond_1

    .line 31
    const-class v0, Lcom/google/firebase/perf/logging/AndroidLogger;

    monitor-enter v0

    .line 32
    :try_start_0
    sget-object v1, Lcom/google/firebase/perf/logging/AndroidLogger;->instance:Lcom/google/firebase/perf/logging/AndroidLogger;

    if-nez v1, :cond_0

    .line 33
    new-instance v1, Lcom/google/firebase/perf/logging/AndroidLogger;

    invoke-direct {v1}, Lcom/google/firebase/perf/logging/AndroidLogger;-><init>()V

    sput-object v1, Lcom/google/firebase/perf/logging/AndroidLogger;->instance:Lcom/google/firebase/perf/logging/AndroidLogger;

    .line 35
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 38
    :cond_1
    :goto_0
    sget-object v0, Lcom/google/firebase/perf/logging/AndroidLogger;->instance:Lcom/google/firebase/perf/logging/AndroidLogger;

    return-object v0

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public debug(Ljava/lang/String;)V
    .locals 1

    .line 69
    iget-boolean v0, p0, Lcom/google/firebase/perf/logging/AndroidLogger;->isLogcatEnabled:Z

    if-eqz v0, :cond_0

    .line 70
    iget-object v0, p0, Lcom/google/firebase/perf/logging/AndroidLogger;->logWrapper:Lcom/google/firebase/perf/logging/LogWrapper;

    invoke-virtual {v0, p1}, Lcom/google/firebase/perf/logging/LogWrapper;->d(Ljava/lang/String;)V

    :cond_0
    return-void

    .array-data 1
    .end array-data
.end method

.method public varargs debug(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    .line 82
    iget-boolean v0, p0, Lcom/google/firebase/perf/logging/AndroidLogger;->isLogcatEnabled:Z

    if-eqz v0, :cond_0

    .line 83
    iget-object v0, p0, Lcom/google/firebase/perf/logging/AndroidLogger;->logWrapper:Lcom/google/firebase/perf/logging/LogWrapper;

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-static {v1, p1, p2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/firebase/perf/logging/LogWrapper;->d(Ljava/lang/String;)V

    :cond_0
    return-void

    .array-data 1
    .end array-data
.end method

.method public error(Ljava/lang/String;)V
    .locals 1

    .line 165
    iget-boolean v0, p0, Lcom/google/firebase/perf/logging/AndroidLogger;->isLogcatEnabled:Z

    if-eqz v0, :cond_0

    .line 166
    iget-object v0, p0, Lcom/google/firebase/perf/logging/AndroidLogger;->logWrapper:Lcom/google/firebase/perf/logging/LogWrapper;

    invoke-virtual {v0, p1}, Lcom/google/firebase/perf/logging/LogWrapper;->e(Ljava/lang/String;)V

    :cond_0
    return-void

    .array-data 1
    .end array-data
.end method

.method public varargs error(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    .line 178
    iget-boolean v0, p0, Lcom/google/firebase/perf/logging/AndroidLogger;->isLogcatEnabled:Z

    if-eqz v0, :cond_0

    .line 179
    iget-object v0, p0, Lcom/google/firebase/perf/logging/AndroidLogger;->logWrapper:Lcom/google/firebase/perf/logging/LogWrapper;

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-static {v1, p1, p2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/firebase/perf/logging/LogWrapper;->e(Ljava/lang/String;)V

    :cond_0
    return-void

    .array-data 1
    .end array-data
.end method

.method public info(Ljava/lang/String;)V
    .locals 1

    .line 117
    iget-boolean v0, p0, Lcom/google/firebase/perf/logging/AndroidLogger;->isLogcatEnabled:Z

    if-eqz v0, :cond_0

    .line 118
    iget-object v0, p0, Lcom/google/firebase/perf/logging/AndroidLogger;->logWrapper:Lcom/google/firebase/perf/logging/LogWrapper;

    invoke-virtual {v0, p1}, Lcom/google/firebase/perf/logging/LogWrapper;->i(Ljava/lang/String;)V

    :cond_0
    return-void

    .array-data 1
    .end array-data
.end method

.method public varargs info(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    .line 130
    iget-boolean v0, p0, Lcom/google/firebase/perf/logging/AndroidLogger;->isLogcatEnabled:Z

    if-eqz v0, :cond_0

    .line 131
    iget-object v0, p0, Lcom/google/firebase/perf/logging/AndroidLogger;->logWrapper:Lcom/google/firebase/perf/logging/LogWrapper;

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-static {v1, p1, p2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/firebase/perf/logging/LogWrapper;->i(Ljava/lang/String;)V

    :cond_0
    return-void

    .array-data 1
    .end array-data
.end method

.method public isLogcatEnabled()Z
    .locals 1

    .line 60
    iget-boolean v0, p0, Lcom/google/firebase/perf/logging/AndroidLogger;->isLogcatEnabled:Z

    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public setLogcatEnabled(Z)V
    .locals 0

    .line 51
    iput-boolean p1, p0, Lcom/google/firebase/perf/logging/AndroidLogger;->isLogcatEnabled:Z

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public verbose(Ljava/lang/String;)V
    .locals 1

    .line 93
    iget-boolean v0, p0, Lcom/google/firebase/perf/logging/AndroidLogger;->isLogcatEnabled:Z

    if-eqz v0, :cond_0

    .line 94
    iget-object v0, p0, Lcom/google/firebase/perf/logging/AndroidLogger;->logWrapper:Lcom/google/firebase/perf/logging/LogWrapper;

    invoke-virtual {v0, p1}, Lcom/google/firebase/perf/logging/LogWrapper;->v(Ljava/lang/String;)V

    :cond_0
    return-void

    .array-data 1
    .end array-data
.end method

.method public varargs verbose(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    .line 106
    iget-boolean v0, p0, Lcom/google/firebase/perf/logging/AndroidLogger;->isLogcatEnabled:Z

    if-eqz v0, :cond_0

    .line 107
    iget-object v0, p0, Lcom/google/firebase/perf/logging/AndroidLogger;->logWrapper:Lcom/google/firebase/perf/logging/LogWrapper;

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-static {v1, p1, p2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/firebase/perf/logging/LogWrapper;->v(Ljava/lang/String;)V

    :cond_0
    return-void

    .array-data 1
    .end array-data
.end method

.method public warn(Ljava/lang/String;)V
    .locals 1

    .line 141
    iget-boolean v0, p0, Lcom/google/firebase/perf/logging/AndroidLogger;->isLogcatEnabled:Z

    if-eqz v0, :cond_0

    .line 142
    iget-object v0, p0, Lcom/google/firebase/perf/logging/AndroidLogger;->logWrapper:Lcom/google/firebase/perf/logging/LogWrapper;

    invoke-virtual {v0, p1}, Lcom/google/firebase/perf/logging/LogWrapper;->w(Ljava/lang/String;)V

    :cond_0
    return-void

    .array-data 1
    .end array-data
.end method

.method public varargs warn(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    .line 154
    iget-boolean v0, p0, Lcom/google/firebase/perf/logging/AndroidLogger;->isLogcatEnabled:Z

    if-eqz v0, :cond_0

    .line 155
    iget-object v0, p0, Lcom/google/firebase/perf/logging/AndroidLogger;->logWrapper:Lcom/google/firebase/perf/logging/LogWrapper;

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-static {v1, p1, p2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/firebase/perf/logging/LogWrapper;->w(Ljava/lang/String;)V

    :cond_0
    return-void

    .array-data 1
    .end array-data
.end method
