.class public final Lcom/kakao/sdk/friend/core/network/model/PickerChatMember;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kakao/sdk/friend/core/network/model/PickerChatMember$$serializer;,
        Lcom/kakao/sdk/friend/core/network/model/PickerChatMember$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0006\n\u0002\u0010\t\n\u0002\u0008\u0004\n\u0002\u0010\u000e\n\u0002\u0008\u0012\u0008\u0087\u0008\u0018\u0000 \u001e2\u00020\u0001:\u0002\u001f\u001eR\"\u0010\u0003\u001a\u0004\u0018\u00010\u00028\u0006X\u0087\u0004\u00a2\u0006\u0012\n\u0004\u0008\u0003\u0010\u0004\u0012\u0004\u0008\u0007\u0010\u0008\u001a\u0004\u0008\u0005\u0010\u0006R\u0019\u0010\n\u001a\u0004\u0018\u00010\t8\u0006\u00a2\u0006\u000c\n\u0004\u0008\n\u0010\u000b\u001a\u0004\u0008\u000c\u0010\rR\u0019\u0010\u000f\u001a\u0004\u0018\u00010\u000e8\u0006\u00a2\u0006\u000c\n\u0004\u0008\u000f\u0010\u0010\u001a\u0004\u0008\u0011\u0010\u0012R\"\u0010\u0013\u001a\u0004\u0018\u00010\u000e8\u0006X\u0087\u0004\u00a2\u0006\u0012\n\u0004\u0008\u0013\u0010\u0010\u0012\u0004\u0008\u0015\u0010\u0008\u001a\u0004\u0008\u0014\u0010\u0012R\u0017\u0010\u0016\u001a\u00020\u000e8\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0016\u0010\u0010\u001a\u0004\u0008\u0017\u0010\u0012R\"\u0010\u0018\u001a\u0004\u0018\u00010\u00028\u0006X\u0087\u0004\u00a2\u0006\u0012\n\u0004\u0008\u0018\u0010\u0004\u0012\u0004\u0008\u001a\u0010\u0008\u001a\u0004\u0008\u0019\u0010\u0006R\"\u0010\u001b\u001a\u0004\u0018\u00010\u00028\u0006X\u0087\u0004\u00a2\u0006\u0012\n\u0004\u0008\u001b\u0010\u0004\u0012\u0004\u0008\u001d\u0010\u0008\u001a\u0004\u0008\u001c\u0010\u0006\u00a8\u0006 "
    }
    d2 = {
        "Lcom/kakao/sdk/friend/core/network/model/PickerChatMember;",
        "",
        "",
        "appRegistered",
        "Ljava/lang/Boolean;",
        "a",
        "()Ljava/lang/Boolean;",
        "getAppRegistered$annotations",
        "()V",
        "",
        "id",
        "Ljava/lang/Long;",
        "b",
        "()Ljava/lang/Long;",
        "",
        "nickname",
        "Ljava/lang/String;",
        "d",
        "()Ljava/lang/String;",
        "thumbnailImageUrl",
        "e",
        "getThumbnailImageUrl$annotations",
        "uuid",
        "f",
        "isFriend",
        "g",
        "isFriend$annotations",
        "msgBlocked",
        "c",
        "getMsgBlocked$annotations",
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
.field public static final Companion:Lcom/kakao/sdk/friend/core/network/model/PickerChatMember$Companion;


# instance fields
.field private final appRegistered:Ljava/lang/Boolean;

.field private final id:Ljava/lang/Long;

.field private final isFriend:Ljava/lang/Boolean;

.field private final msgBlocked:Ljava/lang/Boolean;

.field private final nickname:Ljava/lang/String;

.field private final thumbnailImageUrl:Ljava/lang/String;

.field private final uuid:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/kakao/sdk/friend/core/network/model/PickerChatMember$Companion;

    invoke-direct {v0}, Lcom/kakao/sdk/friend/core/network/model/PickerChatMember$Companion;-><init>()V

    sput-object v0, Lcom/kakao/sdk/friend/core/network/model/PickerChatMember;->Companion:Lcom/kakao/sdk/friend/core/network/model/PickerChatMember$Companion;

    return-void

    .array-data 1
    .end array-data
.end method

.method public synthetic constructor <init>(ILjava/lang/Boolean;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;)V
    .locals 2

    and-int/lit8 v0, p1, 0x10

    const/16 v1, 0x10

    if-eq v1, v0, :cond_0

    .line 19
    sget-object v0, Lcom/kakao/sdk/friend/core/network/model/PickerChatMember$$serializer;->INSTANCE:Lcom/kakao/sdk/friend/core/network/model/PickerChatMember$$serializer;

    invoke-virtual {v0}, Lcom/kakao/sdk/friend/core/network/model/PickerChatMember$$serializer;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object v0

    invoke-static {p1, v1, v0}, Lkotlinx/serialization/internal/PluginExceptionsKt;->throwMissingFieldException(IILkotlinx/serialization/descriptors/SerialDescriptor;)V

    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    and-int/lit8 v0, p1, 0x1

    const/4 v1, 0x0

    if-nez v0, :cond_1

    iput-object v1, p0, Lcom/kakao/sdk/friend/core/network/model/PickerChatMember;->appRegistered:Ljava/lang/Boolean;

    goto :goto_0

    :cond_1
    iput-object p2, p0, Lcom/kakao/sdk/friend/core/network/model/PickerChatMember;->appRegistered:Ljava/lang/Boolean;

    :goto_0
    and-int/lit8 p2, p1, 0x2

    if-nez p2, :cond_2

    iput-object v1, p0, Lcom/kakao/sdk/friend/core/network/model/PickerChatMember;->id:Ljava/lang/Long;

    goto :goto_1

    :cond_2
    iput-object p3, p0, Lcom/kakao/sdk/friend/core/network/model/PickerChatMember;->id:Ljava/lang/Long;

    :goto_1
    and-int/lit8 p2, p1, 0x4

    if-nez p2, :cond_3

    iput-object v1, p0, Lcom/kakao/sdk/friend/core/network/model/PickerChatMember;->nickname:Ljava/lang/String;

    goto :goto_2

    :cond_3
    iput-object p4, p0, Lcom/kakao/sdk/friend/core/network/model/PickerChatMember;->nickname:Ljava/lang/String;

    :goto_2
    and-int/lit8 p2, p1, 0x8

    if-nez p2, :cond_4

    iput-object v1, p0, Lcom/kakao/sdk/friend/core/network/model/PickerChatMember;->thumbnailImageUrl:Ljava/lang/String;

    goto :goto_3

    :cond_4
    iput-object p5, p0, Lcom/kakao/sdk/friend/core/network/model/PickerChatMember;->thumbnailImageUrl:Ljava/lang/String;

    :goto_3
    iput-object p6, p0, Lcom/kakao/sdk/friend/core/network/model/PickerChatMember;->uuid:Ljava/lang/String;

    and-int/lit8 p2, p1, 0x20

    if-nez p2, :cond_5

    iput-object v1, p0, Lcom/kakao/sdk/friend/core/network/model/PickerChatMember;->isFriend:Ljava/lang/Boolean;

    goto :goto_4

    :cond_5
    iput-object p7, p0, Lcom/kakao/sdk/friend/core/network/model/PickerChatMember;->isFriend:Ljava/lang/Boolean;

    :goto_4
    and-int/lit8 p1, p1, 0x40

    if-nez p1, :cond_6

    iput-object v1, p0, Lcom/kakao/sdk/friend/core/network/model/PickerChatMember;->msgBlocked:Ljava/lang/Boolean;

    goto :goto_5

    :cond_6
    iput-object p8, p0, Lcom/kakao/sdk/friend/core/network/model/PickerChatMember;->msgBlocked:Ljava/lang/Boolean;

    :goto_5
    return-void

    .array-data 1
    .end array-data
.end method

.method public static final a(Lcom/kakao/sdk/friend/core/network/model/PickerChatMember;Lkotlinx/serialization/encoding/CompositeEncoder;Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;)V
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
    iget-object v1, p0, Lcom/kakao/sdk/friend/core/network/model/PickerChatMember;->appRegistered:Ljava/lang/Boolean;

    if-eqz v1, :cond_1

    :goto_0
    sget-object v1, Lkotlinx/serialization/internal/BooleanSerializer;->INSTANCE:Lkotlinx/serialization/internal/BooleanSerializer;

    iget-object v2, p0, Lcom/kakao/sdk/friend/core/network/model/PickerChatMember;->appRegistered:Ljava/lang/Boolean;

    invoke-interface {p1, p2, v0, v1, v2}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_1
    const/4 v0, 0x1

    invoke-interface {p1, p2, v0}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lcom/kakao/sdk/friend/core/network/model/PickerChatMember;->id:Ljava/lang/Long;

    if-eqz v1, :cond_3

    :goto_1
    sget-object v1, Lkotlinx/serialization/internal/LongSerializer;->INSTANCE:Lkotlinx/serialization/internal/LongSerializer;

    iget-object v2, p0, Lcom/kakao/sdk/friend/core/network/model/PickerChatMember;->id:Ljava/lang/Long;

    invoke-interface {p1, p2, v0, v1, v2}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_3
    const/4 v0, 0x2

    invoke-interface {p1, p2, v0}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_2

    :cond_4
    iget-object v1, p0, Lcom/kakao/sdk/friend/core/network/model/PickerChatMember;->nickname:Ljava/lang/String;

    if-eqz v1, :cond_5

    :goto_2
    sget-object v1, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    iget-object v2, p0, Lcom/kakao/sdk/friend/core/network/model/PickerChatMember;->nickname:Ljava/lang/String;

    invoke-interface {p1, p2, v0, v1, v2}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_5
    const/4 v0, 0x3

    invoke-interface {p1, p2, v0}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v1

    if-eqz v1, :cond_6

    goto :goto_3

    :cond_6
    iget-object v1, p0, Lcom/kakao/sdk/friend/core/network/model/PickerChatMember;->thumbnailImageUrl:Ljava/lang/String;

    if-eqz v1, :cond_7

    :goto_3
    sget-object v1, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    iget-object v2, p0, Lcom/kakao/sdk/friend/core/network/model/PickerChatMember;->thumbnailImageUrl:Ljava/lang/String;

    invoke-interface {p1, p2, v0, v1, v2}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_7
    iget-object v0, p0, Lcom/kakao/sdk/friend/core/network/model/PickerChatMember;->uuid:Ljava/lang/String;

    const/4 v1, 0x4

    invoke-interface {p1, p2, v1, v0}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeStringElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILjava/lang/String;)V

    const/4 v0, 0x5

    invoke-interface {p1, p2, v0}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v1

    if-eqz v1, :cond_8

    goto :goto_4

    :cond_8
    iget-object v1, p0, Lcom/kakao/sdk/friend/core/network/model/PickerChatMember;->isFriend:Ljava/lang/Boolean;

    if-eqz v1, :cond_9

    :goto_4
    sget-object v1, Lkotlinx/serialization/internal/BooleanSerializer;->INSTANCE:Lkotlinx/serialization/internal/BooleanSerializer;

    iget-object v2, p0, Lcom/kakao/sdk/friend/core/network/model/PickerChatMember;->isFriend:Ljava/lang/Boolean;

    invoke-interface {p1, p2, v0, v1, v2}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_9
    const/4 v0, 0x6

    invoke-interface {p1, p2, v0}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v1

    if-eqz v1, :cond_a

    goto :goto_5

    :cond_a
    iget-object v1, p0, Lcom/kakao/sdk/friend/core/network/model/PickerChatMember;->msgBlocked:Ljava/lang/Boolean;

    if-eqz v1, :cond_b

    :goto_5
    sget-object v1, Lkotlinx/serialization/internal/BooleanSerializer;->INSTANCE:Lkotlinx/serialization/internal/BooleanSerializer;

    iget-object p0, p0, Lcom/kakao/sdk/friend/core/network/model/PickerChatMember;->msgBlocked:Ljava/lang/Boolean;

    invoke-interface {p1, p2, v0, v1, p0}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_b
    return-void

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public final a()Ljava/lang/Boolean;
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/kakao/sdk/friend/core/network/model/PickerChatMember;->appRegistered:Ljava/lang/Boolean;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final b()Ljava/lang/Long;
    .locals 1

    iget-object v0, p0, Lcom/kakao/sdk/friend/core/network/model/PickerChatMember;->id:Ljava/lang/Long;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final c()Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lcom/kakao/sdk/friend/core/network/model/PickerChatMember;->msgBlocked:Ljava/lang/Boolean;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/kakao/sdk/friend/core/network/model/PickerChatMember;->nickname:Ljava/lang/String;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final e()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/kakao/sdk/friend/core/network/model/PickerChatMember;->thumbnailImageUrl:Ljava/lang/String;

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
    instance-of v1, p1, Lcom/kakao/sdk/friend/core/network/model/PickerChatMember;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/kakao/sdk/friend/core/network/model/PickerChatMember;

    iget-object v1, p0, Lcom/kakao/sdk/friend/core/network/model/PickerChatMember;->appRegistered:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/kakao/sdk/friend/core/network/model/PickerChatMember;->appRegistered:Ljava/lang/Boolean;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/kakao/sdk/friend/core/network/model/PickerChatMember;->id:Ljava/lang/Long;

    iget-object v3, p1, Lcom/kakao/sdk/friend/core/network/model/PickerChatMember;->id:Ljava/lang/Long;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/kakao/sdk/friend/core/network/model/PickerChatMember;->nickname:Ljava/lang/String;

    iget-object v3, p1, Lcom/kakao/sdk/friend/core/network/model/PickerChatMember;->nickname:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/kakao/sdk/friend/core/network/model/PickerChatMember;->thumbnailImageUrl:Ljava/lang/String;

    iget-object v3, p1, Lcom/kakao/sdk/friend/core/network/model/PickerChatMember;->thumbnailImageUrl:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lcom/kakao/sdk/friend/core/network/model/PickerChatMember;->uuid:Ljava/lang/String;

    iget-object v3, p1, Lcom/kakao/sdk/friend/core/network/model/PickerChatMember;->uuid:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget-object v1, p0, Lcom/kakao/sdk/friend/core/network/model/PickerChatMember;->isFriend:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/kakao/sdk/friend/core/network/model/PickerChatMember;->isFriend:Ljava/lang/Boolean;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    :cond_7
    iget-object v1, p0, Lcom/kakao/sdk/friend/core/network/model/PickerChatMember;->msgBlocked:Ljava/lang/Boolean;

    iget-object p1, p1, Lcom/kakao/sdk/friend/core/network/model/PickerChatMember;->msgBlocked:Ljava/lang/Boolean;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_8

    return v2

    :cond_8
    return v0

    .array-data 1
    .end array-data
