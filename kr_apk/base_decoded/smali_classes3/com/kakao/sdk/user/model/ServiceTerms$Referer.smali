.class public final enum Lcom/kakao/sdk/user/model/ServiceTerms$Referer;
.super Ljava/lang/Enum;
.source "UserServiceTerms.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kakao/sdk/user/model/ServiceTerms;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Referer"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kakao/sdk/user/model/ServiceTerms$Referer$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/kakao/sdk/user/model/ServiceTerms$Referer;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0008\u0006\u0008\u0087\u0001\u0018\u0000 \u00062\u0008\u0012\u0004\u0012\u00020\u00000\u0001:\u0001\u0006B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002j\u0002\u0008\u0003j\u0002\u0008\u0004j\u0002\u0008\u0005\u00a8\u0006\u0007"
    }
    d2 = {
        "Lcom/kakao/sdk/user/model/ServiceTerms$Referer;",
        "",
        "(Ljava/lang/String;I)V",
        "KAUTH",
        "KAPI",
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
    with = Lcom/kakao/sdk/user/model/ServiceTerms$RefererSerializer;
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/kakao/sdk/user/model/ServiceTerms$Referer;

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

.field public static final Companion:Lcom/kakao/sdk/user/model/ServiceTerms$Referer$Companion;

.field public static final enum KAPI:Lcom/kakao/sdk/user/model/ServiceTerms$Referer;

.field public static final enum KAUTH:Lcom/kakao/sdk/user/model/ServiceTerms$Referer;

.field public static final enum UNKNOWN:Lcom/kakao/sdk/user/model/ServiceTerms$Referer;
    .annotation runtime Lcom/kakao/sdk/common/json/UnknownValue;
    .end annotation
.end field


# direct methods
.method private static final synthetic $values()[Lcom/kakao/sdk/user/model/ServiceTerms$Referer;
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/kakao/sdk/user/model/ServiceTerms$Referer;

    const/4 v1, 0x0

    sget-object v2, Lcom/kakao/sdk/user/model/ServiceTerms$Referer;->KAUTH:Lcom/kakao/sdk/user/model/ServiceTerms$Referer;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/kakao/sdk/user/model/ServiceTerms$Referer;->KAPI:Lcom/kakao/sdk/user/model/ServiceTerms$Referer;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/kakao/sdk/user/model/ServiceTerms$Referer;->UNKNOWN:Lcom/kakao/sdk/user/model/ServiceTerms$Referer;

    aput-object v2, v0, v1

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 659
    new-instance v0, Lcom/kakao/sdk/user/model/ServiceTerms$Referer;

    const-string v1, "KAUTH"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/kakao/sdk/user/model/ServiceTerms$Referer;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kakao/sdk/user/model/ServiceTerms$Referer;->KAUTH:Lcom/kakao/sdk/user/model/ServiceTerms$Referer;

    .line 709
    new-instance v0, Lcom/kakao/sdk/user/model/ServiceTerms$Referer;

    const-string v1, "KAPI"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/kakao/sdk/user/model/ServiceTerms$Referer;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kakao/sdk/user/model/ServiceTerms$Referer;->KAPI:Lcom/kakao/sdk/user/model/ServiceTerms$Referer;

    .line 759
    new-instance v0, Lcom/kakao/sdk/user/model/ServiceTerms$Referer;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/kakao/sdk/user/model/ServiceTerms$Referer;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kakao/sdk/user/model/ServiceTerms$Referer;->UNKNOWN:Lcom/kakao/sdk/user/model/ServiceTerms$Referer;

    invoke-static {}, Lcom/kakao/sdk/user/model/ServiceTerms$Referer;->$values()[Lcom/kakao/sdk/user/model/ServiceTerms$Referer;

    move-result-object v0

    sput-object v0, Lcom/kakao/sdk/user/model/ServiceTerms$Referer;->$VALUES:[Lcom/kakao/sdk/user/model/ServiceTerms$Referer;

    new-instance v0, Lcom/kakao/sdk/user/model/ServiceTerms$Referer$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/kakao/sdk/user/model/ServiceTerms$Referer$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/kakao/sdk/user/model/ServiceTerms$Referer;->Companion:Lcom/kakao/sdk/user/model/ServiceTerms$Referer$Companion;

    .line 609
    sget-object v0, Lkotlin/LazyThreadSafetyMode;->PUBLICATION:Lkotlin/LazyThreadSafetyMode;

    sget-object v1, Lcom/kakao/sdk/user/model/ServiceTerms$Referer$Companion$$cachedSerializer$delegate$1;->INSTANCE:Lcom/kakao/sdk/user/model/ServiceTerms$Referer$Companion$$cachedSerializer$delegate$1;

    check-cast v1, Lkotlin/jvm/functions/Function0;

    invoke-static {v0, v1}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/kakao/sdk/user/model/ServiceTerms$Referer;->$cachedSerializer$delegate:Lkotlin/Lazy;

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

    .line 609
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void

    .array-data 1
    .end array-data
.end method

.method public static final synthetic access$get$cachedSerializer$delegate$cp()Lkotlin/Lazy;
    .locals 1

    .line 609
    sget-object v0, Lcom/kakao/sdk/user/model/ServiceTerms$Referer;->$cachedSerializer$delegate:Lkotlin/Lazy;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/kakao/sdk/user/model/ServiceTerms$Referer;
    .locals 1

    const-class v0, Lcom/kakao/sdk/user/model/ServiceTerms$Referer;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/kakao/sdk/user/model/ServiceTerms$Referer;

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static values()[Lcom/kakao/sdk/user/model/ServiceTerms$Referer;
    .locals 1

    sget-object v0, Lcom/kakao/sdk/user/model/ServiceTerms$Referer;->$VALUES:[Lcom/kakao/sdk/user/model/ServiceTerms$Referer;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/kakao/sdk/user/model/ServiceTerms$Referer;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method
