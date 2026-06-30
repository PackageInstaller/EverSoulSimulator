.class public Lcom/google/firebase/perf/util/Timer;
.super Ljava/lang/Object;
.source "Timer.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/firebase/perf/util/Timer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private elapsedRealtimeMicros:J

.field private wallClockMicros:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 177
    new-instance v0, Lcom/google/firebase/perf/util/Timer$1;

    invoke-direct {v0}, Lcom/google/firebase/perf/util/Timer$1;-><init>()V

    sput-object v0, Lcom/google/firebase/perf/util/Timer;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void

    .array-data 1
    .end array-data
.end method

.method public constructor <init>()V
    .locals 4

    .line 84
    invoke-static {}, Lcom/google/firebase/perf/util/Timer;->wallClockMicros()J

    move-result-wide v0

    invoke-static {}, Lcom/google/firebase/perf/util/Timer;->elapsedRealtimeMicros()J

    move-result-wide v2

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/google/firebase/perf/util/Timer;-><init>(JJ)V

    return-void

    .array-data 1
    .end array-data
.end method

.method public constructor <init>(J)V
    .locals 0

    .line 108
    invoke-direct {p0, p1, p2, p1, p2}, Lcom/google/firebase/perf/util/Timer;-><init>(JJ)V

    return-void

    .array-data 1
    .end array-data
.end method

.method constructor <init>(JJ)V
    .locals 0

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    iput-wide p1, p0, Lcom/google/firebase/perf/util/Timer;->wallClockMicros:J

    .line 97
    iput-wide p3, p0, Lcom/google/firebase/perf/util/Timer;->elapsedRealtimeMicros:J

    return-void

    .array-data 1
    .end array-data
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 4

    .line 112
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/google/firebase/perf/util/Timer;-><init>(JJ)V

    return-void

    .array-data 1
    .end array-data
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/google/firebase/perf/util/Timer$1;)V
    .locals 0

    .line 33
    invoke-direct {p0, p1}, Lcom/google/firebase/perf/util/Timer;-><init>(Landroid/os/Parcel;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method private static elapsedRealtimeMicros()J
    .locals 3

    .line 76
    sget-object v0, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMicros(J)J

    move-result-wide v0

    return-wide v0

    nop

    .array-data 1
    .end array-data
.end method

.method public static ofElapsedRealtime(J)Lcom/google/firebase/perf/util/Timer;
    .locals 4

    .line 55
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, p0, p1}, Ljava/util/concurrent/TimeUnit;->toMicros(J)J

    move-result-wide p0

    .line 56
    invoke-static {}, Lcom/google/firebase/perf/util/Timer;->wallClockMicros()J

    move-result-wide v0

    invoke-static {}, Lcom/google/firebase/perf/util/Timer;->elapsedRealtimeMicros()J

    move-result-wide v2

    sub-long v2, p0, v2

    add-long/2addr v0, v2

    .line 57
    new-instance v2, Lcom/google/firebase/perf/util/Timer;

    invoke-direct {v2, v0, v1, p0, p1}, Lcom/google/firebase/perf/util/Timer;-><init>(JJ)V

    return-object v2

    nop

    .array-data 1
    .end array-data
.end method

.method private static wallClockMicros()J
    .locals 3

    .line 66
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMicros(J)J

    move-result-wide v0

    return-wide v0

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

.method public getCurrentTimestampMicros()J
    .locals 4

    .line 157
    iget-wide v0, p0, Lcom/google/firebase/perf/util/Timer;->wallClockMicros:J

    invoke-virtual {p0}, Lcom/google/firebase/perf/util/Timer;->getDurationMicros()J

    move-result-wide v2

    add-long/2addr v0, v2

    return-wide v0

    .array-data 1
    .end array-data
.end method

.method public getDurationMicros()J
    .locals 2

    .line 135
    new-instance v0, Lcom/google/firebase/perf/util/Timer;

    invoke-direct {v0}, Lcom/google/firebase/perf/util/Timer;-><init>()V

    invoke-virtual {p0, v0}, Lcom/google/firebase/perf/util/Timer;->getDurationMicros(Lcom/google/firebase/perf/util/Timer;)J

    move-result-wide v0

    return-wide v0

    .array-data 1
    .end array-data
.end method

.method public getDurationMicros(Lcom/google/firebase/perf/util/Timer;)J
    .locals 4

    .line 145
    iget-wide v0, p1, Lcom/google/firebase/perf/util/Timer;->elapsedRealtimeMicros:J

    iget-wide v2, p0, Lcom/google/firebase/perf/util/Timer;->elapsedRealtimeMicros:J

    sub-long/2addr v0, v2

    return-wide v0

    .array-data 1
    .end array-data
.end method

.method public getMicros()J
    .locals 2

    .line 124
    iget-wide v0, p0, Lcom/google/firebase/perf/util/Timer;->wallClockMicros:J

    return-wide v0

    nop

    .array-data 1
    .end array-data
.end method

.method public reset()V
    .locals 2

    .line 118
    invoke-static {}, Lcom/google/firebase/perf/util/Timer;->wallClockMicros()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/firebase/perf/util/Timer;->wallClockMicros:J

    .line 119
    invoke-static {}, Lcom/google/firebase/perf/util/Timer;->elapsedRealtimeMicros()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/firebase/perf/util/Timer;->elapsedRealtimeMicros:J

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 168
    iget-wide v0, p0, Lcom/google/firebase/perf/util/Timer;->wallClockMicros:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 169
    iget-wide v0, p0, Lcom/google/firebase/perf/util/Timer;->elapsedRealtimeMicros:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    return-void

    nop

    .array-data 1
    .end array-data
.end method
