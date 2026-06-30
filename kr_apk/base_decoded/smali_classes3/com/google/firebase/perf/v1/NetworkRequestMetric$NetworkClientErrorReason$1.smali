.class Lcom/google/firebase/perf/v1/NetworkRequestMetric$NetworkClientErrorReason$1;
.super Ljava/lang/Object;
.source "NetworkRequestMetric.java"

# interfaces
.implements Lcom/google/protobuf/Internal$EnumLiteMap;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/perf/v1/NetworkRequestMetric$NetworkClientErrorReason;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/protobuf/Internal$EnumLiteMap<",
        "Lcom/google/firebase/perf/v1/NetworkRequestMetric$NetworkClientErrorReason;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 263
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public findValueByNumber(I)Lcom/google/firebase/perf/v1/NetworkRequestMetric$NetworkClientErrorReason;
    .locals 0

    .line 266
    invoke-static {p1}, Lcom/google/firebase/perf/v1/NetworkRequestMetric$NetworkClientErrorReason;->forNumber(I)Lcom/google/firebase/perf/v1/NetworkRequestMetric$NetworkClientErrorReason;

    move-result-object p1

    return-object p1

    nop

    .array-data 1
    .end array-data
.end method

.method public bridge synthetic findValueByNumber(I)Lcom/google/protobuf/Internal$EnumLite;
    .locals 0

    .line 263
    invoke-virtual {p0, p1}, Lcom/google/firebase/perf/v1/NetworkRequestMetric$NetworkClientErrorReason$1;->findValueByNumber(I)Lcom/google/firebase/perf/v1/NetworkRequestMetric$NetworkClientErrorReason;

    move-result-object p1

    return-object p1

    nop

    .array-data 1
    .end array-data
.end method
