.class Lcom/google/firebase/perf/v1/PerfSession$1;
.super Ljava/lang/Object;
.source "PerfSession.java"

# interfaces
.implements Lcom/google/protobuf/Internal$ListAdapter$Converter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/perf/v1/PerfSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/protobuf/Internal$ListAdapter$Converter<",
        "Ljava/lang/Integer;",
        "Lcom/google/firebase/perf/v1/SessionVerbosity;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public convert(Ljava/lang/Integer;)Lcom/google/firebase/perf/v1/SessionVerbosity;
    .locals 0

    .line 111
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p1}, Lcom/google/firebase/perf/v1/SessionVerbosity;->forNumber(I)Lcom/google/firebase/perf/v1/SessionVerbosity;

    move-result-object p1

    if-nez p1, :cond_0

    .line 112
    sget-object p1, Lcom/google/firebase/perf/v1/SessionVerbosity;->SESSION_VERBOSITY_NONE:Lcom/google/firebase/perf/v1/SessionVerbosity;

    :cond_0
    return-object p1

    nop

    .array-data 1
    .end array-data
.end method

.method public bridge synthetic convert(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 108
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/google/firebase/perf/v1/PerfSession$1;->convert(Ljava/lang/Integer;)Lcom/google/firebase/perf/v1/SessionVerbosity;

    move-result-object p1

    return-object p1

    nop

    .array-data 1
    .end array-data
.end method
