.class public final Lcom/google/firebase/perf/v1/AndroidMemoryReading$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "AndroidMemoryReading.java"

# interfaces
.implements Lcom/google/firebase/perf/v1/AndroidMemoryReadingOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/perf/v1/AndroidMemoryReading;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/google/firebase/perf/v1/AndroidMemoryReading;",
        "Lcom/google/firebase/perf/v1/AndroidMemoryReading$Builder;",
        ">;",
        "Lcom/google/firebase/perf/v1/AndroidMemoryReadingOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 235
    invoke-static {}, Lcom/google/firebase/perf/v1/AndroidMemoryReading;->access$000()Lcom/google/firebase/perf/v1/AndroidMemoryReading;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method synthetic constructor <init>(Lcom/google/firebase/perf/v1/AndroidMemoryReading$1;)V
    .locals 0

    .line 228
    invoke-direct {p0}, Lcom/google/firebase/perf/v1/AndroidMemoryReading$Builder;-><init>()V

    return-void

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public clearClientTimeUs()Lcom/google/firebase/perf/v1/AndroidMemoryReading$Builder;
    .locals 1

    .line 290
    invoke-virtual {p0}, Lcom/google/firebase/perf/v1/AndroidMemoryReading$Builder;->copyOnWrite()V

    .line 291
    iget-object v0, p0, Lcom/google/firebase/perf/v1/AndroidMemoryReading$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/perf/v1/AndroidMemoryReading;

    invoke-static {v0}, Lcom/google/firebase/perf/v1/AndroidMemoryReading;->access$200(Lcom/google/firebase/perf/v1/AndroidMemoryReading;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public clearUsedAppJavaHeapMemoryKb()Lcom/google/firebase/perf/v1/AndroidMemoryReading$Builder;
    .locals 1

    .line 342
    invoke-virtual {p0}, Lcom/google/firebase/perf/v1/AndroidMemoryReading$Builder;->copyOnWrite()V

    .line 343
    iget-object v0, p0, Lcom/google/firebase/perf/v1/AndroidMemoryReading$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/perf/v1/AndroidMemoryReading;

    invoke-static {v0}, Lcom/google/firebase/perf/v1/AndroidMemoryReading;->access$400(Lcom/google/firebase/perf/v1/AndroidMemoryReading;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public getClientTimeUs()J
    .locals 2

    .line 263
    iget-object v0, p0, Lcom/google/firebase/perf/v1/AndroidMemoryReading$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/perf/v1/AndroidMemoryReading;

    invoke-virtual {v0}, Lcom/google/firebase/perf/v1/AndroidMemoryReading;->getClientTimeUs()J

    move-result-wide v0

    return-wide v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getUsedAppJavaHeapMemoryKb()I
    .locals 1

    .line 317
    iget-object v0, p0, Lcom/google/firebase/perf/v1/AndroidMemoryReading$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/perf/v1/AndroidMemoryReading;

    invoke-virtual {v0}, Lcom/google/firebase/perf/v1/AndroidMemoryReading;->getUsedAppJavaHeapMemoryKb()I

    move-result v0

    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public hasClientTimeUs()Z
    .locals 1

    .line 250
    iget-object v0, p0, Lcom/google/firebase/perf/v1/AndroidMemoryReading$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/perf/v1/AndroidMemoryReading;

    invoke-virtual {v0}, Lcom/google/firebase/perf/v1/AndroidMemoryReading;->hasClientTimeUs()Z

    move-result v0

    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public hasUsedAppJavaHeapMemoryKb()Z
    .locals 1

    .line 305
    iget-object v0, p0, Lcom/google/firebase/perf/v1/AndroidMemoryReading$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/perf/v1/AndroidMemoryReading;

    invoke-virtual {v0}, Lcom/google/firebase/perf/v1/AndroidMemoryReading;->hasUsedAppJavaHeapMemoryKb()Z

    move-result v0

    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public setClientTimeUs(J)Lcom/google/firebase/perf/v1/AndroidMemoryReading$Builder;
    .locals 1

    .line 276
    invoke-virtual {p0}, Lcom/google/firebase/perf/v1/AndroidMemoryReading$Builder;->copyOnWrite()V

    .line 277
    iget-object v0, p0, Lcom/google/firebase/perf/v1/AndroidMemoryReading$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/perf/v1/AndroidMemoryReading;

    invoke-static {v0, p1, p2}, Lcom/google/firebase/perf/v1/AndroidMemoryReading;->access$100(Lcom/google/firebase/perf/v1/AndroidMemoryReading;J)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public setUsedAppJavaHeapMemoryKb(I)Lcom/google/firebase/perf/v1/AndroidMemoryReading$Builder;
    .locals 1

    .line 329
    invoke-virtual {p0}, Lcom/google/firebase/perf/v1/AndroidMemoryReading$Builder;->copyOnWrite()V

    .line 330
    iget-object v0, p0, Lcom/google/firebase/perf/v1/AndroidMemoryReading$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/perf/v1/AndroidMemoryReading;

    invoke-static {v0, p1}, Lcom/google/firebase/perf/v1/AndroidMemoryReading;->access$300(Lcom/google/firebase/perf/v1/AndroidMemoryReading;I)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method
