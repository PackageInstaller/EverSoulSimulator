.class public final Lcom/google/api/LogDescriptor;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "LogDescriptor.java"

# interfaces
.implements Lcom/google/api/LogDescriptorOrBuilder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/api/LogDescriptor$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/google/api/LogDescriptor;",
        "Lcom/google/api/LogDescriptor$Builder;",
        ">;",
        "Lcom/google/api/LogDescriptorOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/google/api/LogDescriptor;

.field public static final DESCRIPTION_FIELD_NUMBER:I = 0x3

.field public static final DISPLAY_NAME_FIELD_NUMBER:I = 0x4

.field public static final LABELS_FIELD_NUMBER:I = 0x2

.field public static final NAME_FIELD_NUMBER:I = 0x1

.field private static volatile PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/api/LogDescriptor;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private description_:Ljava/lang/String;

.field private displayName_:Ljava/lang/String;

.field private labels_:Lcom/google/protobuf/Internal$ProtobufList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$ProtobufList<",
            "Lcom/google/api/LabelDescriptor;",
            ">;"
        }
    .end annotation
.end field

.field private name_:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 987
    new-instance v0, Lcom/google/api/LogDescriptor;

    invoke-direct {v0}, Lcom/google/api/LogDescriptor;-><init>()V

    .line 990
    sput-object v0, Lcom/google/api/LogDescriptor;->DEFAULT_INSTANCE:Lcom/google/api/LogDescriptor;

    .line 991
    const-class v1, Lcom/google/api/LogDescriptor;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method private constructor <init>()V
    .locals 2

    .line 24
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    const-string v0, ""

    .line 25
    iput-object v0, p0, Lcom/google/api/LogDescriptor;->name_:Ljava/lang/String;

    .line 26
    invoke-static {}, Lcom/google/api/LogDescriptor;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v1

    iput-object v1, p0, Lcom/google/api/LogDescriptor;->labels_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 27
    iput-object v0, p0, Lcom/google/api/LogDescriptor;->description_:Ljava/lang/String;

    .line 28
    iput-object v0, p0, Lcom/google/api/LogDescriptor;->displayName_:Ljava/lang/String;

    return-void

    .array-data 1
    .end array-data
.end method

