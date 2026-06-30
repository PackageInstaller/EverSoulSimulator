.class public final enum Lcom/kakao/sdk/common/model/AuthErrorCause;
.super Ljava/lang/Enum;
.source "KakaoAuthError.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kakao/sdk/common/model/AuthErrorCause$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/kakao/sdk/common/model/AuthErrorCause;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0008\u000c\u0008\u0087\u0001\u0018\u0000 \u000c2\u0008\u0012\u0004\u0012\u00020\u00000\u0001:\u0001\u000cB\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002j\u0002\u0008\u0003j\u0002\u0008\u0004j\u0002\u0008\u0005j\u0002\u0008\u0006j\u0002\u0008\u0007j\u0002\u0008\u0008j\u0002\u0008\tj\u0002\u0008\nj\u0002\u0008\u000b\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/kakao/sdk/common/model/AuthErrorCause;",
        "",
        "(Ljava/lang/String;I)V",
        "InvalidRequest",
        "InvalidClient",
        "InvalidScope",
        "InvalidGrant",
        "Misconfigured",
        "Unauthorized",
        "AccessDenied",
        "ServerError",
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
    with = Lcom/kakao/sdk/common/model/AuthErrorCauseSerializer;
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/kakao/sdk/common/model/AuthErrorCause;

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

.field public static final enum AccessDenied:Lcom/kakao/sdk/common/model/AuthErrorCause;
    .annotation runtime Lkotlinx/serialization/SerialName;
        value = "access_denied"
    .end annotation
.end field

.field public static final Companion:Lcom/kakao/sdk/common/model/AuthErrorCause$Companion;

.field public static final enum InvalidClient:Lcom/kakao/sdk/common/model/AuthErrorCause;
    .annotation runtime Lkotlinx/serialization/SerialName;
        value = "invalid_client"
    .end annotation
.end field

.field public static final enum InvalidGrant:Lcom/kakao/sdk/common/model/AuthErrorCause;
    .annotation runtime Lkotlinx/serialization/SerialName;
        value = "invalid_grant"
    .end annotation
.end field

.field public static final enum InvalidRequest:Lcom/kakao/sdk/common/model/AuthErrorCause;
    .annotation runtime Lkotlinx/serialization/SerialName;
        value = "invalid_request"
    .end annotation
.end field

.field public static final enum InvalidScope:Lcom/kakao/sdk/common/model/AuthErrorCause;
    .annotation runtime Lkotlinx/serialization/SerialName;
        value = "invalid_scope"
    .end annotation
.end field

.field public static final enum Misconfigured:Lcom/kakao/sdk/common/model/AuthErrorCause;
    .annotation runtime Lkotlinx/serialization/SerialName;
        value = "misconfigured"
    .end annotation
.end field

.field public static final enum ServerError:Lcom/kakao/sdk/common/model/AuthErrorCause;
    .annotation runtime Lkotlinx/serialization/SerialName;
        value = "server_error"
    .end annotation
.end field

.field public static final enum Unauthorized:Lcom/kakao/sdk/common/model/AuthErrorCause;
    .annotation runtime Lkotlinx/serialization/SerialName;
        value = "unauthorized"
    .end annotation
.end field

.field public static final enum Unknown:Lcom/kakao/sdk/common/model/AuthErrorCause;
    .annotation runtime Lcom/kakao/sdk/common/json/UnknownValue;
    .end annotation
.end field


