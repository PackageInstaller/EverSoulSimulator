.class public final Lcom/google/type/Fraction;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Fraction.java"

# interfaces
.implements Lcom/google/type/FractionOrBuilder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/type/Fraction$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/google/type/Fraction;",
        "Lcom/google/type/Fraction$Builder;",
        ">;",
        "Lcom/google/type/FractionOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/google/type/Fraction;

.field public static final DENOMINATOR_FIELD_NUMBER:I = 0x2

.field public static final NUMERATOR_FIELD_NUMBER:I = 0x1

.field private static volatile PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/type/Fraction;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private denominator_:J

.field private numerator_:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 338
    new-instance v0, Lcom/google/type/Fraction;

    invoke-direct {v0}, Lcom/google/type/Fraction;-><init>()V

    .line 341
    sput-object v0, Lcom/google/type/Fraction;->DEFAULT_INSTANCE:Lcom/google/type/Fraction;

    .line 342
    const-class v1, Lcom/google/type/Fraction;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    return-void

    .array-data 1
    .end array-data
.end method

.method static synthetic access$000()Lcom/google/type/Fraction;
    .locals 1

    .line 13
    sget-object v0, Lcom/google/type/Fraction;->DEFAULT_INSTANCE:Lcom/google/type/Fraction;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method static synthetic access$100(Lcom/google/type/Fraction;J)V
    .locals 0

    .line 13
    invoke-direct {p0, p1, p2}, Lcom/google/type/Fraction;->setNumerator(J)V

    return-void

    .array-data 1
    .end array-data
.end method

.method static synthetic access$200(Lcom/google/type/Fraction;)V
    .locals 0

    .line 13
    invoke-direct {p0}, Lcom/google/type/Fraction;->clearNumerator()V

    return-void

    .array-data 1
    .end array-data
.end method

.method static synthetic access$300(Lcom/google/type/Fraction;J)V
    .locals 0

    .line 13
    invoke-direct {p0, p1, p2}, Lcom/google/type/Fraction;->setDenominator(J)V

    return-void

    .array-data 1
    .end array-data
.end method

.method static synthetic access$400(Lcom/google/type/Fraction;)V
    .locals 0

    .line 13
    invoke-direct {p0}, Lcom/google/type/Fraction;->clearDenominator()V

    return-void

    .array-data 1
    .end array-data
.end method

