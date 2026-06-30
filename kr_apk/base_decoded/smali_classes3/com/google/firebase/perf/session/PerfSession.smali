.class public Lcom/google/firebase/perf/session/PerfSession;
.super Ljava/lang/Object;
.source "PerfSession.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/firebase/perf/session/PerfSession;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final creationTime:Lcom/google/firebase/perf/util/Timer;

.field private isGaugeAndEventCollectionEnabled:Z

.field private final sessionId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 201
    new-instance v0, Lcom/google/firebase/perf/session/PerfSession$1;

    invoke-direct {v0}, Lcom/google/firebase/perf/session/PerfSession$1;-><init>()V

    sput-object v0, Lcom/google/firebase/perf/session/PerfSession;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void

    .array-data 1
    .end array-data
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 35
    iput-boolean v0, p0, Lcom/google/firebase/perf/session/PerfSession;->isGaugeAndEventCollectionEnabled:Z

    .line 57
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/firebase/perf/session/PerfSession;->sessionId:Ljava/lang/String;

    .line 58
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p0, Lcom/google/firebase/perf/session/PerfSession;->isGaugeAndEventCollectionEnabled:Z

    .line 59
    const-class v0, Lcom/google/firebase/perf/util/Timer;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/firebase/perf/util/Timer;

    iput-object p1, p0, Lcom/google/firebase/perf/session/PerfSession;->creationTime:Lcom/google/firebase/perf/util/Timer;

    return-void

    .array-data 1
    .end array-data
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/google/firebase/perf/session/PerfSession$1;)V
    .locals 0

    .line 30
    invoke-direct {p0, p1}, Lcom/google/firebase/perf/session/PerfSession;-><init>(Landroid/os/Parcel;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/google/firebase/perf/util/Clock;)V
    .locals 1

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 35
    iput-boolean v0, p0, Lcom/google/firebase/perf/session/PerfSession;->isGaugeAndEventCollectionEnabled:Z

    .line 51
    iput-object p1, p0, Lcom/google/firebase/perf/session/PerfSession;->sessionId:Ljava/lang/String;

    .line 52
    invoke-virtual {p2}, Lcom/google/firebase/perf/util/Clock;->getTime()Lcom/google/firebase/perf/util/Timer;

    move-result-object p1

    iput-object p1, p0, Lcom/google/firebase/perf/session/PerfSession;->creationTime:Lcom/google/firebase/perf/util/Timer;

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public static buildAndSort(Ljava/util/List;)[Lcom/google/firebase/perf/v1/PerfSession;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/firebase/perf/session/PerfSession;",
            ">;)[",
            "Lcom/google/firebase/perf/v1/PerfSession;"
        }
    .end annotation

    .line 136
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 141
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lcom/google/firebase/perf/v1/PerfSession;

    const/4 v1, 0x0

    .line 142
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/firebase/perf/session/PerfSession;

    invoke-virtual {v2}, Lcom/google/firebase/perf/session/PerfSession;->build()Lcom/google/firebase/perf/v1/PerfSession;

    move-result-object v2

    const/4 v3, 0x1

    move v5, v1

    move v4, v3

    .line 146
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v6

    if-ge v4, v6, :cond_2

    .line 147
    invoke-interface {p0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/firebase/perf/session/PerfSession;

    invoke-virtual {v6}, Lcom/google/firebase/perf/session/PerfSession;->build()Lcom/google/firebase/perf/v1/PerfSession;

    move-result-object v6

    if-nez v5, :cond_1

    .line 149
    invoke-interface {p0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/firebase/perf/session/PerfSession;

    invoke-virtual {v7}, Lcom/google/firebase/perf/session/PerfSession;->isVerbose()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 151
    aput-object v6, v0, v1

    .line 152
    aput-object v2, v0, v4

    move v5, v3

    goto :goto_1

    .line 154
    :cond_1
    aput-object v6, v0, v4

    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    if-nez v5, :cond_3

    .line 159
    aput-object v2, v0, v1

    :cond_3
    return-object v0

    .array-data 1
    .end array-data
.end method

.method public static createWithId(Ljava/lang/String;)Lcom/google/firebase/perf/session/PerfSession;
    .locals 2

    const-string v0, "-"

    const-string v1, ""

    .line 41
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 42
    new-instance v0, Lcom/google/firebase/perf/session/PerfSession;

    new-instance v1, Lcom/google/firebase/perf/util/Clock;

    invoke-direct {v1}, Lcom/google/firebase/perf/util/Clock;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/google/firebase/perf/session/PerfSession;-><init>(Ljava/lang/String;Lcom/google/firebase/perf/util/Clock;)V

    .line 43
    invoke-static {}, Lcom/google/firebase/perf/session/PerfSession;->shouldCollectGaugesAndEvents()Z

    move-result p0

    invoke-virtual {v0, p0}, Lcom/google/firebase/perf/session/PerfSession;->setGaugeAndEventCollectionEnabled(Z)V

    return-object v0

    .array-data 1
    .end array-data
.end method

.method static isVerbose(Lcom/google/firebase/perf/v1/PerfSession;)Z
    .locals 2

    .line 96
    invoke-virtual {p0}, Lcom/google/firebase/perf/v1/PerfSession;->getSessionVerbosityList()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/perf/v1/SessionVerbosity;

    .line 97
    sget-object v1, Lcom/google/firebase/perf/v1/SessionVerbosity;->GAUGES_AND_SYSTEM_EVENTS:Lcom/google/firebase/perf/v1/SessionVerbosity;

    if-ne v0, v1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0

    .array-data 1
    .end array-data
.end method

.method public static shouldCollectGaugesAndEvents()Z
    .locals 5

    .line 167
    invoke-static {}, Lcom/google/firebase/perf/config/ConfigResolver;->getInstance()Lcom/google/firebase/perf/config/ConfigResolver;

    move-result-object v0

    .line 169
    invoke-virtual {v0}, Lcom/google/firebase/perf/config/ConfigResolver;->isPerformanceMonitoringEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 170
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v1

    invoke-virtual {v0}, Lcom/google/firebase/perf/config/ConfigResolver;->getSessionsSamplingRate()D

    move-result-wide v3

    cmpg-double v0, v1, v3

    if-gez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public build()Lcom/google/firebase/perf/v1/PerfSession;
    .locals 2

    .line 117
    invoke-static {}, Lcom/google/firebase/perf/v1/PerfSession;->newBuilder()Lcom/google/firebase/perf/v1/PerfSession$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/firebase/perf/session/PerfSession;->sessionId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/firebase/perf/v1/PerfSession$Builder;->setSessionId(Ljava/lang/String;)Lcom/google/firebase/perf/v1/PerfSession$Builder;

    move-result-object v0

    .line 120
    iget-boolean v1, p0, Lcom/google/firebase/perf/session/PerfSession;->isGaugeAndEventCollectionEnabled:Z

    if-eqz v1, :cond_0

    .line 121
    sget-object v1, Lcom/google/firebase/perf/v1/SessionVerbosity;->GAUGES_AND_SYSTEM_EVENTS:Lcom/google/firebase/perf/v1/SessionVerbosity;

    invoke-virtual {v0, v1}, Lcom/google/firebase/perf/v1/PerfSession$Builder;->addSessionVerbosity(Lcom/google/firebase/perf/v1/SessionVerbosity;)Lcom/google/firebase/perf/v1/PerfSession$Builder;

    .line 123
    :cond_0
    invoke-virtual {v0}, Lcom/google/firebase/perf/v1/PerfSession$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/perf/v1/PerfSession;

    return-object v0

    .array-data 1
    .end array-data
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0

    .array-data 1
    .end array-data
.end method

.method public getTimer()Lcom/google/firebase/perf/util/Timer;
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/google/firebase/perf/session/PerfSession;->creationTime:Lcom/google/firebase/perf/util/Timer;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public isGaugeAndEventCollectionEnabled()Z
    .locals 1

    .line 85
    iget-boolean v0, p0, Lcom/google/firebase/perf/session/PerfSession;->isGaugeAndEventCollectionEnabled:Z

    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public isSessionRunningTooLong()Z
    .locals 4

    .line 110
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MICROSECONDS:Ljava/util/concurrent/TimeUnit;

    iget-object v1, p0, Lcom/google/firebase/perf/session/PerfSession;->creationTime:Lcom/google/firebase/perf/util/Timer;

    invoke-virtual {v1}, Lcom/google/firebase/perf/util/Timer;->getDurationMicros()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMinutes(J)J

    move-result-wide v0

    .line 111
    invoke-static {}, Lcom/google/firebase/perf/config/ConfigResolver;->getInstance()Lcom/google/firebase/perf/config/ConfigResolver;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/firebase/perf/config/ConfigResolver;->getSessionsMaxDurationMinutes()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .array-data 1
    .end array-data
.end method

.method public isVerbose()Z
    .locals 1

    .line 90
    iget-boolean v0, p0, Lcom/google/firebase/perf/session/PerfSession;->isGaugeAndEventCollectionEnabled:Z

    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public sessionId()Ljava/lang/String;
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/google/firebase/perf/session/PerfSession;->sessionId:Ljava/lang/String;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public setGaugeAndEventCollectionEnabled(Z)V
    .locals 0

    .line 78
    iput-boolean p1, p0, Lcom/google/firebase/perf/session/PerfSession;->isGaugeAndEventCollectionEnabled:Z

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .line 192
    iget-object p2, p0, Lcom/google/firebase/perf/session/PerfSession;->sessionId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 193
    iget-boolean p2, p0, Lcom/google/firebase/perf/session/PerfSession;->isGaugeAndEventCollectionEnabled:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 194
    iget-object p2, p0, Lcom/google/firebase/perf/session/PerfSession;->creationTime:Lcom/google/firebase/perf/util/Timer;

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    return-void

    .array-data 1
    .end array-data
.end method
