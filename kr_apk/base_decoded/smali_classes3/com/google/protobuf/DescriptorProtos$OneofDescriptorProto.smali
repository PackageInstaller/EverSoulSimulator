.class public final Lcom/google/protobuf/DescriptorProtos$OneofDescriptorProto;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "DescriptorProtos.java"

# interfaces
.implements Lcom/google/protobuf/DescriptorProtos$OneofDescriptorProtoOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/DescriptorProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "OneofDescriptorProto"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protobuf/DescriptorProtos$OneofDescriptorProto$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/google/protobuf/DescriptorProtos$OneofDescriptorProto;",
        "Lcom/google/protobuf/DescriptorProtos$OneofDescriptorProto$Builder;",
        ">;",
        "Lcom/google/protobuf/DescriptorProtos$OneofDescriptorProtoOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/google/protobuf/DescriptorProtos$OneofDescriptorProto;

.field public static final NAME_FIELD_NUMBER:I = 0x1

.field public static final OPTIONS_FIELD_NUMBER:I = 0x2

.field private static volatile PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/protobuf/DescriptorProtos$OneofDescriptorProto;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private bitField0_:I

.field private memoizedIsInitialized:B

.field private name_:Ljava/lang/String;

.field private options_:Lcom/google/protobuf/DescriptorProtos$OneofOptions;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 9860
    new-instance v0, Lcom/google/protobuf/DescriptorProtos$OneofDescriptorProto;

    invoke-direct {v0}, Lcom/google/protobuf/DescriptorProtos$OneofDescriptorProto;-><init>()V

    .line 9863
    sput-object v0, Lcom/google/protobuf/DescriptorProtos$OneofDescriptorProto;->DEFAULT_INSTANCE:Lcom/google/protobuf/DescriptorProtos$OneofDescriptorProto;

    .line 9864
    const-class v1, Lcom/google/protobuf/DescriptorProtos$OneofDescriptorProto;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method private constructor <init>()V
    .locals 1

    .line 9493
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    const/4 v0, 0x2

    .line 9802
    iput-byte v0, p0, Lcom/google/protobuf/DescriptorProtos$OneofDescriptorProto;->memoizedIsInitialized:B

    const-string v0, ""

    .line 9494
    iput-object v0, p0, Lcom/google/protobuf/DescriptorProtos$OneofDescriptorProto;->name_:Ljava/lang/String;

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method static synthetic access$17000()Lcom/google/protobuf/DescriptorProtos$OneofDescriptorProto;
    .locals 1

    .line 9488
    sget-object v0, Lcom/google/protobuf/DescriptorProtos$OneofDescriptorProto;->DEFAULT_INSTANCE:Lcom/google/protobuf/DescriptorProtos$OneofDescriptorProto;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method static synthetic access$17100(Lcom/google/protobuf/DescriptorProtos$OneofDescriptorProto;Ljava/lang/String;)V
    .locals 0

    .line 9488
    invoke-direct {p0, p1}, Lcom/google/protobuf/DescriptorProtos$OneofDescriptorProto;->setName(Ljava/lang/String;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method static synthetic access$17200(Lcom/google/protobuf/DescriptorProtos$OneofDescriptorProto;)V
    .locals 0

    .line 9488
    invoke-direct {p0}, Lcom/google/protobuf/DescriptorProtos$OneofDescriptorProto;->clearName()V

    return-void

    .array-data 1
    .end array-data
.end method

.method static synthetic access$17300(Lcom/google/protobuf/DescriptorProtos$OneofDescriptorProto;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 9488
    invoke-direct {p0, p1}, Lcom/google/protobuf/DescriptorProtos$OneofDescriptorProto;->setNameBytes(Lcom/google/protobuf/ByteString;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method static synthetic access$17400(Lcom/google/protobuf/DescriptorProtos$OneofDescriptorProto;Lcom/google/protobuf/DescriptorProtos$OneofOptions;)V
    .locals 0

    .line 9488
    invoke-direct {p0, p1}, Lcom/google/protobuf/DescriptorProtos$OneofDescriptorProto;->setOptions(Lcom/google/protobuf/DescriptorProtos$OneofOptions;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method static synthetic access$17500(Lcom/google/protobuf/DescriptorProtos$OneofDescriptorProto;Lcom/google/protobuf/DescriptorProtos$OneofOptions;)V
    .locals 0

    .line 9488
    invoke-direct {p0, p1}, Lcom/google/protobuf/DescriptorProtos$OneofDescriptorProto;->mergeOptions(Lcom/google/protobuf/DescriptorProtos$OneofOptions;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method static synthetic access$17600(Lcom/google/protobuf/DescriptorProtos$OneofDescriptorProto;)V
    .locals 0

    .line 9488
    invoke-direct {p0}, Lcom/google/protobuf/DescriptorProtos$OneofDescriptorProto;->clearOptions()V

    return-void

    .array-data 1
    .end array-data
.end method

.method private clearName()V
    .locals 1

    .line 9538
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$OneofDescriptorProto;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/protobuf/DescriptorProtos$OneofDescriptorProto;->bitField0_:I

    .line 9539
    invoke-static {}, Lcom/google/protobuf/DescriptorProtos$OneofDescriptorProto;->getDefaultInstance()Lcom/google/protobuf/DescriptorProtos$OneofDescriptorProto;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/DescriptorProtos$OneofDescriptorProto;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/DescriptorProtos$OneofDescriptorProto;->name_:Ljava/lang/String;

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method private clearOptions()V
    .locals 1

    const/4 v0, 0x0

    .line 9593
    iput-object v0, p0, Lcom/google/protobuf/DescriptorProtos$OneofDescriptorProto;->options_:Lcom/google/protobuf/DescriptorProtos$OneofOptions;

    .line 9594
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$OneofDescriptorProto;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/protobuf/DescriptorProtos$OneofDescriptorProto;->bitField0_:I

    return-void

    .array-data 1
    .end array-data
.end method

.method public static getDefaultInstance()Lcom/google/protobuf/DescriptorProtos$OneofDescriptorProto;
    .locals 1

    .line 9869
    sget-object v0, Lcom/google/protobuf/DescriptorProtos$OneofDescriptorProto;->DEFAULT_INSTANCE:Lcom/google/protobuf/DescriptorProtos$OneofDescriptorProto;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method private mergeOptions(Lcom/google/protobuf/DescriptorProtos$OneofOptions;)V
    .locals 2

    .line 9580
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9581
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$OneofDescriptorProto;->options_:Lcom/google/protobuf/DescriptorProtos$OneofOptions;

    if-eqz v0, :cond_0

    .line 9582
    invoke-static {}, Lcom/google/protobuf/DescriptorProtos$OneofOptions;->getDefaultInstance()Lcom/google/protobuf/DescriptorProtos$OneofOptions;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 9583
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$OneofDescriptorProto;->options_:Lcom/google/protobuf/DescriptorProtos$OneofOptions;

    .line 9584
    invoke-static {v0}, Lcom/google/protobuf/DescriptorProtos$OneofOptions;->newBuilder(Lcom/google/protobuf/DescriptorProtos$OneofOptions;)Lcom/google/protobuf/DescriptorProtos$OneofOptions$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/DescriptorProtos$OneofOptions$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/DescriptorProtos$OneofOptions$Builder;

    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$OneofOptions$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/DescriptorProtos$OneofOptions;

    iput-object p1, p0, Lcom/google/protobuf/DescriptorProtos$OneofDescriptorProto;->options_:Lcom/google/protobuf/DescriptorProtos$OneofOptions;

    goto :goto_0

    .line 9586
    :cond_0
    iput-object p1, p0, Lcom/google/protobuf/DescriptorProtos$OneofDescriptorProto;->options_:Lcom/google/protobuf/DescriptorProtos$OneofOptions;

    .line 9588
    :goto_0
    iget p1, p0, Lcom/google/protobuf/DescriptorProtos$OneofDescriptorProto;->bitField0_:I

    or-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/google/protobuf/DescriptorProtos$OneofDescriptorProto;->bitField0_:I

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public static newBuilder()Lcom/google/protobuf/DescriptorProtos$OneofDescriptorProto$Builder;
    .locals 1

    .line 9672
    sget-object v0, Lcom/google/protobuf/DescriptorProtos$OneofDescriptorProto;->DEFAULT_INSTANCE:Lcom/google/protobuf/DescriptorProtos$OneofDescriptorProto;

    invoke-virtual {v0}, Lcom/google/protobuf/DescriptorProtos$OneofDescriptorProto;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$OneofDescriptorProto$Builder;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public static newBuilder(Lcom/google/protobuf/DescriptorProtos$OneofDescriptorProto;)Lcom/google/protobuf/DescriptorProtos$OneofDescriptorProto$Builder;
    .locals 1

    .line 9675
    sget-object v0, Lcom/google/protobuf/DescriptorProtos$OneofDescriptorProto;->DEFAULT_INSTANCE:Lcom/google/protobuf/DescriptorProtos$OneofDescriptorProto;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/DescriptorProtos$OneofDescriptorProto;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/DescriptorProtos$OneofDescriptorProto$Builder;

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/protobuf/DescriptorProtos$OneofDescriptorProto;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 9649
    sget-object v0, Lcom/google/protobuf/DescriptorProtos$OneofDescriptorProto;->DEFAULT_INSTANCE:Lcom/google/protobuf/DescriptorProtos$OneofDescriptorProto;

    invoke-static {v0, p0}, Lcom/google/protobuf/DescriptorProtos$OneofDescriptorProto;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/DescriptorProtos$OneofDescriptorProto;

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/DescriptorProtos$OneofDescriptorProto;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 9655
    sget-object v0, Lcom/google/protobuf/DescriptorProtos$OneofDescriptorProto;->DEFAULT_INSTANCE:Lcom/google/protobuf/DescriptorProtos$OneofDescriptorProto;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/DescriptorProtos$OneofDescriptorProto;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/DescriptorProtos$OneofDescriptorProto;

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/DescriptorProtos$OneofDescriptorProto;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 9613
    sget-object v0, Lcom/google/protobuf/DescriptorProtos$OneofDescriptorProto;->DEFAULT_INSTANCE:Lcom/google/protobuf/DescriptorProtos$OneofDescriptorProto;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/DescriptorProtos$OneofDescriptorProto;

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/DescriptorProtos$OneofDescriptorProto;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 9620
    sget-object v0, Lcom/google/protobuf/DescriptorProtos$OneofDescriptorProto;->DEFAULT_INSTANCE:Lcom/google/protobuf/DescriptorProtos$OneofDescriptorProto;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/DescriptorProtos$OneofDescriptorProto;

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/DescriptorProtos$OneofDescriptorProto;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 9660
    sget-object v0, Lcom/google/protobuf/DescriptorProtos$OneofDescriptorProto;->DEFAULT_INSTANCE:Lcom/google/protobuf/DescriptorProtos$OneofDescriptorProto;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/DescriptorProtos$OneofDescriptorProto;

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/DescriptorProtos$OneofDescriptorProto;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 9667
    sget-object v0, Lcom/google/protobuf/DescriptorProtos$OneofDescriptorProto;->DEFAULT_INSTANCE:Lcom/google/protobuf/DescriptorProtos$OneofDescriptorProto;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/DescriptorProtos$OneofDescriptorProto;

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/protobuf/DescriptorProtos$OneofDescriptorProto;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 9637
    sget-object v0, Lcom/google/protobuf/DescriptorProtos$OneofDescriptorProto;->DEFAULT_INSTANCE:Lcom/google/protobuf/DescriptorProtos$OneofDescriptorProto;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/DescriptorProtos$OneofDescriptorProto;

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/DescriptorProtos$OneofDescriptorProto;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 9644
    sget-object v0, Lcom/google/protobuf/DescriptorProtos$OneofDescriptorProto;->DEFAULT_INSTANCE:Lcom/google/protobuf/DescriptorProtos$OneofDescriptorProto;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/DescriptorProtos$OneofDescriptorProto;

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/google/protobuf/DescriptorProtos$OneofDescriptorProto;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 9600
    sget-object v0, Lcom/google/protobuf/DescriptorProtos$OneofDescriptorProto;->DEFAULT_INSTANCE:Lcom/google/protobuf/DescriptorProtos$OneofDescriptorProto;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/DescriptorProtos$OneofDescriptorProto;

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/DescriptorProtos$OneofDescriptorProto;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 9607
    sget-object v0, Lcom/google/protobuf/DescriptorProtos$OneofDescriptorProto;->DEFAULT_INSTANCE:Lcom/google/protobuf/DescriptorProtos$OneofDescriptorProto;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/DescriptorProtos$OneofDescriptorProto;

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static parseFrom([B)Lcom/google/protobuf/DescriptorProtos$OneofDescriptorProto;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 9625
    sget-object v0, Lcom/google/protobuf/DescriptorProtos$OneofDescriptorProto;->DEFAULT_INSTANCE:Lcom/google/protobuf/DescriptorProtos$OneofDescriptorProto;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/DescriptorProtos$OneofDescriptorProto;

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/DescriptorProtos$OneofDescriptorProto;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 9632
    sget-object v0, Lcom/google/protobuf/DescriptorProtos$OneofDescriptorProto;->DEFAULT_INSTANCE:Lcom/google/protobuf/DescriptorProtos$OneofDescriptorProto;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/DescriptorProtos$OneofDescriptorProto;

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
            "Lcom/google/protobuf/DescriptorProtos$OneofDescriptorProto;",
            ">;"
        }
    .end annotation

    .line 9875
    sget-object v0, Lcom/google/protobuf/DescriptorProtos$OneofDescriptorProto;->DEFAULT_INSTANCE:Lcom/google/protobuf/DescriptorProtos$OneofDescriptorProto;

    invoke-virtual {v0}, Lcom/google/protobuf/DescriptorProtos$OneofDescriptorProto;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method private setName(Ljava/lang/String;)V
    .locals 1

    .line 9530
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9531
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$OneofDescriptorProto;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/protobuf/DescriptorProtos$OneofDescriptorProto;->bitField0_:I

    .line 9532
    iput-object p1, p0, Lcom/google/protobuf/DescriptorProtos$OneofDescriptorProto;->name_:Ljava/lang/String;

    return-void

    .array-data 1
    .end array-data
.end method

.method private setNameBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 9547
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/protobuf/DescriptorProtos$OneofDescriptorProto;->name_:Ljava/lang/String;

    .line 9548
    iget p1, p0, Lcom/google/protobuf/DescriptorProtos$OneofDescriptorProto;->bitField0_:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/protobuf/DescriptorProtos$OneofDescriptorProto;->bitField0_:I

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method private setOptions(Lcom/google/protobuf/DescriptorProtos$OneofOptions;)V
    .locals 0

    .line 9571
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9572
    iput-object p1, p0, Lcom/google/protobuf/DescriptorProtos$OneofDescriptorProto;->options_:Lcom/google/protobuf/DescriptorProtos$OneofOptions;

    .line 9573
    iget p1, p0, Lcom/google/protobuf/DescriptorProtos$OneofDescriptorProto;->bitField0_:I

    or-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/google/protobuf/DescriptorProtos$OneofDescriptorProto;->bitField0_:I

    return-void

    .array-data 1
    .end array-data
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 9808
    sget-object p3, Lcom/google/protobuf/DescriptorProtos$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result p1

    aget p1, p3, p1

    const/4 p3, 0x1

    const/4 v0, 0x0

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_0

    .line 9853
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    if-nez p2, :cond_0

    move p3, v0

    :cond_0
    int-to-byte p1, p3

    .line 9849
    iput-byte p1, p0, Lcom/google/protobuf/DescriptorProtos$OneofDescriptorProto;->memoizedIsInitialized:B

    return-object v1

    .line 9846
    :pswitch_1
    iget-byte p1, p0, Lcom/google/protobuf/DescriptorProtos$OneofDescriptorProto;->memoizedIsInitialized:B

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 9831
    :pswitch_2
    sget-object p1, Lcom/google/protobuf/DescriptorProtos$OneofDescriptorProto;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_2

    .line 9833
    const-class p2, Lcom/google/protobuf/DescriptorProtos$OneofDescriptorProto;

    monitor-enter p2

    .line 9834
    :try_start_0
    sget-object p1, Lcom/google/protobuf/DescriptorProtos$OneofDescriptorProto;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    .line 9836
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lcom/google/protobuf/DescriptorProtos$OneofDescriptorProto;->DEFAULT_INSTANCE:Lcom/google/protobuf/DescriptorProtos$OneofDescriptorProto;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 9839
    sput-object p1, Lcom/google/protobuf/DescriptorProtos$OneofDescriptorProto;->PARSER:Lcom/google/protobuf/Parser;

    .line 9841
    :cond_1
    monitor-exit p2

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_2
    :goto_0
    return-object p1

    .line 9828
    :pswitch_3
    sget-object p1, Lcom/google/protobuf/DescriptorProtos$OneofDescriptorProto;->DEFAULT_INSTANCE:Lcom/google/protobuf/DescriptorProtos$OneofDescriptorProto;

    return-object p1

    :pswitch_4
    const/4 p1, 0x3

    new-array p1, p1, [Ljava/lang/Object;

    const-string p2, "bitField0_"

    aput-object p2, p1, v0

    const-string p2, "name_"

    aput-object p2, p1, p3

    const/4 p2, 0x2

    const-string p3, "options_"

    aput-object p3, p1, p2

    const-string p2, "\u0001\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0001\u0001\u1008\u0000\u0002\u1409\u0001"

    .line 9824
    sget-object p3, Lcom/google/protobuf/DescriptorProtos$OneofDescriptorProto;->DEFAULT_INSTANCE:Lcom/google/protobuf/DescriptorProtos$OneofDescriptorProto;

    invoke-static {p3, p2, p1}, Lcom/google/protobuf/DescriptorProtos$OneofDescriptorProto;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 9813
    :pswitch_5
    new-instance p1, Lcom/google/protobuf/DescriptorProtos$OneofDescriptorProto$Builder;

    invoke-direct {p1, v1}, Lcom/google/protobuf/DescriptorProtos$OneofDescriptorProto$Builder;-><init>(Lcom/google/protobuf/DescriptorProtos$1;)V

    return-object p1

    .line 9810
    :pswitch_6
    new-instance p1, Lcom/google/protobuf/DescriptorProtos$OneofDescriptorProto;

    invoke-direct {p1}, Lcom/google/protobuf/DescriptorProtos$OneofDescriptorProto;-><init>()V

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

.method public getName()Ljava/lang/String;
    .locals 1

    .line 9513
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$OneofDescriptorProto;->name_:Ljava/lang/String;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getNameBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 9522
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$OneofDescriptorProto;->name_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getOptions()Lcom/google/protobuf/DescriptorProtos$OneofOptions;
    .locals 1

    .line 9565
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$OneofDescriptorProto;->options_:Lcom/google/protobuf/DescriptorProtos$OneofOptions;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/protobuf/DescriptorProtos$OneofOptions;->getDefaultInstance()Lcom/google/protobuf/DescriptorProtos$OneofOptions;

    move-result-object v0

    :cond_0
    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public hasName()Z
    .locals 2

    .line 9505
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$OneofDescriptorProto;->bitField0_:I

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

.method public hasOptions()Z
    .locals 1

    .line 9558
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$OneofDescriptorProto;->bitField0_:I

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
