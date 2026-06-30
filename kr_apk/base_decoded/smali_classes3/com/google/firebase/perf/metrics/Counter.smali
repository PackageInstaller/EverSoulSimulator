.class public Lcom/google/firebase/perf/metrics/Counter;
.super Ljava/lang/Object;
.source "Counter.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/firebase/perf/metrics/Counter;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final count:Ljava/util/concurrent/atomic/AtomicLong;

.field private final name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 101
    new-instance v0, Lcom/google/firebase/perf/metrics/Counter$1;

    invoke-direct {v0}, Lcom/google/firebase/perf/metrics/Counter$1;-><init>()V

    sput-object v0, Lcom/google/firebase/perf/metrics/Counter;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void

    .array-data 1
    .end array-data
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 3

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/perf/metrics/Counter;->name:Ljava/lang/String;

    .line 44
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Lcom/google/firebase/perf/metrics/Counter;->count:Ljava/util/concurrent/atomic/AtomicLong;

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/google/firebase/perf/metrics/Counter$1;)V
    .locals 0

    .line 27
    invoke-direct {p0, p1}, Lcom/google/firebase/perf/metrics/Counter;-><init>(Landroid/os/Parcel;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/google/firebase/perf/metrics/Counter;->name:Ljava/lang/String;

    .line 39
    new-instance p1, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v0, 0x0

    invoke-direct {p1, v0, v1}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object p1, p0, Lcom/google/firebase/perf/metrics/Counter;->count:Ljava/util/concurrent/atomic/AtomicLong;

    return-void

    nop

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0

    .array-data 1
    .end array-data
.end method

.method getCount()J
    .locals 2

    .line 72
    iget-object v0, p0, Lcom/google/firebase/perf/metrics/Counter;->count:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    return-wide v0

    nop

    .array-data 1
    .end array-data
.end method

.method getName()Ljava/lang/String;
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/google/firebase/perf/metrics/Counter;->name:Ljava/lang/String;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public increment(J)V
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/google/firebase/perf/metrics/Counter;->count:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    return-void

    .array-data 1
    .end array-data
.end method

.method setCount(J)V
    .locals 1

    .line 81
    iget-object v0, p0, Lcom/google/firebase/perf/metrics/Counter;->count:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    return-void

    .array-data 1
    .end array-data
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 92
    iget-object p2, p0, Lcom/google/firebase/perf/metrics/Counter;->name:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 93
    iget-object p2, p0, Lcom/google/firebase/perf/metrics/Counter;->count:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    return-void

    nop

    .array-data 1
    .end array-data
.end method
