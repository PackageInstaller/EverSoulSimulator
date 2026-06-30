.class public final Lcom/kakao/sdk/partner/talk/model/FriendRelation;
.super Ljava/lang/Object;
.source "Friend.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kakao/sdk/partner/talk/model/FriendRelation$$serializer;,
        Lcom/kakao/sdk/partner/talk/model/FriendRelation$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000B\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0087\u0008\u0018\u0000 \u001c2\u00020\u0001:\u0002\u001b\u001cB#\u0008\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u00a2\u0006\u0002\u0010\u0008B\u000f\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0002\u0010\tJ\u000b\u0010\u000c\u001a\u0004\u0018\u00010\u0005H\u00c6\u0003J\u0015\u0010\r\u001a\u00020\u00002\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005H\u00c6\u0001J\u0013\u0010\u000e\u001a\u00020\u000f2\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u0011\u001a\u00020\u0003H\u00d6\u0001J\t\u0010\u0012\u001a\u00020\u0013H\u00d6\u0001J!\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u00002\u0006\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u0019\u001a\u00020\u001aH\u00c7\u0001R\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000b\u00a8\u0006\u001d"
    }
    d2 = {
        "Lcom/kakao/sdk/partner/talk/model/FriendRelation;",
        "",
        "seen1",
        "",
        "talk",
        "Lcom/kakao/sdk/partner/talk/model/Relation;",
        "serializationConstructorMarker",
        "Lkotlinx/serialization/internal/SerializationConstructorMarker;",
        "(ILcom/kakao/sdk/partner/talk/model/Relation;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V",
        "(Lcom/kakao/sdk/partner/talk/model/Relation;)V",
        "getTalk",
        "()Lcom/kakao/sdk/partner/talk/model/Relation;",
        "component1",
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
.field public static final Companion:Lcom/kakao/sdk/partner/talk/model/FriendRelation$Companion;


# instance fields
.field private final talk:Lcom/kakao/sdk/partner/talk/model/Relation;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/kakao/sdk/partner/talk/model/FriendRelation$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/kakao/sdk/partner/talk/model/FriendRelation$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/kakao/sdk/partner/talk/model/FriendRelation;->Companion:Lcom/kakao/sdk/partner/talk/model/FriendRelation$Companion;

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public synthetic constructor <init>(ILcom/kakao/sdk/partner/talk/model/Relation;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V
    .locals 1
    .annotation runtime Lkotlin/Deprecated;
        level = .enum Lkotlin/DeprecationLevel;->HIDDEN:Lkotlin/DeprecationLevel;
        message = "This synthesized declaration should not be used directly"
        replaceWith = .subannotation Lkotlin/ReplaceWith;
            expression = ""
            imports = {}
        .end subannotation
    .end annotation

    and-int/lit8 p3, p1, 0x1

    const/4 v0, 0x1

    if-eq v0, p3, :cond_0

    .line 1569
    sget-object p3, Lcom/kakao/sdk/partner/talk/model/FriendRelation$$serializer;->INSTANCE:Lcom/kakao/sdk/partner/talk/model/FriendRelation$$serializer;

    invoke-virtual {p3}, Lcom/kakao/sdk/partner/talk/model/FriendRelation$$serializer;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object p3

    invoke-static {p1, v0, p3}, Lkotlinx/serialization/internal/PluginExceptionsKt;->throwMissingFieldException(IILkotlinx/serialization/descriptors/SerialDescriptor;)V

    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/kakao/sdk/partner/talk/model/FriendRelation;->talk:Lcom/kakao/sdk/partner/talk/model/Relation;

    return-void

    .array-data 1
    .end array-data
.end method

.method public constructor <init>(Lcom/kakao/sdk/partner/talk/model/Relation;)V
    .locals 0

    .line 1569
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1579
    iput-object p1, p0, Lcom/kakao/sdk/partner/talk/model/FriendRelation;->talk:Lcom/kakao/sdk/partner/talk/model/Relation;

    return-void

    .array-data 1
    .end array-data
.end method

.method public static synthetic copy$default(Lcom/kakao/sdk/partner/talk/model/FriendRelation;Lcom/kakao/sdk/partner/talk/model/Relation;ILjava/lang/Object;)Lcom/kakao/sdk/partner/talk/model/FriendRelation;
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    iget-object p1, p0, Lcom/kakao/sdk/partner/talk/model/FriendRelation;->talk:Lcom/kakao/sdk/partner/talk/model/Relation;

    :cond_0
    invoke-virtual {p0, p1}, Lcom/kakao/sdk/partner/talk/model/FriendRelation;->copy(Lcom/kakao/sdk/partner/talk/model/Relation;)Lcom/kakao/sdk/partner/talk/model/FriendRelation;

    move-result-object p0

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static final write$Self(Lcom/kakao/sdk/partner/talk/model/FriendRelation;Lkotlinx/serialization/encoding/CompositeEncoder;Lkotlinx/serialization/descriptors/SerialDescriptor;)V
    .locals 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "self"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "output"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "serialDesc"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1569
    sget-object v0, Lcom/kakao/sdk/partner/talk/model/RelationSerializer;->INSTANCE:Lcom/kakao/sdk/partner/talk/model/RelationSerializer;

    check-cast v0, Lkotlinx/serialization/SerializationStrategy;

    iget-object p0, p0, Lcom/kakao/sdk/partner/talk/model/FriendRelation;->talk:Lcom/kakao/sdk/partner/talk/model/Relation;

    const/4 v1, 0x0

    invoke-interface {p1, p2, v1, v0, p0}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    return-void

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public final component1()Lcom/kakao/sdk/partner/talk/model/Relation;
    .locals 1

    iget-object v0, p0, Lcom/kakao/sdk/partner/talk/model/FriendRelation;->talk:Lcom/kakao/sdk/partner/talk/model/Relation;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final copy(Lcom/kakao/sdk/partner/talk/model/Relation;)Lcom/kakao/sdk/partner/talk/model/FriendRelation;
    .locals 1

    new-instance v0, Lcom/kakao/sdk/partner/talk/model/FriendRelation;

    invoke-direct {v0, p1}, Lcom/kakao/sdk/partner/talk/model/FriendRelation;-><init>(Lcom/kakao/sdk/partner/talk/model/Relation;)V

    return-object v0

    .array-data 1
    .end array-data
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/kakao/sdk/partner/talk/model/FriendRelation;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/kakao/sdk/partner/talk/model/FriendRelation;

    iget-object v1, p0, Lcom/kakao/sdk/partner/talk/model/FriendRelation;->talk:Lcom/kakao/sdk/partner/talk/model/Relation;

    iget-object p1, p1, Lcom/kakao/sdk/partner/talk/model/FriendRelation;->talk:Lcom/kakao/sdk/partner/talk/model/Relation;

    if-eq v1, p1, :cond_2

    return v2

    :cond_2
    return v0

    .array-data 1
    .end array-data
.end method

.method public final getTalk()Lcom/kakao/sdk/partner/talk/model/Relation;
    .locals 1

    .line 1579
    iget-object v0, p0, Lcom/kakao/sdk/partner/talk/model/FriendRelation;->talk:Lcom/kakao/sdk/partner/talk/model/Relation;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/kakao/sdk/partner/talk/model/FriendRelation;->talk:Lcom/kakao/sdk/partner/talk/model/Relation;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/kakao/sdk/partner/talk/model/Relation;->hashCode()I

    move-result v0

    :goto_0
    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/kakao/sdk/partner/talk/model/FriendRelation;->talk:Lcom/kakao/sdk/partner/talk/model/Relation;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "FriendRelation(talk="

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
