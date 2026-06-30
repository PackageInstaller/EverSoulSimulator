.class public final Lcom/google/api/HttpRule;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "HttpRule.java"

# interfaces
.implements Lcom/google/api/HttpRuleOrBuilder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/api/HttpRule$Builder;,
        Lcom/google/api/HttpRule$PatternCase;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/google/api/HttpRule;",
        "Lcom/google/api/HttpRule$Builder;",
        ">;",
        "Lcom/google/api/HttpRuleOrBuilder;"
    }
.end annotation


# static fields
.field public static final ADDITIONAL_BINDINGS_FIELD_NUMBER:I = 0xb

.field public static final BODY_FIELD_NUMBER:I = 0x7

.field public static final CUSTOM_FIELD_NUMBER:I = 0x8

.field private static final DEFAULT_INSTANCE:Lcom/google/api/HttpRule;

.field public static final DELETE_FIELD_NUMBER:I = 0x5

.field public static final GET_FIELD_NUMBER:I = 0x2

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/api/HttpRule;",
            ">;"
        }
    .end annotation
.end field

.field public static final PATCH_FIELD_NUMBER:I = 0x6

.field public static final POST_FIELD_NUMBER:I = 0x4

.field public static final PUT_FIELD_NUMBER:I = 0x3

.field public static final RESPONSE_BODY_FIELD_NUMBER:I = 0xc

.field public static final SELECTOR_FIELD_NUMBER:I = 0x1


# instance fields
.field private additionalBindings_:Lcom/google/protobuf/Internal$ProtobufList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$ProtobufList<",
            "Lcom/google/api/HttpRule;",
            ">;"
        }
    .end annotation
.end field

.field private body_:Ljava/lang/String;

.field private patternCase_:I

.field private pattern_:Ljava/lang/Object;

.field private responseBody_:Ljava/lang/String;

.field private selector_:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 2434
    new-instance v0, Lcom/google/api/HttpRule;

    invoke-direct {v0}, Lcom/google/api/HttpRule;-><init>()V

    .line 2437
    sput-object v0, Lcom/google/api/HttpRule;->DEFAULT_INSTANCE:Lcom/google/api/HttpRule;

    .line 2438
    const-class v1, Lcom/google/api/HttpRule;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method private constructor <init>()V
    .locals 1

    .line 239
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    const/4 v0, 0x0

    .line 245
    iput v0, p0, Lcom/google/api/HttpRule;->patternCase_:I

    const-string v0, ""

    .line 240
    iput-object v0, p0, Lcom/google/api/HttpRule;->selector_:Ljava/lang/String;

    .line 241
    iput-object v0, p0, Lcom/google/api/HttpRule;->body_:Ljava/lang/String;

    .line 242
    iput-object v0, p0, Lcom/google/api/HttpRule;->responseBody_:Ljava/lang/String;

    .line 243
    invoke-static {}, Lcom/google/api/HttpRule;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/HttpRule;->additionalBindings_:Lcom/google/protobuf/Internal$ProtobufList;

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method static synthetic access$000()Lcom/google/api/HttpRule;
    .locals 1

    .line 234
    sget-object v0, Lcom/google/api/HttpRule;->DEFAULT_INSTANCE:Lcom/google/api/HttpRule;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method static synthetic access$100(Lcom/google/api/HttpRule;)V
    .locals 0

    .line 234
    invoke-direct {p0}, Lcom/google/api/HttpRule;->clearPattern()V

    return-void

    .array-data 1
    .end array-data
.end method

