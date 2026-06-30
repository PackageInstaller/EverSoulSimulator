.class public Lcom/google/firebase/perf/util/Clock;
.super Ljava/lang/Object;
.source "Clock.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public getTime()Lcom/google/firebase/perf/util/Timer;
    .locals 1

    .line 29
    new-instance v0, Lcom/google/firebase/perf/util/Timer;

    invoke-direct {v0}, Lcom/google/firebase/perf/util/Timer;-><init>()V

    return-object v0

    .array-data 1
    .end array-data
.end method
