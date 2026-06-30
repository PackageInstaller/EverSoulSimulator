.class public final Lcom/kakao/sdk/friend/core/network/model/PickerFriends;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kakao/sdk/friend/core/network/model/PickerFriends$$serializer;,
        Lcom/kakao/sdk/friend/core/network/model/PickerFriends$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0006\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010\u000e\n\u0002\u0008\u000b\u0008\u0087\u0008\u0018\u0000 \u001b2\u00020\u0001:\u0002\u001c\u001bR \u0010\u0003\u001a\u00020\u00028\u0006X\u0087\u0004\u00a2\u0006\u0012\n\u0004\u0008\u0003\u0010\u0004\u0012\u0004\u0008\u0007\u0010\u0008\u001a\u0004\u0008\u0005\u0010\u0006R\u001f\u0010\u000b\u001a\n\u0012\u0004\u0012\u00020\n\u0018\u00010\t8\u0006\u00a2\u0006\u000c\n\u0004\u0008\u000b\u0010\u000c\u001a\u0004\u0008\r\u0010\u000eR \u0010\u000f\u001a\u00020\u00028\u0006X\u0087\u0004\u00a2\u0006\u0012\n\u0004\u0008\u000f\u0010\u0004\u0012\u0004\u0008\u0011\u0010\u0008\u001a\u0004\u0008\u0010\u0010\u0006R\"\u0010\u0013\u001a\u0004\u0018\u00010\u00128\u0006X\u0087\u0004\u00a2\u0006\u0012\n\u0004\u0008\u0013\u0010\u0014\u0012\u0004\u0008\u0017\u0010\u0008\u001a\u0004\u0008\u0015\u0010\u0016R\"\u0010\u0018\u001a\u0004\u0018\u00010\u00128\u0006X\u0087\u0004\u00a2\u0006\u0012\n\u0004\u0008\u0018\u0010\u0014\u0012\u0004\u0008\u001a\u0010\u0008\u001a\u0004\u0008\u0019\u0010\u0016\u00a8\u0006\u001d"
    }
    d2 = {
        "Lcom/kakao/sdk/friend/core/network/model/PickerFriends;",
        "",
        "",
        "totalCount",
        "I",
        "getTotalCount",
        "()I",
        "getTotalCount$annotations",
        "()V",
        "",
        "Lcom/kakao/sdk/friend/core/network/model/PickerFriend;",
        "elements",
        "Ljava/util/List;",
        "a",
        "()Ljava/util/List;",
        "favoriteCount",
        "getFavoriteCount",
        "getFavoriteCount$annotations",
        "",
        "beforeUrl",
        "Ljava/lang/String;",
        "getBeforeUrl",
        "()Ljava/lang/String;",
        "getBeforeUrl$annotations",
        "afterUrl",
        "getAfterUrl",
        "getAfterUrl$annotations",
        "Companion",
        "$serializer",
        "friend-core_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
.end annotation

.annotation runtime Lkotlinx/serialization/Serializable;
.end annotation


# static fields
.field public static final Companion:Lcom/kakao/sdk/friend/core/network/model/PickerFriends$Companion;


# instance fields
.field private final afterUrl:Ljava/lang/String;

.field private final beforeUrl:Ljava/lang/String;

.field private final elements:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/kakao/sdk/friend/core/network/model/PickerFriend;",
            ">;"
        }
    .end annotation
.end field

.field private final favoriteCount:I

.field private final totalCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/kakao/sdk/friend/core/network/model/PickerFriends$Companion;

    invoke-direct {v0}, Lcom/kakao/sdk/friend/core/network/model/PickerFriends$Companion;-><init>()V

    sput-object v0, Lcom/kakao/sdk/friend/core/network/model/PickerFriends;->Companion:Lcom/kakao/sdk/friend/core/network/model/PickerFriends$Companion;

    return-void

    .array-data 1
    .end array-data
.end method

