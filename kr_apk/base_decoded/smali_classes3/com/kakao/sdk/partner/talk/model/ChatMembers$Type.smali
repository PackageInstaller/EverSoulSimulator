.class public final enum Lcom/kakao/sdk/partner/talk/model/ChatMembers$Type;
.super Ljava/lang/Enum;
.source "ChatMembers.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kakao/sdk/partner/talk/model/ChatMembers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kakao/sdk/partner/talk/model/ChatMembers$Type$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/kakao/sdk/partner/talk/model/ChatMembers$Type;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0008\u0006\u0008\u0087\u0001\u0018\u0000 \u00062\u0008\u0012\u0004\u0012\u00020\u00000\u0001:\u0001\u0006B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002j\u0002\u0008\u0003j\u0002\u0008\u0004j\u0002\u0008\u0005\u00a8\u0006\u0007"
    }
    d2 = {
        "Lcom/kakao/sdk/partner/talk/model/ChatMembers$Type;",
        "",
        "(Ljava/lang/String;I)V",
        "DIRECT_CHAT",
        "MULTI_CHAT",
        "UNKNOWN",
        "Companion",
        "partner-talk_release"
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
    with = Lcom/kakao/sdk/partner/talk/model/ChatMembers$TypeSerializer;
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/kakao/sdk/partner/talk/model/ChatMembers$Type;

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

.field public static final Companion:Lcom/kakao/sdk/partner/talk/model/ChatMembers$Type$Companion;

.field public static final enum DIRECT_CHAT:Lcom/kakao/sdk/partner/talk/model/ChatMembers$Type;
    .annotation runtime Lkotlinx/serialization/SerialName;
        value = "DirectChat"
    .end annotation
.end field

.field public static final enum MULTI_CHAT:Lcom/kakao/sdk/partner/talk/model/ChatMembers$Type;
    .annotation runtime Lkotlinx/serialization/SerialName;
        value = "MultiChat"
    .end annotation
.end field

.field public static final enum UNKNOWN:Lcom/kakao/sdk/partner/talk/model/ChatMembers$Type;
    .annotation runtime Lcom/kakao/sdk/common/json/UnknownValue;
    .end annotation
.end field


# direct methods
.method private static final synthetic $values()[Lcom/kakao/sdk/partner/talk/model/ChatMembers$Type;
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/kakao/sdk/partner/talk/model/ChatMembers$Type;

    const/4 v1, 0x0

    sget-object v2, Lcom/kakao/sdk/partner/talk/model/ChatMembers$Type;->DIRECT_CHAT:Lcom/kakao/sdk/partner/talk/model/ChatMembers$Type;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/kakao/sdk/partner/talk/model/ChatMembers$Type;->MULTI_CHAT:Lcom/kakao/sdk/partner/talk/model/ChatMembers$Type;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/kakao/sdk/partner/talk/model/ChatMembers$Type;->UNKNOWN:Lcom/kakao/sdk/partner/talk/model/ChatMembers$Type;

    aput-object v2, v0, v1

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 499
    new-instance v0, Lcom/kakao/sdk/partner/talk/model/ChatMembers$Type;

    const-string v1, "DIRECT_CHAT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/kakao/sdk/partner/talk/model/ChatMembers$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kakao/sdk/partner/talk/model/ChatMembers$Type;->DIRECT_CHAT:Lcom/kakao/sdk/partner/talk/model/ChatMembers$Type;

    .line 559
    new-instance v0, Lcom/kakao/sdk/partner/talk/model/ChatMembers$Type;

    const-string v1, "MULTI_CHAT"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/kakao/sdk/partner/talk/model/ChatMembers$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kakao/sdk/partner/talk/model/ChatMembers$Type;->MULTI_CHAT:Lcom/kakao/sdk/partner/talk/model/ChatMembers$Type;

    .line 589
    new-instance v0, Lcom/kakao/sdk/partner/talk/model/ChatMembers$Type;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/kakao/sdk/partner/talk/model/ChatMembers$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kakao/sdk/partner/talk/model/ChatMembers$Type;->UNKNOWN:Lcom/kakao/sdk/partner/talk/model/ChatMembers$Type;

    invoke-static {}, Lcom/kakao/sdk/partner/talk/model/ChatMembers$Type;->$values()[Lcom/kakao/sdk/partner/talk/model/ChatMembers$Type;

    move-result-object v0

    sput-object v0, Lcom/kakao/sdk/partner/talk/model/ChatMembers$Type;->$VALUES:[Lcom/kakao/sdk/partner/talk/model/ChatMembers$Type;

    new-instance v0, Lcom/kakao/sdk/partner/talk/model/ChatMembers$Type$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/kakao/sdk/partner/talk/model/ChatMembers$Type$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/kakao/sdk/partner/talk/model/ChatMembers$Type;->Companion:Lcom/kakao/sdk/partner/talk/model/ChatMembers$Type$Companion;

    .line 439
    sget-object v0, Lkotlin/LazyThreadSafetyMode;->PUBLICATION:Lkotlin/LazyThreadSafetyMode;

    sget-object v1, Lcom/kakao/sdk/partner/talk/model/ChatMembers$Type$Companion$$cachedSerializer$delegate$1;->INSTANCE:Lcom/kakao/sdk/partner/talk/model/ChatMembers$Type$Companion$$cachedSerializer$delegate$1;

    check-cast v1, Lkotlin/jvm/functions/Function0;

    invoke-static {v0, v1}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/kakao/sdk/partner/talk/model/ChatMembers$Type;->$cachedSerializer$delegate:Lkotlin/Lazy;

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

    .line 439
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void

    .array-data 1
    .end array-data
.end method

.method public static final synthetic access$get$cachedSerializer$delegate$cp()Lkotlin/Lazy;
    .locals 1

    .line 439
    sget-object v0, Lcom/kakao/sdk/partner/talk/model/ChatMembers$Type;->$cachedSerializer$delegate:Lkotlin/Lazy;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/kakao/sdk/partner/talk/model/ChatMembers$Type;
    .locals 1

    const-class v0, Lcom/kakao/sdk/partner/talk/model/ChatMembers$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/kakao/sdk/partner/talk/model/ChatMembers$Type;

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static values()[Lcom/kakao/sdk/partner/talk/model/ChatMembers$Type;
    .locals 1

    sget-object v0, Lcom/kakao/sdk/partner/talk/model/ChatMembers$Type;->$VALUES:[Lcom/kakao/sdk/partner/talk/model/ChatMembers$Type;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/kakao/sdk/partner/talk/model/ChatMembers$Type;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method