.method static synthetic access$000()Lcom/google/api/LogDescriptor;
    .locals 1

    .line 19
    sget-object v0, Lcom/google/api/LogDescriptor;->DEFAULT_INSTANCE:Lcom/google/api/LogDescriptor;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method static synthetic access$100(Lcom/google/api/LogDescriptor;Ljava/lang/String;)V
    .locals 0

    .line 19
    invoke-direct {p0, p1}, Lcom/google/api/LogDescriptor;->setName(Ljava/lang/String;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method static synthetic access$1000(Lcom/google/api/LogDescriptor;Ljava/lang/String;)V
    .locals 0

    .line 19
    invoke-direct {p0, p1}, Lcom/google/api/LogDescriptor;->setDescription(Ljava/lang/String;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method static synthetic access$1100(Lcom/google/api/LogDescriptor;)V
    .locals 0

    .line 19
    invoke-direct {p0}, Lcom/google/api/LogDescriptor;->clearDescription()V

    return-void

    .array-data 1
    .end array-data
.end method

.method static synthetic access$1200(Lcom/google/api/LogDescriptor;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 19
    invoke-direct {p0, p1}, Lcom/google/api/LogDescriptor;->setDescriptionBytes(Lcom/google/protobuf/ByteString;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method static synthetic access$1300(Lcom/google/api/LogDescriptor;Ljava/lang/String;)V
    .locals 0

    .line 19
    invoke-direct {p0, p1}, Lcom/google/api/LogDescriptor;->setDisplayName(Ljava/lang/String;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method static synthetic access$1400(Lcom/google/api/LogDescriptor;)V
    .locals 0

    .line 19
    invoke-direct {p0}, Lcom/google/api/LogDescriptor;->clearDisplayName()V

    return-void

    .array-data 1
    .end array-data
.end method

.method static synthetic access$1500(Lcom/google/api/LogDescriptor;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 19
    invoke-direct {p0, p1}, Lcom/google/api/LogDescriptor;->setDisplayNameBytes(Lcom/google/protobuf/ByteString;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method static synthetic access$200(Lcom/google/api/LogDescriptor;)V
    .locals 0

    .line 19
    invoke-direct {p0}, Lcom/google/api/LogDescriptor;->clearName()V

    return-void

    .array-data 1
    .end array-data
.end method

.method static synthetic access$300(Lcom/google/api/LogDescriptor;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 19
    invoke-direct {p0, p1}, Lcom/google/api/LogDescriptor;->setNameBytes(Lcom/google/protobuf/ByteString;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method static synthetic access$400(Lcom/google/api/LogDescriptor;ILcom/google/api/LabelDescriptor;)V
    .locals 0

    .line 19
    invoke-direct {p0, p1, p2}, Lcom/google/api/LogDescriptor;->setLabels(ILcom/google/api/LabelDescriptor;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method static synthetic access$500(Lcom/google/api/LogDescriptor;Lcom/google/api/LabelDescriptor;)V
    .locals 0

    .line 19
    invoke-direct {p0, p1}, Lcom/google/api/LogDescriptor;->addLabels(Lcom/google/api/LabelDescriptor;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method static synthetic access$600(Lcom/google/api/LogDescriptor;ILcom/google/api/LabelDescriptor;)V
    .locals 0

    .line 19
    invoke-direct {p0, p1, p2}, Lcom/google/api/LogDescriptor;->addLabels(ILcom/google/api/LabelDescriptor;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method static synthetic access$700(Lcom/google/api/LogDescriptor;Ljava/lang/Iterable;)V
    .locals 0

    .line 19
    invoke-direct {p0, p1}, Lcom/google/api/LogDescriptor;->addAllLabels(Ljava/lang/Iterable;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method static synthetic access$800(Lcom/google/api/LogDescriptor;)V
    .locals 0

    .line 19
    invoke-direct {p0}, Lcom/google/api/LogDescriptor;->clearLabels()V

    return-void

    .array-data 1
    .end array-data
.end method

.method static synthetic access$900(Lcom/google/api/LogDescriptor;I)V
    .locals 0

    .line 19
    invoke-direct {p0, p1}, Lcom/google/api/LogDescriptor;->removeLabels(I)V

    return-void

    .array-data 1
    .end array-data
.end method

.method private addAllLabels(Ljava/lang/Iterable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/google/api/LabelDescriptor;",
            ">;)V"
        }
    .end annotation

    .line 242
    invoke-direct {p0}, Lcom/google/api/LogDescriptor;->ensureLabelsIsMutable()V

    .line 243
    iget-object v0, p0, Lcom/google/api/LogDescriptor;->labels_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMessageLite;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method private addLabels(ILcom/google/api/LabelDescriptor;)V
    .locals 1

    .line 227
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 228
    invoke-direct {p0}, Lcom/google/api/LogDescriptor;->ensureLabelsIsMutable()V

    .line 229
    iget-object v0, p0, Lcom/google/api/LogDescriptor;->labels_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/Internal$ProtobufList;->add(ILjava/lang/Object;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method private addLabels(Lcom/google/api/LabelDescriptor;)V
    .locals 1

    .line 212
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 213
    invoke-direct {p0}, Lcom/google/api/LogDescriptor;->ensureLabelsIsMutable()V

    .line 214
    iget-object v0, p0, Lcom/google/api/LogDescriptor;->labels_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->add(Ljava/lang/Object;)Z

    return-void

    .array-data 1
    .end array-data
.end method

.method private clearDescription()V
    .locals 1

    .line 326
    invoke-static {}, Lcom/google/api/LogDescriptor;->getDefaultInstance()Lcom/google/api/LogDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/api/LogDescriptor;->getDescription()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/LogDescriptor;->description_:Ljava/lang/String;

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method private clearDisplayName()V
    .locals 1

    .line 398
    invoke-static {}, Lcom/google/api/LogDescriptor;->getDefaultInstance()Lcom/google/api/LogDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/api/LogDescriptor;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/LogDescriptor;->displayName_:Ljava/lang/String;

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method private clearLabels()V
    .locals 1

    .line 256
    invoke-static {}, Lcom/google/api/LogDescriptor;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/LogDescriptor;->labels_:Lcom/google/protobuf/Internal$ProtobufList;

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method private clearName()V
    .locals 1

    .line 92
    invoke-static {}, Lcom/google/api/LogDescriptor;->getDefaultInstance()Lcom/google/api/LogDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/api/LogDescriptor;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/LogDescriptor;->name_:Ljava/lang/String;

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method private ensureLabelsIsMutable()V
    .locals 2

    .line 180
    iget-object v0, p0, Lcom/google/api/LogDescriptor;->labels_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 181
    invoke-interface {v0}, Lcom/google/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result v1

    if-nez v1, :cond_0

    .line 183
    invoke-static {v0}, Lcom/google/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/google/protobuf/Internal$ProtobufList;)Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/LogDescriptor;->labels_:Lcom/google/protobuf/Internal$ProtobufList;

    :cond_0
    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public static getDefaultInstance()Lcom/google/api/LogDescriptor;
    .locals 1

    .line 996
    sget-object v0, Lcom/google/api/LogDescriptor;->DEFAULT_INSTANCE:Lcom/google/api/LogDescriptor;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public static newBuilder()Lcom/google/api/LogDescriptor$Builder;
    .locals 1

    .line 491
    sget-object v0, Lcom/google/api/LogDescriptor;->DEFAULT_INSTANCE:Lcom/google/api/LogDescriptor;

    invoke-virtual {v0}, Lcom/google/api/LogDescriptor;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/api/LogDescriptor$Builder;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public static newBuilder(Lcom/google/api/LogDescriptor;)Lcom/google/api/LogDescriptor$Builder;
    .locals 1

    .line 494
    sget-object v0, Lcom/google/api/LogDescriptor;->DEFAULT_INSTANCE:Lcom/google/api/LogDescriptor;

    invoke-virtual {v0, p0}, Lcom/google/api/LogDescriptor;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lcom/google/api/LogDescriptor$Builder;

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/api/LogDescriptor;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 468
    sget-object v0, Lcom/google/api/LogDescriptor;->DEFAULT_INSTANCE:Lcom/google/api/LogDescriptor;

    invoke-static {v0, p0}, Lcom/google/api/LogDescriptor;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/api/LogDescriptor;

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/api/LogDescriptor;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 474
    sget-object v0, Lcom/google/api/LogDescriptor;->DEFAULT_INSTANCE:Lcom/google/api/LogDescriptor;

    invoke-static {v0, p0, p1}, Lcom/google/api/LogDescriptor;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/api/LogDescriptor;

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/api/LogDescriptor;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 432
    sget-object v0, Lcom/google/api/LogDescriptor;->DEFAULT_INSTANCE:Lcom/google/api/LogDescriptor;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/api/LogDescriptor;

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/api/LogDescriptor;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 439
    sget-object v0, Lcom/google/api/LogDescriptor;->DEFAULT_INSTANCE:Lcom/google/api/LogDescriptor;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/api/LogDescriptor;

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/api/LogDescriptor;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 479
    sget-object v0, Lcom/google/api/LogDescriptor;->DEFAULT_INSTANCE:Lcom/google/api/LogDescriptor;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/api/LogDescriptor;

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/api/LogDescriptor;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 486
    sget-object v0, Lcom/google/api/LogDescriptor;->DEFAULT_INSTANCE:Lcom/google/api/LogDescriptor;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/api/LogDescriptor;

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/api/LogDescriptor;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 456
    sget-object v0, Lcom/google/api/LogDescriptor;->DEFAULT_INSTANCE:Lcom/google/api/LogDescriptor;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/api/LogDescriptor;

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/api/LogDescriptor;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 463
    sget-object v0, Lcom/google/api/LogDescriptor;->DEFAULT_INSTANCE:Lcom/google/api/LogDescriptor;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/api/LogDescriptor;

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/google/api/LogDescriptor;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 419
    sget-object v0, Lcom/google/api/LogDescriptor;->DEFAULT_INSTANCE:Lcom/google/api/LogDescriptor;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/api/LogDescriptor;

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/api/LogDescriptor;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 426
    sget-object v0, Lcom/google/api/LogDescriptor;->DEFAULT_INSTANCE:Lcom/google/api/LogDescriptor;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/api/LogDescriptor;

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static parseFrom([B)Lcom/google/api/LogDescriptor;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 444
    sget-object v0, Lcom/google/api/LogDescriptor;->DEFAULT_INSTANCE:Lcom/google/api/LogDescriptor;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/api/LogDescriptor;

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/api/LogDescriptor;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 451
    sget-object v0, Lcom/google/api/LogDescriptor;->DEFAULT_INSTANCE:Lcom/google/api/LogDescriptor;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/api/LogDescriptor;

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
            "Lcom/google/api/LogDescriptor;",
            ">;"
        }
    .end annotation

    .line 1002
    sget-object v0, Lcom/google/api/LogDescriptor;->DEFAULT_INSTANCE:Lcom/google/api/LogDescriptor;

    invoke-virtual {v0}, Lcom/google/api/LogDescriptor;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method private removeLabels(I)V
    .locals 1

    .line 268
    invoke-direct {p0}, Lcom/google/api/LogDescriptor;->ensureLabelsIsMutable()V

    .line 269
    iget-object v0, p0, Lcom/google/api/LogDescriptor;->labels_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->remove(I)Ljava/lang/Object;

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method private setDescription(Ljava/lang/String;)V
    .locals 0

    .line 312
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 314
    iput-object p1, p0, Lcom/google/api/LogDescriptor;->description_:Ljava/lang/String;

    return-void

    .array-data 1
    .end array-data
.end method

.method private setDescriptionBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 339
    invoke-static {p1}, Lcom/google/api/LogDescriptor;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 340
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/api/LogDescriptor;->description_:Ljava/lang/String;

    return-void

    .array-data 1
    .end array-data
.end method

.method private setDisplayName(Ljava/lang/String;)V
    .locals 0

    .line 384
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 386
    iput-object p1, p0, Lcom/google/api/LogDescriptor;->displayName_:Ljava/lang/String;

    return-void

    .array-data 1
    .end array-data
.end method

.method private setDisplayNameBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 411
    invoke-static {p1}, Lcom/google/api/LogDescriptor;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 412
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/api/LogDescriptor;->displayName_:Ljava/lang/String;

    return-void

    .array-data 1
    .end array-data
.end method

.method private setLabels(ILcom/google/api/LabelDescriptor;)V
    .locals 1

    .line 198
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 199
    invoke-direct {p0}, Lcom/google/api/LogDescriptor;->ensureLabelsIsMutable()V

    .line 200
    iget-object v0, p0, Lcom/google/api/LogDescriptor;->labels_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/Internal$ProtobufList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void

    .array-data 1
    .end array-data
.end method

.method private setName(Ljava/lang/String;)V
    .locals 0

    .line 76
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 78
    iput-object p1, p0, Lcom/google/api/LogDescriptor;->name_:Ljava/lang/String;

    return-void

    .array-data 1
    .end array-data
.end method

.method private setNameBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 107
    invoke-static {p1}, Lcom/google/api/LogDescriptor;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 108
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/api/LogDescriptor;->name_:Ljava/lang/String;

    return-void

    .array-data 1
    .end array-data
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 934
    sget-object p2, Lcom/google/api/LogDescriptor$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x1

    const/4 p3, 0x0

    packed-switch p1, :pswitch_data_0

    .line 980
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p3

    .line 974
    :pswitch_1
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 959
    :pswitch_2
    sget-object p1, Lcom/google/api/LogDescriptor;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    .line 961
    const-class p2, Lcom/google/api/LogDescriptor;

    monitor-enter p2

    .line 962
    :try_start_0
    sget-object p1, Lcom/google/api/LogDescriptor;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_0

    .line 964
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lcom/google/api/LogDescriptor;->DEFAULT_INSTANCE:Lcom/google/api/LogDescriptor;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 967
    sput-object p1, Lcom/google/api/LogDescriptor;->PARSER:Lcom/google/protobuf/Parser;

    .line 969
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

    .line 956
    :pswitch_3
    sget-object p1, Lcom/google/api/LogDescriptor;->DEFAULT_INSTANCE:Lcom/google/api/LogDescriptor;

    return-object p1

    :pswitch_4
    const/4 p1, 0x5

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v0, "name_"

    aput-object v0, p1, p3

    const-string p3, "labels_"

    aput-object p3, p1, p2

    const/4 p2, 0x2

    .line 942
    const-class p3, Lcom/google/api/LabelDescriptor;

    aput-object p3, p1, p2

    const/4 p2, 0x3

    const-string p3, "description_"

    aput-object p3, p1, p2

    const/4 p2, 0x4

    const-string p3, "displayName_"

    aput-object p3, p1, p2

    const-string p2, "\u0000\u0004\u0000\u0000\u0001\u0004\u0004\u0000\u0001\u0000\u0001\u0208\u0002\u001b\u0003\u0208\u0004\u0208"

    .line 952
    sget-object p3, Lcom/google/api/LogDescriptor;->DEFAULT_INSTANCE:Lcom/google/api/LogDescriptor;

    invoke-static {p3, p2, p1}, Lcom/google/api/LogDescriptor;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 939
    :pswitch_5
    new-instance p1, Lcom/google/api/LogDescriptor$Builder;

    invoke-direct {p1, p3}, Lcom/google/api/LogDescriptor$Builder;-><init>(Lcom/google/api/LogDescriptor$1;)V

    return-object p1

    .line 936
    :pswitch_6
    new-instance p1, Lcom/google/api/LogDescriptor;

    invoke-direct {p1}, Lcom/google/api/LogDescriptor;-><init>()V

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

.method public getDescription()Ljava/lang/String;
    .locals 1

    .line 285
    iget-object v0, p0, Lcom/google/api/LogDescriptor;->description_:Ljava/lang/String;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getDescriptionBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 299
    iget-object v0, p0, Lcom/google/api/LogDescriptor;->description_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getDisplayName()Ljava/lang/String;
    .locals 1

    .line 357
    iget-object v0, p0, Lcom/google/api/LogDescriptor;->displayName_:Ljava/lang/String;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getDisplayNameBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 371
    iget-object v0, p0, Lcom/google/api/LogDescriptor;->displayName_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getLabels(I)Lcom/google/api/LabelDescriptor;
    .locals 1

    .line 164
    iget-object v0, p0, Lcom/google/api/LogDescriptor;->labels_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/api/LabelDescriptor;

    return-object p1

    nop

    .array-data 1
    .end array-data
.end method

.method public getLabelsCount()I
    .locals 1

    .line 151
    iget-object v0, p0, Lcom/google/api/LogDescriptor;->labels_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0}, Lcom/google/protobuf/Internal$ProtobufList;->size()I

    move-result v0

    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getLabelsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/api/LabelDescriptor;",
            ">;"
        }
    .end annotation

    .line 125
    iget-object v0, p0, Lcom/google/api/LogDescriptor;->labels_:Lcom/google/protobuf/Internal$ProtobufList;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getLabelsOrBuilder(I)Lcom/google/api/LabelDescriptorOrBuilder;
    .locals 1

    .line 177
    iget-object v0, p0, Lcom/google/api/LogDescriptor;->labels_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/api/LabelDescriptorOrBuilder;

    return-object p1

    nop

    .array-data 1
    .end array-data
.end method

.method public getLabelsOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/google/api/LabelDescriptorOrBuilder;",
            ">;"
        }
    .end annotation

    .line 138
    iget-object v0, p0, Lcom/google/api/LogDescriptor;->labels_:Lcom/google/protobuf/Internal$ProtobufList;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/google/api/LogDescriptor;->name_:Ljava/lang/String;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getNameBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/google/api/LogDescriptor;->name_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method
