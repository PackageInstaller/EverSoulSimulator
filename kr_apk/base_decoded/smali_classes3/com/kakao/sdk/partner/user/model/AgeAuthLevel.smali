.class public final enum Lcom/kakao/sdk/partner/user/model/AgeAuthLevel;
.super Ljava/lang/Enum;
.source "AgeAuthLevel.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kakao/sdk/partner/user/model/AgeAuthLevel$WhenMappings;,
        Lcom/kakao/sdk/partner/user/model/AgeAuthLevel$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/kakao/sdk/partner/user/model/AgeAuthLevel;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0004\u0008\u0087\u0001\u0018\u0000 \u00072\u0008\u0012\u0004\u0012\u00020\u00000\u0001:\u0001\u0007B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0006\u0010\u0003\u001a\u00020\u0004j\u0002\u0008\u0005j\u0002\u0008\u0006\u00a8\u0006\u0008"
    }
    d2 = {
        "Lcom/kakao/sdk/partner/user/model/AgeAuthLevel;",
        "",
        "(Ljava/lang/String;I)V",
        "toParameter",
        "",
        "AUTH_LEVEL1",
        "AUTH_LEVEL2",
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
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/kakao/sdk/partner/user/model/AgeAuthLevel;

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

.field public static final enum AUTH_LEVEL1:Lcom/kakao/sdk/partner/user/model/AgeAuthLevel;

.field public static final enum AUTH_LEVEL2:Lcom/kakao/sdk/partner/user/model/AgeAuthLevel;

.field public static final Companion:Lcom/kakao/sdk/partner/user/model/AgeAuthLevel$Companion;


# direct methods
.method private static final synthetic $values()[Lcom/kakao/sdk/partner/user/model/AgeAuthLevel;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/kakao/sdk/partner/user/model/AgeAuthLevel;

    const/4 v1, 0x0

    sget-object v2, Lcom/kakao/sdk/partner/user/model/AgeAuthLevel;->AUTH_LEVEL1:Lcom/kakao/sdk/partner/user/model/AgeAuthLevel;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/kakao/sdk/partner/user/model/AgeAuthLevel;->AUTH_LEVEL2:Lcom/kakao/sdk/partner/user/model/AgeAuthLevel;

    aput-object v2, v0, v1

    return-object v0

    .array-data 1
    .end array-data
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 299
    new-instance v0, Lcom/kakao/sdk/partner/user/model/AgeAuthLevel;

    const-string v1, "AUTH_LEVEL1"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/kakao/sdk/partner/user/model/AgeAuthLevel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kakao/sdk/partner/user/model/AgeAuthLevel;->AUTH_LEVEL1:Lcom/kakao/sdk/partner/user/model/AgeAuthLevel;

    .line 349
    new-instance v0, Lcom/kakao/sdk/partner/user/model/AgeAuthLevel;

    const-string v1, "AUTH_LEVEL2"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/kakao/sdk/partner/user/model/AgeAuthLevel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kakao/sdk/partner/user/model/AgeAuthLevel;->AUTH_LEVEL2:Lcom/kakao/sdk/partner/user/model/AgeAuthLevel;

    invoke-static {}, Lcom/kakao/sdk/partner/user/model/AgeAuthLevel;->$values()[Lcom/kakao/sdk/partner/user/model/AgeAuthLevel;

    move-result-object v0

    sput-object v0, Lcom/kakao/sdk/partner/user/model/AgeAuthLevel;->$VALUES:[Lcom/kakao/sdk/partner/user/model/AgeAuthLevel;

    new-instance v0, Lcom/kakao/sdk/partner/user/model/AgeAuthLevel$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/kakao/sdk/partner/user/model/AgeAuthLevel$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/kakao/sdk/partner/user/model/AgeAuthLevel;->Companion:Lcom/kakao/sdk/partner/user/model/AgeAuthLevel$Companion;

    .line 239
    sget-object v0, Lkotlin/LazyThreadSafetyMode;->PUBLICATION:Lkotlin/LazyThreadSafetyMode;

    sget-object v1, Lcom/kakao/sdk/partner/user/model/AgeAuthLevel$Companion$$cachedSerializer$delegate$1;->INSTANCE:Lcom/kakao/sdk/partner/user/model/AgeAuthLevel$Companion$$cachedSerializer$delegate$1;

    check-cast v1, Lkotlin/jvm/functions/Function0;

    invoke-static {v0, v1}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/kakao/sdk/partner/user/model/AgeAuthLevel;->$cachedSerializer$delegate:Lkotlin/Lazy;

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

    .line 239
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void

    .array-data 1
    .end array-data
.end method

.method public static final synthetic access$get$cachedSerializer$delegate$cp()Lkotlin/Lazy;
    .locals 1

    .line 239
    sget-object v0, Lcom/kakao/sdk/partner/user/model/AgeAuthLevel;->$cachedSerializer$delegate:Lkotlin/Lazy;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/kakao/sdk/partner/user/model/AgeAuthLevel;
    .locals 1

    const-class v0, Lcom/kakao/sdk/partner/user/model/AgeAuthLevel;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/kakao/sdk/partner/user/model/AgeAuthLevel;

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static values()[Lcom/kakao/sdk/partner/user/model/AgeAuthLevel;
    .locals 1

    sget-object v0, Lcom/kakao/sdk/partner/user/model/AgeAuthLevel;->$VALUES:[Lcom/kakao/sdk/partner/user/model/AgeAuthLevel;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/kakao/sdk/partner/user/model/AgeAuthLevel;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public final toParameter()Ljava/lang/String;
    .locals 2

    .line 379
    sget-object v0, Lcom/kakao/sdk/partner/user/model/AgeAuthLevel$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p0}, Lcom/kakao/sdk/partner/user/model/AgeAuthLevel;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const-string v0, "20"

    goto :goto_0

    .line 399
    :cond_0
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0

    :cond_1
    const-string v0, "10"

    :goto_0
    return-object v0

    .array-data 1
    .end array-data
.end method
