.class public final Lcom/kakao/sdk/share/model/ValidationResult;
.super Ljava/lang/Object;
.source "ValidationResult.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kakao/sdk/share/model/ValidationResult$$serializer;,
        Lcom/kakao/sdk/share/model/ValidationResult$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000J\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0016\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0087\u0008\u0018\u0000 02\u00020\u0001:\u0002/0BS\u0008\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0008\u0001\u0010\u0004\u001a\u00020\u0005\u0012\n\u0008\u0001\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u0012\n\u0008\u0001\u0010\u0008\u001a\u0004\u0018\u00010\u0007\u0012\n\u0008\u0001\u0010\t\u001a\u0004\u0018\u00010\u0007\u0012\n\u0008\u0001\u0010\n\u001a\u0004\u0018\u00010\u0007\u0012\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u000c\u00a2\u0006\u0002\u0010\rB3\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u0012\u0006\u0010\u0008\u001a\u00020\u0007\u0012\u0008\u0010\t\u001a\u0004\u0018\u00010\u0007\u0012\u0008\u0010\n\u001a\u0004\u0018\u00010\u0007\u00a2\u0006\u0002\u0010\u000eJ\t\u0010\u001c\u001a\u00020\u0005H\u00c6\u0003J\u000b\u0010\u001d\u001a\u0004\u0018\u00010\u0007H\u00c6\u0003J\t\u0010\u001e\u001a\u00020\u0007H\u00c6\u0003J\u000b\u0010\u001f\u001a\u0004\u0018\u00010\u0007H\u00c6\u0003J\u000b\u0010 \u001a\u0004\u0018\u00010\u0007H\u00c6\u0003JA\u0010!\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00052\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00072\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u00072\n\u0008\u0002\u0010\t\u001a\u0004\u0018\u00010\u00072\n\u0008\u0002\u0010\n\u001a\u0004\u0018\u00010\u0007H\u00c6\u0001J\u0013\u0010\"\u001a\u00020#2\u0008\u0010$\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010%\u001a\u00020\u0003H\u00d6\u0001J\t\u0010&\u001a\u00020\'H\u00d6\u0001J!\u0010(\u001a\u00020)2\u0006\u0010*\u001a\u00020\u00002\u0006\u0010+\u001a\u00020,2\u0006\u0010-\u001a\u00020.H\u00c7\u0001R\u001e\u0010\n\u001a\u0004\u0018\u00010\u00078\u0006X\u0087\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008\u000f\u0010\u0010\u001a\u0004\u0008\u0011\u0010\u0012R\u001e\u0010\u0006\u001a\u0004\u0018\u00010\u00078\u0006X\u0087\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008\u0013\u0010\u0010\u001a\u0004\u0008\u0014\u0010\u0012R\u001c\u0010\u0004\u001a\u00020\u00058\u0006X\u0087\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008\u0015\u0010\u0010\u001a\u0004\u0008\u0016\u0010\u0017R\u001c\u0010\u0008\u001a\u00020\u00078\u0006X\u0087\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008\u0018\u0010\u0010\u001a\u0004\u0008\u0019\u0010\u0012R\u001e\u0010\t\u001a\u0004\u0018\u00010\u00078\u0006X\u0087\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008\u001a\u0010\u0010\u001a\u0004\u0008\u001b\u0010\u0012\u00a8\u00061"
    }
    d2 = {
        "Lcom/kakao/sdk/share/model/ValidationResult;",
        "",
        "seen1",
        "",
        "templateId",
        "",
        "templateArgs",
        "Lkotlinx/serialization/json/JsonObject;",
        "templateMsg",
        "warningMsg",
        "argumentMsg",
        "serializationConstructorMarker",
        "Lkotlinx/serialization/internal/SerializationConstructorMarker;",
        "(IJLkotlinx/serialization/json/JsonObject;Lkotlinx/serialization/json/JsonObject;Lkotlinx/serialization/json/JsonObject;Lkotlinx/serialization/json/JsonObject;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V",
        "(JLkotlinx/serialization/json/JsonObject;Lkotlinx/serialization/json/JsonObject;Lkotlinx/serialization/json/JsonObject;Lkotlinx/serialization/json/JsonObject;)V",
        "getArgumentMsg$annotations",
        "()V",
        "getArgumentMsg",
        "()Lkotlinx/serialization/json/JsonObject;",
        "getTemplateArgs$annotations",
        "getTemplateArgs",
        "getTemplateId$annotations",
        "getTemplateId",
        "()J",
        "getTemplateMsg$annotations",
        "getTemplateMsg",
        "getWarningMsg$annotations",
        "getWarningMsg",
        "component1",
        "component2",
        "component3",
        "component4",
        "component5",
        "copy",
        "equals",
        "",
        "other",
        "hashCode",
        "toString",
        "",
        "write$Self",
        "",
        "self",
        "output",
        "Lkotlinx/serialization/encoding/CompositeEncoder;",
        "serialDesc",
        "Lkotlinx/serialization/descriptors/SerialDescriptor;",
        "$serializer",
        "Companion",
        "share_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation

.annotation runtime Lkotlinx/serialization/Serializable;
.end annotation


# static fields
.field public static final Companion:Lcom/kakao/sdk/share/model/ValidationResult$Companion;


# instance fields
.field private final argumentMsg:Lkotlinx/serialization/json/JsonObject;

.field private final templateArgs:Lkotlinx/serialization/json/JsonObject;

.field private final templateId:J

.field private final templateMsg:Lkotlinx/serialization/json/JsonObject;

.field private final warningMsg:Lkotlinx/serialization/json/JsonObject;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/kakao/sdk/share/model/ValidationResult$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/kakao/sdk/share/model/ValidationResult$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/kakao/sdk/share/model/ValidationResult;->Companion:Lcom/kakao/sdk/share/model/ValidationResult$Companion;

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public synthetic constructor <init>(IJLkotlinx/serialization/json/JsonObject;Lkotlinx/serialization/json/JsonObject;Lkotlinx/serialization/json/JsonObject;Lkotlinx/serialization/json/JsonObject;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V
    .locals 1
    .param p2    # J
        .annotation runtime Lkotlinx/serialization/SerialName;
            value = "template_id"
        .end annotation
    .end param
    .param p4    # Lkotlinx/serialization/json/JsonObject;
        .annotation runtime Lkotlinx/serialization/SerialName;
            value = "template_args"
        .end annotation
    .end param
    .param p5    # Lkotlinx/serialization/json/JsonObject;
        .annotation runtime Lkotlinx/serialization/SerialName;
            value = "template_msg"
        .end annotation
    .end param
    .param p6    # Lkotlinx/serialization/json/JsonObject;
        .annotation runtime Lkotlinx/serialization/SerialName;
            value = "warning_msg"
        .end annotation
    .end param
    .param p7    # Lkotlinx/serialization/json/JsonObject;
        .annotation runtime Lkotlinx/serialization/SerialName;
            value = "argument_msg"
        .end annotation
    .end param
    .annotation runtime Lkotlin/Deprecated;
        level = .enum Lkotlin/DeprecationLevel;->HIDDEN:Lkotlin/DeprecationLevel;
        message = "This synthesized declaration should not be used directly"
        replaceWith = .subannotation Lkotlin/ReplaceWith;
            expression = ""
            imports = {}
        .end subannotation
    .end annotation

    and-int/lit8 p8, p1, 0x1f

    const/16 v0, 0x1f

    if-eq v0, p8, :cond_0

    .line 289
    sget-object p8, Lcom/kakao/sdk/share/model/ValidationResult$$serializer;->INSTANCE:Lcom/kakao/sdk/share/model/ValidationResult$$serializer;

    invoke-virtual {p8}, Lcom/kakao/sdk/share/model/ValidationResult$$serializer;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object p8

    invoke-static {p1, v0, p8}, Lkotlinx/serialization/internal/PluginExceptionsKt;->throwMissingFieldException(IILkotlinx/serialization/descriptors/SerialDescriptor;)V

    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p2, p0, Lcom/kakao/sdk/share/model/ValidationResult;->templateId:J

    iput-object p4, p0, Lcom/kakao/sdk/share/model/ValidationResult;->templateArgs:Lkotlinx/serialization/json/JsonObject;

    iput-object p5, p0, Lcom/kakao/sdk/share/model/ValidationResult;->templateMsg:Lkotlinx/serialization/json/JsonObject;

    iput-object p6, p0, Lcom/kakao/sdk/share/model/ValidationResult;->warningMsg:Lkotlinx/serialization/json/JsonObject;

    iput-object p7, p0, Lcom/kakao/sdk/share/model/ValidationResult;->argumentMsg:Lkotlinx/serialization/json/JsonObject;

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public constructor <init>(JLkotlinx/serialization/json/JsonObject;Lkotlinx/serialization/json/JsonObject;Lkotlinx/serialization/json/JsonObject;Lkotlinx/serialization/json/JsonObject;)V
    .locals 1

    const-string v0, "templateMsg"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 289
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 309
    iput-wide p1, p0, Lcom/kakao/sdk/share/model/ValidationResult;->templateId:J

    .line 319
    iput-object p3, p0, Lcom/kakao/sdk/share/model/ValidationResult;->templateArgs:Lkotlinx/serialization/json/JsonObject;

    .line 329
    iput-object p4, p0, Lcom/kakao/sdk/share/model/ValidationResult;->templateMsg:Lkotlinx/serialization/json/JsonObject;

    .line 339
    iput-object p5, p0, Lcom/kakao/sdk/share/model/ValidationResult;->warningMsg:Lkotlinx/serialization/json/JsonObject;

    .line 349
    iput-object p6, p0, Lcom/kakao/sdk/share/model/ValidationResult;->argumentMsg:Lkotlinx/serialization/json/JsonObject;

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public static synthetic copy$default(Lcom/kakao/sdk/share/model/ValidationResult;JLkotlinx/serialization/json/JsonObject;Lkotlinx/serialization/json/JsonObject;Lkotlinx/serialization/json/JsonObject;Lkotlinx/serialization/json/JsonObject;ILjava/lang/Object;)Lcom/kakao/sdk/share/model/ValidationResult;
    .locals 7

    and-int/lit8 p8, p7, 0x1

    if-eqz p8, :cond_0

    iget-wide p1, p0, Lcom/kakao/sdk/share/model/ValidationResult;->templateId:J

    :cond_0
    move-wide v1, p1

    and-int/lit8 p1, p7, 0x2

    if-eqz p1, :cond_1

    iget-object p3, p0, Lcom/kakao/sdk/share/model/ValidationResult;->templateArgs:Lkotlinx/serialization/json/JsonObject;

    :cond_1
    move-object v3, p3

    and-int/lit8 p1, p7, 0x4

    if-eqz p1, :cond_2

    iget-object p4, p0, Lcom/kakao/sdk/share/model/ValidationResult;->templateMsg:Lkotlinx/serialization/json/JsonObject;

    :cond_2
    move-object v4, p4

    and-int/lit8 p1, p7, 0x8

    if-eqz p1, :cond_3

    iget-object p5, p0, Lcom/kakao/sdk/share/model/ValidationResult;->warningMsg:Lkotlinx/serialization/json/JsonObject;

    :cond_3
    move-object v5, p5

    and-int/lit8 p1, p7, 0x10

    if-eqz p1, :cond_4

    iget-object p6, p0, Lcom/kakao/sdk/share/model/ValidationResult;->argumentMsg:Lkotlinx/serialization/json/JsonObject;

    :cond_4
    move-object v6, p6

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/kakao/sdk/share/model/ValidationResult;->copy(JLkotlinx/serialization/json/JsonObject;Lkotlinx/serialization/json/JsonObject;Lkotlinx/serialization/json/JsonObject;Lkotlinx/serialization/json/JsonObject;)Lcom/kakao/sdk/share/model/ValidationResult;

    move-result-object p0

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static synthetic getArgumentMsg$annotations()V
    .locals 0
    .annotation runtime Lkotlinx/serialization/SerialName;
        value = "argument_msg"
    .end annotation

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public static synthetic getTemplateArgs$annotations()V
    .locals 0
    .annotation runtime Lkotlinx/serialization/SerialName;
        value = "template_args"
    .end annotation

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public static synthetic getTemplateId$annotations()V
    .locals 0
    .annotation runtime Lkotlinx/serialization/SerialName;
        value = "template_id"
    .end annotation

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public static synthetic getTemplateMsg$annotations()V
    .locals 0
    .annotation runtime Lkotlinx/serialization/SerialName;
        value = "template_msg"
    .end annotation

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public static synthetic getWarningMsg$annotations()V
    .locals 0
    .annotation runtime Lkotlinx/serialization/SerialName;
        value = "warning_msg"
    .end annotation

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public static final write$Self(Lcom/kakao/sdk/share/model/ValidationResult;Lkotlinx/serialization/encoding/CompositeEncoder;Lkotlinx/serialization/descriptors/SerialDescriptor;)V
    .locals 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "self"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "output"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "serialDesc"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 289
    iget-wide v1, p0, Lcom/kakao/sdk/share/model/ValidationResult;->templateId:J

    invoke-interface {p1, p2, v0, v1, v2}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeLongElement(Lkotlinx/serialization/descriptors/SerialDescriptor;IJ)V

    sget-object v0, Lkotlinx/serialization/json/JsonObjectSerializer;->INSTANCE:Lkotlinx/serialization/json/JsonObjectSerializer;

    check-cast v0, Lkotlinx/serialization/SerializationStrategy;

    iget-object v1, p0, Lcom/kakao/sdk/share/model/ValidationResult;->templateArgs:Lkotlinx/serialization/json/JsonObject;

    const/4 v2, 0x1

    invoke-interface {p1, p2, v2, v0, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    sget-object v0, Lkotlinx/serialization/json/JsonObjectSerializer;->INSTANCE:Lkotlinx/serialization/json/JsonObjectSerializer;

    check-cast v0, Lkotlinx/serialization/SerializationStrategy;

    iget-object v1, p0, Lcom/kakao/sdk/share/model/ValidationResult;->templateMsg:Lkotlinx/serialization/json/JsonObject;

    const/4 v2, 0x2

    invoke-interface {p1, p2, v2, v0, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    sget-object v0, Lkotlinx/serialization/json/JsonObjectSerializer;->INSTANCE:Lkotlinx/serialization/json/JsonObjectSerializer;

    check-cast v0, Lkotlinx/serialization/SerializationStrategy;

    iget-object v1, p0, Lcom/kakao/sdk/share/model/ValidationResult;->warningMsg:Lkotlinx/serialization/json/JsonObject;

    const/4 v2, 0x3

    invoke-interface {p1, p2, v2, v0, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    sget-object v0, Lkotlinx/serialization/json/JsonObjectSerializer;->INSTANCE:Lkotlinx/serialization/json/JsonObjectSerializer;

    check-cast v0, Lkotlinx/serialization/SerializationStrategy;

    iget-object p0, p0, Lcom/kakao/sdk/share/model/ValidationResult;->argumentMsg:Lkotlinx/serialization/json/JsonObject;

    const/4 v1, 0x4

    invoke-interface {p1, p2, v1, v0, p0}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    return-void

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public final component1()J
    .locals 2

    iget-wide v0, p0, Lcom/kakao/sdk/share/model/ValidationResult;->templateId:J

    return-wide v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final component2()Lkotlinx/serialization/json/JsonObject;
    .locals 1

    iget-object v0, p0, Lcom/kakao/sdk/share/model/ValidationResult;->templateArgs:Lkotlinx/serialization/json/JsonObject;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final component3()Lkotlinx/serialization/json/JsonObject;
    .locals 1

    iget-object v0, p0, Lcom/kakao/sdk/share/model/ValidationResult;->templateMsg:Lkotlinx/serialization/json/JsonObject;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final component4()Lkotlinx/serialization/json/JsonObject;
    .locals 1

    iget-object v0, p0, Lcom/kakao/sdk/share/model/ValidationResult;->warningMsg:Lkotlinx/serialization/json/JsonObject;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final component5()Lkotlinx/serialization/json/JsonObject;
    .locals 1

    iget-object v0, p0, Lcom/kakao/sdk/share/model/ValidationResult;->argumentMsg:Lkotlinx/serialization/json/JsonObject;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final copy(JLkotlinx/serialization/json/JsonObject;Lkotlinx/serialization/json/JsonObject;Lkotlinx/serialization/json/JsonObject;Lkotlinx/serialization/json/JsonObject;)Lcom/kakao/sdk/share/model/ValidationResult;
    .locals 8

    const-string v0, "templateMsg"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/kakao/sdk/share/model/ValidationResult;

    move-object v1, v0

    move-wide v2, p1

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v1 .. v7}, Lcom/kakao/sdk/share/model/ValidationResult;-><init>(JLkotlinx/serialization/json/JsonObject;Lkotlinx/serialization/json/JsonObject;Lkotlinx/serialization/json/JsonObject;Lkotlinx/serialization/json/JsonObject;)V

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/kakao/sdk/share/model/ValidationResult;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/kakao/sdk/share/model/ValidationResult;

    iget-wide v3, p0, Lcom/kakao/sdk/share/model/ValidationResult;->templateId:J

    iget-wide v5, p1, Lcom/kakao/sdk/share/model/ValidationResult;->templateId:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/kakao/sdk/share/model/ValidationResult;->templateArgs:Lkotlinx/serialization/json/JsonObject;

    iget-object v3, p1, Lcom/kakao/sdk/share/model/ValidationResult;->templateArgs:Lkotlinx/serialization/json/JsonObject;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/kakao/sdk/share/model/ValidationResult;->templateMsg:Lkotlinx/serialization/json/JsonObject;

    iget-object v3, p1, Lcom/kakao/sdk/share/model/ValidationResult;->templateMsg:Lkotlinx/serialization/json/JsonObject;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/kakao/sdk/share/model/ValidationResult;->warningMsg:Lkotlinx/serialization/json/JsonObject;

    iget-object v3, p1, Lcom/kakao/sdk/share/model/ValidationResult;->warningMsg:Lkotlinx/serialization/json/JsonObject;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lcom/kakao/sdk/share/model/ValidationResult;->argumentMsg:Lkotlinx/serialization/json/JsonObject;

    iget-object p1, p1, Lcom/kakao/sdk/share/model/ValidationResult;->argumentMsg:Lkotlinx/serialization/json/JsonObject;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    return v2

    :cond_6
    return v0

    .array-data 1
    .end array-data
.end method

.method public final getArgumentMsg()Lkotlinx/serialization/json/JsonObject;
    .locals 1

    .line 349
    iget-object v0, p0, Lcom/kakao/sdk/share/model/ValidationResult;->argumentMsg:Lkotlinx/serialization/json/JsonObject;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final getTemplateArgs()Lkotlinx/serialization/json/JsonObject;
    .locals 1

    .line 319
    iget-object v0, p0, Lcom/kakao/sdk/share/model/ValidationResult;->templateArgs:Lkotlinx/serialization/json/JsonObject;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final getTemplateId()J
    .locals 2

    .line 309
    iget-wide v0, p0, Lcom/kakao/sdk/share/model/ValidationResult;->templateId:J

    return-wide v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final getTemplateMsg()Lkotlinx/serialization/json/JsonObject;
    .locals 1

    .line 329
    iget-object v0, p0, Lcom/kakao/sdk/share/model/ValidationResult;->templateMsg:Lkotlinx/serialization/json/JsonObject;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final getWarningMsg()Lkotlinx/serialization/json/JsonObject;
    .locals 1

    .line 339
    iget-object v0, p0, Lcom/kakao/sdk/share/model/ValidationResult;->warningMsg:Lkotlinx/serialization/json/JsonObject;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public hashCode()I
    .locals 3

    iget-wide v0, p0, Lcom/kakao/sdk/share/model/ValidationResult;->templateId:J

    invoke-static {v0, v1}, Ljava/lang/Long;->hashCode(J)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/kakao/sdk/share/model/ValidationResult;->templateArgs:Lkotlinx/serialization/json/JsonObject;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lkotlinx/serialization/json/JsonObject;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/kakao/sdk/share/model/ValidationResult;->templateMsg:Lkotlinx/serialization/json/JsonObject;

    invoke-virtual {v1}, Lkotlinx/serialization/json/JsonObject;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/kakao/sdk/share/model/ValidationResult;->warningMsg:Lkotlinx/serialization/json/JsonObject;

    if-nez v1, :cond_1

    move v1, v2

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Lkotlinx/serialization/json/JsonObject;->hashCode()I

    move-result v1

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/kakao/sdk/share/model/ValidationResult;->argumentMsg:Lkotlinx/serialization/json/JsonObject;

    if-nez v1, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {v1}, Lkotlinx/serialization/json/JsonObject;->hashCode()I

    move-result v2

    :goto_2
    add-int/2addr v0, v2

    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public toString()Ljava/lang/String;
    .locals 8

    iget-wide v0, p0, Lcom/kakao/sdk/share/model/ValidationResult;->templateId:J

    iget-object v2, p0, Lcom/kakao/sdk/share/model/ValidationResult;->templateArgs:Lkotlinx/serialization/json/JsonObject;

    iget-object v3, p0, Lcom/kakao/sdk/share/model/ValidationResult;->templateMsg:Lkotlinx/serialization/json/JsonObject;

    iget-object v4, p0, Lcom/kakao/sdk/share/model/ValidationResult;->warningMsg:Lkotlinx/serialization/json/JsonObject;

    iget-object v5, p0, Lcom/kakao/sdk/share/model/ValidationResult;->argumentMsg:Lkotlinx/serialization/json/JsonObject;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "ValidationResult(templateId="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", templateArgs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", templateMsg="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", warningMsg="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", argumentMsg="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .array-data 1
    .end array-data
.end method
