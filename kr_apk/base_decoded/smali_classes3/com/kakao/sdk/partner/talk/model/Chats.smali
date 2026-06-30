.class public final Lcom/kakao/sdk/partner/talk/model/Chats;
.super Ljava/lang/Object;
.source "Chats.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kakao/sdk/partner/talk/model/Chats$$serializer;,
        Lcom/kakao/sdk/partner/talk/model/Chats$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000J\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0013\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0087\u0008\u0018\u0000 ,2\u00020\u0001:\u0002+,BK\u0008\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0008\u0001\u0010\u0004\u001a\u00020\u0003\u0012\u000e\u0010\u0005\u001a\n\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u0006\u0012\n\u0008\u0001\u0010\u0008\u001a\u0004\u0018\u00010\t\u0012\n\u0008\u0001\u0010\n\u001a\u0004\u0018\u00010\t\u0012\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u000c\u00a2\u0006\u0002\u0010\rB1\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u000e\u0010\u0005\u001a\n\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u0006\u0012\u0008\u0010\u0008\u001a\u0004\u0018\u00010\t\u0012\u0008\u0010\n\u001a\u0004\u0018\u00010\t\u00a2\u0006\u0002\u0010\u000eJ\t\u0010\u001a\u001a\u00020\u0003H\u00c6\u0003J\u0011\u0010\u001b\u001a\n\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u0006H\u00c6\u0003J\u000b\u0010\u001c\u001a\u0004\u0018\u00010\tH\u00c6\u0003J\u000b\u0010\u001d\u001a\u0004\u0018\u00010\tH\u00c6\u0003J=\u0010\u001e\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00032\u0010\u0008\u0002\u0010\u0005\u001a\n\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u00062\n\u0008\u0002\u0010\u0008\u001a\u0004\u0018\u00010\t2\n\u0008\u0002\u0010\n\u001a\u0004\u0018\u00010\tH\u00c6\u0001J\u0013\u0010\u001f\u001a\u00020 2\u0008\u0010!\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\"\u001a\u00020\u0003H\u00d6\u0001J\t\u0010#\u001a\u00020\tH\u00d6\u0001J!\u0010$\u001a\u00020%2\u0006\u0010&\u001a\u00020\u00002\u0006\u0010\'\u001a\u00020(2\u0006\u0010)\u001a\u00020*H\u00c7\u0001R\u001e\u0010\n\u001a\u0004\u0018\u00010\t8\u0006X\u0087\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008\u000f\u0010\u0010\u001a\u0004\u0008\u0011\u0010\u0012R\u001e\u0010\u0008\u001a\u0004\u0018\u00010\t8\u0006X\u0087\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008\u0013\u0010\u0010\u001a\u0004\u0008\u0014\u0010\u0012R\u0019\u0010\u0005\u001a\n\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0015\u0010\u0016R\u001c\u0010\u0004\u001a\u00020\u00038\u0006X\u0087\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008\u0017\u0010\u0010\u001a\u0004\u0008\u0018\u0010\u0019\u00a8\u0006-"
    }
    d2 = {
        "Lcom/kakao/sdk/partner/talk/model/Chats;",
        "",
        "seen1",
        "",
        "totalCount",
        "elements",
        "",
        "Lcom/kakao/sdk/partner/talk/model/Chat;",
        "beforeUrl",
        "",
        "afterUrl",
        "serializationConstructorMarker",
        "Lkotlinx/serialization/internal/SerializationConstructorMarker;",
        "(IILjava/util/List;Ljava/lang/String;Ljava/lang/String;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V",
        "(ILjava/util/List;Ljava/lang/String;Ljava/lang/String;)V",
        "getAfterUrl$annotations",
        "()V",
        "getAfterUrl",
        "()Ljava/lang/String;",
        "getBeforeUrl$annotations",
        "getBeforeUrl",
        "getElements",
        "()Ljava/util/List;",
        "getTotalCount$annotations",
        "getTotalCount",
        "()I",
        "component1",
        "component2",
        "component3",
        "component4",
        "copy",
        "equals",
        "",
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
        "partner-talk_release"
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
.field public static final Companion:Lcom/kakao/sdk/partner/talk/model/Chats$Companion;


# instance fields
.field private final afterUrl:Ljava/lang/String;

.field private final beforeUrl:Ljava/lang/String;

.field private final elements:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/kakao/sdk/partner/talk/model/Chat;",
            ">;"
        }
    .end annotation
.end field

