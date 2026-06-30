.class public final enum Lcom/kakao/sdk/partner/model/KakaoPhase;
.super Ljava/lang/Enum;
.source "KakaoPhase.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kakao/sdk/partner/model/KakaoPhase$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/kakao/sdk/partner/model/KakaoPhase;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\t\u0008\u0086\u0001\u0018\u0000 \u000b2\u0008\u0012\u0004\u0012\u00020\u00000\u0001:\u0001\u000bB\u000f\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006j\u0002\u0008\u0007j\u0002\u0008\u0008j\u0002\u0008\tj\u0002\u0008\n\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcom/kakao/sdk/partner/model/KakaoPhase;",
        "",
        "phaseName",
        "",
        "(Ljava/lang/String;ILjava/lang/String;)V",
        "getPhaseName",
        "()Ljava/lang/String;",
        "DEV",
        "SANDBOX",
        "CBT",
        "PRODUCTION",
        "Companion",
        "partner-common_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/kakao/sdk/partner/model/KakaoPhase;

.field public static final enum CBT:Lcom/kakao/sdk/partner/model/KakaoPhase;
    .annotation runtime Lkotlinx/serialization/SerialName;
        value = "cbt"
    .end annotation
.end field

.field public static final Companion:Lcom/kakao/sdk/partner/model/KakaoPhase$Companion;

.field public static final enum DEV:Lcom/kakao/sdk/partner/model/KakaoPhase;
    .annotation runtime Lkotlinx/serialization/SerialName;
        value = "dev"
    .end annotation
.end field

.field public static final enum PRODUCTION:Lcom/kakao/sdk/partner/model/KakaoPhase;
    .annotation runtime Lkotlinx/serialization/SerialName;
        value = "production"
    .end annotation
.end field

.field public static final enum SANDBOX:Lcom/kakao/sdk/partner/model/KakaoPhase;
    .annotation runtime Lkotlinx/serialization/SerialName;
        value = "sandbox"
    .end annotation
.end field


# instance fields
.field private final phaseName:Ljava/lang/String;


# direct methods
.method private static final synthetic $values()[Lcom/kakao/sdk/partner/model/KakaoPhase;
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/kakao/sdk/partner/model/KakaoPhase;

    const/4 v1, 0x0

    sget-object v2, Lcom/kakao/sdk/partner/model/KakaoPhase;->DEV:Lcom/kakao/sdk/partner/model/KakaoPhase;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/kakao/sdk/partner/model/KakaoPhase;->SANDBOX:Lcom/kakao/sdk/partner/model/KakaoPhase;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/kakao/sdk/partner/model/KakaoPhase;->CBT:Lcom/kakao/sdk/partner/model/KakaoPhase;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/kakao/sdk/partner/model/KakaoPhase;->PRODUCTION:Lcom/kakao/sdk/partner/model/KakaoPhase;

    aput-object v2, v0, v1

    return-object v0

    .array-data 1
    .end array-data
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 329
    new-instance v0, Lcom/kakao/sdk/partner/model/KakaoPhase;

    const/4 v1, 0x0

    const-string v2, "dev"

    const-string v3, "DEV"

    invoke-direct {v0, v3, v1, v2}, Lcom/kakao/sdk/partner/model/KakaoPhase;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/kakao/sdk/partner/model/KakaoPhase;->DEV:Lcom/kakao/sdk/partner/model/KakaoPhase;

    .line 389
    new-instance v0, Lcom/kakao/sdk/partner/model/KakaoPhase;

    const/4 v1, 0x1

    const-string v2, "sandbox"

    const-string v3, "SANDBOX"

    invoke-direct {v0, v3, v1, v2}, Lcom/kakao/sdk/partner/model/KakaoPhase;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/kakao/sdk/partner/model/KakaoPhase;->SANDBOX:Lcom/kakao/sdk/partner/model/KakaoPhase;

    .line 449
    new-instance v0, Lcom/kakao/sdk/partner/model/KakaoPhase;

    const/4 v1, 0x2

    const-string v2, "cbt"

    const-string v3, "CBT"

    invoke-direct {v0, v3, v1, v2}, Lcom/kakao/sdk/partner/model/KakaoPhase;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/kakao/sdk/partner/model/KakaoPhase;->CBT:Lcom/kakao/sdk/partner/model/KakaoPhase;

    .line 509
    new-instance v0, Lcom/kakao/sdk/partner/model/KakaoPhase;

    const/4 v1, 0x3

    const-string v2, "production"

    const-string v3, "PRODUCTION"

    invoke-direct {v0, v3, v1, v2}, Lcom/kakao/sdk/partner/model/KakaoPhase;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/kakao/sdk/partner/model/KakaoPhase;->PRODUCTION:Lcom/kakao/sdk/partner/model/KakaoPhase;

    invoke-static {}, Lcom/kakao/sdk/partner/model/KakaoPhase;->$values()[Lcom/kakao/sdk/partner/model/KakaoPhase;

    move-result-object v0

    sput-object v0, Lcom/kakao/sdk/partner/model/KakaoPhase;->$VALUES:[Lcom/kakao/sdk/partner/model/KakaoPhase;

    new-instance v0, Lcom/kakao/sdk/partner/model/KakaoPhase$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/kakao/sdk/partner/model/KakaoPhase$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/kakao/sdk/partner/model/KakaoPhase;->Companion:Lcom/kakao/sdk/partner/model/KakaoPhase$Companion;

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 279
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/kakao/sdk/partner/model/KakaoPhase;->phaseName:Ljava/lang/String;

    return-void

    .array-data 1
    .end array-data
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/kakao/sdk/partner/model/KakaoPhase;
    .locals 1

    const-class v0, Lcom/kakao/sdk/partner/model/KakaoPhase;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/kakao/sdk/partner/model/KakaoPhase;

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static values()[Lcom/kakao/sdk/partner/model/KakaoPhase;
    .locals 1

    sget-object v0, Lcom/kakao/sdk/partner/model/KakaoPhase;->$VALUES:[Lcom/kakao/sdk/partner/model/KakaoPhase;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/kakao/sdk/partner/model/KakaoPhase;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public final getPhaseName()Ljava/lang/String;
    .locals 1

    .line 279
    iget-object v0, p0, Lcom/kakao/sdk/partner/model/KakaoPhase;->phaseName:Ljava/lang/String;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method
