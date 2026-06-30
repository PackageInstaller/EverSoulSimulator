.class public final Lcom/kakao/sdk/user/model/ServiceTerms;
.super Ljava/lang/Object;
.source "UserServiceTerms.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kakao/sdk/user/model/ServiceTerms$Referer;,
        Lcom/kakao/sdk/user/model/ServiceTerms$RefererSerializer;,
        Lcom/kakao/sdk/user/model/ServiceTerms$$serializer;,
        Lcom/kakao/sdk/user/model/ServiceTerms$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000H\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u001b\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0087\u0008\u0018\u0000 22\u00020\u0001:\u00041234BS\u0008\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\u0008\u001a\u00020\u0007\u0012\u0006\u0010\t\u001a\u00020\u0007\u0012\n\u0008\u0001\u0010\n\u001a\u0004\u0018\u00010\u000b\u0012\n\u0008\u0001\u0010\u000c\u001a\u0004\u0018\u00010\r\u0012\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u000f\u00a2\u0006\u0002\u0010\u0010B9\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\u0008\u001a\u00020\u0007\u0012\u0006\u0010\t\u001a\u00020\u0007\u0012\u0008\u0010\n\u001a\u0004\u0018\u00010\u000b\u0012\u0008\u0010\u000c\u001a\u0004\u0018\u00010\r\u00a2\u0006\u0002\u0010\u0011J\t\u0010\u001f\u001a\u00020\u0005H\u00c6\u0003J\t\u0010 \u001a\u00020\u0007H\u00c6\u0003J\t\u0010!\u001a\u00020\u0007H\u00c6\u0003J\t\u0010\"\u001a\u00020\u0007H\u00c6\u0003J\u000b\u0010#\u001a\u0004\u0018\u00010\u000bH\u00c6\u0003J\u000b\u0010$\u001a\u0004\u0018\u00010\rH\u00c6\u0003JI\u0010%\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00072\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u00072\u0008\u0008\u0002\u0010\t\u001a\u00020\u00072\n\u0008\u0002\u0010\n\u001a\u0004\u0018\u00010\u000b2\n\u0008\u0002\u0010\u000c\u001a\u0004\u0018\u00010\rH\u00c6\u0001J\u0013\u0010&\u001a\u00020\u00072\u0008\u0010\'\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010(\u001a\u00020\u0003H\u00d6\u0001J\t\u0010)\u001a\u00020\u0005H\u00d6\u0001J!\u0010*\u001a\u00020+2\u0006\u0010,\u001a\u00020\u00002\u0006\u0010-\u001a\u00020.2\u0006\u0010/\u001a\u000200H\u00c7\u0001R\u0011\u0010\u0008\u001a\u00020\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0012\u0010\u0013R\u001e\u0010\n\u001a\u0004\u0018\u00010\u000b8\u0006X\u0087\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008\u0014\u0010\u0015\u001a\u0004\u0008\u0016\u0010\u0017R\u001e\u0010\u000c\u001a\u0004\u0018\u00010\r8\u0006X\u0087\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008\u0018\u0010\u0015\u001a\u0004\u0008\u0019\u0010\u001aR\u0011\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001b\u0010\u0013R\u0011\u0010\t\u001a\u00020\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001c\u0010\u0013R\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001d\u0010\u001e\u00a8\u00065"
    }
    d2 = {
        "Lcom/kakao/sdk/user/model/ServiceTerms;",
        "",
        "seen1",
        "",
        "tag",
        "",
        "required",
        "",
        "agreed",
        "revocable",
        "agreedAt",
        "Ljava/util/Date;",
        "referer",
        "Lcom/kakao/sdk/user/model/ServiceTerms$Referer;",
        "serializationConstructorMarker",
        "Lkotlinx/serialization/internal/SerializationConstructorMarker;",
        "(ILjava/lang/String;ZZZLjava/util/Date;Lcom/kakao/sdk/user/model/ServiceTerms$Referer;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V",
        "(Ljava/lang/String;ZZZLjava/util/Date;Lcom/kakao/sdk/user/model/ServiceTerms$Referer;)V",
        "getAgreed",
        "()Z",
        "getAgreedAt$annotations",
        "()V",
        "getAgreedAt",
        "()Ljava/util/Date;",
        "getReferer$annotations",
        "getReferer",
        "()Lcom/kakao/sdk/user/model/ServiceTerms$Referer;",
        "getRequired",
        "getRevocable",
        "getTag",
        "()Ljava/lang/String;",
        "component1",
        "component2",
        "component3",
        "component4",
        "component5",
        "component6",
        "copy",
        "equals",
        "other",
        "hashCode",
        "toString",
        "write$Self",
        "",
        "self",
        "output",
        "Lkotlinx/serialization/encoding/CompositeEncoder;",
        "serialDesc",
        "Lkotlinx/serialization/descriptors/SerialDescriptor;",
        "$serializer",
        "Companion",
        "Referer",
        "RefererSerializer",
        "user_release"
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
.field public static final Companion:Lcom/kakao/sdk/user/model/ServiceTerms$Companion;


# instance fields
.field private final agreed:Z

.field private final agreedAt:Ljava/util/Date;

.field private final referer:Lcom/kakao/sdk/user/model/ServiceTerms$Referer;

.field private final required:Z

.field private final revocable:Z

.field private final tag:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/kakao/sdk/user/model/ServiceTerms$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/kakao/sdk/user/model/ServiceTerms$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/kakao/sdk/user/model/ServiceTerms;->Companion:Lcom/kakao/sdk/user/model/ServiceTerms$Companion;

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public synthetic constructor <init>(ILjava/lang/String;ZZZLjava/util/Date;Lcom/kakao/sdk/user/model/ServiceTerms$Referer;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V
    .locals 1
    .param p6    # Ljava/util/Date;
        .annotation runtime Lkotlinx/serialization/SerialName;
            value = "agreed_at"
        .end annotation
    .end param
    .param p7    # Lcom/kakao/sdk/user/model/ServiceTerms$Referer;
        .annotation runtime Lkotlinx/serialization/SerialName;
            value = "agreed_by"
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

    and-int/lit8 p8, p1, 0x3f

    const/16 v0, 0x3f

    if-eq v0, p8, :cond_0

    .line 489
    sget-object p8, Lcom/kakao/sdk/user/model/ServiceTerms$$serializer;->INSTANCE:Lcom/kakao/sdk/user/model/ServiceTerms$$serializer;

    invoke-virtual {p8}, Lcom/kakao/sdk/user/model/ServiceTerms$$serializer;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object p8

    invoke-static {p1, v0, p8}, Lkotlinx/serialization/internal/PluginExceptionsKt;->throwMissingFieldException(IILkotlinx/serialization/descriptors/SerialDescriptor;)V

    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/kakao/sdk/user/model/ServiceTerms;->tag:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/kakao/sdk/user/model/ServiceTerms;->required:Z

    iput-boolean p4, p0, Lcom/kakao/sdk/user/model/ServiceTerms;->agreed:Z

    iput-boolean p5, p0, Lcom/kakao/sdk/user/model/ServiceTerms;->revocable:Z

    iput-object p6, p0, Lcom/kakao/sdk/user/model/ServiceTerms;->agreedAt:Ljava/util/Date;

    iput-object p7, p0, Lcom/kakao/sdk/user/model/ServiceTerms;->referer:Lcom/kakao/sdk/user/model/ServiceTerms$Referer;

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public constructor <init>(Ljava/lang/String;ZZZLjava/util/Date;Lcom/kakao/sdk/user/model/ServiceTerms$Referer;)V
    .locals 1

    const-string v0, "tag"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 489
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 509
    iput-object p1, p0, Lcom/kakao/sdk/user/model/ServiceTerms;->tag:Ljava/lang/String;

    .line 519
    iput-boolean p2, p0, Lcom/kakao/sdk/user/model/ServiceTerms;->required:Z

    .line 529
    iput-boolean p3, p0, Lcom/kakao/sdk/user/model/ServiceTerms;->agreed:Z

    .line 539
    iput-boolean p4, p0, Lcom/kakao/sdk/user/model/ServiceTerms;->revocable:Z

    .line 549
    iput-object p5, p0, Lcom/kakao/sdk/user/model/ServiceTerms;->agreedAt:Ljava/util/Date;

    .line 559
    iput-object p6, p0, Lcom/kakao/sdk/user/model/ServiceTerms;->referer:Lcom/kakao/sdk/user/model/ServiceTerms$Referer;

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public static synthetic copy$default(Lcom/kakao/sdk/user/model/ServiceTerms;Ljava/lang/String;ZZZLjava/util/Date;Lcom/kakao/sdk/user/model/ServiceTerms$Referer;ILjava/lang/Object;)Lcom/kakao/sdk/user/model/ServiceTerms;
    .locals 4

    and-int/lit8 p8, p7, 0x1

    if-eqz p8, :cond_0

    iget-object p1, p0, Lcom/kakao/sdk/user/model/ServiceTerms;->tag:Ljava/lang/String;

    :cond_0
    and-int/lit8 p8, p7, 0x2

    if-eqz p8, :cond_1

    iget-boolean p2, p0, Lcom/kakao/sdk/user/model/ServiceTerms;->required:Z

    :cond_1
    move p8, p2

    and-int/lit8 p2, p7, 0x4

    if-eqz p2, :cond_2

    iget-boolean p3, p0, Lcom/kakao/sdk/user/model/ServiceTerms;->agreed:Z

    :cond_2
    move v0, p3

    and-int/lit8 p2, p7, 0x8

    if-eqz p2, :cond_3

    iget-boolean p4, p0, Lcom/kakao/sdk/user/model/ServiceTerms;->revocable:Z

    :cond_3
    move v1, p4

    and-int/lit8 p2, p7, 0x10

    if-eqz p2, :cond_4

    iget-object p5, p0, Lcom/kakao/sdk/user/model/ServiceTerms;->agreedAt:Ljava/util/Date;

    :cond_4
    move-object v2, p5

    and-int/lit8 p2, p7, 0x20

    if-eqz p2, :cond_5

    iget-object p6, p0, Lcom/kakao/sdk/user/model/ServiceTerms;->referer:Lcom/kakao/sdk/user/model/ServiceTerms$Referer;

    :cond_5
    move-object v3, p6

    move-object p2, p0

    move-object p3, p1

    move p4, p8

    move p5, v0

    move p6, v1

    move-object p7, v2

    move-object p8, v3

    invoke-virtual/range {p2 .. p8}, Lcom/kakao/sdk/user/model/ServiceTerms;->copy(Ljava/lang/String;ZZZLjava/util/Date;Lcom/kakao/sdk/user/model/ServiceTerms$Referer;)Lcom/kakao/sdk/user/model/ServiceTerms;

    move-result-object p0

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static synthetic getAgreedAt$annotations()V
    .locals 0
    .annotation runtime Lkotlinx/serialization/SerialName;
        value = "agreed_at"
    .end annotation

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public static synthetic getReferer$annotations()V
    .locals 0
    .annotation runtime Lkotlinx/serialization/SerialName;
        value = "agreed_by"
    .end annotation

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public static final write$Self(Lcom/kakao/sdk/user/model/ServiceTerms;Lkotlinx/serialization/encoding/CompositeEncoder;Lkotlinx/serialization/descriptors/SerialDescriptor;)V
    .locals 4
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "self"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "output"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "serialDesc"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 489
    iget-object v0, p0, Lcom/kakao/sdk/user/model/ServiceTerms;->tag:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-interface {p1, p2, v1, v0}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeStringElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILjava/lang/String;)V

    const/4 v0, 0x1

    iget-boolean v2, p0, Lcom/kakao/sdk/user/model/ServiceTerms;->required:Z

    invoke-interface {p1, p2, v0, v2}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeBooleanElement(Lkotlinx/serialization/descriptors/SerialDescriptor;IZ)V

    const/4 v0, 0x2

    iget-boolean v2, p0, Lcom/kakao/sdk/user/model/ServiceTerms;->agreed:Z

    invoke-interface {p1, p2, v0, v2}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeBooleanElement(Lkotlinx/serialization/descriptors/SerialDescriptor;IZ)V

    const/4 v0, 0x3

    iget-boolean v2, p0, Lcom/kakao/sdk/user/model/ServiceTerms;->revocable:Z

    invoke-interface {p1, p2, v0, v2}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeBooleanElement(Lkotlinx/serialization/descriptors/SerialDescriptor;IZ)V

    new-instance v0, Lkotlinx/serialization/ContextualSerializer;

    const-class v2, Ljava/util/Date;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const/4 v3, 0x0

    new-array v1, v1, [Lkotlinx/serialization/KSerializer;

    invoke-direct {v0, v2, v3, v1}, Lkotlinx/serialization/ContextualSerializer;-><init>(Lkotlin/reflect/KClass;Lkotlinx/serialization/KSerializer;[Lkotlinx/serialization/KSerializer;)V

    check-cast v0, Lkotlinx/serialization/SerializationStrategy;

    iget-object v1, p0, Lcom/kakao/sdk/user/model/ServiceTerms;->agreedAt:Ljava/util/Date;

    const/4 v2, 0x4

    invoke-interface {p1, p2, v2, v0, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    sget-object v0, Lcom/kakao/sdk/user/model/ServiceTerms$RefererSerializer;->INSTANCE:Lcom/kakao/sdk/user/model/ServiceTerms$RefererSerializer;

    check-cast v0, Lkotlinx/serialization/SerializationStrategy;

    iget-object p0, p0, Lcom/kakao/sdk/user/model/ServiceTerms;->referer:Lcom/kakao/sdk/user/model/ServiceTerms$Referer;

    const/4 v1, 0x5

    invoke-interface {p1, p2, v1, v0, p0}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    return-void

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/kakao/sdk/user/model/ServiceTerms;->tag:Ljava/lang/String;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final component2()Z
    .locals 1

    iget-boolean v0, p0, Lcom/kakao/sdk/user/model/ServiceTerms;->required:Z

    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final component3()Z
    .locals 1

    iget-boolean v0, p0, Lcom/kakao/sdk/user/model/ServiceTerms;->agreed:Z

    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final component4()Z
    .locals 1

    iget-boolean v0, p0, Lcom/kakao/sdk/user/model/ServiceTerms;->revocable:Z

    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final component5()Ljava/util/Date;
    .locals 1

    iget-object v0, p0, Lcom/kakao/sdk/user/model/ServiceTerms;->agreedAt:Ljava/util/Date;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final component6()Lcom/kakao/sdk/user/model/ServiceTerms$Referer;
    .locals 1

    iget-object v0, p0, Lcom/kakao/sdk/user/model/ServiceTerms;->referer:Lcom/kakao/sdk/user/model/ServiceTerms$Referer;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final copy(Ljava/lang/String;ZZZLjava/util/Date;Lcom/kakao/sdk/user/model/ServiceTerms$Referer;)Lcom/kakao/sdk/user/model/ServiceTerms;
    .locals 8

    const-string v0, "tag"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/kakao/sdk/user/model/ServiceTerms;

    move-object v1, v0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v1 .. v7}, Lcom/kakao/sdk/user/model/ServiceTerms;-><init>(Ljava/lang/String;ZZZLjava/util/Date;Lcom/kakao/sdk/user/model/ServiceTerms$Referer;)V

    return-object v0

    .array-data 1
    .end array-data
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/kakao/sdk/user/model/ServiceTerms;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/kakao/sdk/user/model/ServiceTerms;

    iget-object v1, p0, Lcom/kakao/sdk/user/model/ServiceTerms;->tag:Ljava/lang/String;

    iget-object v3, p1, Lcom/kakao/sdk/user/model/ServiceTerms;->tag:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-boolean v1, p0, Lcom/kakao/sdk/user/model/ServiceTerms;->required:Z

    iget-boolean v3, p1, Lcom/kakao/sdk/user/model/ServiceTerms;->required:Z

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget-boolean v1, p0, Lcom/kakao/sdk/user/model/ServiceTerms;->agreed:Z

    iget-boolean v3, p1, Lcom/kakao/sdk/user/model/ServiceTerms;->agreed:Z

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    iget-boolean v1, p0, Lcom/kakao/sdk/user/model/ServiceTerms;->revocable:Z

    iget-boolean v3, p1, Lcom/kakao/sdk/user/model/ServiceTerms;->revocable:Z

    if-eq v1, v3, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lcom/kakao/sdk/user/model/ServiceTerms;->agreedAt:Ljava/util/Date;

    iget-object v3, p1, Lcom/kakao/sdk/user/model/ServiceTerms;->agreedAt:Ljava/util/Date;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget-object v1, p0, Lcom/kakao/sdk/user/model/ServiceTerms;->referer:Lcom/kakao/sdk/user/model/ServiceTerms$Referer;

    iget-object p1, p1, Lcom/kakao/sdk/user/model/ServiceTerms;->referer:Lcom/kakao/sdk/user/model/ServiceTerms$Referer;

    if-eq v1, p1, :cond_7

    return v2

    :cond_7
    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final getAgreed()Z
    .locals 1

    .line 529
    iget-boolean v0, p0, Lcom/kakao/sdk/user/model/ServiceTerms;->agreed:Z

    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final getAgreedAt()Ljava/util/Date;
    .locals 1

    .line 549
    iget-object v0, p0, Lcom/kakao/sdk/user/model/ServiceTerms;->agreedAt:Ljava/util/Date;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final getReferer()Lcom/kakao/sdk/user/model/ServiceTerms$Referer;
    .locals 1

    .line 559
    iget-object v0, p0, Lcom/kakao/sdk/user/model/ServiceTerms;->referer:Lcom/kakao/sdk/user/model/ServiceTerms$Referer;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final getRequired()Z
    .locals 1

    .line 519
    iget-boolean v0, p0, Lcom/kakao/sdk/user/model/ServiceTerms;->required:Z

    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final getRevocable()Z
    .locals 1

    .line 539
    iget-boolean v0, p0, Lcom/kakao/sdk/user/model/ServiceTerms;->revocable:Z

    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final getTag()Ljava/lang/String;
    .locals 1

    .line 509
    iget-object v0, p0, Lcom/kakao/sdk/user/model/ServiceTerms;->tag:Ljava/lang/String;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/kakao/sdk/user/model/ServiceTerms;->tag:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/kakao/sdk/user/model/ServiceTerms;->required:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    move v1, v2

    :cond_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/kakao/sdk/user/model/ServiceTerms;->agreed:Z

    if-eqz v1, :cond_1

    move v1, v2

    :cond_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/kakao/sdk/user/model/ServiceTerms;->revocable:Z

    if-eqz v1, :cond_2

    goto :goto_0

    :cond_2
    move v2, v1

    :goto_0
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/kakao/sdk/user/model/ServiceTerms;->agreedAt:Ljava/util/Date;

    const/4 v2, 0x0

    if-nez v1, :cond_3

    move v1, v2

    goto :goto_1

    :cond_3
    invoke-virtual {v1}, Ljava/util/Date;->hashCode()I

    move-result v1

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/kakao/sdk/user/model/ServiceTerms;->referer:Lcom/kakao/sdk/user/model/ServiceTerms$Referer;

    if-nez v1, :cond_4

    goto :goto_2

    :cond_4
    invoke-virtual {v1}, Lcom/kakao/sdk/user/model/ServiceTerms$Referer;->hashCode()I

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

    iget-object v0, p0, Lcom/kakao/sdk/user/model/ServiceTerms;->tag:Ljava/lang/String;

    iget-boolean v1, p0, Lcom/kakao/sdk/user/model/ServiceTerms;->required:Z

    iget-boolean v2, p0, Lcom/kakao/sdk/user/model/ServiceTerms;->agreed:Z

    iget-boolean v3, p0, Lcom/kakao/sdk/user/model/ServiceTerms;->revocable:Z

    iget-object v4, p0, Lcom/kakao/sdk/user/model/ServiceTerms;->agreedAt:Ljava/util/Date;

    iget-object v5, p0, Lcom/kakao/sdk/user/model/ServiceTerms;->referer:Lcom/kakao/sdk/user/model/ServiceTerms$Referer;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "ServiceTerms(tag="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, ", required="

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", agreed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", revocable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", agreedAt="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", referer="

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