.method public synthetic constructor <init>(IILjava/util/List;ILjava/lang/String;Ljava/lang/String;)V
    .locals 2

    and-int/lit8 v0, p1, 0x5

    const/4 v1, 0x5

    if-eq v1, v0, :cond_0

    .line 19
    sget-object v0, Lcom/kakao/sdk/friend/core/network/model/PickerFriends$$serializer;->INSTANCE:Lcom/kakao/sdk/friend/core/network/model/PickerFriends$$serializer;

    invoke-virtual {v0}, Lcom/kakao/sdk/friend/core/network/model/PickerFriends$$serializer;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object v0

    invoke-static {p1, v1, v0}, Lkotlinx/serialization/internal/PluginExceptionsKt;->throwMissingFieldException(IILkotlinx/serialization/descriptors/SerialDescriptor;)V

    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/kakao/sdk/friend/core/network/model/PickerFriends;->totalCount:I

    and-int/lit8 p2, p1, 0x2

    const/4 v0, 0x0

    if-nez p2, :cond_1

    iput-object v0, p0, Lcom/kakao/sdk/friend/core/network/model/PickerFriends;->elements:Ljava/util/List;

    goto :goto_0

    :cond_1
    iput-object p3, p0, Lcom/kakao/sdk/friend/core/network/model/PickerFriends;->elements:Ljava/util/List;

    :goto_0
    iput p4, p0, Lcom/kakao/sdk/friend/core/network/model/PickerFriends;->favoriteCount:I

    and-int/lit8 p2, p1, 0x8

    if-nez p2, :cond_2

    iput-object v0, p0, Lcom/kakao/sdk/friend/core/network/model/PickerFriends;->beforeUrl:Ljava/lang/String;

    goto :goto_1

    :cond_2
    iput-object p5, p0, Lcom/kakao/sdk/friend/core/network/model/PickerFriends;->beforeUrl:Ljava/lang/String;

    :goto_1
    and-int/lit8 p1, p1, 0x10

    if-nez p1, :cond_3

    iput-object v0, p0, Lcom/kakao/sdk/friend/core/network/model/PickerFriends;->afterUrl:Ljava/lang/String;

    goto :goto_2

    :cond_3
    iput-object p6, p0, Lcom/kakao/sdk/friend/core/network/model/PickerFriends;->afterUrl:Ljava/lang/String;

    :goto_2
    return-void

    .array-data 1
    .end array-data
.end method

