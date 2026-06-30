.class public final Lcom/google/rpc/PreconditionFailure;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "PreconditionFailure.java"

# interfaces
.implements Lcom/google/rpc/PreconditionFailureOrBuilder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/rpc/PreconditionFailure$Builder;,
        Lcom/google/rpc/PreconditionFailure$Violation;,
        Lcom/google/rpc/PreconditionFailure$ViolationOrBuilder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/google/rpc/PreconditionFailure;",
        "Lcom/google/rpc/PreconditionFailure$Builder;",
        ">;",
        "Lcom/google/rpc/PreconditionFailureOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/google/rpc/PreconditionFailure;

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/rpc/PreconditionFailure;",
            ">;"
        }
    .end annotation
.end field

.field public static final VIOLATIONS_FIELD_NUMBER:I = 0x1


# instance fields
.field private violations_:Lcom/google/protobuf/Internal$ProtobufList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$ProtobufList<",
            "Lcom/google/rpc/PreconditionFailure$Violation;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1207
    new-instance v0, Lcom/google/rpc/PreconditionFailure;

    invoke-direct {v0}, Lcom/google/rpc/PreconditionFailure;-><init>()V

    .line 1210
    sput-object v0, Lcom/google/rpc/PreconditionFailure;->DEFAULT_INSTANCE:Lcom/google/rpc/PreconditionFailure;

    .line 1211
    const-class v1, Lcom/google/rpc/PreconditionFailure;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method private constructor <init>()V
    .locals 1

    .line 21
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 22
    invoke-static {}, Lcom/google/rpc/PreconditionFailure;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/rpc/PreconditionFailure;->violations_:Lcom/google/protobuf/Internal$ProtobufList;

    return-void

    .array-data 1
    .end array-data
.end method

