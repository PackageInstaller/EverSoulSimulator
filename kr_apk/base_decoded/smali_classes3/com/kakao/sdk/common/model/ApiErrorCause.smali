.class public final enum Lcom/kakao/sdk/common/model/ApiErrorCause;
.super Ljava/lang/Enum;
.source "KakaoApiError.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kakao/sdk/common/model/ApiErrorCause$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/kakao/sdk/common/model/ApiErrorCause;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008&\u0008\u0087\u0001\u0018\u0000 (2\u0008\u0012\u0004\u0012\u00020\u00000\u0001:\u0001(B\u000f\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004R\u001c\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008\u0005\u0010\u0006\u001a\u0004\u0008\u0007\u0010\u0008j\u0002\u0008\tj\u0002\u0008\nj\u0002\u0008\u000bj\u0002\u0008\u000cj\u0002\u0008\rj\u0002\u0008\u000ej\u0002\u0008\u000fj\u0002\u0008\u0010j\u0002\u0008\u0011j\u0002\u0008\u0012j\u0002\u0008\u0013j\u0002\u0008\u0014j\u0002\u0008\u0015j\u0002\u0008\u0016j\u0002\u0008\u0017j\u0002\u0008\u0018j\u0002\u0008\u0019j\u0002\u0008\u001aj\u0002\u0008\u001bj\u0002\u0008\u001cj\u0002\u0008\u001dj\u0002\u0008\u001ej\u0002\u0008\u001fj\u0002\u0008 j\u0002\u0008!j\u0002\u0008\"j\u0002\u0008#j\u0002\u0008$j\u0002\u0008%j\u0002\u0008&j\u0002\u0008\'\u00a8\u0006)"
    }
    d2 = {
        "Lcom/kakao/sdk/common/model/ApiErrorCause;",
        "",
        "errorCode",
        "",
        "(Ljava/lang/String;II)V",
        "getErrorCode$annotations",
        "()V",
        "getErrorCode",
        "()I",
        "InternalError",
        "IllegalParams",
        "UnsupportedApi",
        "BlockedAction",
        "PermissionDenied",
        "DeprecatedApi",
        "ApiLimitExceeded",
        "NotRegisteredUser",
        "AlreadyRegisteredUser",
        "AccountDoesNotExist",
        "PropertyKeyDoesNotExist",
        "AppDoesNotExist",
        "InvalidToken",
        "InsufficientScope",
        "RequiredAgeVerification",
        "UnderAgeLimit",
        "SigningIsNotCompleted",
        "InvalidTransaction",
        "TransactionHasExpired",
        "NotTalkUser",
        "NotFriend",
        "UserDeviceUnsupported",
        "TalkMessageDisabled",
        "TalkSendMessageMonthlyLimitExceed",
        "TalkSendMessageDailyLimitExceed",
        "ImageUploadSizeExceeded",
        "ServerTimeOut",
        "ImageMaxUploadCountExceed",
        "DeveloperDoesNotExist",
        "UnderMaintenance",
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
    with = Lcom/kakao/sdk/common/model/ApiErrorCauseSerializer;
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/kakao/sdk/common/model/ApiErrorCause;

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

.field public static final enum AccountDoesNotExist:Lcom/kakao/sdk/common/model/ApiErrorCause;
    .annotation runtime Lkotlinx/serialization/SerialName;
        value = "-103"
    .end annotation
.end field

.field public static final enum AlreadyRegisteredUser:Lcom/kakao/sdk/common/model/ApiErrorCause;
    .annotation runtime Lkotlinx/serialization/SerialName;
        value = "-102"
    .end annotation
.end field

.field public static final enum ApiLimitExceeded:Lcom/kakao/sdk/common/model/ApiErrorCause;
    .annotation runtime Lkotlinx/serialization/SerialName;
        value = "-10"
    .end annotation
.end field

.field public static final enum AppDoesNotExist:Lcom/kakao/sdk/common/model/ApiErrorCause;
    .annotation runtime Lkotlinx/serialization/SerialName;
        value = "-301"
    .end annotation
.end field

.field public static final enum BlockedAction:Lcom/kakao/sdk/common/model/ApiErrorCause;
    .annotation runtime Lkotlinx/serialization/SerialName;
        value = "-4"
    .end annotation
.end field

.field public static final Companion:Lcom/kakao/sdk/common/model/ApiErrorCause$Companion;

.field public static final enum DeprecatedApi:Lcom/kakao/sdk/common/model/ApiErrorCause;
    .annotation runtime Lkotlinx/serialization/SerialName;
        value = "-9"
    .end annotation
.end field

.field public static final enum DeveloperDoesNotExist:Lcom/kakao/sdk/common/model/ApiErrorCause;
    .annotation runtime Lkotlinx/serialization/SerialName;
        value = "-903"
    .end annotation
.end field

.field public static final enum IllegalParams:Lcom/kakao/sdk/common/model/ApiErrorCause;
    .annotation runtime Lkotlinx/serialization/SerialName;
        value = "-2"
    .end annotation
.end field

.field public static final enum ImageMaxUploadCountExceed:Lcom/kakao/sdk/common/model/ApiErrorCause;
    .annotation runtime Lkotlinx/serialization/SerialName;
        value = "-606"
    .end annotation
.end field

.field public static final enum ImageUploadSizeExceeded:Lcom/kakao/sdk/common/model/ApiErrorCause;
    .annotation runtime Lkotlinx/serialization/SerialName;
        value = "-602"
    .end annotation
.end field

.field public static final enum InsufficientScope:Lcom/kakao/sdk/common/model/ApiErrorCause;
    .annotation runtime Lkotlinx/serialization/SerialName;
        value = "-402"
    .end annotation
.end field

.field public static final enum InternalError:Lcom/kakao/sdk/common/model/ApiErrorCause;
    .annotation runtime Lkotlinx/serialization/SerialName;
        value = "-1"
    .end annotation
.end field

.field public static final enum InvalidToken:Lcom/kakao/sdk/common/model/ApiErrorCause;
    .annotation runtime Lkotlinx/serialization/SerialName;
        value = "-401"
    .end annotation
.end field

.field public static final enum InvalidTransaction:Lcom/kakao/sdk/common/model/ApiErrorCause;
    .annotation runtime Lkotlinx/serialization/SerialName;
        value = "-422"
    .end annotation
.end field

.field public static final enum NotFriend:Lcom/kakao/sdk/common/model/ApiErrorCause;
    .annotation runtime Lkotlinx/serialization/SerialName;
        value = "-502"
    .end annotation
.end field

.field public static final enum NotRegisteredUser:Lcom/kakao/sdk/common/model/ApiErrorCause;
    .annotation runtime Lkotlinx/serialization/SerialName;
        value = "-101"
    .end annotation
.end field

.field public static final enum NotTalkUser:Lcom/kakao/sdk/common/model/ApiErrorCause;
    .annotation runtime Lkotlinx/serialization/SerialName;
        value = "-501"
    .end annotation
.end field

.field public static final enum PermissionDenied:Lcom/kakao/sdk/common/model/ApiErrorCause;
    .annotation runtime Lkotlinx/serialization/SerialName;
        value = "-5"
    .end annotation
.end field

.field public static final enum PropertyKeyDoesNotExist:Lcom/kakao/sdk/common/model/ApiErrorCause;
    .annotation runtime Lkotlinx/serialization/SerialName;
        value = "-201"
    .end annotation
.end field

.field public static final enum RequiredAgeVerification:Lcom/kakao/sdk/common/model/ApiErrorCause;
    .annotation runtime Lkotlinx/serialization/SerialName;
        value = "-405"
    .end annotation
.end field

.field public static final enum ServerTimeOut:Lcom/kakao/sdk/common/model/ApiErrorCause;
    .annotation runtime Lkotlinx/serialization/SerialName;
        value = "-603"
    .end annotation
.end field

.field public static final enum SigningIsNotCompleted:Lcom/kakao/sdk/common/model/ApiErrorCause;
    .annotation runtime Lkotlinx/serialization/SerialName;
        value = "-421"
    .end annotation
.end field

.field public static final enum TalkMessageDisabled:Lcom/kakao/sdk/common/model/ApiErrorCause;
    .annotation runtime Lkotlinx/serialization/SerialName;
        value = "-530"
    .end annotation
.end field

.field public static final enum TalkSendMessageDailyLimitExceed:Lcom/kakao/sdk/common/model/ApiErrorCause;
    .annotation runtime Lkotlinx/serialization/SerialName;
        value = "-532"
    .end annotation
.end field

.field public static final enum TalkSendMessageMonthlyLimitExceed:Lcom/kakao/sdk/common/model/ApiErrorCause;
    .annotation runtime Lkotlinx/serialization/SerialName;
        value = "-531"
    .end annotation
.end field

.field public static final enum TransactionHasExpired:Lcom/kakao/sdk/common/model/ApiErrorCause;
    .annotation runtime Lkotlinx/serialization/SerialName;
        value = "-423"
    .end annotation
.end field

.field public static final enum UnderAgeLimit:Lcom/kakao/sdk/common/model/ApiErrorCause;
    .annotation runtime Lkotlinx/serialization/SerialName;
        value = "-406"
    .end annotation
.end field

.field public static final enum UnderMaintenance:Lcom/kakao/sdk/common/model/ApiErrorCause;
    .annotation runtime Lkotlinx/serialization/SerialName;
        value = "-9798"
    .end annotation
.end field

.field public static final enum Unknown:Lcom/kakao/sdk/common/model/ApiErrorCause;
    .annotation runtime Lcom/kakao/sdk/common/json/UnknownValue;
    .end annotation
.end field

.field public static final enum UnsupportedApi:Lcom/kakao/sdk/common/model/ApiErrorCause;
    .annotation runtime Lkotlinx/serialization/SerialName;
        value = "-3"
    .end annotation
.end field

.field public static final enum UserDeviceUnsupported:Lcom/kakao/sdk/common/model/ApiErrorCause;
    .annotation runtime Lkotlinx/serialization/SerialName;
        value = "-504"
    .end annotation
.end field


# instance fields
.field private final errorCode:I


# direct methods
.method private static final synthetic $values()[Lcom/kakao/sdk/common/model/ApiErrorCause;
    .locals 3

    const/16 v0, 0x1f

    new-array v0, v0, [Lcom/kakao/sdk/common/model/ApiErrorCause;

    const/4 v1, 0x0

    sget-object v2, Lcom/kakao/sdk/common/model/ApiErrorCause;->InternalError:Lcom/kakao/sdk/common/model/ApiErrorCause;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/kakao/sdk/common/model/ApiErrorCause;->IllegalParams:Lcom/kakao/sdk/common/model/ApiErrorCause;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/kakao/sdk/common/model/ApiErrorCause;->UnsupportedApi:Lcom/kakao/sdk/common/model/ApiErrorCause;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/kakao/sdk/common/model/ApiErrorCause;->BlockedAction:Lcom/kakao/sdk/common/model/ApiErrorCause;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lcom/kakao/sdk/common/model/ApiErrorCause;->PermissionDenied:Lcom/kakao/sdk/common/model/ApiErrorCause;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lcom/kakao/sdk/common/model/ApiErrorCause;->DeprecatedApi:Lcom/kakao/sdk/common/model/ApiErrorCause;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/kakao/sdk/common/model/ApiErrorCause;->ApiLimitExceeded:Lcom/kakao/sdk/common/model/ApiErrorCause;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/kakao/sdk/common/model/ApiErrorCause;->NotRegisteredUser:Lcom/kakao/sdk/common/model/ApiErrorCause;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/kakao/sdk/common/model/ApiErrorCause;->AlreadyRegisteredUser:Lcom/kakao/sdk/common/model/ApiErrorCause;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/kakao/sdk/common/model/ApiErrorCause;->AccountDoesNotExist:Lcom/kakao/sdk/common/model/ApiErrorCause;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/kakao/sdk/common/model/ApiErrorCause;->PropertyKeyDoesNotExist:Lcom/kakao/sdk/common/model/ApiErrorCause;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/kakao/sdk/common/model/ApiErrorCause;->AppDoesNotExist:Lcom/kakao/sdk/common/model/ApiErrorCause;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/kakao/sdk/common/model/ApiErrorCause;->InvalidToken:Lcom/kakao/sdk/common/model/ApiErrorCause;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/kakao/sdk/common/model/ApiErrorCause;->InsufficientScope:Lcom/kakao/sdk/common/model/ApiErrorCause;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/kakao/sdk/common/model/ApiErrorCause;->RequiredAgeVerification:Lcom/kakao/sdk/common/model/ApiErrorCause;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/kakao/sdk/common/model/ApiErrorCause;->UnderAgeLimit:Lcom/kakao/sdk/common/model/ApiErrorCause;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/kakao/sdk/common/model/ApiErrorCause;->SigningIsNotCompleted:Lcom/kakao/sdk/common/model/ApiErrorCause;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcom/kakao/sdk/common/model/ApiErrorCause;->InvalidTransaction:Lcom/kakao/sdk/common/model/ApiErrorCause;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lcom/kakao/sdk/common/model/ApiErrorCause;->TransactionHasExpired:Lcom/kakao/sdk/common/model/ApiErrorCause;

    aput-object v2, v0, v1

    const/16 v1, 0x13

    sget-object v2, Lcom/kakao/sdk/common/model/ApiErrorCause;->NotTalkUser:Lcom/kakao/sdk/common/model/ApiErrorCause;

    aput-object v2, v0, v1

    const/16 v1, 0x14

    sget-object v2, Lcom/kakao/sdk/common/model/ApiErrorCause;->NotFriend:Lcom/kakao/sdk/common/model/ApiErrorCause;

    aput-object v2, v0, v1

    const/16 v1, 0x15

    sget-object v2, Lcom/kakao/sdk/common/model/ApiErrorCause;->UserDeviceUnsupported:Lcom/kakao/sdk/common/model/ApiErrorCause;

    aput-object v2, v0, v1

    const/16 v1, 0x16

    sget-object v2, Lcom/kakao/sdk/common/model/ApiErrorCause;->TalkMessageDisabled:Lcom/kakao/sdk/common/model/ApiErrorCause;

    aput-object v2, v0, v1

    const/16 v1, 0x17

    sget-object v2, Lcom/kakao/sdk/common/model/ApiErrorCause;->TalkSendMessageMonthlyLimitExceed:Lcom/kakao/sdk/common/model/ApiErrorCause;

    aput-object v2, v0, v1

    const/16 v1, 0x18

    sget-object v2, Lcom/kakao/sdk/common/model/ApiErrorCause;->TalkSendMessageDailyLimitExceed:Lcom/kakao/sdk/common/model/ApiErrorCause;

    aput-object v2, v0, v1

    const/16 v1, 0x19

    sget-object v2, Lcom/kakao/sdk/common/model/ApiErrorCause;->ImageUploadSizeExceeded:Lcom/kakao/sdk/common/model/ApiErrorCause;

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    sget-object v2, Lcom/kakao/sdk/common/model/ApiErrorCause;->ServerTimeOut:Lcom/kakao/sdk/common/model/ApiErrorCause;

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    sget-object v2, Lcom/kakao/sdk/common/model/ApiErrorCause;->ImageMaxUploadCountExceed:Lcom/kakao/sdk/common/model/ApiErrorCause;

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    sget-object v2, Lcom/kakao/sdk/common/model/ApiErrorCause;->DeveloperDoesNotExist:Lcom/kakao/sdk/common/model/ApiErrorCause;

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    sget-object v2, Lcom/kakao/sdk/common/model/ApiErrorCause;->UnderMaintenance:Lcom/kakao/sdk/common/model/ApiErrorCause;

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    sget-object v2, Lcom/kakao/sdk/common/model/ApiErrorCause;->Unknown:Lcom/kakao/sdk/common/model/ApiErrorCause;

    aput-object v2, v0, v1

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 819
    new-instance v0, Lcom/kakao/sdk/common/model/ApiErrorCause;

    const/4 v1, 0x0

    const/4 v2, -0x1

    const-string v3, "InternalError"

    invoke-direct {v0, v3, v1, v2}, Lcom/kakao/sdk/common/model/ApiErrorCause;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/kakao/sdk/common/model/ApiErrorCause;->InternalError:Lcom/kakao/sdk/common/model/ApiErrorCause;

    .line 879
    new-instance v0, Lcom/kakao/sdk/common/model/ApiErrorCause;

    const/4 v1, 0x1

    const/4 v2, -0x2

    const-string v3, "IllegalParams"

    invoke-direct {v0, v3, v1, v2}, Lcom/kakao/sdk/common/model/ApiErrorCause;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/kakao/sdk/common/model/ApiErrorCause;->IllegalParams:Lcom/kakao/sdk/common/model/ApiErrorCause;

    .line 939
    new-instance v0, Lcom/kakao/sdk/common/model/ApiErrorCause;

    const/4 v1, 0x2

    const/4 v2, -0x3

    const-string v3, "UnsupportedApi"

    invoke-direct {v0, v3, v1, v2}, Lcom/kakao/sdk/common/model/ApiErrorCause;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/kakao/sdk/common/model/ApiErrorCause;->UnsupportedApi:Lcom/kakao/sdk/common/model/ApiErrorCause;

    .line 999
    new-instance v0, Lcom/kakao/sdk/common/model/ApiErrorCause;

    const/4 v1, 0x3

    const/4 v2, -0x4

    const-string v3, "BlockedAction"

    invoke-direct {v0, v3, v1, v2}, Lcom/kakao/sdk/common/model/ApiErrorCause;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/kakao/sdk/common/model/ApiErrorCause;->BlockedAction:Lcom/kakao/sdk/common/model/ApiErrorCause;

    .line 1059
    new-instance v0, Lcom/kakao/sdk/common/model/ApiErrorCause;

    const/4 v1, 0x4

    const/4 v2, -0x5

    const-string v3, "PermissionDenied"

    invoke-direct {v0, v3, v1, v2}, Lcom/kakao/sdk/common/model/ApiErrorCause;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/kakao/sdk/common/model/ApiErrorCause;->PermissionDenied:Lcom/kakao/sdk/common/model/ApiErrorCause;

    .line 1119
    new-instance v0, Lcom/kakao/sdk/common/model/ApiErrorCause;

    const/4 v1, 0x5

    const/16 v2, -0x9

    const-string v3, "DeprecatedApi"

    invoke-direct {v0, v3, v1, v2}, Lcom/kakao/sdk/common/model/ApiErrorCause;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/kakao/sdk/common/model/ApiErrorCause;->DeprecatedApi:Lcom/kakao/sdk/common/model/ApiErrorCause;

    .line 1179
    new-instance v0, Lcom/kakao/sdk/common/model/ApiErrorCause;

    const/4 v1, 0x6

    const/16 v2, -0xa

    const-string v3, "ApiLimitExceeded"

    invoke-direct {v0, v3, v1, v2}, Lcom/kakao/sdk/common/model/ApiErrorCause;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/kakao/sdk/common/model/ApiErrorCause;->ApiLimitExceeded:Lcom/kakao/sdk/common/model/ApiErrorCause;

    .line 1239
    new-instance v0, Lcom/kakao/sdk/common/model/ApiErrorCause;

    const/4 v1, 0x7

    const/16 v2, -0x65

    const-string v3, "NotRegisteredUser"

    invoke-direct {v0, v3, v1, v2}, Lcom/kakao/sdk/common/model/ApiErrorCause;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/kakao/sdk/common/model/ApiErrorCause;->NotRegisteredUser:Lcom/kakao/sdk/common/model/ApiErrorCause;

    .line 1299
    new-instance v0, Lcom/kakao/sdk/common/model/ApiErrorCause;

    const/16 v1, 0x8

    const/16 v2, -0x66

    const-string v3, "AlreadyRegisteredUser"

    invoke-direct {v0, v3, v1, v2}, Lcom/kakao/sdk/common/model/ApiErrorCause;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/kakao/sdk/common/model/ApiErrorCause;->AlreadyRegisteredUser:Lcom/kakao/sdk/common/model/ApiErrorCause;

    .line 1359
    new-instance v0, Lcom/kakao/sdk/common/model/ApiErrorCause;

    const/16 v1, 0x9

    const/16 v2, -0x67

    const-string v3, "AccountDoesNotExist"

    invoke-direct {v0, v3, v1, v2}, Lcom/kakao/sdk/common/model/ApiErrorCause;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/kakao/sdk/common/model/ApiErrorCause;->AccountDoesNotExist:Lcom/kakao/sdk/common/model/ApiErrorCause;

    .line 1419
    new-instance v0, Lcom/kakao/sdk/common/model/ApiErrorCause;

    const/16 v1, 0xa

    const/16 v2, -0xc9

    const-string v3, "PropertyKeyDoesNotExist"

    invoke-direct {v0, v3, v1, v2}, Lcom/kakao/sdk/common/model/ApiErrorCause;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/kakao/sdk/common/model/ApiErrorCause;->PropertyKeyDoesNotExist:Lcom/kakao/sdk/common/model/ApiErrorCause;

    .line 1479
    new-instance v0, Lcom/kakao/sdk/common/model/ApiErrorCause;

    const/16 v1, 0xb

    const/16 v2, -0x12d

    const-string v3, "AppDoesNotExist"

    invoke-direct {v0, v3, v1, v2}, Lcom/kakao/sdk/common/model/ApiErrorCause;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/kakao/sdk/common/model/ApiErrorCause;->AppDoesNotExist:Lcom/kakao/sdk/common/model/ApiErrorCause;

    .line 1539
    new-instance v0, Lcom/kakao/sdk/common/model/ApiErrorCause;

    const/16 v1, 0xc

    const/16 v2, -0x191

    const-string v3, "InvalidToken"

    invoke-direct {v0, v3, v1, v2}, Lcom/kakao/sdk/common/model/ApiErrorCause;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/kakao/sdk/common/model/ApiErrorCause;->InvalidToken:Lcom/kakao/sdk/common/model/ApiErrorCause;

    .line 1599
    new-instance v0, Lcom/kakao/sdk/common/model/ApiErrorCause;

    const/16 v1, 0xd

    const/16 v2, -0x192

    const-string v3, "InsufficientScope"

    invoke-direct {v0, v3, v1, v2}, Lcom/kakao/sdk/common/model/ApiErrorCause;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/kakao/sdk/common/model/ApiErrorCause;->InsufficientScope:Lcom/kakao/sdk/common/model/ApiErrorCause;

    .line 1659
    new-instance v0, Lcom/kakao/sdk/common/model/ApiErrorCause;

    const/16 v1, 0xe

    const/16 v2, -0x195

    const-string v3, "RequiredAgeVerification"

    invoke-direct {v0, v3, v1, v2}, Lcom/kakao/sdk/common/model/ApiErrorCause;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/kakao/sdk/common/model/ApiErrorCause;->RequiredAgeVerification:Lcom/kakao/sdk/common/model/ApiErrorCause;

    .line 1719
    new-instance v0, Lcom/kakao/sdk/common/model/ApiErrorCause;

    const/16 v1, 0xf

    const/16 v2, -0x196

    const-string v3, "UnderAgeLimit"

    invoke-direct {v0, v3, v1, v2}, Lcom/kakao/sdk/common/model/ApiErrorCause;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/kakao/sdk/common/model/ApiErrorCause;->UnderAgeLimit:Lcom/kakao/sdk/common/model/ApiErrorCause;

    .line 1779
    new-instance v0, Lcom/kakao/sdk/common/model/ApiErrorCause;

    const/16 v1, 0x10

    const/16 v2, -0x1a5

    const-string v3, "SigningIsNotCompleted"

    invoke-direct {v0, v3, v1, v2}, Lcom/kakao/sdk/common/model/ApiErrorCause;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/kakao/sdk/common/model/ApiErrorCause;->SigningIsNotCompleted:Lcom/kakao/sdk/common/model/ApiErrorCause;

    .line 1839
    new-instance v0, Lcom/kakao/sdk/common/model/ApiErrorCause;

    const/16 v1, 0x11

    const/16 v2, -0x1a6

    const-string v3, "InvalidTransaction"

    invoke-direct {v0, v3, v1, v2}, Lcom/kakao/sdk/common/model/ApiErrorCause;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/kakao/sdk/common/model/ApiErrorCause;->InvalidTransaction:Lcom/kakao/sdk/common/model/ApiErrorCause;

    .line 1899
    new-instance v0, Lcom/kakao/sdk/common/model/ApiErrorCause;

    const/16 v1, 0x12

    const/16 v2, -0x1a7

    const-string v3, "TransactionHasExpired"

    invoke-direct {v0, v3, v1, v2}, Lcom/kakao/sdk/common/model/ApiErrorCause;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/kakao/sdk/common/model/ApiErrorCause;->TransactionHasExpired:Lcom/kakao/sdk/common/model/ApiErrorCause;

    .line 1959
    new-instance v0, Lcom/kakao/sdk/common/model/ApiErrorCause;

    const/16 v1, 0x13

    const/16 v2, -0x1f5

    const-string v3, "NotTalkUser"

    invoke-direct {v0, v3, v1, v2}, Lcom/kakao/sdk/common/model/ApiErrorCause;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/kakao/sdk/common/model/ApiErrorCause;->NotTalkUser:Lcom/kakao/sdk/common/model/ApiErrorCause;

    .line 2019
    new-instance v0, Lcom/kakao/sdk/common/model/ApiErrorCause;

    const/16 v1, 0x14

    const/16 v2, -0x1f6

    const-string v3, "NotFriend"

    invoke-direct {v0, v3, v1, v2}, Lcom/kakao/sdk/common/model/ApiErrorCause;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/kakao/sdk/common/model/ApiErrorCause;->NotFriend:Lcom/kakao/sdk/common/model/ApiErrorCause;

    .line 2079
    new-instance v0, Lcom/kakao/sdk/common/model/ApiErrorCause;

    const/16 v1, 0x15

    const/16 v2, -0x1f8

    const-string v3, "UserDeviceUnsupported"

    invoke-direct {v0, v3, v1, v2}, Lcom/kakao/sdk/common/model/ApiErrorCause;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/kakao/sdk/common/model/ApiErrorCause;->UserDeviceUnsupported:Lcom/kakao/sdk/common/model/ApiErrorCause;

    .line 2139
    new-instance v0, Lcom/kakao/sdk/common/model/ApiErrorCause;

    const/16 v1, 0x16

    const/16 v2, -0x212

    const-string v3, "TalkMessageDisabled"

    invoke-direct {v0, v3, v1, v2}, Lcom/kakao/sdk/common/model/ApiErrorCause;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/kakao/sdk/common/model/ApiErrorCause;->TalkMessageDisabled:Lcom/kakao/sdk/common/model/ApiErrorCause;

    .line 2199
    new-instance v0, Lcom/kakao/sdk/common/model/ApiErrorCause;

    const/16 v1, 0x17

    const/16 v2, -0x213

    const-string v3, "TalkSendMessageMonthlyLimitExceed"

    invoke-direct {v0, v3, v1, v2}, Lcom/kakao/sdk/common/model/ApiErrorCause;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/kakao/sdk/common/model/ApiErrorCause;->TalkSendMessageMonthlyLimitExceed:Lcom/kakao/sdk/common/model/ApiErrorCause;

    .line 2259
    new-instance v0, Lcom/kakao/sdk/common/model/ApiErrorCause;

    const/16 v1, 0x18

    const/16 v2, -0x214

    const-string v3, "TalkSendMessageDailyLimitExceed"

    invoke-direct {v0, v3, v1, v2}, Lcom/kakao/sdk/common/model/ApiErrorCause;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/kakao/sdk/common/model/ApiErrorCause;->TalkSendMessageDailyLimitExceed:Lcom/kakao/sdk/common/model/ApiErrorCause;

    .line 2319
    new-instance v0, Lcom/kakao/sdk/common/model/ApiErrorCause;

    const/16 v1, 0x19

    const/16 v2, -0x25a

    const-string v3, "ImageUploadSizeExceeded"

    invoke-direct {v0, v3, v1, v2}, Lcom/kakao/sdk/common/model/ApiErrorCause;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/kakao/sdk/common/model/ApiErrorCause;->ImageUploadSizeExceeded:Lcom/kakao/sdk/common/model/ApiErrorCause;

    .line 2379
    new-instance v0, Lcom/kakao/sdk/common/model/ApiErrorCause;

    const/16 v1, 0x1a

    const/16 v2, -0x25b

    const-string v3, "ServerTimeOut"

    invoke-direct {v0, v3, v1, v2}, Lcom/kakao/sdk/common/model/ApiErrorCause;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/kakao/sdk/common/model/ApiErrorCause;->ServerTimeOut:Lcom/kakao/sdk/common/model/ApiErrorCause;

    .line 2439
    new-instance v0, Lcom/kakao/sdk/common/model/ApiErrorCause;

    const/16 v1, 0x1b

    const/16 v2, -0x25e

    const-string v3, "ImageMaxUploadCountExceed"

    invoke-direct {v0, v3, v1, v2}, Lcom/kakao/sdk/common/model/ApiErrorCause;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/kakao/sdk/common/model/ApiErrorCause;->ImageMaxUploadCountExceed:Lcom/kakao/sdk/common/model/ApiErrorCause;

    .line 2499
    new-instance v0, Lcom/kakao/sdk/common/model/ApiErrorCause;

    const/16 v1, 0x1c

    const/16 v2, -0x387

    const-string v3, "DeveloperDoesNotExist"

    invoke-direct {v0, v3, v1, v2}, Lcom/kakao/sdk/common/model/ApiErrorCause;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/kakao/sdk/common/model/ApiErrorCause;->DeveloperDoesNotExist:Lcom/kakao/sdk/common/model/ApiErrorCause;

    .line 2559
    new-instance v0, Lcom/kakao/sdk/common/model/ApiErrorCause;

    const/16 v1, 0x1d

    const/16 v2, -0x2646

    const-string v3, "UnderMaintenance"

    invoke-direct {v0, v3, v1, v2}, Lcom/kakao/sdk/common/model/ApiErrorCause;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/kakao/sdk/common/model/ApiErrorCause;->UnderMaintenance:Lcom/kakao/sdk/common/model/ApiErrorCause;

    .line 2619
    new-instance v0, Lcom/kakao/sdk/common/model/ApiErrorCause;

    const/16 v1, 0x1e

    const v2, 0x7fffffff

    const-string v3, "Unknown"

    invoke-direct {v0, v3, v1, v2}, Lcom/kakao/sdk/common/model/ApiErrorCause;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/kakao/sdk/common/model/ApiErrorCause;->Unknown:Lcom/kakao/sdk/common/model/ApiErrorCause;

    invoke-static {}, Lcom/kakao/sdk/common/model/ApiErrorCause;->$values()[Lcom/kakao/sdk/common/model/ApiErrorCause;

    move-result-object v0

    sput-object v0, Lcom/kakao/sdk/common/model/ApiErrorCause;->$VALUES:[Lcom/kakao/sdk/common/model/ApiErrorCause;

    new-instance v0, Lcom/kakao/sdk/common/model/ApiErrorCause$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/kakao/sdk/common/model/ApiErrorCause$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/kakao/sdk/common/model/ApiErrorCause;->Companion:Lcom/kakao/sdk/common/model/ApiErrorCause$Companion;

    .line 739
    sget-object v0, Lkotlin/LazyThreadSafetyMode;->PUBLICATION:Lkotlin/LazyThreadSafetyMode;

    sget-object v1, Lcom/kakao/sdk/common/model/ApiErrorCause$Companion$$cachedSerializer$delegate$1;->INSTANCE:Lcom/kakao/sdk/common/model/ApiErrorCause$Companion$$cachedSerializer$delegate$1;

    check-cast v1, Lkotlin/jvm/functions/Function0;

    invoke-static {v0, v1}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/kakao/sdk/common/model/ApiErrorCause;->$cachedSerializer$delegate:Lkotlin/Lazy;

    return-void

    .array-data 1
    .end array-data
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 739
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 759
    iput p3, p0, Lcom/kakao/sdk/common/model/ApiErrorCause;->errorCode:I

    return-void

    .array-data 1
    .end array-data
.end method

.method public static final synthetic access$get$cachedSerializer$delegate$cp()Lkotlin/Lazy;
    .locals 1

    .line 739
    sget-object v0, Lcom/kakao/sdk/common/model/ApiErrorCause;->$cachedSerializer$delegate:Lkotlin/Lazy;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public static synthetic getErrorCode$annotations()V
    .locals 0
    .annotation runtime Lkotlinx/serialization/SerialName;
        value = "error_code"
    .end annotation

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/kakao/sdk/common/model/ApiErrorCause;
    .locals 1

    const-class v0, Lcom/kakao/sdk/common/model/ApiErrorCause;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/kakao/sdk/common/model/ApiErrorCause;

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static values()[Lcom/kakao/sdk/common/model/ApiErrorCause;
    .locals 1

    sget-object v0, Lcom/kakao/sdk/common/model/ApiErrorCause;->$VALUES:[Lcom/kakao/sdk/common/model/ApiErrorCause;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/kakao/sdk/common/model/ApiErrorCause;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public final getErrorCode()I
    .locals 1

    .line 759
    iget v0, p0, Lcom/kakao/sdk/common/model/ApiErrorCause;->errorCode:I

    return v0

    nop

    .array-data 1
    .end array-data
.end method
