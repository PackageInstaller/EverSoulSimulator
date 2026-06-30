.class public final Lcom/kakao/sdk/user/model/UserResponse;
.super Ljava/lang/Object;
.source "UserResponse.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kakao/sdk/user/model/UserResponse$$serializer;,
        Lcom/kakao/sdk/user/model/UserResponse$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000`\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008)\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0087\u0008\u0018\u0000 G2\u00020\u0001:\u0002FGB\u0081\u0001\u0008\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\u0014\u0010\u0006\u001a\u0010\u0012\u0004\u0012\u00020\u0008\u0012\u0004\u0012\u00020\u0008\u0018\u00010\u0007\u0012\n\u0008\u0001\u0010\t\u001a\u0004\u0018\u00010\n\u0012\n\u0008\u0001\u0010\u000b\u001a\u0004\u0018\u00010\u0008\u0012\n\u0008\u0001\u0010\u000c\u001a\u0004\u0018\u00010\r\u0012\n\u0008\u0001\u0010\u000e\u001a\u0004\u0018\u00010\r\u0012\n\u0008\u0001\u0010\u000f\u001a\u0004\u0018\u00010\u0010\u0012\n\u0008\u0001\u0010\u0011\u001a\u0004\u0018\u00010\u0012\u0012\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u0014\u00a2\u0006\u0002\u0010\u0015Ba\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\u0014\u0010\u0006\u001a\u0010\u0012\u0004\u0012\u00020\u0008\u0012\u0004\u0012\u00020\u0008\u0018\u00010\u0007\u0012\u0008\u0010\t\u001a\u0004\u0018\u00010\n\u0012\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u0008\u0012\u0008\u0010\u000c\u001a\u0004\u0018\u00010\r\u0012\u0008\u0010\u000e\u001a\u0004\u0018\u00010\r\u0012\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u0010\u0012\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u0012\u00a2\u0006\u0002\u0010\u0016J\u0010\u0010/\u001a\u0004\u0018\u00010\u0005H\u00c6\u0003\u00a2\u0006\u0002\u0010&J\u0017\u00100\u001a\u0010\u0012\u0004\u0012\u00020\u0008\u0012\u0004\u0012\u00020\u0008\u0018\u00010\u0007H\u00c6\u0003J\u000b\u00101\u001a\u0004\u0018\u00010\nH\u00c6\u0003J\u000b\u00102\u001a\u0004\u0018\u00010\u0008H\u00c6\u0003J\u000b\u00103\u001a\u0004\u0018\u00010\rH\u00c6\u0003J\u000b\u00104\u001a\u0004\u0018\u00010\rH\u00c6\u0003J\u0010\u00105\u001a\u0004\u0018\u00010\u0010H\u00c6\u0003\u00a2\u0006\u0002\u0010#J\u000b\u00106\u001a\u0004\u0018\u00010\u0012H\u00c6\u0003Jz\u00107\u001a\u00020\u00002\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00052\u0016\u0008\u0002\u0010\u0006\u001a\u0010\u0012\u0004\u0012\u00020\u0008\u0012\u0004\u0012\u00020\u0008\u0018\u00010\u00072\n\u0008\u0002\u0010\t\u001a\u0004\u0018\u00010\n2\n\u0008\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u00082\n\u0008\u0002\u0010\u000c\u001a\u0004\u0018\u00010\r2\n\u0008\u0002\u0010\u000e\u001a\u0004\u0018\u00010\r2\n\u0008\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u00102\n\u0008\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u0012H\u00c6\u0001\u00a2\u0006\u0002\u00108J\u0013\u00109\u001a\u00020\u00102\u0008\u0010:\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010;\u001a\u00020\u0003H\u00d6\u0001J\t\u0010<\u001a\u00020\u0008H\u00d6\u0001J\u0006\u0010=\u001a\u00020>J!\u0010?\u001a\u00020@2\u0006\u0010A\u001a\u00020\u00002\u0006\u0010B\u001a\u00020C2\u0006\u0010D\u001a\u00020EH\u00c7\u0001R\u001e\u0010\u000c\u001a\u0004\u0018\u00010\r8\u0006X\u0087\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008\u0017\u0010\u0018\u001a\u0004\u0008\u0019\u0010\u001aR\u001e\u0010\u0011\u001a\u0004\u0018\u00010\u00128\u0006X\u0087\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008\u001b\u0010\u0018\u001a\u0004\u0008\u001c\u0010\u001dR\u001e\u0010\u000b\u001a\u0004\u0018\u00010\u00088\u0006X\u0087\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008\u001e\u0010\u0018\u001a\u0004\u0008\u001f\u0010 R \u0010\u000f\u001a\u0004\u0018\u00010\u00108\u0006X\u0087\u0004\u00a2\u0006\u0010\n\u0002\u0010$\u0012\u0004\u0008!\u0010\u0018\u001a\u0004\u0008\"\u0010#R\u0015\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\n\n\u0002\u0010\'\u001a\u0004\u0008%\u0010&R\u001e\u0010\t\u001a\u0004\u0018\u00010\n8\u0006X\u0087\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008(\u0010\u0018\u001a\u0004\u0008)\u0010*R\u001f\u0010\u0006\u001a\u0010\u0012\u0004\u0012\u00020\u0008\u0012\u0004\u0012\u00020\u0008\u0018\u00010\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008+\u0010,R\u001e\u0010\u000e\u001a\u0004\u0018\u00010\r8\u0006X\u0087\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008-\u0010\u0018\u001a\u0004\u0008.\u0010\u001a\u00a8\u0006H"
    }
    d2 = {
        "Lcom/kakao/sdk/user/model/UserResponse;",
        "",
        "seen1",
        "",
        "id",
        "",
        "properties",
        "",
        "",
        "kakaoAccount",
        "Lcom/kakao/sdk/user/model/Account;",
        "groupUserToken",
        "connectedAt",
        "Ljava/util/Date;",
        "synchedAt",
        "hasSignedUp",
        "",
        "forPartner",
        "Lcom/kakao/sdk/user/model/ForPartner;",
        "serializationConstructorMarker",
        "Lkotlinx/serialization/internal/SerializationConstructorMarker;",
        "(ILjava/lang/Long;Ljava/util/Map;Lcom/kakao/sdk/user/model/Account;Ljava/lang/String;Ljava/util/Date;Ljava/util/Date;Ljava/lang/Boolean;Lcom/kakao/sdk/user/model/ForPartner;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V",
        "(Ljava/lang/Long;Ljava/util/Map;Lcom/kakao/sdk/user/model/Account;Ljava/lang/String;Ljava/util/Date;Ljava/util/Date;Ljava/lang/Boolean;Lcom/kakao/sdk/user/model/ForPartner;)V",
        "getConnectedAt$annotations",
        "()V",
        "getConnectedAt",
        "()Ljava/util/Date;",
        "getForPartner$annotations",
        "getForPartner",
        "()Lcom/kakao/sdk/user/model/ForPartner;",
        "getGroupUserToken$annotations",
        "getGroupUserToken",
        "()Ljava/lang/String;",
        "getHasSignedUp$annotations",
        "getHasSignedUp",
        "()Ljava/lang/Boolean;",
        "Ljava/lang/Boolean;",
        "getId",
        "()Ljava/lang/Long;",
        "Ljava/lang/Long;",
        "getKakaoAccount$annotations",
        "getKakaoAccount",
        "()Lcom/kakao/sdk/user/model/Account;",
        "getProperties",
        "()Ljava/util/Map;",
        "getSynchedAt$annotations",
        "getSynchedAt",
        "component1",
        "component2",
        "component3",
        "component4",
        "component5",
        "component6",
        "component7",
        "component8",
        "copy",
        "(Ljava/lang/Long;Ljava/util/Map;Lcom/kakao/sdk/user/model/Account;Ljava/lang/String;Ljava/util/Date;Ljava/util/Date;Ljava/lang/Boolean;Lcom/kakao/sdk/user/model/ForPartner;)Lcom/kakao/sdk/user/model/UserResponse;",
        "equals",
        "other",
        "hashCode",
        "toString",
        "toUser",
        "Lcom/kakao/sdk/user/model/User;",
        "write$Self",
        "",
        "self",
        "output",
        "Lkotlinx/serialization/encoding/CompositeEncoder;",
        "serialDesc",
        "Lkotlinx/serialization/descriptors/SerialDescriptor;",
        "$serializer",
        "Companion",
        "user_release"
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
.field public static final Companion:Lcom/kakao/sdk/user/model/UserResponse$Companion;


# instance fields
.field private final connectedAt:Ljava/util/Date;

.field private final forPartner:Lcom/kakao/sdk/user/model/ForPartner;

.field private final groupUserToken:Ljava/lang/String;

.field private final hasSignedUp:Ljava/lang/Boolean;

.field private final id:Ljava/lang/Long;

.field private final kakaoAccount:Lcom/kakao/sdk/user/model/Account;

.field private final properties:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final synchedAt:Ljava/util/Date;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/kakao/sdk/user/model/UserResponse$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/kakao/sdk/user/model/UserResponse$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/kakao/sdk/user/model/UserResponse;->Companion:Lcom/kakao/sdk/user/model/UserResponse$Companion;

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public synthetic constructor <init>(ILjava/lang/Long;Ljava/util/Map;Lcom/kakao/sdk/user/model/Account;Ljava/lang/String;Ljava/util/Date;Ljava/util/Date;Ljava/lang/Boolean;Lcom/kakao/sdk/user/model/ForPartner;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V
    .locals 1
    .param p4    # Lcom/kakao/sdk/user/model/Account;
        .annotation runtime Lkotlinx/serialization/SerialName;
            value = "kakao_account"
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation runtime Lkotlinx/serialization/SerialName;
            value = "group_user_token"
        .end annotation
    .end param
    .param p6    # Ljava/util/Date;
        .annotation runtime Lkotlinx/serialization/SerialName;
            value = "connected_at"
        .end annotation
    .end param
    .param p7    # Ljava/util/Date;
        .annotation runtime Lkotlinx/serialization/SerialName;
            value = "synched_at"
        .end annotation
    .end param
    .param p8    # Ljava/lang/Boolean;
        .annotation runtime Lkotlinx/serialization/SerialName;
            value = "has_signed_up"
        .end annotation
    .end param
    .param p9    # Lcom/kakao/sdk/user/model/ForPartner;
        .annotation runtime Lkotlinx/serialization/SerialName;
            value = "for_partner"
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

    and-int/lit16 p10, p1, 0xff

    const/16 v0, 0xff

    if-eq v0, p10, :cond_0

    .line 279
    sget-object p10, Lcom/kakao/sdk/user/model/UserResponse$$serializer;->INSTANCE:Lcom/kakao/sdk/user/model/UserResponse$$serializer;

    invoke-virtual {p10}, Lcom/kakao/sdk/user/model/UserResponse$$serializer;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object p10

    invoke-static {p1, v0, p10}, Lkotlinx/serialization/internal/PluginExceptionsKt;->throwMissingFieldException(IILkotlinx/serialization/descriptors/SerialDescriptor;)V

    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/kakao/sdk/user/model/UserResponse;->id:Ljava/lang/Long;

    iput-object p3, p0, Lcom/kakao/sdk/user/model/UserResponse;->properties:Ljava/util/Map;

    iput-object p4, p0, Lcom/kakao/sdk/user/model/UserResponse;->kakaoAccount:Lcom/kakao/sdk/user/model/Account;

    iput-object p5, p0, Lcom/kakao/sdk/user/model/UserResponse;->groupUserToken:Ljava/lang/String;

    iput-object p6, p0, Lcom/kakao/sdk/user/model/UserResponse;->connectedAt:Ljava/util/Date;

    iput-object p7, p0, Lcom/kakao/sdk/user/model/UserResponse;->synchedAt:Ljava/util/Date;

    iput-object p8, p0, Lcom/kakao/sdk/user/model/UserResponse;->hasSignedUp:Ljava/lang/Boolean;

    iput-object p9, p0, Lcom/kakao/sdk/user/model/UserResponse;->forPartner:Lcom/kakao/sdk/user/model/ForPartner;

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public constructor <init>(Ljava/lang/Long;Ljava/util/Map;Lcom/kakao/sdk/user/model/Account;Ljava/lang/String;Ljava/util/Date;Ljava/util/Date;Ljava/lang/Boolean;Lcom/kakao/sdk/user/model/ForPartner;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Long;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/kakao/sdk/user/model/Account;",
            "Ljava/lang/String;",
            "Ljava/util/Date;",
            "Ljava/util/Date;",
            "Ljava/lang/Boolean;",
            "Lcom/kakao/sdk/user/model/ForPartner;",
            ")V"
        }
    .end annotation

    .line 279
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 299
    iput-object p1, p0, Lcom/kakao/sdk/user/model/UserResponse;->id:Ljava/lang/Long;

    .line 309
    iput-object p2, p0, Lcom/kakao/sdk/user/model/UserResponse;->properties:Ljava/util/Map;

    .line 319
    iput-object p3, p0, Lcom/kakao/sdk/user/model/UserResponse;->kakaoAccount:Lcom/kakao/sdk/user/model/Account;

    .line 329
    iput-object p4, p0, Lcom/kakao/sdk/user/model/UserResponse;->groupUserToken:Ljava/lang/String;

    .line 339
    iput-object p5, p0, Lcom/kakao/sdk/user/model/UserResponse;->connectedAt:Ljava/util/Date;

    .line 349
    iput-object p6, p0, Lcom/kakao/sdk/user/model/UserResponse;->synchedAt:Ljava/util/Date;

    .line 359
    iput-object p7, p0, Lcom/kakao/sdk/user/model/UserResponse;->hasSignedUp:Ljava/lang/Boolean;

    .line 369
    iput-object p8, p0, Lcom/kakao/sdk/user/model/UserResponse;->forPartner:Lcom/kakao/sdk/user/model/ForPartner;

    return-void

    .array-data 1
    .end array-data
.end method

.method public static synthetic copy$default(Lcom/kakao/sdk/user/model/UserResponse;Ljava/lang/Long;Ljava/util/Map;Lcom/kakao/sdk/user/model/Account;Ljava/lang/String;Ljava/util/Date;Ljava/util/Date;Ljava/lang/Boolean;Lcom/kakao/sdk/user/model/ForPartner;ILjava/lang/Object;)Lcom/kakao/sdk/user/model/UserResponse;
    .locals 9

    move-object v0, p0

    move/from16 v1, p9

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/kakao/sdk/user/model/UserResponse;->id:Ljava/lang/Long;

    goto :goto_0

    :cond_0
    move-object v2, p1

    :goto_0
    and-int/lit8 v3, v1, 0x2

    if-eqz v3, :cond_1

    iget-object v3, v0, Lcom/kakao/sdk/user/model/UserResponse;->properties:Ljava/util/Map;

    goto :goto_1

    :cond_1
    move-object v3, p2

    :goto_1
    and-int/lit8 v4, v1, 0x4

    if-eqz v4, :cond_2

    iget-object v4, v0, Lcom/kakao/sdk/user/model/UserResponse;->kakaoAccount:Lcom/kakao/sdk/user/model/Account;

    goto :goto_2

    :cond_2
    move-object v4, p3

    :goto_2
    and-int/lit8 v5, v1, 0x8

    if-eqz v5, :cond_3

    iget-object v5, v0, Lcom/kakao/sdk/user/model/UserResponse;->groupUserToken:Ljava/lang/String;

    goto :goto_3

    :cond_3
    move-object v5, p4

    :goto_3
    and-int/lit8 v6, v1, 0x10

    if-eqz v6, :cond_4

    iget-object v6, v0, Lcom/kakao/sdk/user/model/UserResponse;->connectedAt:Ljava/util/Date;

    goto :goto_4

    :cond_4
    move-object v6, p5

    :goto_4
    and-int/lit8 v7, v1, 0x20

    if-eqz v7, :cond_5

    iget-object v7, v0, Lcom/kakao/sdk/user/model/UserResponse;->synchedAt:Ljava/util/Date;

    goto :goto_5

    :cond_5
    move-object v7, p6

    :goto_5
    and-int/lit8 v8, v1, 0x40

    if-eqz v8, :cond_6

    iget-object v8, v0, Lcom/kakao/sdk/user/model/UserResponse;->hasSignedUp:Ljava/lang/Boolean;

    goto :goto_6

    :cond_6
    move-object/from16 v8, p7

    :goto_6
    and-int/lit16 v1, v1, 0x80

    if-eqz v1, :cond_7

    iget-object v1, v0, Lcom/kakao/sdk/user/model/UserResponse;->forPartner:Lcom/kakao/sdk/user/model/ForPartner;

    goto :goto_7

    :cond_7
    move-object/from16 v1, p8

    :goto_7
    move-object p1, v2

    move-object p2, v3

    move-object p3, v4

    move-object p4, v5

    move-object p5, v6

    move-object p6, v7

    move-object/from16 p7, v8

    move-object/from16 p8, v1

    invoke-virtual/range {p0 .. p8}, Lcom/kakao/sdk/user/model/UserResponse;->copy(Ljava/lang/Long;Ljava/util/Map;Lcom/kakao/sdk/user/model/Account;Ljava/lang/String;Ljava/util/Date;Ljava/util/Date;Ljava/lang/Boolean;Lcom/kakao/sdk/user/model/ForPartner;)Lcom/kakao/sdk/user/model/UserResponse;

    move-result-object v0

    return-object v0

    .array-data 1
    .end array-data
.end method

.method public static synthetic getConnectedAt$annotations()V
    .locals 0
    .annotation runtime Lkotlinx/serialization/SerialName;
        value = "connected_at"
    .end annotation

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public static synthetic getForPartner$annotations()V
    .locals 0
    .annotation runtime Lkotlinx/serialization/SerialName;
        value = "for_partner"
    .end annotation

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public static synthetic getGroupUserToken$annotations()V
    .locals 0
    .annotation runtime Lkotlinx/serialization/SerialName;
        value = "group_user_token"
    .end annotation

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public static synthetic getHasSignedUp$annotations()V
    .locals 0
    .annotation runtime Lkotlinx/serialization/SerialName;
        value = "has_signed_up"
    .end annotation

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public static synthetic getKakaoAccount$annotations()V
    .locals 0
    .annotation runtime Lkotlinx/serialization/SerialName;
        value = "kakao_account"
    .end annotation

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public static synthetic getSynchedAt$annotations()V
    .locals 0
    .annotation runtime Lkotlinx/serialization/SerialName;
        value = "synched_at"
    .end annotation

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public static final write$Self(Lcom/kakao/sdk/user/model/UserResponse;Lkotlinx/serialization/encoding/CompositeEncoder;Lkotlinx/serialization/descriptors/SerialDescriptor;)V
    .locals 5
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "self"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "output"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "serialDesc"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 279
    sget-object v0, Lkotlinx/serialization/internal/LongSerializer;->INSTANCE:Lkotlinx/serialization/internal/LongSerializer;

    check-cast v0, Lkotlinx/serialization/SerializationStrategy;

    iget-object v1, p0, Lcom/kakao/sdk/user/model/UserResponse;->id:Ljava/lang/Long;

    const/4 v2, 0x0

    invoke-interface {p1, p2, v2, v0, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    new-instance v0, Lkotlinx/serialization/internal/LinkedHashMapSerializer;

    sget-object v1, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    check-cast v1, Lkotlinx/serialization/KSerializer;

    sget-object v3, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    check-cast v3, Lkotlinx/serialization/KSerializer;

    invoke-direct {v0, v1, v3}, Lkotlinx/serialization/internal/LinkedHashMapSerializer;-><init>(Lkotlinx/serialization/KSerializer;Lkotlinx/serialization/KSerializer;)V

    check-cast v0, Lkotlinx/serialization/SerializationStrategy;

    iget-object v1, p0, Lcom/kakao/sdk/user/model/UserResponse;->properties:Ljava/util/Map;

    const/4 v3, 0x1

    invoke-interface {p1, p2, v3, v0, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    sget-object v0, Lcom/kakao/sdk/user/model/Account$$serializer;->INSTANCE:Lcom/kakao/sdk/user/model/Account$$serializer;

    check-cast v0, Lkotlinx/serialization/SerializationStrategy;

    iget-object v1, p0, Lcom/kakao/sdk/user/model/UserResponse;->kakaoAccount:Lcom/kakao/sdk/user/model/Account;

    const/4 v3, 0x2

    invoke-interface {p1, p2, v3, v0, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    sget-object v0, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    check-cast v0, Lkotlinx/serialization/SerializationStrategy;

    iget-object v1, p0, Lcom/kakao/sdk/user/model/UserResponse;->groupUserToken:Ljava/lang/String;

    const/4 v3, 0x3

    invoke-interface {p1, p2, v3, v0, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    new-instance v0, Lkotlinx/serialization/ContextualSerializer;

    const-class v1, Ljava/util/Date;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    new-array v3, v2, [Lkotlinx/serialization/KSerializer;

    const/4 v4, 0x0

    invoke-direct {v0, v1, v4, v3}, Lkotlinx/serialization/ContextualSerializer;-><init>(Lkotlin/reflect/KClass;Lkotlinx/serialization/KSerializer;[Lkotlinx/serialization/KSerializer;)V

    check-cast v0, Lkotlinx/serialization/SerializationStrategy;

    iget-object v1, p0, Lcom/kakao/sdk/user/model/UserResponse;->connectedAt:Ljava/util/Date;

    const/4 v3, 0x4

    invoke-interface {p1, p2, v3, v0, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    new-instance v0, Lkotlinx/serialization/ContextualSerializer;

    const-class v1, Ljava/util/Date;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    new-array v2, v2, [Lkotlinx/serialization/KSerializer;

    invoke-direct {v0, v1, v4, v2}, Lkotlinx/serialization/ContextualSerializer;-><init>(Lkotlin/reflect/KClass;Lkotlinx/serialization/KSerializer;[Lkotlinx/serialization/KSerializer;)V

    check-cast v0, Lkotlinx/serialization/SerializationStrategy;

    iget-object v1, p0, Lcom/kakao/sdk/user/model/UserResponse;->synchedAt:Ljava/util/Date;

    const/4 v2, 0x5

    invoke-interface {p1, p2, v2, v0, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    sget-object v0, Lkotlinx/serialization/internal/BooleanSerializer;->INSTANCE:Lkotlinx/serialization/internal/BooleanSerializer;

    check-cast v0, Lkotlinx/serialization/SerializationStrategy;

    iget-object v1, p0, Lcom/kakao/sdk/user/model/UserResponse;->hasSignedUp:Ljava/lang/Boolean;

    const/4 v2, 0x6

    invoke-interface {p1, p2, v2, v0, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    sget-object v0, Lcom/kakao/sdk/user/model/ForPartner$$serializer;->INSTANCE:Lcom/kakao/sdk/user/model/ForPartner$$serializer;

    check-cast v0, Lkotlinx/serialization/SerializationStrategy;

    iget-object p0, p0, Lcom/kakao/sdk/user/model/UserResponse;->forPartner:Lcom/kakao/sdk/user/model/ForPartner;

    const/4 v1, 0x7

    invoke-interface {p1, p2, v1, v0, p0}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    return-void

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public final component1()Ljava/lang/Long;
    .locals 1

    iget-object v0, p0, Lcom/kakao/sdk/user/model/UserResponse;->id:Ljava/lang/Long;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final component2()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/kakao/sdk/user/model/UserResponse;->properties:Ljava/util/Map;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final component3()Lcom/kakao/sdk/user/model/Account;
    .locals 1

    iget-object v0, p0, Lcom/kakao/sdk/user/model/UserResponse;->kakaoAccount:Lcom/kakao/sdk/user/model/Account;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final component4()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/kakao/sdk/user/model/UserResponse;->groupUserToken:Ljava/lang/String;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final component5()Ljava/util/Date;
    .locals 1

    iget-object v0, p0, Lcom/kakao/sdk/user/model/UserResponse;->connectedAt:Ljava/util/Date;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final component6()Ljava/util/Date;
    .locals 1

    iget-object v0, p0, Lcom/kakao/sdk/user/model/UserResponse;->synchedAt:Ljava/util/Date;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final component7()Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lcom/kakao/sdk/user/model/UserResponse;->hasSignedUp:Ljava/lang/Boolean;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final component8()Lcom/kakao/sdk/user/model/ForPartner;
    .locals 1

    iget-object v0, p0, Lcom/kakao/sdk/user/model/UserResponse;->forPartner:Lcom/kakao/sdk/user/model/ForPartner;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final copy(Ljava/lang/Long;Ljava/util/Map;Lcom/kakao/sdk/user/model/Account;Ljava/lang/String;Ljava/util/Date;Ljava/util/Date;Ljava/lang/Boolean;Lcom/kakao/sdk/user/model/ForPartner;)Lcom/kakao/sdk/user/model/UserResponse;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Long;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/kakao/sdk/user/model/Account;",
            "Ljava/lang/String;",
            "Ljava/util/Date;",
            "Ljava/util/Date;",
            "Ljava/lang/Boolean;",
            "Lcom/kakao/sdk/user/model/ForPartner;",
            ")",
            "Lcom/kakao/sdk/user/model/UserResponse;"
        }
    .end annotation

    new-instance v9, Lcom/kakao/sdk/user/model/UserResponse;

    move-object v0, v9

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    invoke-direct/range {v0 .. v8}, Lcom/kakao/sdk/user/model/UserResponse;-><init>(Ljava/lang/Long;Ljava/util/Map;Lcom/kakao/sdk/user/model/Account;Ljava/lang/String;Ljava/util/Date;Ljava/util/Date;Ljava/lang/Boolean;Lcom/kakao/sdk/user/model/ForPartner;)V

    return-object v9

    .array-data 1
    .end array-data
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/kakao/sdk/user/model/UserResponse;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/kakao/sdk/user/model/UserResponse;

    iget-object v1, p0, Lcom/kakao/sdk/user/model/UserResponse;->id:Ljava/lang/Long;

    iget-object v3, p1, Lcom/kakao/sdk/user/model/UserResponse;->id:Ljava/lang/Long;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/kakao/sdk/user/model/UserResponse;->properties:Ljava/util/Map;

    iget-object v3, p1, Lcom/kakao/sdk/user/model/UserResponse;->properties:Ljava/util/Map;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/kakao/sdk/user/model/UserResponse;->kakaoAccount:Lcom/kakao/sdk/user/model/Account;

    iget-object v3, p1, Lcom/kakao/sdk/user/model/UserResponse;->kakaoAccount:Lcom/kakao/sdk/user/model/Account;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/kakao/sdk/user/model/UserResponse;->groupUserToken:Ljava/lang/String;

    iget-object v3, p1, Lcom/kakao/sdk/user/model/UserResponse;->groupUserToken:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lcom/kakao/sdk/user/model/UserResponse;->connectedAt:Ljava/util/Date;

    iget-object v3, p1, Lcom/kakao/sdk/user/model/UserResponse;->connectedAt:Ljava/util/Date;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget-object v1, p0, Lcom/kakao/sdk/user/model/UserResponse;->synchedAt:Ljava/util/Date;

    iget-object v3, p1, Lcom/kakao/sdk/user/model/UserResponse;->synchedAt:Ljava/util/Date;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    :cond_7
    iget-object v1, p0, Lcom/kakao/sdk/user/model/UserResponse;->hasSignedUp:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/kakao/sdk/user/model/UserResponse;->hasSignedUp:Ljava/lang/Boolean;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    return v2

    :cond_8
    iget-object v1, p0, Lcom/kakao/sdk/user/model/UserResponse;->forPartner:Lcom/kakao/sdk/user/model/ForPartner;

    iget-object p1, p1, Lcom/kakao/sdk/user/model/UserResponse;->forPartner:Lcom/kakao/sdk/user/model/ForPartner;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_9

    return v2

    :cond_9
    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final getConnectedAt()Ljava/util/Date;
    .locals 1

    .line 339
    iget-object v0, p0, Lcom/kakao/sdk/user/model/UserResponse;->connectedAt:Ljava/util/Date;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final getForPartner()Lcom/kakao/sdk/user/model/ForPartner;
    .locals 1

    .line 369
    iget-object v0, p0, Lcom/kakao/sdk/user/model/UserResponse;->forPartner:Lcom/kakao/sdk/user/model/ForPartner;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final getGroupUserToken()Ljava/lang/String;
    .locals 1

    .line 329
    iget-object v0, p0, Lcom/kakao/sdk/user/model/UserResponse;->groupUserToken:Ljava/lang/String;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final getHasSignedUp()Ljava/lang/Boolean;
    .locals 1

    .line 359
    iget-object v0, p0, Lcom/kakao/sdk/user/model/UserResponse;->hasSignedUp:Ljava/lang/Boolean;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final getId()Ljava/lang/Long;
    .locals 1

    .line 299
    iget-object v0, p0, Lcom/kakao/sdk/user/model/UserResponse;->id:Ljava/lang/Long;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final getKakaoAccount()Lcom/kakao/sdk/user/model/Account;
    .locals 1

    .line 319
    iget-object v0, p0, Lcom/kakao/sdk/user/model/UserResponse;->kakaoAccount:Lcom/kakao/sdk/user/model/Account;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final getProperties()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 309
    iget-object v0, p0, Lcom/kakao/sdk/user/model/UserResponse;->properties:Ljava/util/Map;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final getSynchedAt()Ljava/util/Date;
    .locals 1

    .line 349
    iget-object v0, p0, Lcom/kakao/sdk/user/model/UserResponse;->synchedAt:Ljava/util/Date;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/kakao/sdk/user/model/UserResponse;->id:Ljava/lang/Long;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/kakao/sdk/user/model/UserResponse;->properties:Ljava/util/Map;

    if-nez v2, :cond_1

    move v2, v1

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/kakao/sdk/user/model/UserResponse;->kakaoAccount:Lcom/kakao/sdk/user/model/Account;

    if-nez v2, :cond_2

    move v2, v1

    goto :goto_2

    :cond_2
    invoke-virtual {v2}, Lcom/kakao/sdk/user/model/Account;->hashCode()I

    move-result v2

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/kakao/sdk/user/model/UserResponse;->groupUserToken:Ljava/lang/String;

    if-nez v2, :cond_3

    move v2, v1

    goto :goto_3

    :cond_3
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_3
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/kakao/sdk/user/model/UserResponse;->connectedAt:Ljava/util/Date;

    if-nez v2, :cond_4

    move v2, v1

    goto :goto_4

    :cond_4
    invoke-virtual {v2}, Ljava/util/Date;->hashCode()I

    move-result v2

    :goto_4
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/kakao/sdk/user/model/UserResponse;->synchedAt:Ljava/util/Date;

    if-nez v2, :cond_5

    move v2, v1

    goto :goto_5

    :cond_5
    invoke-virtual {v2}, Ljava/util/Date;->hashCode()I

    move-result v2

    :goto_5
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/kakao/sdk/user/model/UserResponse;->hasSignedUp:Ljava/lang/Boolean;

    if-nez v2, :cond_6

    move v2, v1

    goto :goto_6

    :cond_6
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_6
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/kakao/sdk/user/model/UserResponse;->forPartner:Lcom/kakao/sdk/user/model/ForPartner;

    if-nez v2, :cond_7

    goto :goto_7

    :cond_7
    invoke-virtual {v2}, Lcom/kakao/sdk/user/model/ForPartner;->hashCode()I

    move-result v1

    :goto_7
    add-int/2addr v0, v1

    return v0

    .array-data 1
    .end array-data
.end method

.method public toString()Ljava/lang/String;
    .locals 10

    iget-object v0, p0, Lcom/kakao/sdk/user/model/UserResponse;->id:Ljava/lang/Long;

    iget-object v1, p0, Lcom/kakao/sdk/user/model/UserResponse;->properties:Ljava/util/Map;

    iget-object v2, p0, Lcom/kakao/sdk/user/model/UserResponse;->kakaoAccount:Lcom/kakao/sdk/user/model/Account;

    iget-object v3, p0, Lcom/kakao/sdk/user/model/UserResponse;->groupUserToken:Ljava/lang/String;

    iget-object v4, p0, Lcom/kakao/sdk/user/model/UserResponse;->connectedAt:Ljava/util/Date;

    iget-object v5, p0, Lcom/kakao/sdk/user/model/UserResponse;->synchedAt:Ljava/util/Date;

    iget-object v6, p0, Lcom/kakao/sdk/user/model/UserResponse;->hasSignedUp:Ljava/lang/Boolean;

    iget-object v7, p0, Lcom/kakao/sdk/user/model/UserResponse;->forPartner:Lcom/kakao/sdk/user/model/ForPartner;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "UserResponse(id="

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v8, ", properties="

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", kakaoAccount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", groupUserToken="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", connectedAt="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", synchedAt="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", hasSignedUp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", forPartner="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

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

.method public final toUser()Lcom/kakao/sdk/user/model/User;
    .locals 10

    .line 389
    new-instance v9, Lcom/kakao/sdk/user/model/User;

    .line 399
    iget-object v1, p0, Lcom/kakao/sdk/user/model/UserResponse;->id:Ljava/lang/Long;

    .line 409
    iget-object v2, p0, Lcom/kakao/sdk/user/model/UserResponse;->properties:Ljava/util/Map;

    .line 419
    iget-object v3, p0, Lcom/kakao/sdk/user/model/UserResponse;->kakaoAccount:Lcom/kakao/sdk/user/model/Account;

    .line 429
    iget-object v4, p0, Lcom/kakao/sdk/user/model/UserResponse;->groupUserToken:Ljava/lang/String;

    .line 439
    iget-object v5, p0, Lcom/kakao/sdk/user/model/UserResponse;->connectedAt:Ljava/util/Date;

    .line 449
    iget-object v6, p0, Lcom/kakao/sdk/user/model/UserResponse;->synchedAt:Ljava/util/Date;

    .line 459
    iget-object v7, p0, Lcom/kakao/sdk/user/model/UserResponse;->hasSignedUp:Ljava/lang/Boolean;

    .line 469
    iget-object v0, p0, Lcom/kakao/sdk/user/model/UserResponse;->forPartner:Lcom/kakao/sdk/user/model/ForPartner;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/kakao/sdk/user/model/ForPartner;->getUuid()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move-object v8, v0

    move-object v0, v9

    .line 389
    invoke-direct/range {v0 .. v8}, Lcom/kakao/sdk/user/model/User;-><init>(Ljava/lang/Long;Ljava/util/Map;Lcom/kakao/sdk/user/model/Account;Ljava/lang/String;Ljava/util/Date;Ljava/util/Date;Ljava/lang/Boolean;Ljava/lang/String;)V

    return-object v9

    .array-data 1
    .end array-data
.end method
