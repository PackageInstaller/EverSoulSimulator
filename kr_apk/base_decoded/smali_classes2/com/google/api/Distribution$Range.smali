.class public final Lcom/google/api/Distribution$Range;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Distribution.java"

# interfaces
.implements Lcom/google/api/Distribution$RangeOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/api/Distribution;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Range"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/api/Distribution$Range$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/google/api/Distribution$Range;",
        "Lcom/google/api/Distribution$Range$Builder;",
        ">;",
        "Lcom/google/api/Distribution$RangeOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/google/api/Distribution$Range;

.field public static final MAX_FIELD_NUMBER:I = 0x2

.field public static final MIN_FIELD_NUMBER:I = 0x1

.field private static volatile PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/api/Distribution$Range;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private max_:D

.field private min_:D


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 383
    new-instance v0, Lcom/google/api/Distribution$Range;

    invoke-direct {v0}, Lcom/google/api/Distribution$Range;-><init>()V

    .line 386
    sput-object v0, Lcom/google/api/Distribution$Range;->DEFAULT_INSTANCE:Lcom/google/api/Distribution$Range;

    .line 387
    const-class v1, Lcom/google/api/Distribution$Range;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .line 69
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    return-void

    .array-data 1
    .end array-data
.end method

.method static synthetic access$000()Lcom/google/api/Distribution$Range;
    .locals 1

    .line 64
    sget-object v0, Lcom/google/api/Distribution$Range;->DEFAULT_INSTANCE:Lcom/google/api/Distribution$Range;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method static synthetic access$100(Lcom/google/api/Distribution$Range;D)V
    .locals 0

    .line 64
    invoke-direct {p0, p1, p2}, Lcom/google/api/Distribution$Range;->setMin(D)V

    return-void

    .array-data 1
    .end array-data
.end method

.method static synthetic access$200(Lcom/google/api/Distribution$Range;)V
    .locals 0

    .line 64
    invoke-direct {p0}, Lcom/google/api/Distribution$Range;->clearMin()V

    return-void

    .array-data 1
    .end array-data
.end method

.method static synthetic access$300(Lcom/google/api/Distribution$Range;D)V
    .locals 0

    .line 64
    invoke-direct {p0, p1, p2}, Lcom/google/api/Distribution$Range;->setMax(D)V

    return-void

    .array-data 1
    .end array-data
.end method

.method static synthetic access$400(Lcom/google/api/Distribution$Range;)V
    .locals 0

    .line 64
    invoke-direct {p0}, Lcom/google/api/Distribution$Range;->clearMax()V

    return-void

    .array-data 1
    .end array-data
.end method