.end method

.method public final f()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/kakao/sdk/friend/core/network/model/PickerChatMember;->uuid:Ljava/lang/String;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final g()Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lcom/kakao/sdk/friend/core/network/model/PickerChatMember;->isFriend:Ljava/lang/Boolean;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/kakao/sdk/friend/core/network/model/PickerChatMember;->appRegistered:Ljava/lang/Boolean;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/kakao/sdk/friend/core/network/model/PickerChatMember;->id:Ljava/lang/Long;

    if-nez v2, :cond_1

    move v2, v1

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/kakao/sdk/friend/core/network/model/PickerChatMember;->nickname:Ljava/lang/String;

    if-nez v2, :cond_2

    move v2, v1

    goto :goto_2

    :cond_2
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/kakao/sdk/friend/core/network/model/PickerChatMember;->thumbnailImageUrl:Ljava/lang/String;

    if-nez v2, :cond_3

    move v2, v1

    goto :goto_3

    :cond_3
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_3
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/kakao/sdk/friend/core/network/model/PickerChatMember;->uuid:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int/2addr v2, v0

    mul-int/lit8 v2, v2, 0x1f

    iget-object v0, p0, Lcom/kakao/sdk/friend/core/network/model/PickerChatMember;->isFriend:Ljava/lang/Boolean;

    if-nez v0, :cond_4

    move v0, v1

    goto :goto_4

    :cond_4
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_4
    add-int/2addr v2, v0

    mul-int/lit8 v2, v2, 0x1f

    iget-object v0, p0, Lcom/kakao/sdk/friend/core/network/model/PickerChatMember;->msgBlocked:Ljava/lang/Boolean;

    if-nez v0, :cond_5

    goto :goto_5

    :cond_5
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_5
    add-int/2addr v2, v1

    return v2

    nop

    .array-data 1
    .end array-data
