.class public Lcom/google/firebase/perf/FirebasePerfRegistrar;
.super Ljava/lang/Object;
.source "FirebasePerfRegistrar.java"

# interfaces
.implements Lcom/google/firebase/components/ComponentRegistrar;


# static fields
.field private static final EARLY_LIBRARY_NAME:Ljava/lang/String; = "fire-perf-early"

.field private static final LIBRARY_NAME:Ljava/lang/String; = "fire-perf"


# direct methods
.method public static synthetic $r8$lambda$KRnVpK71_7G8lWS3im0tUzYqME4(Lcom/google/firebase/components/ComponentContainer;)Lcom/google/firebase/perf/FirebasePerformance;
    .locals 0

    invoke-static {p0}, Lcom/google/firebase/perf/FirebasePerfRegistrar;->providesFirebasePerformance(Lcom/google/firebase/components/ComponentContainer;)Lcom/google/firebase/perf/FirebasePerformance;

    move-result-object p0

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void

    .array-data 1
    .end array-data
.end method

.method static synthetic lambda$getComponents$0(Lcom/google/firebase/components/Qualified;Lcom/google/firebase/components/ComponentContainer;)Lcom/google/firebase/perf/FirebasePerfEarly;
    .locals 3

    .line 72
    new-instance v0, Lcom/google/firebase/perf/FirebasePerfEarly;

    const-class v1, Lcom/google/firebase/FirebaseApp;

    .line 73
    invoke-interface {p1, v1}, Lcom/google/firebase/components/ComponentContainer;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/firebase/FirebaseApp;

    const-class v2, Lcom/google/firebase/StartupTime;

    .line 74
    invoke-interface {p1, v2}, Lcom/google/firebase/components/ComponentContainer;->getProvider(Ljava/lang/Class;)Lcom/google/firebase/inject/Provider;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/firebase/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/firebase/StartupTime;

    .line 75
    invoke-interface {p1, p0}, Lcom/google/firebase/components/ComponentContainer;->get(Lcom/google/firebase/components/Qualified;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/concurrent/Executor;

    invoke-direct {v0, v1, v2, p0}, Lcom/google/firebase/perf/FirebasePerfEarly;-><init>(Lcom/google/firebase/FirebaseApp;Lcom/google/firebase/StartupTime;Ljava/util/concurrent/Executor;)V

    return-object v0

    .array-data 1
    .end array-data
.end method

.method private static providesFirebasePerformance(Lcom/google/firebase/components/ComponentContainer;)Lcom/google/firebase/perf/FirebasePerformance;
    .locals 6

    .line 89
    const-class v0, Lcom/google/firebase/perf/FirebasePerfEarly;

    invoke-interface {p0, v0}, Lcom/google/firebase/components/ComponentContainer;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 91
    invoke-static {}, Lcom/google/firebase/perf/injection/components/DaggerFirebasePerformanceComponent;->builder()Lcom/google/firebase/perf/injection/components/DaggerFirebasePerformanceComponent$Builder;

    move-result-object v0

    new-instance v1, Lcom/google/firebase/perf/injection/modules/FirebasePerformanceModule;

    const-class v2, Lcom/google/firebase/FirebaseApp;

    .line 94
    invoke-interface {p0, v2}, Lcom/google/firebase/components/ComponentContainer;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/firebase/FirebaseApp;

    const-class v3, Lcom/google/firebase/installations/FirebaseInstallationsApi;

    .line 95
    invoke-interface {p0, v3}, Lcom/google/firebase/components/ComponentContainer;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/firebase/installations/FirebaseInstallationsApi;

    const-class v4, Lcom/google/firebase/remoteconfig/RemoteConfigComponent;

    .line 96
    invoke-interface {p0, v4}, Lcom/google/firebase/components/ComponentContainer;->getProvider(Ljava/lang/Class;)Lcom/google/firebase/inject/Provider;

    move-result-object v4

    const-class v5, Lcom/google/android/datatransport/TransportFactory;

    .line 97
    invoke-interface {p0, v5}, Lcom/google/firebase/components/ComponentContainer;->getProvider(Ljava/lang/Class;)Lcom/google/firebase/inject/Provider;

    move-result-object p0

    invoke-direct {v1, v2, v3, v4, p0}, Lcom/google/firebase/perf/injection/modules/FirebasePerformanceModule;-><init>(Lcom/google/firebase/FirebaseApp;Lcom/google/firebase/installations/FirebaseInstallationsApi;Lcom/google/firebase/inject/Provider;Lcom/google/firebase/inject/Provider;)V

    .line 92
    invoke-virtual {v0, v1}, Lcom/google/firebase/perf/injection/components/DaggerFirebasePerformanceComponent$Builder;->firebasePerformanceModule(Lcom/google/firebase/perf/injection/modules/FirebasePerformanceModule;)Lcom/google/firebase/perf/injection/components/DaggerFirebasePerformanceComponent$Builder;

    move-result-object p0

    .line 98
    invoke-virtual {p0}, Lcom/google/firebase/perf/injection/components/DaggerFirebasePerformanceComponent$Builder;->build()Lcom/google/firebase/perf/injection/components/FirebasePerformanceComponent;

    move-result-object p0

    .line 100
    invoke-interface {p0}, Lcom/google/firebase/perf/injection/components/FirebasePerformanceComponent;->getFirebasePerformance()Lcom/google/firebase/perf/FirebasePerformance;

    move-result-object p0

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public getComponents()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/firebase/components/Component<",
            "*>;>;"
        }
    .end annotation

    .line 53
    const-class v0, Lcom/google/firebase/annotations/concurrent/UiThread;

    const-class v1, Ljava/util/concurrent/Executor;

    invoke-static {v0, v1}, Lcom/google/firebase/components/Qualified;->qualified(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/firebase/components/Qualified;

    move-result-object v0

    const/4 v1, 0x3

    new-array v1, v1, [Lcom/google/firebase/components/Component;

    .line 54
    const-class v2, Lcom/google/firebase/perf/FirebasePerformance;

    .line 55
    invoke-static {v2}, Lcom/google/firebase/components/Component;->builder(Ljava/lang/Class;)Lcom/google/firebase/components/Component$Builder;

    move-result-object v2

    const-string v3, "fire-perf"

    .line 56
    invoke-virtual {v2, v3}, Lcom/google/firebase/components/Component$Builder;->name(Ljava/lang/String;)Lcom/google/firebase/components/Component$Builder;

    move-result-object v2

    const-class v4, Lcom/google/firebase/FirebaseApp;

    .line 57
    invoke-static {v4}, Lcom/google/firebase/components/Dependency;->required(Ljava/lang/Class;)Lcom/google/firebase/components/Dependency;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/google/firebase/components/Component$Builder;->add(Lcom/google/firebase/components/Dependency;)Lcom/google/firebase/components/Component$Builder;

    move-result-object v2

    const-class v4, Lcom/google/firebase/remoteconfig/RemoteConfigComponent;

    .line 58
    invoke-static {v4}, Lcom/google/firebase/components/Dependency;->requiredProvider(Ljava/lang/Class;)Lcom/google/firebase/components/Dependency;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/google/firebase/components/Component$Builder;->add(Lcom/google/firebase/components/Dependency;)Lcom/google/firebase/components/Component$Builder;

    move-result-object v2

    const-class v4, Lcom/google/firebase/installations/FirebaseInstallationsApi;

    .line 59
    invoke-static {v4}, Lcom/google/firebase/components/Dependency;->required(Ljava/lang/Class;)Lcom/google/firebase/components/Dependency;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/google/firebase/components/Component$Builder;->add(Lcom/google/firebase/components/Dependency;)Lcom/google/firebase/components/Component$Builder;

    move-result-object v2

    const-class v4, Lcom/google/android/datatransport/TransportFactory;

    .line 60
    invoke-static {v4}, Lcom/google/firebase/components/Dependency;->requiredProvider(Ljava/lang/Class;)Lcom/google/firebase/components/Dependency;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/google/firebase/components/Component$Builder;->add(Lcom/google/firebase/components/Dependency;)Lcom/google/firebase/components/Component$Builder;

    move-result-object v2

    const-class v4, Lcom/google/firebase/perf/FirebasePerfEarly;

    .line 61
    invoke-static {v4}, Lcom/google/firebase/components/Dependency;->required(Ljava/lang/Class;)Lcom/google/firebase/components/Dependency;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/google/firebase/components/Component$Builder;->add(Lcom/google/firebase/components/Dependency;)Lcom/google/firebase/components/Component$Builder;

    move-result-object v2

    new-instance v4, Lcom/google/firebase/perf/FirebasePerfRegistrar$$ExternalSyntheticLambda0;

    invoke-direct {v4}, Lcom/google/firebase/perf/FirebasePerfRegistrar$$ExternalSyntheticLambda0;-><init>()V

    .line 62
    invoke-virtual {v2, v4}, Lcom/google/firebase/components/Component$Builder;->factory(Lcom/google/firebase/components/ComponentFactory;)Lcom/google/firebase/components/Component$Builder;

    move-result-object v2

    .line 63
    invoke-virtual {v2}, Lcom/google/firebase/components/Component$Builder;->build()Lcom/google/firebase/components/Component;

    move-result-object v2

    const/4 v4, 0x0

    aput-object v2, v1, v4

    const-class v2, Lcom/google/firebase/perf/FirebasePerfEarly;

    .line 64
    invoke-static {v2}, Lcom/google/firebase/components/Component;->builder(Ljava/lang/Class;)Lcom/google/firebase/components/Component$Builder;

    move-result-object v2

    const-string v4, "fire-perf-early"

    .line 65
    invoke-virtual {v2, v4}, Lcom/google/firebase/components/Component$Builder;->name(Ljava/lang/String;)Lcom/google/firebase/components/Component$Builder;

    move-result-object v2

    const-class v4, Lcom/google/firebase/FirebaseApp;

    .line 66
    invoke-static {v4}, Lcom/google/firebase/components/Dependency;->required(Ljava/lang/Class;)Lcom/google/firebase/components/Dependency;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/google/firebase/components/Component$Builder;->add(Lcom/google/firebase/components/Dependency;)Lcom/google/firebase/components/Component$Builder;

    move-result-object v2

    const-class v4, Lcom/google/firebase/StartupTime;

    .line 67
    invoke-static {v4}, Lcom/google/firebase/components/Dependency;->optionalProvider(Ljava/lang/Class;)Lcom/google/firebase/components/Dependency;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/google/firebase/components/Component$Builder;->add(Lcom/google/firebase/components/Dependency;)Lcom/google/firebase/components/Component$Builder;

    move-result-object v2

    .line 68
    invoke-static {v0}, Lcom/google/firebase/components/Dependency;->required(Lcom/google/firebase/components/Qualified;)Lcom/google/firebase/components/Dependency;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/google/firebase/components/Component$Builder;->add(Lcom/google/firebase/components/Dependency;)Lcom/google/firebase/components/Component$Builder;

    move-result-object v2

    .line 69
    invoke-virtual {v2}, Lcom/google/firebase/components/Component$Builder;->eagerInDefaultApp()Lcom/google/firebase/components/Component$Builder;

    move-result-object v2

    new-instance v4, Lcom/google/firebase/perf/FirebasePerfRegistrar$$ExternalSyntheticLambda1;

    invoke-direct {v4, v0}, Lcom/google/firebase/perf/FirebasePerfRegistrar$$ExternalSyntheticLambda1;-><init>(Lcom/google/firebase/components/Qualified;)V

    .line 70
    invoke-virtual {v2, v4}, Lcom/google/firebase/components/Component$Builder;->factory(Lcom/google/firebase/components/ComponentFactory;)Lcom/google/firebase/components/Component$Builder;

    move-result-object v0

    .line 76
    invoke-virtual {v0}, Lcom/google/firebase/components/Component$Builder;->build()Lcom/google/firebase/components/Component;

    move-result-object v0

    const/4 v2, 0x1

    aput-object v0, v1, v2

    const-string v0, "21.0.2"

    .line 84
    invoke-static {v3, v0}, Lcom/google/firebase/platforminfo/LibraryVersionComponent;->create(Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/components/Component;

    move-result-object v0

    const/4 v2, 0x2

    aput-object v0, v1, v2

    .line 54
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method
