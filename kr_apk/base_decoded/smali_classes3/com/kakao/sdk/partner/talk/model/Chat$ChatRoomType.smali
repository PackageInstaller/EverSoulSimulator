.class public final enum Lcom/kakao/sdk/partner/talk/model/Chat$ChatRoomType;
.super Ljava/lang/Enum;
.source "Chats.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kakao/sdk/partner/talk/model/Chat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ChatRoomType"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kakao/sdk/partner/talk/model/Chat$ChatRoomType$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/kakao/sdk/partner/talk/model/Chat$ChatRoomType;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0008\t\u0008\u0087\u0001\u0018\u0000 \t2\u0008\u0012\u0004\u0012\u00020\u00000\u0001:\u0001\tB\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002j\u0002\u0008\u0003j\u0002\u0008\u0004j\u0002\u0008\u0005j\u0002\u0008\u0006j\u0002\u0008\u0007j\u0002\u0008\u0008\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/kakao/sdk/partner/talk/model/Chat$ChatRoomType;",
        "",
        "(Ljava/lang/String;I)V",
        "DIRECT_CHAT",
        "MULTI_CHAT",
        "OPEN_DIRECT_CHAT",
        "OPEN_MULTI_CHAT",
        "MEMO_CHAT",
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
    with = Lcom/kakao/sdk/partner/talk/model/ChatRoomTypeSerializer;
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/kakao/sdk/partner/talk/model/Chat$ChatRoomType;

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

.field public static final Companion:Lcom/kakao/sdk/partner/talk/model/Chat$ChatRoomType$Companion;

.field public static final enum DIRECT_CHAT:Lcom/kakao/sdk/partner/talk/model/Chat$ChatRoomType;
    .annotation runtime Lkotlinx/serialization/SerialName;
        value = "DirectChat"
    .end annotation
.end field

.field public static final enum MEMO_CHAT:Lcom/kakao/sdk/partner/talk/model/Chat$ChatRoomType;
    .annotation runtime Lkotlinx/serialization/SerialName;
        value = "MemoChat"
    .end annotation
.end field

.field public static final enum MULTI_CHAT:Lcom/kakao/sdk/partner/talk/model/Chat$ChatRoomType;
    .annotation runtime Lkotlinx/serialization/SerialName;
        value = "MultiChat"
    .end annotation
.end field

.field public static final enum OPEN_DIRECT_CHAT:Lcom/kakao/sdk/partner/talk/model/Chat$ChatRoomType;
    .annotation runtime Lkotlinx/serialization/SerialName;
        value = "OpenDirectChat"
    .end annotation
.end field

.field public static final enum OPEN_MULTI_CHAT:Lcom/kakao/sdk/partner/talk/model/Chat$ChatRoomType;
    .annotation runtime Lkotlinx/serialization/SerialName;
        value = "OpenMultiChat"
    .end annotation
.end field

.field public static final enum UNKNOWN:Lcom/kakao/sdk/partner/talk/model/Chat$ChatRoomType;
    .annotation runtime Lcom/kakao/sdk/common/json/UnknownValue;
    .end annotation
.end field


