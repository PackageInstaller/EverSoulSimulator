.class public Lcom/google/firebase/perf/application/AppStateMonitor;
.super Ljava/lang/Object;
.source "AppStateMonitor.java"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/perf/application/AppStateMonitor$AppStateCallback;,
        Lcom/google/firebase/perf/application/AppStateMonitor$AppColdStartCallback;
    }
.end annotation


# static fields
.field private static volatile instance:Lcom/google/firebase/perf/application/AppStateMonitor;

.field private static final logger:Lcom/google/firebase/perf/logging/AndroidLogger;


# instance fields
.field private final activityToFragmentStateMonitorMap:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Landroid/app/Activity;",
            "Lcom/google/firebase/perf/application/FragmentStateMonitor;",
            ">;"
        }
    .end annotation
.end field

.field private final activityToRecorderMap:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Landroid/app/Activity;",
            "Lcom/google/firebase/perf/application/FrameMetricsRecorder;",
            ">;"
        }
    .end annotation
.end field

.field private final activityToResumedMap:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Landroid/app/Activity;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final activityToScreenTraceMap:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Landroid/app/Activity;",
            "Lcom/google/firebase/perf/metrics/Trace;",
            ">;"
        }
    .end annotation
.end field

.field private appColdStartSubscribers:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/google/firebase/perf/application/AppStateMonitor$AppColdStartCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final appStateSubscribers:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/google/firebase/perf/application/AppStateMonitor$AppStateCallback;",
            ">;>;"
        }
    .end annotation
.end field

.field private final clock:Lcom/google/firebase/perf/util/Clock;

.field private final configResolver:Lcom/google/firebase/perf/config/ConfigResolver;

.field private currentAppState:Lcom/google/firebase/perf/v1/ApplicationProcessState;

.field private isColdStart:Z

.field private isRegisteredForLifecycleCallbacks:Z

.field private final metricToCountMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private resumeTime:Lcom/google/firebase/perf/util/Timer;

.field private final screenPerformanceRecordingSupported:Z

.field private stopTime:Lcom/google/firebase/perf/util/Timer;

.field private final transportManager:Lcom/google/firebase/perf/transport/TransportManager;

.field private final tsnsCount:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 51
    invoke-static {}, Lcom/google/firebase/perf/logging/AndroidLogger;->getInstance()Lcom/google/firebase/perf/logging/AndroidLogger;

    move-result-object v0

    sput-object v0, Lcom/google/firebase/perf/application/AppStateMonitor;->logger:Lcom/google/firebase/perf/logging/AndroidLogger;

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method constructor <init>(Lcom/google/firebase/perf/transport/TransportManager;Lcom/google/firebase/perf/util/Clock;)V
    .locals 2

    .line 98
    invoke-static {}, Lcom/google/firebase/perf/config/ConfigResolver;->getInstance()Lcom/google/firebase/perf/config/ConfigResolver;

    move-result-object v0

    .line 99
    invoke-static {}, Lcom/google/firebase/perf/application/AppStateMonitor;->isScreenPerformanceRecordingSupported()Z

    move-result v1

    .line 95
    invoke-direct {p0, p1, p2, v0, v1}, Lcom/google/firebase/perf/application/AppStateMonitor;-><init>(Lcom/google/firebase/perf/transport/TransportManager;Lcom/google/firebase/perf/util/Clock;Lcom/google/firebase/perf/config/ConfigResolver;Z)V

    return-void

    .array-data 1
    .end array-data
.end method