.method static synthetic access$1000(Lcom/google/api/HttpRule;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 234
    invoke-direct {p0, p1}, Lcom/google/api/HttpRule;->setPutBytes(Lcom/google/protobuf/ByteString;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method static synthetic access$1100(Lcom/google/api/HttpRule;Ljava/lang/String;)V
    .locals 0

    .line 234
    invoke-direct {p0, p1}, Lcom/google/api/HttpRule;->setPost(Ljava/lang/String;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method static synthetic access$1200(Lcom/google/api/HttpRule;)V
    .locals 0

    .line 234
    invoke-direct {p0}, Lcom/google/api/HttpRule;->clearPost()V

    return-void

    .array-data 1
    .end array-data
.end method

.method static synthetic access$1300(Lcom/google/api/HttpRule;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 234
    invoke-direct {p0, p1}, Lcom/google/api/HttpRule;->setPostBytes(Lcom/google/protobuf/ByteString;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method static synthetic access$1400(Lcom/google/api/HttpRule;Ljava/lang/String;)V
    .locals 0

    .line 234
    invoke-direct {p0, p1}, Lcom/google/api/HttpRule;->setDelete(Ljava/lang/String;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method static synthetic access$1500(Lcom/google/api/HttpRule;)V
    .locals 0

    .line 234
    invoke-direct {p0}, Lcom/google/api/HttpRule;->clearDelete()V

    return-void

    .array-data 1
    .end array-data
.end method

.method static synthetic access$1600(Lcom/google/api/HttpRule;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 234
    invoke-direct {p0, p1}, Lcom/google/api/HttpRule;->setDeleteBytes(Lcom/google/protobuf/ByteString;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method static synthetic access$1700(Lcom/google/api/HttpRule;Ljava/lang/String;)V
    .locals 0

    .line 234
    invoke-direct {p0, p1}, Lcom/google/api/HttpRule;->setPatch(Ljava/lang/String;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method static synthetic access$1800(Lcom/google/api/HttpRule;)V
    .locals 0

    .line 234
    invoke-direct {p0}, Lcom/google/api/HttpRule;->clearPatch()V

    return-void

    .array-data 1
    .end array-data
.end method

.method static synthetic access$1900(Lcom/google/api/HttpRule;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 234
    invoke-direct {p0, p1}, Lcom/google/api/HttpRule;->setPatchBytes(Lcom/google/protobuf/ByteString;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method static synthetic access$200(Lcom/google/api/HttpRule;Ljava/lang/String;)V
    .locals 0

    .line 234
    invoke-direct {p0, p1}, Lcom/google/api/HttpRule;->setSelector(Ljava/lang/String;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method static synthetic access$2000(Lcom/google/api/HttpRule;Lcom/google/api/CustomHttpPattern;)V
    .locals 0

    .line 234
    invoke-direct {p0, p1}, Lcom/google/api/HttpRule;->setCustom(Lcom/google/api/CustomHttpPattern;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method static synthetic access$2100(Lcom/google/api/HttpRule;Lcom/google/api/CustomHttpPattern;)V
    .locals 0

    .line 234
    invoke-direct {p0, p1}, Lcom/google/api/HttpRule;->mergeCustom(Lcom/google/api/CustomHttpPattern;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method static synthetic access$2200(Lcom/google/api/HttpRule;)V
    .locals 0

    .line 234
    invoke-direct {p0}, Lcom/google/api/HttpRule;->clearCustom()V

    return-void

    .array-data 1
    .end array-data
.end method

.method static synthetic access$2300(Lcom/google/api/HttpRule;Ljava/lang/String;)V
    .locals 0

    .line 234
    invoke-direct {p0, p1}, Lcom/google/api/HttpRule;->setBody(Ljava/lang/String;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method static synthetic access$2400(Lcom/google/api/HttpRule;)V
    .locals 0

    .line 234
    invoke-direct {p0}, Lcom/google/api/HttpRule;->clearBody()V

    return-void

    .array-data 1
    .end array-data
.end method

.method static synthetic access$2500(Lcom/google/api/HttpRule;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 234
    invoke-direct {p0, p1}, Lcom/google/api/HttpRule;->setBodyBytes(Lcom/google/protobuf/ByteString;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method static synthetic access$2600(Lcom/google/api/HttpRule;Ljava/lang/String;)V
    .locals 0

    .line 234
    invoke-direct {p0, p1}, Lcom/google/api/HttpRule;->setResponseBody(Ljava/lang/String;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method static synthetic access$2700(Lcom/google/api/HttpRule;)V
    .locals 0

    .line 234
    invoke-direct {p0}, Lcom/google/api/HttpRule;->clearResponseBody()V

    return-void

    .array-data 1
    .end array-data
.end method

.method static synthetic access$2800(Lcom/google/api/HttpRule;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 234
    invoke-direct {p0, p1}, Lcom/google/api/HttpRule;->setResponseBodyBytes(Lcom/google/protobuf/ByteString;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method static synthetic access$2900(Lcom/google/api/HttpRule;ILcom/google/api/HttpRule;)V
    .locals 0

    .line 234
    invoke-direct {p0, p1, p2}, Lcom/google/api/HttpRule;->setAdditionalBindings(ILcom/google/api/HttpRule;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method static synthetic access$300(Lcom/google/api/HttpRule;)V
    .locals 0

    .line 234
    invoke-direct {p0}, Lcom/google/api/HttpRule;->clearSelector()V

    return-void

    .array-data 1
    .end array-data
.end method

.method static synthetic access$3000(Lcom/google/api/HttpRule;Lcom/google/api/HttpRule;)V
    .locals 0

    .line 234
    invoke-direct {p0, p1}, Lcom/google/api/HttpRule;->addAdditionalBindings(Lcom/google/api/HttpRule;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method static synthetic access$3100(Lcom/google/api/HttpRule;ILcom/google/api/HttpRule;)V
    .locals 0

    .line 234
    invoke-direct {p0, p1, p2}, Lcom/google/api/HttpRule;->addAdditionalBindings(ILcom/google/api/HttpRule;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method static synthetic access$3200(Lcom/google/api/HttpRule;Ljava/lang/Iterable;)V
    .locals 0

    .line 234
    invoke-direct {p0, p1}, Lcom/google/api/HttpRule;->addAllAdditionalBindings(Ljava/lang/Iterable;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method static synthetic access$3300(Lcom/google/api/HttpRule;)V
    .locals 0

    .line 234
    invoke-direct {p0}, Lcom/google/api/HttpRule;->clearAdditionalBindings()V

    return-void

    .array-data 1
    .end array-data
.end method

.method static synthetic access$3400(Lcom/google/api/HttpRule;I)V
    .locals 0

    .line 234
    invoke-direct {p0, p1}, Lcom/google/api/HttpRule;->removeAdditionalBindings(I)V

    return-void

    .array-data 1
    .end array-data
.end method

.method static synthetic access$400(Lcom/google/api/HttpRule;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 234
    invoke-direct {p0, p1}, Lcom/google/api/HttpRule;->setSelectorBytes(Lcom/google/protobuf/ByteString;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method static synthetic access$500(Lcom/google/api/HttpRule;Ljava/lang/String;)V
    .locals 0

    .line 234
    invoke-direct {p0, p1}, Lcom/google/api/HttpRule;->setGet(Ljava/lang/String;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method static synthetic access$600(Lcom/google/api/HttpRule;)V
    .locals 0

    .line 234
    invoke-direct {p0}, Lcom/google/api/HttpRule;->clearGet()V

    return-void

    .array-data 1
    .end array-data
.end method

.method static synthetic access$700(Lcom/google/api/HttpRule;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 234
    invoke-direct {p0, p1}, Lcom/google/api/HttpRule;->setGetBytes(Lcom/google/protobuf/ByteString;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method static synthetic access$800(Lcom/google/api/HttpRule;Ljava/lang/String;)V
    .locals 0

    .line 234
    invoke-direct {p0, p1}, Lcom/google/api/HttpRule;->setPut(Ljava/lang/String;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method static synthetic access$900(Lcom/google/api/HttpRule;)V
    .locals 0

    .line 234
    invoke-direct {p0}, Lcom/google/api/HttpRule;->clearPut()V

    return-void

    .array-data 1
    .end array-data
.end method

.method private addAdditionalBindings(ILcom/google/api/HttpRule;)V
    .locals 1

    .line 1127
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1128
    invoke-direct {p0}, Lcom/google/api/HttpRule;->ensureAdditionalBindingsIsMutable()V

    .line 1129
    iget-object v0, p0, Lcom/google/api/HttpRule;->additionalBindings_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/Internal$ProtobufList;->add(ILjava/lang/Object;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method private addAdditionalBindings(Lcom/google/api/HttpRule;)V
    .locals 1

    .line 1112
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1113
    invoke-direct {p0}, Lcom/google/api/HttpRule;->ensureAdditionalBindingsIsMutable()V

    .line 1114
    iget-object v0, p0, Lcom/google/api/HttpRule;->additionalBindings_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->add(Ljava/lang/Object;)Z

    return-void

    .array-data 1
    .end array-data
.end method

.method private addAllAdditionalBindings(Ljava/lang/Iterable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/google/api/HttpRule;",
            ">;)V"
        }
    .end annotation

    .line 1142
    invoke-direct {p0}, Lcom/google/api/HttpRule;->ensureAdditionalBindingsIsMutable()V

    .line 1143
    iget-object v0, p0, Lcom/google/api/HttpRule;->additionalBindings_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMessageLite;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method private clearAdditionalBindings()V
    .locals 1

    .line 1156
    invoke-static {}, Lcom/google/api/HttpRule;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/HttpRule;->additionalBindings_:Lcom/google/protobuf/Internal$ProtobufList;

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method private clearBody()V
    .locals 1

    .line 904
    invoke-static {}, Lcom/google/api/HttpRule;->getDefaultInstance()Lcom/google/api/HttpRule;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/api/HttpRule;->getBody()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/HttpRule;->body_:Ljava/lang/String;

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method private clearCustom()V
    .locals 2

    .line 832
    iget v0, p0, Lcom/google/api/HttpRule;->patternCase_:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 833
    iput v0, p0, Lcom/google/api/HttpRule;->patternCase_:I

    const/4 v0, 0x0

    .line 834
    iput-object v0, p0, Lcom/google/api/HttpRule;->pattern_:Ljava/lang/Object;

    :cond_0
    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method private clearDelete()V
    .locals 2

    .line 657
    iget v0, p0, Lcom/google/api/HttpRule;->patternCase_:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 658
    iput v0, p0, Lcom/google/api/HttpRule;->patternCase_:I

    const/4 v0, 0x0

    .line 659
    iput-object v0, p0, Lcom/google/api/HttpRule;->pattern_:Ljava/lang/Object;

    :cond_0
    return-void

    .array-data 1
    .end array-data
.end method

.method private clearGet()V
    .locals 2

    .line 428
    iget v0, p0, Lcom/google/api/HttpRule;->patternCase_:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 429
    iput v0, p0, Lcom/google/api/HttpRule;->patternCase_:I

    const/4 v0, 0x0

    .line 430
    iput-object v0, p0, Lcom/google/api/HttpRule;->pattern_:Ljava/lang/Object;

    :cond_0
    return-void

    .array-data 1
    .end array-data
.end method

.method private clearPatch()V
    .locals 2

    .line 733
    iget v0, p0, Lcom/google/api/HttpRule;->patternCase_:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 734
    iput v0, p0, Lcom/google/api/HttpRule;->patternCase_:I

    const/4 v0, 0x0

    .line 735
    iput-object v0, p0, Lcom/google/api/HttpRule;->pattern_:Ljava/lang/Object;

    :cond_0
    return-void

    .array-data 1
    .end array-data
.end method

.method private clearPattern()V
    .locals 1

    const/4 v0, 0x0

    .line 292
    iput v0, p0, Lcom/google/api/HttpRule;->patternCase_:I

    const/4 v0, 0x0

    .line 293
    iput-object v0, p0, Lcom/google/api/HttpRule;->pattern_:Ljava/lang/Object;

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method private clearPost()V
    .locals 2

    .line 581
    iget v0, p0, Lcom/google/api/HttpRule;->patternCase_:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 582
    iput v0, p0, Lcom/google/api/HttpRule;->patternCase_:I

    const/4 v0, 0x0

    .line 583
    iput-object v0, p0, Lcom/google/api/HttpRule;->pattern_:Ljava/lang/Object;

    :cond_0
    return-void

    .array-data 1
    .end array-data
.end method

.method private clearPut()V
    .locals 2

    .line 505
    iget v0, p0, Lcom/google/api/HttpRule;->patternCase_:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 506
    iput v0, p0, Lcom/google/api/HttpRule;->patternCase_:I

    const/4 v0, 0x0

    .line 507
    iput-object v0, p0, Lcom/google/api/HttpRule;->pattern_:Ljava/lang/Object;

    :cond_0
    return-void

    .array-data 1
    .end array-data
.end method

.method private clearResponseBody()V
    .locals 1

    .line 991
    invoke-static {}, Lcom/google/api/HttpRule;->getDefaultInstance()Lcom/google/api/HttpRule;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/api/HttpRule;->getResponseBody()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/HttpRule;->responseBody_:Ljava/lang/String;

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method private clearSelector()V
    .locals 1

    .line 350
    invoke-static {}, Lcom/google/api/HttpRule;->getDefaultInstance()Lcom/google/api/HttpRule;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/api/HttpRule;->getSelector()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/HttpRule;->selector_:Ljava/lang/String;

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method private ensureAdditionalBindingsIsMutable()V
    .locals 2

    .line 1080
    iget-object v0, p0, Lcom/google/api/HttpRule;->additionalBindings_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 1081
    invoke-interface {v0}, Lcom/google/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1083
    invoke-static {v0}, Lcom/google/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/google/protobuf/Internal$ProtobufList;)Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/HttpRule;->additionalBindings_:Lcom/google/protobuf/Internal$ProtobufList;

    :cond_0
    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public static getDefaultInstance()Lcom/google/api/HttpRule;
    .locals 1

    .line 2443
    sget-object v0, Lcom/google/api/HttpRule;->DEFAULT_INSTANCE:Lcom/google/api/HttpRule;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method private mergeCustom(Lcom/google/api/CustomHttpPattern;)V
    .locals 3

    .line 811
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 812
    iget v0, p0, Lcom/google/api/HttpRule;->patternCase_:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/api/HttpRule;->pattern_:Ljava/lang/Object;

    .line 813
    invoke-static {}, Lcom/google/api/CustomHttpPattern;->getDefaultInstance()Lcom/google/api/CustomHttpPattern;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 814
    iget-object v0, p0, Lcom/google/api/HttpRule;->pattern_:Ljava/lang/Object;

    check-cast v0, Lcom/google/api/CustomHttpPattern;

    invoke-static {v0}, Lcom/google/api/CustomHttpPattern;->newBuilder(Lcom/google/api/CustomHttpPattern;)Lcom/google/api/CustomHttpPattern$Builder;

    move-result-object v0

    .line 815
    invoke-virtual {v0, p1}, Lcom/google/api/CustomHttpPattern$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/api/CustomHttpPattern$Builder;

    invoke-virtual {p1}, Lcom/google/api/CustomHttpPattern$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    iput-object p1, p0, Lcom/google/api/HttpRule;->pattern_:Ljava/lang/Object;

    goto :goto_0

    .line 817
    :cond_0
    iput-object p1, p0, Lcom/google/api/HttpRule;->pattern_:Ljava/lang/Object;

    .line 819
    :goto_0
    iput v1, p0, Lcom/google/api/HttpRule;->patternCase_:I

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public static newBuilder()Lcom/google/api/HttpRule$Builder;
    .locals 1

    .line 1247
    sget-object v0, Lcom/google/api/HttpRule;->DEFAULT_INSTANCE:Lcom/google/api/HttpRule;

    invoke-virtual {v0}, Lcom/google/api/HttpRule;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/api/HttpRule$Builder;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public static newBuilder(Lcom/google/api/HttpRule;)Lcom/google/api/HttpRule$Builder;
    .locals 1

    .line 1250
    sget-object v0, Lcom/google/api/HttpRule;->DEFAULT_INSTANCE:Lcom/google/api/HttpRule;

    invoke-virtual {v0, p0}, Lcom/google/api/HttpRule;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lcom/google/api/HttpRule$Builder;

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/api/HttpRule;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1224
    sget-object v0, Lcom/google/api/HttpRule;->DEFAULT_INSTANCE:Lcom/google/api/HttpRule;

    invoke-static {v0, p0}, Lcom/google/api/HttpRule;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/api/HttpRule;

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/api/HttpRule;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1230
    sget-object v0, Lcom/google/api/HttpRule;->DEFAULT_INSTANCE:Lcom/google/api/HttpRule;

    invoke-static {v0, p0, p1}, Lcom/google/api/HttpRule;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/api/HttpRule;

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/api/HttpRule;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1188
    sget-object v0, Lcom/google/api/HttpRule;->DEFAULT_INSTANCE:Lcom/google/api/HttpRule;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/api/HttpRule;

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/api/HttpRule;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1195
    sget-object v0, Lcom/google/api/HttpRule;->DEFAULT_INSTANCE:Lcom/google/api/HttpRule;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/api/HttpRule;

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/api/HttpRule;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1235
    sget-object v0, Lcom/google/api/HttpRule;->DEFAULT_INSTANCE:Lcom/google/api/HttpRule;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/api/HttpRule;

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/api/HttpRule;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1242
    sget-object v0, Lcom/google/api/HttpRule;->DEFAULT_INSTANCE:Lcom/google/api/HttpRule;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/api/HttpRule;

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/api/HttpRule;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1212
    sget-object v0, Lcom/google/api/HttpRule;->DEFAULT_INSTANCE:Lcom/google/api/HttpRule;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/api/HttpRule;

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/api/HttpRule;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1219
    sget-object v0, Lcom/google/api/HttpRule;->DEFAULT_INSTANCE:Lcom/google/api/HttpRule;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/api/HttpRule;

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/google/api/HttpRule;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1175
    sget-object v0, Lcom/google/api/HttpRule;->DEFAULT_INSTANCE:Lcom/google/api/HttpRule;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/api/HttpRule;

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/api/HttpRule;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1182
    sget-object v0, Lcom/google/api/HttpRule;->DEFAULT_INSTANCE:Lcom/google/api/HttpRule;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/api/HttpRule;

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static parseFrom([B)Lcom/google/api/HttpRule;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1200
    sget-object v0, Lcom/google/api/HttpRule;->DEFAULT_INSTANCE:Lcom/google/api/HttpRule;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/api/HttpRule;

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/api/HttpRule;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1207
    sget-object v0, Lcom/google/api/HttpRule;->DEFAULT_INSTANCE:Lcom/google/api/HttpRule;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/api/HttpRule;

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
            "Lcom/google/api/HttpRule;",
            ">;"
        }
    .end annotation

    .line 2449
    sget-object v0, Lcom/google/api/HttpRule;->DEFAULT_INSTANCE:Lcom/google/api/HttpRule;

    invoke-virtual {v0}, Lcom/google/api/HttpRule;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method private removeAdditionalBindings(I)V
    .locals 1

    .line 1168
    invoke-direct {p0}, Lcom/google/api/HttpRule;->ensureAdditionalBindingsIsMutable()V

    .line 1169
    iget-object v0, p0, Lcom/google/api/HttpRule;->additionalBindings_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->remove(I)Ljava/lang/Object;

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method private setAdditionalBindings(ILcom/google/api/HttpRule;)V
    .locals 1

    .line 1098
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1099
    invoke-direct {p0}, Lcom/google/api/HttpRule;->ensureAdditionalBindingsIsMutable()V

    .line 1100
    iget-object v0, p0, Lcom/google/api/HttpRule;->additionalBindings_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/Internal$ProtobufList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void

    .array-data 1
    .end array-data
.end method

.method private setBody(Ljava/lang/String;)V
    .locals 0

    .line 887
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 889
    iput-object p1, p0, Lcom/google/api/HttpRule;->body_:Ljava/lang/String;

    return-void

    .array-data 1
    .end array-data
.end method

.method private setBodyBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 920
    invoke-static {p1}, Lcom/google/api/HttpRule;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 921
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/api/HttpRule;->body_:Ljava/lang/String;

    return-void

    .array-data 1
    .end array-data
.end method

.method private setCustom(Lcom/google/api/CustomHttpPattern;)V
    .locals 0

    .line 796
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 797
    iput-object p1, p0, Lcom/google/api/HttpRule;->pattern_:Ljava/lang/Object;

    const/16 p1, 0x8

    .line 798
    iput p1, p0, Lcom/google/api/HttpRule;->patternCase_:I

    return-void

    .array-data 1
    .end array-data
.end method

.method private setDelete(Ljava/lang/String;)V
    .locals 1

    .line 645
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x5

    .line 646
    iput v0, p0, Lcom/google/api/HttpRule;->patternCase_:I

    .line 647
    iput-object p1, p0, Lcom/google/api/HttpRule;->pattern_:Ljava/lang/Object;

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method private setDeleteBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 672
    invoke-static {p1}, Lcom/google/api/HttpRule;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 673
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/api/HttpRule;->pattern_:Ljava/lang/Object;

    const/4 p1, 0x5

    .line 674
    iput p1, p0, Lcom/google/api/HttpRule;->patternCase_:I

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method private setGet(Ljava/lang/String;)V
    .locals 1

    .line 415
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x2

    .line 416
    iput v0, p0, Lcom/google/api/HttpRule;->patternCase_:I

    .line 417
    iput-object p1, p0, Lcom/google/api/HttpRule;->pattern_:Ljava/lang/Object;

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method private setGetBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 444
    invoke-static {p1}, Lcom/google/api/HttpRule;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 445
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/api/HttpRule;->pattern_:Ljava/lang/Object;

    const/4 p1, 0x2

    .line 446
    iput p1, p0, Lcom/google/api/HttpRule;->patternCase_:I

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method private setPatch(Ljava/lang/String;)V
    .locals 1

    .line 721
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x6

    .line 722
    iput v0, p0, Lcom/google/api/HttpRule;->patternCase_:I

    .line 723
    iput-object p1, p0, Lcom/google/api/HttpRule;->pattern_:Ljava/lang/Object;

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method private setPatchBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 748
    invoke-static {p1}, Lcom/google/api/HttpRule;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 749
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/api/HttpRule;->pattern_:Ljava/lang/Object;

    const/4 p1, 0x6

    .line 750
    iput p1, p0, Lcom/google/api/HttpRule;->patternCase_:I

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method private setPost(Ljava/lang/String;)V
    .locals 1

    .line 569
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x4

    .line 570
    iput v0, p0, Lcom/google/api/HttpRule;->patternCase_:I

    .line 571
    iput-object p1, p0, Lcom/google/api/HttpRule;->pattern_:Ljava/lang/Object;

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method private setPostBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 596
    invoke-static {p1}, Lcom/google/api/HttpRule;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 597
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/api/HttpRule;->pattern_:Ljava/lang/Object;

    const/4 p1, 0x4

    .line 598
    iput p1, p0, Lcom/google/api/HttpRule;->patternCase_:I

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method private setPut(Ljava/lang/String;)V
    .locals 1

    .line 493
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x3

    .line 494
    iput v0, p0, Lcom/google/api/HttpRule;->patternCase_:I

    .line 495
    iput-object p1, p0, Lcom/google/api/HttpRule;->pattern_:Ljava/lang/Object;

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method private setPutBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 520
    invoke-static {p1}, Lcom/google/api/HttpRule;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 521
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/api/HttpRule;->pattern_:Ljava/lang/Object;

    const/4 p1, 0x3

    .line 522
    iput p1, p0, Lcom/google/api/HttpRule;->patternCase_:I

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method private setResponseBody(Ljava/lang/String;)V
    .locals 0

    .line 974
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 976
    iput-object p1, p0, Lcom/google/api/HttpRule;->responseBody_:Ljava/lang/String;

    return-void

    .array-data 1
    .end array-data
.end method

.method private setResponseBodyBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 1007
    invoke-static {p1}, Lcom/google/api/HttpRule;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 1008
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/api/HttpRule;->responseBody_:Ljava/lang/String;

    return-void

    .array-data 1
    .end array-data
.end method

.method private setSelector(Ljava/lang/String;)V
    .locals 0

    .line 336
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 338
    iput-object p1, p0, Lcom/google/api/HttpRule;->selector_:Ljava/lang/String;

    return-void

    .array-data 1
    .end array-data
.end method

.method private setSelectorBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 363
    invoke-static {p1}, Lcom/google/api/HttpRule;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 364
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/api/HttpRule;->selector_:Ljava/lang/String;

    return-void

    .array-data 1
    .end array-data
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 2377
    sget-object p2, Lcom/google/api/HttpRule$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x1

    const/4 p3, 0x0

    packed-switch p1, :pswitch_data_0

    .line 2427
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p3

    .line 2421
    :pswitch_1
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 2406
    :pswitch_2
    sget-object p1, Lcom/google/api/HttpRule;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    .line 2408
    const-class p2, Lcom/google/api/HttpRule;

    monitor-enter p2

    .line 2409
    :try_start_0
    sget-object p1, Lcom/google/api/HttpRule;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_0

    .line 2411
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lcom/google/api/HttpRule;->DEFAULT_INSTANCE:Lcom/google/api/HttpRule;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 2414
    sput-object p1, Lcom/google/api/HttpRule;->PARSER:Lcom/google/protobuf/Parser;

    .line 2416
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

    .line 2403
    :pswitch_3
    sget-object p1, Lcom/google/api/HttpRule;->DEFAULT_INSTANCE:Lcom/google/api/HttpRule;

    return-object p1

    :pswitch_4
    const/16 p1, 0x8

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v0, "pattern_"

    aput-object v0, p1, p3

    const-string p3, "patternCase_"

    aput-object p3, p1, p2

    const/4 p2, 0x2

    const-string p3, "selector_"

    aput-object p3, p1, p2

    const/4 p2, 0x3

    const-string p3, "body_"

    aput-object p3, p1, p2

    const/4 p2, 0x4

    .line 2385
    const-class p3, Lcom/google/api/CustomHttpPattern;

    aput-object p3, p1, p2

    const/4 p2, 0x5

    const-string p3, "additionalBindings_"

    aput-object p3, p1, p2

    const/4 p2, 0x6

    const-class p3, Lcom/google/api/HttpRule;

    aput-object p3, p1, p2

    const/4 p2, 0x7

    const-string p3, "responseBody_"

    aput-object p3, p1, p2

    const-string p2, "\u0000\n\u0001\u0000\u0001\u000c\n\u0000\u0001\u0000\u0001\u0208\u0002\u023b\u0000\u0003\u023b\u0000\u0004\u023b\u0000\u0005\u023b\u0000\u0006\u023b\u0000\u0007\u0208\u0008<\u0000\u000b\u001b\u000c\u0208"

    .line 2399
    sget-object p3, Lcom/google/api/HttpRule;->DEFAULT_INSTANCE:Lcom/google/api/HttpRule;

    invoke-static {p3, p2, p1}, Lcom/google/api/HttpRule;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 2382
    :pswitch_5
    new-instance p1, Lcom/google/api/HttpRule$Builder;

    invoke-direct {p1, p3}, Lcom/google/api/HttpRule$Builder;-><init>(Lcom/google/api/HttpRule$1;)V

    return-object p1

    .line 2379
    :pswitch_6
    new-instance p1, Lcom/google/api/HttpRule;

    invoke-direct {p1}, Lcom/google/api/HttpRule;-><init>()V

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

.method public getAdditionalBindings(I)Lcom/google/api/HttpRule;
    .locals 1

    .line 1064
    iget-object v0, p0, Lcom/google/api/HttpRule;->additionalBindings_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/api/HttpRule;

    return-object p1

    nop

    .array-data 1
    .end array-data
.end method

.method public getAdditionalBindingsCount()I
    .locals 1

    .line 1051
    iget-object v0, p0, Lcom/google/api/HttpRule;->additionalBindings_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0}, Lcom/google/protobuf/Internal$ProtobufList;->size()I

    move-result v0

    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getAdditionalBindingsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/api/HttpRule;",
            ">;"
        }
    .end annotation

    .line 1025
    iget-object v0, p0, Lcom/google/api/HttpRule;->additionalBindings_:Lcom/google/protobuf/Internal$ProtobufList;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getAdditionalBindingsOrBuilder(I)Lcom/google/api/HttpRuleOrBuilder;
    .locals 1

    .line 1077
    iget-object v0, p0, Lcom/google/api/HttpRule;->additionalBindings_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/api/HttpRuleOrBuilder;

    return-object p1

    nop

    .array-data 1
    .end array-data
.end method

.method public getAdditionalBindingsOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/google/api/HttpRuleOrBuilder;",
            ">;"
        }
    .end annotation

    .line 1038
    iget-object v0, p0, Lcom/google/api/HttpRule;->additionalBindings_:Lcom/google/protobuf/Internal$ProtobufList;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getBody()Ljava/lang/String;
    .locals 1

    .line 854
    iget-object v0, p0, Lcom/google/api/HttpRule;->body_:Ljava/lang/String;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getBodyBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 871
    iget-object v0, p0, Lcom/google/api/HttpRule;->body_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getCustom()Lcom/google/api/CustomHttpPattern;
    .locals 2

    .line 780
    iget v0, p0, Lcom/google/api/HttpRule;->patternCase_:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    .line 781
    iget-object v0, p0, Lcom/google/api/HttpRule;->pattern_:Ljava/lang/Object;

    check-cast v0, Lcom/google/api/CustomHttpPattern;

    return-object v0

    .line 783
    :cond_0
    invoke-static {}, Lcom/google/api/CustomHttpPattern;->getDefaultInstance()Lcom/google/api/CustomHttpPattern;

    move-result-object v0

    return-object v0

    .array-data 1
    .end array-data
.end method

.method public getDelete()Ljava/lang/String;
    .locals 2

    .line 613
    iget v0, p0, Lcom/google/api/HttpRule;->patternCase_:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 614
    iget-object v0, p0, Lcom/google/api/HttpRule;->pattern_:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getDeleteBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 630
    iget v0, p0, Lcom/google/api/HttpRule;->patternCase_:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 631
    iget-object v0, p0, Lcom/google/api/HttpRule;->pattern_:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string v0, ""

    .line 633
    :goto_0
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getGet()Ljava/lang/String;
    .locals 2

    .line 381
    iget v0, p0, Lcom/google/api/HttpRule;->patternCase_:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 382
    iget-object v0, p0, Lcom/google/api/HttpRule;->pattern_:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getGetBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 399
    iget v0, p0, Lcom/google/api/HttpRule;->patternCase_:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 400
    iget-object v0, p0, Lcom/google/api/HttpRule;->pattern_:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string v0, ""

    .line 402
    :goto_0
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getPatch()Ljava/lang/String;
    .locals 2

    .line 689
    iget v0, p0, Lcom/google/api/HttpRule;->patternCase_:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    .line 690
    iget-object v0, p0, Lcom/google/api/HttpRule;->pattern_:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getPatchBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 706
    iget v0, p0, Lcom/google/api/HttpRule;->patternCase_:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    .line 707
    iget-object v0, p0, Lcom/google/api/HttpRule;->pattern_:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string v0, ""

    .line 709
    :goto_0
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getPatternCase()Lcom/google/api/HttpRule$PatternCase;
    .locals 1

    .line 287
    iget v0, p0, Lcom/google/api/HttpRule;->patternCase_:I

    invoke-static {v0}, Lcom/google/api/HttpRule$PatternCase;->forNumber(I)Lcom/google/api/HttpRule$PatternCase;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getPost()Ljava/lang/String;
    .locals 2

    .line 537
    iget v0, p0, Lcom/google/api/HttpRule;->patternCase_:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 538
    iget-object v0, p0, Lcom/google/api/HttpRule;->pattern_:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getPostBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 554
    iget v0, p0, Lcom/google/api/HttpRule;->patternCase_:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 555
    iget-object v0, p0, Lcom/google/api/HttpRule;->pattern_:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string v0, ""

    .line 557
    :goto_0
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getPut()Ljava/lang/String;
    .locals 2

    .line 461
    iget v0, p0, Lcom/google/api/HttpRule;->patternCase_:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 462
    iget-object v0, p0, Lcom/google/api/HttpRule;->pattern_:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getPutBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 478
    iget v0, p0, Lcom/google/api/HttpRule;->patternCase_:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 479
    iget-object v0, p0, Lcom/google/api/HttpRule;->pattern_:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string v0, ""

    .line 481
    :goto_0
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getResponseBody()Ljava/lang/String;
    .locals 1

    .line 941
    iget-object v0, p0, Lcom/google/api/HttpRule;->responseBody_:Ljava/lang/String;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getResponseBodyBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 958
    iget-object v0, p0, Lcom/google/api/HttpRule;->responseBody_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getSelector()Ljava/lang/String;
    .locals 1

    .line 309
    iget-object v0, p0, Lcom/google/api/HttpRule;->selector_:Ljava/lang/String;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getSelectorBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 323
    iget-object v0, p0, Lcom/google/api/HttpRule;->selector_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public hasCustom()Z
    .locals 2

    .line 766
    iget v0, p0, Lcom/google/api/HttpRule;->patternCase_:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .array-data 1
    .end array-data
.end method
