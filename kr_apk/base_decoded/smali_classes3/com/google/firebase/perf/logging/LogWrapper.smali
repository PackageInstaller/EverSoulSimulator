.class Lcom/google/firebase/perf/logging/LogWrapper;
.super Ljava/lang/Object;
.source "LogWrapper.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "FirebasePerformance"

.field private static instance:Lcom/google/firebase/perf/logging/LogWrapper;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void

    .array-data 1
    .end array-data
.end method

.method public static declared-synchronized getInstance()Lcom/google/firebase/perf/logging/LogWrapper;
    .locals 2

    const-class v0, Lcom/google/firebase/perf/logging/LogWrapper;

    monitor-enter v0

    .line 27
    :try_start_0
    sget-object v1, Lcom/google/firebase/perf/logging/LogWrapper;->instance:Lcom/google/firebase/perf/logging/LogWrapper;

    if-nez v1, :cond_0

    .line 28
    new-instance v1, Lcom/google/firebase/perf/logging/LogWrapper;

    invoke-direct {v1}, Lcom/google/firebase/perf/logging/LogWrapper;-><init>()V

    sput-object v1, Lcom/google/firebase/perf/logging/LogWrapper;->instance:Lcom/google/firebase/perf/logging/LogWrapper;

    .line 31
    :cond_0
    sget-object v1, Lcom/google/firebase/perf/logging/LogWrapper;->instance:Lcom/google/firebase/perf/logging/LogWrapper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1

    nop

    .array-data 1
    .end array-data
.end method


# virtual methods
.method d(Ljava/lang/String;)V
    .locals 1

    const-string v0, "FirebasePerformance"

    .line 35
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .array-data 1
    .end array-data
.end method

.method e(Ljava/lang/String;)V
    .locals 1

    const-string v0, "FirebasePerformance"

    .line 51
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .array-data 1
    .end array-data
.end method

.method i(Ljava/lang/String;)V
    .locals 1

    const-string v0, "FirebasePerformance"

    .line 43
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .array-data 1
    .end array-data
.end method

.method v(Ljava/lang/String;)V
    .locals 1

    const-string v0, "FirebasePerformance"

    .line 39
    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .array-data 1
    .end array-data
.end method

.method w(Ljava/lang/String;)V
    .locals 1

    const-string v0, "FirebasePerformance"

    .line 47
    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .array-data 1
    .end array-data
.end method
