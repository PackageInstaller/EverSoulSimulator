.class public final Lcom/google/firebase/perf/v1/PerfSession$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "PerfSession.java"

# interfaces
.implements Lcom/google/firebase/perf/v1/PerfSessionOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/perf/v1/PerfSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/google/firebase/perf/v1/PerfSession;",
        "Lcom/google/firebase/perf/v1/PerfSession$Builder;",
        ">;",
        "Lcom/google/firebase/perf/v1/PerfSessionOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 313
    invoke-static {}, Lcom/google/firebase/perf/v1/PerfSession;->access$000()Lcom/google/firebase/perf/v1/PerfSession;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method synthetic constructor <init>(Lcom/google/firebase/perf/v1/PerfSession$1;)V
    .locals 0

    .line 306
    invoke-direct {p0}, Lcom/google/firebase/perf/v1/PerfSession$Builder;-><init>()V

    return-void

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public addAllSessionVerbosity(Ljava/lang/Iterable;)Lcom/google/firebase/perf/v1/PerfSession$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/google/firebase/perf/v1/SessionVerbosity;",
            ">;)",
            "Lcom/google/firebase/perf/v1/PerfSession$Builder;"
        }
    .end annotation

    .line 476
    invoke-virtual {p0}, Lcom/google/firebase/perf/v1/PerfSession$Builder;->copyOnWrite()V

    .line 477
    iget-object v0, p0, Lcom/google/firebase/perf/v1/PerfSession$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/perf/v1/PerfSession;

    invoke-static {v0, p1}, Lcom/google/firebase/perf/v1/PerfSession;->access$600(Lcom/google/firebase/perf/v1/PerfSession;Ljava/lang/Iterable;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public addSessionVerbosity(Lcom/google/firebase/perf/v1/SessionVerbosity;)Lcom/google/firebase/perf/v1/PerfSession$Builder;
    .locals 1

    .line 461
    invoke-virtual {p0}, Lcom/google/firebase/perf/v1/PerfSession$Builder;->copyOnWrite()V

    .line 462
    iget-object v0, p0, Lcom/google/firebase/perf/v1/PerfSession$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/perf/v1/PerfSession;

    invoke-static {v0, p1}, Lcom/google/firebase/perf/v1/PerfSession;->access$500(Lcom/google/firebase/perf/v1/PerfSession;Lcom/google/firebase/perf/v1/SessionVerbosity;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public clearSessionId()Lcom/google/firebase/perf/v1/PerfSession$Builder;
    .locals 1

    .line 378
    invoke-virtual {p0}, Lcom/google/firebase/perf/v1/PerfSession$Builder;->copyOnWrite()V

    .line 379
    iget-object v0, p0, Lcom/google/firebase/perf/v1/PerfSession$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/perf/v1/PerfSession;

    invoke-static {v0}, Lcom/google/firebase/perf/v1/PerfSession;->access$200(Lcom/google/firebase/perf/v1/PerfSession;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public clearSessionVerbosity()Lcom/google/firebase/perf/v1/PerfSession$Builder;
    .locals 1

    .line 488
    invoke-virtual {p0}, Lcom/google/firebase/perf/v1/PerfSession$Builder;->copyOnWrite()V

    .line 489
    iget-object v0, p0, Lcom/google/firebase/perf/v1/PerfSession$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/perf/v1/PerfSession;

    invoke-static {v0}, Lcom/google/firebase/perf/v1/PerfSession;->access$700(Lcom/google/firebase/perf/v1/PerfSession;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public getSessionId()Ljava/lang/String;
    .locals 1

    .line 339
    iget-object v0, p0, Lcom/google/firebase/perf/v1/PerfSession$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/perf/v1/PerfSession;

    invoke-virtual {v0}, Lcom/google/firebase/perf/v1/PerfSession;->getSessionId()Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getSessionIdBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 352
    iget-object v0, p0, Lcom/google/firebase/perf/v1/PerfSession$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/perf/v1/PerfSession;

    invoke-virtual {v0}, Lcom/google/firebase/perf/v1/PerfSession;->getSessionIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getSessionVerbosity(I)Lcom/google/firebase/perf/v1/SessionVerbosity;
    .locals 1

    .line 433
    iget-object v0, p0, Lcom/google/firebase/perf/v1/PerfSession$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/perf/v1/PerfSession;

    invoke-virtual {v0, p1}, Lcom/google/firebase/perf/v1/PerfSession;->getSessionVerbosity(I)Lcom/google/firebase/perf/v1/SessionVerbosity;

    move-result-object p1

    return-object p1

    nop

    .array-data 1
    .end array-data
.end method

.method public getSessionVerbosityCount()I
    .locals 1

    .line 420
    iget-object v0, p0, Lcom/google/firebase/perf/v1/PerfSession$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/perf/v1/PerfSession;

    invoke-virtual {v0}, Lcom/google/firebase/perf/v1/PerfSession;->getSessionVerbosityCount()I

    move-result v0

    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getSessionVerbosityList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/firebase/perf/v1/SessionVerbosity;",
            ">;"
        }
    .end annotation

    .line 408
    iget-object v0, p0, Lcom/google/firebase/perf/v1/PerfSession$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/perf/v1/PerfSession;

    invoke-virtual {v0}, Lcom/google/firebase/perf/v1/PerfSession;->getSessionVerbosityList()Ljava/util/List;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public hasSessionId()Z
    .locals 1

    .line 327
    iget-object v0, p0, Lcom/google/firebase/perf/v1/PerfSession$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/perf/v1/PerfSession;

    invoke-virtual {v0}, Lcom/google/firebase/perf/v1/PerfSession;->hasSessionId()Z

    move-result v0

    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public setSessionId(Ljava/lang/String;)Lcom/google/firebase/perf/v1/PerfSession$Builder;
    .locals 1

    .line 365
    invoke-virtual {p0}, Lcom/google/firebase/perf/v1/PerfSession$Builder;->copyOnWrite()V

    .line 366
    iget-object v0, p0, Lcom/google/firebase/perf/v1/PerfSession$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/perf/v1/PerfSession;

    invoke-static {v0, p1}, Lcom/google/firebase/perf/v1/PerfSession;->access$100(Lcom/google/firebase/perf/v1/PerfSession;Ljava/lang/String;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public setSessionIdBytes(Lcom/google/protobuf/ByteString;)Lcom/google/firebase/perf/v1/PerfSession$Builder;
    .locals 1

    .line 393
    invoke-virtual {p0}, Lcom/google/firebase/perf/v1/PerfSession$Builder;->copyOnWrite()V

    .line 394
    iget-object v0, p0, Lcom/google/firebase/perf/v1/PerfSession$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/perf/v1/PerfSession;

    invoke-static {v0, p1}, Lcom/google/firebase/perf/v1/PerfSession;->access$300(Lcom/google/firebase/perf/v1/PerfSession;Lcom/google/protobuf/ByteString;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public setSessionVerbosity(ILcom/google/firebase/perf/v1/SessionVerbosity;)Lcom/google/firebase/perf/v1/PerfSession$Builder;
    .locals 1

    .line 447
    invoke-virtual {p0}, Lcom/google/firebase/perf/v1/PerfSession$Builder;->copyOnWrite()V

    .line 448
    iget-object v0, p0, Lcom/google/firebase/perf/v1/PerfSession$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/perf/v1/PerfSession;

    invoke-static {v0, p1, p2}, Lcom/google/firebase/perf/v1/PerfSession;->access$400(Lcom/google/firebase/perf/v1/PerfSession;ILcom/google/firebase/perf/v1/SessionVerbosity;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method
