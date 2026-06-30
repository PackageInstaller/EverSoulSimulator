.class public final Lcom/google/firebase/perf/v1/NetworkRequestMetric;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "NetworkRequestMetric.java"

# interfaces
.implements Lcom/google/firebase/perf/v1/NetworkRequestMetricOrBuilder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/perf/v1/NetworkRequestMetric$NetworkClientErrorReason;,
        Lcom/google/firebase/perf/v1/NetworkRequestMetric$HttpMethod;,
        Lcom/google/firebase/perf/v1/NetworkRequestMetric$Builder;,
        Lcom/google/firebase/perf/v1/NetworkRequestMetric$CustomAttributesDefaultEntryHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/google/firebase/perf/v1/NetworkRequestMetric;",
        "Lcom/google/firebase/perf/v1/NetworkRequestMetric$Builder;",
        ">;",
        "Lcom/google/firebase/perf/v1/NetworkRequestMetricOrBuilder;"
    }
.end annotation


# static fields
.field public static final CLIENT_START_TIME_US_FIELD_NUMBER:I = 0x7

.field public static final CUSTOM_ATTRIBUTES_FIELD_NUMBER:I = 0xc

.field private static final DEFAULT_INSTANCE:Lcom/google/firebase/perf/v1/NetworkRequestMetric;

.field public static final HTTP_METHOD_FIELD_NUMBER:I = 0x2

.field public static final HTTP_RESPONSE_CODE_FIELD_NUMBER:I = 0x5

.field public static final NETWORK_CLIENT_ERROR_REASON_FIELD_NUMBER:I = 0xb

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/firebase/perf/v1/NetworkRequestMetric;",
            ">;"
        }
    .end annotation
.end field

.field public static final PERF_SESSIONS_FIELD_NUMBER:I = 0xd

.field public static final REQUEST_PAYLOAD_BYTES_FIELD_NUMBER:I = 0x3

.field public static final RESPONSE_CONTENT_TYPE_FIELD_NUMBER:I = 0x6

.field public static final RESPONSE_PAYLOAD_BYTES_FIELD_NUMBER:I = 0x4

.field public static final TIME_TO_REQUEST_COMPLETED_US_FIELD_NUMBER:I = 0x8

.field public static final TIME_TO_RESPONSE_COMPLETED_US_FIELD_NUMBER:I = 0xa

.field public static final TIME_TO_RESPONSE_INITIATED_US_FIELD_NUMBER:I = 0x9

.field public static final URL_FIELD_NUMBER:I = 0x1


# instance fields
.field private bitField0_:I

.field private clientStartTimeUs_:J

.field private customAttributes_:Lcom/google/protobuf/MapFieldLite;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/MapFieldLite<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private httpMethod_:I

.field private httpResponseCode_:I

.field private networkClientErrorReason_:I

.field private perfSessions_:Lcom/google/protobuf/Internal$ProtobufList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$ProtobufList<",
            "Lcom/google/firebase/perf/v1/PerfSession;",
            ">;"
        }
    .end annotation
.end field

.field private requestPayloadBytes_:J

.field private responseContentType_:Ljava/lang/String;

.field private responsePayloadBytes_:J

.field private timeToRequestCompletedUs_:J

.field private timeToResponseCompletedUs_:J

.field private timeToResponseInitiatedUs_:J

.field private url_:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 2465
    new-instance v0, Lcom/google/firebase/perf/v1/NetworkRequestMetric;

    invoke-direct {v0}, Lcom/google/firebase/perf/v1/NetworkRequestMetric;-><init>()V

    .line 2468
    sput-object v0, Lcom/google/firebase/perf/v1/NetworkRequestMetric;->DEFAULT_INSTANCE:Lcom/google/firebase/perf/v1/NetworkRequestMetric;

    .line 2469
    const-class v1, Lcom/google/firebase/perf/v1/NetworkRequestMetric;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method private constructor <init>()V
    .locals 1

    .line 22
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 981
    invoke-static {}, Lcom/google/protobuf/MapFieldLite;->emptyMapField()Lcom/google/protobuf/MapFieldLite;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/perf/v1/NetworkRequestMetric;->customAttributes_:Lcom/google/protobuf/MapFieldLite;

    const-string v0, ""

    .line 23
    iput-object v0, p0, Lcom/google/firebase/perf/v1/NetworkRequestMetric;->url_:Ljava/lang/String;

    .line 24
    iput-object v0, p0, Lcom/google/firebase/perf/v1/NetworkRequestMetric;->responseContentType_:Ljava/lang/String;

    .line 25
    invoke-static {}, Lcom/google/firebase/perf/v1/NetworkRequestMetric;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/perf/v1/NetworkRequestMetric;->perfSessions_:Lcom/google/protobuf/Internal$ProtobufList;

    return-void

    .array-data 1
    .end array-data
.end method

