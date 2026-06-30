.class final Lcom/google/firebase/perf/transport/FlgTransport;
.super Ljava/lang/Object;
.source "FlgTransport.java"


# static fields
.field private static final logger:Lcom/google/firebase/perf/logging/AndroidLogger;


# instance fields
.field private flgTransport:Lcom/google/android/datatransport/Transport;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/datatransport/Transport<",
            "Lcom/google/firebase/perf/v1/PerfMetric;",
            ">;"
        }
    .end annotation
.end field

.field private final flgTransportFactoryProvider:Lcom/google/firebase/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/firebase/inject/Provider<",
            "Lcom/google/android/datatransport/TransportFactory;",
            ">;"
        }
    .end annotation
.end field

.field private final logSourceName:Ljava/lang/String;


# direct methods
.method public static synthetic $r8$lambda$IpmQOS3kUCuCEqG8TA9sVOfOQbU(Lcom/google/firebase/perf/v1/PerfMetric;)[B
    .locals 0

    invoke-virtual {p0}, Lcom/google/protobuf/AbstractMessageLite;->toByteArray()[B

    move-result-object p0

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 30
    invoke-static {}, Lcom/google/firebase/perf/logging/AndroidLogger;->getInstance()Lcom/google/firebase/perf/logging/AndroidLogger;

    move-result-object v0

    sput-object v0, Lcom/google/firebase/perf/transport/FlgTransport;->logger:Lcom/google/firebase/perf/logging/AndroidLogger;

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method constructor <init>(Lcom/google/firebase/inject/Provider;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/inject/Provider<",
            "Lcom/google/android/datatransport/TransportFactory;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p2, p0, Lcom/google/firebase/perf/transport/FlgTransport;->logSourceName:Ljava/lang/String;

    .line 39
    iput-object p1, p0, Lcom/google/firebase/perf/transport/FlgTransport;->flgTransportFactoryProvider:Lcom/google/firebase/inject/Provider;

    return-void

    .array-data 1
    .end array-data
.end method

.method private initializeFlgTransportClient()Z
    .locals 5

    .line 60
    iget-object v0, p0, Lcom/google/firebase/perf/transport/FlgTransport;->flgTransport:Lcom/google/android/datatransport/Transport;

    if-nez v0, :cond_1

    .line 63
    iget-object v0, p0, Lcom/google/firebase/perf/transport/FlgTransport;->flgTransportFactoryProvider:Lcom/google/firebase/inject/Provider;

    invoke-interface {v0}, Lcom/google/firebase/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/datatransport/TransportFactory;

    if-eqz v0, :cond_0

    .line 66
    iget-object v1, p0, Lcom/google/firebase/perf/transport/FlgTransport;->logSourceName:Ljava/lang/String;

    const-class v2, Lcom/google/firebase/perf/v1/PerfMetric;

    const-string v3, "proto"

    .line 68
    invoke-static {v3}, Lcom/google/android/datatransport/Encoding;->of(Ljava/lang/String;)Lcom/google/android/datatransport/Encoding;

    move-result-object v3

    new-instance v4, Lcom/google/firebase/perf/transport/FlgTransport$$ExternalSyntheticLambda0;

    invoke-direct {v4}, Lcom/google/firebase/perf/transport/FlgTransport$$ExternalSyntheticLambda0;-><init>()V

    .line 67
    invoke-interface {v0, v1, v2, v3, v4}, Lcom/google/android/datatransport/TransportFactory;->getTransport(Ljava/lang/String;Ljava/lang/Class;Lcom/google/android/datatransport/Encoding;Lcom/google/android/datatransport/Transformer;)Lcom/google/android/datatransport/Transport;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/perf/transport/FlgTransport;->flgTransport:Lcom/google/android/datatransport/Transport;

    goto :goto_0

    .line 71
    :cond_0
    sget-object v0, Lcom/google/firebase/perf/transport/FlgTransport;->logger:Lcom/google/firebase/perf/logging/AndroidLogger;

    const-string v1, "Flg TransportFactory is not available at the moment"

    invoke-virtual {v0, v1}, Lcom/google/firebase/perf/logging/AndroidLogger;->warn(Ljava/lang/String;)V

    .line 75
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/google/firebase/perf/transport/FlgTransport;->flgTransport:Lcom/google/android/datatransport/Transport;

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    return v0

    nop

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public log(Lcom/google/firebase/perf/v1/PerfMetric;)V
    .locals 1

    .line 51
    invoke-direct {p0}, Lcom/google/firebase/perf/transport/FlgTransport;->initializeFlgTransportClient()Z

    move-result v0

    if-nez v0, :cond_0

    .line 52
    sget-object p1, Lcom/google/firebase/perf/transport/FlgTransport;->logger:Lcom/google/firebase/perf/logging/AndroidLogger;

    const-string v0, "Unable to dispatch event because Flg Transport is not available"

    invoke-virtual {p1, v0}, Lcom/google/firebase/perf/logging/AndroidLogger;->warn(Ljava/lang/String;)V

    return-void

    .line 56
    :cond_0
    iget-object v0, p0, Lcom/google/firebase/perf/transport/FlgTransport;->flgTransport:Lcom/google/android/datatransport/Transport;

    invoke-static {p1}, Lcom/google/android/datatransport/Event;->ofData(Ljava/lang/Object;)Lcom/google/android/datatransport/Event;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/google/android/datatransport/Transport;->send(Lcom/google/android/datatransport/Event;)V

    return-void

    .array-data 1
    .end array-data
.end method