.method constructor <init>(Lcom/google/firebase/perf/transport/TransportManager;Lcom/google/firebase/perf/util/Clock;Lcom/google/firebase/perf/config/ConfigResolver;Z)V
    .locals 2

    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lcom/google/firebase/perf/application/AppStateMonitor;->activityToResumedMap:Ljava/util/WeakHashMap;

    .line 56
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lcom/google/firebase/perf/application/AppStateMonitor;->activityToRecorderMap:Ljava/util/WeakHashMap;

    .line 60
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lcom/google/firebase/perf/application/AppStateMonitor;->activityToFragmentStateMonitorMap:Ljava/util/WeakHashMap;

    .line 62
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lcom/google/firebase/perf/application/AppStateMonitor;->activityToScreenTraceMap:Ljava/util/WeakHashMap;

    .line 63
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/firebase/perf/application/AppStateMonitor;->metricToCountMap:Ljava/util/Map;

    .line 64
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/firebase/perf/application/AppStateMonitor;->appStateSubscribers:Ljava/util/Set;

    .line 65
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/firebase/perf/application/AppStateMonitor;->appColdStartSubscribers:Ljava/util/Set;

    .line 68
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/google/firebase/perf/application/AppStateMonitor;->tsnsCount:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 78
    sget-object v0, Lcom/google/firebase/perf/v1/ApplicationProcessState;->BACKGROUND:Lcom/google/firebase/perf/v1/ApplicationProcessState;

    iput-object v0, p0, Lcom/google/firebase/perf/application/AppStateMonitor;->currentAppState:Lcom/google/firebase/perf/v1/ApplicationProcessState;

    .line 80
    iput-boolean v1, p0, Lcom/google/firebase/perf/application/AppStateMonitor;->isRegisteredForLifecycleCallbacks:Z

    const/4 v0, 0x1

    .line 81
    iput-boolean v0, p0, Lcom/google/firebase/perf/application/AppStateMonitor;->isColdStart:Z

    .line 108
    iput-object p1, p0, Lcom/google/firebase/perf/application/AppStateMonitor;->transportManager:Lcom/google/firebase/perf/transport/TransportManager;

    .line 109
    iput-object p2, p0, Lcom/google/firebase/perf/application/AppStateMonitor;->clock:Lcom/google/firebase/perf/util/Clock;

    .line 110
    iput-object p3, p0, Lcom/google/firebase/perf/application/AppStateMonitor;->configResolver:Lcom/google/firebase/perf/config/ConfigResolver;

    .line 111
    iput-boolean p4, p0, Lcom/google/firebase/perf/application/AppStateMonitor;->screenPerformanceRecordingSupported:Z

    return-void

    .array-data 1
    .end array-data
.end method

.method public static getInstance()Lcom/google/firebase/perf/application/AppStateMonitor;
    .locals 4

    .line 84
    sget-object v0, Lcom/google/firebase/perf/application/AppStateMonitor;->instance:Lcom/google/firebase/perf/application/AppStateMonitor;

    if-nez v0, :cond_1

    .line 85
    const-class v0, Lcom/google/firebase/perf/application/AppStateMonitor;

    monitor-enter v0

    .line 86
    :try_start_0
    sget-object v1, Lcom/google/firebase/perf/application/AppStateMonitor;->instance:Lcom/google/firebase/perf/application/AppStateMonitor;

    if-nez v1, :cond_0

    .line 87
    new-instance v1, Lcom/google/firebase/perf/application/AppStateMonitor;

    invoke-static {}, Lcom/google/firebase/perf/transport/TransportManager;->getInstance()Lcom/google/firebase/perf/transport/TransportManager;

    move-result-object v2

    new-instance v3, Lcom/google/firebase/perf/util/Clock;

    invoke-direct {v3}, Lcom/google/firebase/perf/util/Clock;-><init>()V

    invoke-direct {v1, v2, v3}, Lcom/google/firebase/perf/application/AppStateMonitor;-><init>(Lcom/google/firebase/perf/transport/TransportManager;Lcom/google/firebase/perf/util/Clock;)V

    sput-object v1, Lcom/google/firebase/perf/application/AppStateMonitor;->instance:Lcom/google/firebase/perf/application/AppStateMonitor;

    .line 89
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 91
    :cond_1
    :goto_0
    sget-object v0, Lcom/google/firebase/perf/application/AppStateMonitor;->instance:Lcom/google/firebase/perf/application/AppStateMonitor;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public static getScreenTraceName(Landroid/app/Activity;)Ljava/lang/String;
    .locals 2

    .line 434
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "_st_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .array-data 1
    .end array-data
.end method

.method private static isScreenPerformanceRecordingSupported()Z
    .locals 1

    .line 414
    invoke-static {}, Lcom/google/firebase/perf/application/FrameMetricsRecorder;->isFrameMetricsRecordingSupported()Z

    move-result v0

    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method private sendAppColdStartUpdate()V
    .locals 3

    .line 318
    iget-object v0, p0, Lcom/google/firebase/perf/application/AppStateMonitor;->appColdStartSubscribers:Ljava/util/Set;

    monitor-enter v0

    .line 319
    :try_start_0
    iget-object v1, p0, Lcom/google/firebase/perf/application/AppStateMonitor;->appColdStartSubscribers:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 320
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/firebase/perf/application/AppStateMonitor$AppColdStartCallback;

    if-eqz v2, :cond_0

    .line 322
    invoke-interface {v2}, Lcom/google/firebase/perf/application/AppStateMonitor$AppColdStartCallback;->onAppColdStart()V

    goto :goto_0

    .line 325
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .array-data 1
    .end array-data
.end method

