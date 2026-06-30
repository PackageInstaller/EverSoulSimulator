.class public final Lcom/kakao/sdk/partner/talk/model/PartnerFriend;
.super Ljava/lang/Object;
.source "Friend.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kakao/sdk/partner/talk/model/PartnerFriend$$serializer;,
        Lcom/kakao/sdk/partner/talk/model/PartnerFriend$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000L\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008-\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0087\u0008\u0018\u0000 I2\u00020\u0001:\u0002HIB\u0095\u0001\u0008\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u0012\n\u0008\u0001\u0010\u0008\u001a\u0004\u0018\u00010\u0007\u0012\n\u0008\u0001\u0010\t\u001a\u0004\u0018\u00010\u0007\u0012\u0008\u0010\n\u001a\u0004\u0018\u00010\u000b\u0012\n\u0008\u0001\u0010\u000c\u001a\u0004\u0018\u00010\u000b\u0012\n\u0008\u0001\u0010\r\u001a\u0004\u0018\u00010\u000b\u0012\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u000f\u0012\n\u0008\u0001\u0010\u0010\u001a\u0004\u0018\u00010\u0007\u0012\n\u0008\u0001\u0010\u0011\u001a\u0004\u0018\u00010\u000b\u0012\n\u0008\u0001\u0010\u0012\u001a\u0004\u0018\u00010\u000b\u0012\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u0014\u00a2\u0006\u0002\u0010\u0015Bq\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u0007\u0012\u0008\u0010\t\u001a\u0004\u0018\u00010\u0007\u0012\u0008\u0010\n\u001a\u0004\u0018\u00010\u000b\u0012\u0008\u0010\u000c\u001a\u0004\u0018\u00010\u000b\u0012\u0008\u0010\r\u001a\u0004\u0018\u00010\u000b\u0012\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u000f\u0012\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u0007\u0012\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u000b\u0012\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u000b\u00a2\u0006\u0002\u0010\u0016J\u0010\u00100\u001a\u0004\u0018\u00010\u0005H\u00c6\u0003\u00a2\u0006\u0002\u0010 J\u0010\u00101\u001a\u0004\u0018\u00010\u000bH\u00c6\u0003\u00a2\u0006\u0002\u0010\u001aJ\u0010\u00102\u001a\u0004\u0018\u00010\u000bH\u00c6\u0003\u00a2\u0006\u0002\u0010\u001aJ\t\u00103\u001a\u00020\u0007H\u00c6\u0003J\u000b\u00104\u001a\u0004\u0018\u00010\u0007H\u00c6\u0003J\u000b\u00105\u001a\u0004\u0018\u00010\u0007H\u00c6\u0003J\u0010\u00106\u001a\u0004\u0018\u00010\u000bH\u00c6\u0003\u00a2\u0006\u0002\u0010\u001aJ\u0010\u00107\u001a\u0004\u0018\u00010\u000bH\u00c6\u0003\u00a2\u0006\u0002\u0010\u001aJ\u0010\u00108\u001a\u0004\u0018\u00010\u000bH\u00c6\u0003\u00a2\u0006\u0002\u0010\u001aJ\u000b\u00109\u001a\u0004\u0018\u00010\u000fH\u00c6\u0003J\u000b\u0010:\u001a\u0004\u0018\u00010\u0007H\u00c6\u0003J\u0090\u0001\u0010;\u001a\u00020\u00002\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00052\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00072\n\u0008\u0002\u0010\u0008\u001a\u0004\u0018\u00010\u00072\n\u0008\u0002\u0010\t\u001a\u0004\u0018\u00010\u00072\n\u0008\u0002\u0010\n\u001a\u0004\u0018\u00010\u000b2\n\u0008\u0002\u0010\u000c\u001a\u0004\u0018\u00010\u000b2\n\u0008\u0002\u0010\r\u001a\u0004\u0018\u00010\u000b2\n\u0008\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u000f2\n\u0008\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u00072\n\u0008\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u000b2\n\u0008\u0002\u0010\u0012\u001a\u0004\u0018\u00010\u000bH\u00c6\u0001\u00a2\u0006\u0002\u0010<J\u0013\u0010=\u001a\u00020\u000b2\u0008\u0010>\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010?\u001a\u00020\u0003H\u00d6\u0001J\t\u0010@\u001a\u00020\u0007H\u00d6\u0001J!\u0010A\u001a\u00020B2\u0006\u0010C\u001a\u00020\u00002\u0006\u0010D\u001a\u00020E2\u0006\u0010F\u001a\u00020GH\u00c7\u0001R \u0010\u0012\u001a\u0004\u0018\u00010\u000b8\u0006X\u0087\u0004\u00a2\u0006\u0010\n\u0002\u0010\u001b\u0012\u0004\u0008\u0017\u0010\u0018\u001a\u0004\u0008\u0019\u0010\u001aR \u0010\r\u001a\u0004\u0018\u00010\u000b8\u0006X\u0087\u0004\u00a2\u0006\u0010\n\u0002\u0010\u001b\u0012\u0004\u0008\u001c\u0010\u0018\u001a\u0004\u0008\u001d\u0010\u001aR\u0015\u0010\n\u001a\u0004\u0018\u00010\u000b\u00a2\u0006\n\n\u0002\u0010\u001b\u001a\u0004\u0008\u001e\u0010\u001aR\u0015\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\n\n\u0002\u0010!\u001a\u0004\u0008\u001f\u0010 R \u0010\u0011\u001a\u0004\u0018\u00010\u000b8\u0006X\u0087\u0004\u00a2\u0006\u0010\n\u0002\u0010\u001b\u0012\u0004\u0008\"\u0010\u0018\u001a\u0004\u0008#\u0010\u001aR\u001e\u0010\u0008\u001a\u0004\u0018\u00010\u00078\u0006X\u0087\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008$\u0010\u0018\u001a\u0004\u0008%\u0010&R\u001e\u0010\t\u001a\u0004\u0018\u00010\u00078\u0006X\u0087\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008\'\u0010\u0018\u001a\u0004\u0008(\u0010&R \u0010\u000c\u001a\u0004\u0018\u00010\u000b8\u0006X\u0087\u0004\u00a2\u0006\u0010\n\u0002\u0010\u001b\u0012\u0004\u0008)\u0010\u0018\u001a\u0004\u0008*\u0010\u001aR\u0013\u0010\u000e\u001a\u0004\u0018\u00010\u000f\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008+\u0010,R\u001e\u0010\u0010\u001a\u0004\u0018\u00010\u00078\u0006X\u0087\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008-\u0010\u0018\u001a\u0004\u0008.\u0010&R\u0011\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008/\u0010&\u00a8\u0006J"
    }
    d2 = {
        "Lcom/kakao/sdk/partner/talk/model/PartnerFriend;",
        "",
        "seen1",
        "",
        "id",
        "",
        "uuid",
        "",
        "profileNickname",
        "profileThumbnailImage",
        "favorite",
        "",
        "registeredToApp",
        "appRegistered",
        "relation",
        "Lcom/kakao/sdk/partner/talk/model/FriendRelation;",
        "talkOs",
        "msgAllowed",
        "allowedMsg",
        "serializationConstructorMarker",
        "Lkotlinx/serialization/internal/SerializationConstructorMarker;",
        "(ILjava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Lcom/kakao/sdk/partner/talk/model/FriendRelation;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V",
        "(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Lcom/kakao/sdk/partner/talk/model/FriendRelation;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;)V",
        "getAllowedMsg$annotations",
        "()V",
        "getAllowedMsg",
        "()Ljava/lang/Boolean;",
        "Ljava/lang/Boolean;",
        "getAppRegistered$annotations",
        "getAppRegistered",
        "getFavorite",
        "getId",
        "()Ljava/lang/Long;",
        "Ljava/lang/Long;",
        "getMsgAllowed$annotations",
        "getMsgAllowed",
        "getProfileNickname$annotations",
        "getProfileNickname",
        "()Ljava/lang/String;",
        "getProfileThumbnailImage$annotations",
        "getProfileThumbnailImage",
        "getRegisteredToApp$annotations",
        "getRegisteredToApp",
        "getRelation",
        "()Lcom/kakao/sdk/partner/talk/model/FriendRelation;",
        "getTalkOs$annotations",
        "getTalkOs",
        "getUuid",
        "component1",
        "component10",
        "component11",
        "component2",
        "component3",
        "component4",
        "component5",
        "component6",
        "component7",
        "component8",
        "component9",
        "copy",
        "(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Lcom/kakao/sdk/partner/talk/model/FriendRelation;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;)Lcom/kakao/sdk/partner/talk/model/PartnerFriend;",
        "equals",
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
.field public static final Companion:Lcom/kakao/sdk/partner/talk/model/PartnerFriend$Companion;


# instance fields
.field private final allowedMsg:Ljava/lang/Boolean;

.field private final appRegistered:Ljava/lang/Boolean;

.field private final favorite:Ljava/lang/Boolean;

.field private final id:Ljava/lang/Long;

.field private final msgAllowed:Ljava/lang/Boolean;

.field private final profileNickname:Ljava/lang/String;

.field private final profileThumbnailImage:Ljava/lang/String;

.field private final registeredToApp:Ljava/lang/Boolean;

.field private final relation:Lcom/kakao/sdk/partner/talk/model/FriendRelation;

.field private final talkOs:Ljava/lang/String;

.field private final uuid:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/kakao/sdk/partner/talk/model/PartnerFriend$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/kakao/sdk/partner/talk/model/PartnerFriend$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/kakao/sdk/partner/talk/model/PartnerFriend;->Companion:Lcom/kakao/sdk/partner/talk/model/PartnerFriend$Companion;

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public synthetic constructor <init>(ILjava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Lcom/kakao/sdk/partner/talk/model/FriendRelation;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V
    .locals 1
    .param p4    # Ljava/lang/String;
        .annotation runtime Lkotlinx/serialization/SerialName;
            value = "profile_nickname"
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation runtime Lkotlinx/serialization/SerialName;
            value = "profile_thumbnail_image"
        .end annotation
    .end param
    .param p7    # Ljava/lang/Boolean;
        .annotation runtime Lkotlin/Deprecated;
            message = "\ud574\ub2f9 property\ub294 \'appRegistered\'\ub85c \ub300\uccb4\ub418\uc5c8\uc2b5\ub2c8\ub2e4. "
        .end annotation
    .end param
    .param p8    # Ljava/lang/Boolean;
        .annotation runtime Lkotlinx/serialization/SerialName;
            value = "app_registered"
        .end annotation
    .end param
    .param p10    # Ljava/lang/String;
        .annotation runtime Lkotlinx/serialization/SerialName;
            value = "talk_os"
        .end annotation
    .end param
    .param p11    # Ljava/lang/Boolean;
        .annotation runtime Lkotlin/Deprecated;
            message = "\ud574\ub2f9 property\ub294 \'allowedMsg\'\ub85c \ub300\uccb4\ub418\uc5c8\uc2b5\ub2c8\ub2e4."
        .end annotation
    .end param
    .param p12    # Ljava/lang/Boolean;
        .annotation runtime Lkotlinx/serialization/SerialName;
            value = "allowed_msg"
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

    and-int/lit16 p13, p1, 0x7ff

    const/16 v0, 0x7ff

    if-eq v0, p13, :cond_0

    .line 409
    sget-object p13, Lcom/kakao/sdk/partner/talk/model/PartnerFriend$$serializer;->INSTANCE:Lcom/kakao/sdk/partner/talk/model/PartnerFriend$$serializer;

    invoke-virtual {p13}, Lcom/kakao/sdk/partner/talk/model/PartnerFriend$$serializer;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object p13

    invoke-static {p1, v0, p13}, Lkotlinx/serialization/internal/PluginExceptionsKt;->throwMissingFieldException(IILkotlinx/serialization/descriptors/SerialDescriptor;)V

    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/kakao/sdk/partner/talk/model/PartnerFriend;->id:Ljava/lang/Long;

    iput-object p3, p0, Lcom/kakao/sdk/partner/talk/model/PartnerFriend;->uuid:Ljava/lang/String;

    iput-object p4, p0, Lcom/kakao/sdk/partner/talk/model/PartnerFriend;->profileNickname:Ljava/lang/String;

    iput-object p5, p0, Lcom/kakao/sdk/partner/talk/model/PartnerFriend;->profileThumbnailImage:Ljava/lang/String;

    iput-object p6, p0, Lcom/kakao/sdk/partner/talk/model/PartnerFriend;->favorite:Ljava/lang/Boolean;

    iput-object p7, p0, Lcom/kakao/sdk/partner/talk/model/PartnerFriend;->registeredToApp:Ljava/lang/Boolean;

    iput-object p8, p0, Lcom/kakao/sdk/partner/talk/model/PartnerFriend;->appRegistered:Ljava/lang/Boolean;

    iput-object p9, p0, Lcom/kakao/sdk/partner/talk/model/PartnerFriend;->relation:Lcom/kakao/sdk/partner/talk/model/FriendRelation;

    iput-object p10, p0, Lcom/kakao/sdk/partner/talk/model/PartnerFriend;->talkOs:Ljava/lang/String;

    iput-object p11, p0, Lcom/kakao/sdk/partner/talk/model/PartnerFriend;->msgAllowed:Ljava/lang/Boolean;

    iput-object p12, p0, Lcom/kakao/sdk/partner/talk/model/PartnerFriend;->allowedMsg:Ljava/lang/Boolean;

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public constructor <init>(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Lcom/kakao/sdk/partner/talk/model/FriendRelation;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;)V
    .locals 1

    const-string/jumbo v0, "uuid"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 409
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 429
    iput-object p1, p0, Lcom/kakao/sdk/partner/talk/model/PartnerFriend;->id:Ljava/lang/Long;

    .line 439
    iput-object p2, p0, Lcom/kakao/sdk/partner/talk/model/PartnerFriend;->uuid:Ljava/lang/String;

    .line 449
    iput-object p3, p0, Lcom/kakao/sdk/partner/talk/model/PartnerFriend;->profileNickname:Ljava/lang/String;

    .line 459
    iput-object p4, p0, Lcom/kakao/sdk/partner/talk/model/PartnerFriend;->profileThumbnailImage:Ljava/lang/String;

    .line 469
    iput-object p5, p0, Lcom/kakao/sdk/partner/talk/model/PartnerFriend;->favorite:Ljava/lang/Boolean;

    .line 489
    iput-object p6, p0, Lcom/kakao/sdk/partner/talk/model/PartnerFriend;->registeredToApp:Ljava/lang/Boolean;

    .line 519
    iput-object p7, p0, Lcom/kakao/sdk/partner/talk/model/PartnerFriend;->appRegistered:Ljava/lang/Boolean;

    .line 539
    iput-object p8, p0, Lcom/kakao/sdk/partner/talk/model/PartnerFriend;->relation:Lcom/kakao/sdk/partner/talk/model/FriendRelation;

    .line 549
    iput-object p9, p0, Lcom/kakao/sdk/partner/talk/model/PartnerFriend;->talkOs:Ljava/lang/String;

    .line 569
    iput-object p10, p0, Lcom/kakao/sdk/partner/talk/model/PartnerFriend;->msgAllowed:Ljava/lang/Boolean;

    .line 599
    iput-object p11, p0, Lcom/kakao/sdk/partner/talk/model/PartnerFriend;->allowedMsg:Ljava/lang/Boolean;

    return-void

    .array-data 1
    .end array-data
.end method

.method public static synthetic copy$default(Lcom/kakao/sdk/partner/talk/model/PartnerFriend;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Lcom/kakao/sdk/partner/talk/model/FriendRelation;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;ILjava/lang/Object;)Lcom/kakao/sdk/partner/talk/model/PartnerFriend;
    .locals 12

    move-object v0, p0

    move/from16 v1, p12

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/kakao/sdk/partner/talk/model/PartnerFriend;->id:Ljava/lang/Long;

    goto :goto_0

    :cond_0
    move-object v2, p1

    :goto_0
    and-int/lit8 v3, v1, 0x2

    if-eqz v3, :cond_1

    iget-object v3, v0, Lcom/kakao/sdk/partner/talk/model/PartnerFriend;->uuid:Ljava/lang/String;

    goto :goto_1

    :cond_1
    move-object v3, p2

    :goto_1
    and-int/lit8 v4, v1, 0x4

    if-eqz v4, :cond_2

    iget-object v4, v0, Lcom/kakao/sdk/partner/talk/model/PartnerFriend;->profileNickname:Ljava/lang/String;

    goto :goto_2

    :cond_2
    move-object v4, p3

    :goto_2
    and-int/lit8 v5, v1, 0x8

    if-eqz v5, :cond_3

    iget-object v5, v0, Lcom/kakao/sdk/partner/talk/model/PartnerFriend;->profileThumbnailImage:Ljava/lang/String;

    goto :goto_3

    :cond_3
    move-object/from16 v5, p4

    :goto_3
    and-int/lit8 v6, v1, 0x10

    if-eqz v6, :cond_4

    iget-object v6, v0, Lcom/kakao/sdk/partner/talk/model/PartnerFriend;->favorite:Ljava/lang/Boolean;

    goto :goto_4

    :cond_4
    move-object/from16 v6, p5

    :goto_4
    and-int/lit8 v7, v1, 0x20

    if-eqz v7, :cond_5

    iget-object v7, v0, Lcom/kakao/sdk/partner/talk/model/PartnerFriend;->registeredToApp:Ljava/lang/Boolean;

    goto :goto_5

    :cond_5
    move-object/from16 v7, p6

    :goto_5
    and-int/lit8 v8, v1, 0x40

    if-eqz v8, :cond_6

    iget-object v8, v0, Lcom/kakao/sdk/partner/talk/model/PartnerFriend;->appRegistered:Ljava/lang/Boolean;

    goto :goto_6

    :cond_6
    move-object/from16 v8, p7

    :goto_6
    and-int/lit16 v9, v1, 0x80

    if-eqz v9, :cond_7

    iget-object v9, v0, Lcom/kakao/sdk/partner/talk/model/PartnerFriend;->relation:Lcom/kakao/sdk/partner/talk/model/FriendRelation;

    goto :goto_7

    :cond_7
    move-object/from16 v9, p8

    :goto_7
    and-int/lit16 v10, v1, 0x100

    if-eqz v10, :cond_8

    iget-object v10, v0, Lcom/kakao/sdk/partner/talk/model/PartnerFriend;->talkOs:Ljava/lang/String;

    goto :goto_8

    :cond_8
    move-object/from16 v10, p9

    :goto_8
    and-int/lit16 v11, v1, 0x200

    if-eqz v11, :cond_9

    iget-object v11, v0, Lcom/kakao/sdk/partner/talk/model/PartnerFriend;->msgAllowed:Ljava/lang/Boolean;

    goto :goto_9

    :cond_9
    move-object/from16 v11, p10

    :goto_9
    and-int/lit16 v1, v1, 0x400

    if-eqz v1, :cond_a

    iget-object v1, v0, Lcom/kakao/sdk/partner/talk/model/PartnerFriend;->allowedMsg:Ljava/lang/Boolean;

    goto :goto_a

    :cond_a
    move-object/from16 v1, p11

    :goto_a
    move-object p1, v2

    move-object p2, v3

    move-object p3, v4

    move-object/from16 p4, v5

    move-object/from16 p5, v6

    move-object/from16 p6, v7

    move-object/from16 p7, v8

    move-object/from16 p8, v9

    move-object/from16 p9, v10

    move-object/from16 p10, v11

    move-object/from16 p11, v1

    invoke-virtual/range {p0 .. p11}, Lcom/kakao/sdk/partner/talk/model/PartnerFriend;->copy(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Lcom/kakao/sdk/partner/talk/model/FriendRelation;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;)Lcom/kakao/sdk/partner/talk/model/PartnerFriend;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public static synthetic getAllowedMsg$annotations()V
    .locals 0
    .annotation runtime Lkotlinx/serialization/SerialName;
        value = "allowed_msg"
    .end annotation

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public static synthetic getAppRegistered$annotations()V
    .locals 0
    .annotation runtime Lkotlinx/serialization/SerialName;
        value = "app_registered"
    .end annotation

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public static synthetic getMsgAllowed$annotations()V
    .locals 0
    .annotation runtime Lkotlin/Deprecated;
        message = "\ud574\ub2f9 property\ub294 \'allowedMsg\'\ub85c \ub300\uccb4\ub418\uc5c8\uc2b5\ub2c8\ub2e4."
    .end annotation

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public static synthetic getProfileNickname$annotations()V
    .locals 0
    .annotation runtime Lkotlinx/serialization/SerialName;
        value = "profile_nickname"
    .end annotation

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public static synthetic getProfileThumbnailImage$annotations()V
    .locals 0
    .annotation runtime Lkotlinx/serialization/SerialName;
        value = "profile_thumbnail_image"
    .end annotation

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public static synthetic getRegisteredToApp$annotations()V
    .locals 0
    .annotation runtime Lkotlin/Deprecated;
        message = "\ud574\ub2f9 property\ub294 \'appRegistered\'\ub85c \ub300\uccb4\ub418\uc5c8\uc2b5\ub2c8\ub2e4. "
    .end annotation

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public static synthetic getTalkOs$annotations()V
    .locals 0
    .annotation runtime Lkotlinx/serialization/SerialName;
        value = "talk_os"
    .end annotation

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public static final write$Self(Lcom/kakao/sdk/partner/talk/model/PartnerFriend;Lkotlinx/serialization/encoding/CompositeEncoder;Lkotlinx/serialization/descriptors/SerialDescriptor;)V
    .locals 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "self"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "output"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "serialDesc"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 409
    sget-object v0, Lkotlinx/serialization/internal/LongSerializer;->INSTANCE:Lkotlinx/serialization/internal/LongSerializer;

    check-cast v0, Lkotlinx/serialization/SerializationStrategy;

    iget-object v1, p0, Lcom/kakao/sdk/partner/talk/model/PartnerFriend;->id:Ljava/lang/Long;

    const/4 v2, 0x0

    invoke-interface {p1, p2, v2, v0, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/kakao/sdk/partner/talk/model/PartnerFriend;->uuid:Ljava/lang/String;

    invoke-interface {p1, p2, v0, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeStringElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILjava/lang/String;)V

    sget-object v0, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    check-cast v0, Lkotlinx/serialization/SerializationStrategy;

    iget-object v1, p0, Lcom/kakao/sdk/partner/talk/model/PartnerFriend;->profileNickname:Ljava/lang/String;

    const/4 v2, 0x2

    invoke-interface {p1, p2, v2, v0, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    sget-object v0, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    check-cast v0, Lkotlinx/serialization/SerializationStrategy;

    iget-object v1, p0, Lcom/kakao/sdk/partner/talk/model/PartnerFriend;->profileThumbnailImage:Ljava/lang/String;

    const/4 v2, 0x3

    invoke-interface {p1, p2, v2, v0, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    sget-object v0, Lkotlinx/serialization/internal/BooleanSerializer;->INSTANCE:Lkotlinx/serialization/internal/BooleanSerializer;

    check-cast v0, Lkotlinx/serialization/SerializationStrategy;

    iget-object v1, p0, Lcom/kakao/sdk/partner/talk/model/PartnerFriend;->favorite:Ljava/lang/Boolean;

    const/4 v2, 0x4

    invoke-interface {p1, p2, v2, v0, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    sget-object v0, Lkotlinx/serialization/internal/BooleanSerializer;->INSTANCE:Lkotlinx/serialization/internal/BooleanSerializer;

    check-cast v0, Lkotlinx/serialization/SerializationStrategy;

    iget-object v1, p0, Lcom/kakao/sdk/partner/talk/model/PartnerFriend;->registeredToApp:Ljava/lang/Boolean;

    const/4 v2, 0x5

    invoke-interface {p1, p2, v2, v0, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    sget-object v0, Lkotlinx/serialization/internal/BooleanSerializer;->INSTANCE:Lkotlinx/serialization/internal/BooleanSerializer;

    check-cast v0, Lkotlinx/serialization/SerializationStrategy;

    iget-object v1, p0, Lcom/kakao/sdk/partner/talk/model/PartnerFriend;->appRegistered:Ljava/lang/Boolean;

    const/4 v2, 0x6

    invoke-interface {p1, p2, v2, v0, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    sget-object v0, Lcom/kakao/sdk/partner/talk/model/FriendRelation$$serializer;->INSTANCE:Lcom/kakao/sdk/partner/talk/model/FriendRelation$$serializer;

    check-cast v0, Lkotlinx/serialization/SerializationStrategy;

    iget-object v1, p0, Lcom/kakao/sdk/partner/talk/model/PartnerFriend;->relation:Lcom/kakao/sdk/partner/talk/model/FriendRelation;

    const/4 v2, 0x7

    invoke-interface {p1, p2, v2, v0, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    sget-object v0, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    check-cast v0, Lkotlinx/serialization/SerializationStrategy;

    iget-object v1, p0, Lcom/kakao/sdk/partner/talk/model/PartnerFriend;->talkOs:Ljava/lang/String;

    const/16 v2, 0x8

    invoke-interface {p1, p2, v2, v0, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    sget-object v0, Lkotlinx/serialization/internal/BooleanSerializer;->INSTANCE:Lkotlinx/serialization/internal/BooleanSerializer;

    check-cast v0, Lkotlinx/serialization/SerializationStrategy;

    iget-object v1, p0, Lcom/kakao/sdk/partner/talk/model/PartnerFriend;->msgAllowed:Ljava/lang/Boolean;

    const/16 v2, 0x9

    invoke-interface {p1, p2, v2, v0, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    sget-object v0, Lkotlinx/serialization/internal/BooleanSerializer;->INSTANCE:Lkotlinx/serialization/internal/BooleanSerializer;

    check-cast v0, Lkotlinx/serialization/SerializationStrategy;

    iget-object p0, p0, Lcom/kakao/sdk/partner/talk/model/PartnerFriend;->allowedMsg:Ljava/lang/Boolean;

    const/16 v1, 0xa

    invoke-interface {p1, p2, v1, v0, p0}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    return-void

    nop

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public final component1()Ljava/lang/Long;
    .locals 1

    iget-object v0, p0, Lcom/kakao/sdk/partner/talk/model/PartnerFriend;->id:Ljava/lang/Long;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final component10()Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lcom/kakao/sdk/partner/talk/model/PartnerFriend;->msgAllowed:Ljava/lang/Boolean;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final component11()Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lcom/kakao/sdk/partner/talk/model/PartnerFriend;->allowedMsg:Ljava/lang/Boolean;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final component2()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/kakao/sdk/partner/talk/model/PartnerFriend;->uuid:Ljava/lang/String;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final component3()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/kakao/sdk/partner/talk/model/PartnerFriend;->profileNickname:Ljava/lang/String;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final component4()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/kakao/sdk/partner/talk/model/PartnerFriend;->profileThumbnailImage:Ljava/lang/String;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final component5()Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lcom/kakao/sdk/partner/talk/model/PartnerFriend;->favorite:Ljava/lang/Boolean;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final component6()Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lcom/kakao/sdk/partner/talk/model/PartnerFriend;->registeredToApp:Ljava/lang/Boolean;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final component7()Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lcom/kakao/sdk/partner/talk/model/PartnerFriend;->appRegistered:Ljava/lang/Boolean;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final component8()Lcom/kakao/sdk/partner/talk/model/FriendRelation;
    .locals 1

    iget-object v0, p0, Lcom/kakao/sdk/partner/talk/model/PartnerFriend;->relation:Lcom/kakao/sdk/partner/talk/model/FriendRelation;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final component9()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/kakao/sdk/partner/talk/model/PartnerFriend;->talkOs:Ljava/lang/String;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final copy(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Lcom/kakao/sdk/partner/talk/model/FriendRelation;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;)Lcom/kakao/sdk/partner/talk/model/PartnerFriend;
    .locals 13

    const-string/jumbo v0, "uuid"

    move-object v3, p2

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/kakao/sdk/partner/talk/model/PartnerFriend;

    move-object v1, v0

    move-object v2, p1

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move-object/from16 v12, p11

    invoke-direct/range {v1 .. v12}, Lcom/kakao/sdk/partner/talk/model/PartnerFriend;-><init>(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Lcom/kakao/sdk/partner/talk/model/FriendRelation;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

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
    instance-of v1, p1, Lcom/kakao/sdk/partner/talk/model/PartnerFriend;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/kakao/sdk/partner/talk/model/PartnerFriend;

    iget-object v1, p0, Lcom/kakao/sdk/partner/talk/model/PartnerFriend;->id:Ljava/lang/Long;

    iget-object v3, p1, Lcom/kakao/sdk/partner/talk/model/PartnerFriend;->id:Ljava/lang/Long;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/kakao/sdk/partner/talk/model/PartnerFriend;->uuid:Ljava/lang/String;

    iget-object v3, p1, Lcom/kakao/sdk/partner/talk/model/PartnerFriend;->uuid:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/kakao/sdk/partner/talk/model/PartnerFriend;->profileNickname:Ljava/lang/String;

    iget-object v3, p1, Lcom/kakao/sdk/partner/talk/model/PartnerFriend;->profileNickname:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/kakao/sdk/partner/talk/model/PartnerFriend;->profileThumbnailImage:Ljava/lang/String;

    iget-object v3, p1, Lcom/kakao/sdk/partner/talk/model/PartnerFriend;->profileThumbnailImage:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lcom/kakao/sdk/partner/talk/model/PartnerFriend;->favorite:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/kakao/sdk/partner/talk/model/PartnerFriend;->favorite:Ljava/lang/Boolean;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget-object v1, p0, Lcom/kakao/sdk/partner/talk/model/PartnerFriend;->registeredToApp:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/kakao/sdk/partner/talk/model/PartnerFriend;->registeredToApp:Ljava/lang/Boolean;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    :cond_7
    iget-object v1, p0, Lcom/kakao/sdk/partner/talk/model/PartnerFriend;->appRegistered:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/kakao/sdk/partner/talk/model/PartnerFriend;->appRegistered:Ljava/lang/Boolean;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    return v2

    :cond_8
    iget-object v1, p0, Lcom/kakao/sdk/partner/talk/model/PartnerFriend;->relation:Lcom/kakao/sdk/partner/talk/model/FriendRelation;

    iget-object v3, p1, Lcom/kakao/sdk/partner/talk/model/PartnerFriend;->relation:Lcom/kakao/sdk/partner/talk/model/FriendRelation;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    return v2

    :cond_9
    iget-object v1, p0, Lcom/kakao/sdk/partner/talk/model/PartnerFriend;->talkOs:Ljava/lang/String;

    iget-object v3, p1, Lcom/kakao/sdk/partner/talk/model/PartnerFriend;->talkOs:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    return v2

    :cond_a
    iget-object v1, p0, Lcom/kakao/sdk/partner/talk/model/PartnerFriend;->msgAllowed:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/kakao/sdk/partner/talk/model/PartnerFriend;->msgAllowed:Ljava/lang/Boolean;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    return v2

    :cond_b
    iget-object v1, p0, Lcom/kakao/sdk/partner/talk/model/PartnerFriend;->allowedMsg:Ljava/lang/Boolean;

    iget-object p1, p1, Lcom/kakao/sdk/partner/talk/model/PartnerFriend;->allowedMsg:Ljava/lang/Boolean;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_c

    return v2

    :cond_c
    return v0

    .array-data 1
    .end array-data
.end method

.method public final getAllowedMsg()Ljava/lang/Boolean;
    .locals 1

    .line 599
    iget-object v0, p0, Lcom/kakao/sdk/partner/talk/model/PartnerFriend;->allowedMsg:Ljava/lang/Boolean;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final getAppRegistered()Ljava/lang/Boolean;
    .locals 1

    .line 519
    iget-object v0, p0, Lcom/kakao/sdk/partner/talk/model/PartnerFriend;->appRegistered:Ljava/lang/Boolean;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final getFavorite()Ljava/lang/Boolean;
    .locals 1

    .line 469
    iget-object v0, p0, Lcom/kakao/sdk/partner/talk/model/PartnerFriend;->favorite:Ljava/lang/Boolean;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final getId()Ljava/lang/Long;
    .locals 1

    .line 429
    iget-object v0, p0, Lcom/kakao/sdk/partner/talk/model/PartnerFriend;->id:Ljava/lang/Long;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final getMsgAllowed()Ljava/lang/Boolean;
    .locals 1

    .line 579
    iget-object v0, p0, Lcom/kakao/sdk/partner/talk/model/PartnerFriend;->msgAllowed:Ljava/lang/Boolean;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final getProfileNickname()Ljava/lang/String;
    .locals 1

    .line 449
    iget-object v0, p0, Lcom/kakao/sdk/partner/talk/model/PartnerFriend;->profileNickname:Ljava/lang/String;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final getProfileThumbnailImage()Ljava/lang/String;
    .locals 1

    .line 459
    iget-object v0, p0, Lcom/kakao/sdk/partner/talk/model/PartnerFriend;->profileThumbnailImage:Ljava/lang/String;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final getRegisteredToApp()Ljava/lang/Boolean;
    .locals 1

    .line 499
    iget-object v0, p0, Lcom/kakao/sdk/partner/talk/model/PartnerFriend;->registeredToApp:Ljava/lang/Boolean;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final getRelation()Lcom/kakao/sdk/partner/talk/model/FriendRelation;
    .locals 1

    .line 539
    iget-object v0, p0, Lcom/kakao/sdk/partner/talk/model/PartnerFriend;->relation:Lcom/kakao/sdk/partner/talk/model/FriendRelation;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final getTalkOs()Ljava/lang/String;
    .locals 1

    .line 549
    iget-object v0, p0, Lcom/kakao/sdk/partner/talk/model/PartnerFriend;->talkOs:Ljava/lang/String;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final getUuid()Ljava/lang/String;
    .locals 1

    .line 439
    iget-object v0, p0, Lcom/kakao/sdk/partner/talk/model/PartnerFriend;->uuid:Ljava/lang/String;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/kakao/sdk/partner/talk/model/PartnerFriend;->id:Ljava/lang/Long;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/kakao/sdk/partner/talk/model/PartnerFriend;->uuid:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/kakao/sdk/partner/talk/model/PartnerFriend;->profileNickname:Ljava/lang/String;

    if-nez v2, :cond_1

    move v2, v1

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/kakao/sdk/partner/talk/model/PartnerFriend;->profileThumbnailImage:Ljava/lang/String;

    if-nez v2, :cond_2

    move v2, v1

    goto :goto_2

    :cond_2
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/kakao/sdk/partner/talk/model/PartnerFriend;->favorite:Ljava/lang/Boolean;

    if-nez v2, :cond_3

    move v2, v1

    goto :goto_3

    :cond_3
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_3
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/kakao/sdk/partner/talk/model/PartnerFriend;->registeredToApp:Ljava/lang/Boolean;

    if-nez v2, :cond_4

    move v2, v1

    goto :goto_4

    :cond_4
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_4
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/kakao/sdk/partner/talk/model/PartnerFriend;->appRegistered:Ljava/lang/Boolean;

    if-nez v2, :cond_5

    move v2, v1

    goto :goto_5

    :cond_5
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_5
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/kakao/sdk/partner/talk/model/PartnerFriend;->relation:Lcom/kakao/sdk/partner/talk/model/FriendRelation;

    if-nez v2, :cond_6

    move v2, v1

    goto :goto_6

    :cond_6
    invoke-virtual {v2}, Lcom/kakao/sdk/partner/talk/model/FriendRelation;->hashCode()I

    move-result v2

    :goto_6
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/kakao/sdk/partner/talk/model/PartnerFriend;->talkOs:Ljava/lang/String;

    if-nez v2, :cond_7

    move v2, v1

    goto :goto_7

    :cond_7
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_7
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/kakao/sdk/partner/talk/model/PartnerFriend;->msgAllowed:Ljava/lang/Boolean;

    if-nez v2, :cond_8

    move v2, v1

    goto :goto_8

    :cond_8
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_8
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/kakao/sdk/partner/talk/model/PartnerFriend;->allowedMsg:Ljava/lang/Boolean;

    if-nez v2, :cond_9

    goto :goto_9

    :cond_9
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_9
    add-int/2addr v0, v1

    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public toString()Ljava/lang/String;
    .locals 13

    iget-object v0, p0, Lcom/kakao/sdk/partner/talk/model/PartnerFriend;->id:Ljava/lang/Long;

    iget-object v1, p0, Lcom/kakao/sdk/partner/talk/model/PartnerFriend;->uuid:Ljava/lang/String;

    iget-object v2, p0, Lcom/kakao/sdk/partner/talk/model/PartnerFriend;->profileNickname:Ljava/lang/String;

    iget-object v3, p0, Lcom/kakao/sdk/partner/talk/model/PartnerFriend;->profileThumbnailImage:Ljava/lang/String;

    iget-object v4, p0, Lcom/kakao/sdk/partner/talk/model/PartnerFriend;->favorite:Ljava/lang/Boolean;

    iget-object v5, p0, Lcom/kakao/sdk/partner/talk/model/PartnerFriend;->registeredToApp:Ljava/lang/Boolean;

    iget-object v6, p0, Lcom/kakao/sdk/partner/talk/model/PartnerFriend;->appRegistered:Ljava/lang/Boolean;

    iget-object v7, p0, Lcom/kakao/sdk/partner/talk/model/PartnerFriend;->relation:Lcom/kakao/sdk/partner/talk/model/FriendRelation;

    iget-object v8, p0, Lcom/kakao/sdk/partner/talk/model/PartnerFriend;->talkOs:Ljava/lang/String;

    iget-object v9, p0, Lcom/kakao/sdk/partner/talk/model/PartnerFriend;->msgAllowed:Ljava/lang/Boolean;

    iget-object v10, p0, Lcom/kakao/sdk/partner/talk/model/PartnerFriend;->allowedMsg:Ljava/lang/Boolean;

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "PartnerFriend(id="

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v11, ", uuid="

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", profileNickname="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", profileThumbnailImage="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", favorite="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", registeredToApp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", appRegistered="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", relation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", talkOs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", msgAllowed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", allowedMsg="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

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
