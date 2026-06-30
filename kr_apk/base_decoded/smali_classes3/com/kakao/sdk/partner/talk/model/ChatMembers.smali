.class public final Lcom/kakao/sdk/partner/talk/model/ChatMembers;
.super Ljava/lang/Object;
.source "ChatMembers.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kakao/sdk/partner/talk/model/ChatMembers$Type;,
        Lcom/kakao/sdk/partner/talk/model/ChatMembers$TypeSerializer;,
        Lcom/kakao/sdk/partner/talk/model/ChatMembers$$serializer;,
        Lcom/kakao/sdk/partner/talk/model/ChatMembers$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000T\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0018\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0087\u0008\u0018\u0000 42\u00020\u0001:\u00043456BU\u0008\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\n\u0008\u0001\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\n\u0008\u0001\u0010\u0005\u001a\u0004\u0018\u00010\u0003\u0012\u000e\u0010\u0006\u001a\n\u0012\u0004\u0012\u00020\u0008\u0018\u00010\u0007\u0012\u0008\u0010\t\u001a\u0004\u0018\u00010\n\u0012\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u000c\u0012\u0008\u0010\r\u001a\u0004\u0018\u00010\u000e\u00a2\u0006\u0002\u0010\u000fB;\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0003\u0012\u000e\u0010\u0006\u001a\n\u0012\u0004\u0012\u00020\u0008\u0018\u00010\u0007\u0012\u0006\u0010\t\u001a\u00020\n\u0012\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u000c\u00a2\u0006\u0002\u0010\u0010J\u0010\u0010\u001f\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003\u00a2\u0006\u0002\u0010\u0014J\u0010\u0010 \u001a\u0004\u0018\u00010\u0003H\u00c6\u0003\u00a2\u0006\u0002\u0010\u0014J\u0011\u0010!\u001a\n\u0012\u0004\u0012\u00020\u0008\u0018\u00010\u0007H\u00c6\u0003J\t\u0010\"\u001a\u00020\nH\u00c6\u0003J\u0010\u0010#\u001a\u0004\u0018\u00010\u000cH\u00c6\u0003\u00a2\u0006\u0002\u0010\u001bJN\u0010$\u001a\u00020\u00002\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00032\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00032\u0010\u0008\u0002\u0010\u0006\u001a\n\u0012\u0004\u0012\u00020\u0008\u0018\u00010\u00072\u0008\u0008\u0002\u0010\t\u001a\u00020\n2\n\u0008\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u000cH\u00c6\u0001\u00a2\u0006\u0002\u0010%J\u0013\u0010&\u001a\u00020\'2\u0008\u0010(\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010)\u001a\u00020\u0003H\u00d6\u0001J\t\u0010*\u001a\u00020+H\u00d6\u0001J!\u0010,\u001a\u00020-2\u0006\u0010.\u001a\u00020\u00002\u0006\u0010/\u001a\u0002002\u0006\u00101\u001a\u000202H\u00c7\u0001R \u0010\u0005\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004\u00a2\u0006\u0010\n\u0002\u0010\u0015\u0012\u0004\u0008\u0011\u0010\u0012\u001a\u0004\u0008\u0013\u0010\u0014R \u0010\u0004\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004\u00a2\u0006\u0010\n\u0002\u0010\u0015\u0012\u0004\u0008\u0016\u0010\u0012\u001a\u0004\u0008\u0017\u0010\u0014R\u0019\u0010\u0006\u001a\n\u0012\u0004\u0012\u00020\u0008\u0018\u00010\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0018\u0010\u0019R\u0015\u0010\u000b\u001a\u0004\u0018\u00010\u000c\u00a2\u0006\n\n\u0002\u0010\u001c\u001a\u0004\u0008\u001a\u0010\u001bR\u0011\u0010\t\u001a\u00020\n\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001d\u0010\u001e\u00a8\u00067"
    }
    d2 = {
        "Lcom/kakao/sdk/partner/talk/model/ChatMembers;",
        "",
        "seen1",
        "",
        "activeMembersCount",
        "activeFriendsCount",
        "members",
        "",
        "Lcom/kakao/sdk/partner/talk/model/ChatMember;",
        "type",
        "Lcom/kakao/sdk/partner/talk/model/ChatMembers$Type;",
        "token",
        "",
        "serializationConstructorMarker",
        "Lkotlinx/serialization/internal/SerializationConstructorMarker;",
        "(ILjava/lang/Integer;Ljava/lang/Integer;Ljava/util/List;Lcom/kakao/sdk/partner/talk/model/ChatMembers$Type;Ljava/lang/Long;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V",
        "(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/util/List;Lcom/kakao/sdk/partner/talk/model/ChatMembers$Type;Ljava/lang/Long;)V",
        "getActiveFriendsCount$annotations",
        "()V",
        "getActiveFriendsCount",
        "()Ljava/lang/Integer;",
        "Ljava/lang/Integer;",
        "getActiveMembersCount$annotations",
        "getActiveMembersCount",
        "getMembers",
        "()Ljava/util/List;",
        "getToken",
        "()Ljava/lang/Long;",
        "Ljava/lang/Long;",
        "getType",
        "()Lcom/kakao/sdk/partner/talk/model/ChatMembers$Type;",
        "component1",
        "component2",
        "component3",
        "component4",
        "component5",
        "copy",
        "(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/util/List;Lcom/kakao/sdk/partner/talk/model/ChatMembers$Type;Ljava/lang/Long;)Lcom/kakao/sdk/partner/talk/model/ChatMembers;",
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
        "Type",
        "TypeSerializer",
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
.field public static final Companion:Lcom/kakao/sdk/partner/talk/model/ChatMembers$Companion;


# instance fields
.field private final activeFriendsCount:Ljava/lang/Integer;

.field private final activeMembersCount:Ljava/lang/Integer;

.field private final members:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/kakao/sdk/partner/talk/model/ChatMember;",
            ">;"
        }
    .end annotation
