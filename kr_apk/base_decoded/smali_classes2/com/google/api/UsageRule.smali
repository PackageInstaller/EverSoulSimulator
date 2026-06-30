.class public final Lcom/google/api/UsageRule;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "UsageRule.java"

# interfaces
.implements Lcom/google/api/UsageRuleOrBuilder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/api/UsageRule$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/google/api/UsageRule;",
        "Lcom/google/api/UsageRule$Builder;",
        ">;",
        "Lcom/google/api/UsageRuleOrBuilder;"
    }
.end annotation


# static fields
.field public static final ALLOW_UNREGISTERED_CALLS_FIELD_NUMBER:I = 0x2

.field private static final DEFAULT_INSTANCE:Lcom/google/api/UsageRule;

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/api/UsageRule;",
            ">;"
        }
    .end annotation
.end field

.field public static final SELECTOR_FIELD_NUMBER:I = 0x1

.field public static final SKIP_SERVICE_CONTROL_FIELD_NUMBER:I = 0x3


# instance fields
.field private allowUnregisteredCalls_:Z

.field private selector_:Ljava/lang/String;

.field private skipServiceControl_:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 548
    new-instance v0, Lcom/google/api/UsageRule;

    invoke-direct {v0}, Lcom/google/api/UsageRule;-><init>()V

    .line 551
    sput-object v0, Lcom/google/api/UsageRule;->DEFAULT_INSTANCE:Lcom/google/api/UsageRule;

    .line 552
    const-class v1, Lcom/google/api/UsageRule;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method private constructor <init>()V
    .locals 1

    .line 35
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    const-string v0, ""

    .line 36
    iput-object v0, p0, Lcom/google/api/UsageRule;->selector_:Ljava/lang/String;

    return-void

    .array-data 1
    .end array-data
.end method

