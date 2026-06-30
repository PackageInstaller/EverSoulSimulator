.class public final Lcom/google/cloud/audit/AuthorizationInfo;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "AuthorizationInfo.java"

# interfaces
.implements Lcom/google/cloud/audit/AuthorizationInfoOrBuilder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/cloud/audit/AuthorizationInfo$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/google/cloud/audit/AuthorizationInfo;",
        "Lcom/google/cloud/audit/AuthorizationInfo$Builder;",
        ">;",
        "Lcom/google/cloud/audit/AuthorizationInfoOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/google/cloud/audit/AuthorizationInfo;

.field public static final GRANTED_FIELD_NUMBER:I = 0x3

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/cloud/audit/AuthorizationInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final PERMISSION_FIELD_NUMBER:I = 0x2

.field public static final RESOURCE_FIELD_NUMBER:I = 0x1


# instance fields
.field private granted_:Z

.field private permission_:Ljava/lang/String;

.field private resource_:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 545
    new-instance v0, Lcom/google/cloud/audit/AuthorizationInfo;

    invoke-direct {v0}, Lcom/google/cloud/audit/AuthorizationInfo;-><init>()V

    .line 548
    sput-object v0, Lcom/google/cloud/audit/AuthorizationInfo;->DEFAULT_INSTANCE:Lcom/google/cloud/audit/AuthorizationInfo;

    .line 549
    const-class v1, Lcom/google/cloud/audit/AuthorizationInfo;

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
    iput-object v0, p0, Lcom/google/cloud/audit/AuthorizationInfo;->resource_:Ljava/lang/String;

    .line 20
    iput-object v0, p0, Lcom/google/cloud/audit/AuthorizationInfo;->permission_:Ljava/lang/String;

    return-void

    .array-data 1
    .end array-data
.end method

