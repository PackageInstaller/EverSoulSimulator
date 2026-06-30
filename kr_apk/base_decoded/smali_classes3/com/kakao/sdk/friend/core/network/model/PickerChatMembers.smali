.class public final Lcom/kakao/sdk/friend/core/network/model/PickerChatMembers;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kakao/sdk/friend/core/network/model/PickerChatMembers$Type;,
        Lcom/kakao/sdk/friend/core/network/model/PickerChatMembers$TypeSerializer;,
        Lcom/kakao/sdk/friend/core/network/model/PickerChatMembers$$serializer;,
        Lcom/kakao/sdk/friend/core/network/model/PickerChatMembers$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u0008\n\u0002\u0008\t\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\t\n\u0002\u0008\t\u0008\u0087\u0008\u0018\u0000 \u001c2\u00020\u0001:\u0004\u001d\u001c\u001e\u001fR\"\u0010\u0003\u001a\u0004\u0018\u00010\u00028\u0006X\u0087\u0004\u00a2\u0006\u0012\n\u0004\u0008\u0003\u0010\u0004\u0012\u0004\u0008\u0007\u0010\u0008\u001a\u0004\u0008\u0005\u0010\u0006R\"\u0010\t\u001a\u0004\u0018\u00010\u00028\u0006X\u0087\u0004\u00a2\u0006\u0012\n\u0004\u0008\t\u0010\u0004\u0012\u0004\u0008\u000b\u0010\u0008\u001a\u0004\u0008\n\u0010\u0006R\u001f\u0010\u000e\u001a\n\u0012\u0004\u0012\u00020\r\u0018\u00010\u000c8\u0006\u00a2\u0006\u000c\n\u0004\u0008\u000e\u0010\u000f\u001a\u0004\u0008\u0010\u0010\u0011R\u0017\u0010\u0013\u001a\u00020\u00128\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0013\u0010\u0014\u001a\u0004\u0008\u0015\u0010\u0016R\u0019\u0010\u0018\u001a\u0004\u0018\u00010\u00178\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0018\u0010\u0019\u001a\u0004\u0008\u001a\u0010\u001b\u00a8\u0006 "
    }
    d2 = {
        "Lcom/kakao/sdk/friend/core/network/model/PickerChatMembers;",
        "",
        "",
        "activeMembersCount",
        "Ljava/lang/Integer;",
        "a",
        "()Ljava/lang/Integer;",
        "getActiveMembersCount$annotations",
        "()V",
        "activeFriendsCount",
        "getActiveFriendsCount",
        "getActiveFriendsCount$annotations",
        "",
        "Lcom/kakao/sdk/friend/core/network/model/PickerChatMember;",
        "members",
        "Ljava/util/List;",
        "b",
        "()Ljava/util/List;",
        "Lcom/kakao/sdk/friend/core/network/model/PickerChatMembers$Type;",
        "type",
        "Lcom/kakao/sdk/friend/core/network/model/PickerChatMembers$Type;",
        "getType",
        "()Lcom/kakao/sdk/friend/core/network/model/PickerChatMembers$Type;",
        "",
        "token",
        "Ljava/lang/Long;",
        "getToken",
        "()Ljava/lang/Long;",
        "Companion",
        "$serializer",
        "Type",
        "TypeSerializer",
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
.field public static final Companion:Lcom/kakao/sdk/friend/core/network/model/PickerChatMembers$Companion;


# instance fields
.field private final activeFriendsCount:Ljava/lang/Integer;

.field private final activeMembersCount:Ljava/lang/Integer;

.field private final members:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/kakao/sdk/friend/core/network/model/PickerChatMember;",
            ">;"
        }
    .end annotation
.end field

.field private final token:Ljava/lang/Long;

.field private final type:Lcom/kakao/sdk/friend/core/network/model/PickerChatMembers$Type;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/kakao/sdk/friend/core/network/model/PickerChatMembers$Companion;

    invoke-direct {v0}, Lcom/kakao/sdk/friend/core/network/model/PickerChatMembers$Companion;-><init>()V

    sput-object v0, Lcom/kakao/sdk/friend/core/network/model/PickerChatMembers;->Companion:Lcom/kakao/sdk/friend/core/network/model/PickerChatMembers$Companion;

    return-void

    .array-data 1
    .end array-data
.end method

