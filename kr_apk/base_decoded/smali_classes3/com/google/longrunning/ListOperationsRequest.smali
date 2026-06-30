.class public final Lcom/google/longrunning/ListOperationsRequest;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "ListOperationsRequest.java"

# interfaces
.implements Lcom/google/longrunning/ListOperationsRequestOrBuilder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/longrunning/ListOperationsRequest$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/google/longrunning/ListOperationsRequest;",
        "Lcom/google/longrunning/ListOperationsRequest$Builder;",
        ">;",
        "Lcom/google/longrunning/ListOperationsRequestOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/google/longrunning/ListOperationsRequest;

.field public static final FILTER_FIELD_NUMBER:I = 0x1

.field public static final NAME_FIELD_NUMBER:I = 0x4

.field public static final PAGE_SIZE_FIELD_NUMBER:I = 0x2

.field public static final PAGE_TOKEN_FIELD_NUMBER:I = 0x3

.field private static volatile PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/longrunning/ListOperationsRequest;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private filter_:Ljava/lang/String;

.field private name_:Ljava/lang/String;

.field private pageSize_:I

.field private pageToken_:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 667
    new-instance v0, Lcom/google/longrunning/ListOperationsRequest;

    invoke-direct {v0}, Lcom/google/longrunning/ListOperationsRequest;-><init>()V

    .line 670
    sput-object v0, Lcom/google/longrunning/ListOperationsRequest;->DEFAULT_INSTANCE:Lcom/google/longrunning/ListOperationsRequest;

    .line 671
    const-class v1, Lcom/google/longrunning/ListOperationsRequest;

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
    iput-object v0, p0, Lcom/google/longrunning/ListOperationsRequest;->name_:Ljava/lang/String;

    .line 20
    iput-object v0, p0, Lcom/google/longrunning/ListOperationsRequest;->filter_:Ljava/lang/String;

    .line 21
    iput-object v0, p0, Lcom/google/longrunning/ListOperationsRequest;->pageToken_:Ljava/lang/String;

    return-void

    .array-data 1
    .end array-data
.end method

