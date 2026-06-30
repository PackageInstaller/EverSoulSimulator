.class public final enum Lcom/kakao/sdk/partner/user/model/AgeAuthErrorCause;
.super Ljava/lang/Enum;
.source "AgeAuthError.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kakao/sdk/partner/user/model/AgeAuthErrorCause$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/kakao/sdk/partner/user/model/AgeAuthErrorCause;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u000f\u0008\u0087\u0001\u0018\u0000 \u00112\u0008\u0012\u0004\u0012\u00020\u00000\u0001:\u0001\u0011B\u000f\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006j\u0002\u0008\u0007j\u0002\u0008\u0008j\u0002\u0008\tj\u0002\u0008\nj\u0002\u0008\u000bj\u0002\u0008\u000cj\u0002\u0008\rj\u0002\u0008\u000ej\u0002\u0008\u000fj\u0002\u0008\u0010\u00a8\u0006\u0012"
    }
    d2 = {
        "Lcom/kakao/sdk/partner/user/model/AgeAuthErrorCause;",
        "",
        "status",
        "",
        "(Ljava/lang/String;II)V",
        "getStatus",
        "()I",
        "UNAUTHORIZED",
        "BAD_PARAMETERS",
        "NOT_AUTHORIZED_AGE",
        "LOWER_AGE_LIMIT",
        "ALREADY_AGE_AUTHORIZED",
        "EXCEED_AGE_CHECK_LIMIT",
        "AGE_AUTH_RESULT_MISMATCH",
        "CI_RESULT_MISMATCH",
        "ERROR",
        "UNKNOWN",
        "Companion",
        "partner-user_release"
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
    with = Lcom/kakao/sdk/partner/user/model/AgeAuthErrorCauseSerializer;
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/kakao/sdk/partner/user/model/AgeAuthErrorCause;

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

.field public static final enum AGE_AUTH_RESULT_MISMATCH:Lcom/kakao/sdk/partner/user/model/AgeAuthErrorCause;
    .annotation runtime Lcom/kakao/sdk/common/model/Description;
        value = "does not match with the previously authenticated information(birthday). (replaced from BIRTHDAY_MISMATCH)"
    .end annotation
.end field

.field public static final enum ALREADY_AGE_AUTHORIZED:Lcom/kakao/sdk/partner/user/model/AgeAuthErrorCause;
    .annotation runtime Lcom/kakao/sdk/common/model/Description;
        value = "age verification has already been completed. (Even after completing 2-step verification,  user attempts 1-step verification."
    .end annotation
.end field

.field public static final enum BAD_PARAMETERS:Lcom/kakao/sdk/partner/user/model/AgeAuthErrorCause;
    .annotation runtime Lcom/kakao/sdk/common/model/Description;
        value = "client information is incompatible."
    .end annotation
.end field

.field public static final enum CI_RESULT_MISMATCH:Lcom/kakao/sdk/partner/user/model/AgeAuthErrorCause;
    .annotation runtime Lcom/kakao/sdk/common/model/Description;
        value = "CI information does not match."
    .end annotation
.end field

.field public static final Companion:Lcom/kakao/sdk/partner/user/model/AgeAuthErrorCause$Companion;

.field public static final enum ERROR:Lcom/kakao/sdk/partner/user/model/AgeAuthErrorCause;
    .annotation runtime Lcom/kakao/sdk/common/model/Description;
        value = "failed to find user, birthday does not match with the birthday received from CA, or unexpected error occurs."
    .end annotation
.end field

.field public static final enum EXCEED_AGE_CHECK_LIMIT:Lcom/kakao/sdk/partner/user/model/AgeAuthErrorCause;
    .annotation runtime Lcom/kakao/sdk/common/model/Description;
        value = "user has exceeded the maximum number of failed attempts at age verification."
    .end annotation
.end field

.field public static final enum LOWER_AGE_LIMIT:Lcom/kakao/sdk/partner/user/model/AgeAuthErrorCause;
    .annotation runtime Lcom/kakao/sdk/common/model/Description;
        value = "user is younger than age limit specified in current app."
    .end annotation
.end field

.field public static final enum NOT_AUTHORIZED_AGE:Lcom/kakao/sdk/partner/user/model/AgeAuthErrorCause;
    .annotation runtime Lcom/kakao/sdk/common/model/Description;
        value = "age verification is required but not completed. (Normal situation to proceed age verification"
    .end annotation
.end field

.field public static final enum UNAUTHORIZED:Lcom/kakao/sdk/partner/user/model/AgeAuthErrorCause;
    .annotation runtime Lcom/kakao/sdk/common/model/Description;
        value = "user is unauthenticated."
    .end annotation
.end field

.field public static final enum UNKNOWN:Lcom/kakao/sdk/partner/user/model/AgeAuthErrorCause;
    .annotation runtime Lcom/kakao/sdk/common/json/UnknownValue;
    .end annotation

    .annotation runtime Lcom/kakao/sdk/common/model/Description;
        value = "unknown error."
    .end annotation
.end field


# instance fields
.field private final status:I


# direct methods
.method private static final synthetic $values()[Lcom/kakao/sdk/partner/user/model/AgeAuthErrorCause;
    .locals 3

    const/16 v0, 0xa

    new-array v0, v0, [Lcom/kakao/sdk/partner/user/model/AgeAuthErrorCause;

    const/4 v1, 0x0

    sget-object v2, Lcom/kakao/sdk/partner/user/model/AgeAuthErrorCause;->UNAUTHORIZED:Lcom/kakao/sdk/partner/user/model/AgeAuthErrorCause;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/kakao/sdk/partner/user/model/AgeAuthErrorCause;->BAD_PARAMETERS:Lcom/kakao/sdk/partner/user/model/AgeAuthErrorCause;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/kakao/sdk/partner/user/model/AgeAuthErrorCause;->NOT_AUTHORIZED_AGE:Lcom/kakao/sdk/partner/user/model/AgeAuthErrorCause;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/kakao/sdk/partner/user/model/AgeAuthErrorCause;->LOWER_AGE_LIMIT:Lcom/kakao/sdk/partner/user/model/AgeAuthErrorCause;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lcom/kakao/sdk/partner/user/model/AgeAuthErrorCause;->ALREADY_AGE_AUTHORIZED:Lcom/kakao/sdk/partner/user/model/AgeAuthErrorCause;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lcom/kakao/sdk/partner/user/model/AgeAuthErrorCause;->EXCEED_AGE_CHECK_LIMIT:Lcom/kakao/sdk/partner/user/model/AgeAuthErrorCause;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/kakao/sdk/partner/user/model/AgeAuthErrorCause;->AGE_AUTH_RESULT_MISMATCH:Lcom/kakao/sdk/partner/user/model/AgeAuthErrorCause;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/kakao/sdk/partner/user/model/AgeAuthErrorCause;->CI_RESULT_MISMATCH:Lcom/kakao/sdk/partner/user/model/AgeAuthErrorCause;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/kakao/sdk/partner/user/model/AgeAuthErrorCause;->ERROR:Lcom/kakao/sdk/partner/user/model/AgeAuthErrorCause;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/kakao/sdk/partner/user/model/AgeAuthErrorCause;->UNKNOWN:Lcom/kakao/sdk/partner/user/model/AgeAuthErrorCause;

    aput-object v2, v0, v1

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 459
    new-instance v0, Lcom/kakao/sdk/partner/user/model/AgeAuthErrorCause;

    const/4 v1, 0x0

    const/16 v2, -0x191

    const-string v3, "UNAUTHORIZED"

    invoke-direct {v0, v3, v1, v2}, Lcom/kakao/sdk/partner/user/model/AgeAuthErrorCause;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/kakao/sdk/partner/user/model/AgeAuthErrorCause;->UNAUTHORIZED:Lcom/kakao/sdk/partner/user/model/AgeAuthErrorCause;

    .line 519
    new-instance v0, Lcom/kakao/sdk/partner/user/model/AgeAuthErrorCause;

    const/4 v1, 0x1

    const/16 v2, -0x1b8

    const-string v3, "BAD_PARAMETERS"

    invoke-direct {v0, v3, v1, v2}, Lcom/kakao/sdk/partner/user/model/AgeAuthErrorCause;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/kakao/sdk/partner/user/model/AgeAuthErrorCause;->BAD_PARAMETERS:Lcom/kakao/sdk/partner/user/model/AgeAuthErrorCause;

    .line 579
    new-instance v0, Lcom/kakao/sdk/partner/user/model/AgeAuthErrorCause;

    const/4 v1, 0x2

    const/16 v2, -0x1c2

    const-string v3, "NOT_AUTHORIZED_AGE"

    invoke-direct {v0, v3, v1, v2}, Lcom/kakao/sdk/partner/user/model/AgeAuthErrorCause;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/kakao/sdk/partner/user/model/AgeAuthErrorCause;->NOT_AUTHORIZED_AGE:Lcom/kakao/sdk/partner/user/model/AgeAuthErrorCause;

    .line 639
    new-instance v0, Lcom/kakao/sdk/partner/user/model/AgeAuthErrorCause;

    const/4 v1, 0x3

    const/16 v2, -0x1c3

    const-string v3, "LOWER_AGE_LIMIT"

    invoke-direct {v0, v3, v1, v2}, Lcom/kakao/sdk/partner/user/model/AgeAuthErrorCause;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/kakao/sdk/partner/user/model/AgeAuthErrorCause;->LOWER_AGE_LIMIT:Lcom/kakao/sdk/partner/user/model/AgeAuthErrorCause;

    .line 699
    new-instance v0, Lcom/kakao/sdk/partner/user/model/AgeAuthErrorCause;

    const/4 v1, 0x4

    const/16 v2, -0x1c4

    const-string v3, "ALREADY_AGE_AUTHORIZED"

    invoke-direct {v0, v3, v1, v2}, Lcom/kakao/sdk/partner/user/model/AgeAuthErrorCause;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/kakao/sdk/partner/user/model/AgeAuthErrorCause;->ALREADY_AGE_AUTHORIZED:Lcom/kakao/sdk/partner/user/model/AgeAuthErrorCause;

    .line 759
    new-instance v0, Lcom/kakao/sdk/partner/user/model/AgeAuthErrorCause;

    const/4 v1, 0x5

    const/16 v2, -0x1c5

    const-string v3, "EXCEED_AGE_CHECK_LIMIT"

    invoke-direct {v0, v3, v1, v2}, Lcom/kakao/sdk/partner/user/model/AgeAuthErrorCause;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/kakao/sdk/partner/user/model/AgeAuthErrorCause;->EXCEED_AGE_CHECK_LIMIT:Lcom/kakao/sdk/partner/user/model/AgeAuthErrorCause;

    .line 819
    new-instance v0, Lcom/kakao/sdk/partner/user/model/AgeAuthErrorCause;

    const/4 v1, 0x6

    const/16 v2, -0x1e0

    const-string v3, "AGE_AUTH_RESULT_MISMATCH"

    invoke-direct {v0, v3, v1, v2}, Lcom/kakao/sdk/partner/user/model/AgeAuthErrorCause;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/kakao/sdk/partner/user/model/AgeAuthErrorCause;->AGE_AUTH_RESULT_MISMATCH:Lcom/kakao/sdk/partner/user/model/AgeAuthErrorCause;

    .line 879
    new-instance v0, Lcom/kakao/sdk/partner/user/model/AgeAuthErrorCause;

    const/4 v1, 0x7

    const/16 v2, -0x1e1

    const-string v3, "CI_RESULT_MISMATCH"

    invoke-direct {v0, v3, v1, v2}, Lcom/kakao/sdk/partner/user/model/AgeAuthErrorCause;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/kakao/sdk/partner/user/model/AgeAuthErrorCause;->CI_RESULT_MISMATCH:Lcom/kakao/sdk/partner/user/model/AgeAuthErrorCause;

    .line 949
    new-instance v0, Lcom/kakao/sdk/partner/user/model/AgeAuthErrorCause;

    const/16 v1, 0x8

    const/16 v2, -0x1f4

    const-string v3, "ERROR"

    invoke-direct {v0, v3, v1, v2}, Lcom/kakao/sdk/partner/user/model/AgeAuthErrorCause;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/kakao/sdk/partner/user/model/AgeAuthErrorCause;->ERROR:Lcom/kakao/sdk/partner/user/model/AgeAuthErrorCause;

    .line 1009
    new-instance v0, Lcom/kakao/sdk/partner/user/model/AgeAuthErrorCause;

    const/16 v1, 0x9

    const/16 v2, -0x270f

    const-string v3, "UNKNOWN"

    invoke-direct {v0, v3, v1, v2}, Lcom/kakao/sdk/partner/user/model/AgeAuthErrorCause;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/kakao/sdk/partner/user/model/AgeAuthErrorCause;->UNKNOWN:Lcom/kakao/sdk/partner/user/model/AgeAuthErrorCause;

    invoke-static {}, Lcom/kakao/sdk/partner/user/model/AgeAuthErrorCause;->$values()[Lcom/kakao/sdk/partner/user/model/AgeAuthErrorCause;

    move-result-object v0

    sput-object v0, Lcom/kakao/sdk/partner/user/model/AgeAuthErrorCause;->$VALUES:[Lcom/kakao/sdk/partner/user/model/AgeAuthErrorCause;

    new-instance v0, Lcom/kakao/sdk/partner/user/model/AgeAuthErrorCause$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/kakao/sdk/partner/user/model/AgeAuthErrorCause$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/kakao/sdk/partner/user/model/AgeAuthErrorCause;->Companion:Lcom/kakao/sdk/partner/user/model/AgeAuthErrorCause$Companion;

    .line 399
    sget-object v0, Lkotlin/LazyThreadSafetyMode;->PUBLICATION:Lkotlin/LazyThreadSafetyMode;

    sget-object v1, Lcom/kakao/sdk/partner/user/model/AgeAuthErrorCause$Companion$$cachedSerializer$delegate$1;->INSTANCE:Lcom/kakao/sdk/partner/user/model/AgeAuthErrorCause$Companion$$cachedSerializer$delegate$1;

    check-cast v1, Lkotlin/jvm/functions/Function0;

    invoke-static {v0, v1}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/kakao/sdk/partner/user/model/AgeAuthErrorCause;->$cachedSerializer$delegate:Lkotlin/Lazy;

    return-void

    nop

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

    .line 399
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 409
    iput p3, p0, Lcom/kakao/sdk/partner/user/model/AgeAuthErrorCause;->status:I

    return-void

    .array-data 1
    .end array-data
.end method

.method public static final synthetic access$get$cachedSerializer$delegate$cp()Lkotlin/Lazy;
    .locals 1

    .line 399
    sget-object v0, Lcom/kakao/sdk/partner/user/model/AgeAuthErrorCause;->$cachedSerializer$delegate:Lkotlin/Lazy;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/kakao/sdk/partner/user/model/AgeAuthErrorCause;
    .locals 1

    const-class v0, Lcom/kakao/sdk/partner/user/model/AgeAuthErrorCause;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/kakao/sdk/partner/user/model/AgeAuthErrorCause;

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static values()[Lcom/kakao/sdk/partner/user/model/AgeAuthErrorCause;
    .locals 1

    sget-object v0, Lcom/kakao/sdk/partner/user/model/AgeAuthErrorCause;->$VALUES:[Lcom/kakao/sdk/partner/user/model/AgeAuthErrorCause;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/kakao/sdk/partner/user/model/AgeAuthErrorCause;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public final getStatus()I
    .locals 1

    .line 409
    iget v0, p0, Lcom/kakao/sdk/partner/user/model/AgeAuthErrorCause;->status:I

    return v0

    nop

    .array-data 1
    .end array-data
.end method