.end field

.field private final token:Ljava/lang/Long;

.field private final type:Lcom/kakao/sdk/partner/talk/model/ChatMembers$Type;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/kakao/sdk/partner/talk/model/ChatMembers$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/kakao/sdk/partner/talk/model/ChatMembers$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/kakao/sdk/partner/talk/model/ChatMembers;->Companion:Lcom/kakao/sdk/partner/talk/model/ChatMembers$Companion;

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public synthetic constructor <init>(ILjava/lang/Integer;Ljava/lang/Integer;Ljava/util/List;Lcom/kakao/sdk/partner/talk/model/ChatMembers$Type;Ljava/lang/Long;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V
    .locals 1
    .param p2    # Ljava/lang/Integer;
        .annotation runtime Lkotlinx/serialization/SerialName;
            value = "active_members_count"
        .end annotation
    .end param
    .param p3    # Ljava/lang/Integer;
        .annotation runtime Lkotlinx/serialization/SerialName;
            value = "active_friends_count"
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

    and-int/lit8 p7, p1, 0x1f

    const/16 v0, 0x1f

    if-eq v0, p7, :cond_0

    .line 339
    sget-object p7, Lcom/kakao/sdk/partner/talk/model/ChatMembers$$serializer;->INSTANCE:Lcom/kakao/sdk/partner/talk/model/ChatMembers$$serializer;

    invoke-virtual {p7}, Lcom/kakao/sdk/partner/talk/model/ChatMembers$$serializer;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object p7

    invoke-static {p1, v0, p7}, Lkotlinx/serialization/internal/PluginExceptionsKt;->throwMissingFieldException(IILkotlinx/serialization/descriptors/SerialDescriptor;)V

    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/kakao/sdk/partner/talk/model/ChatMembers;->activeMembersCount:Ljava/lang/Integer;

    iput-object p3, p0, Lcom/kakao/sdk/partner/talk/model/ChatMembers;->activeFriendsCount:Ljava/lang/Integer;

    iput-object p4, p0, Lcom/kakao/sdk/partner/talk/model/ChatMembers;->members:Ljava/util/List;

    iput-object p5, p0, Lcom/kakao/sdk/partner/talk/model/ChatMembers;->type:Lcom/kakao/sdk/partner/talk/model/ChatMembers$Type;

    iput-object p6, p0, Lcom/kakao/sdk/partner/talk/model/ChatMembers;->token:Ljava/lang/Long;

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public constructor <init>(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/util/List;Lcom/kakao/sdk/partner/talk/model/ChatMembers$Type;Ljava/lang/Long;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Lcom/kakao/sdk/partner/talk/model/ChatMember;",
            ">;",
            "Lcom/kakao/sdk/partner/talk/model/ChatMembers$Type;",
            "Ljava/lang/Long;",
            ")V"
        }
    .end annotation

    const-string/jumbo v0, "type"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 339
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 359
    iput-object p1, p0, Lcom/kakao/sdk/partner/talk/model/ChatMembers;->activeMembersCount:Ljava/lang/Integer;

    .line 369
    iput-object p2, p0, Lcom/kakao/sdk/partner/talk/model/ChatMembers;->activeFriendsCount:Ljava/lang/Integer;

    .line 379
    iput-object p3, p0, Lcom/kakao/sdk/partner/talk/model/ChatMembers;->members:Ljava/util/List;

    .line 389
    iput-object p4, p0, Lcom/kakao/sdk/partner/talk/model/ChatMembers;->type:Lcom/kakao/sdk/partner/talk/model/ChatMembers$Type;

    .line 399
    iput-object p5, p0, Lcom/kakao/sdk/partner/talk/model/ChatMembers;->token:Ljava/lang/Long;

    return-void

    .array-data 1
    .end array-data
.end method

.method public static synthetic copy$default(Lcom/kakao/sdk/partner/talk/model/ChatMembers;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/util/List;Lcom/kakao/sdk/partner/talk/model/ChatMembers$Type;Ljava/lang/Long;ILjava/lang/Object;)Lcom/kakao/sdk/partner/talk/model/ChatMembers;
    .locals 3

    and-int/lit8 p7, p6, 0x1

    if-eqz p7, :cond_0

    iget-object p1, p0, Lcom/kakao/sdk/partner/talk/model/ChatMembers;->activeMembersCount:Ljava/lang/Integer;

    :cond_0
    and-int/lit8 p7, p6, 0x2

    if-eqz p7, :cond_1

    iget-object p2, p0, Lcom/kakao/sdk/partner/talk/model/ChatMembers;->activeFriendsCount:Ljava/lang/Integer;

    :cond_1
    move-object p7, p2

    and-int/lit8 p2, p6, 0x4

    if-eqz p2, :cond_2

    iget-object p3, p0, Lcom/kakao/sdk/partner/talk/model/ChatMembers;->members:Ljava/util/List;

    :cond_2
    move-object v0, p3

    and-int/lit8 p2, p6, 0x8

    if-eqz p2, :cond_3

    iget-object p4, p0, Lcom/kakao/sdk/partner/talk/model/ChatMembers;->type:Lcom/kakao/sdk/partner/talk/model/ChatMembers$Type;

    :cond_3
    move-object v1, p4

    and-int/lit8 p2, p6, 0x10

    if-eqz p2, :cond_4

    iget-object p5, p0, Lcom/kakao/sdk/partner/talk/model/ChatMembers;->token:Ljava/lang/Long;

    :cond_4
    move-object v2, p5

    move-object p2, p0

    move-object p3, p1

    move-object p4, p7

    move-object p5, v0

    move-object p6, v1

    move-object p7, v2

    invoke-virtual/range {p2 .. p7}, Lcom/kakao/sdk/partner/talk/model/ChatMembers;->copy(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/util/List;Lcom/kakao/sdk/partner/talk/model/ChatMembers$Type;Ljava/lang/Long;)Lcom/kakao/sdk/partner/talk/model/ChatMembers;

    move-result-object p0

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static synthetic getActiveFriendsCount$annotations()V
    .locals 0
    .annotation runtime Lkotlinx/serialization/SerialName;
        value = "active_friends_count"
    .end annotation

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public static synthetic getActiveMembersCount$annotations()V
    .locals 0
    .annotation runtime Lkotlinx/serialization/SerialName;
        value = "active_members_count"
    .end annotation

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public static final write$Self(Lcom/kakao/sdk/partner/talk/model/ChatMembers;Lkotlinx/serialization/encoding/CompositeEncoder;Lkotlinx/serialization/descriptors/SerialDescriptor;)V
    .locals 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "self"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "output"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "serialDesc"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 339
    sget-object v0, Lkotlinx/serialization/internal/IntSerializer;->INSTANCE:Lkotlinx/serialization/internal/IntSerializer;

    check-cast v0, Lkotlinx/serialization/SerializationStrategy;

    iget-object v1, p0, Lcom/kakao/sdk/partner/talk/model/ChatMembers;->activeMembersCount:Ljava/lang/Integer;

    const/4 v2, 0x0

    invoke-interface {p1, p2, v2, v0, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    sget-object v0, Lkotlinx/serialization/internal/IntSerializer;->INSTANCE:Lkotlinx/serialization/internal/IntSerializer;

    check-cast v0, Lkotlinx/serialization/SerializationStrategy;

    iget-object v1, p0, Lcom/kakao/sdk/partner/talk/model/ChatMembers;->activeFriendsCount:Ljava/lang/Integer;

    const/4 v2, 0x1

    invoke-interface {p1, p2, v2, v0, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    new-instance v0, Lkotlinx/serialization/internal/ArrayListSerializer;

    sget-object v1, Lcom/kakao/sdk/partner/talk/model/ChatMember$$serializer;->INSTANCE:Lcom/kakao/sdk/partner/talk/model/ChatMember$$serializer;

    check-cast v1, Lkotlinx/serialization/KSerializer;

    invoke-direct {v0, v1}, Lkotlinx/serialization/internal/ArrayListSerializer;-><init>(Lkotlinx/serialization/KSerializer;)V

    check-cast v0, Lkotlinx/serialization/SerializationStrategy;

    iget-object v1, p0, Lcom/kakao/sdk/partner/talk/model/ChatMembers;->members:Ljava/util/List;

    const/4 v2, 0x2

    invoke-interface {p1, p2, v2, v0, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    sget-object v0, Lcom/kakao/sdk/partner/talk/model/ChatMembers$TypeSerializer;->INSTANCE:Lcom/kakao/sdk/partner/talk/model/ChatMembers$TypeSerializer;

    check-cast v0, Lkotlinx/serialization/SerializationStrategy;

    iget-object v1, p0, Lcom/kakao/sdk/partner/talk/model/ChatMembers;->type:Lcom/kakao/sdk/partner/talk/model/ChatMembers$Type;

    const/4 v2, 0x3

    invoke-interface {p1, p2, v2, v0, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    sget-object v0, Lkotlinx/serialization/internal/LongSerializer;->INSTANCE:Lkotlinx/serialization/internal/LongSerializer;

    check-cast v0, Lkotlinx/serialization/SerializationStrategy;

    iget-object p0, p0, Lcom/kakao/sdk/partner/talk/model/ChatMembers;->token:Ljava/lang/Long;

    const/4 v1, 0x4

    invoke-interface {p1, p2, v1, v0, p0}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    return-void

    nop

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public final component1()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcom/kakao/sdk/partner/talk/model/ChatMembers;->activeMembersCount:Ljava/lang/Integer;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final component2()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcom/kakao/sdk/partner/talk/model/ChatMembers;->activeFriendsCount:Ljava/lang/Integer;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final component3()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/kakao/sdk/partner/talk/model/ChatMember;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/kakao/sdk/partner/talk/model/ChatMembers;->members:Ljava/util/List;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final component4()Lcom/kakao/sdk/partner/talk/model/ChatMembers$Type;
    .locals 1

    iget-object v0, p0, Lcom/kakao/sdk/partner/talk/model/ChatMembers;->type:Lcom/kakao/sdk/partner/talk/model/ChatMembers$Type;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final component5()Ljava/lang/Long;
    .locals 1

    iget-object v0, p0, Lcom/kakao/sdk/partner/talk/model/ChatMembers;->token:Ljava/lang/Long;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final copy(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/util/List;Lcom/kakao/sdk/partner/talk/model/ChatMembers$Type;Ljava/lang/Long;)Lcom/kakao/sdk/partner/talk/model/ChatMembers;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Lcom/kakao/sdk/partner/talk/model/ChatMember;",
            ">;",
            "Lcom/kakao/sdk/partner/talk/model/ChatMembers$Type;",
            "Ljava/lang/Long;",
            ")",
            "Lcom/kakao/sdk/partner/talk/model/ChatMembers;"
        }
    .end annotation

    const-string/jumbo v0, "type"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/kakao/sdk/partner/talk/model/ChatMembers;

    move-object v1, v0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v1 .. v6}, Lcom/kakao/sdk/partner/talk/model/ChatMembers;-><init>(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/util/List;Lcom/kakao/sdk/partner/talk/model/ChatMembers$Type;Ljava/lang/Long;)V

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
    instance-of v1, p1, Lcom/kakao/sdk/partner/talk/model/ChatMembers;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/kakao/sdk/partner/talk/model/ChatMembers;

    iget-object v1, p0, Lcom/kakao/sdk/partner/talk/model/ChatMembers;->activeMembersCount:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/kakao/sdk/partner/talk/model/ChatMembers;->activeMembersCount:Ljava/lang/Integer;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/kakao/sdk/partner/talk/model/ChatMembers;->activeFriendsCount:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/kakao/sdk/partner/talk/model/ChatMembers;->activeFriendsCount:Ljava/lang/Integer;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/kakao/sdk/partner/talk/model/ChatMembers;->members:Ljava/util/List;

    iget-object v3, p1, Lcom/kakao/sdk/partner/talk/model/ChatMembers;->members:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/kakao/sdk/partner/talk/model/ChatMembers;->type:Lcom/kakao/sdk/partner/talk/model/ChatMembers$Type;

    iget-object v3, p1, Lcom/kakao/sdk/partner/talk/model/ChatMembers;->type:Lcom/kakao/sdk/partner/talk/model/ChatMembers$Type;

    if-eq v1, v3, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lcom/kakao/sdk/partner/talk/model/ChatMembers;->token:Ljava/lang/Long;

    iget-object p1, p1, Lcom/kakao/sdk/partner/talk/model/ChatMembers;->token:Ljava/lang/Long;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    return v2

    :cond_6
    return v0

    .array-data 1
    .end array-data
.end method

.method public final getActiveFriendsCount()Ljava/lang/Integer;
    .locals 1

    .line 369
    iget-object v0, p0, Lcom/kakao/sdk/partner/talk/model/ChatMembers;->activeFriendsCount:Ljava/lang/Integer;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final getActiveMembersCount()Ljava/lang/Integer;
    .locals 1

    .line 359
    iget-object v0, p0, Lcom/kakao/sdk/partner/talk/model/ChatMembers;->activeMembersCount:Ljava/lang/Integer;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final getMembers()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/kakao/sdk/partner/talk/model/ChatMember;",
            ">;"
        }
    .end annotation

    .line 379
    iget-object v0, p0, Lcom/kakao/sdk/partner/talk/model/ChatMembers;->members:Ljava/util/List;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final getToken()Ljava/lang/Long;
    .locals 1

    .line 399
    iget-object v0, p0, Lcom/kakao/sdk/partner/talk/model/ChatMembers;->token:Ljava/lang/Long;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final getType()Lcom/kakao/sdk/partner/talk/model/ChatMembers$Type;
    .locals 1

    .line 389
    iget-object v0, p0, Lcom/kakao/sdk/partner/talk/model/ChatMembers;->type:Lcom/kakao/sdk/partner/talk/model/ChatMembers$Type;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/kakao/sdk/partner/talk/model/ChatMembers;->activeMembersCount:Ljava/lang/Integer;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/kakao/sdk/partner/talk/model/ChatMembers;->activeFriendsCount:Ljava/lang/Integer;

    if-nez v2, :cond_1

    move v2, v1

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/kakao/sdk/partner/talk/model/ChatMembers;->members:Ljava/util/List;

    if-nez v2, :cond_2

    move v2, v1

    goto :goto_2

    :cond_2
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/kakao/sdk/partner/talk/model/ChatMembers;->type:Lcom/kakao/sdk/partner/talk/model/ChatMembers$Type;

    invoke-virtual {v2}, Lcom/kakao/sdk/partner/talk/model/ChatMembers$Type;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/kakao/sdk/partner/talk/model/ChatMembers;->token:Ljava/lang/Long;

    if-nez v2, :cond_3

    goto :goto_3

    :cond_3
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_3
    add-int/2addr v0, v1

    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    iget-object v0, p0, Lcom/kakao/sdk/partner/talk/model/ChatMembers;->activeMembersCount:Ljava/lang/Integer;

    iget-object v1, p0, Lcom/kakao/sdk/partner/talk/model/ChatMembers;->activeFriendsCount:Ljava/lang/Integer;

    iget-object v2, p0, Lcom/kakao/sdk/partner/talk/model/ChatMembers;->members:Ljava/util/List;

    iget-object v3, p0, Lcom/kakao/sdk/partner/talk/model/ChatMembers;->type:Lcom/kakao/sdk/partner/talk/model/ChatMembers$Type;

    iget-object v4, p0, Lcom/kakao/sdk/partner/talk/model/ChatMembers;->token:Ljava/lang/Long;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "ChatMembers(activeMembersCount="

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