.method static synthetic access$000()Lcom/google/cloud/audit/AuthorizationInfo;
    .locals 1

    .line 13
    sget-object v0, Lcom/google/cloud/audit/AuthorizationInfo;->DEFAULT_INSTANCE:Lcom/google/cloud/audit/AuthorizationInfo;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method static synthetic access$100(Lcom/google/cloud/audit/AuthorizationInfo;Ljava/lang/String;)V
    .locals 0

    .line 13
    invoke-direct {p0, p1}, Lcom/google/cloud/audit/AuthorizationInfo;->setResource(Ljava/lang/String;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method static synthetic access$200(Lcom/google/cloud/audit/AuthorizationInfo;)V
    .locals 0

    .line 13
    invoke-direct {p0}, Lcom/google/cloud/audit/AuthorizationInfo;->clearResource()V

    return-void

    .array-data 1
    .end array-data
.end method

.method static synthetic access$300(Lcom/google/cloud/audit/AuthorizationInfo;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 13
    invoke-direct {p0, p1}, Lcom/google/cloud/audit/AuthorizationInfo;->setResourceBytes(Lcom/google/protobuf/ByteString;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method static synthetic access$400(Lcom/google/cloud/audit/AuthorizationInfo;Ljava/lang/String;)V
    .locals 0

    .line 13
    invoke-direct {p0, p1}, Lcom/google/cloud/audit/AuthorizationInfo;->setPermission(Ljava/lang/String;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method static synthetic access$500(Lcom/google/cloud/audit/AuthorizationInfo;)V
    .locals 0

    .line 13
    invoke-direct {p0}, Lcom/google/cloud/audit/AuthorizationInfo;->clearPermission()V

    return-void

    .array-data 1
    .end array-data
.end method

.method static synthetic access$600(Lcom/google/cloud/audit/AuthorizationInfo;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 13
    invoke-direct {p0, p1}, Lcom/google/cloud/audit/AuthorizationInfo;->setPermissionBytes(Lcom/google/protobuf/ByteString;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method static synthetic access$700(Lcom/google/cloud/audit/AuthorizationInfo;Z)V
    .locals 0

    .line 13
    invoke-direct {p0, p1}, Lcom/google/cloud/audit/AuthorizationInfo;->setGranted(Z)V

    return-void

    .array-data 1
    .end array-data
.end method

.method static synthetic access$800(Lcom/google/cloud/audit/AuthorizationInfo;)V
    .locals 0

    .line 13
    invoke-direct {p0}, Lcom/google/cloud/audit/AuthorizationInfo;->clearGranted()V

    return-void

    .array-data 1
    .end array-data
.end method

.method private clearGranted()V
    .locals 1

    const/4 v0, 0x0

    .line 199
    iput-boolean v0, p0, Lcom/google/cloud/audit/AuthorizationInfo;->granted_:Z

    return-void

    .array-data 1
    .end array-data
.end method

.method private clearPermission()V
    .locals 1

    .line 144
    invoke-static {}, Lcom/google/cloud/audit/AuthorizationInfo;->getDefaultInstance()Lcom/google/cloud/audit/AuthorizationInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/cloud/audit/AuthorizationInfo;->getPermission()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/cloud/audit/AuthorizationInfo;->permission_:Ljava/lang/String;

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method private clearResource()V
    .locals 1

    .line 76
    invoke-static {}, Lcom/google/cloud/audit/AuthorizationInfo;->getDefaultInstance()Lcom/google/cloud/audit/AuthorizationInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/cloud/audit/AuthorizationInfo;->getResource()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/cloud/audit/AuthorizationInfo;->resource_:Ljava/lang/String;

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public static getDefaultInstance()Lcom/google/cloud/audit/AuthorizationInfo;
    .locals 1

    .line 554
    sget-object v0, Lcom/google/cloud/audit/AuthorizationInfo;->DEFAULT_INSTANCE:Lcom/google/cloud/audit/AuthorizationInfo;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public static newBuilder()Lcom/google/cloud/audit/AuthorizationInfo$Builder;
    .locals 1

    .line 277
    sget-object v0, Lcom/google/cloud/audit/AuthorizationInfo;->DEFAULT_INSTANCE:Lcom/google/cloud/audit/AuthorizationInfo;

    invoke-virtual {v0}, Lcom/google/cloud/audit/AuthorizationInfo;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/cloud/audit/AuthorizationInfo$Builder;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public static newBuilder(Lcom/google/cloud/audit/AuthorizationInfo;)Lcom/google/cloud/audit/AuthorizationInfo$Builder;
    .locals 1

    .line 280
    sget-object v0, Lcom/google/cloud/audit/AuthorizationInfo;->DEFAULT_INSTANCE:Lcom/google/cloud/audit/AuthorizationInfo;

    invoke-virtual {v0, p0}, Lcom/google/cloud/audit/AuthorizationInfo;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lcom/google/cloud/audit/AuthorizationInfo$Builder;

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/cloud/audit/AuthorizationInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 254
    sget-object v0, Lcom/google/cloud/audit/AuthorizationInfo;->DEFAULT_INSTANCE:Lcom/google/cloud/audit/AuthorizationInfo;

    invoke-static {v0, p0}, Lcom/google/cloud/audit/AuthorizationInfo;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/cloud/audit/AuthorizationInfo;

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/cloud/audit/AuthorizationInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 260
    sget-object v0, Lcom/google/cloud/audit/AuthorizationInfo;->DEFAULT_INSTANCE:Lcom/google/cloud/audit/AuthorizationInfo;

    invoke-static {v0, p0, p1}, Lcom/google/cloud/audit/AuthorizationInfo;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/cloud/audit/AuthorizationInfo;

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/cloud/audit/AuthorizationInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 218
    sget-object v0, Lcom/google/cloud/audit/AuthorizationInfo;->DEFAULT_INSTANCE:Lcom/google/cloud/audit/AuthorizationInfo;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/cloud/audit/AuthorizationInfo;

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/cloud/audit/AuthorizationInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 225
    sget-object v0, Lcom/google/cloud/audit/AuthorizationInfo;->DEFAULT_INSTANCE:Lcom/google/cloud/audit/AuthorizationInfo;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/cloud/audit/AuthorizationInfo;

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/cloud/audit/AuthorizationInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 265
    sget-object v0, Lcom/google/cloud/audit/AuthorizationInfo;->DEFAULT_INSTANCE:Lcom/google/cloud/audit/AuthorizationInfo;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/cloud/audit/AuthorizationInfo;

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/cloud/audit/AuthorizationInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 272
    sget-object v0, Lcom/google/cloud/audit/AuthorizationInfo;->DEFAULT_INSTANCE:Lcom/google/cloud/audit/AuthorizationInfo;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/cloud/audit/AuthorizationInfo;

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/cloud/audit/AuthorizationInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 242
    sget-object v0, Lcom/google/cloud/audit/AuthorizationInfo;->DEFAULT_INSTANCE:Lcom/google/cloud/audit/AuthorizationInfo;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/cloud/audit/AuthorizationInfo;

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/cloud/audit/AuthorizationInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 249
    sget-object v0, Lcom/google/cloud/audit/AuthorizationInfo;->DEFAULT_INSTANCE:Lcom/google/cloud/audit/AuthorizationInfo;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/cloud/audit/AuthorizationInfo;

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/google/cloud/audit/AuthorizationInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 205
    sget-object v0, Lcom/google/cloud/audit/AuthorizationInfo;->DEFAULT_INSTANCE:Lcom/google/cloud/audit/AuthorizationInfo;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/cloud/audit/AuthorizationInfo;

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/cloud/audit/AuthorizationInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 212
    sget-object v0, Lcom/google/cloud/audit/AuthorizationInfo;->DEFAULT_INSTANCE:Lcom/google/cloud/audit/AuthorizationInfo;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/cloud/audit/AuthorizationInfo;

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static parseFrom([B)Lcom/google/cloud/audit/AuthorizationInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 230
    sget-object v0, Lcom/google/cloud/audit/AuthorizationInfo;->DEFAULT_INSTANCE:Lcom/google/cloud/audit/AuthorizationInfo;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/cloud/audit/AuthorizationInfo;

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/cloud/audit/AuthorizationInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 237
    sget-object v0, Lcom/google/cloud/audit/AuthorizationInfo;->DEFAULT_INSTANCE:Lcom/google/cloud/audit/AuthorizationInfo;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/cloud/audit/AuthorizationInfo;

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
            "Lcom/google/cloud/audit/AuthorizationInfo;",
            ">;"
        }
    .end annotation

    .line 560
    sget-object v0, Lcom/google/cloud/audit/AuthorizationInfo;->DEFAULT_INSTANCE:Lcom/google/cloud/audit/AuthorizationInfo;

    invoke-virtual {v0}, Lcom/google/cloud/audit/AuthorizationInfo;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method private setGranted(Z)V
    .locals 0

    .line 187
    iput-boolean p1, p0, Lcom/google/cloud/audit/AuthorizationInfo;->granted_:Z

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method private setPermission(Ljava/lang/String;)V
    .locals 0

    .line 131
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 133
    iput-object p1, p0, Lcom/google/cloud/audit/AuthorizationInfo;->permission_:Ljava/lang/String;

    return-void

    .array-data 1
    .end array-data
.end method

.method private setPermissionBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 156
    invoke-static {p1}, Lcom/google/cloud/audit/AuthorizationInfo;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 157
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/cloud/audit/AuthorizationInfo;->permission_:Ljava/lang/String;

    return-void

    .array-data 1
    .end array-data
.end method

.method private setResource(Ljava/lang/String;)V
    .locals 0

    .line 62
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 64
    iput-object p1, p0, Lcom/google/cloud/audit/AuthorizationInfo;->resource_:Ljava/lang/String;

    return-void

    .array-data 1
    .end array-data
.end method

.method private setResourceBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 89
    invoke-static {p1}, Lcom/google/cloud/audit/AuthorizationInfo;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 90
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/cloud/audit/AuthorizationInfo;->resource_:Ljava/lang/String;

    return-void

    .array-data 1
    .end array-data
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 494
    sget-object p2, Lcom/google/cloud/audit/AuthorizationInfo$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x1

    const/4 p3, 0x0

    packed-switch p1, :pswitch_data_0

    .line 538
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p3

    .line 532
    :pswitch_1
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 517
    :pswitch_2
    sget-object p1, Lcom/google/cloud/audit/AuthorizationInfo;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    .line 519
    const-class p2, Lcom/google/cloud/audit/AuthorizationInfo;

    monitor-enter p2

    .line 520
    :try_start_0
    sget-object p1, Lcom/google/cloud/audit/AuthorizationInfo;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_0

    .line 522
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lcom/google/cloud/audit/AuthorizationInfo;->DEFAULT_INSTANCE:Lcom/google/cloud/audit/AuthorizationInfo;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 525
    sput-object p1, Lcom/google/cloud/audit/AuthorizationInfo;->PARSER:Lcom/google/protobuf/Parser;

    .line 527
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

    .line 514
    :pswitch_3
    sget-object p1, Lcom/google/cloud/audit/AuthorizationInfo;->DEFAULT_INSTANCE:Lcom/google/cloud/audit/AuthorizationInfo;

    return-object p1

    :pswitch_4
    const/4 p1, 0x3

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v0, "resource_"

    aput-object v0, p1, p3

    const-string p3, "permission_"

    aput-object p3, p1, p2

    const/4 p2, 0x2

    const-string p3, "granted_"

    aput-object p3, p1, p2

    const-string p2, "\u0000\u0003\u0000\u0000\u0001\u0003\u0003\u0000\u0000\u0000\u0001\u0208\u0002\u0208\u0003\u0007"

    .line 510
    sget-object p3, Lcom/google/cloud/audit/AuthorizationInfo;->DEFAULT_INSTANCE:Lcom/google/cloud/audit/AuthorizationInfo;

    invoke-static {p3, p2, p1}, Lcom/google/cloud/audit/AuthorizationInfo;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 499
    :pswitch_5
    new-instance p1, Lcom/google/cloud/audit/AuthorizationInfo$Builder;

    invoke-direct {p1, p3}, Lcom/google/cloud/audit/AuthorizationInfo$Builder;-><init>(Lcom/google/cloud/audit/AuthorizationInfo$1;)V

    return-object p1

    .line 496
    :pswitch_6
    new-instance p1, Lcom/google/cloud/audit/AuthorizationInfo;

    invoke-direct {p1}, Lcom/google/cloud/audit/AuthorizationInfo;-><init>()V

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

.method public getGranted()Z
    .locals 1

    .line 174
    iget-boolean v0, p0, Lcom/google/cloud/audit/AuthorizationInfo;->granted_:Z

    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getPermission()Ljava/lang/String;
    .locals 1

    .line 106
    iget-object v0, p0, Lcom/google/cloud/audit/AuthorizationInfo;->permission_:Ljava/lang/String;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getPermissionBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 119
    iget-object v0, p0, Lcom/google/cloud/audit/AuthorizationInfo;->permission_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getResource()Ljava/lang/String;
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/google/cloud/audit/AuthorizationInfo;->resource_:Ljava/lang/String;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getResourceBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/google/cloud/audit/AuthorizationInfo;->resource_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method