.field private final totalCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/kakao/sdk/partner/talk/model/Chats$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/kakao/sdk/partner/talk/model/Chats$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/kakao/sdk/partner/talk/model/Chats;->Companion:Lcom/kakao/sdk/partner/talk/model/Chats$Companion;

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public synthetic constructor <init>(IILjava/util/List;Ljava/lang/String;Ljava/lang/String;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V
    .locals 1
    .param p2    # I
        .annotation runtime Lkotlinx/serialization/SerialName;
            value = "total_count"
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation runtime Lkotlinx/serialization/SerialName;
            value = "before_url"
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation runtime Lkotlinx/serialization/SerialName;
            value = "after_url"
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

    and-int/lit8 p6, p1, 0xf

    const/16 v0, 0xf

    if-eq v0, p6, :cond_0

    .line 329
    sget-object p6, Lcom/kakao/sdk/partner/talk/model/Chats$$serializer;->INSTANCE:Lcom/kakao/sdk/partner/talk/model/Chats$$serializer;

    invoke-virtual {p6}, Lcom/kakao/sdk/partner/talk/model/Chats$$serializer;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object p6

    invoke-static {p1, v0, p6}, Lkotlinx/serialization/internal/PluginExceptionsKt;->throwMissingFieldException(IILkotlinx/serialization/descriptors/SerialDescriptor;)V

    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/kakao/sdk/partner/talk/model/Chats;->totalCount:I

    iput-object p3, p0, Lcom/kakao/sdk/partner/talk/model/Chats;->elements:Ljava/util/List;

    iput-object p4, p0, Lcom/kakao/sdk/partner/talk/model/Chats;->beforeUrl:Ljava/lang/String;

    iput-object p5, p0, Lcom/kakao/sdk/partner/talk/model/Chats;->afterUrl:Ljava/lang/String;

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public constructor <init>(ILjava/util/List;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/kakao/sdk/partner/talk/model/Chat;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 329
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 349
    iput p1, p0, Lcom/kakao/sdk/partner/talk/model/Chats;->totalCount:I

    .line 359
    iput-object p2, p0, Lcom/kakao/sdk/partner/talk/model/Chats;->elements:Ljava/util/List;

    .line 369
    iput-object p3, p0, Lcom/kakao/sdk/partner/talk/model/Chats;->beforeUrl:Ljava/lang/String;

    .line 379
    iput-object p4, p0, Lcom/kakao/sdk/partner/talk/model/Chats;->afterUrl:Ljava/lang/String;

    return-void

    .array-data 1
    .end array-data
.end method

.method public static synthetic copy$default(Lcom/kakao/sdk/partner/talk/model/Chats;ILjava/util/List;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lcom/kakao/sdk/partner/talk/model/Chats;
    .locals 0

    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_0

    iget p1, p0, Lcom/kakao/sdk/partner/talk/model/Chats;->totalCount:I

    :cond_0
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_1

    iget-object p2, p0, Lcom/kakao/sdk/partner/talk/model/Chats;->elements:Ljava/util/List;

    :cond_1
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_2

    iget-object p3, p0, Lcom/kakao/sdk/partner/talk/model/Chats;->beforeUrl:Ljava/lang/String;

    :cond_2
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_3

    iget-object p4, p0, Lcom/kakao/sdk/partner/talk/model/Chats;->afterUrl:Ljava/lang/String;

    :cond_3
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/kakao/sdk/partner/talk/model/Chats;->copy(ILjava/util/List;Ljava/lang/String;Ljava/lang/String;)Lcom/kakao/sdk/partner/talk/model/Chats;

    move-result-object p0

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static synthetic getAfterUrl$annotations()V
    .locals 0
    .annotation runtime Lkotlinx/serialization/SerialName;
        value = "after_url"
    .end annotation

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public static synthetic getBeforeUrl$annotations()V
    .locals 0
    .annotation runtime Lkotlinx/serialization/SerialName;
        value = "before_url"
    .end annotation

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public static synthetic getTotalCount$annotations()V
    .locals 0
    .annotation runtime Lkotlinx/serialization/SerialName;
        value = "total_count"
    .end annotation

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public static final write$Self(Lcom/kakao/sdk/partner/talk/model/Chats;Lkotlinx/serialization/encoding/CompositeEncoder;Lkotlinx/serialization/descriptors/SerialDescriptor;)V
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

    .line 329
    iget v1, p0, Lcom/kakao/sdk/partner/talk/model/Chats;->totalCount:I

    invoke-interface {p1, p2, v0, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeIntElement(Lkotlinx/serialization/descriptors/SerialDescriptor;II)V

    new-instance v0, Lkotlinx/serialization/internal/ArrayListSerializer;

    sget-object v1, Lcom/kakao/sdk/partner/talk/model/Chat$$serializer;->INSTANCE:Lcom/kakao/sdk/partner/talk/model/Chat$$serializer;

    check-cast v1, Lkotlinx/serialization/KSerializer;

    invoke-direct {v0, v1}, Lkotlinx/serialization/internal/ArrayListSerializer;-><init>(Lkotlinx/serialization/KSerializer;)V

    check-cast v0, Lkotlinx/serialization/SerializationStrategy;

    iget-object v1, p0, Lcom/kakao/sdk/partner/talk/model/Chats;->elements:Ljava/util/List;

    const/4 v2, 0x1

    invoke-interface {p1, p2, v2, v0, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    sget-object v0, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    check-cast v0, Lkotlinx/serialization/SerializationStrategy;

    iget-object v1, p0, Lcom/kakao/sdk/partner/talk/model/Chats;->beforeUrl:Ljava/lang/String;

    const/4 v2, 0x2

    invoke-interface {p1, p2, v2, v0, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    sget-object v0, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    check-cast v0, Lkotlinx/serialization/SerializationStrategy;

    iget-object p0, p0, Lcom/kakao/sdk/partner/talk/model/Chats;->afterUrl:Ljava/lang/String;

    const/4 v1, 0x3

    invoke-interface {p1, p2, v1, v0, p0}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    return-void

    nop

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public final component1()I
    .locals 1

    iget v0, p0, Lcom/kakao/sdk/partner/talk/model/Chats;->totalCount:I

    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final component2()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/kakao/sdk/partner/talk/model/Chat;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/kakao/sdk/partner/talk/model/Chats;->elements:Ljava/util/List;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final component3()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/kakao/sdk/partner/talk/model/Chats;->beforeUrl:Ljava/lang/String;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final component4()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/kakao/sdk/partner/talk/model/Chats;->afterUrl:Ljava/lang/String;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final copy(ILjava/util/List;Ljava/lang/String;Ljava/lang/String;)Lcom/kakao/sdk/partner/talk/model/Chats;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/kakao/sdk/partner/talk/model/Chat;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/kakao/sdk/partner/talk/model/Chats;"
        }
    .end annotation

    new-instance v0, Lcom/kakao/sdk/partner/talk/model/Chats;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/kakao/sdk/partner/talk/model/Chats;-><init>(ILjava/util/List;Ljava/lang/String;Ljava/lang/String;)V

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
    instance-of v1, p1, Lcom/kakao/sdk/partner/talk/model/Chats;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/kakao/sdk/partner/talk/model/Chats;

    iget v1, p0, Lcom/kakao/sdk/partner/talk/model/Chats;->totalCount:I

    iget v3, p1, Lcom/kakao/sdk/partner/talk/model/Chats;->totalCount:I

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/kakao/sdk/partner/talk/model/Chats;->elements:Ljava/util/List;

    iget-object v3, p1, Lcom/kakao/sdk/partner/talk/model/Chats;->elements:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/kakao/sdk/partner/talk/model/Chats;->beforeUrl:Ljava/lang/String;

    iget-object v3, p1, Lcom/kakao/sdk/partner/talk/model/Chats;->beforeUrl:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/kakao/sdk/partner/talk/model/Chats;->afterUrl:Ljava/lang/String;

    iget-object p1, p1, Lcom/kakao/sdk/partner/talk/model/Chats;->afterUrl:Ljava/lang/String;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    return v2

    :cond_5
    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final getAfterUrl()Ljava/lang/String;
    .locals 1

    .line 379
    iget-object v0, p0, Lcom/kakao/sdk/partner/talk/model/Chats;->afterUrl:Ljava/lang/String;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final getBeforeUrl()Ljava/lang/String;
    .locals 1

    .line 369
    iget-object v0, p0, Lcom/kakao/sdk/partner/talk/model/Chats;->beforeUrl:Ljava/lang/String;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final getElements()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/kakao/sdk/partner/talk/model/Chat;",
            ">;"
        }
    .end annotation

    .line 359
    iget-object v0, p0, Lcom/kakao/sdk/partner/talk/model/Chats;->elements:Ljava/util/List;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final getTotalCount()I
    .locals 1

    .line 349
    iget v0, p0, Lcom/kakao/sdk/partner/talk/model/Chats;->totalCount:I

    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public hashCode()I
    .locals 3

    iget v0, p0, Lcom/kakao/sdk/partner/talk/model/Chats;->totalCount:I

    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/kakao/sdk/partner/talk/model/Chats;->elements:Ljava/util/List;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/kakao/sdk/partner/talk/model/Chats;->beforeUrl:Ljava/lang/String;

    if-nez v1, :cond_1

    move v1, v2

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/kakao/sdk/partner/talk/model/Chats;->afterUrl:Ljava/lang/String;

    if-nez v1, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_2
    add-int/2addr v0, v2

    return v0

    .array-data 1
    .end array-data
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    iget v0, p0, Lcom/kakao/sdk/partner/talk/model/Chats;->totalCount:I

    iget-object v1, p0, Lcom/kakao/sdk/partner/talk/model/Chats;->elements:Ljava/util/List;

    iget-object v2, p0, Lcom/kakao/sdk/partner/talk/model/Chats;->beforeUrl:Ljava/lang/String;

    iget-object v3, p0, Lcom/kakao/sdk/partner/talk/model/Chats;->afterUrl:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Chats(totalCount="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ", elements="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", beforeUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", afterUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

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