.method private clearDenominator()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 96
    iput-wide v0, p0, Lcom/google/type/Fraction;->denominator_:J

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method private clearNumerator()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 55
    iput-wide v0, p0, Lcom/google/type/Fraction;->numerator_:J

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public static getDefaultInstance()Lcom/google/type/Fraction;
    .locals 1

    .line 347
    sget-object v0, Lcom/google/type/Fraction;->DEFAULT_INSTANCE:Lcom/google/type/Fraction;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public static newBuilder()Lcom/google/type/Fraction$Builder;
    .locals 1

    .line 174
    sget-object v0, Lcom/google/type/Fraction;->DEFAULT_INSTANCE:Lcom/google/type/Fraction;

    invoke-virtual {v0}, Lcom/google/type/Fraction;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/type/Fraction$Builder;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public static newBuilder(Lcom/google/type/Fraction;)Lcom/google/type/Fraction$Builder;
    .locals 1

    .line 177
    sget-object v0, Lcom/google/type/Fraction;->DEFAULT_INSTANCE:Lcom/google/type/Fraction;

    invoke-virtual {v0, p0}, Lcom/google/type/Fraction;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lcom/google/type/Fraction$Builder;

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/type/Fraction;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 151
    sget-object v0, Lcom/google/type/Fraction;->DEFAULT_INSTANCE:Lcom/google/type/Fraction;

    invoke-static {v0, p0}, Lcom/google/type/Fraction;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/type/Fraction;

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/type/Fraction;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 157
    sget-object v0, Lcom/google/type/Fraction;->DEFAULT_INSTANCE:Lcom/google/type/Fraction;

    invoke-static {v0, p0, p1}, Lcom/google/type/Fraction;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/type/Fraction;

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/type/Fraction;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 115
    sget-object v0, Lcom/google/type/Fraction;->DEFAULT_INSTANCE:Lcom/google/type/Fraction;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/type/Fraction;

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/type/Fraction;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 122
    sget-object v0, Lcom/google/type/Fraction;->DEFAULT_INSTANCE:Lcom/google/type/Fraction;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/type/Fraction;

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/type/Fraction;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 162
    sget-object v0, Lcom/google/type/Fraction;->DEFAULT_INSTANCE:Lcom/google/type/Fraction;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/type/Fraction;

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/type/Fraction;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 169
    sget-object v0, Lcom/google/type/Fraction;->DEFAULT_INSTANCE:Lcom/google/type/Fraction;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/type/Fraction;

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/type/Fraction;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 139
    sget-object v0, Lcom/google/type/Fraction;->DEFAULT_INSTANCE:Lcom/google/type/Fraction;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/type/Fraction;

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/type/Fraction;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 146
    sget-object v0, Lcom/google/type/Fraction;->DEFAULT_INSTANCE:Lcom/google/type/Fraction;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/type/Fraction;

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/google/type/Fraction;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 102
    sget-object v0, Lcom/google/type/Fraction;->DEFAULT_INSTANCE:Lcom/google/type/Fraction;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/type/Fraction;

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/type/Fraction;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 109
    sget-object v0, Lcom/google/type/Fraction;->DEFAULT_INSTANCE:Lcom/google/type/Fraction;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/type/Fraction;

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static parseFrom([B)Lcom/google/type/Fraction;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 127
    sget-object v0, Lcom/google/type/Fraction;->DEFAULT_INSTANCE:Lcom/google/type/Fraction;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/type/Fraction;

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/type/Fraction;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 134
    sget-object v0, Lcom/google/type/Fraction;->DEFAULT_INSTANCE:Lcom/google/type/Fraction;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/type/Fraction;

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
            "Lcom/google/type/Fraction;",
            ">;"
        }
    .end annotation

    .line 353
    sget-object v0, Lcom/google/type/Fraction;->DEFAULT_INSTANCE:Lcom/google/type/Fraction;

    invoke-virtual {v0}, Lcom/google/type/Fraction;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method private setDenominator(J)V
    .locals 0

    .line 84
    iput-wide p1, p0, Lcom/google/type/Fraction;->denominator_:J

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method private setNumerator(J)V
    .locals 0

    .line 44
    iput-wide p1, p0, Lcom/google/type/Fraction;->numerator_:J

    return-void

    nop

    .array-data 1
    .end array-data
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 288
    sget-object p2, Lcom/google/type/Fraction$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x1

    const/4 p3, 0x0

    packed-switch p1, :pswitch_data_0

    .line 331
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p3

    .line 325
    :pswitch_1
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 310
    :pswitch_2
    sget-object p1, Lcom/google/type/Fraction;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    .line 312
    const-class p2, Lcom/google/type/Fraction;

    monitor-enter p2

    .line 313
    :try_start_0
    sget-object p1, Lcom/google/type/Fraction;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_0

    .line 315
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lcom/google/type/Fraction;->DEFAULT_INSTANCE:Lcom/google/type/Fraction;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 318
    sput-object p1, Lcom/google/type/Fraction;->PARSER:Lcom/google/protobuf/Parser;

    .line 320
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

    .line 307
    :pswitch_3
    sget-object p1, Lcom/google/type/Fraction;->DEFAULT_INSTANCE:Lcom/google/type/Fraction;

    return-object p1

    :pswitch_4
    const/4 p1, 0x2

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v0, "numerator_"

    aput-object v0, p1, p3

    const-string p3, "denominator_"

    aput-object p3, p1, p2

    const-string p2, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0000\u0000\u0001\u0002\u0002\u0002"

    .line 303
    sget-object p3, Lcom/google/type/Fraction;->DEFAULT_INSTANCE:Lcom/google/type/Fraction;

    invoke-static {p3, p2, p1}, Lcom/google/type/Fraction;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 293
    :pswitch_5
    new-instance p1, Lcom/google/type/Fraction$Builder;

    invoke-direct {p1, p3}, Lcom/google/type/Fraction$Builder;-><init>(Lcom/google/type/Fraction$1;)V

    return-object p1

    .line 290
    :pswitch_6
    new-instance p1, Lcom/google/type/Fraction;

    invoke-direct {p1}, Lcom/google/type/Fraction;-><init>()V

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

.method public getDenominator()J
    .locals 2

    .line 71
    iget-wide v0, p0, Lcom/google/type/Fraction;->denominator_:J

    return-wide v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getNumerator()J
    .locals 2

    .line 32
    iget-wide v0, p0, Lcom/google/type/Fraction;->numerator_:J

    return-wide v0

    nop

    .array-data 1
    .end array-data
.end method
