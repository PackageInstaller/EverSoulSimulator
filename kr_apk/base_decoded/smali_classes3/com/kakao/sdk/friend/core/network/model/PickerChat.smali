.class public final Lcom/kakao/sdk/friend/core/network/model/PickerChat;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kakao/sdk/friend/core/network/model/PickerChat$$serializer;,
        Lcom/kakao/sdk/friend/core/network/model/PickerChat$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\t\n\u0002\u0008\u0004\n\u0002\u0010\u000e\n\u0002\u0008\u0008\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0010 \n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u000b\u0008\u0087\u0008\u0018\u0000 %2\u00020\u0001:\u0002&%R\u0017\u0010\u0003\u001a\u00020\u00028\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0003\u0010\u0004\u001a\u0004\u0008\u0005\u0010\u0006R\u0019\u0010\u0008\u001a\u0004\u0018\u00010\u00078\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0008\u0010\t\u001a\u0004\u0008\n\u0010\u000bR\"\u0010\u000c\u001a\u0004\u0018\u00010\u00078\u0006X\u0087\u0004\u00a2\u0006\u0012\n\u0004\u0008\u000c\u0010\t\u0012\u0004\u0008\u000e\u0010\u000f\u001a\u0004\u0008\r\u0010\u000bR\"\u0010\u0011\u001a\u0004\u0018\u00010\u00108\u0006X\u0087\u0004\u00a2\u0006\u0012\n\u0004\u0008\u0011\u0010\u0012\u0012\u0004\u0008\u0015\u0010\u000f\u001a\u0004\u0008\u0013\u0010\u0014R(\u0010\u0017\u001a\n\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u00168\u0006X\u0087\u0004\u00a2\u0006\u0012\n\u0004\u0008\u0017\u0010\u0018\u0012\u0004\u0008\u001b\u0010\u000f\u001a\u0004\u0008\u0019\u0010\u001aR \u0010\u001d\u001a\u00020\u001c8\u0006X\u0087\u0004\u00a2\u0006\u0012\n\u0004\u0008\u001d\u0010\u001e\u0012\u0004\u0008!\u0010\u000f\u001a\u0004\u0008\u001f\u0010 R \u0010\"\u001a\u00020\u00078\u0006X\u0087\u0004\u00a2\u0006\u0012\n\u0004\u0008\"\u0010\t\u0012\u0004\u0008$\u0010\u000f\u001a\u0004\u0008#\u0010\u000b\u00a8\u0006\'"
    }
    d2 = {
        "Lcom/kakao/sdk/friend/core/network/model/PickerChat;",
        "",
        "",
        "id",
        "J",
        "b",
        "()J",
        "",
        "title",
        "Ljava/lang/String;",
        "f",
        "()Ljava/lang/String;",
        "imageUrl",
        "c",
        "getImageUrl$annotations",
        "()V",
        "",
        "memberCount",
        "Ljava/lang/Integer;",
        "d",
        "()Ljava/lang/Integer;",
        "getMemberCount$annotations",
        "",
        "displayMemberImages",
        "Ljava/util/List;",
        "a",
        "()Ljava/util/List;",
        "getDisplayMemberImages$annotations",
        "Lcom/kakao/sdk/friend/core/model/PickerChatRoomType;",
        "roomType",
        "Lcom/kakao/sdk/friend/core/model/PickerChatRoomType;",
        "e",
        "()Lcom/kakao/sdk/friend/core/model/PickerChatRoomType;",
        "getRoomType$annotations",
        "titleSource",
        "g",
        "getTitleSource$annotations",
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
.field public static final Companion:Lcom/kakao/sdk/friend/core/network/model/PickerChat$Companion;


# instance fields
.field private final displayMemberImages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final id:J

.field private final imageUrl:Ljava/lang/String;

.field private final memberCount:Ljava/lang/Integer;

.field private final roomType:Lcom/kakao/sdk/friend/core/model/PickerChatRoomType;

.field private final title:Ljava/lang/String;

.field private final titleSource:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/kakao/sdk/friend/core/network/model/PickerChat$Companion;

    invoke-direct {v0}, Lcom/kakao/sdk/friend/core/network/model/PickerChat$Companion;-><init>()V

    sput-object v0, Lcom/kakao/sdk/friend/core/network/model/PickerChat;->Companion:Lcom/kakao/sdk/friend/core/network/model/PickerChat$Companion;

    return-void

    .array-data 1
    .end array-data
.end method

.method public synthetic constructor <init>(IJLjava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/util/List;Lcom/kakao/sdk/friend/core/model/PickerChatRoomType;Ljava/lang/String;)V
    .locals 2

    and-int/lit8 v0, p1, 0x61

    const/16 v1, 0x61

    if-eq v1, v0, :cond_0

    .line 19
    sget-object v0, Lcom/kakao/sdk/friend/core/network/model/PickerChat$$serializer;->INSTANCE:Lcom/kakao/sdk/friend/core/network/model/PickerChat$$serializer;

    invoke-virtual {v0}, Lcom/kakao/sdk/friend/core/network/model/PickerChat$$serializer;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object v0

    invoke-static {p1, v1, v0}, Lkotlinx/serialization/internal/PluginExceptionsKt;->throwMissingFieldException(IILkotlinx/serialization/descriptors/SerialDescriptor;)V

    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p2, p0, Lcom/kakao/sdk/friend/core/network/model/PickerChat;->id:J

    and-int/lit8 p2, p1, 0x2

    const/4 p3, 0x0

    if-nez p2, :cond_1

    iput-object p3, p0, Lcom/kakao/sdk/friend/core/network/model/PickerChat;->title:Ljava/lang/String;

    goto :goto_0

    :cond_1
    iput-object p4, p0, Lcom/kakao/sdk/friend/core/network/model/PickerChat;->title:Ljava/lang/String;

    :goto_0
    and-int/lit8 p2, p1, 0x4

    if-nez p2, :cond_2

    iput-object p3, p0, Lcom/kakao/sdk/friend/core/network/model/PickerChat;->imageUrl:Ljava/lang/String;

    goto :goto_1

    :cond_2
    iput-object p5, p0, Lcom/kakao/sdk/friend/core/network/model/PickerChat;->imageUrl:Ljava/lang/String;

    :goto_1
    and-int/lit8 p2, p1, 0x8

    if-nez p2, :cond_3

    iput-object p3, p0, Lcom/kakao/sdk/friend/core/network/model/PickerChat;->memberCount:Ljava/lang/Integer;

    goto :goto_2

    :cond_3
    iput-object p6, p0, Lcom/kakao/sdk/friend/core/network/model/PickerChat;->memberCount:Ljava/lang/Integer;

    :goto_2
    and-int/lit8 p1, p1, 0x10

    if-nez p1, :cond_4

    iput-object p3, p0, Lcom/kakao/sdk/friend/core/network/model/PickerChat;->displayMemberImages:Ljava/util/List;

    goto :goto_3

    :cond_4
    iput-object p7, p0, Lcom/kakao/sdk/friend/core/network/model/PickerChat;->displayMemberImages:Ljava/util/List;

    :goto_3
    iput-object p8, p0, Lcom/kakao/sdk/friend/core/network/model/PickerChat;->roomType:Lcom/kakao/sdk/friend/core/model/PickerChatRoomType;

    iput-object p9, p0, Lcom/kakao/sdk/friend/core/network/model/PickerChat;->titleSource:Ljava/lang/String;

    return-void

    .array-data 1
    .end array-data
.end method

.method public static final a(Lcom/kakao/sdk/friend/core/network/model/PickerChat;Lkotlinx/serialization/encoding/CompositeEncoder;Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;)V
    .locals 3

    const-string v0, "self"

    .line 29
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "output"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "serialDesc"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/kakao/sdk/friend/core/network/model/PickerChat;->id:J

    const/4 v2, 0x0

    invoke-interface {p1, p2, v2, v0, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeLongElement(Lkotlinx/serialization/descriptors/SerialDescriptor;IJ)V

    const/4 v0, 0x1

    invoke-interface {p1, p2, v0}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/kakao/sdk/friend/core/network/model/PickerChat;->title:Ljava/lang/String;

    if-eqz v1, :cond_1

    :goto_0
    sget-object v1, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    iget-object v2, p0, Lcom/kakao/sdk/friend/core/network/model/PickerChat;->title:Ljava/lang/String;

    invoke-interface {p1, p2, v0, v1, v2}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_1
    const/4 v0, 0x2

    invoke-interface {p1, p2, v0}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lcom/kakao/sdk/friend/core/network/model/PickerChat;->imageUrl:Ljava/lang/String;

    if-eqz v1, :cond_3

    :goto_1
    sget-object v1, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    iget-object v2, p0, Lcom/kakao/sdk/friend/core/network/model/PickerChat;->imageUrl:Ljava/lang/String;

    invoke-interface {p1, p2, v0, v1, v2}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_3
    const/4 v0, 0x3

    invoke-interface {p1, p2, v0}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_2

    :cond_4
    iget-object v1, p0, Lcom/kakao/sdk/friend/core/network/model/PickerChat;->memberCount:Ljava/lang/Integer;

    if-eqz v1, :cond_5

    :goto_2
    sget-object v1, Lkotlinx/serialization/internal/IntSerializer;->INSTANCE:Lkotlinx/serialization/internal/IntSerializer;

    iget-object v2, p0, Lcom/kakao/sdk/friend/core/network/model/PickerChat;->memberCount:Ljava/lang/Integer;

    invoke-interface {p1, p2, v0, v1, v2}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_5
    const/4 v0, 0x4

    invoke-interface {p1, p2, v0}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v1

    if-eqz v1, :cond_6

    goto :goto_3

    :cond_6
    iget-object v1, p0, Lcom/kakao/sdk/friend/core/network/model/PickerChat;->displayMemberImages:Ljava/util/List;

    if-eqz v1, :cond_7

    :goto_3
    new-instance v1, Lkotlinx/serialization/internal/ArrayListSerializer;

    sget-object v2, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    invoke-direct {v1, v2}, Lkotlinx/serialization/internal/ArrayListSerializer;-><init>(Lkotlinx/serialization/KSerializer;)V

    iget-object v2, p0, Lcom/kakao/sdk/friend/core/network/model/PickerChat;->displayMemberImages:Ljava/util/List;

    invoke-interface {p1, p2, v0, v1, v2}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_7
    sget-object v0, Lcom/kakao/sdk/friend/core/model/PickerChatRoomTypeSerializer;->INSTANCE:Lcom/kakao/sdk/friend/core/model/PickerChatRoomTypeSerializer;

    iget-object v1, p0, Lcom/kakao/sdk/friend/core/network/model/PickerChat;->roomType:Lcom/kakao/sdk/friend/core/model/PickerChatRoomType;

    const/4 v2, 0x5

    invoke-interface {p1, p2, v2, v0, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/kakao/sdk/friend/core/network/model/PickerChat;->titleSource:Ljava/lang/String;

    const/4 v0, 0x6

    invoke-interface {p1, p2, v0, p0}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeStringElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILjava/lang/String;)V

    return-void

    nop

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public final a()Ljava/util/List;
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/kakao/sdk/friend/core/network/model/PickerChat;->displayMemberImages:Ljava/util/List;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final b()J
    .locals 2

    iget-wide v0, p0, Lcom/kakao/sdk/friend/core/network/model/PickerChat;->id:J

    return-wide v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/kakao/sdk/friend/core/network/model/PickerChat;->imageUrl:Ljava/lang/String;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final d()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcom/kakao/sdk/friend/core/network/model/PickerChat;->memberCount:Ljava/lang/Integer;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final e()Lcom/kakao/sdk/friend/core/model/PickerChatRoomType;
    .locals 1

    iget-object v0, p0, Lcom/kakao/sdk/friend/core/network/model/PickerChat;->roomType:Lcom/kakao/sdk/friend/core/model/PickerChatRoomType;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/kakao/sdk/friend/core/network/model/PickerChat;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/kakao/sdk/friend/core/network/model/PickerChat;

    iget-wide v3, p0, Lcom/kakao/sdk/friend/core/network/model/PickerChat;->id:J

    iget-wide v5, p1, Lcom/kakao/sdk/friend/core/network/model/PickerChat;->id:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/kakao/sdk/friend/core/network/model/PickerChat;->title:Ljava/lang/String;

    iget-object v3, p1, Lcom/kakao/sdk/friend/core/network/model/PickerChat;->title:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/kakao/sdk/friend/core/network/model/PickerChat;->imageUrl:Ljava/lang/String;

    iget-object v3, p1, Lcom/kakao/sdk/friend/core/network/model/PickerChat;->imageUrl:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/kakao/sdk/friend/core/network/model/PickerChat;->memberCount:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/kakao/sdk/friend/core/network/model/PickerChat;->memberCount:Ljava/lang/Integer;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lcom/kakao/sdk/friend/core/network/model/PickerChat;->displayMemberImages:Ljava/util/List;

    iget-object v3, p1, Lcom/kakao/sdk/friend/core/network/model/PickerChat;->displayMemberImages:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget-object v1, p0, Lcom/kakao/sdk/friend/core/network/model/PickerChat;->roomType:Lcom/kakao/sdk/friend/core/model/PickerChatRoomType;

    iget-object v3, p1, Lcom/kakao/sdk/friend/core/network/model/PickerChat;->roomType:Lcom/kakao/sdk/friend/core/model/PickerChatRoomType;

    if-eq v1, v3, :cond_7

    return v2

    :cond_7
    iget-object v1, p0, Lcom/kakao/sdk/friend/core/network/model/PickerChat;->titleSource:Ljava/lang/String;

    iget-object p1, p1, Lcom/kakao/sdk/friend/core/network/model/PickerChat;->titleSource:Ljava/lang/String;

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

    iget-object v0, p0, Lcom/kakao/sdk/friend/core/network/model/PickerChat;->title:Ljava/lang/String;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final g()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/kakao/sdk/friend/core/network/model/PickerChat;->titleSource:Ljava/lang/String;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final hashCode()I
    .locals 3

    iget-wide v0, p0, Lcom/kakao/sdk/friend/core/network/model/PickerChat;->id:J

    invoke-static {v0, v1}, Ljava/lang/Long;->hashCode(J)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/kakao/sdk/friend/core/network/model/PickerChat;->title:Ljava/lang/String;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/kakao/sdk/friend/core/network/model/PickerChat;->imageUrl:Ljava/lang/String;

    if-nez v1, :cond_1

    move v1, v2

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/kakao/sdk/friend/core/network/model/PickerChat;->memberCount:Ljava/lang/Integer;

    if-nez v1, :cond_2

    move v1, v2

    goto :goto_2

    :cond_2
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_2
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/kakao/sdk/friend/core/network/model/PickerChat;->displayMemberImages:Ljava/util/List;

    if-nez v1, :cond_3

    goto :goto_3

    :cond_3
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_3
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/kakao/sdk/friend/core/network/model/PickerChat;->roomType:Lcom/kakao/sdk/friend/core/model/PickerChatRoomType;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lcom/kakao/sdk/friend/core/network/model/PickerChat;->titleSource:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/2addr v0, v1

    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final toString()Ljava/lang/String;
    .locals 10

    iget-wide v0, p0, Lcom/kakao/sdk/friend/core/network/model/PickerChat;->id:J

    iget-object v2, p0, Lcom/kakao/sdk/friend/core/network/model/PickerChat;->title:Ljava/lang/String;

    iget-object v3, p0, Lcom/kakao/sdk/friend/core/network/model/PickerChat;->imageUrl:Ljava/lang/String;

    iget-object v4, p0, Lcom/kakao/sdk/friend/core/network/model/PickerChat;->memberCount:Ljava/lang/Integer;

    iget-object v5, p0, Lcom/kakao/sdk/friend/core/network/model/PickerChat;->displayMemberImages:Ljava/util/List;

    iget-object v6, p0, Lcom/kakao/sdk/friend/core/network/model/PickerChat;->roomType:Lcom/kakao/sdk/friend/core/model/PickerChatRoomType;

    iget-object v7, p0, Lcom/kakao/sdk/friend/core/network/model/PickerChat;->titleSource:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "PickerChat(id="

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", title="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", imageUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", memberCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", displayMemberImages="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", roomType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", titleSource="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

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
