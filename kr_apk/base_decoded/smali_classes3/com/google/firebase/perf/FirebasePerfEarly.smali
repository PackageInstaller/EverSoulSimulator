.class public Lcom/google/firebase/perf/FirebasePerfEarly;
.super Ljava/lang/Object;
.source "FirebasePerfEarly.java"


# direct methods
.method public constructor <init>(Lcom/google/firebase/FirebaseApp;Lcom/google/firebase/StartupTime;Ljava/util/concurrent/Executor;)V
    .locals 2

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    invoke-virtual {p1}, Lcom/google/firebase/FirebaseApp;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    .line 41
    invoke-static {}, Lcom/google/firebase/perf/config/ConfigResolver;->getInstance()Lcom/google/firebase/perf/config/ConfigResolver;

    move-result-object v0

    .line 42
    invoke-virtual {v0, p1}, Lcom/google/firebase/perf/config/ConfigResolver;->setApplicationContext(Landroid/content/Context;)V

    .line 44
    invoke-static {}, Lcom/google/firebase/perf/application/AppStateMonitor;->getInstance()Lcom/google/firebase/perf/application/AppStateMonitor;

    move-result-object v0

    .line 45
    invoke-virtual {v0, p1}, Lcom/google/firebase/perf/application/AppStateMonitor;->registerActivityLifecycleCallbacks(Landroid/content/Context;)V

    .line 46
    new-instance v1, Lcom/google/firebase/perf/FirebasePerformanceInitializer;

    invoke-direct {v1}, Lcom/google/firebase/perf/FirebasePerformanceInitializer;-><init>()V

    invoke-virtual {v0, v1}, Lcom/google/firebase/perf/application/AppStateMonitor;->registerForAppColdStart(Lcom/google/firebase/perf/application/AppStateMonitor$AppColdStartCallback;)V

    if-eqz p2, :cond_0

    .line 49
    invoke-static {}, Lcom/google/firebase/perf/metrics/AppStartTrace;->getInstance()Lcom/google/firebase/perf/metrics/AppStartTrace;

    move-result-object p2

    .line 50
    invoke-virtual {p2, p1}, Lcom/google/firebase/perf/metrics/AppStartTrace;->registerActivityLifecycleCallbacks(Landroid/content/Context;)V

    .line 51
    new-instance p1, Lcom/google/firebase/perf/metrics/AppStartTrace$StartFromBackgroundRunnable;

    invoke-direct {p1, p2}, Lcom/google/firebase/perf/metrics/AppStartTrace$StartFromBackgroundRunnable;-><init>(Lcom/google/firebase/perf/metrics/AppStartTrace;)V

    invoke-interface {p3, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 60
    :cond_0
    invoke-static {}, Lcom/google/firebase/perf/session/SessionManager;->getInstance()Lcom/google/firebase/perf/session/SessionManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/firebase/perf/session/SessionManager;->initializeGaugeCollection()V

    return-void

    .array-data 1
    .end array-data
.end method
