.class public final Lcom/kakao/sdk/friend/core/network/model/PickerChatMemberInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kakao/sdk/friend/core/network/model/PickerChatMemberInfo$$serializer;,
        Lcom/kakao/sdk/friend/core/network/model/PickerChatMemberInfo$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0008\u0087\u0008\u0018\u0000 \u000f2\u00020\u0001:\u0002\u0010\u000fR \u0010\u0003\u001a\u00020\u00028\u0006X\u0087\u0004\u00a2\u0006\u0012\n\u0004\u0008\u0003\u0010\u0004\u0012\u0004\u0008\u0007\u0010\u0008\u001a\u0004\u0008\u0005\u0010\u0006R \u0010\n\u001a\u00020\t8\u0006X\u0087\u0004\u00a2\u0006\u0012\n\u0004\u0008\n\u0010\u000b\u0012\u0004\u0008\u000e\u0010\u0008\u001a\u0004\u0008\u000c\u0010\r\u00a8\u0006\u0011"
    }
    d2 = {
        "Lcom/kakao/sdk/friend/core/network/model/PickerChatMemberInfo;",
        "",
        "",
        "displayAllProfile",
        "Z",
        "b",
        "()Z",
        "getDisplayAllProfile$annotations",
        "()V",
        "Lcom/kakao/sdk/friend/core/network/model/PickerChatMembers;",
        "chatMembers",
        "Lcom/kakao/sdk/friend/core/network/model/PickerChatMembers;",
        "a",
        "()Lcom/kakao/sdk/friend/core/network/model/PickerChatMembers;",
        "getChatMembers$annotations",
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
.field public static final Companion:Lcom/kakao/sdk/friend/core/network/model/PickerChatMemberInfo$Companion;


# instance fields
.field private final chatMembers:Lcom/kakao/sdk/friend/core/network/model/PickerChatMembers;

.field private final displayAllProfile:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/kakao/sdk/friend/core/network/model/PickerChatMemberInfo$Companion;

    invoke-direct {v0}, Lcom/kakao/sdk/friend/core/network/model/PickerChatMemberInfo$Companion;-><init>()V

    sput-object v0, Lcom/kakao/sdk/friend/core/network/model/PickerChatMemberInfo;->Companion:Lcom/kakao/sdk/friend/core/network/model/PickerChatMemberInfo$Companion;

    return-void

    .array-data 1
    .end array-data
.end method

.method public synthetic constructor <init>(IZLcom/kakao/sdk/friend/core/network/model/PickerChatMembers;)V
    .locals 2

    and-int/lit8 v0, p1, 0x3

    const/4 v1, 0x3

    if-eq v1, v0, :cond_0

    .line 19
    sget-object v0, Lcom/kakao/sdk/friend/core/network/model/PickerChatMemberInfo$$serializer;->INSTANCE:Lcom/kakao/sdk/friend/core/network/model/PickerChatMemberInfo$$serializer;

    invoke-virtual {v0}, Lcom/kakao/sdk/friend/core/network/model/PickerChatMemberInfo$$serializer;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object v0

    invoke-static {p1, v1, v0}, Lkotlinx/serialization/internal/PluginExceptionsKt;->throwMissingFieldException(IILkotlinx/serialization/descriptors/SerialDescriptor;)V

    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p2, p0, Lcom/kakao/sdk/friend/core/network/model/PickerChatMemberInfo;->displayAllProfile:Z

    iput-object p3, p0, Lcom/kakao/sdk/friend/core/network/model/PickerChatMemberInfo;->chatMembers:Lcom/kakao/sdk/friend/core/network/model/PickerChatMembers;

    return-void

    .array-data 1
    .end array-data
.end method

.method public static final a(Lcom/kakao/sdk/friend/core/network/model/PickerChatMemberInfo;Lkotlinx/serialization/encoding/CompositeEncoder;Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;)V
    .locals 2

    const-string v0, "self"

    .line 29
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "output"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "serialDesc"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/kakao/sdk/friend/core/network/model/PickerChatMemberInfo;->displayAllProfile:Z

    const/4 v1, 0x0

    invoke-interface {p1, p2, v1, v0}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeBooleanElement(Lkotlinx/serialization/descriptors/SerialDescriptor;IZ)V

    sget-object v0, Lcom/kakao/sdk/friend/core/network/model/PickerChatMembers$$serializer;->INSTANCE:Lcom/kakao/sdk/friend/core/network/model/PickerChatMembers$$serializer;

    iget-object p0, p0, Lcom/kakao/sdk/friend/core/network/model/PickerChatMemberInfo;->chatMembers:Lcom/kakao/sdk/friend/core/network/model/PickerChatMembers;

    const/4 v1, 0x1

    invoke-interface {p1, p2, v1, v0, p0}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    return-void

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public final a()Lcom/kakao/sdk/friend/core/network/model/PickerChatMembers;
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/kakao/sdk/friend/core/network/model/PickerChatMemberInfo;->chatMembers:Lcom/kakao/sdk/friend/core/network/model/PickerChatMembers;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final b()Z
    .locals 1

    iget-boolean v0, p0, Lcom/kakao/sdk/friend/core/network/model/PickerChatMemberInfo;->displayAllProfile:Z

    return v0

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
    instance-of v1, p1, Lcom/kakao/sdk/friend/core/network/model/PickerChatMemberInfo;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/kakao/sdk/friend/core/network/model/PickerChatMemberInfo;

    iget-boolean v1, p0, Lcom/kakao/sdk/friend/core/network/model/PickerChatMemberInfo;->displayAllProfile:Z

    iget-boolean v3, p1, Lcom/kakao/sdk/friend/core/network/model/PickerChatMemberInfo;->displayAllProfile:Z

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/kakao/sdk/friend/core/network/model/PickerChatMemberInfo;->chatMembers:Lcom/kakao/sdk/friend/core/network/model/PickerChatMembers;

    iget-object p1, p1, Lcom/kakao/sdk/friend/core/network/model/PickerChatMemberInfo;->chatMembers:Lcom/kakao/sdk/friend/core/network/model/PickerChatMembers;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    return v2

    :cond_3
    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final hashCode()I
    .locals 2

    iget-boolean v0, p0, Lcom/kakao/sdk/friend/core/network/model/PickerChatMemberInfo;->displayAllProfile:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :cond_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/kakao/sdk/friend/core/network/model/PickerChatMemberInfo;->chatMembers:Lcom/kakao/sdk/friend/core/network/model/PickerChatMembers;

    invoke-virtual {v1}, Lcom/kakao/sdk/friend/core/network/model/PickerChatMembers;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    return v1

    nop

    .array-data 1
    .end array-data
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    iget-boolean v0, p0, Lcom/kakao/sdk/friend/core/network/model/PickerChatMemberInfo;->displayAllProfile:Z

    iget-object v1, p0, Lcom/kakao/sdk/friend/core/network/model/PickerChatMemberInfo;->chatMembers:Lcom/kakao/sdk/friend/core/network/model/PickerChatMembers;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "PickerChatMemberInfo(displayAllProfile="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", chatMembers="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

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