.method public synthetic constructor <init>(ILjava/lang/Integer;Ljava/lang/Integer;Ljava/util/List;Lcom/kakao/sdk/friend/core/network/model/PickerChatMembers$Type;Ljava/lang/Long;)V
    .locals 2

    and-int/lit8 v0, p1, 0x8

    const/16 v1, 0x8

    if-eq v1, v0, :cond_0

    .line 19
    sget-object v0, Lcom/kakao/sdk/friend/core/network/model/PickerChatMembers$$serializer;->INSTANCE:Lcom/kakao/sdk/friend/core/network/model/PickerChatMembers$$serializer;

    invoke-virtual {v0}, Lcom/kakao/sdk/friend/core/network/model/PickerChatMembers$$serializer;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object v0

    invoke-static {p1, v1, v0}, Lkotlinx/serialization/internal/PluginExceptionsKt;->throwMissingFieldException(IILkotlinx/serialization/descriptors/SerialDescriptor;)V

    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    and-int/lit8 v0, p1, 0x1

    const/4 v1, 0x0

    if-nez v0, :cond_1

    iput-object v1, p0, Lcom/kakao/sdk/friend/core/network/model/PickerChatMembers;->activeMembersCount:Ljava/lang/Integer;

    goto :goto_0

    :cond_1
    iput-object p2, p0, Lcom/kakao/sdk/friend/core/network/model/PickerChatMembers;->activeMembersCount:Ljava/lang/Integer;

    :goto_0
    and-int/lit8 p2, p1, 0x2

    if-nez p2, :cond_2

    iput-object v1, p0, Lcom/kakao/sdk/friend/core/network/model/PickerChatMembers;->activeFriendsCount:Ljava/lang/Integer;

    goto :goto_1

    :cond_2
    iput-object p3, p0, Lcom/kakao/sdk/friend/core/network/model/PickerChatMembers;->activeFriendsCount:Ljava/lang/Integer;

    :goto_1
    and-int/lit8 p2, p1, 0x4

    if-nez p2, :cond_3

    iput-object v1, p0, Lcom/kakao/sdk/friend/core/network/model/PickerChatMembers;->members:Ljava/util/List;

    goto :goto_2

    :cond_3
    iput-object p4, p0, Lcom/kakao/sdk/friend/core/network/model/PickerChatMembers;->members:Ljava/util/List;

    :goto_2
    iput-object p5, p0, Lcom/kakao/sdk/friend/core/network/model/PickerChatMembers;->type:Lcom/kakao/sdk/friend/core/network/model/PickerChatMembers$Type;

    and-int/lit8 p1, p1, 0x10

    if-nez p1, :cond_4

    iput-object v1, p0, Lcom/kakao/sdk/friend/core/network/model/PickerChatMembers;->token:Ljava/lang/Long;

    goto :goto_3

    :cond_4
    iput-object p6, p0, Lcom/kakao/sdk/friend/core/network/model/PickerChatMembers;->token:Ljava/lang/Long;

    :goto_3
    return-void

    .array-data 1
    .end array-data
.end method

