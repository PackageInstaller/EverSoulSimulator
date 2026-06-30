.class public final Lcom/kakao/sdk/partner/talk/model/PartnerFriendsContext;
.super Ljava/lang/Object;
.source "Friend.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kakao/sdk/partner/talk/model/PartnerFriendsContext$$serializer;,
        Lcom/kakao/sdk/partner/talk/model/PartnerFriendsContext$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000X\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0000\n\u0002\u0018\u0002\n\u0002\u0008%\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0087\u0008\u0018\u0000 D2\u00020\u0001:\u0002CDB\u000f\u0008\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004Be\u0008\u0017\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u0012\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u0006\u0012\u0008\u0010\t\u001a\u0004\u0018\u00010\n\u0012\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u000c\u0012\u0008\u0010\r\u001a\u0004\u0018\u00010\u000e\u0012\u000e\u0010\u000f\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u0010\u0012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u0012\u00a2\u0006\u0002\u0010\u0013B]\u0012\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u0012\n\u0008\u0002\u0010\u0008\u001a\u0004\u0018\u00010\u0006\u0012\n\u0008\u0002\u0010\t\u001a\u0004\u0018\u00010\n\u0012\n\u0008\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u000c\u0012\n\u0008\u0002\u0010\r\u001a\u0004\u0018\u00010\u000e\u0012\u0010\u0008\u0002\u0010\u000f\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u0010\u0012\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0014J\u0010\u0010.\u001a\u0004\u0018\u00010\u0006H\u00c6\u0003\u00a2\u0006\u0002\u0010\"J\u0010\u0010/\u001a\u0004\u0018\u00010\u0006H\u00c6\u0003\u00a2\u0006\u0002\u0010\"J\u000b\u00100\u001a\u0004\u0018\u00010\nH\u00c6\u0003J\u000b\u00101\u001a\u0004\u0018\u00010\u000cH\u00c6\u0003J\u000b\u00102\u001a\u0004\u0018\u00010\u000eH\u00c6\u0003J\u0011\u00103\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u0010H\u00c6\u0003J\t\u00104\u001a\u00020\u0003H\u00c6\u0003Jf\u00105\u001a\u00020\u00002\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u00062\n\u0008\u0002\u0010\u0008\u001a\u0004\u0018\u00010\u00062\n\u0008\u0002\u0010\t\u001a\u0004\u0018\u00010\n2\n\u0008\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u000c2\n\u0008\u0002\u0010\r\u001a\u0004\u0018\u00010\u000e2\u0010\u0008\u0002\u0010\u000f\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u00102\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0003H\u00c6\u0001\u00a2\u0006\u0002\u00106J\u0013\u00107\u001a\u0002082\u0008\u00109\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010:\u001a\u00020\u0006H\u00d6\u0001J\t\u0010;\u001a\u00020\u0003H\u00d6\u0001J!\u0010<\u001a\u00020=2\u0006\u0010>\u001a\u00020\u00002\u0006\u0010?\u001a\u00020@2\u0006\u0010A\u001a\u00020BH\u00c7\u0001R\"\u0010\u000f\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u0010X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0015\u0010\u0016\"\u0004\u0008\u0017\u0010\u0018R\u001c\u0010\r\u001a\u0004\u0018\u00010\u000eX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0019\u0010\u001a\"\u0004\u0008\u001b\u0010\u001cR\u001c\u0010\u000b\u001a\u0004\u0018\u00010\u000cX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001d\u0010\u001e\"\u0004\u0008\u001f\u0010 R\u001e\u0010\u0008\u001a\u0004\u0018\u00010\u0006X\u0086\u000e\u00a2\u0006\u0010\n\u0002\u0010%\u001a\u0004\u0008!\u0010\"\"\u0004\u0008#\u0010$R\u001e\u0010\u0007\u001a\u0004\u0018\u00010\u0006X\u0086\u000e\u00a2\u0006\u0010\n\u0002\u0010%\u001a\u0004\u0008&\u0010\"\"\u0004\u0008\'\u0010$R\u001c\u0010\t\u001a\u0004\u0018\u00010\nX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008(\u0010)\"\u0004\u0008*\u0010+R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008,\u0010-\u00a8\u0006E"
    }
    d2 = {
        "Lcom/kakao/sdk/partner/talk/model/PartnerFriendsContext;",
        "",
        "url",
        "",
        "(Ljava/lang/String;)V",
        "seen1",
        "",
        "offset",
        "limit",
        "order",
        "Lcom/kakao/sdk/talk/model/Order;",
        "friendOrder",
        "Lcom/kakao/sdk/talk/model/FriendOrder;",
        "friendFilter",
        "Lcom/kakao/sdk/partner/talk/model/FriendFilter;",
        "countryCodes",
        "",
        "serializationConstructorMarker",
        "Lkotlinx/serialization/internal/SerializationConstructorMarker;",
        "(ILjava/lang/Integer;Ljava/lang/Integer;Lcom/kakao/sdk/talk/model/Order;Lcom/kakao/sdk/talk/model/FriendOrder;Lcom/kakao/sdk/partner/talk/model/FriendFilter;Ljava/util/List;Ljava/lang/String;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V",
        "(Ljava/lang/Integer;Ljava/lang/Integer;Lcom/kakao/sdk/talk/model/Order;Lcom/kakao/sdk/talk/model/FriendOrder;Lcom/kakao/sdk/partner/talk/model/FriendFilter;Ljava/util/List;Ljava/lang/String;)V",
        "getCountryCodes",
        "()Ljava/util/List;",
        "setCountryCodes",
        "(Ljava/util/List;)V",
        "getFriendFilter",
        "()Lcom/kakao/sdk/partner/talk/model/FriendFilter;",
        "setFriendFilter",
        "(Lcom/kakao/sdk/partner/talk/model/FriendFilter;)V",
        "getFriendOrder",
        "()Lcom/kakao/sdk/talk/model/FriendOrder;",
        "setFriendOrder",
        "(Lcom/kakao/sdk/talk/model/FriendOrder;)V",
        "getLimit",
        "()Ljava/lang/Integer;",
        "setLimit",
        "(Ljava/lang/Integer;)V",
        "Ljava/lang/Integer;",
        "getOffset",
        "setOffset",
        "getOrder",
        "()Lcom/kakao/sdk/talk/model/Order;",
        "setOrder",
        "(Lcom/kakao/sdk/talk/model/Order;)V",
        "getUrl",
        "()Ljava/lang/String;",
        "component1",
        "component2",
        "component3",
        "component4",
        "component5",
        "component6",
        "component7",
        "copy",
        "(Ljava/lang/Integer;Ljava/lang/Integer;Lcom/kakao/sdk/talk/model/Order;Lcom/kakao/sdk/talk/model/FriendOrder;Lcom/kakao/sdk/partner/talk/model/FriendFilter;Ljava/util/List;Ljava/lang/String;)Lcom/kakao/sdk/partner/talk/model/PartnerFriendsContext;",
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
.field public static final Companion:Lcom/kakao/sdk/partner/talk/model/PartnerFriendsContext$Companion;


# instance fields
.field private countryCodes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private friendFilter:Lcom/kakao/sdk/partner/talk/model/FriendFilter;

.field private friendOrder:Lcom/kakao/sdk/talk/model/FriendOrder;

.field private limit:Ljava/lang/Integer;

.field private offset:Ljava/lang/Integer;

.field private order:Lcom/kakao/sdk/talk/model/Order;

.field private final url:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/kakao/sdk/partner/talk/model/PartnerFriendsContext$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/kakao/sdk/partner/talk/model/PartnerFriendsContext$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/kakao/sdk/partner/talk/model/PartnerFriendsContext;->Companion:Lcom/kakao/sdk/partner/talk/model/PartnerFriendsContext$Companion;

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public constructor <init>()V
    .locals 10

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, 0x7f

    const/4 v9, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v9}, Lcom/kakao/sdk/partner/talk/model/PartnerFriendsContext;-><init>(Ljava/lang/Integer;Ljava/lang/Integer;Lcom/kakao/sdk/talk/model/Order;Lcom/kakao/sdk/talk/model/FriendOrder;Lcom/kakao/sdk/partner/talk/model/FriendFilter;Ljava/util/List;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public synthetic constructor <init>(ILjava/lang/Integer;Ljava/lang/Integer;Lcom/kakao/sdk/talk/model/Order;Lcom/kakao/sdk/talk/model/FriendOrder;Lcom/kakao/sdk/partner/talk/model/FriendFilter;Ljava/util/List;Ljava/lang/String;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V
    .locals 1
    .annotation runtime Lkotlin/Deprecated;
        level = .enum Lkotlin/DeprecationLevel;->HIDDEN:Lkotlin/DeprecationLevel;
        message = "This synthesized declaration should not be used directly"
        replaceWith = .subannotation Lkotlin/ReplaceWith;
            expression = ""
            imports = {}
        .end subannotation
    .end annotation

    and-int/lit8 p9, p1, 0x0

    if-eqz p9, :cond_0

    .line 739
    sget-object p9, Lcom/kakao/sdk/partner/talk/model/PartnerFriendsContext$$serializer;->INSTANCE:Lcom/kakao/sdk/partner/talk/model/PartnerFriendsContext$$serializer;

    invoke-virtual {p9}, Lcom/kakao/sdk/partner/talk/model/PartnerFriendsContext$$serializer;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object p9

    const/4 v0, 0x0

    invoke-static {p1, v0, p9}, Lkotlinx/serialization/internal/PluginExceptionsKt;->throwMissingFieldException(IILkotlinx/serialization/descriptors/SerialDescriptor;)V

    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    and-int/lit8 p9, p1, 0x1

    const/4 v0, 0x0

    if-nez p9, :cond_1

    iput-object v0, p0, Lcom/kakao/sdk/partner/talk/model/PartnerFriendsContext;->offset:Ljava/lang/Integer;

    goto :goto_0

    :cond_1
    iput-object p2, p0, Lcom/kakao/sdk/partner/talk/model/PartnerFriendsContext;->offset:Ljava/lang/Integer;

    :goto_0
    and-int/lit8 p2, p1, 0x2

    if-nez p2, :cond_2

    iput-object v0, p0, Lcom/kakao/sdk/partner/talk/model/PartnerFriendsContext;->limit:Ljava/lang/Integer;

    goto :goto_1

    :cond_2
    iput-object p3, p0, Lcom/kakao/sdk/partner/talk/model/PartnerFriendsContext;->limit:Ljava/lang/Integer;

    :goto_1
    and-int/lit8 p2, p1, 0x4

    if-nez p2, :cond_3

    iput-object v0, p0, Lcom/kakao/sdk/partner/talk/model/PartnerFriendsContext;->order:Lcom/kakao/sdk/talk/model/Order;

    goto :goto_2

    :cond_3
    iput-object p4, p0, Lcom/kakao/sdk/partner/talk/model/PartnerFriendsContext;->order:Lcom/kakao/sdk/talk/model/Order;

    :goto_2
    and-int/lit8 p2, p1, 0x8

    if-nez p2, :cond_4

    iput-object v0, p0, Lcom/kakao/sdk/partner/talk/model/PartnerFriendsContext;->friendOrder:Lcom/kakao/sdk/talk/model/FriendOrder;

    goto :goto_3

    :cond_4
    iput-object p5, p0, Lcom/kakao/sdk/partner/talk/model/PartnerFriendsContext;->friendOrder:Lcom/kakao/sdk/talk/model/FriendOrder;

    :goto_3
    and-int/lit8 p2, p1, 0x10

    if-nez p2, :cond_5

    iput-object v0, p0, Lcom/kakao/sdk/partner/talk/model/PartnerFriendsContext;->friendFilter:Lcom/kakao/sdk/partner/talk/model/FriendFilter;

    goto :goto_4

    :cond_5
    iput-object p6, p0, Lcom/kakao/sdk/partner/talk/model/PartnerFriendsContext;->friendFilter:Lcom/kakao/sdk/partner/talk/model/FriendFilter;

    :goto_4
    and-int/lit8 p2, p1, 0x20

    if-nez p2, :cond_6

    iput-object v0, p0, Lcom/kakao/sdk/partner/talk/model/PartnerFriendsContext;->countryCodes:Ljava/util/List;

    goto :goto_5

    :cond_6
    iput-object p7, p0, Lcom/kakao/sdk/partner/talk/model/PartnerFriendsContext;->countryCodes:Ljava/util/List;

    :goto_5
    and-int/lit8 p1, p1, 0x40

    if-nez p1, :cond_7

    const-string p1, ""

    iput-object p1, p0, Lcom/kakao/sdk/partner/talk/model/PartnerFriendsContext;->url:Ljava/lang/String;

    goto :goto_6

    :cond_7
    iput-object p8, p0, Lcom/kakao/sdk/partner/talk/model/PartnerFriendsContext;->url:Ljava/lang/String;

    :goto_6
    return-void

    .array-data 1
    .end array-data
.end method

.method public constructor <init>(Ljava/lang/Integer;Ljava/lang/Integer;Lcom/kakao/sdk/talk/model/Order;Lcom/kakao/sdk/talk/model/FriendOrder;Lcom/kakao/sdk/partner/talk/model/FriendFilter;Ljava/util/List;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Lcom/kakao/sdk/talk/model/Order;",
            "Lcom/kakao/sdk/talk/model/FriendOrder;",
            "Lcom/kakao/sdk/partner/talk/model/FriendFilter;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const-string/jumbo v0, "url"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 739
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 759
    iput-object p1, p0, Lcom/kakao/sdk/partner/talk/model/PartnerFriendsContext;->offset:Ljava/lang/Integer;

    .line 769
    iput-object p2, p0, Lcom/kakao/sdk/partner/talk/model/PartnerFriendsContext;->limit:Ljava/lang/Integer;

    .line 779
    iput-object p3, p0, Lcom/kakao/sdk/partner/talk/model/PartnerFriendsContext;->order:Lcom/kakao/sdk/talk/model/Order;

    .line 789
    iput-object p4, p0, Lcom/kakao/sdk/partner/talk/model/PartnerFriendsContext;->friendOrder:Lcom/kakao/sdk/talk/model/FriendOrder;

    .line 799
    iput-object p5, p0, Lcom/kakao/sdk/partner/talk/model/PartnerFriendsContext;->friendFilter:Lcom/kakao/sdk/partner/talk/model/FriendFilter;

    .line 809
    iput-object p6, p0, Lcom/kakao/sdk/partner/talk/model/PartnerFriendsContext;->countryCodes:Ljava/util/List;

    .line 819
    iput-object p7, p0, Lcom/kakao/sdk/partner/talk/model/PartnerFriendsContext;->url:Ljava/lang/String;

    return-void

    .array-data 1
    .end array-data
.end method

.method public synthetic constructor <init>(Ljava/lang/Integer;Ljava/lang/Integer;Lcom/kakao/sdk/talk/model/Order;Lcom/kakao/sdk/talk/model/FriendOrder;Lcom/kakao/sdk/partner/talk/model/FriendFilter;Ljava/util/List;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 5

    and-int/lit8 p9, p8, 0x1

    const/4 v0, 0x0

    if-eqz p9, :cond_0

    move-object p9, v0

    goto :goto_0

    :cond_0
    move-object p9, p1

    :goto_0
    and-int/lit8 p1, p8, 0x2

    if-eqz p1, :cond_1

    move-object v1, v0

    goto :goto_1

    :cond_1
    move-object v1, p2

    :goto_1
    and-int/lit8 p1, p8, 0x4

    if-eqz p1, :cond_2

    move-object v2, v0

    goto :goto_2

    :cond_2
    move-object v2, p3

    :goto_2
    and-int/lit8 p1, p8, 0x8

    if-eqz p1, :cond_3

    move-object v3, v0

    goto :goto_3

    :cond_3
    move-object v3, p4

    :goto_3
    and-int/lit8 p1, p8, 0x10

    if-eqz p1, :cond_4

    move-object v4, v0

    goto :goto_4

    :cond_4
    move-object v4, p5

    :goto_4
    and-int/lit8 p1, p8, 0x20

    if-eqz p1, :cond_5

    goto :goto_5

    :cond_5
    move-object v0, p6

    :goto_5
    and-int/lit8 p1, p8, 0x40

    if-eqz p1, :cond_6

    const-string p7, ""

    :cond_6
    move-object p8, p7

    move-object p1, p0

    move-object p2, p9

    move-object p3, v1

    move-object p4, v2

    move-object p5, v3

    move-object p6, v4

    move-object p7, v0

    .line 749
    invoke-direct/range {p1 .. p8}, Lcom/kakao/sdk/partner/talk/model/PartnerFriendsContext;-><init>(Ljava/lang/Integer;Ljava/lang/Integer;Lcom/kakao/sdk/talk/model/Order;Lcom/kakao/sdk/talk/model/FriendOrder;Lcom/kakao/sdk/partner/talk/model/FriendFilter;Ljava/util/List;Ljava/lang/String;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    const-string/jumbo v0, "url"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0x40

    const/4 v10, 0x0

    move-object v1, p0

    .line 859
    invoke-direct/range {v1 .. v10}, Lcom/kakao/sdk/partner/talk/model/PartnerFriendsContext;-><init>(Ljava/lang/Integer;Ljava/lang/Integer;Lcom/kakao/sdk/talk/model/Order;Lcom/kakao/sdk/talk/model/FriendOrder;Lcom/kakao/sdk/partner/talk/model/FriendFilter;Ljava/util/List;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 949
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    if-eqz p1, :cond_6

    const-string v0, "offset"

    .line 969
    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    iput-object v0, p0, Lcom/kakao/sdk/partner/talk/model/PartnerFriendsContext;->offset:Ljava/lang/Integer;

    const-string v0, "limit"

    .line 979
    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_1

    :cond_1
    move-object v0, v1

    :goto_1
    iput-object v0, p0, Lcom/kakao/sdk/partner/talk/model/PartnerFriendsContext;->limit:Ljava/lang/Integer;

    const-string v0, "order"

    .line 989
    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1009
    :try_start_0
    invoke-static {v0}, Lcom/kakao/sdk/talk/model/Order;->valueOf(Ljava/lang/String;)Lcom/kakao/sdk/talk/model/Order;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    :cond_2
    move-object v0, v1

    .line 989
    :goto_2
    iput-object v0, p0, Lcom/kakao/sdk/partner/talk/model/PartnerFriendsContext;->order:Lcom/kakao/sdk/talk/model/Order;

    const-string v0, "friend_order"

    .line 1069
    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 1089
    :try_start_1
    invoke-static {v0}, Lcom/kakao/sdk/talk/model/FriendOrder;->valueOf(Ljava/lang/String;)Lcom/kakao/sdk/talk/model/FriendOrder;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    :catch_1
    :cond_3
    move-object v0, v1

    .line 1069
    :goto_3
    iput-object v0, p0, Lcom/kakao/sdk/partner/talk/model/PartnerFriendsContext;->friendOrder:Lcom/kakao/sdk/talk/model/FriendOrder;

    const-string v0, "friend_filter"

    .line 1149
    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 1169
    :try_start_2
    invoke-static {v0}, Lcom/kakao/sdk/partner/talk/model/FriendFilter;->valueOf(Ljava/lang/String;)Lcom/kakao/sdk/partner/talk/model/FriendFilter;

    move-result-object v0
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_4

    :catch_2
    :cond_4
    move-object v0, v1

    .line 1149
    :goto_4
    iput-object v0, p0, Lcom/kakao/sdk/partner/talk/model/PartnerFriendsContext;->friendFilter:Lcom/kakao/sdk/partner/talk/model/FriendFilter;

    const-string v0, "country_codes"

    .line 1229
    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_5

    move-object v2, p1

    check-cast v2, Ljava/lang/CharSequence;

    const-string p1, ","

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x6

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lkotlin/text/StringsKt;->split$default(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    move-result-object v1

    :cond_5
    iput-object v1, p0, Lcom/kakao/sdk/partner/talk/model/PartnerFriendsContext;->countryCodes:Ljava/util/List;

    return-void

    .line 949
    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    nop

    .array-data 1
    .end array-data
.end method

.method public static synthetic copy$default(Lcom/kakao/sdk/partner/talk/model/PartnerFriendsContext;Ljava/lang/Integer;Ljava/lang/Integer;Lcom/kakao/sdk/talk/model/Order;Lcom/kakao/sdk/talk/model/FriendOrder;Lcom/kakao/sdk/partner/talk/model/FriendFilter;Ljava/util/List;Ljava/lang/String;ILjava/lang/Object;)Lcom/kakao/sdk/partner/talk/model/PartnerFriendsContext;
    .locals 5

    and-int/lit8 p9, p8, 0x1

    if-eqz p9, :cond_0

    iget-object p1, p0, Lcom/kakao/sdk/partner/talk/model/PartnerFriendsContext;->offset:Ljava/lang/Integer;

    :cond_0
    and-int/lit8 p9, p8, 0x2

    if-eqz p9, :cond_1

    iget-object p2, p0, Lcom/kakao/sdk/partner/talk/model/PartnerFriendsContext;->limit:Ljava/lang/Integer;

    :cond_1
    move-object p9, p2

    and-int/lit8 p2, p8, 0x4

    if-eqz p2, :cond_2

    iget-object p3, p0, Lcom/kakao/sdk/partner/talk/model/PartnerFriendsContext;->order:Lcom/kakao/sdk/talk/model/Order;

    :cond_2
    move-object v0, p3

    and-int/lit8 p2, p8, 0x8

    if-eqz p2, :cond_3

    iget-object p4, p0, Lcom/kakao/sdk/partner/talk/model/PartnerFriendsContext;->friendOrder:Lcom/kakao/sdk/talk/model/FriendOrder;

    :cond_3
    move-object v1, p4

    and-int/lit8 p2, p8, 0x10

    if-eqz p2, :cond_4

    iget-object p5, p0, Lcom/kakao/sdk/partner/talk/model/PartnerFriendsContext;->friendFilter:Lcom/kakao/sdk/partner/talk/model/FriendFilter;

    :cond_4
    move-object v2, p5

    and-int/lit8 p2, p8, 0x20

    if-eqz p2, :cond_5

    iget-object p6, p0, Lcom/kakao/sdk/partner/talk/model/PartnerFriendsContext;->countryCodes:Ljava/util/List;

    :cond_5
    move-object v3, p6

    and-int/lit8 p2, p8, 0x40

    if-eqz p2, :cond_6

    iget-object p7, p0, Lcom/kakao/sdk/partner/talk/model/PartnerFriendsContext;->url:Ljava/lang/String;

    :cond_6
    move-object v4, p7

    move-object p2, p0

    move-object p3, p1

    move-object p4, p9

    move-object p5, v0

    move-object p6, v1

    move-object p7, v2

    move-object p8, v3

    move-object p9, v4

    invoke-virtual/range {p2 .. p9}, Lcom/kakao/sdk/partner/talk/model/PartnerFriendsContext;->copy(Ljava/lang/Integer;Ljava/lang/Integer;Lcom/kakao/sdk/talk/model/Order;Lcom/kakao/sdk/talk/model/FriendOrder;Lcom/kakao/sdk/partner/talk/model/FriendFilter;Ljava/util/List;Ljava/lang/String;)Lcom/kakao/sdk/partner/talk/model/PartnerFriendsContext;

    move-result-object p0

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static final write$Self(Lcom/kakao/sdk/partner/talk/model/PartnerFriendsContext;Lkotlinx/serialization/encoding/CompositeEncoder;Lkotlinx/serialization/descriptors/SerialDescriptor;)V
    .locals 5
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "self"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "output"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "serialDesc"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 739
    invoke-interface {p1, p2, v0}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    :goto_0
    move v1, v2

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lcom/kakao/sdk/partner/talk/model/PartnerFriendsContext;->offset:Ljava/lang/Integer;

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    move v1, v0

    :goto_1
    if-eqz v1, :cond_2

    sget-object v1, Lkotlinx/serialization/internal/IntSerializer;->INSTANCE:Lkotlinx/serialization/internal/IntSerializer;

    check-cast v1, Lkotlinx/serialization/SerializationStrategy;

    iget-object v3, p0, Lcom/kakao/sdk/partner/talk/model/PartnerFriendsContext;->offset:Ljava/lang/Integer;

    invoke-interface {p1, p2, v0, v1, v3}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_2
    invoke-interface {p1, p2, v2}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v1

    if-eqz v1, :cond_3

    :goto_2
    move v1, v2

    goto :goto_3

    :cond_3
    iget-object v1, p0, Lcom/kakao/sdk/partner/talk/model/PartnerFriendsContext;->limit:Ljava/lang/Integer;

    if-eqz v1, :cond_4

    goto :goto_2

    :cond_4
    move v1, v0

    :goto_3
    if-eqz v1, :cond_5

    sget-object v1, Lkotlinx/serialization/internal/IntSerializer;->INSTANCE:Lkotlinx/serialization/internal/IntSerializer;

    check-cast v1, Lkotlinx/serialization/SerializationStrategy;

    iget-object v3, p0, Lcom/kakao/sdk/partner/talk/model/PartnerFriendsContext;->limit:Ljava/lang/Integer;

    invoke-interface {p1, p2, v2, v1, v3}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_5
    const/4 v1, 0x2

    invoke-interface {p1, p2, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v3

    if-eqz v3, :cond_6

    :goto_4
    move v3, v2

    goto :goto_5

    :cond_6
    iget-object v3, p0, Lcom/kakao/sdk/partner/talk/model/PartnerFriendsContext;->order:Lcom/kakao/sdk/talk/model/Order;

    if-eqz v3, :cond_7

    goto :goto_4

    :cond_7
    move v3, v0

    :goto_5
    if-eqz v3, :cond_8

    sget-object v3, Lcom/kakao/sdk/talk/model/Order;->Companion:Lcom/kakao/sdk/talk/model/Order$Companion;

    invoke-virtual {v3}, Lcom/kakao/sdk/talk/model/Order$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    move-result-object v3

    check-cast v3, Lkotlinx/serialization/SerializationStrategy;

    iget-object v4, p0, Lcom/kakao/sdk/partner/talk/model/PartnerFriendsContext;->order:Lcom/kakao/sdk/talk/model/Order;

    invoke-interface {p1, p2, v1, v3, v4}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_8
    const/4 v1, 0x3

    invoke-interface {p1, p2, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v3

    if-eqz v3, :cond_9

    :goto_6
    move v3, v2

    goto :goto_7

    :cond_9
    iget-object v3, p0, Lcom/kakao/sdk/partner/talk/model/PartnerFriendsContext;->friendOrder:Lcom/kakao/sdk/talk/model/FriendOrder;

    if-eqz v3, :cond_a

    goto :goto_6

    :cond_a
    move v3, v0

    :goto_7
    if-eqz v3, :cond_b

    sget-object v3, Lcom/kakao/sdk/talk/model/FriendOrder;->Companion:Lcom/kakao/sdk/talk/model/FriendOrder$Companion;

    invoke-virtual {v3}, Lcom/kakao/sdk/talk/model/FriendOrder$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    move-result-object v3

    check-cast v3, Lkotlinx/serialization/SerializationStrategy;

    iget-object v4, p0, Lcom/kakao/sdk/partner/talk/model/PartnerFriendsContext;->friendOrder:Lcom/kakao/sdk/talk/model/FriendOrder;

    invoke-interface {p1, p2, v1, v3, v4}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_b
    const/4 v1, 0x4

    invoke-interface {p1, p2, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v3

    if-eqz v3, :cond_c

    :goto_8
    move v3, v2

    goto :goto_9

    :cond_c
    iget-object v3, p0, Lcom/kakao/sdk/partner/talk/model/PartnerFriendsContext;->friendFilter:Lcom/kakao/sdk/partner/talk/model/FriendFilter;

    if-eqz v3, :cond_d

    goto :goto_8

    :cond_d
    move v3, v0

    :goto_9
    if-eqz v3, :cond_e

    sget-object v3, Lcom/kakao/sdk/partner/talk/model/FriendFilter;->Companion:Lcom/kakao/sdk/partner/talk/model/FriendFilter$Companion;

    invoke-virtual {v3}, Lcom/kakao/sdk/partner/talk/model/FriendFilter$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    move-result-object v3

    check-cast v3, Lkotlinx/serialization/SerializationStrategy;

    iget-object v4, p0, Lcom/kakao/sdk/partner/talk/model/PartnerFriendsContext;->friendFilter:Lcom/kakao/sdk/partner/talk/model/FriendFilter;

    invoke-interface {p1, p2, v1, v3, v4}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_e
    const/4 v1, 0x5

    invoke-interface {p1, p2, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v3

    if-eqz v3, :cond_f

    :goto_a
    move v3, v2

    goto :goto_b

    :cond_f
    iget-object v3, p0, Lcom/kakao/sdk/partner/talk/model/PartnerFriendsContext;->countryCodes:Ljava/util/List;

    if-eqz v3, :cond_10

    goto :goto_a

    :cond_10
    move v3, v0

    :goto_b
    if-eqz v3, :cond_11

    new-instance v3, Lkotlinx/serialization/internal/ArrayListSerializer;

    sget-object v4, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    check-cast v4, Lkotlinx/serialization/KSerializer;

    invoke-direct {v3, v4}, Lkotlinx/serialization/internal/ArrayListSerializer;-><init>(Lkotlinx/serialization/KSerializer;)V

    check-cast v3, Lkotlinx/serialization/SerializationStrategy;

    iget-object v4, p0, Lcom/kakao/sdk/partner/talk/model/PartnerFriendsContext;->countryCodes:Ljava/util/List;

    invoke-interface {p1, p2, v1, v3, v4}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_11
    const/4 v1, 0x6

    invoke-interface {p1, p2, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v3

    if-eqz v3, :cond_12

    :goto_c
    move v0, v2

    goto :goto_d

    :cond_12
    iget-object v3, p0, Lcom/kakao/sdk/partner/talk/model/PartnerFriendsContext;->url:Ljava/lang/String;

    const-string v4, ""

    .line 819
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_13

    goto :goto_c

    :cond_13
    :goto_d
    if-eqz v0, :cond_14

    .line 739
    iget-object p0, p0, Lcom/kakao/sdk/partner/talk/model/PartnerFriendsContext;->url:Ljava/lang/String;

    invoke-interface {p1, p2, v1, p0}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeStringElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILjava/lang/String;)V

    :cond_14
    return-void

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public final component1()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcom/kakao/sdk/partner/talk/model/PartnerFriendsContext;->offset:Ljava/lang/Integer;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final component2()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcom/kakao/sdk/partner/talk/model/PartnerFriendsContext;->limit:Ljava/lang/Integer;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final component3()Lcom/kakao/sdk/talk/model/Order;
    .locals 1

    iget-object v0, p0, Lcom/kakao/sdk/partner/talk/model/PartnerFriendsContext;->order:Lcom/kakao/sdk/talk/model/Order;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final component4()Lcom/kakao/sdk/talk/model/FriendOrder;
    .locals 1

    iget-object v0, p0, Lcom/kakao/sdk/partner/talk/model/PartnerFriendsContext;->friendOrder:Lcom/kakao/sdk/talk/model/FriendOrder;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final component5()Lcom/kakao/sdk/partner/talk/model/FriendFilter;
    .locals 1

    iget-object v0, p0, Lcom/kakao/sdk/partner/talk/model/PartnerFriendsContext;->friendFilter:Lcom/kakao/sdk/partner/talk/model/FriendFilter;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final component6()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/kakao/sdk/partner/talk/model/PartnerFriendsContext;->countryCodes:Ljava/util/List;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final component7()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/kakao/sdk/partner/talk/model/PartnerFriendsContext;->url:Ljava/lang/String;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final copy(Ljava/lang/Integer;Ljava/lang/Integer;Lcom/kakao/sdk/talk/model/Order;Lcom/kakao/sdk/talk/model/FriendOrder;Lcom/kakao/sdk/partner/talk/model/FriendFilter;Ljava/util/List;Ljava/lang/String;)Lcom/kakao/sdk/partner/talk/model/PartnerFriendsContext;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Lcom/kakao/sdk/talk/model/Order;",
            "Lcom/kakao/sdk/talk/model/FriendOrder;",
            "Lcom/kakao/sdk/partner/talk/model/FriendFilter;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/kakao/sdk/partner/talk/model/PartnerFriendsContext;"
        }
    .end annotation

    const-string/jumbo v0, "url"

    move-object/from16 v8, p7

    invoke-static {v8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/kakao/sdk/partner/talk/model/PartnerFriendsContext;

    move-object v1, v0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v1 .. v8}, Lcom/kakao/sdk/partner/talk/model/PartnerFriendsContext;-><init>(Ljava/lang/Integer;Ljava/lang/Integer;Lcom/kakao/sdk/talk/model/Order;Lcom/kakao/sdk/talk/model/FriendOrder;Lcom/kakao/sdk/partner/talk/model/FriendFilter;Ljava/util/List;Ljava/lang/String;)V

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/kakao/sdk/partner/talk/model/PartnerFriendsContext;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/kakao/sdk/partner/talk/model/PartnerFriendsContext;

    iget-object v1, p0, Lcom/kakao/sdk/partner/talk/model/PartnerFriendsContext;->offset:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/kakao/sdk/partner/talk/model/PartnerFriendsContext;->offset:Ljava/lang/Integer;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/kakao/sdk/partner/talk/model/PartnerFriendsContext;->limit:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/kakao/sdk/partner/talk/model/PartnerFriendsContext;->limit:Ljava/lang/Integer;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/kakao/sdk/partner/talk/model/PartnerFriendsContext;->order:Lcom/kakao/sdk/talk/model/Order;

    iget-object v3, p1, Lcom/kakao/sdk/partner/talk/model/PartnerFriendsContext;->order:Lcom/kakao/sdk/talk/model/Order;

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/kakao/sdk/partner/talk/model/PartnerFriendsContext;->friendOrder:Lcom/kakao/sdk/talk/model/FriendOrder;

    iget-object v3, p1, Lcom/kakao/sdk/partner/talk/model/PartnerFriendsContext;->friendOrder:Lcom/kakao/sdk/talk/model/FriendOrder;

    if-eq v1, v3, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lcom/kakao/sdk/partner/talk/model/PartnerFriendsContext;->friendFilter:Lcom/kakao/sdk/partner/talk/model/FriendFilter;

    iget-object v3, p1, Lcom/kakao/sdk/partner/talk/model/PartnerFriendsContext;->friendFilter:Lcom/kakao/sdk/partner/talk/model/FriendFilter;

    if-eq v1, v3, :cond_6

    return v2

    :cond_6
    iget-object v1, p0, Lcom/kakao/sdk/partner/talk/model/PartnerFriendsContext;->countryCodes:Ljava/util/List;

    iget-object v3, p1, Lcom/kakao/sdk/partner/talk/model/PartnerFriendsContext;->countryCodes:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    :cond_7
    iget-object v1, p0, Lcom/kakao/sdk/partner/talk/model/PartnerFriendsContext;->url:Ljava/lang/String;

    iget-object p1, p1, Lcom/kakao/sdk/partner/talk/model/PartnerFriendsContext;->url:Ljava/lang/String;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_8

    return v2

    :cond_8
    return v0

    .array-data 1
    .end array-data
.end method

.method public final getCountryCodes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 809
    iget-object v0, p0, Lcom/kakao/sdk/partner/talk/model/PartnerFriendsContext;->countryCodes:Ljava/util/List;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final getFriendFilter()Lcom/kakao/sdk/partner/talk/model/FriendFilter;
    .locals 1

    .line 799
    iget-object v0, p0, Lcom/kakao/sdk/partner/talk/model/PartnerFriendsContext;->friendFilter:Lcom/kakao/sdk/partner/talk/model/FriendFilter;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final getFriendOrder()Lcom/kakao/sdk/talk/model/FriendOrder;
    .locals 1

    .line 789
    iget-object v0, p0, Lcom/kakao/sdk/partner/talk/model/PartnerFriendsContext;->friendOrder:Lcom/kakao/sdk/talk/model/FriendOrder;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final getLimit()Ljava/lang/Integer;
    .locals 1

    .line 769
    iget-object v0, p0, Lcom/kakao/sdk/partner/talk/model/PartnerFriendsContext;->limit:Ljava/lang/Integer;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final getOffset()Ljava/lang/Integer;
    .locals 1

    .line 759
    iget-object v0, p0, Lcom/kakao/sdk/partner/talk/model/PartnerFriendsContext;->offset:Ljava/lang/Integer;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final getOrder()Lcom/kakao/sdk/talk/model/Order;
    .locals 1

    .line 779
    iget-object v0, p0, Lcom/kakao/sdk/partner/talk/model/PartnerFriendsContext;->order:Lcom/kakao/sdk/talk/model/Order;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final getUrl()Ljava/lang/String;
    .locals 1

    .line 819
    iget-object v0, p0, Lcom/kakao/sdk/partner/talk/model/PartnerFriendsContext;->url:Ljava/lang/String;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/kakao/sdk/partner/talk/model/PartnerFriendsContext;->offset:Ljava/lang/Integer;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/kakao/sdk/partner/talk/model/PartnerFriendsContext;->limit:Ljava/lang/Integer;

    if-nez v2, :cond_1

    move v2, v1

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/kakao/sdk/partner/talk/model/PartnerFriendsContext;->order:Lcom/kakao/sdk/talk/model/Order;

    if-nez v2, :cond_2

    move v2, v1

    goto :goto_2

    :cond_2
    invoke-virtual {v2}, Lcom/kakao/sdk/talk/model/Order;->hashCode()I

    move-result v2

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/kakao/sdk/partner/talk/model/PartnerFriendsContext;->friendOrder:Lcom/kakao/sdk/talk/model/FriendOrder;

    if-nez v2, :cond_3

    move v2, v1

    goto :goto_3

    :cond_3
    invoke-virtual {v2}, Lcom/kakao/sdk/talk/model/FriendOrder;->hashCode()I

    move-result v2

    :goto_3
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/kakao/sdk/partner/talk/model/PartnerFriendsContext;->friendFilter:Lcom/kakao/sdk/partner/talk/model/FriendFilter;

    if-nez v2, :cond_4

    move v2, v1

    goto :goto_4

    :cond_4
    invoke-virtual {v2}, Lcom/kakao/sdk/partner/talk/model/FriendFilter;->hashCode()I

    move-result v2

    :goto_4
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/kakao/sdk/partner/talk/model/PartnerFriendsContext;->countryCodes:Ljava/util/List;

    if-nez v2, :cond_5

    goto :goto_5

    :cond_5
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_5
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/kakao/sdk/partner/talk/model/PartnerFriendsContext;->url:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final setCountryCodes(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 809
    iput-object p1, p0, Lcom/kakao/sdk/partner/talk/model/PartnerFriendsContext;->countryCodes:Ljava/util/List;

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public final setFriendFilter(Lcom/kakao/sdk/partner/talk/model/FriendFilter;)V
    .locals 0

    .line 799
    iput-object p1, p0, Lcom/kakao/sdk/partner/talk/model/PartnerFriendsContext;->friendFilter:Lcom/kakao/sdk/partner/talk/model/FriendFilter;

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public final setFriendOrder(Lcom/kakao/sdk/talk/model/FriendOrder;)V
    .locals 0

    .line 789
    iput-object p1, p0, Lcom/kakao/sdk/partner/talk/model/PartnerFriendsContext;->friendOrder:Lcom/kakao/sdk/talk/model/FriendOrder;

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public final setLimit(Ljava/lang/Integer;)V
    .locals 0

    .line 769
    iput-object p1, p0, Lcom/kakao/sdk/partner/talk/model/PartnerFriendsContext;->limit:Ljava/lang/Integer;

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public final setOffset(Ljava/lang/Integer;)V
    .locals 0

    .line 759
    iput-object p1, p0, Lcom/kakao/sdk/partner/talk/model/PartnerFriendsContext;->offset:Ljava/lang/Integer;

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public final setOrder(Lcom/kakao/sdk/talk/model/Order;)V
    .locals 0

    .line 779
    iput-object p1, p0, Lcom/kakao/sdk/partner/talk/model/PartnerFriendsContext;->order:Lcom/kakao/sdk/talk/model/Order;

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public toString()Ljava/lang/String;
    .locals 9

    iget-object v0, p0, Lcom/kakao/sdk/partner/talk/model/PartnerFriendsContext;->offset:Ljava/lang/Integer;

    iget-object v1, p0, Lcom/kakao/sdk/partner/talk/model/PartnerFriendsContext;->limit:Ljava/lang/Integer;

    iget-object v2, p0, Lcom/kakao/sdk/partner/talk/model/PartnerFriendsContext;->order:Lcom/kakao/sdk/talk/model/Order;

    iget-object v3, p0, Lcom/kakao/sdk/partner/talk/model/PartnerFriendsContext;->friendOrder:Lcom/kakao/sdk/talk/model/FriendOrder;

    iget-object v4, p0, Lcom/kakao/sdk/partner/talk/model/PartnerFriendsContext;->friendFilter:Lcom/kakao/sdk/partner/talk/model/FriendFilter;

    iget-object v5, p0, Lcom/kakao/sdk/partner/talk/model/PartnerFriendsContext;->countryCodes:Ljava/util/List;

    iget-object v6, p0, Lcom/kakao/sdk/partner/talk/model/PartnerFriendsContext;->url:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "PartnerFriendsContext(offset="

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v7, ", limit="

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", order="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", friendOrder="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", friendFilter="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", countryCodes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", url="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

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
