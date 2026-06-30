.class public final Lcom/google/firebase/perf/FirebasePerformanceInitializer;
.super Ljava/lang/Object;
.source "FirebasePerformanceInitializer.java"

# interfaces
.implements Lcom/google/firebase/perf/application/AppStateMonitor$AppColdStartCallback;


# static fields
.field private static final logger:Lcom/google/firebase/perf/logging/AndroidLogger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 26
    invoke-static {}, Lcom/google/firebase/perf/logging/AndroidLogger;->getInstance()Lcom/google/firebase/perf/logging/AndroidLogger;

    move-result-object v0

    sput-object v0, Lcom/google/firebase/perf/FirebasePerformanceInitializer;->logger:Lcom/google/firebase/perf/logging/AndroidLogger;

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public onAppColdStart()V
    .locals 4

    .line 32
    :try_start_0
    invoke-static {}, Lcom/google/firebase/perf/FirebasePerformance;->getInstance()Lcom/google/firebase/perf/FirebasePerformance;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 34
    sget-object v1, Lcom/google/firebase/perf/FirebasePerformanceInitializer;->logger:Lcom/google/firebase/perf/logging/AndroidLogger;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const-string v0, "FirebaseApp is not initialized. Firebase Performance will not be collecting any performance metrics until initialized. %s"

    invoke-virtual {v1, v0, v2}, Lcom/google/firebase/perf/logging/AndroidLogger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void

    nop

    .array-data 1
    .end array-data
.end method