# direct methods
.method private static final synthetic $values()[Lcom/kakao/sdk/partner/talk/model/Chat$ChatRoomType;
    .locals 3

    const/4 v0, 0x6

    new-array v0, v0, [Lcom/kakao/sdk/partner/talk/model/Chat$ChatRoomType;

    const/4 v1, 0x0

    sget-object v2, Lcom/kakao/sdk/partner/talk/model/Chat$ChatRoomType;->DIRECT_CHAT:Lcom/kakao/sdk/partner/talk/model/Chat$ChatRoomType;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/kakao/sdk/partner/talk/model/Chat$ChatRoomType;->MULTI_CHAT:Lcom/kakao/sdk/partner/talk/model/Chat$ChatRoomType;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/kakao/sdk/partner/talk/model/Chat$ChatRoomType;->OPEN_DIRECT_CHAT:Lcom/kakao/sdk/partner/talk/model/Chat$ChatRoomType;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/kakao/sdk/partner/talk/model/Chat$ChatRoomType;->OPEN_MULTI_CHAT:Lcom/kakao/sdk/partner/talk/model/Chat$ChatRoomType;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lcom/kakao/sdk/partner/talk/model/Chat$ChatRoomType;->MEMO_CHAT:Lcom/kakao/sdk/partner/talk/model/Chat$ChatRoomType;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lcom/kakao/sdk/partner/talk/model/Chat$ChatRoomType;->UNKNOWN:Lcom/kakao/sdk/partner/talk/model/Chat$ChatRoomType;

    aput-object v2, v0, v1

    return-object v0

    .array-data 1
    .end array-data
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 719
    new-instance v0, Lcom/kakao/sdk/partner/talk/model/Chat$ChatRoomType;

    const-string v1, "DIRECT_CHAT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/kakao/sdk/partner/talk/model/Chat$ChatRoomType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kakao/sdk/partner/talk/model/Chat$ChatRoomType;->DIRECT_CHAT:Lcom/kakao/sdk/partner/talk/model/Chat$ChatRoomType;

    .line 779
    new-instance v0, Lcom/kakao/sdk/partner/talk/model/Chat$ChatRoomType;

    const-string v1, "MULTI_CHAT"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/kakao/sdk/partner/talk/model/Chat$ChatRoomType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kakao/sdk/partner/talk/model/Chat$ChatRoomType;->MULTI_CHAT:Lcom/kakao/sdk/partner/talk/model/Chat$ChatRoomType;

    .line 839
    new-instance v0, Lcom/kakao/sdk/partner/talk/model/Chat$ChatRoomType;

    const-string v1, "OPEN_DIRECT_CHAT"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/kakao/sdk/partner/talk/model/Chat$ChatRoomType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kakao/sdk/partner/talk/model/Chat$ChatRoomType;->OPEN_DIRECT_CHAT:Lcom/kakao/sdk/partner/talk/model/Chat$ChatRoomType;

    .line 899
    new-instance v0, Lcom/kakao/sdk/partner/talk/model/Chat$ChatRoomType;

    const-string v1, "OPEN_MULTI_CHAT"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/kakao/sdk/partner/talk/model/Chat$ChatRoomType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kakao/sdk/partner/talk/model/Chat$ChatRoomType;->OPEN_MULTI_CHAT:Lcom/kakao/sdk/partner/talk/model/Chat$ChatRoomType;

    .line 959
    new-instance v0, Lcom/kakao/sdk/partner/talk/model/Chat$ChatRoomType;

    const-string v1, "MEMO_CHAT"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/kakao/sdk/partner/talk/model/Chat$ChatRoomType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kakao/sdk/partner/talk/model/Chat$ChatRoomType;->MEMO_CHAT:Lcom/kakao/sdk/partner/talk/model/Chat$ChatRoomType;

    .line 1019
    new-instance v0, Lcom/kakao/sdk/partner/talk/model/Chat$ChatRoomType;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/kakao/sdk/partner/talk/model/Chat$ChatRoomType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kakao/sdk/partner/talk/model/Chat$ChatRoomType;->UNKNOWN:Lcom/kakao/sdk/partner/talk/model/Chat$ChatRoomType;

    invoke-static {}, Lcom/kakao/sdk/partner/talk/model/Chat$ChatRoomType;->$values()[Lcom/kakao/sdk/partner/talk/model/Chat$ChatRoomType;

    move-result-object v0

    sput-object v0, Lcom/kakao/sdk/partner/talk/model/Chat$ChatRoomType;->$VALUES:[Lcom/kakao/sdk/partner/talk/model/Chat$ChatRoomType;

    new-instance v0, Lcom/kakao/sdk/partner/talk/model/Chat$ChatRoomType$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/kakao/sdk/partner/talk/model/Chat$ChatRoomType$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/kakao/sdk/partner/talk/model/Chat$ChatRoomType;->Companion:Lcom/kakao/sdk/partner/talk/model/Chat$ChatRoomType$Companion;

    .line 659
    sget-object v0, Lkotlin/LazyThreadSafetyMode;->PUBLICATION:Lkotlin/LazyThreadSafetyMode;

    sget-object v1, Lcom/kakao/sdk/partner/talk/model/Chat$ChatRoomType$Companion$$cachedSerializer$delegate$1;->INSTANCE:Lcom/kakao/sdk/partner/talk/model/Chat$ChatRoomType$Companion$$cachedSerializer$delegate$1;

    check-cast v1, Lkotlin/jvm/functions/Function0;

    invoke-static {v0, v1}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/kakao/sdk/partner/talk/model/Chat$ChatRoomType;->$cachedSerializer$delegate:Lkotlin/Lazy;

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

    .line 659
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void

    .array-data 1
    .end array-data
.end method

.method public static final synthetic access$get$cachedSerializer$delegate$cp()Lkotlin/Lazy;
    .locals 1

    .line 659
    sget-object v0, Lcom/kakao/sdk/partner/talk/model/Chat$ChatRoomType;->$cachedSerializer$delegate:Lkotlin/Lazy;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/kakao/sdk/partner/talk/model/Chat$ChatRoomType;
    .locals 1

    const-class v0, Lcom/kakao/sdk/partner/talk/model/Chat$ChatRoomType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/kakao/sdk/partner/talk/model/Chat$ChatRoomType;

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static values()[Lcom/kakao/sdk/partner/talk/model/Chat$ChatRoomType;
    .locals 1

    sget-object v0, Lcom/kakao/sdk/partner/talk/model/Chat$ChatRoomType;->$VALUES:[Lcom/kakao/sdk/partner/talk/model/Chat$ChatRoomType;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/kakao/sdk/partner/talk/model/Chat$ChatRoomType;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method
