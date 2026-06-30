.class public final Lcom/google/api/Backend;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Backend.java"

# interfaces
.implements Lcom/google/api/BackendOrBuilder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/api/Backend$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/google/api/Backend;",
        "Lcom/google/api/Backend$Builder;",
        ">;",
        "Lcom/google/api/BackendOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/google/api/Backend;

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/api/Backend;",
            ">;"
        }
    .end annotation
.end field

.field public static final RULES_FIELD_NUMBER:I = 0x1


# instance fields
.field private rules_:Lcom/google/protobuf/Internal$ProtobufList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$ProtobufList<",
            "Lcom/google/api/BackendRule;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 487
    new-instance v0, Lcom/google/api/Backend;

    invoke-direct {v0}, Lcom/google/api/Backend;-><init>()V

    .line 490
    sput-object v0, Lcom/google/api/Backend;->DEFAULT_INSTANCE:Lcom/google/api/Backend;

    .line 491
    const-class v1, Lcom/google/api/Backend;

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

    .line 19
    invoke-static {}, Lcom/google/api/Backend;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/Backend;->rules_:Lcom/google/protobuf/Internal$ProtobufList;

    return-void

    .array-data 1
    .end array-data
.end method

.method static synthetic access$000()Lcom/google/api/Backend;
    .locals 1

    .line 13
    sget-object v0, Lcom/google/api/Backend;->DEFAULT_INSTANCE:Lcom/google/api/Backend;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method static synthetic access$100(Lcom/google/api/Backend;ILcom/google/api/BackendRule;)V
    .locals 0

    .line 13
    invoke-direct {p0, p1, p2}, Lcom/google/api/Backend;->setRules(ILcom/google/api/BackendRule;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method static synthetic access$200(Lcom/google/api/Backend;Lcom/google/api/BackendRule;)V
    .locals 0

    .line 13
    invoke-direct {p0, p1}, Lcom/google/api/Backend;->addRules(Lcom/google/api/BackendRule;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method static synthetic access$300(Lcom/google/api/Backend;ILcom/google/api/BackendRule;)V
    .locals 0

    .line 13
    invoke-direct {p0, p1, p2}, Lcom/google/api/Backend;->addRules(ILcom/google/api/BackendRule;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method static synthetic access$400(Lcom/google/api/Backend;Ljava/lang/Iterable;)V
    .locals 0

    .line 13
    invoke-direct {p0, p1}, Lcom/google/api/Backend;->addAllRules(Ljava/lang/Iterable;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method static synthetic access$500(Lcom/google/api/Backend;)V
    .locals 0

    .line 13
    invoke-direct {p0}, Lcom/google/api/Backend;->clearRules()V

    return-void

    .array-data 1
    .end array-data
.end method

.method static synthetic access$600(Lcom/google/api/Backend;I)V
    .locals 0

    .line 13
    invoke-direct {p0, p1}, Lcom/google/api/Backend;->removeRules(I)V

    return-void

    .array-data 1
    .end array-data
.end method

.method private addAllRules(Ljava/lang/Iterable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/google/api/BackendRule;",
            ">;)V"
        }
    .end annotation

    .line 142
    invoke-direct {p0}, Lcom/google/api/Backend;->ensureRulesIsMutable()V

    .line 143
    iget-object v0, p0, Lcom/google/api/Backend;->rules_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMessageLite;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method private addRules(ILcom/google/api/BackendRule;)V
    .locals 1

    .line 128
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 129
    invoke-direct {p0}, Lcom/google/api/Backend;->ensureRulesIsMutable()V

    .line 130
    iget-object v0, p0, Lcom/google/api/Backend;->rules_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/Internal$ProtobufList;->add(ILjava/lang/Object;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method private addRules(Lcom/google/api/BackendRule;)V
    .locals 1

    .line 114
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 115
    invoke-direct {p0}, Lcom/google/api/Backend;->ensureRulesIsMutable()V

    .line 116
    iget-object v0, p0, Lcom/google/api/Backend;->rules_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->add(Ljava/lang/Object;)Z

    return-void

    .array-data 1
    .end array-data
.end method

.method private clearRules()V
    .locals 1

    .line 155
    invoke-static {}, Lcom/google/api/Backend;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/Backend;->rules_:Lcom/google/protobuf/Internal$ProtobufList;

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method private ensureRulesIsMutable()V
    .locals 2

    .line 84
    iget-object v0, p0, Lcom/google/api/Backend;->rules_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 85
    invoke-interface {v0}, Lcom/google/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result v1

    if-nez v1, :cond_0

    .line 87
    invoke-static {v0}, Lcom/google/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/google/protobuf/Internal$ProtobufList;)Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/Backend;->rules_:Lcom/google/protobuf/Internal$ProtobufList;

    :cond_0
    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public static getDefaultInstance()Lcom/google/api/Backend;
    .locals 1

    .line 496
    sget-object v0, Lcom/google/api/Backend;->DEFAULT_INSTANCE:Lcom/google/api/Backend;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public static newBuilder()Lcom/google/api/Backend$Builder;
    .locals 1

    .line 245
    sget-object v0, Lcom/google/api/Backend;->DEFAULT_INSTANCE:Lcom/google/api/Backend;

    invoke-virtual {v0}, Lcom/google/api/Backend;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/api/Backend$Builder;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public static newBuilder(Lcom/google/api/Backend;)Lcom/google/api/Backend$Builder;
    .locals 1

    .line 248
    sget-object v0, Lcom/google/api/Backend;->DEFAULT_INSTANCE:Lcom/google/api/Backend;

    invoke-virtual {v0, p0}, Lcom/google/api/Backend;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lcom/google/api/Backend$Builder;

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/api/Backend;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 222
    sget-object v0, Lcom/google/api/Backend;->DEFAULT_INSTANCE:Lcom/google/api/Backend;

    invoke-static {v0, p0}, Lcom/google/api/Backend;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/api/Backend;

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/api/Backend;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 228
    sget-object v0, Lcom/google/api/Backend;->DEFAULT_INSTANCE:Lcom/google/api/Backend;

    invoke-static {v0, p0, p1}, Lcom/google/api/Backend;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/api/Backend;

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/api/Backend;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 186
    sget-object v0, Lcom/google/api/Backend;->DEFAULT_INSTANCE:Lcom/google/api/Backend;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/api/Backend;

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/api/Backend;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 193
    sget-object v0, Lcom/google/api/Backend;->DEFAULT_INSTANCE:Lcom/google/api/Backend;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/api/Backend;

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/api/Backend;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 233
    sget-object v0, Lcom/google/api/Backend;->DEFAULT_INSTANCE:Lcom/google/api/Backend;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/api/Backend;

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/api/Backend;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 240
    sget-object v0, Lcom/google/api/Backend;->DEFAULT_INSTANCE:Lcom/google/api/Backend;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/api/Backend;

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/api/Backend;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 210
    sget-object v0, Lcom/google/api/Backend;->DEFAULT_INSTANCE:Lcom/google/api/Backend;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/api/Backend;

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/api/Backend;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 217
    sget-object v0, Lcom/google/api/Backend;->DEFAULT_INSTANCE:Lcom/google/api/Backend;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/api/Backend;

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/google/api/Backend;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 173
    sget-object v0, Lcom/google/api/Backend;->DEFAULT_INSTANCE:Lcom/google/api/Backend;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/api/Backend;

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/api/Backend;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 180
    sget-object v0, Lcom/google/api/Backend;->DEFAULT_INSTANCE:Lcom/google/api/Backend;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/api/Backend;

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static parseFrom([B)Lcom/google/api/Backend;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 198
    sget-object v0, Lcom/google/api/Backend;->DEFAULT_INSTANCE:Lcom/google/api/Backend;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/api/Backend;

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/api/Backend;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 205
    sget-object v0, Lcom/google/api/Backend;->DEFAULT_INSTANCE:Lcom/google/api/Backend;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/api/Backend;

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
            "Lcom/google/api/Backend;",
            ">;"
        }
    .end annotation

    .line 502
    sget-object v0, Lcom/google/api/Backend;->DEFAULT_INSTANCE:Lcom/google/api/Backend;

    invoke-virtual {v0}, Lcom/google/api/Backend;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method private removeRules(I)V
    .locals 1

    .line 166
    invoke-direct {p0}, Lcom/google/api/Backend;->ensureRulesIsMutable()V

    .line 167
    iget-object v0, p0, Lcom/google/api/Backend;->rules_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->remove(I)Ljava/lang/Object;

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method private setRules(ILcom/google/api/BackendRule;)V
    .locals 1

    .line 101
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 102
    invoke-direct {p0}, Lcom/google/api/Backend;->ensureRulesIsMutable()V

    .line 103
    iget-object v0, p0, Lcom/google/api/Backend;->rules_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/Internal$ProtobufList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void

    .array-data 1
    .end array-data
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 438
    sget-object p2, Lcom/google/api/Backend$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x1

    const/4 p3, 0x0

    packed-switch p1, :pswitch_data_0

    .line 480
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p3

    .line 474
    :pswitch_1
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 459
    :pswitch_2
    sget-object p1, Lcom/google/api/Backend;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    .line 461
    const-class p2, Lcom/google/api/Backend;

    monitor-enter p2

    .line 462
    :try_start_0
    sget-object p1, Lcom/google/api/Backend;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_0

    .line 464
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lcom/google/api/Backend;->DEFAULT_INSTANCE:Lcom/google/api/Backend;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 467
    sput-object p1, Lcom/google/api/Backend;->PARSER:Lcom/google/protobuf/Parser;

    .line 469
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

    .line 456
    :pswitch_3
    sget-object p1, Lcom/google/api/Backend;->DEFAULT_INSTANCE:Lcom/google/api/Backend;

    return-object p1

    :pswitch_4
    const/4 p1, 0x2

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v0, "rules_"

    aput-object v0, p1, p3

    .line 446
    const-class p3, Lcom/google/api/BackendRule;

    aput-object p3, p1, p2

    const-string p2, "\u0000\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0001\u0000\u0001\u001b"

    .line 452
    sget-object p3, Lcom/google/api/Backend;->DEFAULT_INSTANCE:Lcom/google/api/Backend;

    invoke-static {p3, p2, p1}, Lcom/google/api/Backend;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 443
    :pswitch_5
    new-instance p1, Lcom/google/api/Backend$Builder;

    invoke-direct {p1, p3}, Lcom/google/api/Backend$Builder;-><init>(Lcom/google/api/Backend$1;)V

    return-object p1

    .line 440
    :pswitch_6
    new-instance p1, Lcom/google/api/Backend;

    invoke-direct {p1}, Lcom/google/api/Backend;-><init>()V

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

.method public getRules(I)Lcom/google/api/BackendRule;
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/google/api/Backend;->rules_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/api/BackendRule;

    return-object p1

    nop

    .array-data 1
    .end array-data
.end method

.method public getRulesCount()I
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/google/api/Backend;->rules_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0}, Lcom/google/protobuf/Internal$ProtobufList;->size()I

    move-result v0

    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getRulesList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/api/BackendRule;",
            ">;"
        }
    .end annotation

    .line 33
    iget-object v0, p0, Lcom/google/api/Backend;->rules_:Lcom/google/protobuf/Internal$ProtobufList;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getRulesOrBuilder(I)Lcom/google/api/BackendRuleOrBuilder;
    .locals 1

    .line 81
    iget-object v0, p0, Lcom/google/api/Backend;->rules_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/api/BackendRuleOrBuilder;

    return-object p1

    nop

    .array-data 1
    .end array-data
.end method

.method public getRulesOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/google/api/BackendRuleOrBuilder;",
            ">;"
        }
    .end annotation

    .line 45
    iget-object v0, p0, Lcom/google/api/Backend;->rules_:Lcom/google/protobuf/Internal$ProtobufList;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method