.method static synthetic access$000()Lcom/google/longrunning/ListOperationsRequest;
    .locals 1

    .line 13
    sget-object v0, Lcom/google/longrunning/ListOperationsRequest;->DEFAULT_INSTANCE:Lcom/google/longrunning/ListOperationsRequest;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method static synthetic access$100(Lcom/google/longrunning/ListOperationsRequest;Ljava/lang/String;)V
    .locals 0

    .line 13
    invoke-direct {p0, p1}, Lcom/google/longrunning/ListOperationsRequest;->setName(Ljava/lang/String;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method static synthetic access$1000(Lcom/google/longrunning/ListOperationsRequest;)V
    .locals 0

    .line 13
    invoke-direct {p0}, Lcom/google/longrunning/ListOperationsRequest;->clearPageToken()V

    return-void

    .array-data 1
    .end array-data
.end method

.method static synthetic access$1100(Lcom/google/longrunning/ListOperationsRequest;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 13
    invoke-direct {p0, p1}, Lcom/google/longrunning/ListOperationsRequest;->setPageTokenBytes(Lcom/google/protobuf/ByteString;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method static synthetic access$200(Lcom/google/longrunning/ListOperationsRequest;)V
    .locals 0

    .line 13
    invoke-direct {p0}, Lcom/google/longrunning/ListOperationsRequest;->clearName()V

    return-void

    .array-data 1
    .end array-data
.end method

.method static synthetic access$300(Lcom/google/longrunning/ListOperationsRequest;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 13
    invoke-direct {p0, p1}, Lcom/google/longrunning/ListOperationsRequest;->setNameBytes(Lcom/google/protobuf/ByteString;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method static synthetic access$400(Lcom/google/longrunning/ListOperationsRequest;Ljava/lang/String;)V
    .locals 0

    .line 13
    invoke-direct {p0, p1}, Lcom/google/longrunning/ListOperationsRequest;->setFilter(Ljava/lang/String;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method static synthetic access$500(Lcom/google/longrunning/ListOperationsRequest;)V
    .locals 0

    .line 13
    invoke-direct {p0}, Lcom/google/longrunning/ListOperationsRequest;->clearFilter()V

    return-void

    .array-data 1
    .end array-data
.end method

.method static synthetic access$600(Lcom/google/longrunning/ListOperationsRequest;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 13
    invoke-direct {p0, p1}, Lcom/google/longrunning/ListOperationsRequest;->setFilterBytes(Lcom/google/protobuf/ByteString;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method static synthetic access$700(Lcom/google/longrunning/ListOperationsRequest;I)V
    .locals 0

    .line 13
    invoke-direct {p0, p1}, Lcom/google/longrunning/ListOperationsRequest;->setPageSize(I)V

    return-void

    .array-data 1
    .end array-data
.end method

.method static synthetic access$800(Lcom/google/longrunning/ListOperationsRequest;)V
    .locals 0

    .line 13
    invoke-direct {p0}, Lcom/google/longrunning/ListOperationsRequest;->clearPageSize()V

    return-void

    .array-data 1
    .end array-data
.end method

.method static synthetic access$900(Lcom/google/longrunning/ListOperationsRequest;Ljava/lang/String;)V
    .locals 0

    .line 13
    invoke-direct {p0, p1}, Lcom/google/longrunning/ListOperationsRequest;->setPageToken(Ljava/lang/String;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method private clearFilter()V
    .locals 1

    .line 140
    invoke-static {}, Lcom/google/longrunning/ListOperationsRequest;->getDefaultInstance()Lcom/google/longrunning/ListOperationsRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/longrunning/ListOperationsRequest;->getFilter()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/longrunning/ListOperationsRequest;->filter_:Ljava/lang/String;

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method private clearName()V
    .locals 1

    .line 73
    invoke-static {}, Lcom/google/longrunning/ListOperationsRequest;->getDefaultInstance()Lcom/google/longrunning/ListOperationsRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/longrunning/ListOperationsRequest;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/longrunning/ListOperationsRequest;->name_:Ljava/lang/String;

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method private clearPageSize()V
    .locals 1

    const/4 v0, 0x0

    .line 192
    iput v0, p0, Lcom/google/longrunning/ListOperationsRequest;->pageSize_:I

    return-void

    .array-data 1
    .end array-data
.end method

.method private clearPageToken()V
    .locals 1

    .line 245
    invoke-static {}, Lcom/google/longrunning/ListOperationsRequest;->getDefaultInstance()Lcom/google/longrunning/ListOperationsRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/longrunning/ListOperationsRequest;->getPageToken()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/longrunning/ListOperationsRequest;->pageToken_:Ljava/lang/String;

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public static getDefaultInstance()Lcom/google/longrunning/ListOperationsRequest;
    .locals 1

    .line 676
    sget-object v0, Lcom/google/longrunning/ListOperationsRequest;->DEFAULT_INSTANCE:Lcom/google/longrunning/ListOperationsRequest;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public static newBuilder()Lcom/google/longrunning/ListOperationsRequest$Builder;
    .locals 1

    .line 337
    sget-object v0, Lcom/google/longrunning/ListOperationsRequest;->DEFAULT_INSTANCE:Lcom/google/longrunning/ListOperationsRequest;

    invoke-virtual {v0}, Lcom/google/longrunning/ListOperationsRequest;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/longrunning/ListOperationsRequest$Builder;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public static newBuilder(Lcom/google/longrunning/ListOperationsRequest;)Lcom/google/longrunning/ListOperationsRequest$Builder;
    .locals 1

    .line 340
    sget-object v0, Lcom/google/longrunning/ListOperationsRequest;->DEFAULT_INSTANCE:Lcom/google/longrunning/ListOperationsRequest;

    invoke-virtual {v0, p0}, Lcom/google/longrunning/ListOperationsRequest;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lcom/google/longrunning/ListOperationsRequest$Builder;

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/longrunning/ListOperationsRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 314
    sget-object v0, Lcom/google/longrunning/ListOperationsRequest;->DEFAULT_INSTANCE:Lcom/google/longrunning/ListOperationsRequest;

    invoke-static {v0, p0}, Lcom/google/longrunning/ListOperationsRequest;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/longrunning/ListOperationsRequest;

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/longrunning/ListOperationsRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 320
    sget-object v0, Lcom/google/longrunning/ListOperationsRequest;->DEFAULT_INSTANCE:Lcom/google/longrunning/ListOperationsRequest;

    invoke-static {v0, p0, p1}, Lcom/google/longrunning/ListOperationsRequest;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/longrunning/ListOperationsRequest;

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/longrunning/ListOperationsRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 278
    sget-object v0, Lcom/google/longrunning/ListOperationsRequest;->DEFAULT_INSTANCE:Lcom/google/longrunning/ListOperationsRequest;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/longrunning/ListOperationsRequest;

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/longrunning/ListOperationsRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 285
    sget-object v0, Lcom/google/longrunning/ListOperationsRequest;->DEFAULT_INSTANCE:Lcom/google/longrunning/ListOperationsRequest;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/longrunning/ListOperationsRequest;

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/longrunning/ListOperationsRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 325
    sget-object v0, Lcom/google/longrunning/ListOperationsRequest;->DEFAULT_INSTANCE:Lcom/google/longrunning/ListOperationsRequest;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/longrunning/ListOperationsRequest;

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/longrunning/ListOperationsRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 332
    sget-object v0, Lcom/google/longrunning/ListOperationsRequest;->DEFAULT_INSTANCE:Lcom/google/longrunning/ListOperationsRequest;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/longrunning/ListOperationsRequest;

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/longrunning/ListOperationsRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 302
    sget-object v0, Lcom/google/longrunning/ListOperationsRequest;->DEFAULT_INSTANCE:Lcom/google/longrunning/ListOperationsRequest;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/longrunning/ListOperationsRequest;

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/longrunning/ListOperationsRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 309
    sget-object v0, Lcom/google/longrunning/ListOperationsRequest;->DEFAULT_INSTANCE:Lcom/google/longrunning/ListOperationsRequest;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/longrunning/ListOperationsRequest;

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/google/longrunning/ListOperationsRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 265
    sget-object v0, Lcom/google/longrunning/ListOperationsRequest;->DEFAULT_INSTANCE:Lcom/google/longrunning/ListOperationsRequest;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/longrunning/ListOperationsRequest;

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/longrunning/ListOperationsRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 272
    sget-object v0, Lcom/google/longrunning/ListOperationsRequest;->DEFAULT_INSTANCE:Lcom/google/longrunning/ListOperationsRequest;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/longrunning/ListOperationsRequest;

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static parseFrom([B)Lcom/google/longrunning/ListOperationsRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 290
    sget-object v0, Lcom/google/longrunning/ListOperationsRequest;->DEFAULT_INSTANCE:Lcom/google/longrunning/ListOperationsRequest;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/longrunning/ListOperationsRequest;

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/longrunning/ListOperationsRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 297
    sget-object v0, Lcom/google/longrunning/ListOperationsRequest;->DEFAULT_INSTANCE:Lcom/google/longrunning/ListOperationsRequest;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/longrunning/ListOperationsRequest;

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
            "Lcom/google/longrunning/ListOperationsRequest;",
            ">;"
        }
    .end annotation

    .line 682
    sget-object v0, Lcom/google/longrunning/ListOperationsRequest;->DEFAULT_INSTANCE:Lcom/google/longrunning/ListOperationsRequest;

    invoke-virtual {v0}, Lcom/google/longrunning/ListOperationsRequest;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method private setFilter(Ljava/lang/String;)V
    .locals 0

    .line 127
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 129
    iput-object p1, p0, Lcom/google/longrunning/ListOperationsRequest;->filter_:Ljava/lang/String;

    return-void

    .array-data 1
    .end array-data
.end method

.method private setFilterBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 152
    invoke-static {p1}, Lcom/google/longrunning/ListOperationsRequest;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 153
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/longrunning/ListOperationsRequest;->filter_:Ljava/lang/String;

    return-void

    .array-data 1
    .end array-data
.end method

.method private setName(Ljava/lang/String;)V
    .locals 0

    .line 60
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 62
    iput-object p1, p0, Lcom/google/longrunning/ListOperationsRequest;->name_:Ljava/lang/String;

    return-void

    .array-data 1
    .end array-data
.end method

.method private setNameBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 85
    invoke-static {p1}, Lcom/google/longrunning/ListOperationsRequest;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 86
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/longrunning/ListOperationsRequest;->name_:Ljava/lang/String;

    return-void

    .array-data 1
    .end array-data
.end method

.method private setPageSize(I)V
    .locals 0

    .line 181
    iput p1, p0, Lcom/google/longrunning/ListOperationsRequest;->pageSize_:I

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method private setPageToken(Ljava/lang/String;)V
    .locals 0

    .line 232
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 234
    iput-object p1, p0, Lcom/google/longrunning/ListOperationsRequest;->pageToken_:Ljava/lang/String;

    return-void

    .array-data 1
    .end array-data
.end method

.method private setPageTokenBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 257
    invoke-static {p1}, Lcom/google/longrunning/ListOperationsRequest;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 258
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/longrunning/ListOperationsRequest;->pageToken_:Ljava/lang/String;

    return-void

    .array-data 1
    .end array-data
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 615
    sget-object p2, Lcom/google/longrunning/ListOperationsRequest$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x1

    const/4 p3, 0x0

    packed-switch p1, :pswitch_data_0

    .line 660
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p3

    .line 654
    :pswitch_1
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 639
    :pswitch_2
    sget-object p1, Lcom/google/longrunning/ListOperationsRequest;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    .line 641
    const-class p2, Lcom/google/longrunning/ListOperationsRequest;

    monitor-enter p2

    .line 642
    :try_start_0
    sget-object p1, Lcom/google/longrunning/ListOperationsRequest;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_0

    .line 644
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lcom/google/longrunning/ListOperationsRequest;->DEFAULT_INSTANCE:Lcom/google/longrunning/ListOperationsRequest;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 647
    sput-object p1, Lcom/google/longrunning/ListOperationsRequest;->PARSER:Lcom/google/protobuf/Parser;

    .line 649
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

    .line 636
    :pswitch_3
    sget-object p1, Lcom/google/longrunning/ListOperationsRequest;->DEFAULT_INSTANCE:Lcom/google/longrunning/ListOperationsRequest;

    return-object p1

    :pswitch_4
    const/4 p1, 0x4

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v0, "filter_"

    aput-object v0, p1, p3

    const-string p3, "pageSize_"

    aput-object p3, p1, p2

    const/4 p2, 0x2

    const-string p3, "pageToken_"

    aput-object p3, p1, p2

    const/4 p2, 0x3

    const-string p3, "name_"

    aput-object p3, p1, p2

    const-string p2, "\u0000\u0004\u0000\u0000\u0001\u0004\u0004\u0000\u0000\u0000\u0001\u0208\u0002\u0004\u0003\u0208\u0004\u0208"

    .line 632
    sget-object p3, Lcom/google/longrunning/ListOperationsRequest;->DEFAULT_INSTANCE:Lcom/google/longrunning/ListOperationsRequest;

    invoke-static {p3, p2, p1}, Lcom/google/longrunning/ListOperationsRequest;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 620
    :pswitch_5
    new-instance p1, Lcom/google/longrunning/ListOperationsRequest$Builder;

    invoke-direct {p1, p3}, Lcom/google/longrunning/ListOperationsRequest$Builder;-><init>(Lcom/google/longrunning/ListOperationsRequest$1;)V

    return-object p1

    .line 617
    :pswitch_6
    new-instance p1, Lcom/google/longrunning/ListOperationsRequest;

    invoke-direct {p1}, Lcom/google/longrunning/ListOperationsRequest;-><init>()V

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

.method public getFilter()Ljava/lang/String;
    .locals 1

    .line 102
    iget-object v0, p0, Lcom/google/longrunning/ListOperationsRequest;->filter_:Ljava/lang/String;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getFilterBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 115
    iget-object v0, p0, Lcom/google/longrunning/ListOperationsRequest;->filter_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/google/longrunning/ListOperationsRequest;->name_:Ljava/lang/String;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getNameBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/google/longrunning/ListOperationsRequest;->name_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getPageSize()I
    .locals 1

    .line 169
    iget v0, p0, Lcom/google/longrunning/ListOperationsRequest;->pageSize_:I

    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getPageToken()Ljava/lang/String;
    .locals 1

    .line 207
    iget-object v0, p0, Lcom/google/longrunning/ListOperationsRequest;->pageToken_:Ljava/lang/String;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getPageTokenBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 220
    iget-object v0, p0, Lcom/google/longrunning/ListOperationsRequest;->pageToken_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method
