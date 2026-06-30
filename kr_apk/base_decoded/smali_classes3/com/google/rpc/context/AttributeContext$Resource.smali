.class public final Lcom/google/rpc/context/AttributeContext$Resource;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "AttributeContext.java"

# interfaces
.implements Lcom/google/rpc/context/AttributeContext$ResourceOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/rpc/context/AttributeContext;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Resource"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/rpc/context/AttributeContext$Resource$Builder;,
        Lcom/google/rpc/context/AttributeContext$Resource$LabelsDefaultEntryHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/google/rpc/context/AttributeContext$Resource;",
        "Lcom/google/rpc/context/AttributeContext$Resource$Builder;",
        ">;",
        "Lcom/google/rpc/context/AttributeContext$ResourceOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/google/rpc/context/AttributeContext$Resource;

.field public static final LABELS_FIELD_NUMBER:I = 0x4

.field public static final NAME_FIELD_NUMBER:I = 0x2

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/rpc/context/AttributeContext$Resource;",
            ">;"
        }
    .end annotation
.end field

.field public static final SERVICE_FIELD_NUMBER:I = 0x1

.field public static final TYPE_FIELD_NUMBER:I = 0x3


# instance fields
.field private labels_:Lcom/google/protobuf/MapFieldLite;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/MapFieldLite<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private name_:Ljava/lang/String;

.field private service_:Ljava/lang/String;

.field private type_:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 8183
    new-instance v0, Lcom/google/rpc/context/AttributeContext$Resource;

    invoke-direct {v0}, Lcom/google/rpc/context/AttributeContext$Resource;-><init>()V

    .line 8186
    sput-object v0, Lcom/google/rpc/context/AttributeContext$Resource;->DEFAULT_INSTANCE:Lcom/google/rpc/context/AttributeContext$Resource;

    .line 8187
    const-class v1, Lcom/google/rpc/context/AttributeContext$Resource;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method private constructor <init>()V
    .locals 1

    .line 7228
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 7512
    invoke-static {}, Lcom/google/protobuf/MapFieldLite;->emptyMapField()Lcom/google/protobuf/MapFieldLite;

    move-result-object v0

    iput-object v0, p0, Lcom/google/rpc/context/AttributeContext$Resource;->labels_:Lcom/google/protobuf/MapFieldLite;

    const-string v0, ""

    .line 7229
    iput-object v0, p0, Lcom/google/rpc/context/AttributeContext$Resource;->service_:Ljava/lang/String;

    .line 7230
    iput-object v0, p0, Lcom/google/rpc/context/AttributeContext$Resource;->name_:Ljava/lang/String;

    .line 7231
    iput-object v0, p0, Lcom/google/rpc/context/AttributeContext$Resource;->type_:Ljava/lang/String;

    return-void

    .array-data 1
    .end array-data
.end method

