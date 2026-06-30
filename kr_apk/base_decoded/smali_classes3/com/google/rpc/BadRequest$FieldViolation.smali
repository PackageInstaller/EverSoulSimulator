.class public final Lcom/google/rpc/BadRequest$FieldViolation;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "BadRequest.java"

# interfaces
.implements Lcom/google/rpc/BadRequest$FieldViolationOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/rpc/BadRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "FieldViolation"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/rpc/BadRequest$FieldViolation$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/google/rpc/BadRequest$FieldViolation;",
        "Lcom/google/rpc/BadRequest$FieldViolation$Builder;",
        ">;",
        "Lcom/google/rpc/BadRequest$FieldViolationOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/google/rpc/BadRequest$FieldViolation;

.field public static final DESCRIPTION_FIELD_NUMBER:I = 0x2

.field public static final FIELD_FIELD_NUMBER:I = 0x1

.field private static volatile PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/rpc/BadRequest$FieldViolation;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private description_:Ljava/lang/String;

.field private field_:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 534
    new-instance v0, Lcom/google/rpc/BadRequest$FieldViolation;

    invoke-direct {v0}, Lcom/google/rpc/BadRequest$FieldViolation;-><init>()V

    .line 537
    sput-object v0, Lcom/google/rpc/BadRequest$FieldViolation;->DEFAULT_INSTANCE:Lcom/google/rpc/BadRequest$FieldViolation;

    .line 538
    const-class v1, Lcom/google/rpc/BadRequest$FieldViolation;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method private constructor <init>()V
    .locals 1

    .line 82
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    const-string v0, ""

    .line 83
    iput-object v0, p0, Lcom/google/rpc/BadRequest$FieldViolation;->field_:Ljava/lang/String;

    .line 84
    iput-object v0, p0, Lcom/google/rpc/BadRequest$FieldViolation;->description_:Ljava/lang/String;

    return-void

    .array-data 1
    .end array-data
.end method