.method static synthetic access$1100()Lcom/google/rpc/PreconditionFailure;
    .locals 1

    .line 16
    sget-object v0, Lcom/google/rpc/PreconditionFailure;->DEFAULT_INSTANCE:Lcom/google/rpc/PreconditionFailure;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method static synthetic access$1200(Lcom/google/rpc/PreconditionFailure;ILcom/google/rpc/PreconditionFailure$Violation;)V
    .locals 0

    .line 16
    invoke-direct {p0, p1, p2}, Lcom/google/rpc/PreconditionFailure;->setViolations(ILcom/google/rpc/PreconditionFailure$Violation;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method static synthetic access$1300(Lcom/google/rpc/PreconditionFailure;Lcom/google/rpc/PreconditionFailure$Violation;)V
    .locals 0

    .line 16
    invoke-direct {p0, p1}, Lcom/google/rpc/PreconditionFailure;->addViolations(Lcom/google/rpc/PreconditionFailure$Violation;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method static synthetic access$1400(Lcom/google/rpc/PreconditionFailure;ILcom/google/rpc/PreconditionFailure$Violation;)V
    .locals 0

    .line 16
    invoke-direct {p0, p1, p2}, Lcom/google/rpc/PreconditionFailure;->addViolations(ILcom/google/rpc/PreconditionFailure$Violation;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method static synthetic access$1500(Lcom/google/rpc/PreconditionFailure;Ljava/lang/Iterable;)V
    .locals 0

    .line 16
    invoke-direct {p0, p1}, Lcom/google/rpc/PreconditionFailure;->addAllViolations(Ljava/lang/Iterable;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method static synthetic access$1600(Lcom/google/rpc/PreconditionFailure;)V
    .locals 0

    .line 16
    invoke-direct {p0}, Lcom/google/rpc/PreconditionFailure;->clearViolations()V

    return-void

    .array-data 1
    .end array-data
.end method

.method static synthetic access$1700(Lcom/google/rpc/PreconditionFailure;I)V
    .locals 0

    .line 16
    invoke-direct {p0, p1}, Lcom/google/rpc/PreconditionFailure;->removeViolations(I)V

    return-void

    .array-data 1
    .end array-data
.end method

.method private addAllViolations(Ljava/lang/Iterable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/google/rpc/PreconditionFailure$Violation;",
            ">;)V"
        }
    .end annotation

    .line 873
    invoke-direct {p0}, Lcom/google/rpc/PreconditionFailure;->ensureViolationsIsMutable()V

    .line 874
    iget-object v0, p0, Lcom/google/rpc/PreconditionFailure;->violations_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMessageLite;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method private addViolations(ILcom/google/rpc/PreconditionFailure$Violation;)V
    .locals 1

    .line 860
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 861
    invoke-direct {p0}, Lcom/google/rpc/PreconditionFailure;->ensureViolationsIsMutable()V

    .line 862
    iget-object v0, p0, Lcom/google/rpc/PreconditionFailure;->violations_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/Internal$ProtobufList;->add(ILjava/lang/Object;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method private addViolations(Lcom/google/rpc/PreconditionFailure$Violation;)V
    .locals 1

    .line 847
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 848
    invoke-direct {p0}, Lcom/google/rpc/PreconditionFailure;->ensureViolationsIsMutable()V

    .line 849
    iget-object v0, p0, Lcom/google/rpc/PreconditionFailure;->violations_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->add(Ljava/lang/Object;)Z

    return-void

    .array-data 1
    .end array-data
.end method

.method private clearViolations()V
    .locals 1

    .line 885
    invoke-static {}, Lcom/google/rpc/PreconditionFailure;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/rpc/PreconditionFailure;->violations_:Lcom/google/protobuf/Internal$ProtobufList;

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method private ensureViolationsIsMutable()V
    .locals 2

    .line 819
    iget-object v0, p0, Lcom/google/rpc/PreconditionFailure;->violations_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 820
    invoke-interface {v0}, Lcom/google/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result v1

    if-nez v1, :cond_0

    .line 822
    invoke-static {v0}, Lcom/google/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/google/protobuf/Internal$ProtobufList;)Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/rpc/PreconditionFailure;->violations_:Lcom/google/protobuf/Internal$ProtobufList;

    :cond_0
    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public static getDefaultInstance()Lcom/google/rpc/PreconditionFailure;
    .locals 1

    .line 1216
    sget-object v0, Lcom/google/rpc/PreconditionFailure;->DEFAULT_INSTANCE:Lcom/google/rpc/PreconditionFailure;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public static newBuilder()Lcom/google/rpc/PreconditionFailure$Builder;
    .locals 1

    .line 974
    sget-object v0, Lcom/google/rpc/PreconditionFailure;->DEFAULT_INSTANCE:Lcom/google/rpc/PreconditionFailure;

    invoke-virtual {v0}, Lcom/google/rpc/PreconditionFailure;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/rpc/PreconditionFailure$Builder;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public static newBuilder(Lcom/google/rpc/PreconditionFailure;)Lcom/google/rpc/PreconditionFailure$Builder;
    .locals 1

    .line 977
    sget-object v0, Lcom/google/rpc/PreconditionFailure;->DEFAULT_INSTANCE:Lcom/google/rpc/PreconditionFailure;

    invoke-virtual {v0, p0}, Lcom/google/rpc/PreconditionFailure;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lcom/google/rpc/PreconditionFailure$Builder;

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/rpc/PreconditionFailure;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 951
    sget-object v0, Lcom/google/rpc/PreconditionFailure;->DEFAULT_INSTANCE:Lcom/google/rpc/PreconditionFailure;

    invoke-static {v0, p0}, Lcom/google/rpc/PreconditionFailure;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/rpc/PreconditionFailure;

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/rpc/PreconditionFailure;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 957
    sget-object v0, Lcom/google/rpc/PreconditionFailure;->DEFAULT_INSTANCE:Lcom/google/rpc/PreconditionFailure;

    invoke-static {v0, p0, p1}, Lcom/google/rpc/PreconditionFailure;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/rpc/PreconditionFailure;

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/rpc/PreconditionFailure;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 915
    sget-object v0, Lcom/google/rpc/PreconditionFailure;->DEFAULT_INSTANCE:Lcom/google/rpc/PreconditionFailure;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/rpc/PreconditionFailure;

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/rpc/PreconditionFailure;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 922
    sget-object v0, Lcom/google/rpc/PreconditionFailure;->DEFAULT_INSTANCE:Lcom/google/rpc/PreconditionFailure;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/rpc/PreconditionFailure;

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/rpc/PreconditionFailure;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 962
    sget-object v0, Lcom/google/rpc/PreconditionFailure;->DEFAULT_INSTANCE:Lcom/google/rpc/PreconditionFailure;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/rpc/PreconditionFailure;

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/rpc/PreconditionFailure;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 969
    sget-object v0, Lcom/google/rpc/PreconditionFailure;->DEFAULT_INSTANCE:Lcom/google/rpc/PreconditionFailure;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/rpc/PreconditionFailure;

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/rpc/PreconditionFailure;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 939
    sget-object v0, Lcom/google/rpc/PreconditionFailure;->DEFAULT_INSTANCE:Lcom/google/rpc/PreconditionFailure;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/rpc/PreconditionFailure;

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/rpc/PreconditionFailure;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 946
    sget-object v0, Lcom/google/rpc/PreconditionFailure;->DEFAULT_INSTANCE:Lcom/google/rpc/PreconditionFailure;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/rpc/PreconditionFailure;

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/google/rpc/PreconditionFailure;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 902
    sget-object v0, Lcom/google/rpc/PreconditionFailure;->DEFAULT_INSTANCE:Lcom/google/rpc/PreconditionFailure;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/rpc/PreconditionFailure;

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/rpc/PreconditionFailure;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 909
    sget-object v0, Lcom/google/rpc/PreconditionFailure;->DEFAULT_INSTANCE:Lcom/google/rpc/PreconditionFailure;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/rpc/PreconditionFailure;

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static parseFrom([B)Lcom/google/rpc/PreconditionFailure;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 927
    sget-object v0, Lcom/google/rpc/PreconditionFailure;->DEFAULT_INSTANCE:Lcom/google/rpc/PreconditionFailure;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/rpc/PreconditionFailure;

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/rpc/PreconditionFailure;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 934
    sget-object v0, Lcom/google/rpc/PreconditionFailure;->DEFAULT_INSTANCE:Lcom/google/rpc/PreconditionFailure;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/rpc/PreconditionFailure;

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
            "Lcom/google/rpc/PreconditionFailure;",
            ">;"
        }
    .end annotation

    .line 1222
    sget-object v0, Lcom/google/rpc/PreconditionFailure;->DEFAULT_INSTANCE:Lcom/google/rpc/PreconditionFailure;

    invoke-virtual {v0}, Lcom/google/rpc/PreconditionFailure;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method private removeViolations(I)V
    .locals 1

    .line 895
    invoke-direct {p0}, Lcom/google/rpc/PreconditionFailure;->ensureViolationsIsMutable()V

    .line 896
    iget-object v0, p0, Lcom/google/rpc/PreconditionFailure;->violations_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->remove(I)Ljava/lang/Object;

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method private setViolations(ILcom/google/rpc/PreconditionFailure$Violation;)V
    .locals 1

    .line 835
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 836
    invoke-direct {p0}, Lcom/google/rpc/PreconditionFailure;->ensureViolationsIsMutable()V

    .line 837
    iget-object v0, p0, Lcom/google/rpc/PreconditionFailure;->violations_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/Internal$ProtobufList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void

    .array-data 1
    .end array-data
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1158
    sget-object p2, Lcom/google/rpc/PreconditionFailure$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x1

    const/4 p3, 0x0

    packed-switch p1, :pswitch_data_0

    .line 1200
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p3

    .line 1194
    :pswitch_1
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 1179
    :pswitch_2
    sget-object p1, Lcom/google/rpc/PreconditionFailure;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    .line 1181
    const-class p2, Lcom/google/rpc/PreconditionFailure;

    monitor-enter p2

    .line 1182
    :try_start_0
    sget-object p1, Lcom/google/rpc/PreconditionFailure;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_0

    .line 1184
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lcom/google/rpc/PreconditionFailure;->DEFAULT_INSTANCE:Lcom/google/rpc/PreconditionFailure;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 1187
    sput-object p1, Lcom/google/rpc/PreconditionFailure;->PARSER:Lcom/google/protobuf/Parser;

    .line 1189
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

    .line 1176
    :pswitch_3
    sget-object p1, Lcom/google/rpc/PreconditionFailure;->DEFAULT_INSTANCE:Lcom/google/rpc/PreconditionFailure;

    return-object p1

    :pswitch_4
    const/4 p1, 0x2

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string/jumbo v0, "violations_"

    aput-object v0, p1, p3

    .line 1166
    const-class p3, Lcom/google/rpc/PreconditionFailure$Violation;

    aput-object p3, p1, p2

    const-string p2, "\u0000\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0001\u0000\u0001\u001b"

    .line 1172
    sget-object p3, Lcom/google/rpc/PreconditionFailure;->DEFAULT_INSTANCE:Lcom/google/rpc/PreconditionFailure;

    invoke-static {p3, p2, p1}, Lcom/google/rpc/PreconditionFailure;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 1163
    :pswitch_5
    new-instance p1, Lcom/google/rpc/PreconditionFailure$Builder;

    invoke-direct {p1, p3}, Lcom/google/rpc/PreconditionFailure$Builder;-><init>(Lcom/google/rpc/PreconditionFailure$1;)V

    return-object p1

    .line 1160
    :pswitch_6
    new-instance p1, Lcom/google/rpc/PreconditionFailure;

    invoke-direct {p1}, Lcom/google/rpc/PreconditionFailure;-><init>()V

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

.method public getViolations(I)Lcom/google/rpc/PreconditionFailure$Violation;
    .locals 1

    .line 805
    iget-object v0, p0, Lcom/google/rpc/PreconditionFailure;->violations_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/rpc/PreconditionFailure$Violation;

    return-object p1

    nop

    .array-data 1
    .end array-data
.end method

.method public getViolationsCount()I
    .locals 1

    .line 794
    iget-object v0, p0, Lcom/google/rpc/PreconditionFailure;->violations_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0}, Lcom/google/protobuf/Internal$ProtobufList;->size()I

    move-result v0

    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getViolationsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/rpc/PreconditionFailure$Violation;",
            ">;"
        }
    .end annotation

    .line 772
    iget-object v0, p0, Lcom/google/rpc/PreconditionFailure;->violations_:Lcom/google/protobuf/Internal$ProtobufList;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getViolationsOrBuilder(I)Lcom/google/rpc/PreconditionFailure$ViolationOrBuilder;
    .locals 1

    .line 816
    iget-object v0, p0, Lcom/google/rpc/PreconditionFailure;->violations_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/rpc/PreconditionFailure$ViolationOrBuilder;

    return-object p1

    nop

    .array-data 1
    .end array-data
.end method

.method public getViolationsOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/google/rpc/PreconditionFailure$ViolationOrBuilder;",
            ">;"
        }
    .end annotation

    .line 783
    iget-object v0, p0, Lcom/google/rpc/PreconditionFailure;->violations_:Lcom/google/protobuf/Internal$ProtobufList;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method
