.class public final enum Lcom/kakao/sdk/common/model/AppsErrorCause;
.super Ljava/lang/Enum;
.source "KakaoAppsError.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kakao/sdk/common/model/AppsErrorCause$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/kakao/sdk/common/model/AppsErrorCause;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0008\u0015\u0008\u0087\u0001\u0018\u0000 \u00152\u0008\u0012\u0004\u0012\u00020\u00000\u0001:\u0001\u0015B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002j\u0002\u0008\u0003j\u0002\u0008\u0004j\u0002\u0008\u0005j\u0002\u0008\u0006j\u0002\u0008\u0007j\u0002\u0008\u0008j\u0002\u0008\tj\u0002\u0008\nj\u0002\u0008\u000bj\u0002\u0008\u000cj\u0002\u0008\rj\u0002\u0008\u000ej\u0002\u0008\u000fj\u0002\u0008\u0010j\u0002\u0008\u0011j\u0002\u0008\u0012j\u0002\u0008\u0013j\u0002\u0008\u0014\u00a8\u0006\u0016"
    }
    d2 = {
        "Lcom/kakao/sdk/common/model/AppsErrorCause;",
        "",
        "(Ljava/lang/String;I)V",
        "InternalServerError",
        "InvalidRequest",
        "InvalidParameter",
        "TimeExpired",
        "InvalidChannel",
        "IllegalStateChannel",
        "AppTypeError",
        "AppScopeError",
        "PermissionError",
        "AppKeyTypeError",
        "AppChannelNotConnected",
        "AuthError",
        "NotRegisteredUser",
        "InvalidScope",
        "AccountTermsError",
        "LoginRequired",
        "InvalidShippingAddressId",
        "Unknown",
        "Companion",
        "common_release"
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
    with = Lcom/kakao/sdk/common/model/AppsErrorCauseSerializer;
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/kakao/sdk/common/model/AppsErrorCause;

.field private static final $cachedSerializer$delegate:Lkotlin/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/Lazy<",
            "Lkotlinx/serialization/KSerializer<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field public static final enum AccountTermsError:Lcom/kakao/sdk/common/model/AppsErrorCause;
    .annotation runtime Lkotlinx/serialization/SerialName;
        value = "KAE204"
    .end annotation
.end field

.field public static final enum AppChannelNotConnected:Lcom/kakao/sdk/common/model/AppsErrorCause;
    .annotation runtime Lkotlinx/serialization/SerialName;
        value = "KAE105"
    .end annotation
.end field

.field public static final enum AppKeyTypeError:Lcom/kakao/sdk/common/model/AppsErrorCause;
    .annotation runtime Lkotlinx/serialization/SerialName;
        value = "KAE104"
    .end annotation
.end field

.field public static final enum AppScopeError:Lcom/kakao/sdk/common/model/AppsErrorCause;
    .annotation runtime Lkotlinx/serialization/SerialName;
        value = "KAE102"
    .end annotation
.end field

.field public static final enum AppTypeError:Lcom/kakao/sdk/common/model/AppsErrorCause;
    .annotation runtime Lkotlinx/serialization/SerialName;
        value = "KAE101"
    .end annotation
.end field

.field public static final enum AuthError:Lcom/kakao/sdk/common/model/AppsErrorCause;
    .annotation runtime Lkotlinx/serialization/SerialName;
        value = "KAE201"
    .end annotation
.end field

.field public static final Companion:Lcom/kakao/sdk/common/model/AppsErrorCause$Companion;

.field public static final enum IllegalStateChannel:Lcom/kakao/sdk/common/model/AppsErrorCause;
    .annotation runtime Lkotlinx/serialization/SerialName;
        value = "KAE006"
    .end annotation
.end field

.field public static final enum InternalServerError:Lcom/kakao/sdk/common/model/AppsErrorCause;
    .annotation runtime Lkotlinx/serialization/SerialName;
        value = "KAE001"
    .end annotation
.end field

.field public static final enum InvalidChannel:Lcom/kakao/sdk/common/model/AppsErrorCause;
    .annotation runtime Lkotlinx/serialization/SerialName;
        value = "KAE005"
    .end annotation
.end field

.field public static final enum InvalidParameter:Lcom/kakao/sdk/common/model/AppsErrorCause;
    .annotation runtime Lkotlinx/serialization/SerialName;
        value = "KAE003"
    .end annotation
.end field

.field public static final enum InvalidRequest:Lcom/kakao/sdk/common/model/AppsErrorCause;
    .annotation runtime Lkotlinx/serialization/SerialName;
        value = "KAE002"
    .end annotation
.end field

.field public static final enum InvalidScope:Lcom/kakao/sdk/common/model/AppsErrorCause;
    .annotation runtime Lkotlinx/serialization/SerialName;
        value = "KAE203"
    .end annotation
.end field

.field public static final enum InvalidShippingAddressId:Lcom/kakao/sdk/common/model/AppsErrorCause;
    .annotation runtime Lkotlinx/serialization/SerialName;
        value = "KAE206"
    .end annotation
.end field

.field public static final enum LoginRequired:Lcom/kakao/sdk/common/model/AppsErrorCause;
    .annotation runtime Lkotlinx/serialization/SerialName;
        value = "KAE205"
    .end annotation
.end field

.field public static final enum NotRegisteredUser:Lcom/kakao/sdk/common/model/AppsErrorCause;
    .annotation runtime Lkotlinx/serialization/SerialName;
        value = "KAE202"
    .end annotation
.end field

.field public static final enum PermissionError:Lcom/kakao/sdk/common/model/AppsErrorCause;
    .annotation runtime Lkotlinx/serialization/SerialName;
        value = "KAE103"
    .end annotation
.end field

.field public static final enum TimeExpired:Lcom/kakao/sdk/common/model/AppsErrorCause;
    .annotation runtime Lkotlinx/serialization/SerialName;
        value = "KAE004"
    .end annotation
.end field

.field public static final enum Unknown:Lcom/kakao/sdk/common/model/AppsErrorCause;
    .annotation runtime Lcom/kakao/sdk/common/json/UnknownValue;
    .end annotation
.end field


# direct methods
.method private static final synthetic $values()[Lcom/kakao/sdk/common/model/AppsErrorCause;
    .locals 3

    const/16 v0, 0x12

    new-array v0, v0, [Lcom/kakao/sdk/common/model/AppsErrorCause;

    const/4 v1, 0x0

    sget-object v2, Lcom/kakao/sdk/common/model/AppsErrorCause;->InternalServerError:Lcom/kakao/sdk/common/model/AppsErrorCause;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/kakao/sdk/common/model/AppsErrorCause;->InvalidRequest:Lcom/kakao/sdk/common/model/AppsErrorCause;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/kakao/sdk/common/model/AppsErrorCause;->InvalidParameter:Lcom/kakao/sdk/common/model/AppsErrorCause;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/kakao/sdk/common/model/AppsErrorCause;->TimeExpired:Lcom/kakao/sdk/common/model/AppsErrorCause;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lcom/kakao/sdk/common/model/AppsErrorCause;->InvalidChannel:Lcom/kakao/sdk/common/model/AppsErrorCause;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lcom/kakao/sdk/common/model/AppsErrorCause;->IllegalStateChannel:Lcom/kakao/sdk/common/model/AppsErrorCause;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/kakao/sdk/common/model/AppsErrorCause;->AppTypeError:Lcom/kakao/sdk/common/model/AppsErrorCause;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/kakao/sdk/common/model/AppsErrorCause;->AppScopeError:Lcom/kakao/sdk/common/model/AppsErrorCause;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/kakao/sdk/common/model/AppsErrorCause;->PermissionError:Lcom/kakao/sdk/common/model/AppsErrorCause;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/kakao/sdk/common/model/AppsErrorCause;->AppKeyTypeError:Lcom/kakao/sdk/common/model/AppsErrorCause;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/kakao/sdk/common/model/AppsErrorCause;->AppChannelNotConnected:Lcom/kakao/sdk/common/model/AppsErrorCause;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/kakao/sdk/common/model/AppsErrorCause;->AuthError:Lcom/kakao/sdk/common/model/AppsErrorCause;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/kakao/sdk/common/model/AppsErrorCause;->NotRegisteredUser:Lcom/kakao/sdk/common/model/AppsErrorCause;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/kakao/sdk/common/model/AppsErrorCause;->InvalidScope:Lcom/kakao/sdk/common/model/AppsErrorCause;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/kakao/sdk/common/model/AppsErrorCause;->AccountTermsError:Lcom/kakao/sdk/common/model/AppsErrorCause;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/kakao/sdk/common/model/AppsErrorCause;->LoginRequired:Lcom/kakao/sdk/common/model/AppsErrorCause;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/kakao/sdk/common/model/AppsErrorCause;->InvalidShippingAddressId:Lcom/kakao/sdk/common/model/AppsErrorCause;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcom/kakao/sdk/common/model/AppsErrorCause;->Unknown:Lcom/kakao/sdk/common/model/AppsErrorCause;

    aput-object v2, v0, v1

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 759
    new-instance v0, Lcom/kakao/sdk/common/model/AppsErrorCause;

    const-string v1, "InternalServerError"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/kakao/sdk/common/model/AppsErrorCause;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kakao/sdk/common/model/AppsErrorCause;->InternalServerError:Lcom/kakao/sdk/common/model/AppsErrorCause;

    .line 819
    new-instance v0, Lcom/kakao/sdk/common/model/AppsErrorCause;

    const-string v1, "InvalidRequest"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/kakao/sdk/common/model/AppsErrorCause;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kakao/sdk/common/model/AppsErrorCause;->InvalidRequest:Lcom/kakao/sdk/common/model/AppsErrorCause;

    .line 879
    new-instance v0, Lcom/kakao/sdk/common/model/AppsErrorCause;

    const-string v1, "InvalidParameter"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/kakao/sdk/common/model/AppsErrorCause;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kakao/sdk/common/model/AppsErrorCause;->InvalidParameter:Lcom/kakao/sdk/common/model/AppsErrorCause;

    .line 939
    new-instance v0, Lcom/kakao/sdk/common/model/AppsErrorCause;

    const-string v1, "TimeExpired"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/kakao/sdk/common/model/AppsErrorCause;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kakao/sdk/common/model/AppsErrorCause;->TimeExpired:Lcom/kakao/sdk/common/model/AppsErrorCause;

    .line 999
    new-instance v0, Lcom/kakao/sdk/common/model/AppsErrorCause;

    const-string v1, "InvalidChannel"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/kakao/sdk/common/model/AppsErrorCause;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kakao/sdk/common/model/AppsErrorCause;->InvalidChannel:Lcom/kakao/sdk/common/model/AppsErrorCause;

    .line 1059
    new-instance v0, Lcom/kakao/sdk/common/model/AppsErrorCause;

    const-string v1, "IllegalStateChannel"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/kakao/sdk/common/model/AppsErrorCause;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kakao/sdk/common/model/AppsErrorCause;->IllegalStateChannel:Lcom/kakao/sdk/common/model/AppsErrorCause;

    .line 1119
    new-instance v0, Lcom/kakao/sdk/common/model/AppsErrorCause;

    const-string v1, "AppTypeError"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/kakao/sdk/common/model/AppsErrorCause;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kakao/sdk/common/model/AppsErrorCause;->AppTypeError:Lcom/kakao/sdk/common/model/AppsErrorCause;

    .line 1179
    new-instance v0, Lcom/kakao/sdk/common/model/AppsErrorCause;

    const-string v1, "AppScopeError"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/kakao/sdk/common/model/AppsErrorCause;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kakao/sdk/common/model/AppsErrorCause;->AppScopeError:Lcom/kakao/sdk/common/model/AppsErrorCause;

    .line 1239
    new-instance v0, Lcom/kakao/sdk/common/model/AppsErrorCause;

    const-string v1, "PermissionError"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/kakao/sdk/common/model/AppsErrorCause;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kakao/sdk/common/model/AppsErrorCause;->PermissionError:Lcom/kakao/sdk/common/model/AppsErrorCause;

    .line 1299
    new-instance v0, Lcom/kakao/sdk/common/model/AppsErrorCause;

    const-string v1, "AppKeyTypeError"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/kakao/sdk/common/model/AppsErrorCause;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kakao/sdk/common/model/AppsErrorCause;->AppKeyTypeError:Lcom/kakao/sdk/common/model/AppsErrorCause;

    .line 1359
    new-instance v0, Lcom/kakao/sdk/common/model/AppsErrorCause;

    const-string v1, "AppChannelNotConnected"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/kakao/sdk/common/model/AppsErrorCause;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kakao/sdk/common/model/AppsErrorCause;->AppChannelNotConnected:Lcom/kakao/sdk/common/model/AppsErrorCause;

    .line 1419
    new-instance v0, Lcom/kakao/sdk/common/model/AppsErrorCause;

    const-string v1, "AuthError"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/kakao/sdk/common/model/AppsErrorCause;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kakao/sdk/common/model/AppsErrorCause;->AuthError:Lcom/kakao/sdk/common/model/AppsErrorCause;

    .line 1479
    new-instance v0, Lcom/kakao/sdk/common/model/AppsErrorCause;

    const-string v1, "NotRegisteredUser"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lcom/kakao/sdk/common/model/AppsErrorCause;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kakao/sdk/common/model/AppsErrorCause;->NotRegisteredUser:Lcom/kakao/sdk/common/model/AppsErrorCause;

    .line 1539
    new-instance v0, Lcom/kakao/sdk/common/model/AppsErrorCause;

    const-string v1, "InvalidScope"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Lcom/kakao/sdk/common/model/AppsErrorCause;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kakao/sdk/common/model/AppsErrorCause;->InvalidScope:Lcom/kakao/sdk/common/model/AppsErrorCause;

    .line 1599
    new-instance v0, Lcom/kakao/sdk/common/model/AppsErrorCause;

    const-string v1, "AccountTermsError"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v2}, Lcom/kakao/sdk/common/model/AppsErrorCause;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kakao/sdk/common/model/AppsErrorCause;->AccountTermsError:Lcom/kakao/sdk/common/model/AppsErrorCause;

    .line 1659
    new-instance v0, Lcom/kakao/sdk/common/model/AppsErrorCause;

    const-string v1, "LoginRequired"

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2}, Lcom/kakao/sdk/common/model/AppsErrorCause;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kakao/sdk/common/model/AppsErrorCause;->LoginRequired:Lcom/kakao/sdk/common/model/AppsErrorCause;

    .line 1719
    new-instance v0, Lcom/kakao/sdk/common/model/AppsErrorCause;

    const-string v1, "InvalidShippingAddressId"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2}, Lcom/kakao/sdk/common/model/AppsErrorCause;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kakao/sdk/common/model/AppsErrorCause;->InvalidShippingAddressId:Lcom/kakao/sdk/common/model/AppsErrorCause;

    .line 1779
    new-instance v0, Lcom/kakao/sdk/common/model/AppsErrorCause;

    const-string v1, "Unknown"

    const/16 v2, 0x11

    invoke-direct {v0, v1, v2}, Lcom/kakao/sdk/common/model/AppsErrorCause;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kakao/sdk/common/model/AppsErrorCause;->Unknown:Lcom/kakao/sdk/common/model/AppsErrorCause;

    invoke-static {}, Lcom/kakao/sdk/common/model/AppsErrorCause;->$values()[Lcom/kakao/sdk/common/model/AppsErrorCause;

    move-result-object v0

    sput-object v0, Lcom/kakao/sdk/common/model/AppsErrorCause;->$VALUES:[Lcom/kakao/sdk/common/model/AppsErrorCause;

    new-instance v0, Lcom/kakao/sdk/common/model/AppsErrorCause$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/kakao/sdk/common/model/AppsErrorCause$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/kakao/sdk/common/model/AppsErrorCause;->Companion:Lcom/kakao/sdk/common/model/AppsErrorCause$Companion;

    .line 709
    sget-object v0, Lkotlin/LazyThreadSafetyMode;->PUBLICATION:Lkotlin/LazyThreadSafetyMode;

    sget-object v1, Lcom/kakao/sdk/common/model/AppsErrorCause$Companion$$cachedSerializer$delegate$1;->INSTANCE:Lcom/kakao/sdk/common/model/AppsErrorCause$Companion$$cachedSerializer$delegate$1;

    check-cast v1, Lkotlin/jvm/functions/Function0;

    invoke-static {v0, v1}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/kakao/sdk/common/model/AppsErrorCause;->$cachedSerializer$delegate:Lkotlin/Lazy;

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 709
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void

    .array-data 1
    .end array-data
.end method

.method public static final synthetic access$get$cachedSerializer$delegate$cp()Lkotlin/Lazy;
    .locals 1

    .line 709
    sget-object v0, Lcom/kakao/sdk/common/model/AppsErrorCause;->$cachedSerializer$delegate:Lkotlin/Lazy;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/kakao/sdk/common/model/AppsErrorCause;
    .locals 1

    const-class v0, Lcom/kakao/sdk/common/model/AppsErrorCause;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/kakao/sdk/common/model/AppsErrorCause;

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static values()[Lcom/kakao/sdk/common/model/AppsErrorCause;
    .locals 1

    sget-object v0, Lcom/kakao/sdk/common/model/AppsErrorCause;->$VALUES:[Lcom/kakao/sdk/common/model/AppsErrorCause;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/kakao/sdk/common/model/AppsErrorCause;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method
