.class public final enum Lcom/kakao/sdk/user/model/Gender;
.super Ljava/lang/Enum;
.source "User.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kakao/sdk/user/model/Gender$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/kakao/sdk/user/model/Gender;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0008\u0006\u0008\u0087\u0001\u0018\u0000 \u00062\u0008\u0012\u0004\u0012\u00020\u00000\u0001:\u0001\u0006B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002j\u0002\u0008\u0003j\u0002\u0008\u0004j\u0002\u0008\u0005\u00a8\u0006\u0007"
    }
    d2 = {
        "Lcom/kakao/sdk/user/model/Gender;",
        "",
        "(Ljava/lang/String;I)V",
        "FEMALE",
        "MALE",
        "UNKNOWN",
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
    with = Lcom/kakao/sdk/user/model/GenderSerializer;
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/kakao/sdk/user/model/Gender;

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

.field public static final Companion:Lcom/kakao/sdk/user/model/Gender$Companion;

.field public static final enum FEMALE:Lcom/kakao/sdk/user/model/Gender;
    .annotation runtime Lkotlinx/serialization/SerialName;
        value = "female"
    .end annotation
.end field

.field public static final enum MALE:Lcom/kakao/sdk/user/model/Gender;
    .annotation runtime Lkotlinx/serialization/SerialName;
        value = "male"
    .end annotation
.end field

.field public static final enum UNKNOWN:Lcom/kakao/sdk/user/model/Gender;
    .annotation runtime Lcom/kakao/sdk/common/json/UnknownValue;
    .end annotation
.end field


# direct methods
.method private static final synthetic $values()[Lcom/kakao/sdk/user/model/Gender;
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/kakao/sdk/user/model/Gender;

    const/4 v1, 0x0

    sget-object v2, Lcom/kakao/sdk/user/model/Gender;->FEMALE:Lcom/kakao/sdk/user/model/Gender;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/kakao/sdk/user/model/Gender;->MALE:Lcom/kakao/sdk/user/model/Gender;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/kakao/sdk/user/model/Gender;->UNKNOWN:Lcom/kakao/sdk/user/model/Gender;

    aput-object v2, v0, v1

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 2329
    new-instance v0, Lcom/kakao/sdk/user/model/Gender;

    const-string v1, "FEMALE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/kakao/sdk/user/model/Gender;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kakao/sdk/user/model/Gender;->FEMALE:Lcom/kakao/sdk/user/model/Gender;

    .line 2389
    new-instance v0, Lcom/kakao/sdk/user/model/Gender;

    const-string v1, "MALE"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/kakao/sdk/user/model/Gender;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kakao/sdk/user/model/Gender;->MALE:Lcom/kakao/sdk/user/model/Gender;

    .line 2449
    new-instance v0, Lcom/kakao/sdk/user/model/Gender;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/kakao/sdk/user/model/Gender;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kakao/sdk/user/model/Gender;->UNKNOWN:Lcom/kakao/sdk/user/model/Gender;

    invoke-static {}, Lcom/kakao/sdk/user/model/Gender;->$values()[Lcom/kakao/sdk/user/model/Gender;

    move-result-object v0

    sput-object v0, Lcom/kakao/sdk/user/model/Gender;->$VALUES:[Lcom/kakao/sdk/user/model/Gender;

    new-instance v0, Lcom/kakao/sdk/user/model/Gender$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/kakao/sdk/user/model/Gender$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/kakao/sdk/user/model/Gender;->Companion:Lcom/kakao/sdk/user/model/Gender$Companion;

    .line 2279
    sget-object v0, Lkotlin/LazyThreadSafetyMode;->PUBLICATION:Lkotlin/LazyThreadSafetyMode;

    sget-object v1, Lcom/kakao/sdk/user/model/Gender$Companion$$cachedSerializer$delegate$1;->INSTANCE:Lcom/kakao/sdk/user/model/Gender$Companion$$cachedSerializer$delegate$1;

    check-cast v1, Lkotlin/jvm/functions/Function0;

    invoke-static {v0, v1}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/kakao/sdk/user/model/Gender;->$cachedSerializer$delegate:Lkotlin/Lazy;

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

    .line 2279
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void

    .array-data 1
    .end array-data
.end method

.method public static final synthetic access$get$cachedSerializer$delegate$cp()Lkotlin/Lazy;
    .locals 1

    .line 2279
    sget-object v0, Lcom/kakao/sdk/user/model/Gender;->$cachedSerializer$delegate:Lkotlin/Lazy;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/kakao/sdk/user/model/Gender;
    .locals 1

    const-class v0, Lcom/kakao/sdk/user/model/Gender;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/kakao/sdk/user/model/Gender;

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static values()[Lcom/kakao/sdk/user/model/Gender;
    .locals 1

    sget-object v0, Lcom/kakao/sdk/user/model/Gender;->$VALUES:[Lcom/kakao/sdk/user/model/Gender;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/kakao/sdk/user/model/Gender;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method
