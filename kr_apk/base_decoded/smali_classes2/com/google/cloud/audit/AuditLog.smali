.class public final Lcom/google/cloud/audit/AuditLog;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "AuditLog.java"

# interfaces
.implements Lcom/google/cloud/audit/AuditLogOrBuilder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/cloud/audit/AuditLog$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/google/cloud/audit/AuditLog;",
        "Lcom/google/cloud/audit/AuditLog$Builder;",
        ">;",
        "Lcom/google/cloud/audit/AuditLogOrBuilder;"
    }
.end annotation


# static fields
.field public static final AUTHENTICATION_INFO_FIELD_NUMBER:I = 0x3

.field public static final AUTHORIZATION_INFO_FIELD_NUMBER:I = 0x9

.field private static final DEFAULT_INSTANCE:Lcom/google/cloud/audit/AuditLog;

.field public static final METHOD_NAME_FIELD_NUMBER:I = 0x8

.field public static final NUM_RESPONSE_ITEMS_FIELD_NUMBER:I = 0xc

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/cloud/audit/AuditLog;",
            ">;"
        }
    .end annotation
.end field

.field public static final REQUEST_FIELD_NUMBER:I = 0x10

.field public static final REQUEST_METADATA_FIELD_NUMBER:I = 0x4

.field public static final RESOURCE_NAME_FIELD_NUMBER:I = 0xb

.field public static final RESPONSE_FIELD_NUMBER:I = 0x11

.field public static final SERVICE_DATA_FIELD_NUMBER:I = 0xf

.field public static final SERVICE_NAME_FIELD_NUMBER:I = 0x7

.field public static final STATUS_FIELD_NUMBER:I = 0x2


# instance fields
.field private authenticationInfo_:Lcom/google/cloud/audit/AuthenticationInfo;

.field private authorizationInfo_:Lcom/google/protobuf/Internal$ProtobufList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$ProtobufList<",
            "Lcom/google/cloud/audit/AuthorizationInfo;",
            ">;"
        }
    .end annotation
.end field

.field private methodName_:Ljava/lang/String;

.field private numResponseItems_:J

.field private requestMetadata_:Lcom/google/cloud/audit/RequestMetadata;

.field private request_:Lcom/google/protobuf/Struct;

.field private resourceName_:Ljava/lang/String;

.field private response_:Lcom/google/protobuf/Struct;

.field private serviceData_:Lcom/google/protobuf/Any;

.field private serviceName_:Ljava/lang/String;

.field private status_:Lcom/google/rpc/Status;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 2049
    new-instance v0, Lcom/google/cloud/audit/AuditLog;

    invoke-direct {v0}, Lcom/google/cloud/audit/AuditLog;-><init>()V

    .line 2052
    sput-object v0, Lcom/google/cloud/audit/AuditLog;->DEFAULT_INSTANCE:Lcom/google/cloud/audit/AuditLog;

    .line 2053
    const-class v1, Lcom/google/cloud/audit/AuditLog;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method private constructor <init>()V
    .locals 1

    .line 18
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    const-string v0, ""

    .line 19
    iput-object v0, p0, Lcom/google/cloud/audit/AuditLog;->serviceName_:Ljava/lang/String;

    .line 20
    iput-object v0, p0, Lcom/google/cloud/audit/AuditLog;->methodName_:Ljava/lang/String;

    .line 21
    iput-object v0, p0, Lcom/google/cloud/audit/AuditLog;->resourceName_:Ljava/lang/String;

    .line 22
    invoke-static {}, Lcom/google/cloud/audit/AuditLog;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/cloud/audit/AuditLog;->authorizationInfo_:Lcom/google/protobuf/Internal$ProtobufList;

    return-void

    .array-data 1
    .end array-data
.end method

