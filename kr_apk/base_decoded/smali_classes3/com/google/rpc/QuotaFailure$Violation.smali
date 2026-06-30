.class public final Lcom/google/rpc/QuotaFailure$Violation;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "QuotaFailure.java"

# interfaces
.implements Lcom/google/rpc/QuotaFailure$ViolationOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/rpc/QuotaFailure;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Violation"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/rpc/QuotaFailure$Violation$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/google/rpc/QuotaFailure$Violation;",
        "Lcom/google/rpc/QuotaFailure$Violation$Builder;",
        ">;",
        "Lcom/google/rpc/QuotaFailure$ViolationOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/google/rpc/QuotaFailure$Violation;

.field public static final DESCRIPTION_FIELD_NUMBER:I = 0x2

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/rpc/QuotaFailure$Violation;",
            ">;"
        }
    .end annotation
.end field

.field public static final SUBJECT_FIELD_NUMBER:I = 0x1


# instance fields
.field private description_:Ljava/lang/String;

.field private subject_:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 603
    new-instance v0, Lcom/google/rpc/QuotaFailure$Violation;

    invoke-direct {v0}, Lcom/google/rpc/QuotaFailure$Violation;-><init>()V

    .line 606
    sput-object v0, Lcom/google/rpc/QuotaFailure$Violation;->DEFAULT_INSTANCE:Lcom/google/rpc/QuotaFailure$Violation;

    .line 607
    const-class v1, Lcom/google/rpc/QuotaFailure$Violation;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method private constructor <init>()V
    .locals 1

    .line 100
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    const-string v0, ""

    .line 101
    iput-object v0, p0, Lcom/google/rpc/QuotaFailure$Violation;->subject_:Ljava/lang/String;

    .line 102
    iput-object v0, p0, Lcom/google/rpc/QuotaFailure$Violation;->description_:Ljava/lang/String;

    return-void

    .array-data 1
    .end array-data
.end method