.method static synthetic access$000()Lcom/google/rpc/BadRequest$FieldViolation;
    .locals 1

    .line 77
    sget-object v0, Lcom/google/rpc/BadRequest$FieldViolation;->DEFAULT_INSTANCE:Lcom/google/rpc/BadRequest$FieldViolation;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method static synthetic access$100(Lcom/google/rpc/BadRequest$FieldViolation;Ljava/lang/String;)V
    .locals 0

    .line 77
    invoke-direct {p0, p1}, Lcom/google/rpc/BadRequest$FieldViolation;->setField(Ljava/lang/String;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method static synthetic access$200(Lcom/google/rpc/BadRequest$FieldViolation;)V
    .locals 0

    .line 77
    invoke-direct {p0}, Lcom/google/rpc/BadRequest$FieldViolation;->clearField()V

    return-void

    .array-data 1
    .end array-data
.end method

.method static synthetic access$300(Lcom/google/rpc/BadRequest$FieldViolation;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 77
    invoke-direct {p0, p1}, Lcom/google/rpc/BadRequest$FieldViolation;->setFieldBytes(Lcom/google/protobuf/ByteString;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method static synthetic access$400(Lcom/google/rpc/BadRequest$FieldViolation;Ljava/lang/String;)V
    .locals 0

    .line 77
    invoke-direct {p0, p1}, Lcom/google/rpc/BadRequest$FieldViolation;->setDescription(Ljava/lang/String;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method static synthetic access$500(Lcom/google/rpc/BadRequest$FieldViolation;)V
    .locals 0

    .line 77
    invoke-direct {p0}, Lcom/google/rpc/BadRequest$FieldViolation;->clearDescription()V

    return-void

    .array-data 1
    .end array-data
.end method

.method static synthetic access$600(Lcom/google/rpc/BadRequest$FieldViolation;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 77
    invoke-direct {p0, p1}, Lcom/google/rpc/BadRequest$FieldViolation;->setDescriptionBytes(Lcom/google/protobuf/ByteString;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method private clearDescription()V
    .locals 1

    .line 213
    invoke-static {}, Lcom/google/rpc/BadRequest$FieldViolation;->getDefaultInstance()Lcom/google/rpc/BadRequest$FieldViolation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/rpc/BadRequest$FieldViolation;->getDescription()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/rpc/BadRequest$FieldViolation;->description_:Ljava/lang/String;

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method private clearField()V
    .locals 1

    .line 144
    invoke-static {}, Lcom/google/rpc/BadRequest$FieldViolation;->getDefaultInstance()Lcom/google/rpc/BadRequest$FieldViolation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/rpc/BadRequest$FieldViolation;->getField()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/rpc/BadRequest$FieldViolation;->field_:Ljava/lang/String;

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public static getDefaultInstance()Lcom/google/rpc/BadRequest$FieldViolation;
    .locals 1

    .line 543
    sget-object v0, Lcom/google/rpc/BadRequest$FieldViolation;->DEFAULT_INSTANCE:Lcom/google/rpc/BadRequest$FieldViolation;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public static newBuilder()Lcom/google/rpc/BadRequest$FieldViolation$Builder;
    .locals 1

    .line 305
    sget-object v0, Lcom/google/rpc/BadRequest$FieldViolation;->DEFAULT_INSTANCE:Lcom/google/rpc/BadRequest$FieldViolation;

    invoke-virtual {v0}, Lcom/google/rpc/BadRequest$FieldViolation;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/rpc/BadRequest$FieldViolation$Builder;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public static newBuilder(Lcom/google/rpc/BadRequest$FieldViolation;)Lcom/google/rpc/BadRequest$FieldViolation$Builder;
    .locals 1

    .line 308
    sget-object v0, Lcom/google/rpc/BadRequest$FieldViolation;->DEFAULT_INSTANCE:Lcom/google/rpc/BadRequest$FieldViolation;

    invoke-virtual {v0, p0}, Lcom/google/rpc/BadRequest$FieldViolation;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lcom/google/rpc/BadRequest$FieldViolation$Builder;

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/rpc/BadRequest$FieldViolation;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 282
    sget-object v0, Lcom/google/rpc/BadRequest$FieldViolation;->DEFAULT_INSTANCE:Lcom/google/rpc/BadRequest$FieldViolation;

    invoke-static {v0, p0}, Lcom/google/rpc/BadRequest$FieldViolation;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/rpc/BadRequest$FieldViolation;

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/rpc/BadRequest$FieldViolation;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 288
    sget-object v0, Lcom/google/rpc/BadRequest$FieldViolation;->DEFAULT_INSTANCE:Lcom/google/rpc/BadRequest$FieldViolation;

    invoke-static {v0, p0, p1}, Lcom/google/rpc/BadRequest$FieldViolation;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/rpc/BadRequest$FieldViolation;

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/rpc/BadRequest$FieldViolation;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 246
    sget-object v0, Lcom/google/rpc/BadRequest$FieldViolation;->DEFAULT_INSTANCE:Lcom/google/rpc/BadRequest$FieldViolation;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/rpc/BadRequest$FieldViolation;

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/rpc/BadRequest$FieldViolation;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 253
    sget-object v0, Lcom/google/rpc/BadRequest$FieldViolation;->DEFAULT_INSTANCE:Lcom/google/rpc/BadRequest$FieldViolation;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/rpc/BadRequest$FieldViolation;

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/rpc/BadRequest$FieldViolation;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 293
    sget-object v0, Lcom/google/rpc/BadRequest$FieldViolation;->DEFAULT_INSTANCE:Lcom/google/rpc/BadRequest$FieldViolation;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/rpc/BadRequest$FieldViolation;

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/rpc/BadRequest$FieldViolation;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 300
    sget-object v0, Lcom/google/rpc/BadRequest$FieldViolation;->DEFAULT_INSTANCE:Lcom/google/rpc/BadRequest$FieldViolation;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/rpc/BadRequest$FieldViolation;

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/rpc/BadRequest$FieldViolation;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 270
    sget-object v0, Lcom/google/rpc/BadRequest$FieldViolation;->DEFAULT_INSTANCE:Lcom/google/rpc/BadRequest$FieldViolation;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/rpc/BadRequest$FieldViolation;

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/rpc/BadRequest$FieldViolation;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 277
    sget-object v0, Lcom/google/rpc/BadRequest$FieldViolation;->DEFAULT_INSTANCE:Lcom/google/rpc/BadRequest$FieldViolation;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/rpc/BadRequest$FieldViolation;

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/google/rpc/BadRequest$FieldViolation;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 233
    sget-object v0, Lcom/google/rpc/BadRequest$FieldViolation;->DEFAULT_INSTANCE:Lcom/google/rpc/BadRequest$FieldViolation;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/rpc/BadRequest$FieldViolation;

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/rpc/BadRequest$FieldViolation;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 240
    sget-object v0, Lcom/google/rpc/BadRequest$FieldViolation;->DEFAULT_INSTANCE:Lcom/google/rpc/BadRequest$FieldViolation;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/rpc/BadRequest$FieldViolation;

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static parseFrom([B)Lcom/google/rpc/BadRequest$FieldViolation;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 258
    sget-object v0, Lcom/google/rpc/BadRequest$FieldViolation;->DEFAULT_INSTANCE:Lcom/google/rpc/BadRequest$FieldViolation;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/rpc/BadRequest$FieldViolation;

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/rpc/BadRequest$FieldViolation;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 265
    sget-object v0, Lcom/google/rpc/BadRequest$FieldViolation;->DEFAULT_INSTANCE:Lcom/google/rpc/BadRequest$FieldViolation;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/rpc/BadRequest$FieldViolation;

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
            "Lcom/google/rpc/BadRequest$FieldViolation;",
            ">;"
        }
    .end annotation

    .line 549
    sget-object v0, Lcom/google/rpc/BadRequest$FieldViolation;->DEFAULT_INSTANCE:Lcom/google/rpc/BadRequest$FieldViolation;

    invoke-virtual {v0}, Lcom/google/rpc/BadRequest$FieldViolation;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method private setDescription(Ljava/lang/String;)V
    .locals 0

    .line 200
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 202
    iput-object p1, p0, Lcom/google/rpc/BadRequest$FieldViolation;->description_:Ljava/lang/String;

    return-void

    .array-data 1
    .end array-data
.end method

.method private setDescriptionBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 225
    invoke-static {p1}, Lcom/google/rpc/BadRequest$FieldViolation;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 226
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/rpc/BadRequest$FieldViolation;->description_:Ljava/lang/String;

    return-void

    .array-data 1
    .end array-data
.end method

.method private setField(Ljava/lang/String;)V
    .locals 0

    .line 129
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 131
    iput-object p1, p0, Lcom/google/rpc/BadRequest$FieldViolation;->field_:Ljava/lang/String;

    return-void

    .array-data 1
    .end array-data
.end method

.method private setFieldBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 158
    invoke-static {p1}, Lcom/google/rpc/BadRequest$FieldViolation;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 159
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/rpc/BadRequest$FieldViolation;->field_:Ljava/lang/String;

    return-void

    .array-data 1
    .end array-data
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 484
    sget-object p2, Lcom/google/rpc/BadRequest$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x1

    const/4 p3, 0x0

    packed-switch p1, :pswitch_data_0

    .line 527
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p3

    .line 521
    :pswitch_1
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 506
    :pswitch_2
    sget-object p1, Lcom/google/rpc/BadRequest$FieldViolation;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    .line 508
    const-class p2, Lcom/google/rpc/BadRequest$FieldViolation;

    monitor-enter p2

    .line 509
    :try_start_0
    sget-object p1, Lcom/google/rpc/BadRequest$FieldViolation;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_0

    .line 511
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lcom/google/rpc/BadRequest$FieldViolation;->DEFAULT_INSTANCE:Lcom/google/rpc/BadRequest$FieldViolation;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 514
    sput-object p1, Lcom/google/rpc/BadRequest$FieldViolation;->PARSER:Lcom/google/protobuf/Parser;

    .line 516
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

    .line 503
    :pswitch_3
    sget-object p1, Lcom/google/rpc/BadRequest$FieldViolation;->DEFAULT_INSTANCE:Lcom/google/rpc/BadRequest$FieldViolation;

    return-object p1

    :pswitch_4
    const/4 p1, 0x2

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v0, "field_"

    aput-object v0, p1, p3

    const-string p3, "description_"

    aput-object p3, p1, p2

    const-string p2, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0000\u0000\u0001\u0208\u0002\u0208"

    .line 499
    sget-object p3, Lcom/google/rpc/BadRequest$FieldViolation;->DEFAULT_INSTANCE:Lcom/google/rpc/BadRequest$FieldViolation;

    invoke-static {p3, p2, p1}, Lcom/google/rpc/BadRequest$FieldViolation;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 489
    :pswitch_5
    new-instance p1, Lcom/google/rpc/BadRequest$FieldViolation$Builder;

    invoke-direct {p1, p3}, Lcom/google/rpc/BadRequest$FieldViolation$Builder;-><init>(Lcom/google/rpc/BadRequest$1;)V

    return-object p1

    .line 486
    :pswitch_6
    new-instance p1, Lcom/google/rpc/BadRequest$FieldViolation;

    invoke-direct {p1}, Lcom/google/rpc/BadRequest$FieldViolation;-><init>()V

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

.method public getDescription()Ljava/lang/String;
    .locals 1

    .line 175
    iget-object v0, p0, Lcom/google/rpc/BadRequest$FieldViolation;->description_:Ljava/lang/String;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getDescriptionBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 188
    iget-object v0, p0, Lcom/google/rpc/BadRequest$FieldViolation;->description_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getField()Ljava/lang/String;
    .locals 1

    .line 100
    iget-object v0, p0, Lcom/google/rpc/BadRequest$FieldViolation;->field_:Ljava/lang/String;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getFieldBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 115
    iget-object v0, p0, Lcom/google/rpc/BadRequest$FieldViolation;->field_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method