.method private sendScreenTrace(Landroid/app/Activity;)V
    .locals 3

    .line 349
    iget-object v0, p0, Lcom/google/firebase/perf/application/AppStateMonitor;->activityToScreenTraceMap:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/perf/metrics/Trace;

    if-nez v0, :cond_0

    return-void

    .line 353
    :cond_0
    iget-object v1, p0, Lcom/google/firebase/perf/application/AppStateMonitor;->activityToScreenTraceMap:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p1}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 355
    iget-object v1, p0, Lcom/google/firebase/perf/application/AppStateMonitor;->activityToRecorderMap:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/firebase/perf/application/FrameMetricsRecorder;

    invoke-virtual {v1}, Lcom/google/firebase/perf/application/FrameMetricsRecorder;->stop()Lcom/google/firebase/perf/util/Optional;

    move-result-object v1

    .line 356
    invoke-virtual {v1}, Lcom/google/firebase/perf/util/Optional;->isAvailable()Z

    move-result v2

    if-nez v2, :cond_1

    .line 357
    sget-object v0, Lcom/google/firebase/perf/application/AppStateMonitor;->logger:Lcom/google/firebase/perf/logging/AndroidLogger;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string p1, "Failed to record frame data for %s."

    invoke-virtual {v0, p1, v1}, Lcom/google/firebase/perf/logging/AndroidLogger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 360
    :cond_1
    invoke-virtual {v1}, Lcom/google/firebase/perf/util/Optional;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/firebase/perf/metrics/FrameMetricsCalculator$PerfFrameMetrics;

    invoke-static {v0, p1}, Lcom/google/firebase/perf/util/ScreenTraceUtil;->addFrameCounters(Lcom/google/firebase/perf/metrics/Trace;Lcom/google/firebase/perf/metrics/FrameMetricsCalculator$PerfFrameMetrics;)Lcom/google/firebase/perf/metrics/Trace;

    .line 362
    invoke-virtual {v0}, Lcom/google/firebase/perf/metrics/Trace;->stop()V

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method private sendSessionLog(Ljava/lang/String;Lcom/google/firebase/perf/util/Timer;Lcom/google/firebase/perf/util/Timer;)V
    .locals 3

    .line 373
    iget-object v0, p0, Lcom/google/firebase/perf/application/AppStateMonitor;->configResolver:Lcom/google/firebase/perf/config/ConfigResolver;

    invoke-virtual {v0}, Lcom/google/firebase/perf/config/ConfigResolver;->isPerformanceMonitoringEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 378
    :cond_0
    invoke-static {}, Lcom/google/firebase/perf/v1/TraceMetric;->newBuilder()Lcom/google/firebase/perf/v1/TraceMetric$Builder;

    move-result-object v0

    .line 379
    invoke-virtual {v0, p1}, Lcom/google/firebase/perf/v1/TraceMetric$Builder;->setName(Ljava/lang/String;)Lcom/google/firebase/perf/v1/TraceMetric$Builder;

    move-result-object p1

    .line 380
    invoke-virtual {p2}, Lcom/google/firebase/perf/util/Timer;->getMicros()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/google/firebase/perf/v1/TraceMetric$Builder;->setClientStartTimeUs(J)Lcom/google/firebase/perf/v1/TraceMetric$Builder;

    move-result-object p1

    .line 381
    invoke-virtual {p2, p3}, Lcom/google/firebase/perf/util/Timer;->getDurationMicros(Lcom/google/firebase/perf/util/Timer;)J

    move-result-wide p2

    invoke-virtual {p1, p2, p3}, Lcom/google/firebase/perf/v1/TraceMetric$Builder;->setDurationUs(J)Lcom/google/firebase/perf/v1/TraceMetric$Builder;

    move-result-object p1

    .line 382
    invoke-static {}, Lcom/google/firebase/perf/session/SessionManager;->getInstance()Lcom/google/firebase/perf/session/SessionManager;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/firebase/perf/session/SessionManager;->perfSession()Lcom/google/firebase/perf/session/PerfSession;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/firebase/perf/session/PerfSession;->build()Lcom/google/firebase/perf/v1/PerfSession;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/google/firebase/perf/v1/TraceMetric$Builder;->addPerfSessions(Lcom/google/firebase/perf/v1/PerfSession;)Lcom/google/firebase/perf/v1/TraceMetric$Builder;

    move-result-object p1

    .line 384
    iget-object p2, p0, Lcom/google/firebase/perf/application/AppStateMonitor;->tsnsCount:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 p3, 0x0

    invoke-virtual {p2, p3}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndSet(I)I

    move-result p2

    .line 385
    iget-object p3, p0, Lcom/google/firebase/perf/application/AppStateMonitor;->metricToCountMap:Ljava/util/Map;

    monitor-enter p3

    .line 386
    :try_start_0
    iget-object v0, p0, Lcom/google/firebase/perf/application/AppStateMonitor;->metricToCountMap:Ljava/util/Map;

    invoke-virtual {p1, v0}, Lcom/google/firebase/perf/v1/TraceMetric$Builder;->putAllCounters(Ljava/util/Map;)Lcom/google/firebase/perf/v1/TraceMetric$Builder;

    if-eqz p2, :cond_1

    .line 388
    sget-object v0, Lcom/google/firebase/perf/util/Constants$CounterNames;->TRACE_STARTED_NOT_STOPPED:Lcom/google/firebase/perf/util/Constants$CounterNames;

    invoke-virtual {v0}, Lcom/google/firebase/perf/util/Constants$CounterNames;->toString()Ljava/lang/String;

    move-result-object v0

    int-to-long v1, p2

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/firebase/perf/v1/TraceMetric$Builder;->putCounters(Ljava/lang/String;J)Lcom/google/firebase/perf/v1/TraceMetric$Builder;

    .line 392
    :cond_1
    iget-object p2, p0, Lcom/google/firebase/perf/application/AppStateMonitor;->metricToCountMap:Ljava/util/Map;

    invoke-interface {p2}, Ljava/util/Map;->clear()V

    .line 393
    monitor-exit p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 396
    iget-object p2, p0, Lcom/google/firebase/perf/application/AppStateMonitor;->transportManager:Lcom/google/firebase/perf/transport/TransportManager;

    invoke-virtual {p1}, Lcom/google/firebase/perf/v1/TraceMetric$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/firebase/perf/v1/TraceMetric;

    sget-object p3, Lcom/google/firebase/perf/v1/ApplicationProcessState;->FOREGROUND_BACKGROUND:Lcom/google/firebase/perf/v1/ApplicationProcessState;

    invoke-virtual {p2, p1, p3}, Lcom/google/firebase/perf/transport/TransportManager;->log(Lcom/google/firebase/perf/v1/TraceMetric;Lcom/google/firebase/perf/v1/ApplicationProcessState;)V

    return-void

    :catchall_0
    move-exception p1

    .line 393
    :try_start_1
    monitor-exit p3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    nop

    .array-data 1
    .end array-data
