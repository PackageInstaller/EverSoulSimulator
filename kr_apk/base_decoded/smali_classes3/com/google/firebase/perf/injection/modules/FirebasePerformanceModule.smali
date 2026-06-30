.class public Lcom/google/firebase/perf/injection/modules/FirebasePerformanceModule;
.super Ljava/lang/Object;
.source "FirebasePerformanceModule.java"


# annotations
.annotation runtime Ldagger/Module;
.end annotation


# instance fields
.field private final firebaseApp:Lcom/google/firebase/FirebaseApp;

.field private final firebaseInstallations:Lcom/google/firebase/installations/FirebaseInstallationsApi;

.field private final remoteConfigComponentProvider:Lcom/google/firebase/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/firebase/inject/Provider<",
            "Lcom/google/firebase/remoteconfig/RemoteConfigComponent;",
            ">;"
        }
    .end annotation
.end field

.field private final transportFactoryProvider:Lcom/google/firebase/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/firebase/inject/Provider<",
            "Lcom/google/android/datatransport/TransportFactory;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/firebase/FirebaseApp;Lcom/google/firebase/installations/FirebaseInstallationsApi;Lcom/google/firebase/inject/Provider;Lcom/google/firebase/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/FirebaseApp;",
            "Lcom/google/firebase/installations/FirebaseInstallationsApi;",
            "Lcom/google/firebase/inject/Provider<",
            "Lcom/google/firebase/remoteconfig/RemoteConfigComponent;",
            ">;",
            "Lcom/google/firebase/inject/Provider<",
            "Lcom/google/android/datatransport/TransportFactory;",
            ">;)V"
        }
    .end annotation

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/google/firebase/perf/injection/modules/FirebasePerformanceModule;->firebaseApp:Lcom/google/firebase/FirebaseApp;

    .line 44
    iput-object p2, p0, Lcom/google/firebase/perf/injection/modules/FirebasePerformanceModule;->firebaseInstallations:Lcom/google/firebase/installations/FirebaseInstallationsApi;

    .line 45
    iput-object p3, p0, Lcom/google/firebase/perf/injection/modules/FirebasePerformanceModule;->remoteConfigComponentProvider:Lcom/google/firebase/inject/Provider;

    .line 46
    iput-object p4, p0, Lcom/google/firebase/perf/injection/modules/FirebasePerformanceModule;->transportFactoryProvider:Lcom/google/firebase/inject/Provider;

    return-void

    .array-data 1
    .end array-data
.end method


# virtual methods
.method providesConfigResolver()Lcom/google/firebase/perf/config/ConfigResolver;
    .locals 1
    .annotation runtime Ldagger/Provides;
    .end annotation

    .line 76
    invoke-static {}, Lcom/google/firebase/perf/config/ConfigResolver;->getInstance()Lcom/google/firebase/perf/config/ConfigResolver;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method providesFirebaseApp()Lcom/google/firebase/FirebaseApp;
    .locals 1
    .annotation runtime Ldagger/Provides;
    .end annotation

    .line 51
    iget-object v0, p0, Lcom/google/firebase/perf/injection/modules/FirebasePerformanceModule;->firebaseApp:Lcom/google/firebase/FirebaseApp;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method providesFirebaseInstallations()Lcom/google/firebase/installations/FirebaseInstallationsApi;
    .locals 1
    .annotation runtime Ldagger/Provides;
    .end annotation

    .line 56
    iget-object v0, p0, Lcom/google/firebase/perf/injection/modules/FirebasePerformanceModule;->firebaseInstallations:Lcom/google/firebase/installations/FirebaseInstallationsApi;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method providesRemoteConfigComponent()Lcom/google/firebase/inject/Provider;
    .locals 1
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/firebase/inject/Provider<",
            "Lcom/google/firebase/remoteconfig/RemoteConfigComponent;",
            ">;"
        }
    .end annotation

    .line 61
    iget-object v0, p0, Lcom/google/firebase/perf/injection/modules/FirebasePerformanceModule;->remoteConfigComponentProvider:Lcom/google/firebase/inject/Provider;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method providesRemoteConfigManager()Lcom/google/firebase/perf/config/RemoteConfigManager;
    .locals 1
    .annotation runtime Ldagger/Provides;
    .end annotation

    .line 71
    invoke-static {}, Lcom/google/firebase/perf/config/RemoteConfigManager;->getInstance()Lcom/google/firebase/perf/config/RemoteConfigManager;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method providesSessionManager()Lcom/google/firebase/perf/session/SessionManager;
    .locals 1
    .annotation runtime Ldagger/Provides;
    .end annotation

    .line 81
    invoke-static {}, Lcom/google/firebase/perf/session/SessionManager;->getInstance()Lcom/google/firebase/perf/session/SessionManager;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method providesTransportFactoryProvider()Lcom/google/firebase/inject/Provider;
    .locals 1
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/firebase/inject/Provider<",
            "Lcom/google/android/datatransport/TransportFactory;",
            ">;"
        }
    .end annotation

    .line 66
    iget-object v0, p0, Lcom/google/firebase/perf/injection/modules/FirebasePerformanceModule;->transportFactoryProvider:Lcom/google/firebase/inject/Provider;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method