.method static synthetic access$10000(Lcom/google/rpc/context/AttributeContext$Resource;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 7223
    invoke-direct {p0, p1}, Lcom/google/rpc/context/AttributeContext$Resource;->setNameBytes(Lcom/google/protobuf/ByteString;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method static synthetic access$10100(Lcom/google/rpc/context/AttributeContext$Resource;Ljava/lang/String;)V
    .locals 0

    .line 7223
    invoke-direct {p0, p1}, Lcom/google/rpc/context/AttributeContext$Resource;->setType(Ljava/lang/String;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method static synthetic access$10200(Lcom/google/rpc/context/AttributeContext$Resource;)V
    .locals 0

    .line 7223
    invoke-direct {p0}, Lcom/google/rpc/context/AttributeContext$Resource;->clearType()V

    return-void

    .array-data 1
    .end array-data
.end method

.method static synthetic access$10300(Lcom/google/rpc/context/AttributeContext$Resource;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 7223
    invoke-direct {p0, p1}, Lcom/google/rpc/context/AttributeContext$Resource;->setTypeBytes(Lcom/google/protobuf/ByteString;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method static synthetic access$10400(Lcom/google/rpc/context/AttributeContext$Resource;)Ljava/util/Map;
    .locals 0

    .line 7223
    invoke-direct {p0}, Lcom/google/rpc/context/AttributeContext$Resource;->getMutableLabelsMap()Ljava/util/Map;

    move-result-object p0

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method static synthetic access$9400()Lcom/google/rpc/context/AttributeContext$Resource;
    .locals 1

    .line 7223
    sget-object v0, Lcom/google/rpc/context/AttributeContext$Resource;->DEFAULT_INSTANCE:Lcom/google/rpc/context/AttributeContext$Resource;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method static synthetic access$9500(Lcom/google/rpc/context/AttributeContext$Resource;Ljava/lang/String;)V
    .locals 0

    .line 7223
    invoke-direct {p0, p1}, Lcom/google/rpc/context/AttributeContext$Resource;->setService(Ljava/lang/String;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method static synthetic access$9600(Lcom/google/rpc/context/AttributeContext$Resource;)V
    .locals 0

    .line 7223
    invoke-direct {p0}, Lcom/google/rpc/context/AttributeContext$Resource;->clearService()V

    return-void

    .array-data 1
    .end array-data
.end method

.method static synthetic access$9700(Lcom/google/rpc/context/AttributeContext$Resource;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 7223
    invoke-direct {p0, p1}, Lcom/google/rpc/context/AttributeContext$Resource;->setServiceBytes(Lcom/google/protobuf/ByteString;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method static synthetic access$9800(Lcom/google/rpc/context/AttributeContext$Resource;Ljava/lang/String;)V
    .locals 0

    .line 7223
    invoke-direct {p0, p1}, Lcom/google/rpc/context/AttributeContext$Resource;->setName(Ljava/lang/String;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method static synthetic access$9900(Lcom/google/rpc/context/AttributeContext$Resource;)V
    .locals 0

    .line 7223
    invoke-direct {p0}, Lcom/google/rpc/context/AttributeContext$Resource;->clearName()V

    return-void

    .array-data 1
    .end array-data
.end method

.method private clearName()V
    .locals 1

    .line 7396
    invoke-static {}, Lcom/google/rpc/context/AttributeContext$Resource;->getDefaultInstance()Lcom/google/rpc/context/AttributeContext$Resource;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/rpc/context/AttributeContext$Resource;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/rpc/context/AttributeContext$Resource;->name_:Ljava/lang/String;

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method private clearService()V
    .locals 1

    .line 7291
    invoke-static {}, Lcom/google/rpc/context/AttributeContext$Resource;->getDefaultInstance()Lcom/google/rpc/context/AttributeContext$Resource;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/rpc/context/AttributeContext$Resource;->getService()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/rpc/context/AttributeContext$Resource;->service_:Ljava/lang/String;

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method private clearType()V
    .locals 1

    .line 7480
    invoke-static {}, Lcom/google/rpc/context/AttributeContext$Resource;->getDefaultInstance()Lcom/google/rpc/context/AttributeContext$Resource;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/rpc/context/AttributeContext$Resource;->getType()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/rpc/context/AttributeContext$Resource;->type_:Ljava/lang/String;

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public static getDefaultInstance()Lcom/google/rpc/context/AttributeContext$Resource;
    .locals 1

    .line 8192
    sget-object v0, Lcom/google/rpc/context/AttributeContext$Resource;->DEFAULT_INSTANCE:Lcom/google/rpc/context/AttributeContext$Resource;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method private getMutableLabelsMap()Ljava/util/Map;
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

    .line 7614
    invoke-direct {p0}, Lcom/google/rpc/context/AttributeContext$Resource;->internalGetMutableLabels()Lcom/google/protobuf/MapFieldLite;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method private internalGetLabels()Lcom/google/protobuf/MapFieldLite;
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

    .line 7515
    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext$Resource;->labels_:Lcom/google/protobuf/MapFieldLite;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method private internalGetMutableLabels()Lcom/google/protobuf/MapFieldLite;
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

    .line 7519
    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext$Resource;->labels_:Lcom/google/protobuf/MapFieldLite;

    invoke-virtual {v0}, Lcom/google/protobuf/MapFieldLite;->isMutable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 7520
    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext$Resource;->labels_:Lcom/google/protobuf/MapFieldLite;

    invoke-virtual {v0}, Lcom/google/protobuf/MapFieldLite;->mutableCopy()Lcom/google/protobuf/MapFieldLite;

    move-result-object v0

    iput-object v0, p0, Lcom/google/rpc/context/AttributeContext$Resource;->labels_:Lcom/google/protobuf/MapFieldLite;

    .line 7522
    :cond_0
    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext$Resource;->labels_:Lcom/google/protobuf/MapFieldLite;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public static newBuilder()Lcom/google/rpc/context/AttributeContext$Resource$Builder;
    .locals 1

    .line 7692
    sget-object v0, Lcom/google/rpc/context/AttributeContext$Resource;->DEFAULT_INSTANCE:Lcom/google/rpc/context/AttributeContext$Resource;

    invoke-virtual {v0}, Lcom/google/rpc/context/AttributeContext$Resource;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/rpc/context/AttributeContext$Resource$Builder;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public static newBuilder(Lcom/google/rpc/context/AttributeContext$Resource;)Lcom/google/rpc/context/AttributeContext$Resource$Builder;
    .locals 1

    .line 7695
    sget-object v0, Lcom/google/rpc/context/AttributeContext$Resource;->DEFAULT_INSTANCE:Lcom/google/rpc/context/AttributeContext$Resource;

    invoke-virtual {v0, p0}, Lcom/google/rpc/context/AttributeContext$Resource;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lcom/google/rpc/context/AttributeContext$Resource$Builder;

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/rpc/context/AttributeContext$Resource;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7669
    sget-object v0, Lcom/google/rpc/context/AttributeContext$Resource;->DEFAULT_INSTANCE:Lcom/google/rpc/context/AttributeContext$Resource;

    invoke-static {v0, p0}, Lcom/google/rpc/context/AttributeContext$Resource;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/rpc/context/AttributeContext$Resource;

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/rpc/context/AttributeContext$Resource;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7675
    sget-object v0, Lcom/google/rpc/context/AttributeContext$Resource;->DEFAULT_INSTANCE:Lcom/google/rpc/context/AttributeContext$Resource;

    invoke-static {v0, p0, p1}, Lcom/google/rpc/context/AttributeContext$Resource;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/rpc/context/AttributeContext$Resource;

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/rpc/context/AttributeContext$Resource;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 7633
    sget-object v0, Lcom/google/rpc/context/AttributeContext$Resource;->DEFAULT_INSTANCE:Lcom/google/rpc/context/AttributeContext$Resource;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/rpc/context/AttributeContext$Resource;

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/rpc/context/AttributeContext$Resource;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 7640
    sget-object v0, Lcom/google/rpc/context/AttributeContext$Resource;->DEFAULT_INSTANCE:Lcom/google/rpc/context/AttributeContext$Resource;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/rpc/context/AttributeContext$Resource;

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/rpc/context/AttributeContext$Resource;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7680
    sget-object v0, Lcom/google/rpc/context/AttributeContext$Resource;->DEFAULT_INSTANCE:Lcom/google/rpc/context/AttributeContext$Resource;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/rpc/context/AttributeContext$Resource;

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/rpc/context/AttributeContext$Resource;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7687
    sget-object v0, Lcom/google/rpc/context/AttributeContext$Resource;->DEFAULT_INSTANCE:Lcom/google/rpc/context/AttributeContext$Resource;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/rpc/context/AttributeContext$Resource;

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/rpc/context/AttributeContext$Resource;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7657
    sget-object v0, Lcom/google/rpc/context/AttributeContext$Resource;->DEFAULT_INSTANCE:Lcom/google/rpc/context/AttributeContext$Resource;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/rpc/context/AttributeContext$Resource;

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/rpc/context/AttributeContext$Resource;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7664
    sget-object v0, Lcom/google/rpc/context/AttributeContext$Resource;->DEFAULT_INSTANCE:Lcom/google/rpc/context/AttributeContext$Resource;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/rpc/context/AttributeContext$Resource;

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/google/rpc/context/AttributeContext$Resource;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 7620
    sget-object v0, Lcom/google/rpc/context/AttributeContext$Resource;->DEFAULT_INSTANCE:Lcom/google/rpc/context/AttributeContext$Resource;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/rpc/context/AttributeContext$Resource;

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/rpc/context/AttributeContext$Resource;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 7627
    sget-object v0, Lcom/google/rpc/context/AttributeContext$Resource;->DEFAULT_INSTANCE:Lcom/google/rpc/context/AttributeContext$Resource;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/rpc/context/AttributeContext$Resource;

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static parseFrom([B)Lcom/google/rpc/context/AttributeContext$Resource;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 7645
    sget-object v0, Lcom/google/rpc/context/AttributeContext$Resource;->DEFAULT_INSTANCE:Lcom/google/rpc/context/AttributeContext$Resource;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/rpc/context/AttributeContext$Resource;

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/rpc/context/AttributeContext$Resource;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 7652
    sget-object v0, Lcom/google/rpc/context/AttributeContext$Resource;->DEFAULT_INSTANCE:Lcom/google/rpc/context/AttributeContext$Resource;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/rpc/context/AttributeContext$Resource;

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
            "Lcom/google/rpc/context/AttributeContext$Resource;",
            ">;"
        }
    .end annotation

    .line 8198
    sget-object v0, Lcom/google/rpc/context/AttributeContext$Resource;->DEFAULT_INSTANCE:Lcom/google/rpc/context/AttributeContext$Resource;

    invoke-virtual {v0}, Lcom/google/rpc/context/AttributeContext$Resource;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method private setName(Ljava/lang/String;)V
    .locals 0

    .line 7374
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7376
    iput-object p1, p0, Lcom/google/rpc/context/AttributeContext$Resource;->name_:Ljava/lang/String;

    return-void

    .array-data 1
    .end array-data
.end method

.method private setNameBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 7417
    invoke-static {p1}, Lcom/google/rpc/context/AttributeContext$Resource;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 7418
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/rpc/context/AttributeContext$Resource;->name_:Ljava/lang/String;

    return-void

    .array-data 1
    .end array-data
.end method

.method private setService(Ljava/lang/String;)V
    .locals 0

    .line 7276
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7278
    iput-object p1, p0, Lcom/google/rpc/context/AttributeContext$Resource;->service_:Ljava/lang/String;

    return-void

    .array-data 1
    .end array-data
.end method

.method private setServiceBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 7305
    invoke-static {p1}, Lcom/google/rpc/context/AttributeContext$Resource;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 7306
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/rpc/context/AttributeContext$Resource;->service_:Ljava/lang/String;

    return-void

    .array-data 1
    .end array-data
.end method

.method private setType(Ljava/lang/String;)V
    .locals 0

    .line 7465
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7467
    iput-object p1, p0, Lcom/google/rpc/context/AttributeContext$Resource;->type_:Ljava/lang/String;

    return-void

    .array-data 1
    .end array-data
.end method

.method private setTypeBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 7494
    invoke-static {p1}, Lcom/google/rpc/context/AttributeContext$Resource;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 7495
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/rpc/context/AttributeContext$Resource;->type_:Ljava/lang/String;

    return-void

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public containsLabels(Ljava/lang/String;)Z
    .locals 1

    .line 7541
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7542
    invoke-direct {p0}, Lcom/google/rpc/context/AttributeContext$Resource;->internalGetLabels()Lcom/google/protobuf/MapFieldLite;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/MapFieldLite;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .array-data 1
    .end array-data
.end method

.method protected final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 8130
    sget-object p2, Lcom/google/rpc/context/AttributeContext$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x1

    const/4 p3, 0x0

    packed-switch p1, :pswitch_data_0

    .line 8176
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p3

    .line 8170
    :pswitch_1
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 8155
    :pswitch_2
    sget-object p1, Lcom/google/rpc/context/AttributeContext$Resource;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    .line 8157
    const-class p2, Lcom/google/rpc/context/AttributeContext$Resource;

    monitor-enter p2

    .line 8158
    :try_start_0
    sget-object p1, Lcom/google/rpc/context/AttributeContext$Resource;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_0

    .line 8160
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lcom/google/rpc/context/AttributeContext$Resource;->DEFAULT_INSTANCE:Lcom/google/rpc/context/AttributeContext$Resource;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 8163
    sput-object p1, Lcom/google/rpc/context/AttributeContext$Resource;->PARSER:Lcom/google/protobuf/Parser;

    .line 8165
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

    .line 8152
    :pswitch_3
    sget-object p1, Lcom/google/rpc/context/AttributeContext$Resource;->DEFAULT_INSTANCE:Lcom/google/rpc/context/AttributeContext$Resource;

    return-object p1

    :pswitch_4
    const/4 p1, 0x5

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v0, "service_"

    aput-object v0, p1, p3

    const-string p3, "name_"

    aput-object p3, p1, p2

    const/4 p2, 0x2

    const-string/jumbo p3, "type_"

    aput-object p3, p1, p2

    const/4 p2, 0x3

    const-string p3, "labels_"

    aput-object p3, p1, p2

    const/4 p2, 0x4

    .line 8138
    sget-object p3, Lcom/google/rpc/context/AttributeContext$Resource$LabelsDefaultEntryHolder;->defaultEntry:Lcom/google/protobuf/MapEntryLite;

    aput-object p3, p1, p2

    const-string p2, "\u0000\u0004\u0000\u0000\u0001\u0004\u0004\u0001\u0000\u0000\u0001\u0208\u0002\u0208\u0003\u0208\u00042"

    .line 8148
    sget-object p3, Lcom/google/rpc/context/AttributeContext$Resource;->DEFAULT_INSTANCE:Lcom/google/rpc/context/AttributeContext$Resource;

    invoke-static {p3, p2, p1}, Lcom/google/rpc/context/AttributeContext$Resource;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 8135
    :pswitch_5
    new-instance p1, Lcom/google/rpc/context/AttributeContext$Resource$Builder;

    invoke-direct {p1, p3}, Lcom/google/rpc/context/AttributeContext$Resource$Builder;-><init>(Lcom/google/rpc/context/AttributeContext$1;)V

    return-object p1

    .line 8132
    :pswitch_6
    new-instance p1, Lcom/google/rpc/context/AttributeContext$Resource;

    invoke-direct {p1}, Lcom/google/rpc/context/AttributeContext$Resource;-><init>()V

    return-object p1

    nop

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

.method public getLabels()Ljava/util/Map;
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

    .line 7550
    invoke-virtual {p0}, Lcom/google/rpc/context/AttributeContext$Resource;->getLabelsMap()Ljava/util/Map;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getLabelsCount()I
    .locals 1

    .line 7527
    invoke-direct {p0}, Lcom/google/rpc/context/AttributeContext$Resource;->internalGetLabels()Lcom/google/protobuf/MapFieldLite;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/MapFieldLite;->size()I

    move-result v0

    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getLabelsMap()Ljava/util/Map;
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

    .line 7564
    invoke-direct {p0}, Lcom/google/rpc/context/AttributeContext$Resource;->internalGetLabels()Lcom/google/protobuf/MapFieldLite;

    move-result-object v0

    .line 7563
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getLabelsOrDefault(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 7579
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7581
    invoke-direct {p0}, Lcom/google/rpc/context/AttributeContext$Resource;->internalGetLabels()Lcom/google/protobuf/MapFieldLite;

    move-result-object v0

    .line 7582
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

.method public getLabelsOrThrow(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 7596
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7598
    invoke-direct {p0}, Lcom/google/rpc/context/AttributeContext$Resource;->internalGetLabels()Lcom/google/protobuf/MapFieldLite;

    move-result-object v0

    .line 7599
    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 7602
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1

    .line 7600
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    .array-data 1
    .end array-data
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 7331
    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext$Resource;->name_:Ljava/lang/String;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getNameBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 7353
    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext$Resource;->name_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getService()Ljava/lang/String;
    .locals 1

    .line 7247
    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext$Resource;->service_:Ljava/lang/String;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getServiceBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 7262
    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext$Resource;->service_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .line 7436
    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext$Resource;->type_:Ljava/lang/String;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getTypeBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 7451
    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext$Resource;->type_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method
