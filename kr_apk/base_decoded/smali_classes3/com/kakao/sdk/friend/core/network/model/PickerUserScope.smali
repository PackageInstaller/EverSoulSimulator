.class public final Lcom/kakao/sdk/friend/core/network/model/PickerUserScope;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kakao/sdk/friend/core/network/model/PickerUserScope$$serializer;,
        Lcom/kakao/sdk/friend/core/network/model/PickerUserScope$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\t\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0002\u0008\u0010\u0008\u0087\u0008\u0018\u0000 \u00152\u00020\u0001:\u0002\u0016\u0015R\u0017\u0010\u0003\u001a\u00020\u00028\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0003\u0010\u0004\u001a\u0004\u0008\u0005\u0010\u0006R \u0010\u0008\u001a\u00020\u00078\u0006X\u0087\u0004\u00a2\u0006\u0012\n\u0004\u0008\u0008\u0010\t\u0012\u0004\u0008\u000c\u0010\r\u001a\u0004\u0008\n\u0010\u000bR \u0010\u000e\u001a\u00020\u00078\u0006X\u0087\u0004\u00a2\u0006\u0012\n\u0004\u0008\u000e\u0010\t\u0012\u0004\u0008\u0010\u0010\r\u001a\u0004\u0008\u000f\u0010\u000bR\u0019\u0010\u0011\u001a\u0004\u0018\u00010\u00078\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0011\u0010\u0012\u001a\u0004\u0008\u0013\u0010\u0014\u00a8\u0006\u0017"
    }
    d2 = {
        "Lcom/kakao/sdk/friend/core/network/model/PickerUserScope;",
        "",
        "",
        "id",
        "J",
        "b",
        "()J",
        "",
        "profileNickname",
        "Z",
        "d",
        "()Z",
        "getProfileNickname$annotations",
        "()V",
        "profileImage",
        "c",
        "getProfileImage$annotations",
        "friends",
        "Ljava/lang/Boolean;",
        "a",
        "()Ljava/lang/Boolean;",
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
.field public static final Companion:Lcom/kakao/sdk/friend/core/network/model/PickerUserScope$Companion;


# instance fields
.field private final friends:Ljava/lang/Boolean;

.field private final id:J

.field private final profileImage:Z

.field private final profileNickname:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/kakao/sdk/friend/core/network/model/PickerUserScope$Companion;

    invoke-direct {v0}, Lcom/kakao/sdk/friend/core/network/model/PickerUserScope$Companion;-><init>()V

    sput-object v0, Lcom/kakao/sdk/friend/core/network/model/PickerUserScope;->Companion:Lcom/kakao/sdk/friend/core/network/model/PickerUserScope$Companion;

    return-void

    .array-data 1
    .end array-data
.end method

.method public synthetic constructor <init>(IJZZLjava/lang/Boolean;)V
    .locals 2

    and-int/lit8 v0, p1, 0x7

    const/4 v1, 0x7

    if-eq v1, v0, :cond_0

    .line 19
    sget-object v0, Lcom/kakao/sdk/friend/core/network/model/PickerUserScope$$serializer;->INSTANCE:Lcom/kakao/sdk/friend/core/network/model/PickerUserScope$$serializer;

    invoke-virtual {v0}, Lcom/kakao/sdk/friend/core/network/model/PickerUserScope$$serializer;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object v0

    invoke-static {p1, v1, v0}, Lkotlinx/serialization/internal/PluginExceptionsKt;->throwMissingFieldException(IILkotlinx/serialization/descriptors/SerialDescriptor;)V

    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p2, p0, Lcom/kakao/sdk/friend/core/network/model/PickerUserScope;->id:J

    iput-boolean p4, p0, Lcom/kakao/sdk/friend/core/network/model/PickerUserScope;->profileNickname:Z

    iput-boolean p5, p0, Lcom/kakao/sdk/friend/core/network/model/PickerUserScope;->profileImage:Z

    and-int/lit8 p1, p1, 0x8

    if-nez p1, :cond_1

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/kakao/sdk/friend/core/network/model/PickerUserScope;->friends:Ljava/lang/Boolean;

    goto :goto_0

    :cond_1
    iput-object p6, p0, Lcom/kakao/sdk/friend/core/network/model/PickerUserScope;->friends:Ljava/lang/Boolean;

    :goto_0
    return-void

    .array-data 1
    .end array-data
.end method

.method public static final a(Lcom/kakao/sdk/friend/core/network/model/PickerUserScope;Lkotlinx/serialization/encoding/CompositeEncoder;Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;)V
    .locals 3

    const-string v0, "self"

    .line 29
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "output"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "serialDesc"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/kakao/sdk/friend/core/network/model/PickerUserScope;->id:J

    const/4 v2, 0x0

    invoke-interface {p1, p2, v2, v0, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeLongElement(Lkotlinx/serialization/descriptors/SerialDescriptor;IJ)V

    iget-boolean v0, p0, Lcom/kakao/sdk/friend/core/network/model/PickerUserScope;->profileNickname:Z

    const/4 v1, 0x1

    invoke-interface {p1, p2, v1, v0}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeBooleanElement(Lkotlinx/serialization/descriptors/SerialDescriptor;IZ)V

    iget-boolean v0, p0, Lcom/kakao/sdk/friend/core/network/model/PickerUserScope;->profileImage:Z

    const/4 v1, 0x2

    invoke-interface {p1, p2, v1, v0}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeBooleanElement(Lkotlinx/serialization/descriptors/SerialDescriptor;IZ)V

    const/4 v0, 0x3

    invoke-interface {p1, p2, v0}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/kakao/sdk/friend/core/network/model/PickerUserScope;->friends:Ljava/lang/Boolean;

    if-eqz v1, :cond_1

    :goto_0
    sget-object v1, Lkotlinx/serialization/internal/BooleanSerializer;->INSTANCE:Lkotlinx/serialization/internal/BooleanSerializer;

    iget-object p0, p0, Lcom/kakao/sdk/friend/core/network/model/PickerUserScope;->friends:Ljava/lang/Boolean;

    invoke-interface {p1, p2, v0, v1, p0}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_1
    return-void

    nop

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public final a()Ljava/lang/Boolean;
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/kakao/sdk/friend/core/network/model/PickerUserScope;->friends:Ljava/lang/Boolean;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final b()J
    .locals 2

    iget-wide v0, p0, Lcom/kakao/sdk/friend/core/network/model/PickerUserScope;->id:J

    return-wide v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final c()Z
    .locals 1

    iget-boolean v0, p0, Lcom/kakao/sdk/friend/core/network/model/PickerUserScope;->profileImage:Z

    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final d()Z
    .locals 1

    iget-boolean v0, p0, Lcom/kakao/sdk/friend/core/network/model/PickerUserScope;->profileNickname:Z

    return v0

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
    instance-of v1, p1, Lcom/kakao/sdk/friend/core/network/model/PickerUserScope;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/kakao/sdk/friend/core/network/model/PickerUserScope;

    iget-wide v3, p0, Lcom/kakao/sdk/friend/core/network/model/PickerUserScope;->id:J

    iget-wide v5, p1, Lcom/kakao/sdk/friend/core/network/model/PickerUserScope;->id:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_2

    return v2

    :cond_2
    iget-boolean v1, p0, Lcom/kakao/sdk/friend/core/network/model/PickerUserScope;->profileNickname:Z

    iget-boolean v3, p1, Lcom/kakao/sdk/friend/core/network/model/PickerUserScope;->profileNickname:Z

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget-boolean v1, p0, Lcom/kakao/sdk/friend/core/network/model/PickerUserScope;->profileImage:Z

    iget-boolean v3, p1, Lcom/kakao/sdk/friend/core/network/model/PickerUserScope;->profileImage:Z

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/kakao/sdk/friend/core/network/model/PickerUserScope;->friends:Ljava/lang/Boolean;

    iget-object p1, p1, Lcom/kakao/sdk/friend/core/network/model/PickerUserScope;->friends:Ljava/lang/Boolean;

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

.method public final hashCode()I
    .locals 3

    iget-wide v0, p0, Lcom/kakao/sdk/friend/core/network/model/PickerUserScope;->id:J

    invoke-static {v0, v1}, Ljava/lang/Long;->hashCode(J)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/kakao/sdk/friend/core/network/model/PickerUserScope;->profileNickname:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    move v1, v2

    :cond_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/kakao/sdk/friend/core/network/model/PickerUserScope;->profileImage:Z

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    move v2, v1

    :goto_0
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/kakao/sdk/friend/core/network/model/PickerUserScope;->friends:Ljava/lang/Boolean;

    if-nez v1, :cond_2

    const/4 v1, 0x0

    goto :goto_1

    :cond_2
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_1
    add-int/2addr v0, v1

    return v0

    .array-data 1
    .end array-data
.end method

.method public final toString()Ljava/lang/String;
    .locals 7

    iget-wide v0, p0, Lcom/kakao/sdk/friend/core/network/model/PickerUserScope;->id:J

    iget-boolean v2, p0, Lcom/kakao/sdk/friend/core/network/model/PickerUserScope;->profileNickname:Z

    iget-boolean v3, p0, Lcom/kakao/sdk/friend/core/network/model/PickerUserScope;->profileImage:Z

    iget-object v4, p0, Lcom/kakao/sdk/friend/core/network/model/PickerUserScope;->friends:Ljava/lang/Boolean;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "PickerUserScope(id="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", profileNickname="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", profileImage="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", friends="

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