.method static synthetic access$000()Lcom/google/rpc/QuotaFailure$Violation;
    .locals 1

    .line 95
    sget-object v0, Lcom/google/rpc/QuotaFailure$Violation;->DEFAULT_INSTANCE:Lcom/google/rpc/QuotaFailure$Violation;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method static synthetic access$100(Lcom/google/rpc/QuotaFailure$Violation;Ljava/lang/String;)V
    .locals 0

    .line 95
    invoke-direct {p0, p1}, Lcom/google/rpc/QuotaFailure$Violation;->setSubject(Ljava/lang/String;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method static synthetic access$200(Lcom/google/rpc/QuotaFailure$Violation;)V
    .locals 0

    .line 95
    invoke-direct {p0}, Lcom/google/rpc/QuotaFailure$Violation;->clearSubject()V

    return-void

    .array-data 1
    .end array-data
.end method

.method static synthetic access$300(Lcom/google/rpc/QuotaFailure$Violation;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 95
    invoke-direct {p0, p1}, Lcom/google/rpc/QuotaFailure$Violation;->setSubjectBytes(Lcom/google/protobuf/ByteString;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method static synthetic access$400(Lcom/google/rpc/QuotaFailure$Violation;Ljava/lang/String;)V
    .locals 0

    .line 95
    invoke-direct {p0, p1}, Lcom/google/rpc/QuotaFailure$Violation;->setDescription(Ljava/lang/String;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method static synthetic access$500(Lcom/google/rpc/QuotaFailure$Violation;)V
    .locals 0

    .line 95
    invoke-direct {p0}, Lcom/google/rpc/QuotaFailure$Violation;->clearDescription()V

    return-void

    .array-data 1
    .end array-data
.end method

.method static synthetic access$600(Lcom/google/rpc/QuotaFailure$Violation;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 95
    invoke-direct {p0, p1}, Lcom/google/rpc/QuotaFailure$Violation;->setDescriptionBytes(Lcom/google/protobuf/ByteString;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method private clearDescription()V
    .locals 1

    .line 251
    invoke-static {}, Lcom/google/rpc/QuotaFailure$Violation;->getDefaultInstance()Lcom/google/rpc/QuotaFailure$Violation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/rpc/QuotaFailure$Violation;->getDescription()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/rpc/QuotaFailure$Violation;->description_:Ljava/lang/String;

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method private clearSubject()V
    .locals 1

    .line 162
    invoke-static {}, Lcom/google/rpc/QuotaFailure$Violation;->getDefaultInstance()Lcom/google/rpc/QuotaFailure$Violation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/rpc/QuotaFailure$Violation;->getSubject()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/rpc/QuotaFailure$Violation;->subject_:Ljava/lang/String;

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public static getDefaultInstance()Lcom/google/rpc/QuotaFailure$Violation;
    .locals 1

    .line 612
    sget-object v0, Lcom/google/rpc/QuotaFailure$Violation;->DEFAULT_INSTANCE:Lcom/google/rpc/QuotaFailure$Violation;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public static newBuilder()Lcom/google/rpc/QuotaFailure$Violation$Builder;
    .locals 1

    .line 348
    sget-object v0, Lcom/google/rpc/QuotaFailure$Violation;->DEFAULT_INSTANCE:Lcom/google/rpc/QuotaFailure$Violation;

    invoke-virtual {v0}, Lcom/google/rpc/QuotaFailure$Violation;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/rpc/QuotaFailure$Violation$Builder;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public static newBuilder(Lcom/google/rpc/QuotaFailure$Violation;)Lcom/google/rpc/QuotaFailure$Violation$Builder;
    .locals 1

    .line 351
    sget-object v0, Lcom/google/rpc/QuotaFailure$Violation;->DEFAULT_INSTANCE:Lcom/google/rpc/QuotaFailure$Violation;

    invoke-virtual {v0, p0}, Lcom/google/rpc/QuotaFailure$Violation;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lcom/google/rpc/QuotaFailure$Violation$Builder;

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/rpc/QuotaFailure$Violation;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 325
    sget-object v0, Lcom/google/rpc/QuotaFailure$Violation;->DEFAULT_INSTANCE:Lcom/google/rpc/QuotaFailure$Violation;

    invoke-static {v0, p0}, Lcom/google/rpc/QuotaFailure$Violation;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/rpc/QuotaFailure$Violation;

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/rpc/QuotaFailure$Violation;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 331
    sget-object v0, Lcom/google/rpc/QuotaFailure$Violation;->DEFAULT_INSTANCE:Lcom/google/rpc/QuotaFailure$Violation;

    invoke-static {v0, p0, p1}, Lcom/google/rpc/QuotaFailure$Violation;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/rpc/QuotaFailure$Violation;

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/rpc/QuotaFailure$Violation;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 289
    sget-object v0, Lcom/google/rpc/QuotaFailure$Violation;->DEFAULT_INSTANCE:Lcom/google/rpc/QuotaFailure$Violation;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/rpc/QuotaFailure$Violation;

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/rpc/QuotaFailure$Violation;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 296
    sget-object v0, Lcom/google/rpc/QuotaFailure$Violation;->DEFAULT_INSTANCE:Lcom/google/rpc/QuotaFailure$Violation;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/rpc/QuotaFailure$Violation;

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/rpc/QuotaFailure$Violation;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 336
    sget-object v0, Lcom/google/rpc/QuotaFailure$Violation;->DEFAULT_INSTANCE:Lcom/google/rpc/QuotaFailure$Violation;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/rpc/QuotaFailure$Violation;

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/rpc/QuotaFailure$Violation;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 343
    sget-object v0, Lcom/google/rpc/QuotaFailure$Violation;->DEFAULT_INSTANCE:Lcom/google/rpc/QuotaFailure$Violation;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/rpc/QuotaFailure$Violation;

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/rpc/QuotaFailure$Violation;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 313
    sget-object v0, Lcom/google/rpc/QuotaFailure$Violation;->DEFAULT_INSTANCE:Lcom/google/rpc/QuotaFailure$Violation;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/rpc/QuotaFailure$Violation;

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/rpc/QuotaFailure$Violation;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 320
    sget-object v0, Lcom/google/rpc/QuotaFailure$Violation;->DEFAULT_INSTANCE:Lcom/google/rpc/QuotaFailure$Violation;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/rpc/QuotaFailure$Violation;

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/google/rpc/QuotaFailure$Violation;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 276
    sget-object v0, Lcom/google/rpc/QuotaFailure$Violation;->DEFAULT_INSTANCE:Lcom/google/rpc/QuotaFailure$Violation;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/rpc/QuotaFailure$Violation;

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/rpc/QuotaFailure$Violation;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 283
    sget-object v0, Lcom/google/rpc/QuotaFailure$Violation;->DEFAULT_INSTANCE:Lcom/google/rpc/QuotaFailure$Violation;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/rpc/QuotaFailure$Violation;

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static parseFrom([B)Lcom/google/rpc/QuotaFailure$Violation;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 301
    sget-object v0, Lcom/google/rpc/QuotaFailure$Violation;->DEFAULT_INSTANCE:Lcom/google/rpc/QuotaFailure$Violation;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/rpc/QuotaFailure$Violation;

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/rpc/QuotaFailure$Violation;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 308
    sget-object v0, Lcom/google/rpc/QuotaFailure$Violation;->DEFAULT_INSTANCE:Lcom/google/rpc/QuotaFailure$Violation;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/rpc/QuotaFailure$Violation;

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
            "Lcom/google/rpc/QuotaFailure$Violation;",
            ">;"
        }
    .end annotation

    .line 618
    sget-object v0, Lcom/google/rpc/QuotaFailure$Violation;->DEFAULT_INSTANCE:Lcom/google/rpc/QuotaFailure$Violation;

    invoke-virtual {v0}, Lcom/google/rpc/QuotaFailure$Violation;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method private setDescription(Ljava/lang/String;)V
    .locals 0

    .line 233
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 235
    iput-object p1, p0, Lcom/google/rpc/QuotaFailure$Violation;->description_:Ljava/lang/String;

    return-void

    .array-data 1
    .end array-data
.end method

.method private setDescriptionBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 268
    invoke-static {p1}, Lcom/google/rpc/QuotaFailure$Violation;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 269
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/rpc/QuotaFailure$Violation;->description_:Ljava/lang/String;

    return-void

    .array-data 1
    .end array-data
.end method

.method private setSubject(Ljava/lang/String;)V
    .locals 0

    .line 147
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 149
    iput-object p1, p0, Lcom/google/rpc/QuotaFailure$Violation;->subject_:Ljava/lang/String;

    return-void

    .array-data 1
    .end array-data
.end method

.method private setSubjectBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 176
    invoke-static {p1}, Lcom/google/rpc/QuotaFailure$Violation;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 177
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/rpc/QuotaFailure$Violation;->subject_:Ljava/lang/String;

    return-void

    .array-data 1
    .end array-data
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 553
    sget-object p2, Lcom/google/rpc/QuotaFailure$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x1

    const/4 p3, 0x0

    packed-switch p1, :pswitch_data_0

    .line 596
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p3

    .line 590
    :pswitch_1
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 575
    :pswitch_2
    sget-object p1, Lcom/google/rpc/QuotaFailure$Violation;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    .line 577
    const-class p2, Lcom/google/rpc/QuotaFailure$Violation;

    monitor-enter p2

    .line 578
    :try_start_0
    sget-object p1, Lcom/google/rpc/QuotaFailure$Violation;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_0

    .line 580
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lcom/google/rpc/QuotaFailure$Violation;->DEFAULT_INSTANCE:Lcom/google/rpc/QuotaFailure$Violation;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 583
    sput-object p1, Lcom/google/rpc/QuotaFailure$Violation;->PARSER:Lcom/google/protobuf/Parser;

    .line 585
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

    .line 572
    :pswitch_3
    sget-object p1, Lcom/google/rpc/QuotaFailure$Violation;->DEFAULT_INSTANCE:Lcom/google/rpc/QuotaFailure$Violation;

    return-object p1

    :pswitch_4
    const/4 p1, 0x2

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v0, "subject_"

    aput-object v0, p1, p3

    const-string p3, "description_"

    aput-object p3, p1, p2

    const-string p2, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0000\u0000\u0001\u0208\u0002\u0208"

    .line 568
    sget-object p3, Lcom/google/rpc/QuotaFailure$Violation;->DEFAULT_INSTANCE:Lcom/google/rpc/QuotaFailure$Violation;

    invoke-static {p3, p2, p1}, Lcom/google/rpc/QuotaFailure$Violation;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 558
    :pswitch_5
    new-instance p1, Lcom/google/rpc/QuotaFailure$Violation$Builder;

    invoke-direct {p1, p3}, Lcom/google/rpc/QuotaFailure$Violation$Builder;-><init>(Lcom/google/rpc/QuotaFailure$1;)V

    return-object p1

    .line 555
    :pswitch_6
    new-instance p1, Lcom/google/rpc/QuotaFailure$Violation;

    invoke-direct {p1}, Lcom/google/rpc/QuotaFailure$Violation;-><init>()V

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

    .line 198
    iget-object v0, p0, Lcom/google/rpc/QuotaFailure$Violation;->description_:Ljava/lang/String;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getDescriptionBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 216
    iget-object v0, p0, Lcom/google/rpc/QuotaFailure$Violation;->description_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getSubject()Ljava/lang/String;
    .locals 1

    .line 118
    iget-object v0, p0, Lcom/google/rpc/QuotaFailure$Violation;->subject_:Ljava/lang/String;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getSubjectBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 133
    iget-object v0, p0, Lcom/google/rpc/QuotaFailure$Violation;->subject_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method