# direct methods
.method private static final synthetic $values()[Lcom/kakao/sdk/common/model/AuthErrorCause;
    .locals 3

    const/16 v0, 0x9

    new-array v0, v0, [Lcom/kakao/sdk/common/model/AuthErrorCause;

    const/4 v1, 0x0

    sget-object v2, Lcom/kakao/sdk/common/model/AuthErrorCause;->InvalidRequest:Lcom/kakao/sdk/common/model/AuthErrorCause;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/kakao/sdk/common/model/AuthErrorCause;->InvalidClient:Lcom/kakao/sdk/common/model/AuthErrorCause;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/kakao/sdk/common/model/AuthErrorCause;->InvalidScope:Lcom/kakao/sdk/common/model/AuthErrorCause;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/kakao/sdk/common/model/AuthErrorCause;->InvalidGrant:Lcom/kakao/sdk/common/model/AuthErrorCause;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lcom/kakao/sdk/common/model/AuthErrorCause;->Misconfigured:Lcom/kakao/sdk/common/model/AuthErrorCause;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lcom/kakao/sdk/common/model/AuthErrorCause;->Unauthorized:Lcom/kakao/sdk/common/model/AuthErrorCause;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/kakao/sdk/common/model/AuthErrorCause;->AccessDenied:Lcom/kakao/sdk/common/model/AuthErrorCause;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/kakao/sdk/common/model/AuthErrorCause;->ServerError:Lcom/kakao/sdk/common/model/AuthErrorCause;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/kakao/sdk/common/model/AuthErrorCause;->Unknown:Lcom/kakao/sdk/common/model/AuthErrorCause;

    aput-object v2, v0, v1

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 589
    new-instance v0, Lcom/kakao/sdk/common/model/AuthErrorCause;

    const-string v1, "InvalidRequest"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/kakao/sdk/common/model/AuthErrorCause;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kakao/sdk/common/model/AuthErrorCause;->InvalidRequest:Lcom/kakao/sdk/common/model/AuthErrorCause;

    .line 649
    new-instance v0, Lcom/kakao/sdk/common/model/AuthErrorCause;

    const-string v1, "InvalidClient"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/kakao/sdk/common/model/AuthErrorCause;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kakao/sdk/common/model/AuthErrorCause;->InvalidClient:Lcom/kakao/sdk/common/model/AuthErrorCause;

    .line 709
    new-instance v0, Lcom/kakao/sdk/common/model/AuthErrorCause;

    const-string v1, "InvalidScope"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/kakao/sdk/common/model/AuthErrorCause;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kakao/sdk/common/model/AuthErrorCause;->InvalidScope:Lcom/kakao/sdk/common/model/AuthErrorCause;

    .line 769
    new-instance v0, Lcom/kakao/sdk/common/model/AuthErrorCause;

    const-string v1, "InvalidGrant"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/kakao/sdk/common/model/AuthErrorCause;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kakao/sdk/common/model/AuthErrorCause;->InvalidGrant:Lcom/kakao/sdk/common/model/AuthErrorCause;

    .line 829
    new-instance v0, Lcom/kakao/sdk/common/model/AuthErrorCause;

    const-string v1, "Misconfigured"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/kakao/sdk/common/model/AuthErrorCause;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kakao/sdk/common/model/AuthErrorCause;->Misconfigured:Lcom/kakao/sdk/common/model/AuthErrorCause;

    .line 889
    new-instance v0, Lcom/kakao/sdk/common/model/AuthErrorCause;

    const-string v1, "Unauthorized"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/kakao/sdk/common/model/AuthErrorCause;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kakao/sdk/common/model/AuthErrorCause;->Unauthorized:Lcom/kakao/sdk/common/model/AuthErrorCause;

    .line 949
    new-instance v0, Lcom/kakao/sdk/common/model/AuthErrorCause;

    const-string v1, "AccessDenied"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/kakao/sdk/common/model/AuthErrorCause;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kakao/sdk/common/model/AuthErrorCause;->AccessDenied:Lcom/kakao/sdk/common/model/AuthErrorCause;

    .line 1009
    new-instance v0, Lcom/kakao/sdk/common/model/AuthErrorCause;

    const-string v1, "ServerError"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/kakao/sdk/common/model/AuthErrorCause;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kakao/sdk/common/model/AuthErrorCause;->ServerError:Lcom/kakao/sdk/common/model/AuthErrorCause;

    .line 1069
    new-instance v0, Lcom/kakao/sdk/common/model/AuthErrorCause;

    const-string v1, "Unknown"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/kakao/sdk/common/model/AuthErrorCause;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kakao/sdk/common/model/AuthErrorCause;->Unknown:Lcom/kakao/sdk/common/model/AuthErrorCause;

    invoke-static {}, Lcom/kakao/sdk/common/model/AuthErrorCause;->$values()[Lcom/kakao/sdk/common/model/AuthErrorCause;

    move-result-object v0

    sput-object v0, Lcom/kakao/sdk/common/model/AuthErrorCause;->$VALUES:[Lcom/kakao/sdk/common/model/AuthErrorCause;

    new-instance v0, Lcom/kakao/sdk/common/model/AuthErrorCause$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/kakao/sdk/common/model/AuthErrorCause$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/kakao/sdk/common/model/AuthErrorCause;->Companion:Lcom/kakao/sdk/common/model/AuthErrorCause$Companion;

    .line 539
    sget-object v0, Lkotlin/LazyThreadSafetyMode;->PUBLICATION:Lkotlin/LazyThreadSafetyMode;

    sget-object v1, Lcom/kakao/sdk/common/model/AuthErrorCause$Companion$$cachedSerializer$delegate$1;->INSTANCE:Lcom/kakao/sdk/common/model/AuthErrorCause$Companion$$cachedSerializer$delegate$1;

    check-cast v1, Lkotlin/jvm/functions/Function0;

    invoke-static {v0, v1}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/kakao/sdk/common/model/AuthErrorCause;->$cachedSerializer$delegate:Lkotlin/Lazy;

    return-void

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

    .line 539
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void

    .array-data 1
    .end array-data
.end method

.method public static final synthetic access$get$cachedSerializer$delegate$cp()Lkotlin/Lazy;
    .locals 1

    .line 539
    sget-object v0, Lcom/kakao/sdk/common/model/AuthErrorCause;->$cachedSerializer$delegate:Lkotlin/Lazy;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/kakao/sdk/common/model/AuthErrorCause;
    .locals 1

    const-class v0, Lcom/kakao/sdk/common/model/AuthErrorCause;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/kakao/sdk/common/model/AuthErrorCause;

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static values()[Lcom/kakao/sdk/common/model/AuthErrorCause;
    .locals 1

    sget-object v0, Lcom/kakao/sdk/common/model/AuthErrorCause;->$VALUES:[Lcom/kakao/sdk/common/model/AuthErrorCause;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/kakao/sdk/common/model/AuthErrorCause;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method