.method static synthetic access$000()Lcom/google/firebase/perf/v1/NetworkRequestMetric;
    .locals 1

    .line 17
    sget-object v0, Lcom/google/firebase/perf/v1/NetworkRequestMetric;->DEFAULT_INSTANCE:Lcom/google/firebase/perf/v1/NetworkRequestMetric;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method static synthetic access$100(Lcom/google/firebase/perf/v1/NetworkRequestMetric;Ljava/lang/String;)V
    .locals 0

    .line 17
    invoke-direct {p0, p1}, Lcom/google/firebase/perf/v1/NetworkRequestMetric;->setUrl(Ljava/lang/String;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method static synthetic access$1000(Lcom/google/firebase/perf/v1/NetworkRequestMetric;Lcom/google/firebase/perf/v1/NetworkRequestMetric$NetworkClientErrorReason;)V
    .locals 0

    .line 17
    invoke-direct {p0, p1}, Lcom/google/firebase/perf/v1/NetworkRequestMetric;->setNetworkClientErrorReason(Lcom/google/firebase/perf/v1/NetworkRequestMetric$NetworkClientErrorReason;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method static synthetic access$1100(Lcom/google/firebase/perf/v1/NetworkRequestMetric;)V
    .locals 0

    .line 17
    invoke-direct {p0}, Lcom/google/firebase/perf/v1/NetworkRequestMetric;->clearNetworkClientErrorReason()V

    return-void

    .array-data 1
    .end array-data
.end method

.method static synthetic access$1200(Lcom/google/firebase/perf/v1/NetworkRequestMetric;I)V
    .locals 0

    .line 17
    invoke-direct {p0, p1}, Lcom/google/firebase/perf/v1/NetworkRequestMetric;->setHttpResponseCode(I)V

    return-void

    .array-data 1
    .end array-data
.end method

.method static synthetic access$1300(Lcom/google/firebase/perf/v1/NetworkRequestMetric;)V
    .locals 0

    .line 17
    invoke-direct {p0}, Lcom/google/firebase/perf/v1/NetworkRequestMetric;->clearHttpResponseCode()V

    return-void

    .array-data 1
    .end array-data
.end method

.method static synthetic access$1400(Lcom/google/firebase/perf/v1/NetworkRequestMetric;Ljava/lang/String;)V
    .locals 0

    .line 17
    invoke-direct {p0, p1}, Lcom/google/firebase/perf/v1/NetworkRequestMetric;->setResponseContentType(Ljava/lang/String;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method static synthetic access$1500(Lcom/google/firebase/perf/v1/NetworkRequestMetric;)V
    .locals 0

    .line 17
    invoke-direct {p0}, Lcom/google/firebase/perf/v1/NetworkRequestMetric;->clearResponseContentType()V

    return-void

    .array-data 1
    .end array-data
.end method

.method static synthetic access$1600(Lcom/google/firebase/perf/v1/NetworkRequestMetric;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 17
    invoke-direct {p0, p1}, Lcom/google/firebase/perf/v1/NetworkRequestMetric;->setResponseContentTypeBytes(Lcom/google/protobuf/ByteString;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method static synthetic access$1700(Lcom/google/firebase/perf/v1/NetworkRequestMetric;J)V
    .locals 0

    .line 17
    invoke-direct {p0, p1, p2}, Lcom/google/firebase/perf/v1/NetworkRequestMetric;->setClientStartTimeUs(J)V

    return-void

    .array-data 1
    .end array-data
.end method

.method static synthetic access$1800(Lcom/google/firebase/perf/v1/NetworkRequestMetric;)V
    .locals 0

    .line 17
    invoke-direct {p0}, Lcom/google/firebase/perf/v1/NetworkRequestMetric;->clearClientStartTimeUs()V

    return-void

    .array-data 1
    .end array-data
.end method

.method static synthetic access$1900(Lcom/google/firebase/perf/v1/NetworkRequestMetric;J)V
    .locals 0

    .line 17
    invoke-direct {p0, p1, p2}, Lcom/google/firebase/perf/v1/NetworkRequestMetric;->setTimeToRequestCompletedUs(J)V

    return-void

    .array-data 1
    .end array-data
.end method

.method static synthetic access$200(Lcom/google/firebase/perf/v1/NetworkRequestMetric;)V
    .locals 0

    .line 17
    invoke-direct {p0}, Lcom/google/firebase/perf/v1/NetworkRequestMetric;->clearUrl()V

    return-void

    .array-data 1
    .end array-data
.end method

.method static synthetic access$2000(Lcom/google/firebase/perf/v1/NetworkRequestMetric;)V
    .locals 0

    .line 17
    invoke-direct {p0}, Lcom/google/firebase/perf/v1/NetworkRequestMetric;->clearTimeToRequestCompletedUs()V

    return-void

    .array-data 1
    .end array-data
.end method

.method static synthetic access$2100(Lcom/google/firebase/perf/v1/NetworkRequestMetric;J)V
    .locals 0

    .line 17
    invoke-direct {p0, p1, p2}, Lcom/google/firebase/perf/v1/NetworkRequestMetric;->setTimeToResponseInitiatedUs(J)V

    return-void

    .array-data 1
    .end array-data
.end method

.method static synthetic access$2200(Lcom/google/firebase/perf/v1/NetworkRequestMetric;)V
    .locals 0

    .line 17
    invoke-direct {p0}, Lcom/google/firebase/perf/v1/NetworkRequestMetric;->clearTimeToResponseInitiatedUs()V

    return-void

    .array-data 1
    .end array-data
.end method

.method static synthetic access$2300(Lcom/google/firebase/perf/v1/NetworkRequestMetric;J)V
    .locals 0

    .line 17
    invoke-direct {p0, p1, p2}, Lcom/google/firebase/perf/v1/NetworkRequestMetric;->setTimeToResponseCompletedUs(J)V

    return-void

    .array-data 1
    .end array-data
.end method

.method static synthetic access$2400(Lcom/google/firebase/perf/v1/NetworkRequestMetric;)V
    .locals 0

    .line 17
    invoke-direct {p0}, Lcom/google/firebase/perf/v1/NetworkRequestMetric;->clearTimeToResponseCompletedUs()V

    return-void

    .array-data 1
    .end array-data
.end method

.method static synthetic access$2500(Lcom/google/firebase/perf/v1/NetworkRequestMetric;)Ljava/util/Map;
    .locals 0

    .line 17
    invoke-direct {p0}, Lcom/google/firebase/perf/v1/NetworkRequestMetric;->getMutableCustomAttributesMap()Ljava/util/Map;

    move-result-object p0

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method static synthetic access$2600(Lcom/google/firebase/perf/v1/NetworkRequestMetric;ILcom/google/firebase/perf/v1/PerfSession;)V
    .locals 0

    .line 17
    invoke-direct {p0, p1, p2}, Lcom/google/firebase/perf/v1/NetworkRequestMetric;->setPerfSessions(ILcom/google/firebase/perf/v1/PerfSession;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method static synthetic access$2700(Lcom/google/firebase/perf/v1/NetworkRequestMetric;Lcom/google/firebase/perf/v1/PerfSession;)V
    .locals 0

    .line 17
    invoke-direct {p0, p1}, Lcom/google/firebase/perf/v1/NetworkRequestMetric;->addPerfSessions(Lcom/google/firebase/perf/v1/PerfSession;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method static synthetic access$2800(Lcom/google/firebase/perf/v1/NetworkRequestMetric;ILcom/google/firebase/perf/v1/PerfSession;)V
    .locals 0

    .line 17
    invoke-direct {p0, p1, p2}, Lcom/google/firebase/perf/v1/NetworkRequestMetric;->addPerfSessions(ILcom/google/firebase/perf/v1/PerfSession;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method static synthetic access$2900(Lcom/google/firebase/perf/v1/NetworkRequestMetric;Ljava/lang/Iterable;)V
    .locals 0

    .line 17
    invoke-direct {p0, p1}, Lcom/google/firebase/perf/v1/NetworkRequestMetric;->addAllPerfSessions(Ljava/lang/Iterable;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method static synthetic access$300(Lcom/google/firebase/perf/v1/NetworkRequestMetric;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 17
    invoke-direct {p0, p1}, Lcom/google/firebase/perf/v1/NetworkRequestMetric;->setUrlBytes(Lcom/google/protobuf/ByteString;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method static synthetic access$3000(Lcom/google/firebase/perf/v1/NetworkRequestMetric;)V
    .locals 0

    .line 17
    invoke-direct {p0}, Lcom/google/firebase/perf/v1/NetworkRequestMetric;->clearPerfSessions()V

    return-void

    .array-data 1
    .end array-data
.end method

.method static synthetic access$3100(Lcom/google/firebase/perf/v1/NetworkRequestMetric;I)V
    .locals 0

    .line 17
    invoke-direct {p0, p1}, Lcom/google/firebase/perf/v1/NetworkRequestMetric;->removePerfSessions(I)V

    return-void

    .array-data 1
    .end array-data
.end method

.method static synthetic access$400(Lcom/google/firebase/perf/v1/NetworkRequestMetric;Lcom/google/firebase/perf/v1/NetworkRequestMetric$HttpMethod;)V
    .locals 0

    .line 17
    invoke-direct {p0, p1}, Lcom/google/firebase/perf/v1/NetworkRequestMetric;->setHttpMethod(Lcom/google/firebase/perf/v1/NetworkRequestMetric$HttpMethod;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method static synthetic access$500(Lcom/google/firebase/perf/v1/NetworkRequestMetric;)V
    .locals 0

    .line 17
    invoke-direct {p0}, Lcom/google/firebase/perf/v1/NetworkRequestMetric;->clearHttpMethod()V

    return-void

    .array-data 1
    .end array-data
.end method

.method static synthetic access$600(Lcom/google/firebase/perf/v1/NetworkRequestMetric;J)V
    .locals 0

    .line 17
    invoke-direct {p0, p1, p2}, Lcom/google/firebase/perf/v1/NetworkRequestMetric;->setRequestPayloadBytes(J)V

    return-void

    .array-data 1
    .end array-data
.end method

.method static synthetic access$700(Lcom/google/firebase/perf/v1/NetworkRequestMetric;)V
    .locals 0

    .line 17
    invoke-direct {p0}, Lcom/google/firebase/perf/v1/NetworkRequestMetric;->clearRequestPayloadBytes()V

    return-void

    .array-data 1
    .end array-data
.end method

.method static synthetic access$800(Lcom/google/firebase/perf/v1/NetworkRequestMetric;J)V
    .locals 0

    .line 17
    invoke-direct {p0, p1, p2}, Lcom/google/firebase/perf/v1/NetworkRequestMetric;->setResponsePayloadBytes(J)V

    return-void

    .array-data 1
    .end array-data
.end method

.method static synthetic access$900(Lcom/google/firebase/perf/v1/NetworkRequestMetric;)V
    .locals 0

    .line 17
    invoke-direct {p0}, Lcom/google/firebase/perf/v1/NetworkRequestMetric;->clearResponsePayloadBytes()V

    return-void

    .array-data 1
    .end array-data
.end method

.method private addAllPerfSessions(Ljava/lang/Iterable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/google/firebase/perf/v1/PerfSession;",
            ">;)V"
        }
    .end annotation

    .line 1231
    invoke-direct {p0}, Lcom/google/firebase/perf/v1/NetworkRequestMetric;->ensurePerfSessionsIsMutable()V

    .line 1232
    iget-object v0, p0, Lcom/google/firebase/perf/v1/NetworkRequestMetric;->perfSessions_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMessageLite;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method private addPerfSessions(ILcom/google/firebase/perf/v1/PerfSession;)V
    .locals 1

    .line 1214
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1215
    invoke-direct {p0}, Lcom/google/firebase/perf/v1/NetworkRequestMetric;->ensurePerfSessionsIsMutable()V

    .line 1216
    iget-object v0, p0, Lcom/google/firebase/perf/v1/NetworkRequestMetric;->perfSessions_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/Internal$ProtobufList;->add(ILjava/lang/Object;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method private addPerfSessions(Lcom/google/firebase/perf/v1/PerfSession;)V
    .locals 1

    .line 1197
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1198
    invoke-direct {p0}, Lcom/google/firebase/perf/v1/NetworkRequestMetric;->ensurePerfSessionsIsMutable()V

    .line 1199
    iget-object v0, p0, Lcom/google/firebase/perf/v1/NetworkRequestMetric;->perfSessions_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->add(Ljava/lang/Object;)Z

    return-void

    .array-data 1
    .end array-data
.end method

.method private clearClientStartTimeUs()V
    .locals 2

    .line 802
    iget v0, p0, Lcom/google/firebase/perf/v1/NetworkRequestMetric;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/google/firebase/perf/v1/NetworkRequestMetric;->bitField0_:I

    const-wide/16 v0, 0x0

    .line 803
    iput-wide v0, p0, Lcom/google/firebase/perf/v1/NetworkRequestMetric;->clientStartTimeUs_:J

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method private clearHttpMethod()V
    .locals 1

    .line 465
    iget v0, p0, Lcom/google/firebase/perf/v1/NetworkRequestMetric;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/firebase/perf/v1/NetworkRequestMetric;->bitField0_:I

    const/4 v0, 0x0

    .line 466
    iput v0, p0, Lcom/google/firebase/perf/v1/NetworkRequestMetric;->httpMethod_:I

    return-void

    .array-data 1
    .end array-data
.end method

.method private clearHttpResponseCode()V
    .locals 1

    .line 670
    iget v0, p0, Lcom/google/firebase/perf/v1/NetworkRequestMetric;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/firebase/perf/v1/NetworkRequestMetric;->bitField0_:I

    const/4 v0, 0x0

    .line 671
    iput v0, p0, Lcom/google/firebase/perf/v1/NetworkRequestMetric;->httpResponseCode_:I

    return-void

    .array-data 1
    .end array-data
.end method

.method private clearNetworkClientErrorReason()V
    .locals 1

    .line 620
    iget v0, p0, Lcom/google/firebase/perf/v1/NetworkRequestMetric;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/firebase/perf/v1/NetworkRequestMetric;->bitField0_:I

    const/4 v0, 0x0

    .line 621
    iput v0, p0, Lcom/google/firebase/perf/v1/NetworkRequestMetric;->networkClientErrorReason_:I

    return-void

    .array-data 1
    .end array-data
.end method

.method private clearPerfSessions()V
    .locals 1

    .line 1247
    invoke-static {}, Lcom/google/firebase/perf/v1/NetworkRequestMetric;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/perf/v1/NetworkRequestMetric;->perfSessions_:Lcom/google/protobuf/Internal$ProtobufList;

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method private clearRequestPayloadBytes()V
    .locals 2

    .line 515
    iget v0, p0, Lcom/google/firebase/perf/v1/NetworkRequestMetric;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/firebase/perf/v1/NetworkRequestMetric;->bitField0_:I

    const-wide/16 v0, 0x0

    .line 516
    iput-wide v0, p0, Lcom/google/firebase/perf/v1/NetworkRequestMetric;->requestPayloadBytes_:J

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method private clearResponseContentType()V
    .locals 1

    .line 735
    iget v0, p0, Lcom/google/firebase/perf/v1/NetworkRequestMetric;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/google/firebase/perf/v1/NetworkRequestMetric;->bitField0_:I

    .line 736
    invoke-static {}, Lcom/google/firebase/perf/v1/NetworkRequestMetric;->getDefaultInstance()Lcom/google/firebase/perf/v1/NetworkRequestMetric;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/perf/v1/NetworkRequestMetric;->getResponseContentType()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/perf/v1/NetworkRequestMetric;->responseContentType_:Ljava/lang/String;

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method private clearResponsePayloadBytes()V
    .locals 2

    .line 565
    iget v0, p0, Lcom/google/firebase/perf/v1/NetworkRequestMetric;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/firebase/perf/v1/NetworkRequestMetric;->bitField0_:I

    const-wide/16 v0, 0x0

    .line 566
    iput-wide v0, p0, Lcom/google/firebase/perf/v1/NetworkRequestMetric;->responsePayloadBytes_:J

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method private clearTimeToRequestCompletedUs()V
    .locals 2

    .line 856
    iget v0, p0, Lcom/google/firebase/perf/v1/NetworkRequestMetric;->bitField0_:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lcom/google/firebase/perf/v1/NetworkRequestMetric;->bitField0_:I

    const-wide/16 v0, 0x0

    .line 857
    iput-wide v0, p0, Lcom/google/firebase/perf/v1/NetworkRequestMetric;->timeToRequestCompletedUs_:J

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method private clearTimeToResponseCompletedUs()V
    .locals 2

    .line 964
    iget v0, p0, Lcom/google/firebase/perf/v1/NetworkRequestMetric;->bitField0_:I

    and-int/lit16 v0, v0, -0x401

    iput v0, p0, Lcom/google/firebase/perf/v1/NetworkRequestMetric;->bitField0_:I

    const-wide/16 v0, 0x0

    .line 965
    iput-wide v0, p0, Lcom/google/firebase/perf/v1/NetworkRequestMetric;->timeToResponseCompletedUs_:J

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method private clearTimeToResponseInitiatedUs()V
    .locals 2

    .line 910
    iget v0, p0, Lcom/google/firebase/perf/v1/NetworkRequestMetric;->bitField0_:I

    and-int/lit16 v0, v0, -0x201

    iput v0, p0, Lcom/google/firebase/perf/v1/NetworkRequestMetric;->bitField0_:I

    const-wide/16 v0, 0x0

    .line 911
    iput-wide v0, p0, Lcom/google/firebase/perf/v1/NetworkRequestMetric;->timeToResponseInitiatedUs_:J

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method private clearUrl()V
    .locals 1

    .line 390
    iget v0, p0, Lcom/google/firebase/perf/v1/NetworkRequestMetric;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/firebase/perf/v1/NetworkRequestMetric;->bitField0_:I

    .line 391
    invoke-static {}, Lcom/google/firebase/perf/v1/NetworkRequestMetric;->getDefaultInstance()Lcom/google/firebase/perf/v1/NetworkRequestMetric;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/perf/v1/NetworkRequestMetric;->getUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/perf/v1/NetworkRequestMetric;->url_:Ljava/lang/String;

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method private ensurePerfSessionsIsMutable()V
    .locals 2

    .line 1161
    iget-object v0, p0, Lcom/google/firebase/perf/v1/NetworkRequestMetric;->perfSessions_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 1162
    invoke-interface {v0}, Lcom/google/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1164
    invoke-static {v0}, Lcom/google/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/google/protobuf/Internal$ProtobufList;)Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/perf/v1/NetworkRequestMetric;->perfSessions_:Lcom/google/protobuf/Internal$ProtobufList;

    :cond_0
    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public static getDefaultInstance()Lcom/google/firebase/perf/v1/NetworkRequestMetric;
    .locals 1

    .line 2474
    sget-object v0, Lcom/google/firebase/perf/v1/NetworkRequestMetric;->DEFAULT_INSTANCE:Lcom/google/firebase/perf/v1/NetworkRequestMetric;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method private getMutableCustomAttributesMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1080
    invoke-direct {p0}, Lcom/google/firebase/perf/v1/NetworkRequestMetric;->internalGetMutableCustomAttributes()Lcom/google/protobuf/MapFieldLite;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method private internalGetCustomAttributes()Lcom/google/protobuf/MapFieldLite;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/MapFieldLite<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 984
    iget-object v0, p0, Lcom/google/firebase/perf/v1/NetworkRequestMetric;->customAttributes_:Lcom/google/protobuf/MapFieldLite;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method private internalGetMutableCustomAttributes()Lcom/google/protobuf/MapFieldLite;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/MapFieldLite<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 988
    iget-object v0, p0, Lcom/google/firebase/perf/v1/NetworkRequestMetric;->customAttributes_:Lcom/google/protobuf/MapFieldLite;

    invoke-virtual {v0}, Lcom/google/protobuf/MapFieldLite;->isMutable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 989
    iget-object v0, p0, Lcom/google/firebase/perf/v1/NetworkRequestMetric;->customAttributes_:Lcom/google/protobuf/MapFieldLite;

    invoke-virtual {v0}, Lcom/google/protobuf/MapFieldLite;->mutableCopy()Lcom/google/protobuf/MapFieldLite;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/perf/v1/NetworkRequestMetric;->customAttributes_:Lcom/google/protobuf/MapFieldLite;

    .line 991
    :cond_0
    iget-object v0, p0, Lcom/google/firebase/perf/v1/NetworkRequestMetric;->customAttributes_:Lcom/google/protobuf/MapFieldLite;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public static newBuilder()Lcom/google/firebase/perf/v1/NetworkRequestMetric$Builder;
    .locals 1

    .line 1342
    sget-object v0, Lcom/google/firebase/perf/v1/NetworkRequestMetric;->DEFAULT_INSTANCE:Lcom/google/firebase/perf/v1/NetworkRequestMetric;

    invoke-virtual {v0}, Lcom/google/firebase/perf/v1/NetworkRequestMetric;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/perf/v1/NetworkRequestMetric$Builder;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public static newBuilder(Lcom/google/firebase/perf/v1/NetworkRequestMetric;)Lcom/google/firebase/perf/v1/NetworkRequestMetric$Builder;
    .locals 1

    .line 1345
    sget-object v0, Lcom/google/firebase/perf/v1/NetworkRequestMetric;->DEFAULT_INSTANCE:Lcom/google/firebase/perf/v1/NetworkRequestMetric;

    invoke-virtual {v0, p0}, Lcom/google/firebase/perf/v1/NetworkRequestMetric;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/perf/v1/NetworkRequestMetric$Builder;

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/firebase/perf/v1/NetworkRequestMetric;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1318
    sget-object v0, Lcom/google/firebase/perf/v1/NetworkRequestMetric;->DEFAULT_INSTANCE:Lcom/google/firebase/perf/v1/NetworkRequestMetric;

    invoke-static {v0, p0}, Lcom/google/firebase/perf/v1/NetworkRequestMetric;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/perf/v1/NetworkRequestMetric;

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firebase/perf/v1/NetworkRequestMetric;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1325
    sget-object v0, Lcom/google/firebase/perf/v1/NetworkRequestMetric;->DEFAULT_INSTANCE:Lcom/google/firebase/perf/v1/NetworkRequestMetric;

    invoke-static {v0, p0, p1}, Lcom/google/firebase/perf/v1/NetworkRequestMetric;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/perf/v1/NetworkRequestMetric;

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/firebase/perf/v1/NetworkRequestMetric;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1281
    sget-object v0, Lcom/google/firebase/perf/v1/NetworkRequestMetric;->DEFAULT_INSTANCE:Lcom/google/firebase/perf/v1/NetworkRequestMetric;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/perf/v1/NetworkRequestMetric;

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firebase/perf/v1/NetworkRequestMetric;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1288
    sget-object v0, Lcom/google/firebase/perf/v1/NetworkRequestMetric;->DEFAULT_INSTANCE:Lcom/google/firebase/perf/v1/NetworkRequestMetric;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/perf/v1/NetworkRequestMetric;

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/firebase/perf/v1/NetworkRequestMetric;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1330
    sget-object v0, Lcom/google/firebase/perf/v1/NetworkRequestMetric;->DEFAULT_INSTANCE:Lcom/google/firebase/perf/v1/NetworkRequestMetric;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/perf/v1/NetworkRequestMetric;

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firebase/perf/v1/NetworkRequestMetric;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1337
    sget-object v0, Lcom/google/firebase/perf/v1/NetworkRequestMetric;->DEFAULT_INSTANCE:Lcom/google/firebase/perf/v1/NetworkRequestMetric;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/perf/v1/NetworkRequestMetric;

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/firebase/perf/v1/NetworkRequestMetric;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1305
    sget-object v0, Lcom/google/firebase/perf/v1/NetworkRequestMetric;->DEFAULT_INSTANCE:Lcom/google/firebase/perf/v1/NetworkRequestMetric;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/perf/v1/NetworkRequestMetric;

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firebase/perf/v1/NetworkRequestMetric;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1312
    sget-object v0, Lcom/google/firebase/perf/v1/NetworkRequestMetric;->DEFAULT_INSTANCE:Lcom/google/firebase/perf/v1/NetworkRequestMetric;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/perf/v1/NetworkRequestMetric;

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/google/firebase/perf/v1/NetworkRequestMetric;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1268
    sget-object v0, Lcom/google/firebase/perf/v1/NetworkRequestMetric;->DEFAULT_INSTANCE:Lcom/google/firebase/perf/v1/NetworkRequestMetric;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/perf/v1/NetworkRequestMetric;

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firebase/perf/v1/NetworkRequestMetric;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1275
    sget-object v0, Lcom/google/firebase/perf/v1/NetworkRequestMetric;->DEFAULT_INSTANCE:Lcom/google/firebase/perf/v1/NetworkRequestMetric;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/perf/v1/NetworkRequestMetric;

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static parseFrom([B)Lcom/google/firebase/perf/v1/NetworkRequestMetric;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1293
    sget-object v0, Lcom/google/firebase/perf/v1/NetworkRequestMetric;->DEFAULT_INSTANCE:Lcom/google/firebase/perf/v1/NetworkRequestMetric;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/perf/v1/NetworkRequestMetric;

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firebase/perf/v1/NetworkRequestMetric;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1300
    sget-object v0, Lcom/google/firebase/perf/v1/NetworkRequestMetric;->DEFAULT_INSTANCE:Lcom/google/firebase/perf/v1/NetworkRequestMetric;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/perf/v1/NetworkRequestMetric;

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/firebase/perf/v1/NetworkRequestMetric;",
            ">;"
        }
    .end annotation

    .line 2480
    sget-object v0, Lcom/google/firebase/perf/v1/NetworkRequestMetric;->DEFAULT_INSTANCE:Lcom/google/firebase/perf/v1/NetworkRequestMetric;

    invoke-virtual {v0}, Lcom/google/firebase/perf/v1/NetworkRequestMetric;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method private removePerfSessions(I)V
    .locals 1

    .line 1261
    invoke-direct {p0}, Lcom/google/firebase/perf/v1/NetworkRequestMetric;->ensurePerfSessionsIsMutable()V

    .line 1262
    iget-object v0, p0, Lcom/google/firebase/perf/v1/NetworkRequestMetric;->perfSessions_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->remove(I)Ljava/lang/Object;

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method private setClientStartTimeUs(J)V
    .locals 1

    .line 790
    iget v0, p0, Lcom/google/firebase/perf/v1/NetworkRequestMetric;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/google/firebase/perf/v1/NetworkRequestMetric;->bitField0_:I

    .line 791
    iput-wide p1, p0, Lcom/google/firebase/perf/v1/NetworkRequestMetric;->clientStartTimeUs_:J

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method private setHttpMethod(Lcom/google/firebase/perf/v1/NetworkRequestMetric$HttpMethod;)V
    .locals 0

    .line 453
    invoke-virtual {p1}, Lcom/google/firebase/perf/v1/NetworkRequestMetric$HttpMethod;->getNumber()I

    move-result p1

    iput p1, p0, Lcom/google/firebase/perf/v1/NetworkRequestMetric;->httpMethod_:I

    .line 454
    iget p1, p0, Lcom/google/firebase/perf/v1/NetworkRequestMetric;->bitField0_:I

    or-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/google/firebase/perf/v1/NetworkRequestMetric;->bitField0_:I

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method private setHttpResponseCode(I)V
    .locals 1

    .line 659
    iget v0, p0, Lcom/google/firebase/perf/v1/NetworkRequestMetric;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/firebase/perf/v1/NetworkRequestMetric;->bitField0_:I

    .line 660
    iput p1, p0, Lcom/google/firebase/perf/v1/NetworkRequestMetric;->httpResponseCode_:I

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method private setNetworkClientErrorReason(Lcom/google/firebase/perf/v1/NetworkRequestMetric$NetworkClientErrorReason;)V
    .locals 0

    .line 608
    invoke-virtual {p1}, Lcom/google/firebase/perf/v1/NetworkRequestMetric$NetworkClientErrorReason;->getNumber()I

    move-result p1

    iput p1, p0, Lcom/google/firebase/perf/v1/NetworkRequestMetric;->networkClientErrorReason_:I

    .line 609
    iget p1, p0, Lcom/google/firebase/perf/v1/NetworkRequestMetric;->bitField0_:I

    or-int/lit8 p1, p1, 0x10

    iput p1, p0, Lcom/google/firebase/perf/v1/NetworkRequestMetric;->bitField0_:I

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method private setPerfSessions(ILcom/google/firebase/perf/v1/PerfSession;)V
    .locals 1

    .line 1181
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1182
    invoke-direct {p0}, Lcom/google/firebase/perf/v1/NetworkRequestMetric;->ensurePerfSessionsIsMutable()V

    .line 1183
    iget-object v0, p0, Lcom/google/firebase/perf/v1/NetworkRequestMetric;->perfSessions_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/Internal$ProtobufList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void

    .array-data 1
    .end array-data
.end method

.method private setRequestPayloadBytes(J)V
    .locals 1

    .line 504
    iget v0, p0, Lcom/google/firebase/perf/v1/NetworkRequestMetric;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/firebase/perf/v1/NetworkRequestMetric;->bitField0_:I

    .line 505
    iput-wide p1, p0, Lcom/google/firebase/perf/v1/NetworkRequestMetric;->requestPayloadBytes_:J

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method private setResponseContentType(Ljava/lang/String;)V
    .locals 1

    .line 723
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 724
    iget v0, p0, Lcom/google/firebase/perf/v1/NetworkRequestMetric;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/firebase/perf/v1/NetworkRequestMetric;->bitField0_:I

    .line 725
    iput-object p1, p0, Lcom/google/firebase/perf/v1/NetworkRequestMetric;->responseContentType_:Ljava/lang/String;

    return-void

    .array-data 1
    .end array-data
.end method

.method private setResponseContentTypeBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 748
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/firebase/perf/v1/NetworkRequestMetric;->responseContentType_:Ljava/lang/String;

    .line 749
    iget p1, p0, Lcom/google/firebase/perf/v1/NetworkRequestMetric;->bitField0_:I

    or-int/lit8 p1, p1, 0x40

    iput p1, p0, Lcom/google/firebase/perf/v1/NetworkRequestMetric;->bitField0_:I

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method private setResponsePayloadBytes(J)V
    .locals 1

    .line 554
    iget v0, p0, Lcom/google/firebase/perf/v1/NetworkRequestMetric;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/firebase/perf/v1/NetworkRequestMetric;->bitField0_:I

    .line 555
    iput-wide p1, p0, Lcom/google/firebase/perf/v1/NetworkRequestMetric;->responsePayloadBytes_:J

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method private setTimeToRequestCompletedUs(J)V
    .locals 1

    .line 844
    iget v0, p0, Lcom/google/firebase/perf/v1/NetworkRequestMetric;->bitField0_:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/google/firebase/perf/v1/NetworkRequestMetric;->bitField0_:I

    .line 845
    iput-wide p1, p0, Lcom/google/firebase/perf/v1/NetworkRequestMetric;->timeToRequestCompletedUs_:J

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method private setTimeToResponseCompletedUs(J)V
    .locals 1

    .line 952
    iget v0, p0, Lcom/google/firebase/perf/v1/NetworkRequestMetric;->bitField0_:I

    or-int/lit16 v0, v0, 0x400

    iput v0, p0, Lcom/google/firebase/perf/v1/NetworkRequestMetric;->bitField0_:I

    .line 953
    iput-wide p1, p0, Lcom/google/firebase/perf/v1/NetworkRequestMetric;->timeToResponseCompletedUs_:J

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method private setTimeToResponseInitiatedUs(J)V
    .locals 1

    .line 898
    iget v0, p0, Lcom/google/firebase/perf/v1/NetworkRequestMetric;->bitField0_:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, Lcom/google/firebase/perf/v1/NetworkRequestMetric;->bitField0_:I

    .line 899
    iput-wide p1, p0, Lcom/google/firebase/perf/v1/NetworkRequestMetric;->timeToResponseInitiatedUs_:J

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method private setUrl(Ljava/lang/String;)V
    .locals 1

    .line 371
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 372
    iget v0, p0, Lcom/google/firebase/perf/v1/NetworkRequestMetric;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/firebase/perf/v1/NetworkRequestMetric;->bitField0_:I

    .line 373
    iput-object p1, p0, Lcom/google/firebase/perf/v1/NetworkRequestMetric;->url_:Ljava/lang/String;

    return-void

    .array-data 1
    .end array-data
.end method

.method private setUrlBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 410
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/firebase/perf/v1/NetworkRequestMetric;->url_:Ljava/lang/String;

    .line 411
    iget p1, p0, Lcom/google/firebase/perf/v1/NetworkRequestMetric;->bitField0_:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/firebase/perf/v1/NetworkRequestMetric;->bitField0_:I

    return-void

    nop

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public containsCustomAttributes(Ljava/lang/String;)Z
    .locals 1

    .line 1009
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1010
    invoke-direct {p0}, Lcom/google/firebase/perf/v1/NetworkRequestMetric;->internalGetCustomAttributes()Lcom/google/protobuf/MapFieldLite;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/MapFieldLite;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .array-data 1
    .end array-data
.end method

.method protected final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 2398
    sget-object p2, Lcom/google/firebase/perf/v1/NetworkRequestMetric$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x1

    const/4 p3, 0x0

    packed-switch p1, :pswitch_data_0

    .line 2458
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p3

    .line 2452
    :pswitch_1
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 2437
    :pswitch_2
    sget-object p1, Lcom/google/firebase/perf/v1/NetworkRequestMetric;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    .line 2439
    const-class p2, Lcom/google/firebase/perf/v1/NetworkRequestMetric;

    monitor-enter p2

    .line 2440
    :try_start_0
    sget-object p1, Lcom/google/firebase/perf/v1/NetworkRequestMetric;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_0

    .line 2442
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lcom/google/firebase/perf/v1/NetworkRequestMetric;->DEFAULT_INSTANCE:Lcom/google/firebase/perf/v1/NetworkRequestMetric;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 2445
    sput-object p1, Lcom/google/firebase/perf/v1/NetworkRequestMetric;->PARSER:Lcom/google/protobuf/Parser;

    .line 2447
    :cond_0
    monitor-exit p2

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_1
    :goto_0
    return-object p1

    .line 2434
    :pswitch_3
    sget-object p1, Lcom/google/firebase/perf/v1/NetworkRequestMetric;->DEFAULT_INSTANCE:Lcom/google/firebase/perf/v1/NetworkRequestMetric;

    return-object p1

    :pswitch_4
    const/16 p1, 0x12

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v0, "bitField0_"

    aput-object v0, p1, p3

    const-string/jumbo p3, "url_"

    aput-object p3, p1, p2

    const/4 p2, 0x2

    const-string p3, "httpMethod_"

    aput-object p3, p1, p2

    const/4 p2, 0x3

    .line 2410
    invoke-static {}, Lcom/google/firebase/perf/v1/NetworkRequestMetric$HttpMethod;->internalGetVerifier()Lcom/google/protobuf/Internal$EnumVerifier;

    move-result-object p3

    aput-object p3, p1, p2

    const/4 p2, 0x4

    const-string p3, "requestPayloadBytes_"

    aput-object p3, p1, p2

    const/4 p2, 0x5

    const-string p3, "responsePayloadBytes_"

    aput-object p3, p1, p2

    const/4 p2, 0x6

    const-string p3, "httpResponseCode_"

    aput-object p3, p1, p2

    const/4 p2, 0x7

    const-string p3, "responseContentType_"

    aput-object p3, p1, p2

    const/16 p2, 0x8

    const-string p3, "clientStartTimeUs_"

    aput-object p3, p1, p2

    const/16 p2, 0x9

    const-string/jumbo p3, "timeToRequestCompletedUs_"

    aput-object p3, p1, p2

    const/16 p2, 0xa

    const-string/jumbo p3, "timeToResponseInitiatedUs_"

    aput-object p3, p1, p2

    const/16 p2, 0xb

    const-string/jumbo p3, "timeToResponseCompletedUs_"

    aput-object p3, p1, p2

    const/16 p2, 0xc

    const-string p3, "networkClientErrorReason_"

    aput-object p3, p1, p2

    const/16 p2, 0xd

    .line 2420
    invoke-static {}, Lcom/google/firebase/perf/v1/NetworkRequestMetric$NetworkClientErrorReason;->internalGetVerifier()Lcom/google/protobuf/Internal$EnumVerifier;

    move-result-object p3

    aput-object p3, p1, p2

    const/16 p2, 0xe

    const-string p3, "customAttributes_"

    aput-object p3, p1, p2

    const/16 p2, 0xf

    sget-object p3, Lcom/google/firebase/perf/v1/NetworkRequestMetric$CustomAttributesDefaultEntryHolder;->defaultEntry:Lcom/google/protobuf/MapEntryLite;

    aput-object p3, p1, p2

    const/16 p2, 0x10

    const-string p3, "perfSessions_"

    aput-object p3, p1, p2

    const/16 p2, 0x11

    const-class p3, Lcom/google/firebase/perf/v1/PerfSession;

    aput-object p3, p1, p2

    const-string p2, "\u0001\r\u0000\u0001\u0001\r\r\u0001\u0001\u0000\u0001\u1008\u0000\u0002\u180c\u0001\u0003\u1002\u0002\u0004\u1002\u0003\u0005\u1004\u0005\u0006\u1008\u0006\u0007\u1002\u0007\u0008\u1002\u0008\t\u1002\t\n\u1002\n\u000b\u180c\u0004\u000c2\r\u001b"

    .line 2430
    sget-object p3, Lcom/google/firebase/perf/v1/NetworkRequestMetric;->DEFAULT_INSTANCE:Lcom/google/firebase/perf/v1/NetworkRequestMetric;

    invoke-static {p3, p2, p1}, Lcom/google/firebase/perf/v1/NetworkRequestMetric;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 2403
    :pswitch_5
    new-instance p1, Lcom/google/firebase/perf/v1/NetworkRequestMetric$Builder;

    invoke-direct {p1, p3}, Lcom/google/firebase/perf/v1/NetworkRequestMetric$Builder;-><init>(Lcom/google/firebase/perf/v1/NetworkRequestMetric$1;)V

    return-object p1

    .line 2400
    :pswitch_6
    new-instance p1, Lcom/google/firebase/perf/v1/NetworkRequestMetric;

    invoke-direct {p1}, Lcom/google/firebase/perf/v1/NetworkRequestMetric;-><init>()V

    return-object p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .array-data 1
    .end array-data
.end method

.method public getClientStartTimeUs()J
    .locals 2

    .line 778
    iget-wide v0, p0, Lcom/google/firebase/perf/v1/NetworkRequestMetric;->clientStartTimeUs_:J

    return-wide v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getCustomAttributes()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1018
    invoke-virtual {p0}, Lcom/google/firebase/perf/v1/NetworkRequestMetric;->getCustomAttributesMap()Ljava/util/Map;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getCustomAttributesCount()I
    .locals 1

    .line 996
    invoke-direct {p0}, Lcom/google/firebase/perf/v1/NetworkRequestMetric;->internalGetCustomAttributes()Lcom/google/protobuf/MapFieldLite;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/MapFieldLite;->size()I

    move-result v0

    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getCustomAttributesMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1031
    invoke-direct {p0}, Lcom/google/firebase/perf/v1/NetworkRequestMetric;->internalGetCustomAttributes()Lcom/google/protobuf/MapFieldLite;

    move-result-object v0

    .line 1030
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getCustomAttributesOrDefault(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1047
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1049
    invoke-direct {p0}, Lcom/google/firebase/perf/v1/NetworkRequestMetric;->internalGetCustomAttributes()Lcom/google/protobuf/MapFieldLite;

    move-result-object v0

    .line 1050
    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object p2, p1

    check-cast p2, Ljava/lang/String;

    :cond_0
    return-object p2

    nop

    .array-data 1
    .end array-data
.end method

.method public getCustomAttributesOrThrow(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1063
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1065
    invoke-direct {p0}, Lcom/google/firebase/perf/v1/NetworkRequestMetric;->internalGetCustomAttributes()Lcom/google/protobuf/MapFieldLite;

    move-result-object v0

    .line 1066
    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1069
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1

    .line 1067
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    .array-data 1
    .end array-data
.end method

.method public getHttpMethod()Lcom/google/firebase/perf/v1/NetworkRequestMetric$HttpMethod;
    .locals 1

    .line 440
    iget v0, p0, Lcom/google/firebase/perf/v1/NetworkRequestMetric;->httpMethod_:I

    invoke-static {v0}, Lcom/google/firebase/perf/v1/NetworkRequestMetric$HttpMethod;->forNumber(I)Lcom/google/firebase/perf/v1/NetworkRequestMetric$HttpMethod;

    move-result-object v0

    if-nez v0, :cond_0

    .line 441
    sget-object v0, Lcom/google/firebase/perf/v1/NetworkRequestMetric$HttpMethod;->HTTP_METHOD_UNKNOWN:Lcom/google/firebase/perf/v1/NetworkRequestMetric$HttpMethod;

    :cond_0
    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getHttpResponseCode()I
    .locals 1

    .line 648
    iget v0, p0, Lcom/google/firebase/perf/v1/NetworkRequestMetric;->httpResponseCode_:I

    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getNetworkClientErrorReason()Lcom/google/firebase/perf/v1/NetworkRequestMetric$NetworkClientErrorReason;
    .locals 1

    .line 595
    iget v0, p0, Lcom/google/firebase/perf/v1/NetworkRequestMetric;->networkClientErrorReason_:I

    invoke-static {v0}, Lcom/google/firebase/perf/v1/NetworkRequestMetric$NetworkClientErrorReason;->forNumber(I)Lcom/google/firebase/perf/v1/NetworkRequestMetric$NetworkClientErrorReason;

    move-result-object v0

    if-nez v0, :cond_0

    .line 596
    sget-object v0, Lcom/google/firebase/perf/v1/NetworkRequestMetric$NetworkClientErrorReason;->NETWORK_CLIENT_ERROR_REASON_UNKNOWN:Lcom/google/firebase/perf/v1/NetworkRequestMetric$NetworkClientErrorReason;

    :cond_0
    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getPerfSessions(I)Lcom/google/firebase/perf/v1/PerfSession;
    .locals 1

    .line 1143
    iget-object v0, p0, Lcom/google/firebase/perf/v1/NetworkRequestMetric;->perfSessions_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/firebase/perf/v1/PerfSession;

    return-object p1

    nop

    .array-data 1
    .end array-data
.end method

.method public getPerfSessionsCount()I
    .locals 1

    .line 1128
    iget-object v0, p0, Lcom/google/firebase/perf/v1/NetworkRequestMetric;->perfSessions_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0}, Lcom/google/protobuf/Internal$ProtobufList;->size()I

    move-result v0

    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getPerfSessionsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/firebase/perf/v1/PerfSession;",
            ">;"
        }
    .end annotation

    .line 1098
    iget-object v0, p0, Lcom/google/firebase/perf/v1/NetworkRequestMetric;->perfSessions_:Lcom/google/protobuf/Internal$ProtobufList;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getPerfSessionsOrBuilder(I)Lcom/google/firebase/perf/v1/PerfSessionOrBuilder;
    .locals 1

    .line 1158
    iget-object v0, p0, Lcom/google/firebase/perf/v1/NetworkRequestMetric;->perfSessions_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/firebase/perf/v1/PerfSessionOrBuilder;

    return-object p1

    nop

    .array-data 1
    .end array-data
.end method

.method public getPerfSessionsOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/google/firebase/perf/v1/PerfSessionOrBuilder;",
            ">;"
        }
    .end annotation

    .line 1113
    iget-object v0, p0, Lcom/google/firebase/perf/v1/NetworkRequestMetric;->perfSessions_:Lcom/google/protobuf/Internal$ProtobufList;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getRequestPayloadBytes()J
    .locals 2

    .line 493
    iget-wide v0, p0, Lcom/google/firebase/perf/v1/NetworkRequestMetric;->requestPayloadBytes_:J

    return-wide v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getResponseContentType()Ljava/lang/String;
    .locals 1

    .line 698
    iget-object v0, p0, Lcom/google/firebase/perf/v1/NetworkRequestMetric;->responseContentType_:Ljava/lang/String;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getResponseContentTypeBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 711
    iget-object v0, p0, Lcom/google/firebase/perf/v1/NetworkRequestMetric;->responseContentType_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getResponsePayloadBytes()J
    .locals 2

    .line 543
    iget-wide v0, p0, Lcom/google/firebase/perf/v1/NetworkRequestMetric;->responsePayloadBytes_:J

    return-wide v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getTimeToRequestCompletedUs()J
    .locals 2

    .line 832
    iget-wide v0, p0, Lcom/google/firebase/perf/v1/NetworkRequestMetric;->timeToRequestCompletedUs_:J

    return-wide v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getTimeToResponseCompletedUs()J
    .locals 2

    .line 940
    iget-wide v0, p0, Lcom/google/firebase/perf/v1/NetworkRequestMetric;->timeToResponseCompletedUs_:J

    return-wide v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getTimeToResponseInitiatedUs()J
    .locals 2

    .line 886
    iget-wide v0, p0, Lcom/google/firebase/perf/v1/NetworkRequestMetric;->timeToResponseInitiatedUs_:J

    return-wide v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .line 332
    iget-object v0, p0, Lcom/google/firebase/perf/v1/NetworkRequestMetric;->url_:Ljava/lang/String;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getUrlBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 352
    iget-object v0, p0, Lcom/google/firebase/perf/v1/NetworkRequestMetric;->url_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public hasClientStartTimeUs()Z
    .locals 1

    .line 765
    iget v0, p0, Lcom/google/firebase/perf/v1/NetworkRequestMetric;->bitField0_:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .array-data 1
    .end array-data
.end method

.method public hasHttpMethod()Z
    .locals 1

    .line 427
    iget v0, p0, Lcom/google/firebase/perf/v1/NetworkRequestMetric;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .array-data 1
    .end array-data
.end method

.method public hasHttpResponseCode()Z
    .locals 1

    .line 636
    iget v0, p0, Lcom/google/firebase/perf/v1/NetworkRequestMetric;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .array-data 1
    .end array-data
.end method

.method public hasNetworkClientErrorReason()Z
    .locals 1

    .line 582
    iget v0, p0, Lcom/google/firebase/perf/v1/NetworkRequestMetric;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .array-data 1
    .end array-data
.end method

.method public hasRequestPayloadBytes()Z
    .locals 1

    .line 481
    iget v0, p0, Lcom/google/firebase/perf/v1/NetworkRequestMetric;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .array-data 1
    .end array-data
.end method

.method public hasResponseContentType()Z
    .locals 1

    .line 686
    iget v0, p0, Lcom/google/firebase/perf/v1/NetworkRequestMetric;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .array-data 1
    .end array-data
.end method

.method public hasResponsePayloadBytes()Z
    .locals 1

    .line 531
    iget v0, p0, Lcom/google/firebase/perf/v1/NetworkRequestMetric;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .array-data 1
    .end array-data
.end method

.method public hasTimeToRequestCompletedUs()Z
    .locals 1

    .line 819
    iget v0, p0, Lcom/google/firebase/perf/v1/NetworkRequestMetric;->bitField0_:I

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .array-data 1
    .end array-data
.end method

.method public hasTimeToResponseCompletedUs()Z
    .locals 1

    .line 927
    iget v0, p0, Lcom/google/firebase/perf/v1/NetworkRequestMetric;->bitField0_:I

    and-int/lit16 v0, v0, 0x400

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .array-data 1
    .end array-data
.end method

.method public hasTimeToResponseInitiatedUs()Z
    .locals 1

    .line 873
    iget v0, p0, Lcom/google/firebase/perf/v1/NetworkRequestMetric;->bitField0_:I

    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .array-data 1
    .end array-data
.end method

.method public hasUrl()Z
    .locals 2

    .line 313
    iget v0, p0, Lcom/google/firebase/perf/v1/NetworkRequestMetric;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1

    nop

    .array-data 1
    .end array-data
.end method
