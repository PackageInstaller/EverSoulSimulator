.class public final enum Lcom/kakao/sdk/user/model/AgeRange;
.super Ljava/lang/Enum;
.source "User.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kakao/sdk/user/model/AgeRange$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/kakao/sdk/user/model/AgeRange;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0008\u000f\u0008\u0087\u0001\u0018\u0000 \u000f2\u0008\u0012\u0004\u0012\u00020\u00000\u0001:\u0001\u000fB\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002j\u0002\u0008\u0003j\u0002\u0008\u0004j\u0002\u0008\u0005j\u0002\u0008\u0006j\u0002\u0008\u0007j\u0002\u0008\u0008j\u0002\u0008\tj\u0002\u0008\nj\u0002\u0008\u000bj\u0002\u0008\u000cj\u0002\u0008\rj\u0002\u0008\u000e\u00a8\u0006\u0010"
    }
    d2 = {
        "Lcom/kakao/sdk/user/model/AgeRange;",
        "",
        "(Ljava/lang/String;I)V",
        "AGE_0_9",
        "AGE_10_14",
        "AGE_15_19",
        "AGE_20_29",
        "AGE_30_39",
        "AGE_40_49",
        "AGE_50_59",
        "AGE_60_69",
        "AGE_70_79",
        "AGE_80_89",
        "AGE_90_ABOVE",
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
    with = Lcom/kakao/sdk/user/model/AgeRangeSerializer;
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/kakao/sdk/user/model/AgeRange;

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

.field public static final enum AGE_0_9:Lcom/kakao/sdk/user/model/AgeRange;
    .annotation runtime Lkotlinx/serialization/SerialName;
        value = "0~9"
    .end annotation
.end field

.field public static final enum AGE_10_14:Lcom/kakao/sdk/user/model/AgeRange;
    .annotation runtime Lkotlinx/serialization/SerialName;
        value = "10~14"
    .end annotation
.end field

.field public static final enum AGE_15_19:Lcom/kakao/sdk/user/model/AgeRange;
    .annotation runtime Lkotlinx/serialization/SerialName;
        value = "15~19"
    .end annotation
.end field

.field public static final enum AGE_20_29:Lcom/kakao/sdk/user/model/AgeRange;
    .annotation runtime Lkotlinx/serialization/SerialName;
        value = "20~29"
    .end annotation
.end field

.field public static final enum AGE_30_39:Lcom/kakao/sdk/user/model/AgeRange;
    .annotation runtime Lkotlinx/serialization/SerialName;
        value = "30~39"
    .end annotation
.end field

.field public static final enum AGE_40_49:Lcom/kakao/sdk/user/model/AgeRange;
    .annotation runtime Lkotlinx/serialization/SerialName;
        value = "40~49"
    .end annotation
.end field

.field public static final enum AGE_50_59:Lcom/kakao/sdk/user/model/AgeRange;
    .annotation runtime Lkotlinx/serialization/SerialName;
        value = "50~59"
    .end annotation
.end field

.field public static final enum AGE_60_69:Lcom/kakao/sdk/user/model/AgeRange;
    .annotation runtime Lkotlinx/serialization/SerialName;
        value = "60~69"
    .end annotation
.end field

.field public static final enum AGE_70_79:Lcom/kakao/sdk/user/model/AgeRange;
    .annotation runtime Lkotlinx/serialization/SerialName;
        value = "70~79"
    .end annotation
.end field

.field public static final enum AGE_80_89:Lcom/kakao/sdk/user/model/AgeRange;
    .annotation runtime Lkotlinx/serialization/SerialName;
        value = "80~89"
    .end annotation
.end field

.field public static final enum AGE_90_ABOVE:Lcom/kakao/sdk/user/model/AgeRange;
    .annotation runtime Lkotlinx/serialization/SerialName;
        value = "90~"
    .end annotation
.end field

.field public static final Companion:Lcom/kakao/sdk/user/model/AgeRange$Companion;

.field public static final enum UNKNOWN:Lcom/kakao/sdk/user/model/AgeRange;
    .annotation runtime Lcom/kakao/sdk/common/json/UnknownValue;
    .end annotation
.end field


# direct methods
.method private static final synthetic $values()[Lcom/kakao/sdk/user/model/AgeRange;
    .locals 3

    const/16 v0, 0xc

    new-array v0, v0, [Lcom/kakao/sdk/user/model/AgeRange;

    const/4 v1, 0x0

    sget-object v2, Lcom/kakao/sdk/user/model/AgeRange;->AGE_0_9:Lcom/kakao/sdk/user/model/AgeRange;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/kakao/sdk/user/model/AgeRange;->AGE_10_14:Lcom/kakao/sdk/user/model/AgeRange;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/kakao/sdk/user/model/AgeRange;->AGE_15_19:Lcom/kakao/sdk/user/model/AgeRange;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/kakao/sdk/user/model/AgeRange;->AGE_20_29:Lcom/kakao/sdk/user/model/AgeRange;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lcom/kakao/sdk/user/model/AgeRange;->AGE_30_39:Lcom/kakao/sdk/user/model/AgeRange;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lcom/kakao/sdk/user/model/AgeRange;->AGE_40_49:Lcom/kakao/sdk/user/model/AgeRange;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/kakao/sdk/user/model/AgeRange;->AGE_50_59:Lcom/kakao/sdk/user/model/AgeRange;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/kakao/sdk/user/model/AgeRange;->AGE_60_69:Lcom/kakao/sdk/user/model/AgeRange;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/kakao/sdk/user/model/AgeRange;->AGE_70_79:Lcom/kakao/sdk/user/model/AgeRange;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/kakao/sdk/user/model/AgeRange;->AGE_80_89:Lcom/kakao/sdk/user/model/AgeRange;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/kakao/sdk/user/model/AgeRange;->AGE_90_ABOVE:Lcom/kakao/sdk/user/model/AgeRange;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/kakao/sdk/user/model/AgeRange;->UNKNOWN:Lcom/kakao/sdk/user/model/AgeRange;

    aput-object v2, v0, v1

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 1549
    new-instance v0, Lcom/kakao/sdk/user/model/AgeRange;

    const-string v1, "AGE_0_9"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/kakao/sdk/user/model/AgeRange;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kakao/sdk/user/model/AgeRange;->AGE_0_9:Lcom/kakao/sdk/user/model/AgeRange;

    .line 1609
    new-instance v0, Lcom/kakao/sdk/user/model/AgeRange;

    const-string v1, "AGE_10_14"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/kakao/sdk/user/model/AgeRange;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kakao/sdk/user/model/AgeRange;->AGE_10_14:Lcom/kakao/sdk/user/model/AgeRange;

    .line 1669
    new-instance v0, Lcom/kakao/sdk/user/model/AgeRange;

    const-string v1, "AGE_15_19"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/kakao/sdk/user/model/AgeRange;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kakao/sdk/user/model/AgeRange;->AGE_15_19:Lcom/kakao/sdk/user/model/AgeRange;

    .line 1729
    new-instance v0, Lcom/kakao/sdk/user/model/AgeRange;

    const-string v1, "AGE_20_29"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/kakao/sdk/user/model/AgeRange;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kakao/sdk/user/model/AgeRange;->AGE_20_29:Lcom/kakao/sdk/user/model/AgeRange;

    .line 1789
    new-instance v0, Lcom/kakao/sdk/user/model/AgeRange;

    const-string v1, "AGE_30_39"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/kakao/sdk/user/model/AgeRange;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kakao/sdk/user/model/AgeRange;->AGE_30_39:Lcom/kakao/sdk/user/model/AgeRange;

    .line 1849
    new-instance v0, Lcom/kakao/sdk/user/model/AgeRange;

    const-string v1, "AGE_40_49"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/kakao/sdk/user/model/AgeRange;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kakao/sdk/user/model/AgeRange;->AGE_40_49:Lcom/kakao/sdk/user/model/AgeRange;

    .line 1909
    new-instance v0, Lcom/kakao/sdk/user/model/AgeRange;

    const-string v1, "AGE_50_59"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/kakao/sdk/user/model/AgeRange;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kakao/sdk/user/model/AgeRange;->AGE_50_59:Lcom/kakao/sdk/user/model/AgeRange;

    .line 1969
    new-instance v0, Lcom/kakao/sdk/user/model/AgeRange;

    const-string v1, "AGE_60_69"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/kakao/sdk/user/model/AgeRange;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kakao/sdk/user/model/AgeRange;->AGE_60_69:Lcom/kakao/sdk/user/model/AgeRange;

    .line 2029
    new-instance v0, Lcom/kakao/sdk/user/model/AgeRange;

    const-string v1, "AGE_70_79"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/kakao/sdk/user/model/AgeRange;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kakao/sdk/user/model/AgeRange;->AGE_70_79:Lcom/kakao/sdk/user/model/AgeRange;

    .line 2089
    new-instance v0, Lcom/kakao/sdk/user/model/AgeRange;

    const-string v1, "AGE_80_89"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/kakao/sdk/user/model/AgeRange;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kakao/sdk/user/model/AgeRange;->AGE_80_89:Lcom/kakao/sdk/user/model/AgeRange;

    .line 2149
    new-instance v0, Lcom/kakao/sdk/user/model/AgeRange;

    const-string v1, "AGE_90_ABOVE"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/kakao/sdk/user/model/AgeRange;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kakao/sdk/user/model/AgeRange;->AGE_90_ABOVE:Lcom/kakao/sdk/user/model/AgeRange;

    .line 2209
    new-instance v0, Lcom/kakao/sdk/user/model/AgeRange;

    const-string v1, "UNKNOWN"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/kakao/sdk/user/model/AgeRange;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kakao/sdk/user/model/AgeRange;->UNKNOWN:Lcom/kakao/sdk/user/model/AgeRange;

    invoke-static {}, Lcom/kakao/sdk/user/model/AgeRange;->$values()[Lcom/kakao/sdk/user/model/AgeRange;

    move-result-object v0

    sput-object v0, Lcom/kakao/sdk/user/model/AgeRange;->$VALUES:[Lcom/kakao/sdk/user/model/AgeRange;

    new-instance v0, Lcom/kakao/sdk/user/model/AgeRange$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/kakao/sdk/user/model/AgeRange$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/kakao/sdk/user/model/AgeRange;->Companion:Lcom/kakao/sdk/user/model/AgeRange$Companion;

    .line 1499
    sget-object v0, Lkotlin/LazyThreadSafetyMode;->PUBLICATION:Lkotlin/LazyThreadSafetyMode;

    sget-object v1, Lcom/kakao/sdk/user/model/AgeRange$Companion$$cachedSerializer$delegate$1;->INSTANCE:Lcom/kakao/sdk/user/model/AgeRange$Companion$$cachedSerializer$delegate$1;

    check-cast v1, Lkotlin/jvm/functions/Function0;

    invoke-static {v0, v1}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/kakao/sdk/user/model/AgeRange;->$cachedSerializer$delegate:Lkotlin/Lazy;

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

    .line 1499
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void

    .array-data 1
    .end array-data
.end method

.method public static final synthetic access$get$cachedSerializer$delegate$cp()Lkotlin/Lazy;
    .locals 1

    .line 1499
    sget-object v0, Lcom/kakao/sdk/user/model/AgeRange;->$cachedSerializer$delegate:Lkotlin/Lazy;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/kakao/sdk/user/model/AgeRange;
    .locals 1

    const-class v0, Lcom/kakao/sdk/user/model/AgeRange;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/kakao/sdk/user/model/AgeRange;

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static values()[Lcom/kakao/sdk/user/model/AgeRange;
    .locals 1

    sget-object v0, Lcom/kakao/sdk/user/model/AgeRange;->$VALUES:[Lcom/kakao/sdk/user/model/AgeRange;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/kakao/sdk/user/model/AgeRange;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method
