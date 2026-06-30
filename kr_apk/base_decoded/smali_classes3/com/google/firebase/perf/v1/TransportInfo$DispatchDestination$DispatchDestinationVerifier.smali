.class final Lcom/google/firebase/perf/v1/TransportInfo$DispatchDestination$DispatchDestinationVerifier;
.super Ljava/lang/Object;
.source "TransportInfo.java"

# interfaces
.implements Lcom/google/protobuf/Internal$EnumVerifier;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/perf/v1/TransportInfo$DispatchDestination;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "DispatchDestinationVerifier"
.end annotation


# static fields
.field static final INSTANCE:Lcom/google/protobuf/Internal$EnumVerifier;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 110
    new-instance v0, Lcom/google/firebase/perf/v1/TransportInfo$DispatchDestination$DispatchDestinationVerifier;

    invoke-direct {v0}, Lcom/google/firebase/perf/v1/TransportInfo$DispatchDestination$DispatchDestinationVerifier;-><init>()V

    sput-object v0, Lcom/google/firebase/perf/v1/TransportInfo$DispatchDestination$DispatchDestinationVerifier;->INSTANCE:Lcom/google/protobuf/Internal$EnumVerifier;

    return-void

    .array-data 1
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public isInRange(I)Z
    .locals 0

    .line 113
    invoke-static {p1}, Lcom/google/firebase/perf/v1/TransportInfo$DispatchDestination;->forNumber(I)Lcom/google/firebase/perf/v1/TransportInfo$DispatchDestination;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1

    .array-data 1
    .end array-data
.end method