.end method

.method public final toString()Ljava/lang/String;
    .locals 9

    iget-object v0, p0, Lcom/kakao/sdk/friend/core/network/model/PickerChatMember;->appRegistered:Ljava/lang/Boolean;

    iget-object v1, p0, Lcom/kakao/sdk/friend/core/network/model/PickerChatMember;->id:Ljava/lang/Long;

    iget-object v2, p0, Lcom/kakao/sdk/friend/core/network/model/PickerChatMember;->nickname:Ljava/lang/String;

    iget-object v3, p0, Lcom/kakao/sdk/friend/core/network/model/PickerChatMember;->thumbnailImageUrl:Ljava/lang/String;

    iget-object v4, p0, Lcom/kakao/sdk/friend/core/network/model/PickerChatMember;->uuid:Ljava/lang/String;

    iget-object v5, p0, Lcom/kakao/sdk/friend/core/network/model/PickerChatMember;->isFriend:Ljava/lang/Boolean;

    iget-object v6, p0, Lcom/kakao/sdk/friend/core/network/model/PickerChatMember;->msgBlocked:Ljava/lang/Boolean;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "PickerChatMember(appRegistered="

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v7, ", id="

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", nickname="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", thumbnailImageUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", uuid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isFriend="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", msgBlocked="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

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