.method private clearMax()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 144
    iput-wide v0, p0, Lcom/google/api/Distribution$Range;->max_:D

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method private clearMin()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 106
    iput-wide v0, p0, Lcom/google/api/Distribution$Range;->min_:D

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public static getDefaultInstance()Lcom/google/api/Distribution$Range;
    .locals 1

    .line 392
    sget-object v0, Lcom/google/api/Distribution$Range;->DEFAULT_INSTANCE:Lcom/google/api/Distribution$Range;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public static newBuilder()Lcom/google/api/Distribution$Range$Builder;
    .locals 1

    .line 222
    sget-object v0, Lcom/google/api/Distribution$Range;->DEFAULT_INSTANCE:Lcom/google/api/Distribution$Range;

    invoke-virtual {v0}, Lcom/google/api/Distribution$Range;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/api/Distribution$Range$Builder;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public static newBuilder(Lcom/google/api/Distribution$Range;)Lcom/google/api/Distribution$Range$Builder;
    .locals 1

    .line 225
    sget-object v0, Lcom/google/api/Distribution$Range;->DEFAULT_INSTANCE:Lcom/google/api/Distribution$Range;

    invoke-virtual {v0, p0}, Lcom/google/api/Distribution$Range;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lcom/google/api/Distribution$Range$Builder;

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/api/Distribution$Range;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 199
    sget-object v0, Lcom/google/api/Distribution$Range;->DEFAULT_INSTANCE:Lcom/google/api/Distribution$Range;

    invoke-static {v0, p0}, Lcom/google/api/Distribution$Range;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/api/Distribution$Range;

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/api/Distribution$Range;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 205
    sget-object v0, Lcom/google/api/Distribution$Range;->DEFAULT_INSTANCE:Lcom/google/api/Distribution$Range;

    invoke-static {v0, p0, p1}, Lcom/google/api/Distribution$Range;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/api/Distribution$Range;

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/api/Distribution$Range;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 163
    sget-object v0, Lcom/google/api/Distribution$Range;->DEFAULT_INSTANCE:Lcom/google/api/Distribution$Range;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/api/Distribution$Range;

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/api/Distribution$Range;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 170
    sget-object v0, Lcom/google/api/Distribution$Range;->DEFAULT_INSTANCE:Lcom/google/api/Distribution$Range;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/api/Distribution$Range;

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/api/Distribution$Range;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 210
    sget-object v0, Lcom/google/api/Distribution$Range;->DEFAULT_INSTANCE:Lcom/google/api/Distribution$Range;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/api/Distribution$Range;

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/api/Distribution$Range;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 217
    sget-object v0, Lcom/google/api/Distribution$Range;->DEFAULT_INSTANCE:Lcom/google/api/Distribution$Range;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/api/Distribution$Range;

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/api/Distribution$Range;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 187
    sget-object v0, Lcom/google/api/Distribution$Range;->DEFAULT_INSTANCE:Lcom/google/api/Distribution$Range;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/api/Distribution$Range;

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/api/Distribution$Range;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 194
    sget-object v0, Lcom/google/api/Distribution$Range;->DEFAULT_INSTANCE:Lcom/google/api/Distribution$Range;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/api/Distribution$Range;

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/google/api/Distribution$Range;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 150
    sget-object v0, Lcom/google/api/Distribution$Range;->DEFAULT_INSTANCE:Lcom/google/api/Distribution$Range;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/api/Distribution$Range;

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/api/Distribution$Range;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 157
    sget-object v0, Lcom/google/api/Distribution$Range;->DEFAULT_INSTANCE:Lcom/google/api/Distribution$Range;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/api/Distribution$Range;

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static parseFrom([B)Lcom/google/api/Distribution$Range;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 175
    sget-object v0, Lcom/google/api/Distribution$Range;->DEFAULT_INSTANCE:Lcom/google/api/Distribution$Range;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/api/Distribution$Range;

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/api/Distribution$Range;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 182
    sget-object v0, Lcom/google/api/Distribution$Range;->DEFAULT_INSTANCE:Lcom/google/api/Distribution$Range;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/api/Distribution$Range;

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
            "Lcom/google/api/Distribution$Range;",
            ">;"
        }
    .end annotation

    .line 398
    sget-object v0, Lcom/google/api/Distribution$Range;->DEFAULT_INSTANCE:Lcom/google/api/Distribution$Range;

    invoke-virtual {v0}, Lcom/google/api/Distribution$Range;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method private setMax(D)V
    .locals 0

    .line 133
    iput-wide p1, p0, Lcom/google/api/Distribution$Range;->max_:D

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method private setMin(D)V
    .locals 0

    .line 95
    iput-wide p1, p0, Lcom/google/api/Distribution$Range;->min_:D

    return-void

    nop

    .array-data 1
    .end array-data
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 333
    sget-object p2, Lcom/google/api/Distribution$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x1

    const/4 p3, 0x0

    packed-switch p1, :pswitch_data_0

    .line 376
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p3

    .line 370
    :pswitch_1
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 355
    :pswitch_2
    sget-object p1, Lcom/google/api/Distribution$Range;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    .line 357
    const-class p2, Lcom/google/api/Distribution$Range;

    monitor-enter p2

    .line 358
    :try_start_0
    sget-object p1, Lcom/google/api/Distribution$Range;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_0

    .line 360
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lcom/google/api/Distribution$Range;->DEFAULT_INSTANCE:Lcom/google/api/Distribution$Range;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 363
    sput-object p1, Lcom/google/api/Distribution$Range;->PARSER:Lcom/google/protobuf/Parser;

    .line 365
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

    .line 352
    :pswitch_3
    sget-object p1, Lcom/google/api/Distribution$Range;->DEFAULT_INSTANCE:Lcom/google/api/Distribution$Range;

    return-object p1

    :pswitch_4
    const/4 p1, 0x2

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v0, "min_"

    aput-object v0, p1, p3

    const-string p3, "max_"

    aput-object p3, p1, p2

    const-string p2, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0000\u0000\u0001\u0000\u0002\u0000"

    .line 348
    sget-object p3, Lcom/google/api/Distribution$Range;->DEFAULT_INSTANCE:Lcom/google/api/Distribution$Range;

    invoke-static {p3, p2, p1}, Lcom/google/api/Distribution$Range;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 338
    :pswitch_5
    new-instance p1, Lcom/google/api/Distribution$Range$Builder;

    invoke-direct {p1, p3}, Lcom/google/api/Distribution$Range$Builder;-><init>(Lcom/google/api/Distribution$1;)V

    return-object p1

    .line 335
    :pswitch_6
    new-instance p1, Lcom/google/api/Distribution$Range;

    invoke-direct {p1}, Lcom/google/api/Distribution$Range;-><init>()V

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

.method public getMax()D
    .locals 2

    .line 121
    iget-wide v0, p0, Lcom/google/api/Distribution$Range;->max_:D

    return-wide v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getMin()D
    .locals 2

    .line 83
    iget-wide v0, p0, Lcom/google/api/Distribution$Range;->min_:D

    return-wide v0

    nop

    .array-data 1
    .end array-data
.end method
