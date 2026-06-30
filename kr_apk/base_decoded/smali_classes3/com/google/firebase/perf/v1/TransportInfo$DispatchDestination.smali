.class public final enum Lcom/google/firebase/perf/v1/TransportInfo$DispatchDestination;
.super Ljava/lang/Enum;
.source "TransportInfo.java"

# interfaces
.implements Lcom/google/protobuf/Internal$EnumLite;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/perf/v1/TransportInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DispatchDestination"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/perf/v1/TransportInfo$DispatchDestination$DispatchDestinationVerifier;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/firebase/perf/v1/TransportInfo$DispatchDestination;",
        ">;",
        "Lcom/google/protobuf/Internal$EnumLite;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/firebase/perf/v1/TransportInfo$DispatchDestination;

.field public static final enum FL_LEGACY_V1:Lcom/google/firebase/perf/v1/TransportInfo$DispatchDestination;

.field public static final FL_LEGACY_V1_VALUE:I = 0x1

.field public static final enum SOURCE_UNKNOWN:Lcom/google/firebase/perf/v1/TransportInfo$DispatchDestination;

.field public static final SOURCE_UNKNOWN_VALUE:I

.field private static final internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap<",
            "Lcom/google/firebase/perf/v1/TransportInfo$DispatchDestination;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final value:I


# direct methods
.method private static synthetic $values()[Lcom/google/firebase/perf/v1/TransportInfo$DispatchDestination;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/google/firebase/perf/v1/TransportInfo$DispatchDestination;

    const/4 v1, 0x0

    .line 29
    sget-object v2, Lcom/google/firebase/perf/v1/TransportInfo$DispatchDestination;->SOURCE_UNKNOWN:Lcom/google/firebase/perf/v1/TransportInfo$DispatchDestination;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/google/firebase/perf/v1/TransportInfo$DispatchDestination;->FL_LEGACY_V1:Lcom/google/firebase/perf/v1/TransportInfo$DispatchDestination;

    aput-object v2, v0, v1

    return-object v0

    .array-data 1
    .end array-data
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 38
    new-instance v0, Lcom/google/firebase/perf/v1/TransportInfo$DispatchDestination;

    const-string v1, "SOURCE_UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/google/firebase/perf/v1/TransportInfo$DispatchDestination;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/firebase/perf/v1/TransportInfo$DispatchDestination;->SOURCE_UNKNOWN:Lcom/google/firebase/perf/v1/TransportInfo$DispatchDestination;

    .line 46
    new-instance v0, Lcom/google/firebase/perf/v1/TransportInfo$DispatchDestination;

    const-string v1, "FL_LEGACY_V1"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v2}, Lcom/google/firebase/perf/v1/TransportInfo$DispatchDestination;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/firebase/perf/v1/TransportInfo$DispatchDestination;->FL_LEGACY_V1:Lcom/google/firebase/perf/v1/TransportInfo$DispatchDestination;

    .line 29
    invoke-static {}, Lcom/google/firebase/perf/v1/TransportInfo$DispatchDestination;->$values()[Lcom/google/firebase/perf/v1/TransportInfo$DispatchDestination;

    move-result-object v0

    sput-object v0, Lcom/google/firebase/perf/v1/TransportInfo$DispatchDestination;->$VALUES:[Lcom/google/firebase/perf/v1/TransportInfo$DispatchDestination;

    .line 95
    new-instance v0, Lcom/google/firebase/perf/v1/TransportInfo$DispatchDestination$1;

    invoke-direct {v0}, Lcom/google/firebase/perf/v1/TransportInfo$DispatchDestination$1;-><init>()V

    sput-object v0, Lcom/google/firebase/perf/v1/TransportInfo$DispatchDestination;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    return-void

    .array-data 1
    .end array-data
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 119
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 120
    iput p3, p0, Lcom/google/firebase/perf/v1/TransportInfo$DispatchDestination;->value:I

    return-void

    .array-data 1
    .end array-data
.end method

.method public static forNumber(I)Lcom/google/firebase/perf/v1/TransportInfo$DispatchDestination;
    .locals 1

    if-eqz p0, :cond_1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 85
    :cond_0
    sget-object p0, Lcom/google/firebase/perf/v1/TransportInfo$DispatchDestination;->FL_LEGACY_V1:Lcom/google/firebase/perf/v1/TransportInfo$DispatchDestination;

    return-object p0

    .line 84
    :cond_1
    sget-object p0, Lcom/google/firebase/perf/v1/TransportInfo$DispatchDestination;->SOURCE_UNKNOWN:Lcom/google/firebase/perf/v1/TransportInfo$DispatchDestination;

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static internalGetValueMap()Lcom/google/protobuf/Internal$EnumLiteMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Internal$EnumLiteMap<",
            "Lcom/google/firebase/perf/v1/TransportInfo$DispatchDestination;",
            ">;"
        }
    .end annotation

    .line 92
    sget-object v0, Lcom/google/firebase/perf/v1/TransportInfo$DispatchDestination;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public static internalGetVerifier()Lcom/google/protobuf/Internal$EnumVerifier;
    .locals 1

    .line 105
    sget-object v0, Lcom/google/firebase/perf/v1/TransportInfo$DispatchDestination$DispatchDestinationVerifier;->INSTANCE:Lcom/google/protobuf/Internal$EnumVerifier;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public static valueOf(I)Lcom/google/firebase/perf/v1/TransportInfo$DispatchDestination;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 79
    invoke-static {p0}, Lcom/google/firebase/perf/v1/TransportInfo$DispatchDestination;->forNumber(I)Lcom/google/firebase/perf/v1/TransportInfo$DispatchDestination;

    move-result-object p0

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/firebase/perf/v1/TransportInfo$DispatchDestination;
    .locals 1

    .line 29
    const-class v0, Lcom/google/firebase/perf/v1/TransportInfo$DispatchDestination;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/perf/v1/TransportInfo$DispatchDestination;

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static values()[Lcom/google/firebase/perf/v1/TransportInfo$DispatchDestination;
    .locals 1

    .line 29
    sget-object v0, Lcom/google/firebase/perf/v1/TransportInfo$DispatchDestination;->$VALUES:[Lcom/google/firebase/perf/v1/TransportInfo$DispatchDestination;

    invoke-virtual {v0}, [Lcom/google/firebase/perf/v1/TransportInfo$DispatchDestination;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/firebase/perf/v1/TransportInfo$DispatchDestination;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public final getNumber()I
    .locals 1

    .line 69
    iget v0, p0, Lcom/google/firebase/perf/v1/TransportInfo$DispatchDestination;->value:I

    return v0

    nop

    .array-data 1
    .end array-data
.end method