.method public static final a(Lcom/kakao/sdk/friend/core/network/model/PickerFriends;Lkotlinx/serialization/encoding/CompositeEncoder;Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;)V
    .locals 3

    const-string v0, "self"

    .line 29
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "output"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "serialDesc"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget v0, p0, Lcom/kakao/sdk/friend/core/network/model/PickerFriends;->totalCount:I

    const/4 v1, 0x0

    invoke-interface {p1, p2, v1, v0}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeIntElement(Lkotlinx/serialization/descriptors/SerialDescriptor;II)V

    const/4 v0, 0x1

    invoke-interface {p1, p2, v0}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/kakao/sdk/friend/core/network/model/PickerFriends;->elements:Ljava/util/List;

    if-eqz v1, :cond_1

    :goto_0
    new-instance v1, Lkotlinx/serialization/internal/ArrayListSerializer;

    sget-object v2, Lcom/kakao/sdk/friend/core/network/model/PickerFriend$$serializer;->INSTANCE:Lcom/kakao/sdk/friend/core/network/model/PickerFriend$$serializer;

    invoke-direct {v1, v2}, Lkotlinx/serialization/internal/ArrayListSerializer;-><init>(Lkotlinx/serialization/KSerializer;)V

    iget-object v2, p0, Lcom/kakao/sdk/friend/core/network/model/PickerFriends;->elements:Ljava/util/List;

    invoke-interface {p1, p2, v0, v1, v2}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_1
    iget v0, p0, Lcom/kakao/sdk/friend/core/network/model/PickerFriends;->favoriteCount:I

    const/4 v1, 0x2

    invoke-interface {p1, p2, v1, v0}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeIntElement(Lkotlinx/serialization/descriptors/SerialDescriptor;II)V

    const/4 v0, 0x3

    invoke-interface {p1, p2, v0}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lcom/kakao/sdk/friend/core/network/model/PickerFriends;->beforeUrl:Ljava/lang/String;

    if-eqz v1, :cond_3

    :goto_1
    sget-object v1, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    iget-object v2, p0, Lcom/kakao/sdk/friend/core/network/model/PickerFriends;->beforeUrl:Ljava/lang/String;

    invoke-interface {p1, p2, v0, v1, v2}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_3
    const/4 v0, 0x4

    invoke-interface {p1, p2, v0}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_2

    :cond_4
    iget-object v1, p0, Lcom/kakao/sdk/friend/core/network/model/PickerFriends;->afterUrl:Ljava/lang/String;

    if-eqz v1, :cond_5

    :goto_2
    sget-object v1, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    iget-object p0, p0, Lcom/kakao/sdk/friend/core/network/model/PickerFriends;->afterUrl:Ljava/lang/String;

    invoke-interface {p1, p2, v0, v1, p0}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_5
    return-void

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public final a()Ljava/util/List;
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/kakao/sdk/friend/core/network/model/PickerFriends;->elements:Ljava/util/List;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/kakao/sdk/friend/core/network/model/PickerFriends;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/kakao/sdk/friend/core/network/model/PickerFriends;

    iget v1, p0, Lcom/kakao/sdk/friend/core/network/model/PickerFriends;->totalCount:I

    iget v3, p1, Lcom/kakao/sdk/friend/core/network/model/PickerFriends;->totalCount:I

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/kakao/sdk/friend/core/network/model/PickerFriends;->elements:Ljava/util/List;

    iget-object v3, p1, Lcom/kakao/sdk/friend/core/network/model/PickerFriends;->elements:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget v1, p0, Lcom/kakao/sdk/friend/core/network/model/PickerFriends;->favoriteCount:I

    iget v3, p1, Lcom/kakao/sdk/friend/core/network/model/PickerFriends;->favoriteCount:I

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/kakao/sdk/friend/core/network/model/PickerFriends;->beforeUrl:Ljava/lang/String;

    iget-object v3, p1, Lcom/kakao/sdk/friend/core/network/model/PickerFriends;->beforeUrl:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lcom/kakao/sdk/friend/core/network/model/PickerFriends;->afterUrl:Ljava/lang/String;

    iget-object p1, p1, Lcom/kakao/sdk/friend/core/network/model/PickerFriends;->afterUrl:Ljava/lang/String;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    return v2

    :cond_6
    return v0

    .array-data 1
    .end array-data
.end method

.method public final hashCode()I
    .locals 3

    iget v0, p0, Lcom/kakao/sdk/friend/core/network/model/PickerFriends;->totalCount:I

    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/kakao/sdk/friend/core/network/model/PickerFriends;->elements:Ljava/util/List;

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

    iget v1, p0, Lcom/kakao/sdk/friend/core/network/model/PickerFriends;->favoriteCount:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lcom/kakao/sdk/friend/core/network/model/PickerFriends;->beforeUrl:Ljava/lang/String;

    if-nez v0, :cond_1

    move v0, v2

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_1
    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lcom/kakao/sdk/friend/core/network/model/PickerFriends;->afterUrl:Ljava/lang/String;

    if-nez v0, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_2
    add-int/2addr v1, v2

    return v1

    nop

    .array-data 1
    .end array-data
.end method

.method public final toString()Ljava/lang/String;
    .locals 7

    iget v0, p0, Lcom/kakao/sdk/friend/core/network/model/PickerFriends;->totalCount:I

    iget-object v1, p0, Lcom/kakao/sdk/friend/core/network/model/PickerFriends;->elements:Ljava/util/List;

    iget v2, p0, Lcom/kakao/sdk/friend/core/network/model/PickerFriends;->favoriteCount:I

    iget-object v3, p0, Lcom/kakao/sdk/friend/core/network/model/PickerFriends;->beforeUrl:Ljava/lang/String;

    iget-object v4, p0, Lcom/kakao/sdk/friend/core/network/model/PickerFriends;->afterUrl:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "PickerFriends(totalCount="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, ", elements="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", favoriteCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", beforeUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", afterUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

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