.end method

.method private startFrameMonitoring(Landroid/app/Activity;)V
    .locals 4

    .line 157
    invoke-virtual {p0}, Lcom/google/firebase/perf/application/AppStateMonitor;->isScreenTraceSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/firebase/perf/application/AppStateMonitor;->configResolver:Lcom/google/firebase/perf/config/ConfigResolver;

    invoke-virtual {v0}, Lcom/google/firebase/perf/config/ConfigResolver;->isPerformanceMonitoringEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 158
    new-instance v0, Lcom/google/firebase/perf/application/FrameMetricsRecorder;

    invoke-direct {v0, p1}, Lcom/google/firebase/perf/application/FrameMetricsRecorder;-><init>(Landroid/app/Activity;)V

    .line 159
    iget-object v1, p0, Lcom/google/firebase/perf/application/AppStateMonitor;->activityToRecorderMap:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    instance-of v1, p1, Landroidx/fragment/app/FragmentActivity;

    if-eqz v1, :cond_0

    .line 161
    new-instance v1, Lcom/google/firebase/perf/application/FragmentStateMonitor;

    iget-object v2, p0, Lcom/google/firebase/perf/application/AppStateMonitor;->clock:Lcom/google/firebase/perf/util/Clock;

    iget-object v3, p0, Lcom/google/firebase/perf/application/AppStateMonitor;->transportManager:Lcom/google/firebase/perf/transport/TransportManager;

    invoke-direct {v1, v2, v3, p0, v0}, Lcom/google/firebase/perf/application/FragmentStateMonitor;-><init>(Lcom/google/firebase/perf/util/Clock;Lcom/google/firebase/perf/transport/TransportManager;Lcom/google/firebase/perf/application/AppStateMonitor;Lcom/google/firebase/perf/application/FrameMetricsRecorder;)V

    .line 163
    iget-object v0, p0, Lcom/google/firebase/perf/application/AppStateMonitor;->activityToFragmentStateMonitorMap:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1, v1}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    check-cast p1, Landroidx/fragment/app/FragmentActivity;

    .line 166
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    const/4 v0, 0x1

    .line 167
    invoke-virtual {p1, v1, v0}, Landroidx/fragment/app/FragmentManager;->registerFragmentLifecycleCallbacks(Landroidx/fragment/app/FragmentManager$FragmentLifecycleCallbacks;Z)V

    :cond_0
    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method private updateAppState(Lcom/google/firebase/perf/v1/ApplicationProcessState;)V
    .locals 3

    .line 300
    iput-object p1, p0, Lcom/google/firebase/perf/application/AppStateMonitor;->currentAppState:Lcom/google/firebase/perf/v1/ApplicationProcessState;

    .line 301
    iget-object p1, p0, Lcom/google/firebase/perf/application/AppStateMonitor;->appStateSubscribers:Ljava/util/Set;

    monitor-enter p1

    .line 302
    :try_start_0
    iget-object v0, p0, Lcom/google/firebase/perf/application/AppStateMonitor;->appStateSubscribers:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 303
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 304
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/firebase/perf/application/AppStateMonitor$AppStateCallback;

    if-eqz v1, :cond_0

    .line 306
    iget-object v2, p0, Lcom/google/firebase/perf/application/AppStateMonitor;->currentAppState:Lcom/google/firebase/perf/v1/ApplicationProcessState;

    invoke-interface {v1, v2}, Lcom/google/firebase/perf/application/AppStateMonitor$AppStateCallback;->onUpdateAppState(Lcom/google/firebase/perf/v1/ApplicationProcessState;)V

    goto :goto_0

    .line 310
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 313
    :cond_1
    monitor-exit p1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .array-data 1
    .end array-data
