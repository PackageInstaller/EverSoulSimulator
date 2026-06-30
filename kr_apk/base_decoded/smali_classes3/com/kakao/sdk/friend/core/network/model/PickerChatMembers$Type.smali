.class public final enum Lcom/kakao/sdk/friend/core/network/model/PickerChatMembers$Type;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kakao/sdk/friend/core/network/model/PickerChatMembers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kakao/sdk/friend/core/network/model/PickerChatMembers$Type$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/kakao/sdk/friend/core/network/model/PickerChatMembers$Type;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0008\u0005\u0008\u0087\u0001\u0018\u0000 \u00022\u0008\u0012\u0004\u0012\u00020\u00000\u0001:\u0001\u0002j\u0002\u0008\u0003j\u0002\u0008\u0004j\u0002\u0008\u0005\u00a8\u0006\u0006"
    }
    d2 = {
        "Lcom/kakao/sdk/friend/core/network/model/PickerChatMembers$Type;",
        "",
        "Companion",
        "DIRECT_CHAT",
        "MULTI_CHAT",
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
    with = Lcom/kakao/sdk/friend/core/network/model/PickerChatMembers$TypeSerializer;
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/kakao/sdk/friend/core/network/model/PickerChatMembers$Type;

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

.field public static final Companion:Lcom/kakao/sdk/friend/core/network/model/PickerChatMembers$Type$Companion;

.field public static final enum DIRECT_CHAT:Lcom/kakao/sdk/friend/core/network/model/PickerChatMembers$Type;
    .annotation runtime Lkotlinx/serialization/SerialName;
        value = "DirectChat"
    .end annotation
.end field

.field public static final enum MULTI_CHAT:Lcom/kakao/sdk/friend/core/network/model/PickerChatMembers$Type;
    .annotation runtime Lkotlinx/serialization/SerialName;
        value = "MultiChat"
    .end annotation
.end field

.field public static final enum UNKNOWN:Lcom/kakao/sdk/friend/core/network/model/PickerChatMembers$Type;
    .annotation runtime Lcom/kakao/sdk/common/json/UnknownValue;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lcom/kakao/sdk/friend/core/network/model/PickerChatMembers$Type;

    const-string v1, "DIRECT_CHAT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/kakao/sdk/friend/core/network/model/PickerChatMembers$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kakao/sdk/friend/core/network/model/PickerChatMembers$Type;->DIRECT_CHAT:Lcom/kakao/sdk/friend/core/network/model/PickerChatMembers$Type;

    new-instance v1, Lcom/kakao/sdk/friend/core/network/model/PickerChatMembers$Type;

    const-string v3, "MULTI_CHAT"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/kakao/sdk/friend/core/network/model/PickerChatMembers$Type;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/kakao/sdk/friend/core/network/model/PickerChatMembers$Type;->MULTI_CHAT:Lcom/kakao/sdk/friend/core/network/model/PickerChatMembers$Type;

    new-instance v3, Lcom/kakao/sdk/friend/core/network/model/PickerChatMembers$Type;

    const-string v5, "UNKNOWN"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/kakao/sdk/friend/core/network/model/PickerChatMembers$Type;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/kakao/sdk/friend/core/network/model/PickerChatMembers$Type;->UNKNOWN:Lcom/kakao/sdk/friend/core/network/model/PickerChatMembers$Type;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/kakao/sdk/friend/core/network/model/PickerChatMembers$Type;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 29
    sput-object v5, Lcom/kakao/sdk/friend/core/network/model/PickerChatMembers$Type;->$VALUES:[Lcom/kakao/sdk/friend/core/network/model/PickerChatMembers$Type;

    new-instance v0, Lcom/kakao/sdk/friend/core/network/model/PickerChatMembers$Type$Companion;

    invoke-direct {v0}, Lcom/kakao/sdk/friend/core/network/model/PickerChatMembers$Type$Companion;-><init>()V

    sput-object v0, Lcom/kakao/sdk/friend/core/network/model/PickerChatMembers$Type;->Companion:Lcom/kakao/sdk/friend/core/network/model/PickerChatMembers$Type$Companion;

    sget-object v0, Lkotlin/LazyThreadSafetyMode;->PUBLICATION:Lkotlin/LazyThreadSafetyMode;

    sget-object v1, Lcom/kakao/sdk/friend/core/network/model/PickerChatMembers$Type$Companion$$cachedSerializer$delegate$1;->INSTANCE:Lcom/kakao/sdk/friend/core/network/model/PickerChatMembers$Type$Companion$$cachedSerializer$delegate$1;

    invoke-static {v0, v1}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/kakao/sdk/friend/core/network/model/PickerChatMembers$Type;->$cachedSerializer$delegate:Lkotlin/Lazy;

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

    sget-object v0, Lcom/kakao/sdk/friend/core/network/model/PickerChatMembers$Type;->$cachedSerializer$delegate:Lkotlin/Lazy;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/kakao/sdk/friend/core/network/model/PickerChatMembers$Type;
    .locals 1

    const-class v0, Lcom/kakao/sdk/friend/core/network/model/PickerChatMembers$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/kakao/sdk/friend/core/network/model/PickerChatMembers$Type;

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static values()[Lcom/kakao/sdk/friend/core/network/model/PickerChatMembers$Type;
    .locals 1

    sget-object v0, Lcom/kakao/sdk/friend/core/network/model/PickerChatMembers$Type;->$VALUES:[Lcom/kakao/sdk/friend/core/network/model/PickerChatMembers$Type;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/kakao/sdk/friend/core/network/model/PickerChatMembers$Type;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method