.method public static final a(Lcom/kakao/sdk/friend/core/network/model/PickerChatMembers;Lkotlinx/serialization/encoding/CompositeEncoder;Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;)V
    .locals 3

    const-string v0, "self"

    .line 29
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "output"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "serialDesc"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-interface {p1, p2, v0}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/kakao/sdk/friend/core/network/model/PickerChatMembers;->activeMembersCount:Ljava/lang/Integer;

    if-eqz v1, :cond_1

    :goto_0
    sget-object v1, Lkotlinx/serialization/internal/IntSerializer;->INSTANCE:Lkotlinx/serialization/internal/IntSerializer;

    iget-object v2, p0, Lcom/kakao/sdk/friend/core/network/model/PickerChatMembers;->activeMembersCount:Ljava/lang/Integer;

    invoke-interface {p1, p2, v0, v1, v2}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_1
    const/4 v0, 0x1

    invoke-interface {p1, p2, v0}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lcom/kakao/sdk/friend/core/network/model/PickerChatMembers;->activeFriendsCount:Ljava/lang/Integer;

    if-eqz v1, :cond_3

    :goto_1
    sget-object v1, Lkotlinx/serialization/internal/IntSerializer;->INSTANCE:Lkotlinx/serialization/internal/IntSerializer;

    iget-object v2, p0, Lcom/kakao/sdk/friend/core/network/model/PickerChatMembers;->activeFriendsCount:Ljava/lang/Integer;

    invoke-interface {p1, p2, v0, v1, v2}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_3
    const/4 v0, 0x2

    invoke-interface {p1, p2, v0}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_2

    :cond_4
    iget-object v1, p0, Lcom/kakao/sdk/friend/core/network/model/PickerChatMembers;->members:Ljava/util/List;

    if-eqz v1, :cond_5

    :goto_2
    new-instance v1, Lkotlinx/serialization/internal/ArrayListSerializer;

    sget-object v2, Lcom/kakao/sdk/friend/core/network/model/PickerChatMember$$serializer;->INSTANCE:Lcom/kakao/sdk/friend/core/network/model/PickerChatMember$$serializer;

    invoke-direct {v1, v2}, Lkotlinx/serialization/internal/ArrayListSerializer;-><init>(Lkotlinx/serialization/KSerializer;)V

    iget-object v2, p0, Lcom/kakao/sdk/friend/core/network/model/PickerChatMembers;->members:Ljava/util/List;

    invoke-interface {p1, p2, v0, v1, v2}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_5
    sget-object v0, Lcom/kakao/sdk/friend/core/network/model/PickerChatMembers$TypeSerializer;->INSTANCE:Lcom/kakao/sdk/friend/core/network/model/PickerChatMembers$TypeSerializer;

    iget-object v1, p0, Lcom/kakao/sdk/friend/core/network/model/PickerChatMembers;->type:Lcom/kakao/sdk/friend/core/network/model/PickerChatMembers$Type;

    const/4 v2, 0x3

    invoke-interface {p1, p2, v2, v0, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    const/4 v0, 0x4

    invoke-interface {p1, p2, v0}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v1

    if-eqz v1, :cond_6

    goto :goto_3

    :cond_6
    iget-object v1, p0, Lcom/kakao/sdk/friend/core/network/model/PickerChatMembers;->token:Ljava/lang/Long;

    if-eqz v1, :cond_7

    :goto_3
    sget-object v1, Lkotlinx/serialization/internal/LongSerializer;->INSTANCE:Lkotlinx/serialization/internal/LongSerializer;

    iget-object p0, p0, Lcom/kakao/sdk/friend/core/network/model/PickerChatMembers;->token:Ljava/lang/Long;

    invoke-interface {p1, p2, v0, v1, p0}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_7
    return-void

    nop

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public final a()Ljava/lang/Integer;
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/kakao/sdk/friend/core/network/model/PickerChatMembers;->activeMembersCount:Ljava/lang/Integer;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final b()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/kakao/sdk/friend/core/network/model/PickerChatMembers;->members:Ljava/util/List;

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
    instance-of v1, p1, Lcom/kakao/sdk/friend/core/network/model/PickerChatMembers;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/kakao/sdk/friend/core/network/model/PickerChatMembers;

    iget-object v1, p0, Lcom/kakao/sdk/friend/core/network/model/PickerChatMembers;->activeMembersCount:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/kakao/sdk/friend/core/network/model/PickerChatMembers;->activeMembersCount:Ljava/lang/Integer;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/kakao/sdk/friend/core/network/model/PickerChatMembers;->activeFriendsCount:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/kakao/sdk/friend/core/network/model/PickerChatMembers;->activeFriendsCount:Ljava/lang/Integer;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/kakao/sdk/friend/core/network/model/PickerChatMembers;->members:Ljava/util/List;

    iget-object v3, p1, Lcom/kakao/sdk/friend/core/network/model/PickerChatMembers;->members:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/kakao/sdk/friend/core/network/model/PickerChatMembers;->type:Lcom/kakao/sdk/friend/core/network/model/PickerChatMembers$Type;

    iget-object v3, p1, Lcom/kakao/sdk/friend/core/network/model/PickerChatMembers;->type:Lcom/kakao/sdk/friend/core/network/model/PickerChatMembers$Type;

    if-eq v1, v3, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lcom/kakao/sdk/friend/core/network/model/PickerChatMembers;->token:Ljava/lang/Long;

    iget-object p1, p1, Lcom/kakao/sdk/friend/core/network/model/PickerChatMembers;->token:Ljava/lang/Long;

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

    iget-object v0, p0, Lcom/kakao/sdk/friend/core/network/model/PickerChatMembers;->activeMembersCount:Ljava/lang/Integer;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/kakao/sdk/friend/core/network/model/PickerChatMembers;->activeFriendsCount:Ljava/lang/Integer;

    if-nez v2, :cond_1

    move v2, v1

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/kakao/sdk/friend/core/network/model/PickerChatMembers;->members:Ljava/util/List;

    if-nez v2, :cond_2

    move v2, v1

    goto :goto_2

    :cond_2
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/kakao/sdk/friend/core/network/model/PickerChatMembers;->type:Lcom/kakao/sdk/friend/core/network/model/PickerChatMembers$Type;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v2, v0

    mul-int/lit8 v2, v2, 0x1f

    iget-object v0, p0, Lcom/kakao/sdk/friend/core/network/model/PickerChatMembers;->token:Ljava/lang/Long;

    if-nez v0, :cond_3

    goto :goto_3

    :cond_3
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_3
    add-int/2addr v2, v1

    return v2

    nop

    .array-data 1
    .end array-data
.end method

.method public final toString()Ljava/lang/String;
    .locals 7

    iget-object v0, p0, Lcom/kakao/sdk/friend/core/network/model/PickerChatMembers;->activeMembersCount:Ljava/lang/Integer;

    iget-object v1, p0, Lcom/kakao/sdk/friend/core/network/model/PickerChatMembers;->activeFriendsCount:Ljava/lang/Integer;

    iget-object v2, p0, Lcom/kakao/sdk/friend/core/network/model/PickerChatMembers;->members:Ljava/util/List;

    iget-object v3, p0, Lcom/kakao/sdk/friend/core/network/model/PickerChatMembers;->type:Lcom/kakao/sdk/friend/core/network/model/PickerChatMembers$Type;

    iget-object v4, p0, Lcom/kakao/sdk/friend/core/network/model/PickerChatMembers;->token:Ljava/lang/Long;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "PickerChatMembers(activeMembersCount="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, ", activeFriendsCount="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", members="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", token="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

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
