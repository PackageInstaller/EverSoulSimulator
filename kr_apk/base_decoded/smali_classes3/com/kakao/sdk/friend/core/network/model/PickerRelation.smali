.class public final enum Lcom/kakao/sdk/friend/core/network/model/PickerRelation;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kakao/sdk/friend/core/network/model/PickerRelation$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/kakao/sdk/friend/core/network/model/PickerRelation;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0008\u0006\u0008\u0087\u0001\u0018\u0000 \u00022\u0008\u0012\u0004\u0012\u00020\u00000\u0001:\u0001\u0002j\u0002\u0008\u0003j\u0002\u0008\u0004j\u0002\u0008\u0005j\u0002\u0008\u0006\u00a8\u0006\u0007"
    }
    d2 = {
        "Lcom/kakao/sdk/friend/core/network/model/PickerRelation;",
        "",
        "Companion",
        "NONE",
        "FRIEND",
        "NOT_FRIEND",
        "UNKNOWN",
        "friend-core_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
.end annotation

.annotation runtime Lkotlinx/serialization/Serializable;
    with = Lcom/kakao/sdk/friend/core/network/model/PickerRelationSerializer;
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/kakao/sdk/friend/core/network/model/PickerRelation;

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

.field public static final Companion:Lcom/kakao/sdk/friend/core/network/model/PickerRelation$Companion;

.field public static final enum FRIEND:Lcom/kakao/sdk/friend/core/network/model/PickerRelation;
    .annotation runtime Lkotlinx/serialization/SerialName;
        value = "friend"
    .end annotation
.end field

.field public static final enum NONE:Lcom/kakao/sdk/friend/core/network/model/PickerRelation;
    .annotation runtime Lkotlinx/serialization/SerialName;
        value = "N/A"
    .end annotation
.end field

.field public static final enum NOT_FRIEND:Lcom/kakao/sdk/friend/core/network/model/PickerRelation;
    .annotation runtime Lkotlinx/serialization/SerialName;
        value = "no_friend"
    .end annotation
.end field

.field public static final enum UNKNOWN:Lcom/kakao/sdk/friend/core/network/model/PickerRelation;
    .annotation runtime Lcom/kakao/sdk/common/json/UnknownValue;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 9

    new-instance v0, Lcom/kakao/sdk/friend/core/network/model/PickerRelation;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/kakao/sdk/friend/core/network/model/PickerRelation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kakao/sdk/friend/core/network/model/PickerRelation;->NONE:Lcom/kakao/sdk/friend/core/network/model/PickerRelation;

    new-instance v1, Lcom/kakao/sdk/friend/core/network/model/PickerRelation;

    const-string v3, "FRIEND"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/kakao/sdk/friend/core/network/model/PickerRelation;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/kakao/sdk/friend/core/network/model/PickerRelation;->FRIEND:Lcom/kakao/sdk/friend/core/network/model/PickerRelation;

    new-instance v3, Lcom/kakao/sdk/friend/core/network/model/PickerRelation;

    const-string v5, "NOT_FRIEND"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/kakao/sdk/friend/core/network/model/PickerRelation;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/kakao/sdk/friend/core/network/model/PickerRelation;->NOT_FRIEND:Lcom/kakao/sdk/friend/core/network/model/PickerRelation;

    new-instance v5, Lcom/kakao/sdk/friend/core/network/model/PickerRelation;

    const-string v7, "UNKNOWN"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/kakao/sdk/friend/core/network/model/PickerRelation;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/kakao/sdk/friend/core/network/model/PickerRelation;->UNKNOWN:Lcom/kakao/sdk/friend/core/network/model/PickerRelation;

    const/4 v7, 0x4

    new-array v7, v7, [Lcom/kakao/sdk/friend/core/network/model/PickerRelation;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    .line 29
    sput-object v7, Lcom/kakao/sdk/friend/core/network/model/PickerRelation;->$VALUES:[Lcom/kakao/sdk/friend/core/network/model/PickerRelation;

    new-instance v0, Lcom/kakao/sdk/friend/core/network/model/PickerRelation$Companion;

    invoke-direct {v0}, Lcom/kakao/sdk/friend/core/network/model/PickerRelation$Companion;-><init>()V

    sput-object v0, Lcom/kakao/sdk/friend/core/network/model/PickerRelation;->Companion:Lcom/kakao/sdk/friend/core/network/model/PickerRelation$Companion;

    sget-object v0, Lkotlin/LazyThreadSafetyMode;->PUBLICATION:Lkotlin/LazyThreadSafetyMode;

    sget-object v1, Lcom/kakao/sdk/friend/core/network/model/PickerRelation$Companion$$cachedSerializer$delegate$1;->INSTANCE:Lcom/kakao/sdk/friend/core/network/model/PickerRelation$Companion$$cachedSerializer$delegate$1;

    invoke-static {v0, v1}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/kakao/sdk/friend/core/network/model/PickerRelation;->$cachedSerializer$delegate:Lkotlin/Lazy;

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void

    .array-data 1
    .end array-data
.end method

.method public static final synthetic a()Lkotlin/Lazy;
    .locals 1

    sget-object v0, Lcom/kakao/sdk/friend/core/network/model/PickerRelation;->$cachedSerializer$delegate:Lkotlin/Lazy;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/kakao/sdk/friend/core/network/model/PickerRelation;
    .locals 1

    const-class v0, Lcom/kakao/sdk/friend/core/network/model/PickerRelation;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/kakao/sdk/friend/core/network/model/PickerRelation;

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static values()[Lcom/kakao/sdk/friend/core/network/model/PickerRelation;
    .locals 1

    sget-object v0, Lcom/kakao/sdk/friend/core/network/model/PickerRelation;->$VALUES:[Lcom/kakao/sdk/friend/core/network/model/PickerRelation;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/kakao/sdk/friend/core/network/model/PickerRelation;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method