.end method


# virtual methods
.method getActivity2ScreenTrace()Ljava/util/WeakHashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/WeakHashMap<",
            "Landroid/app/Activity;",
            "Lcom/google/firebase/perf/metrics/Trace;",
            ">;"
        }
    .end annotation

    .line 444
    iget-object v0, p0, Lcom/google/firebase/perf/application/AppStateMonitor;->activityToScreenTraceMap:Ljava/util/WeakHashMap;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getAppState()Lcom/google/firebase/perf/v1/ApplicationProcessState;
    .locals 1

    .line 262
    iget-object v0, p0, Lcom/google/firebase/perf/application/AppStateMonitor;->currentAppState:Lcom/google/firebase/perf/v1/ApplicationProcessState;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method getPauseTime()Lcom/google/firebase/perf/util/Timer;
    .locals 1

    .line 449
    iget-object v0, p0, Lcom/google/firebase/perf/application/AppStateMonitor;->stopTime:Lcom/google/firebase/perf/util/Timer;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method getResumeTime()Lcom/google/firebase/perf/util/Timer;
    .locals 1

    .line 459
    iget-object v0, p0, Lcom/google/firebase/perf/application/AppStateMonitor;->resumeTime:Lcom/google/firebase/perf/util/Timer;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method getResumed()Ljava/util/WeakHashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/WeakHashMap<",
            "Landroid/app/Activity;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 439
    iget-object v0, p0, Lcom/google/firebase/perf/application/AppStateMonitor;->activityToResumedMap:Ljava/util/WeakHashMap;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public incrementCount(Ljava/lang/String;J)V
    .locals 5

    .line 141
    iget-object v0, p0, Lcom/google/firebase/perf/application/AppStateMonitor;->metricToCountMap:Ljava/util/Map;

    monitor-enter v0

    .line 142
    :try_start_0
    iget-object v1, p0, Lcom/google/firebase/perf/application/AppStateMonitor;->metricToCountMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    if-nez v1, :cond_0

    .line 144
    iget-object v1, p0, Lcom/google/firebase/perf/application/AppStateMonitor;->metricToCountMap:Ljava/util/Map;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-interface {v1, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 146
    :cond_0
    iget-object v2, p0, Lcom/google/firebase/perf/application/AppStateMonitor;->metricToCountMap:Ljava/util/Map;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    add-long/2addr v3, p2

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-interface {v2, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .array-data 1
    .end array-data
.end method

.method public incrementTsnsCount(I)V
    .locals 1

    .line 152
    iget-object v0, p0, Lcom/google/firebase/perf/application/AppStateMonitor;->tsnsCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    return-void

    .array-data 1
    .end array-data
.end method

.method public isColdStart()Z
    .locals 1

    .line 257
    iget-boolean v0, p0, Lcom/google/firebase/perf/application/AppStateMonitor;->isColdStart:Z

    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public isForeground()Z
    .locals 2

    .line 334
    iget-object v0, p0, Lcom/google/firebase/perf/application/AppStateMonitor;->currentAppState:Lcom/google/firebase/perf/v1/ApplicationProcessState;

    sget-object v1, Lcom/google/firebase/perf/v1/ApplicationProcessState;->FOREGROUND:Lcom/google/firebase/perf/v1/ApplicationProcessState;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .array-data 1
    .end array-data
.end method

.method protected isScreenTraceSupported()Z
    .locals 1

    .line 405
    iget-boolean v0, p0, Lcom/google/firebase/perf/application/AppStateMonitor;->screenPerformanceRecordingSupported:Z

    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    .line 174
    invoke-direct {p0, p1}, Lcom/google/firebase/perf/application/AppStateMonitor;->startFrameMonitoring(Landroid/app/Activity;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .locals 2

    .line 180
    iget-object v0, p0, Lcom/google/firebase/perf/application/AppStateMonitor;->activityToRecorderMap:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    iget-object v0, p0, Lcom/google/firebase/perf/application/AppStateMonitor;->activityToFragmentStateMonitorMap:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 183
    move-object v0, p1

    check-cast v0, Landroidx/fragment/app/FragmentActivity;

    .line 185
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    iget-object v1, p0, Lcom/google/firebase/perf/application/AppStateMonitor;->activityToFragmentStateMonitorMap:Ljava/util/WeakHashMap;

    .line 186
    invoke-virtual {v1, p1}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/fragment/app/FragmentManager$FragmentLifecycleCallbacks;

    invoke-virtual {v0, p1}, Landroidx/fragment/app/FragmentManager;->unregisterFragmentLifecycleCallbacks(Landroidx/fragment/app/FragmentManager$FragmentLifecycleCallbacks;)V

    :cond_0
    return-void

    .array-data 1
    .end array-data
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 0

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public declared-synchronized onActivityResumed(Landroid/app/Activity;)V
    .locals 2

    monitor-enter p0

    .line 233
    :try_start_0
    iget-object v0, p0, Lcom/google/firebase/perf/application/AppStateMonitor;->activityToResumedMap:Ljava/util/WeakHashMap;

    invoke-virtual {v0}, Ljava/util/WeakHashMap;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 235
    iget-object v0, p0, Lcom/google/firebase/perf/application/AppStateMonitor;->clock:Lcom/google/firebase/perf/util/Clock;

    invoke-virtual {v0}, Lcom/google/firebase/perf/util/Clock;->getTime()Lcom/google/firebase/perf/util/Timer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/perf/application/AppStateMonitor;->resumeTime:Lcom/google/firebase/perf/util/Timer;

    .line 236
    iget-object v0, p0, Lcom/google/firebase/perf/application/AppStateMonitor;->activityToResumedMap:Ljava/util/WeakHashMap;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 237
    iget-boolean p1, p0, Lcom/google/firebase/perf/application/AppStateMonitor;->isColdStart:Z

    if-eqz p1, :cond_0

    .line 239
    sget-object p1, Lcom/google/firebase/perf/v1/ApplicationProcessState;->FOREGROUND:Lcom/google/firebase/perf/v1/ApplicationProcessState;

    invoke-direct {p0, p1}, Lcom/google/firebase/perf/application/AppStateMonitor;->updateAppState(Lcom/google/firebase/perf/v1/ApplicationProcessState;)V

    .line 240
    invoke-direct {p0}, Lcom/google/firebase/perf/application/AppStateMonitor;->sendAppColdStartUpdate()V

    const/4 p1, 0x0

    .line 241
    iput-boolean p1, p0, Lcom/google/firebase/perf/application/AppStateMonitor;->isColdStart:Z

    goto :goto_0

    .line 244
    :cond_0
    sget-object p1, Lcom/google/firebase/perf/util/Constants$TraceNames;->BACKGROUND_TRACE_NAME:Lcom/google/firebase/perf/util/Constants$TraceNames;

    invoke-virtual {p1}, Lcom/google/firebase/perf/util/Constants$TraceNames;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/google/firebase/perf/application/AppStateMonitor;->stopTime:Lcom/google/firebase/perf/util/Timer;

    iget-object v1, p0, Lcom/google/firebase/perf/application/AppStateMonitor;->resumeTime:Lcom/google/firebase/perf/util/Timer;

    invoke-direct {p0, p1, v0, v1}, Lcom/google/firebase/perf/application/AppStateMonitor;->sendSessionLog(Ljava/lang/String;Lcom/google/firebase/perf/util/Timer;Lcom/google/firebase/perf/util/Timer;)V

    .line 246
    sget-object p1, Lcom/google/firebase/perf/v1/ApplicationProcessState;->FOREGROUND:Lcom/google/firebase/perf/v1/ApplicationProcessState;

    invoke-direct {p0, p1}, Lcom/google/firebase/perf/application/AppStateMonitor;->updateAppState(Lcom/google/firebase/perf/v1/ApplicationProcessState;)V

    goto :goto_0

    .line 251
    :cond_1
    iget-object v0, p0, Lcom/google/firebase/perf/application/AppStateMonitor;->activityToResumedMap:Ljava/util/WeakHashMap;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 253
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    .array-data 1
    .end array-data
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public declared-synchronized onActivityStarted(Landroid/app/Activity;)V
    .locals 4

    monitor-enter p0

    .line 192
    :try_start_0
    invoke-virtual {p0}, Lcom/google/firebase/perf/application/AppStateMonitor;->isScreenTraceSupported()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/firebase/perf/application/AppStateMonitor;->configResolver:Lcom/google/firebase/perf/config/ConfigResolver;

    invoke-virtual {v0}, Lcom/google/firebase/perf/config/ConfigResolver;->isPerformanceMonitoringEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 193
    iget-object v0, p0, Lcom/google/firebase/perf/application/AppStateMonitor;->activityToRecorderMap:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 196
    invoke-direct {p0, p1}, Lcom/google/firebase/perf/application/AppStateMonitor;->startFrameMonitoring(Landroid/app/Activity;)V

    .line 199
    :cond_0
    iget-object v0, p0, Lcom/google/firebase/perf/application/AppStateMonitor;->activityToRecorderMap:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/perf/application/FrameMetricsRecorder;

    invoke-virtual {v0}, Lcom/google/firebase/perf/application/FrameMetricsRecorder;->start()V

    .line 201
    new-instance v0, Lcom/google/firebase/perf/metrics/Trace;

    invoke-static {p1}, Lcom/google/firebase/perf/application/AppStateMonitor;->getScreenTraceName(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/firebase/perf/application/AppStateMonitor;->transportManager:Lcom/google/firebase/perf/transport/TransportManager;

    iget-object v3, p0, Lcom/google/firebase/perf/application/AppStateMonitor;->clock:Lcom/google/firebase/perf/util/Clock;

    invoke-direct {v0, v1, v2, v3, p0}, Lcom/google/firebase/perf/metrics/Trace;-><init>(Ljava/lang/String;Lcom/google/firebase/perf/transport/TransportManager;Lcom/google/firebase/perf/util/Clock;Lcom/google/firebase/perf/application/AppStateMonitor;)V

    .line 202
    invoke-virtual {v0}, Lcom/google/firebase/perf/metrics/Trace;->start()V

    .line 203
    iget-object v1, p0, Lcom/google/firebase/perf/application/AppStateMonitor;->activityToScreenTraceMap:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 205
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    nop

    .array-data 1
    .end array-data
.end method

.method public declared-synchronized onActivityStopped(Landroid/app/Activity;)V
    .locals 2

    monitor-enter p0

    .line 209
    :try_start_0
    invoke-virtual {p0}, Lcom/google/firebase/perf/application/AppStateMonitor;->isScreenTraceSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 210
    invoke-direct {p0, p1}, Lcom/google/firebase/perf/application/AppStateMonitor;->sendScreenTrace(Landroid/app/Activity;)V

    .line 214
    :cond_0
    iget-object v0, p0, Lcom/google/firebase/perf/application/AppStateMonitor;->activityToResumedMap:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 215
    iget-object v0, p0, Lcom/google/firebase/perf/application/AppStateMonitor;->activityToResumedMap:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 216
    iget-object p1, p0, Lcom/google/firebase/perf/application/AppStateMonitor;->activityToResumedMap:Ljava/util/WeakHashMap;

    invoke-virtual {p1}, Ljava/util/WeakHashMap;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 218
    iget-object p1, p0, Lcom/google/firebase/perf/application/AppStateMonitor;->clock:Lcom/google/firebase/perf/util/Clock;

    invoke-virtual {p1}, Lcom/google/firebase/perf/util/Clock;->getTime()Lcom/google/firebase/perf/util/Timer;

    move-result-object p1

    iput-object p1, p0, Lcom/google/firebase/perf/application/AppStateMonitor;->stopTime:Lcom/google/firebase/perf/util/Timer;

    .line 219
    sget-object p1, Lcom/google/firebase/perf/util/Constants$TraceNames;->FOREGROUND_TRACE_NAME:Lcom/google/firebase/perf/util/Constants$TraceNames;

    invoke-virtual {p1}, Lcom/google/firebase/perf/util/Constants$TraceNames;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/google/firebase/perf/application/AppStateMonitor;->resumeTime:Lcom/google/firebase/perf/util/Timer;

    iget-object v1, p0, Lcom/google/firebase/perf/application/AppStateMonitor;->stopTime:Lcom/google/firebase/perf/util/Timer;

    invoke-direct {p0, p1, v0, v1}, Lcom/google/firebase/perf/application/AppStateMonitor;->sendSessionLog(Ljava/lang/String;Lcom/google/firebase/perf/util/Timer;Lcom/google/firebase/perf/util/Timer;)V

    .line 221
    sget-object p1, Lcom/google/firebase/perf/v1/ApplicationProcessState;->BACKGROUND:Lcom/google/firebase/perf/v1/ApplicationProcessState;

    invoke-direct {p0, p1}, Lcom/google/firebase/perf/application/AppStateMonitor;->updateAppState(Lcom/google/firebase/perf/v1/ApplicationProcessState;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 224
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    .array-data 1
    .end array-data
.end method

.method public declared-synchronized registerActivityLifecycleCallbacks(Landroid/content/Context;)V
    .locals 1

    monitor-enter p0

    .line 116
    :try_start_0
    iget-boolean v0, p0, Lcom/google/firebase/perf/application/AppStateMonitor;->isRegisteredForLifecycleCallbacks:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 117
    monitor-exit p0

    return-void

    .line 119
    :cond_0
    :try_start_1
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    .line 120
    instance-of v0, p1, Landroid/app/Application;

    if-eqz v0, :cond_1

    .line 121
    check-cast p1, Landroid/app/Application;

    invoke-virtual {p1, p0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    const/4 p1, 0x1

    .line 122
    iput-boolean p1, p0, Lcom/google/firebase/perf/application/AppStateMonitor;->isRegisteredForLifecycleCallbacks:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 124
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    .array-data 1
    .end array-data
.end method

.method public registerForAppColdStart(Lcom/google/firebase/perf/application/AppStateMonitor$AppColdStartCallback;)V
    .locals 2

    .line 293
    iget-object v0, p0, Lcom/google/firebase/perf/application/AppStateMonitor;->appColdStartSubscribers:Ljava/util/Set;

    monitor-enter v0

    .line 294
    :try_start_0
    iget-object v1, p0, Lcom/google/firebase/perf/application/AppStateMonitor;->appColdStartSubscribers:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 295
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    nop

    .array-data 1
    .end array-data
.end method

.method public registerForAppState(Ljava/lang/ref/WeakReference;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/google/firebase/perf/application/AppStateMonitor$AppStateCallback;",
            ">;)V"
        }
    .end annotation

    .line 271
    iget-object v0, p0, Lcom/google/firebase/perf/application/AppStateMonitor;->appStateSubscribers:Ljava/util/Set;

    monitor-enter v0

    .line 272
    :try_start_0
    iget-object v1, p0, Lcom/google/firebase/perf/application/AppStateMonitor;->appStateSubscribers:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 273
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    nop

    .array-data 1
    .end array-data
.end method

.method public setIsColdStart(Z)V
    .locals 0

    .line 464
    iput-boolean p1, p0, Lcom/google/firebase/perf/application/AppStateMonitor;->isColdStart:Z

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method setStopTime(Lcom/google/firebase/perf/util/Timer;)V
    .locals 0

    .line 454
    iput-object p1, p0, Lcom/google/firebase/perf/application/AppStateMonitor;->stopTime:Lcom/google/firebase/perf/util/Timer;

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public declared-synchronized unregisterActivityLifecycleCallbacks(Landroid/content/Context;)V
    .locals 1

    monitor-enter p0

    .line 127
    :try_start_0
    iget-boolean v0, p0, Lcom/google/firebase/perf/application/AppStateMonitor;->isRegisteredForLifecycleCallbacks:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 128
    monitor-exit p0

    return-void

    .line 130
    :cond_0
    :try_start_1
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    .line 131
    instance-of v0, p1, Landroid/app/Application;

    if-eqz v0, :cond_1

    .line 132
    check-cast p1, Landroid/app/Application;

    invoke-virtual {p1, p0}, Landroid/app/Application;->unregisterActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    const/4 p1, 0x0

    .line 133
    iput-boolean p1, p0, Lcom/google/firebase/perf/application/AppStateMonitor;->isRegisteredForLifecycleCallbacks:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 135
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    .array-data 1
    .end array-data
.end method

.method public unregisterForAppState(Ljava/lang/ref/WeakReference;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/google/firebase/perf/application/AppStateMonitor$AppStateCallback;",
            ">;)V"
        }
    .end annotation

    .line 282
    iget-object v0, p0, Lcom/google/firebase/perf/application/AppStateMonitor;->appStateSubscribers:Ljava/util/Set;

    monitor-enter v0

    .line 283
    :try_start_0
    iget-object v1, p0, Lcom/google/firebase/perf/application/AppStateMonitor;->appStateSubscribers:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 284
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    nop

    .array-data 1
    .end array-data
.end method
