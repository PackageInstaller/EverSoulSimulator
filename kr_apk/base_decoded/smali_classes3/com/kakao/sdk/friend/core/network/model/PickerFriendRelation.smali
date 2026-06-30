.class public final Lcom/kakao/sdk/friend/core/network/model/PickerFriendRelation;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kakao/sdk/friend/core/network/model/PickerFriendRelation$$serializer;,
        Lcom/kakao/sdk/friend/core/network/model/PickerFriendRelation$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0008\u0087\u0008\u0018\u0000 \u00072\u00020\u0001:\u0002\u0008\u0007R\u0019\u0010\u0003\u001a\u0004\u0018\u00010\u00028\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0003\u0010\u0004\u001a\u0004\u0008\u0005\u0010\u0006\u00a8\u0006\t"
    }
    d2 = {
        "Lcom/kakao/sdk/friend/core/network/model/PickerFriendRelation;",
        "",
        "Lcom/kakao/sdk/friend/core/network/model/PickerRelation;",
        "talk",
        "Lcom/kakao/sdk/friend/core/network/model/PickerRelation;",
        "getTalk",
        "()Lcom/kakao/sdk/friend/core/network/model/PickerRelation;",
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
.field public static final Companion:Lcom/kakao/sdk/friend/core/network/model/PickerFriendRelation$Companion;


# instance fields
.field private final talk:Lcom/kakao/sdk/friend/core/network/model/PickerRelation;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/kakao/sdk/friend/core/network/model/PickerFriendRelation$Companion;

    invoke-direct {v0}, Lcom/kakao/sdk/friend/core/network/model/PickerFriendRelation$Companion;-><init>()V

    sput-object v0, Lcom/kakao/sdk/friend/core/network/model/PickerFriendRelation;->Companion:Lcom/kakao/sdk/friend/core/network/model/PickerFriendRelation$Companion;

    return-void

    .array-data 1
    .end array-data
.end method

.method public synthetic constructor <init>(ILcom/kakao/sdk/friend/core/network/model/PickerRelation;)V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    and-int/lit8 p1, p1, 0x1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/kakao/sdk/friend/core/network/model/PickerFriendRelation;->talk:Lcom/kakao/sdk/friend/core/network/model/PickerRelation;

    goto :goto_0

    :cond_0
    iput-object p2, p0, Lcom/kakao/sdk/friend/core/network/model/PickerFriendRelation;->talk:Lcom/kakao/sdk/friend/core/network/model/PickerRelation;

    :goto_0
    return-void

    .array-data 1
    .end array-data
.end method

.method public static final a(Lcom/kakao/sdk/friend/core/network/model/PickerFriendRelation;Lkotlinx/serialization/encoding/CompositeEncoder;Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;)V
    .locals 2

    const-string v0, "self"

    .line 19
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
    iget-object v1, p0, Lcom/kakao/sdk/friend/core/network/model/PickerFriendRelation;->talk:Lcom/kakao/sdk/friend/core/network/model/PickerRelation;

    if-eqz v1, :cond_1

    :goto_0
    sget-object v1, Lcom/kakao/sdk/friend/core/network/model/PickerRelationSerializer;->INSTANCE:Lcom/kakao/sdk/friend/core/network/model/PickerRelationSerializer;

    iget-object p0, p0, Lcom/kakao/sdk/friend/core/network/model/PickerFriendRelation;->talk:Lcom/kakao/sdk/friend/core/network/model/PickerRelation;

    invoke-interface {p1, p2, v0, v1, p0}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_1
    return-void

    nop

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/kakao/sdk/friend/core/network/model/PickerFriendRelation;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/kakao/sdk/friend/core/network/model/PickerFriendRelation;

    iget-object v1, p0, Lcom/kakao/sdk/friend/core/network/model/PickerFriendRelation;->talk:Lcom/kakao/sdk/friend/core/network/model/PickerRelation;

    iget-object p1, p1, Lcom/kakao/sdk/friend/core/network/model/PickerFriendRelation;->talk:Lcom/kakao/sdk/friend/core/network/model/PickerRelation;

    if-eq v1, p1, :cond_2

    return v2

    :cond_2
    return v0

    .array-data 1
    .end array-data
.end method

.method public final hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/kakao/sdk/friend/core/network/model/PickerFriendRelation;->talk:Lcom/kakao/sdk/friend/core/network/model/PickerRelation;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_0
    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/kakao/sdk/friend/core/network/model/PickerFriendRelation;->talk:Lcom/kakao/sdk/friend/core/network/model/PickerRelation;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "PickerFriendRelation(talk="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

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