.method static synthetic access$000()Lcom/google/cloud/audit/AuditLog;
    .locals 1

    .line 13
    sget-object v0, Lcom/google/cloud/audit/AuditLog;->DEFAULT_INSTANCE:Lcom/google/cloud/audit/AuditLog;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method static synthetic access$100(Lcom/google/cloud/audit/AuditLog;Ljava/lang/String;)V
    .locals 0

    .line 13
    invoke-direct {p0, p1}, Lcom/google/cloud/audit/AuditLog;->setServiceName(Ljava/lang/String;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method static synthetic access$1000(Lcom/google/cloud/audit/AuditLog;J)V
    .locals 0

    .line 13
    invoke-direct {p0, p1, p2}, Lcom/google/cloud/audit/AuditLog;->setNumResponseItems(J)V

    return-void

    .array-data 1
    .end array-data
.end method

.method static synthetic access$1100(Lcom/google/cloud/audit/AuditLog;)V
    .locals 0

    .line 13
    invoke-direct {p0}, Lcom/google/cloud/audit/AuditLog;->clearNumResponseItems()V

    return-void

    .array-data 1
    .end array-data
.end method

.method static synthetic access$1200(Lcom/google/cloud/audit/AuditLog;Lcom/google/rpc/Status;)V
    .locals 0

    .line 13
    invoke-direct {p0, p1}, Lcom/google/cloud/audit/AuditLog;->setStatus(Lcom/google/rpc/Status;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method static synthetic access$1300(Lcom/google/cloud/audit/AuditLog;Lcom/google/rpc/Status;)V
    .locals 0

    .line 13
    invoke-direct {p0, p1}, Lcom/google/cloud/audit/AuditLog;->mergeStatus(Lcom/google/rpc/Status;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method static synthetic access$1400(Lcom/google/cloud/audit/AuditLog;)V
    .locals 0

    .line 13
    invoke-direct {p0}, Lcom/google/cloud/audit/AuditLog;->clearStatus()V

    return-void

    .array-data 1
    .end array-data
.end method

.method static synthetic access$1500(Lcom/google/cloud/audit/AuditLog;Lcom/google/cloud/audit/AuthenticationInfo;)V
    .locals 0

    .line 13
    invoke-direct {p0, p1}, Lcom/google/cloud/audit/AuditLog;->setAuthenticationInfo(Lcom/google/cloud/audit/AuthenticationInfo;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method static synthetic access$1600(Lcom/google/cloud/audit/AuditLog;Lcom/google/cloud/audit/AuthenticationInfo;)V
    .locals 0

    .line 13
    invoke-direct {p0, p1}, Lcom/google/cloud/audit/AuditLog;->mergeAuthenticationInfo(Lcom/google/cloud/audit/AuthenticationInfo;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method static synthetic access$1700(Lcom/google/cloud/audit/AuditLog;)V
    .locals 0

    .line 13
    invoke-direct {p0}, Lcom/google/cloud/audit/AuditLog;->clearAuthenticationInfo()V

    return-void

    .array-data 1
    .end array-data
.end method

.method static synthetic access$1800(Lcom/google/cloud/audit/AuditLog;ILcom/google/cloud/audit/AuthorizationInfo;)V
    .locals 0

    .line 13
    invoke-direct {p0, p1, p2}, Lcom/google/cloud/audit/AuditLog;->setAuthorizationInfo(ILcom/google/cloud/audit/AuthorizationInfo;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method static synthetic access$1900(Lcom/google/cloud/audit/AuditLog;Lcom/google/cloud/audit/AuthorizationInfo;)V
    .locals 0

    .line 13
    invoke-direct {p0, p1}, Lcom/google/cloud/audit/AuditLog;->addAuthorizationInfo(Lcom/google/cloud/audit/AuthorizationInfo;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method static synthetic access$200(Lcom/google/cloud/audit/AuditLog;)V
    .locals 0

    .line 13
    invoke-direct {p0}, Lcom/google/cloud/audit/AuditLog;->clearServiceName()V

    return-void

    .array-data 1
    .end array-data
.end method

.method static synthetic access$2000(Lcom/google/cloud/audit/AuditLog;ILcom/google/cloud/audit/AuthorizationInfo;)V
    .locals 0

    .line 13
    invoke-direct {p0, p1, p2}, Lcom/google/cloud/audit/AuditLog;->addAuthorizationInfo(ILcom/google/cloud/audit/AuthorizationInfo;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method static synthetic access$2100(Lcom/google/cloud/audit/AuditLog;Ljava/lang/Iterable;)V
    .locals 0

    .line 13
    invoke-direct {p0, p1}, Lcom/google/cloud/audit/AuditLog;->addAllAuthorizationInfo(Ljava/lang/Iterable;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method static synthetic access$2200(Lcom/google/cloud/audit/AuditLog;)V
    .locals 0

    .line 13
    invoke-direct {p0}, Lcom/google/cloud/audit/AuditLog;->clearAuthorizationInfo()V

    return-void

    .array-data 1
    .end array-data
.end method

.method static synthetic access$2300(Lcom/google/cloud/audit/AuditLog;I)V
    .locals 0

    .line 13
    invoke-direct {p0, p1}, Lcom/google/cloud/audit/AuditLog;->removeAuthorizationInfo(I)V

    return-void

    .array-data 1
    .end array-data
.end method

.method static synthetic access$2400(Lcom/google/cloud/audit/AuditLog;Lcom/google/cloud/audit/RequestMetadata;)V
    .locals 0

    .line 13
    invoke-direct {p0, p1}, Lcom/google/cloud/audit/AuditLog;->setRequestMetadata(Lcom/google/cloud/audit/RequestMetadata;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method static synthetic access$2500(Lcom/google/cloud/audit/AuditLog;Lcom/google/cloud/audit/RequestMetadata;)V
    .locals 0

    .line 13
    invoke-direct {p0, p1}, Lcom/google/cloud/audit/AuditLog;->mergeRequestMetadata(Lcom/google/cloud/audit/RequestMetadata;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method static synthetic access$2600(Lcom/google/cloud/audit/AuditLog;)V
    .locals 0

    .line 13
    invoke-direct {p0}, Lcom/google/cloud/audit/AuditLog;->clearRequestMetadata()V

    return-void

    .array-data 1
    .end array-data
.end method

.method static synthetic access$2700(Lcom/google/cloud/audit/AuditLog;Lcom/google/protobuf/Struct;)V
    .locals 0

    .line 13
    invoke-direct {p0, p1}, Lcom/google/cloud/audit/AuditLog;->setRequest(Lcom/google/protobuf/Struct;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method static synthetic access$2800(Lcom/google/cloud/audit/AuditLog;Lcom/google/protobuf/Struct;)V
    .locals 0

    .line 13
    invoke-direct {p0, p1}, Lcom/google/cloud/audit/AuditLog;->mergeRequest(Lcom/google/protobuf/Struct;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method static synthetic access$2900(Lcom/google/cloud/audit/AuditLog;)V
    .locals 0

    .line 13
    invoke-direct {p0}, Lcom/google/cloud/audit/AuditLog;->clearRequest()V

    return-void

    .array-data 1
    .end array-data
.end method

.method static synthetic access$300(Lcom/google/cloud/audit/AuditLog;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 13
    invoke-direct {p0, p1}, Lcom/google/cloud/audit/AuditLog;->setServiceNameBytes(Lcom/google/protobuf/ByteString;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method static synthetic access$3000(Lcom/google/cloud/audit/AuditLog;Lcom/google/protobuf/Struct;)V
    .locals 0

    .line 13
    invoke-direct {p0, p1}, Lcom/google/cloud/audit/AuditLog;->setResponse(Lcom/google/protobuf/Struct;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method static synthetic access$3100(Lcom/google/cloud/audit/AuditLog;Lcom/google/protobuf/Struct;)V
    .locals 0

    .line 13
    invoke-direct {p0, p1}, Lcom/google/cloud/audit/AuditLog;->mergeResponse(Lcom/google/protobuf/Struct;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method static synthetic access$3200(Lcom/google/cloud/audit/AuditLog;)V
    .locals 0

    .line 13
    invoke-direct {p0}, Lcom/google/cloud/audit/AuditLog;->clearResponse()V

    return-void

    .array-data 1
    .end array-data
.end method

.method static synthetic access$3300(Lcom/google/cloud/audit/AuditLog;Lcom/google/protobuf/Any;)V
    .locals 0

    .line 13
    invoke-direct {p0, p1}, Lcom/google/cloud/audit/AuditLog;->setServiceData(Lcom/google/protobuf/Any;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method static synthetic access$3400(Lcom/google/cloud/audit/AuditLog;Lcom/google/protobuf/Any;)V
    .locals 0

    .line 13
    invoke-direct {p0, p1}, Lcom/google/cloud/audit/AuditLog;->mergeServiceData(Lcom/google/protobuf/Any;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method static synthetic access$3500(Lcom/google/cloud/audit/AuditLog;)V
    .locals 0

    .line 13
    invoke-direct {p0}, Lcom/google/cloud/audit/AuditLog;->clearServiceData()V

    return-void

    .array-data 1
    .end array-data
.end method

.method static synthetic access$400(Lcom/google/cloud/audit/AuditLog;Ljava/lang/String;)V
    .locals 0

    .line 13
    invoke-direct {p0, p1}, Lcom/google/cloud/audit/AuditLog;->setMethodName(Ljava/lang/String;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method static synthetic access$500(Lcom/google/cloud/audit/AuditLog;)V
    .locals 0

    .line 13
    invoke-direct {p0}, Lcom/google/cloud/audit/AuditLog;->clearMethodName()V

    return-void

    .array-data 1
    .end array-data
.end method

.method static synthetic access$600(Lcom/google/cloud/audit/AuditLog;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 13
    invoke-direct {p0, p1}, Lcom/google/cloud/audit/AuditLog;->setMethodNameBytes(Lcom/google/protobuf/ByteString;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method static synthetic access$700(Lcom/google/cloud/audit/AuditLog;Ljava/lang/String;)V
    .locals 0

    .line 13
    invoke-direct {p0, p1}, Lcom/google/cloud/audit/AuditLog;->setResourceName(Ljava/lang/String;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method static synthetic access$800(Lcom/google/cloud/audit/AuditLog;)V
    .locals 0

    .line 13
    invoke-direct {p0}, Lcom/google/cloud/audit/AuditLog;->clearResourceName()V

    return-void

    .array-data 1
    .end array-data
.end method

.method static synthetic access$900(Lcom/google/cloud/audit/AuditLog;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 13
    invoke-direct {p0, p1}, Lcom/google/cloud/audit/AuditLog;->setResourceNameBytes(Lcom/google/protobuf/ByteString;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method private addAllAuthorizationInfo(Ljava/lang/Iterable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/google/cloud/audit/AuthorizationInfo;",
            ">;)V"
        }
    .end annotation

    .line 573
    invoke-direct {p0}, Lcom/google/cloud/audit/AuditLog;->ensureAuthorizationInfoIsMutable()V

    .line 574
    iget-object v0, p0, Lcom/google/cloud/audit/AuditLog;->authorizationInfo_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMessageLite;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method private addAuthorizationInfo(ILcom/google/cloud/audit/AuthorizationInfo;)V
    .locals 1

    .line 558
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 559
    invoke-direct {p0}, Lcom/google/cloud/audit/AuditLog;->ensureAuthorizationInfoIsMutable()V

    .line 560
    iget-object v0, p0, Lcom/google/cloud/audit/AuditLog;->authorizationInfo_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/Internal$ProtobufList;->add(ILjava/lang/Object;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method private addAuthorizationInfo(Lcom/google/cloud/audit/AuthorizationInfo;)V
    .locals 1

    .line 543
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 544
    invoke-direct {p0}, Lcom/google/cloud/audit/AuditLog;->ensureAuthorizationInfoIsMutable()V

    .line 545
    iget-object v0, p0, Lcom/google/cloud/audit/AuditLog;->authorizationInfo_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->add(Ljava/lang/Object;)Z

    return-void

    .array-data 1
    .end array-data
.end method

.method private clearAuthenticationInfo()V
    .locals 1

    const/4 v0, 0x0

    .line 439
    iput-object v0, p0, Lcom/google/cloud/audit/AuditLog;->authenticationInfo_:Lcom/google/cloud/audit/AuthenticationInfo;

    return-void

    .array-data 1
    .end array-data
.end method

.method private clearAuthorizationInfo()V
    .locals 1

    .line 587
    invoke-static {}, Lcom/google/cloud/audit/AuditLog;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/cloud/audit/AuditLog;->authorizationInfo_:Lcom/google/protobuf/Internal$ProtobufList;

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method private clearMethodName()V
    .locals 1

    .line 162
    invoke-static {}, Lcom/google/cloud/audit/AuditLog;->getDefaultInstance()Lcom/google/cloud/audit/AuditLog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/cloud/audit/AuditLog;->getMethodName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/cloud/audit/AuditLog;->methodName_:Ljava/lang/String;

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method private clearNumResponseItems()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 308
    iput-wide v0, p0, Lcom/google/cloud/audit/AuditLog;->numResponseItems_:J

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method private clearRequest()V
    .locals 1

    const/4 v0, 0x0

    .line 756
    iput-object v0, p0, Lcom/google/cloud/audit/AuditLog;->request_:Lcom/google/protobuf/Struct;

    return-void

    .array-data 1
    .end array-data
.end method

.method private clearRequestMetadata()V
    .locals 1

    const/4 v0, 0x0

    .line 665
    iput-object v0, p0, Lcom/google/cloud/audit/AuditLog;->requestMetadata_:Lcom/google/cloud/audit/RequestMetadata;

    return-void

    .array-data 1
    .end array-data
.end method

.method private clearResourceName()V
    .locals 1

    .line 249
    invoke-static {}, Lcom/google/cloud/audit/AuditLog;->getDefaultInstance()Lcom/google/cloud/audit/AuditLog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/cloud/audit/AuditLog;->getResourceName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/cloud/audit/AuditLog;->resourceName_:Ljava/lang/String;

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method private clearResponse()V
    .locals 1

    const/4 v0, 0x0

    .line 847
    iput-object v0, p0, Lcom/google/cloud/audit/AuditLog;->response_:Lcom/google/protobuf/Struct;

    return-void

    .array-data 1
    .end array-data
.end method

.method private clearServiceData()V
    .locals 1

    const/4 v0, 0x0

    .line 918
    iput-object v0, p0, Lcom/google/cloud/audit/AuditLog;->serviceData_:Lcom/google/protobuf/Any;

    return-void

    .array-data 1
    .end array-data
.end method

.method private clearServiceName()V
    .locals 1

    .line 78
    invoke-static {}, Lcom/google/cloud/audit/AuditLog;->getDefaultInstance()Lcom/google/cloud/audit/AuditLog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/cloud/audit/AuditLog;->getServiceName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/cloud/audit/AuditLog;->serviceName_:Ljava/lang/String;

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method private clearStatus()V
    .locals 1

    const/4 v0, 0x0

    .line 373
    iput-object v0, p0, Lcom/google/cloud/audit/AuditLog;->status_:Lcom/google/rpc/Status;

    return-void

    .array-data 1
    .end array-data
.end method

.method private ensureAuthorizationInfoIsMutable()V
    .locals 2

    .line 511
    iget-object v0, p0, Lcom/google/cloud/audit/AuditLog;->authorizationInfo_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 512
    invoke-interface {v0}, Lcom/google/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result v1

    if-nez v1, :cond_0

    .line 514
    invoke-static {v0}, Lcom/google/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/google/protobuf/Internal$ProtobufList;)Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/cloud/audit/AuditLog;->authorizationInfo_:Lcom/google/protobuf/Internal$ProtobufList;

    :cond_0
    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public static getDefaultInstance()Lcom/google/cloud/audit/AuditLog;
    .locals 1

    .line 2058
    sget-object v0, Lcom/google/cloud/audit/AuditLog;->DEFAULT_INSTANCE:Lcom/google/cloud/audit/AuditLog;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method private mergeAuthenticationInfo(Lcom/google/cloud/audit/AuthenticationInfo;)V
    .locals 2

    .line 422
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 423
    iget-object v0, p0, Lcom/google/cloud/audit/AuditLog;->authenticationInfo_:Lcom/google/cloud/audit/AuthenticationInfo;

    if-eqz v0, :cond_0

    .line 424
    invoke-static {}, Lcom/google/cloud/audit/AuthenticationInfo;->getDefaultInstance()Lcom/google/cloud/audit/AuthenticationInfo;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 425
    iget-object v0, p0, Lcom/google/cloud/audit/AuditLog;->authenticationInfo_:Lcom/google/cloud/audit/AuthenticationInfo;

    .line 426
    invoke-static {v0}, Lcom/google/cloud/audit/AuthenticationInfo;->newBuilder(Lcom/google/cloud/audit/AuthenticationInfo;)Lcom/google/cloud/audit/AuthenticationInfo$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/cloud/audit/AuthenticationInfo$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/cloud/audit/AuthenticationInfo$Builder;

    invoke-virtual {p1}, Lcom/google/cloud/audit/AuthenticationInfo$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/cloud/audit/AuthenticationInfo;

    iput-object p1, p0, Lcom/google/cloud/audit/AuditLog;->authenticationInfo_:Lcom/google/cloud/audit/AuthenticationInfo;

    goto :goto_0

    .line 428
    :cond_0
    iput-object p1, p0, Lcom/google/cloud/audit/AuditLog;->authenticationInfo_:Lcom/google/cloud/audit/AuthenticationInfo;

    :goto_0
    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method private mergeRequest(Lcom/google/protobuf/Struct;)V
    .locals 2

    .line 734
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 735
    iget-object v0, p0, Lcom/google/cloud/audit/AuditLog;->request_:Lcom/google/protobuf/Struct;

    if-eqz v0, :cond_0

    .line 736
    invoke-static {}, Lcom/google/protobuf/Struct;->getDefaultInstance()Lcom/google/protobuf/Struct;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 737
    iget-object v0, p0, Lcom/google/cloud/audit/AuditLog;->request_:Lcom/google/protobuf/Struct;

    .line 738
    invoke-static {v0}, Lcom/google/protobuf/Struct;->newBuilder(Lcom/google/protobuf/Struct;)Lcom/google/protobuf/Struct$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/Struct$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/Struct$Builder;

    invoke-virtual {p1}, Lcom/google/protobuf/Struct$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/Struct;

    iput-object p1, p0, Lcom/google/cloud/audit/AuditLog;->request_:Lcom/google/protobuf/Struct;

    goto :goto_0

    .line 740
    :cond_0
    iput-object p1, p0, Lcom/google/cloud/audit/AuditLog;->request_:Lcom/google/protobuf/Struct;

    :goto_0
    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method private mergeRequestMetadata(Lcom/google/cloud/audit/RequestMetadata;)V
    .locals 2

    .line 648
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 649
    iget-object v0, p0, Lcom/google/cloud/audit/AuditLog;->requestMetadata_:Lcom/google/cloud/audit/RequestMetadata;

    if-eqz v0, :cond_0

    .line 650
    invoke-static {}, Lcom/google/cloud/audit/RequestMetadata;->getDefaultInstance()Lcom/google/cloud/audit/RequestMetadata;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 651
    iget-object v0, p0, Lcom/google/cloud/audit/AuditLog;->requestMetadata_:Lcom/google/cloud/audit/RequestMetadata;

    .line 652
    invoke-static {v0}, Lcom/google/cloud/audit/RequestMetadata;->newBuilder(Lcom/google/cloud/audit/RequestMetadata;)Lcom/google/cloud/audit/RequestMetadata$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/cloud/audit/RequestMetadata$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/cloud/audit/RequestMetadata$Builder;

    invoke-virtual {p1}, Lcom/google/cloud/audit/RequestMetadata$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/cloud/audit/RequestMetadata;

    iput-object p1, p0, Lcom/google/cloud/audit/AuditLog;->requestMetadata_:Lcom/google/cloud/audit/RequestMetadata;

    goto :goto_0

    .line 654
    :cond_0
    iput-object p1, p0, Lcom/google/cloud/audit/AuditLog;->requestMetadata_:Lcom/google/cloud/audit/RequestMetadata;

    :goto_0
    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method private mergeResponse(Lcom/google/protobuf/Struct;)V
    .locals 2

    .line 825
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 826
    iget-object v0, p0, Lcom/google/cloud/audit/AuditLog;->response_:Lcom/google/protobuf/Struct;

    if-eqz v0, :cond_0

    .line 827
    invoke-static {}, Lcom/google/protobuf/Struct;->getDefaultInstance()Lcom/google/protobuf/Struct;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 828
    iget-object v0, p0, Lcom/google/cloud/audit/AuditLog;->response_:Lcom/google/protobuf/Struct;

    .line 829
    invoke-static {v0}, Lcom/google/protobuf/Struct;->newBuilder(Lcom/google/protobuf/Struct;)Lcom/google/protobuf/Struct$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/Struct$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/Struct$Builder;

    invoke-virtual {p1}, Lcom/google/protobuf/Struct$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/Struct;

    iput-object p1, p0, Lcom/google/cloud/audit/AuditLog;->response_:Lcom/google/protobuf/Struct;

    goto :goto_0

    .line 831
    :cond_0
    iput-object p1, p0, Lcom/google/cloud/audit/AuditLog;->response_:Lcom/google/protobuf/Struct;

    :goto_0
    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method private mergeServiceData(Lcom/google/protobuf/Any;)V
    .locals 2

    .line 900
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 901
    iget-object v0, p0, Lcom/google/cloud/audit/AuditLog;->serviceData_:Lcom/google/protobuf/Any;

    if-eqz v0, :cond_0

    .line 902
    invoke-static {}, Lcom/google/protobuf/Any;->getDefaultInstance()Lcom/google/protobuf/Any;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 903
    iget-object v0, p0, Lcom/google/cloud/audit/AuditLog;->serviceData_:Lcom/google/protobuf/Any;

    .line 904
    invoke-static {v0}, Lcom/google/protobuf/Any;->newBuilder(Lcom/google/protobuf/Any;)Lcom/google/protobuf/Any$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/Any$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/Any$Builder;

    invoke-virtual {p1}, Lcom/google/protobuf/Any$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/Any;

    iput-object p1, p0, Lcom/google/cloud/audit/AuditLog;->serviceData_:Lcom/google/protobuf/Any;

    goto :goto_0

    .line 906
    :cond_0
    iput-object p1, p0, Lcom/google/cloud/audit/AuditLog;->serviceData_:Lcom/google/protobuf/Any;

    :goto_0
    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method private mergeStatus(Lcom/google/rpc/Status;)V
    .locals 2

    .line 356
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 357
    iget-object v0, p0, Lcom/google/cloud/audit/AuditLog;->status_:Lcom/google/rpc/Status;

    if-eqz v0, :cond_0

    .line 358
    invoke-static {}, Lcom/google/rpc/Status;->getDefaultInstance()Lcom/google/rpc/Status;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 359
    iget-object v0, p0, Lcom/google/cloud/audit/AuditLog;->status_:Lcom/google/rpc/Status;

    .line 360
    invoke-static {v0}, Lcom/google/rpc/Status;->newBuilder(Lcom/google/rpc/Status;)Lcom/google/rpc/Status$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/rpc/Status$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/rpc/Status$Builder;

    invoke-virtual {p1}, Lcom/google/rpc/Status$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/rpc/Status;

    iput-object p1, p0, Lcom/google/cloud/audit/AuditLog;->status_:Lcom/google/rpc/Status;

    goto :goto_0

    .line 362
    :cond_0
    iput-object p1, p0, Lcom/google/cloud/audit/AuditLog;->status_:Lcom/google/rpc/Status;

    :goto_0
    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public static newBuilder()Lcom/google/cloud/audit/AuditLog$Builder;
    .locals 1

    .line 997
    sget-object v0, Lcom/google/cloud/audit/AuditLog;->DEFAULT_INSTANCE:Lcom/google/cloud/audit/AuditLog;

    invoke-virtual {v0}, Lcom/google/cloud/audit/AuditLog;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/cloud/audit/AuditLog$Builder;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public static newBuilder(Lcom/google/cloud/audit/AuditLog;)Lcom/google/cloud/audit/AuditLog$Builder;
    .locals 1

    .line 1000
    sget-object v0, Lcom/google/cloud/audit/AuditLog;->DEFAULT_INSTANCE:Lcom/google/cloud/audit/AuditLog;

    invoke-virtual {v0, p0}, Lcom/google/cloud/audit/AuditLog;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lcom/google/cloud/audit/AuditLog$Builder;

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/cloud/audit/AuditLog;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 974
    sget-object v0, Lcom/google/cloud/audit/AuditLog;->DEFAULT_INSTANCE:Lcom/google/cloud/audit/AuditLog;

    invoke-static {v0, p0}, Lcom/google/cloud/audit/AuditLog;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/cloud/audit/AuditLog;

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/cloud/audit/AuditLog;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 980
    sget-object v0, Lcom/google/cloud/audit/AuditLog;->DEFAULT_INSTANCE:Lcom/google/cloud/audit/AuditLog;

    invoke-static {v0, p0, p1}, Lcom/google/cloud/audit/AuditLog;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/cloud/audit/AuditLog;

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/cloud/audit/AuditLog;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 938
    sget-object v0, Lcom/google/cloud/audit/AuditLog;->DEFAULT_INSTANCE:Lcom/google/cloud/audit/AuditLog;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/cloud/audit/AuditLog;

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/cloud/audit/AuditLog;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 945
    sget-object v0, Lcom/google/cloud/audit/AuditLog;->DEFAULT_INSTANCE:Lcom/google/cloud/audit/AuditLog;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/cloud/audit/AuditLog;

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/cloud/audit/AuditLog;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 985
    sget-object v0, Lcom/google/cloud/audit/AuditLog;->DEFAULT_INSTANCE:Lcom/google/cloud/audit/AuditLog;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/cloud/audit/AuditLog;

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/cloud/audit/AuditLog;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 992
    sget-object v0, Lcom/google/cloud/audit/AuditLog;->DEFAULT_INSTANCE:Lcom/google/cloud/audit/AuditLog;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/cloud/audit/AuditLog;

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/cloud/audit/AuditLog;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 962
    sget-object v0, Lcom/google/cloud/audit/AuditLog;->DEFAULT_INSTANCE:Lcom/google/cloud/audit/AuditLog;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/cloud/audit/AuditLog;

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/cloud/audit/AuditLog;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 969
    sget-object v0, Lcom/google/cloud/audit/AuditLog;->DEFAULT_INSTANCE:Lcom/google/cloud/audit/AuditLog;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/cloud/audit/AuditLog;

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/google/cloud/audit/AuditLog;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 925
    sget-object v0, Lcom/google/cloud/audit/AuditLog;->DEFAULT_INSTANCE:Lcom/google/cloud/audit/AuditLog;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/cloud/audit/AuditLog;

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/cloud/audit/AuditLog;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 932
    sget-object v0, Lcom/google/cloud/audit/AuditLog;->DEFAULT_INSTANCE:Lcom/google/cloud/audit/AuditLog;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/cloud/audit/AuditLog;

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static parseFrom([B)Lcom/google/cloud/audit/AuditLog;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 950
    sget-object v0, Lcom/google/cloud/audit/AuditLog;->DEFAULT_INSTANCE:Lcom/google/cloud/audit/AuditLog;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/cloud/audit/AuditLog;

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/cloud/audit/AuditLog;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 957
    sget-object v0, Lcom/google/cloud/audit/AuditLog;->DEFAULT_INSTANCE:Lcom/google/cloud/audit/AuditLog;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/cloud/audit/AuditLog;

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
            "Lcom/google/cloud/audit/AuditLog;",
            ">;"
        }
    .end annotation

    .line 2064
    sget-object v0, Lcom/google/cloud/audit/AuditLog;->DEFAULT_INSTANCE:Lcom/google/cloud/audit/AuditLog;

    invoke-virtual {v0}, Lcom/google/cloud/audit/AuditLog;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method private removeAuthorizationInfo(I)V
    .locals 1

    .line 599
    invoke-direct {p0}, Lcom/google/cloud/audit/AuditLog;->ensureAuthorizationInfoIsMutable()V

    .line 600
    iget-object v0, p0, Lcom/google/cloud/audit/AuditLog;->authorizationInfo_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->remove(I)Ljava/lang/Object;

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method private setAuthenticationInfo(Lcom/google/cloud/audit/AuthenticationInfo;)V
    .locals 0

    .line 409
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 410
    iput-object p1, p0, Lcom/google/cloud/audit/AuditLog;->authenticationInfo_:Lcom/google/cloud/audit/AuthenticationInfo;

    return-void

    .array-data 1
    .end array-data
.end method

.method private setAuthorizationInfo(ILcom/google/cloud/audit/AuthorizationInfo;)V
    .locals 1

    .line 529
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 530
    invoke-direct {p0}, Lcom/google/cloud/audit/AuditLog;->ensureAuthorizationInfoIsMutable()V

    .line 531
    iget-object v0, p0, Lcom/google/cloud/audit/AuditLog;->authorizationInfo_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/Internal$ProtobufList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void

    .array-data 1
    .end array-data
.end method

.method private setMethodName(Ljava/lang/String;)V
    .locals 0

    .line 145
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 147
    iput-object p1, p0, Lcom/google/cloud/audit/AuditLog;->methodName_:Ljava/lang/String;

    return-void

    .array-data 1
    .end array-data
.end method

.method private setMethodNameBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 178
    invoke-static {p1}, Lcom/google/cloud/audit/AuditLog;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 179
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/cloud/audit/AuditLog;->methodName_:Ljava/lang/String;

    return-void

    .array-data 1
    .end array-data
.end method

.method private setNumResponseItems(J)V
    .locals 0

    .line 296
    iput-wide p1, p0, Lcom/google/cloud/audit/AuditLog;->numResponseItems_:J

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method private setRequest(Lcom/google/protobuf/Struct;)V
    .locals 0

    .line 716
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 717
    iput-object p1, p0, Lcom/google/cloud/audit/AuditLog;->request_:Lcom/google/protobuf/Struct;

    return-void

    .array-data 1
    .end array-data
.end method

.method private setRequestMetadata(Lcom/google/cloud/audit/RequestMetadata;)V
    .locals 0

    .line 635
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 636
    iput-object p1, p0, Lcom/google/cloud/audit/AuditLog;->requestMetadata_:Lcom/google/cloud/audit/RequestMetadata;

    return-void

    .array-data 1
    .end array-data
.end method

.method private setResourceName(Ljava/lang/String;)V
    .locals 0

    .line 232
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 234
    iput-object p1, p0, Lcom/google/cloud/audit/AuditLog;->resourceName_:Ljava/lang/String;

    return-void

    .array-data 1
    .end array-data
.end method

.method private setResourceNameBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 265
    invoke-static {p1}, Lcom/google/cloud/audit/AuditLog;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 266
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/cloud/audit/AuditLog;->resourceName_:Ljava/lang/String;

    return-void

    .array-data 1
    .end array-data
.end method

.method private setResponse(Lcom/google/protobuf/Struct;)V
    .locals 0

    .line 807
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 808
    iput-object p1, p0, Lcom/google/cloud/audit/AuditLog;->response_:Lcom/google/protobuf/Struct;

    return-void

    .array-data 1
    .end array-data
.end method

.method private setServiceData(Lcom/google/protobuf/Any;)V
    .locals 0

    .line 886
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 887
    iput-object p1, p0, Lcom/google/cloud/audit/AuditLog;->serviceData_:Lcom/google/protobuf/Any;

    return-void

    .array-data 1
    .end array-data
.end method

.method private setServiceName(Ljava/lang/String;)V
    .locals 0

    .line 64
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 66
    iput-object p1, p0, Lcom/google/cloud/audit/AuditLog;->serviceName_:Ljava/lang/String;

    return-void

    .array-data 1
    .end array-data
.end method

.method private setServiceNameBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 91
    invoke-static {p1}, Lcom/google/cloud/audit/AuditLog;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 92
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/cloud/audit/AuditLog;->serviceName_:Ljava/lang/String;

    return-void

    .array-data 1
    .end array-data
.end method

.method private setStatus(Lcom/google/rpc/Status;)V
    .locals 0

    .line 343
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 344
    iput-object p1, p0, Lcom/google/cloud/audit/AuditLog;->status_:Lcom/google/rpc/Status;

    return-void

    .array-data 1
    .end array-data
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1989
    sget-object p2, Lcom/google/cloud/audit/AuditLog$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x1

    const/4 p3, 0x0

    packed-switch p1, :pswitch_data_0

    .line 2042
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p3

    .line 2036
    :pswitch_1
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 2021
    :pswitch_2
    sget-object p1, Lcom/google/cloud/audit/AuditLog;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    .line 2023
    const-class p2, Lcom/google/cloud/audit/AuditLog;

    monitor-enter p2

    .line 2024
    :try_start_0
    sget-object p1, Lcom/google/cloud/audit/AuditLog;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_0

    .line 2026
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lcom/google/cloud/audit/AuditLog;->DEFAULT_INSTANCE:Lcom/google/cloud/audit/AuditLog;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 2029
    sput-object p1, Lcom/google/cloud/audit/AuditLog;->PARSER:Lcom/google/protobuf/Parser;

    .line 2031
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

    .line 2018
    :pswitch_3
    sget-object p1, Lcom/google/cloud/audit/AuditLog;->DEFAULT_INSTANCE:Lcom/google/cloud/audit/AuditLog;

    return-object p1

    :pswitch_4
    const/16 p1, 0xc

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v0, "status_"

    aput-object v0, p1, p3

    const-string p3, "authenticationInfo_"

    aput-object p3, p1, p2

    const/4 p2, 0x2

    const-string p3, "requestMetadata_"

    aput-object p3, p1, p2

    const/4 p2, 0x3

    const-string p3, "serviceName_"

    aput-object p3, p1, p2

    const/4 p2, 0x4

    const-string p3, "methodName_"

    aput-object p3, p1, p2

    const/4 p2, 0x5

    const-string p3, "authorizationInfo_"

    aput-object p3, p1, p2

    const/4 p2, 0x6

    .line 1997
    const-class p3, Lcom/google/cloud/audit/AuthorizationInfo;

    aput-object p3, p1, p2

    const/4 p2, 0x7

    const-string p3, "resourceName_"

    aput-object p3, p1, p2

    const/16 p2, 0x8

    const-string p3, "numResponseItems_"

    aput-object p3, p1, p2

    const/16 p2, 0x9

    const-string p3, "serviceData_"

    aput-object p3, p1, p2

    const/16 p2, 0xa

    const-string p3, "request_"

    aput-object p3, p1, p2

    const/16 p2, 0xb

    const-string p3, "response_"

    aput-object p3, p1, p2

    const-string p2, "\u0000\u000b\u0000\u0000\u0002\u0011\u000b\u0000\u0001\u0000\u0002\t\u0003\t\u0004\t\u0007\u0208\u0008\u0208\t\u001b\u000b\u0208\u000c\u0002\u000f\t\u0010\t\u0011\t"

    .line 2014
    sget-object p3, Lcom/google/cloud/audit/AuditLog;->DEFAULT_INSTANCE:Lcom/google/cloud/audit/AuditLog;

    invoke-static {p3, p2, p1}, Lcom/google/cloud/audit/AuditLog;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 1994
    :pswitch_5
    new-instance p1, Lcom/google/cloud/audit/AuditLog$Builder;

    invoke-direct {p1, p3}, Lcom/google/cloud/audit/AuditLog$Builder;-><init>(Lcom/google/cloud/audit/AuditLog$1;)V

    return-object p1

    .line 1991
    :pswitch_6
    new-instance p1, Lcom/google/cloud/audit/AuditLog;

    invoke-direct {p1}, Lcom/google/cloud/audit/AuditLog;-><init>()V

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

.method public getAuthenticationInfo()Lcom/google/cloud/audit/AuthenticationInfo;
    .locals 1

    .line 399
    iget-object v0, p0, Lcom/google/cloud/audit/AuditLog;->authenticationInfo_:Lcom/google/cloud/audit/AuthenticationInfo;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/cloud/audit/AuthenticationInfo;->getDefaultInstance()Lcom/google/cloud/audit/AuthenticationInfo;

    move-result-object v0

    :cond_0
    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getAuthorizationInfo(I)Lcom/google/cloud/audit/AuthorizationInfo;
    .locals 1

    .line 495
    iget-object v0, p0, Lcom/google/cloud/audit/AuditLog;->authorizationInfo_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/cloud/audit/AuthorizationInfo;

    return-object p1

    nop

    .array-data 1
    .end array-data
.end method

.method public getAuthorizationInfoCount()I
    .locals 1

    .line 482
    iget-object v0, p0, Lcom/google/cloud/audit/AuditLog;->authorizationInfo_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0}, Lcom/google/protobuf/Internal$ProtobufList;->size()I

    move-result v0

    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getAuthorizationInfoList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/cloud/audit/AuthorizationInfo;",
            ">;"
        }
    .end annotation

    .line 456
    iget-object v0, p0, Lcom/google/cloud/audit/AuditLog;->authorizationInfo_:Lcom/google/protobuf/Internal$ProtobufList;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getAuthorizationInfoOrBuilder(I)Lcom/google/cloud/audit/AuthorizationInfoOrBuilder;
    .locals 1

    .line 508
    iget-object v0, p0, Lcom/google/cloud/audit/AuditLog;->authorizationInfo_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/cloud/audit/AuthorizationInfoOrBuilder;

    return-object p1

    nop

    .array-data 1
    .end array-data
.end method

.method public getAuthorizationInfoOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/google/cloud/audit/AuthorizationInfoOrBuilder;",
            ">;"
        }
    .end annotation

    .line 469
    iget-object v0, p0, Lcom/google/cloud/audit/AuditLog;->authorizationInfo_:Lcom/google/protobuf/Internal$ProtobufList;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getMethodName()Ljava/lang/String;
    .locals 1

    .line 112
    iget-object v0, p0, Lcom/google/cloud/audit/AuditLog;->methodName_:Ljava/lang/String;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getMethodNameBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 129
    iget-object v0, p0, Lcom/google/cloud/audit/AuditLog;->methodName_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getNumResponseItems()J
    .locals 2

    .line 283
    iget-wide v0, p0, Lcom/google/cloud/audit/AuditLog;->numResponseItems_:J

    return-wide v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getRequest()Lcom/google/protobuf/Struct;
    .locals 1

    .line 701
    iget-object v0, p0, Lcom/google/cloud/audit/AuditLog;->request_:Lcom/google/protobuf/Struct;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/protobuf/Struct;->getDefaultInstance()Lcom/google/protobuf/Struct;

    move-result-object v0

    :cond_0
    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getRequestMetadata()Lcom/google/cloud/audit/RequestMetadata;
    .locals 1

    .line 625
    iget-object v0, p0, Lcom/google/cloud/audit/AuditLog;->requestMetadata_:Lcom/google/cloud/audit/RequestMetadata;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/cloud/audit/RequestMetadata;->getDefaultInstance()Lcom/google/cloud/audit/RequestMetadata;

    move-result-object v0

    :cond_0
    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getResourceName()Ljava/lang/String;
    .locals 1

    .line 199
    iget-object v0, p0, Lcom/google/cloud/audit/AuditLog;->resourceName_:Ljava/lang/String;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getResourceNameBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 216
    iget-object v0, p0, Lcom/google/cloud/audit/AuditLog;->resourceName_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getResponse()Lcom/google/protobuf/Struct;
    .locals 1

    .line 792
    iget-object v0, p0, Lcom/google/cloud/audit/AuditLog;->response_:Lcom/google/protobuf/Struct;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/protobuf/Struct;->getDefaultInstance()Lcom/google/protobuf/Struct;

    move-result-object v0

    :cond_0
    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getServiceData()Lcom/google/protobuf/Any;
    .locals 1

    .line 875
    iget-object v0, p0, Lcom/google/cloud/audit/AuditLog;->serviceData_:Lcom/google/protobuf/Any;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/protobuf/Any;->getDefaultInstance()Lcom/google/protobuf/Any;

    move-result-object v0

    :cond_0
    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getServiceName()Ljava/lang/String;
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/google/cloud/audit/AuditLog;->serviceName_:Ljava/lang/String;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getServiceNameBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/google/cloud/audit/AuditLog;->serviceName_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getStatus()Lcom/google/rpc/Status;
    .locals 1

    .line 333
    iget-object v0, p0, Lcom/google/cloud/audit/AuditLog;->status_:Lcom/google/rpc/Status;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/rpc/Status;->getDefaultInstance()Lcom/google/rpc/Status;

    move-result-object v0

    :cond_0
    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public hasAuthenticationInfo()Z
    .locals 1

    .line 388
    iget-object v0, p0, Lcom/google/cloud/audit/AuditLog;->authenticationInfo_:Lcom/google/cloud/audit/AuthenticationInfo;

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

.method public hasRequest()Z
    .locals 1

    .line 685
    iget-object v0, p0, Lcom/google/cloud/audit/AuditLog;->request_:Lcom/google/protobuf/Struct;

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

.method public hasRequestMetadata()Z
    .locals 1

    .line 614
    iget-object v0, p0, Lcom/google/cloud/audit/AuditLog;->requestMetadata_:Lcom/google/cloud/audit/RequestMetadata;

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

.method public hasResponse()Z
    .locals 1

    .line 776
    iget-object v0, p0, Lcom/google/cloud/audit/AuditLog;->response_:Lcom/google/protobuf/Struct;

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

.method public hasServiceData()Z
    .locals 1

    .line 863
    iget-object v0, p0, Lcom/google/cloud/audit/AuditLog;->serviceData_:Lcom/google/protobuf/Any;

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

.method public hasStatus()Z
    .locals 1

    .line 322
    iget-object v0, p0, Lcom/google/cloud/audit/AuditLog;->status_:Lcom/google/rpc/Status;

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
