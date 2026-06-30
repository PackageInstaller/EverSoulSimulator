.class public final enum Lcom/kakao/sdk/friend/core/model/PickerFriendFilter;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kakao/sdk/friend/core/model/PickerFriendFilter$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/kakao/sdk/friend/core/model/PickerFriendFilter;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0008\u0006\u0008\u0087\u0001\u0018\u0000 \u00062\u0008\u0012\u0004\u0012\u00020\u00000\u0001:\u0001\u0006B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002j\u0002\u0008\u0003j\u0002\u0008\u0004j\u0002\u0008\u0005\u00a8\u0006\u0007"
    }
    d2 = {
        "Lcom/kakao/sdk/friend/core/model/PickerFriendFilter;",
        "",
        "(Ljava/lang/String;I)V",
        "NONE",
        "REGISTERED",
        "INVITABLE",
        "Companion",
        "friend-core_release"
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
.field private static final synthetic $VALUES:[Lcom/kakao/sdk/friend/core/model/PickerFriendFilter;

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

.field public static final Companion:Lcom/kakao/sdk/friend/core/model/PickerFriendFilter$Companion;

.field public static final enum INVITABLE:Lcom/kakao/sdk/friend/core/model/PickerFriendFilter;
    .annotation runtime Lkotlinx/serialization/SerialName;
        value = "invitable"
    .end annotation
.end field

.field public static final enum NONE:Lcom/kakao/sdk/friend/core/model/PickerFriendFilter;
    .annotation runtime Lkotlinx/serialization/SerialName;
        value = "none"
    .end annotation
.end field

.field public static final enum REGISTERED:Lcom/kakao/sdk/friend/core/model/PickerFriendFilter;
    .annotation runtime Lkotlinx/serialization/SerialName;
        value = "registered"
    .end annotation
.end field


# direct methods
.method private static final synthetic $values()[Lcom/kakao/sdk/friend/core/model/PickerFriendFilter;
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/kakao/sdk/friend/core/model/PickerFriendFilter;

    sget-object v1, Lcom/kakao/sdk/friend/core/model/PickerFriendFilter;->NONE:Lcom/kakao/sdk/friend/core/model/PickerFriendFilter;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/kakao/sdk/friend/core/model/PickerFriendFilter;->REGISTERED:Lcom/kakao/sdk/friend/core/model/PickerFriendFilter;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/kakao/sdk/friend/core/model/PickerFriendFilter;->INVITABLE:Lcom/kakao/sdk/friend/core/model/PickerFriendFilter;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/kakao/sdk/friend/core/model/PickerFriendFilter;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/kakao/sdk/friend/core/model/PickerFriendFilter;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kakao/sdk/friend/core/model/PickerFriendFilter;->NONE:Lcom/kakao/sdk/friend/core/model/PickerFriendFilter;

    new-instance v0, Lcom/kakao/sdk/friend/core/model/PickerFriendFilter;

    const-string v1, "REGISTERED"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/kakao/sdk/friend/core/model/PickerFriendFilter;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kakao/sdk/friend/core/model/PickerFriendFilter;->REGISTERED:Lcom/kakao/sdk/friend/core/model/PickerFriendFilter;

    new-instance v0, Lcom/kakao/sdk/friend/core/model/PickerFriendFilter;

    const-string v1, "INVITABLE"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/kakao/sdk/friend/core/model/PickerFriendFilter;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kakao/sdk/friend/core/model/PickerFriendFilter;->INVITABLE:Lcom/kakao/sdk/friend/core/model/PickerFriendFilter;

    invoke-static {}, Lcom/kakao/sdk/friend/core/model/PickerFriendFilter;->$values()[Lcom/kakao/sdk/friend/core/model/PickerFriendFilter;

    move-result-object v0

    sput-object v0, Lcom/kakao/sdk/friend/core/model/PickerFriendFilter;->$VALUES:[Lcom/kakao/sdk/friend/core/model/PickerFriendFilter;

    new-instance v0, Lcom/kakao/sdk/friend/core/model/PickerFriendFilter$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/kakao/sdk/friend/core/model/PickerFriendFilter$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/kakao/sdk/friend/core/model/PickerFriendFilter;->Companion:Lcom/kakao/sdk/friend/core/model/PickerFriendFilter$Companion;

    sget-object v0, Lkotlin/LazyThreadSafetyMode;->PUBLICATION:Lkotlin/LazyThreadSafetyMode;

    sget-object v1, Lcom/kakao/sdk/friend/core/model/PickerFriendFilter$Companion$$cachedSerializer$delegate$1;->INSTANCE:Lcom/kakao/sdk/friend/core/model/PickerFriendFilter$Companion$$cachedSerializer$delegate$1;

    invoke-static {v0, v1}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/kakao/sdk/friend/core/model/PickerFriendFilter;->$cachedSerializer$delegate:Lkotlin/Lazy;

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

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void

    .array-data 1
    .end array-data
.end method

.method public static final synthetic access$get$cachedSerializer$delegate$cp()Lkotlin/Lazy;
    .locals 1

    sget-object v0, Lcom/kakao/sdk/friend/core/model/PickerFriendFilter;->$cachedSerializer$delegate:Lkotlin/Lazy;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/kakao/sdk/friend/core/model/PickerFriendFilter;
    .locals 1

    const-class v0, Lcom/kakao/sdk/friend/core/model/PickerFriendFilter;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/kakao/sdk/friend/core/model/PickerFriendFilter;

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static values()[Lcom/kakao/sdk/friend/core/model/PickerFriendFilter;
    .locals 1

    sget-object v0, Lcom/kakao/sdk/friend/core/model/PickerFriendFilter;->$VALUES:[Lcom/kakao/sdk/friend/core/model/PickerFriendFilter;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/kakao/sdk/friend/core/model/PickerFriendFilter;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method