.method static synthetic access$000()Lcom/google/api/UsageRule;
    .locals 1

    .line 30
    sget-object v0, Lcom/google/api/UsageRule;->DEFAULT_INSTANCE:Lcom/google/api/UsageRule;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method static synthetic access$100(Lcom/google/api/UsageRule;Ljava/lang/String;)V
    .locals 0

    .line 30
    invoke-direct {p0, p1}, Lcom/google/api/UsageRule;->setSelector(Ljava/lang/String;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method static synthetic access$200(Lcom/google/api/UsageRule;)V
    .locals 0

    .line 30
    invoke-direct {p0}, Lcom/google/api/UsageRule;->clearSelector()V

    return-void

    .array-data 1
    .end array-data
.end method

.method static synthetic access$300(Lcom/google/api/UsageRule;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 30
    invoke-direct {p0, p1}, Lcom/google/api/UsageRule;->setSelectorBytes(Lcom/google/protobuf/ByteString;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method static synthetic access$400(Lcom/google/api/UsageRule;Z)V
    .locals 0

    .line 30
    invoke-direct {p0, p1}, Lcom/google/api/UsageRule;->setAllowUnregisteredCalls(Z)V

    return-void

    .array-data 1
    .end array-data
.end method

.method static synthetic access$500(Lcom/google/api/UsageRule;)V
    .locals 0

    .line 30
    invoke-direct {p0}, Lcom/google/api/UsageRule;->clearAllowUnregisteredCalls()V

    return-void

    .array-data 1
    .end array-data
.end method

.method static synthetic access$600(Lcom/google/api/UsageRule;Z)V
    .locals 0

    .line 30
    invoke-direct {p0, p1}, Lcom/google/api/UsageRule;->setSkipServiceControl(Z)V

    return-void

    .array-data 1
    .end array-data
.end method

.method static synthetic access$700(Lcom/google/api/UsageRule;)V
    .locals 0

    .line 30
    invoke-direct {p0}, Lcom/google/api/UsageRule;->clearSkipServiceControl()V

    return-void

    .array-data 1
    .end array-data
.end method

.method private clearAllowUnregisteredCalls()V
    .locals 1

    const/4 v0, 0x0

    .line 153
    iput-boolean v0, p0, Lcom/google/api/UsageRule;->allowUnregisteredCalls_:Z

    return-void

    .array-data 1
    .end array-data
.end method

.method private clearSelector()V
    .locals 1

    .line 96
    invoke-static {}, Lcom/google/api/UsageRule;->getDefaultInstance()Lcom/google/api/UsageRule;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/api/UsageRule;->getSelector()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/UsageRule;->selector_:Ljava/lang/String;

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method private clearSkipServiceControl()V
    .locals 1

    const/4 v0, 0x0

    .line 200
    iput-boolean v0, p0, Lcom/google/api/UsageRule;->skipServiceControl_:Z

    return-void

    .array-data 1
    .end array-data
.end method

.method public static getDefaultInstance()Lcom/google/api/UsageRule;
    .locals 1

    .line 557
    sget-object v0, Lcom/google/api/UsageRule;->DEFAULT_INSTANCE:Lcom/google/api/UsageRule;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public static newBuilder()Lcom/google/api/UsageRule$Builder;
    .locals 1

    .line 278
    sget-object v0, Lcom/google/api/UsageRule;->DEFAULT_INSTANCE:Lcom/google/api/UsageRule;

    invoke-virtual {v0}, Lcom/google/api/UsageRule;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/api/UsageRule$Builder;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public static newBuilder(Lcom/google/api/UsageRule;)Lcom/google/api/UsageRule$Builder;
    .locals 1

    .line 281
    sget-object v0, Lcom/google/api/UsageRule;->DEFAULT_INSTANCE:Lcom/google/api/UsageRule;

    invoke-virtual {v0, p0}, Lcom/google/api/UsageRule;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lcom/google/api/UsageRule$Builder;

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/api/UsageRule;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 255
    sget-object v0, Lcom/google/api/UsageRule;->DEFAULT_INSTANCE:Lcom/google/api/UsageRule;

    invoke-static {v0, p0}, Lcom/google/api/UsageRule;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/api/UsageRule;

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/api/UsageRule;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 261
    sget-object v0, Lcom/google/api/UsageRule;->DEFAULT_INSTANCE:Lcom/google/api/UsageRule;

    invoke-static {v0, p0, p1}, Lcom/google/api/UsageRule;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/api/UsageRule;

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/api/UsageRule;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 219
    sget-object v0, Lcom/google/api/UsageRule;->DEFAULT_INSTANCE:Lcom/google/api/UsageRule;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/api/UsageRule;

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/api/UsageRule;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 226
    sget-object v0, Lcom/google/api/UsageRule;->DEFAULT_INSTANCE:Lcom/google/api/UsageRule;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/api/UsageRule;

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/api/UsageRule;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 266
    sget-object v0, Lcom/google/api/UsageRule;->DEFAULT_INSTANCE:Lcom/google/api/UsageRule;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/api/UsageRule;

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/api/UsageRule;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 273
    sget-object v0, Lcom/google/api/UsageRule;->DEFAULT_INSTANCE:Lcom/google/api/UsageRule;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/api/UsageRule;

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/api/UsageRule;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 243
    sget-object v0, Lcom/google/api/UsageRule;->DEFAULT_INSTANCE:Lcom/google/api/UsageRule;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/api/UsageRule;

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/api/UsageRule;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 250
    sget-object v0, Lcom/google/api/UsageRule;->DEFAULT_INSTANCE:Lcom/google/api/UsageRule;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/api/UsageRule;

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/google/api/UsageRule;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 206
    sget-object v0, Lcom/google/api/UsageRule;->DEFAULT_INSTANCE:Lcom/google/api/UsageRule;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/api/UsageRule;

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/api/UsageRule;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 213
    sget-object v0, Lcom/google/api/UsageRule;->DEFAULT_INSTANCE:Lcom/google/api/UsageRule;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/api/UsageRule;

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static parseFrom([B)Lcom/google/api/UsageRule;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 231
    sget-object v0, Lcom/google/api/UsageRule;->DEFAULT_INSTANCE:Lcom/google/api/UsageRule;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/api/UsageRule;

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/api/UsageRule;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 238
    sget-object v0, Lcom/google/api/UsageRule;->DEFAULT_INSTANCE:Lcom/google/api/UsageRule;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/api/UsageRule;

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
            "Lcom/google/api/UsageRule;",
            ">;"
        }
    .end annotation

    .line 563
    sget-object v0, Lcom/google/api/UsageRule;->DEFAULT_INSTANCE:Lcom/google/api/UsageRule;

    invoke-virtual {v0}, Lcom/google/api/UsageRule;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method private setAllowUnregisteredCalls(Z)V
    .locals 0

    .line 141
    iput-boolean p1, p0, Lcom/google/api/UsageRule;->allowUnregisteredCalls_:Z

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method private setSelector(Ljava/lang/String;)V
    .locals 0

    .line 81
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 83
    iput-object p1, p0, Lcom/google/api/UsageRule;->selector_:Ljava/lang/String;

    return-void

    .array-data 1
    .end array-data
.end method

.method private setSelectorBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 110
    invoke-static {p1}, Lcom/google/api/UsageRule;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 111
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/api/UsageRule;->selector_:Ljava/lang/String;

    return-void

    .array-data 1
    .end array-data
.end method

.method private setSkipServiceControl(Z)V
    .locals 0

    .line 186
    iput-boolean p1, p0, Lcom/google/api/UsageRule;->skipServiceControl_:Z

    return-void

    nop

    .array-data 1
    .end array-data
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 497
    sget-object p2, Lcom/google/api/UsageRule$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x1

    const/4 p3, 0x0

    packed-switch p1, :pswitch_data_0

    .line 541
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p3

    .line 535
    :pswitch_1
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 520
    :pswitch_2
    sget-object p1, Lcom/google/api/UsageRule;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    .line 522
    const-class p2, Lcom/google/api/UsageRule;

    monitor-enter p2

    .line 523
    :try_start_0
    sget-object p1, Lcom/google/api/UsageRule;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_0

    .line 525
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lcom/google/api/UsageRule;->DEFAULT_INSTANCE:Lcom/google/api/UsageRule;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 528
    sput-object p1, Lcom/google/api/UsageRule;->PARSER:Lcom/google/protobuf/Parser;

    .line 530
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

    .line 517
    :pswitch_3
    sget-object p1, Lcom/google/api/UsageRule;->DEFAULT_INSTANCE:Lcom/google/api/UsageRule;

    return-object p1

    :pswitch_4
    const/4 p1, 0x3

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v0, "selector_"

    aput-object v0, p1, p3

    const-string p3, "allowUnregisteredCalls_"

    aput-object p3, p1, p2

    const/4 p2, 0x2

    const-string p3, "skipServiceControl_"

    aput-object p3, p1, p2

    const-string p2, "\u0000\u0003\u0000\u0000\u0001\u0003\u0003\u0000\u0000\u0000\u0001\u0208\u0002\u0007\u0003\u0007"

    .line 513
    sget-object p3, Lcom/google/api/UsageRule;->DEFAULT_INSTANCE:Lcom/google/api/UsageRule;

    invoke-static {p3, p2, p1}, Lcom/google/api/UsageRule;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 502
    :pswitch_5
    new-instance p1, Lcom/google/api/UsageRule$Builder;

    invoke-direct {p1, p3}, Lcom/google/api/UsageRule$Builder;-><init>(Lcom/google/api/UsageRule$1;)V

    return-object p1

    .line 499
    :pswitch_6
    new-instance p1, Lcom/google/api/UsageRule;

    invoke-direct {p1}, Lcom/google/api/UsageRule;-><init>()V

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

.method public getAllowUnregisteredCalls()Z
    .locals 1

    .line 128
    iget-boolean v0, p0, Lcom/google/api/UsageRule;->allowUnregisteredCalls_:Z

    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getSelector()Ljava/lang/String;
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/google/api/UsageRule;->selector_:Ljava/lang/String;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getSelectorBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/google/api/UsageRule;->selector_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getSkipServiceControl()Z
    .locals 1

    .line 171
    iget-boolean v0, p0, Lcom/google/api/UsageRule;->skipServiceControl_:Z

    return v0

    nop

    .array-data 1
    .end array-data
.end method
