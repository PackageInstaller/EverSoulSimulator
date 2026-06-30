.class public final Lcom/google/firebase/perf/v1/CpuMetricReading$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "CpuMetricReading.java"

# interfaces
.implements Lcom/google/firebase/perf/v1/CpuMetricReadingOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/perf/v1/CpuMetricReading;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/google/firebase/perf/v1/CpuMetricReading;",
        "Lcom/google/firebase/perf/v1/CpuMetricReading$Builder;",
        ">;",
        "Lcom/google/firebase/perf/v1/CpuMetricReadingOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 279
    invoke-static {}, Lcom/google/firebase/perf/v1/CpuMetricReading;->access$000()Lcom/google/firebase/perf/v1/CpuMetricReading;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method synthetic constructor <init>(Lcom/google/firebase/perf/v1/CpuMetricReading$1;)V
    .locals 0

    .line 272
    invoke-direct {p0}, Lcom/google/firebase/perf/v1/CpuMetricReading$Builder;-><init>()V

    return-void

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public clearClientTimeUs()Lcom/google/firebase/perf/v1/CpuMetricReading$Builder;
    .locals 1

    .line 334
    invoke-virtual {p0}, Lcom/google/firebase/perf/v1/CpuMetricReading$Builder;->copyOnWrite()V

    .line 335
    iget-object v0, p0, Lcom/google/firebase/perf/v1/CpuMetricReading$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/perf/v1/CpuMetricReading;

    invoke-static {v0}, Lcom/google/firebase/perf/v1/CpuMetricReading;->access$200(Lcom/google/firebase/perf/v1/CpuMetricReading;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public clearSystemTimeUs()Lcom/google/firebase/perf/v1/CpuMetricReading$Builder;
    .locals 1

    .line 438
    invoke-virtual {p0}, Lcom/google/firebase/perf/v1/CpuMetricReading$Builder;->copyOnWrite()V

    .line 439
    iget-object v0, p0, Lcom/google/firebase/perf/v1/CpuMetricReading$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/perf/v1/CpuMetricReading;

    invoke-static {v0}, Lcom/google/firebase/perf/v1/CpuMetricReading;->access$600(Lcom/google/firebase/perf/v1/CpuMetricReading;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public clearUserTimeUs()Lcom/google/firebase/perf/v1/CpuMetricReading$Builder;
    .locals 1

    .line 386
    invoke-virtual {p0}, Lcom/google/firebase/perf/v1/CpuMetricReading$Builder;->copyOnWrite()V

    .line 387
    iget-object v0, p0, Lcom/google/firebase/perf/v1/CpuMetricReading$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/perf/v1/CpuMetricReading;

    invoke-static {v0}, Lcom/google/firebase/perf/v1/CpuMetricReading;->access$400(Lcom/google/firebase/perf/v1/CpuMetricReading;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public getClientTimeUs()J
    .locals 2

    .line 307
    iget-object v0, p0, Lcom/google/firebase/perf/v1/CpuMetricReading$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/perf/v1/CpuMetricReading;

    invoke-virtual {v0}, Lcom/google/firebase/perf/v1/CpuMetricReading;->getClientTimeUs()J

    move-result-wide v0

    return-wide v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getSystemTimeUs()J
    .locals 2

    .line 413
    iget-object v0, p0, Lcom/google/firebase/perf/v1/CpuMetricReading$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/perf/v1/CpuMetricReading;

    invoke-virtual {v0}, Lcom/google/firebase/perf/v1/CpuMetricReading;->getSystemTimeUs()J

    move-result-wide v0

    return-wide v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getUserTimeUs()J
    .locals 2

    .line 361
    iget-object v0, p0, Lcom/google/firebase/perf/v1/CpuMetricReading$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/perf/v1/CpuMetricReading;

    invoke-virtual {v0}, Lcom/google/firebase/perf/v1/CpuMetricReading;->getUserTimeUs()J

    move-result-wide v0

    return-wide v0

    nop

    .array-data 1
    .end array-data
.end method

.method public hasClientTimeUs()Z
    .locals 1

    .line 294
    iget-object v0, p0, Lcom/google/firebase/perf/v1/CpuMetricReading$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/perf/v1/CpuMetricReading;

    invoke-virtual {v0}, Lcom/google/firebase/perf/v1/CpuMetricReading;->hasClientTimeUs()Z

    move-result v0

    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public hasSystemTimeUs()Z
    .locals 1

    .line 401
    iget-object v0, p0, Lcom/google/firebase/perf/v1/CpuMetricReading$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/perf/v1/CpuMetricReading;

    invoke-virtual {v0}, Lcom/google/firebase/perf/v1/CpuMetricReading;->hasSystemTimeUs()Z

    move-result v0

    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public hasUserTimeUs()Z
    .locals 1

    .line 349
    iget-object v0, p0, Lcom/google/firebase/perf/v1/CpuMetricReading$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/perf/v1/CpuMetricReading;

    invoke-virtual {v0}, Lcom/google/firebase/perf/v1/CpuMetricReading;->hasUserTimeUs()Z

    move-result v0

    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public setClientTimeUs(J)Lcom/google/firebase/perf/v1/CpuMetricReading$Builder;
    .locals 1

    .line 320
    invoke-virtual {p0}, Lcom/google/firebase/perf/v1/CpuMetricReading$Builder;->copyOnWrite()V

    .line 321
    iget-object v0, p0, Lcom/google/firebase/perf/v1/CpuMetricReading$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/perf/v1/CpuMetricReading;

    invoke-static {v0, p1, p2}, Lcom/google/firebase/perf/v1/CpuMetricReading;->access$100(Lcom/google/firebase/perf/v1/CpuMetricReading;J)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public setSystemTimeUs(J)Lcom/google/firebase/perf/v1/CpuMetricReading$Builder;
    .locals 1

    .line 425
    invoke-virtual {p0}, Lcom/google/firebase/perf/v1/CpuMetricReading$Builder;->copyOnWrite()V

    .line 426
    iget-object v0, p0, Lcom/google/firebase/perf/v1/CpuMetricReading$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/perf/v1/CpuMetricReading;

    invoke-static {v0, p1, p2}, Lcom/google/firebase/perf/v1/CpuMetricReading;->access$500(Lcom/google/firebase/perf/v1/CpuMetricReading;J)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public setUserTimeUs(J)Lcom/google/firebase/perf/v1/CpuMetricReading$Builder;
    .locals 1

    .line 373
    invoke-virtual {p0}, Lcom/google/firebase/perf/v1/CpuMetricReading$Builder;->copyOnWrite()V

    .line 374
    iget-object v0, p0, Lcom/google/firebase/perf/v1/CpuMetricReading$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/perf/v1/CpuMetricReading;

    invoke-static {v0, p1, p2}, Lcom/google/firebase/perf/v1/CpuMetricReading;->access$300(Lcom/google/firebase/perf/v1/CpuMetricReading;J)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method
