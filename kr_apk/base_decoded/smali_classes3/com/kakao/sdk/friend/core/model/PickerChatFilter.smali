.class public final enum Lcom/kakao/sdk/friend/core/model/PickerChatFilter;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/kakao/sdk/friend/core/model/PickerChatFilter;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0008\u0008\u0086\u0001\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u000f\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006j\u0002\u0008\u0007j\u0002\u0008\u0008j\u0002\u0008\tj\u0002\u0008\n\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/kakao/sdk/friend/core/model/PickerChatFilter;",
        "",
        "value",
        "",
        "(Ljava/lang/String;ILjava/lang/String;)V",
        "getValue",
        "()Ljava/lang/String;",
        "DIRECT",
        "MULTI",
        "REGULAR",
        "OPEN",
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


# static fields
.field private static final synthetic $VALUES:[Lcom/kakao/sdk/friend/core/model/PickerChatFilter;

.field public static final enum DIRECT:Lcom/kakao/sdk/friend/core/model/PickerChatFilter;
    .annotation runtime Lkotlinx/serialization/SerialName;
        value = "direct"
    .end annotation
.end field

.field public static final enum MULTI:Lcom/kakao/sdk/friend/core/model/PickerChatFilter;
    .annotation runtime Lkotlinx/serialization/SerialName;
        value = "multi"
    .end annotation
.end field

.field public static final enum OPEN:Lcom/kakao/sdk/friend/core/model/PickerChatFilter;
    .annotation runtime Lkotlinx/serialization/SerialName;
        value = "open"
    .end annotation
.end field

.field public static final enum REGULAR:Lcom/kakao/sdk/friend/core/model/PickerChatFilter;
    .annotation runtime Lkotlinx/serialization/SerialName;
        value = "regular"
    .end annotation
.end field


# instance fields
.field private final value:Ljava/lang/String;


# direct methods
.method private static final synthetic $values()[Lcom/kakao/sdk/friend/core/model/PickerChatFilter;
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/kakao/sdk/friend/core/model/PickerChatFilter;

    sget-object v1, Lcom/kakao/sdk/friend/core/model/PickerChatFilter;->DIRECT:Lcom/kakao/sdk/friend/core/model/PickerChatFilter;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/kakao/sdk/friend/core/model/PickerChatFilter;->MULTI:Lcom/kakao/sdk/friend/core/model/PickerChatFilter;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/kakao/sdk/friend/core/model/PickerChatFilter;->REGULAR:Lcom/kakao/sdk/friend/core/model/PickerChatFilter;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/kakao/sdk/friend/core/model/PickerChatFilter;->OPEN:Lcom/kakao/sdk/friend/core/model/PickerChatFilter;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    return-object v0

    .array-data 1
    .end array-data
.end method

.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/kakao/sdk/friend/core/model/PickerChatFilter;

    const/4 v1, 0x0

    const-string v2, "direct"

    const-string v3, "DIRECT"

    invoke-direct {v0, v3, v1, v2}, Lcom/kakao/sdk/friend/core/model/PickerChatFilter;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/kakao/sdk/friend/core/model/PickerChatFilter;->DIRECT:Lcom/kakao/sdk/friend/core/model/PickerChatFilter;

    new-instance v0, Lcom/kakao/sdk/friend/core/model/PickerChatFilter;

    const/4 v1, 0x1

    const-string v2, "multi"

    const-string v3, "MULTI"

    invoke-direct {v0, v3, v1, v2}, Lcom/kakao/sdk/friend/core/model/PickerChatFilter;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/kakao/sdk/friend/core/model/PickerChatFilter;->MULTI:Lcom/kakao/sdk/friend/core/model/PickerChatFilter;

    new-instance v0, Lcom/kakao/sdk/friend/core/model/PickerChatFilter;

    const/4 v1, 0x2

    const-string v2, "regular"

    const-string v3, "REGULAR"

    invoke-direct {v0, v3, v1, v2}, Lcom/kakao/sdk/friend/core/model/PickerChatFilter;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/kakao/sdk/friend/core/model/PickerChatFilter;->REGULAR:Lcom/kakao/sdk/friend/core/model/PickerChatFilter;

    new-instance v0, Lcom/kakao/sdk/friend/core/model/PickerChatFilter;

    const/4 v1, 0x3

    const-string v2, "open"

    const-string v3, "OPEN"

    invoke-direct {v0, v3, v1, v2}, Lcom/kakao/sdk/friend/core/model/PickerChatFilter;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/kakao/sdk/friend/core/model/PickerChatFilter;->OPEN:Lcom/kakao/sdk/friend/core/model/PickerChatFilter;

    invoke-static {}, Lcom/kakao/sdk/friend/core/model/PickerChatFilter;->$values()[Lcom/kakao/sdk/friend/core/model/PickerChatFilter;

    move-result-object v0

    sput-object v0, Lcom/kakao/sdk/friend/core/model/PickerChatFilter;->$VALUES:[Lcom/kakao/sdk/friend/core/model/PickerChatFilter;

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

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/kakao/sdk/friend/core/model/PickerChatFilter;->value:Ljava/lang/String;

    return-void

    .array-data 1
    .end array-data
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/kakao/sdk/friend/core/model/PickerChatFilter;
    .locals 1

    const-class v0, Lcom/kakao/sdk/friend/core/model/PickerChatFilter;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/kakao/sdk/friend/core/model/PickerChatFilter;

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static values()[Lcom/kakao/sdk/friend/core/model/PickerChatFilter;
    .locals 1

    sget-object v0, Lcom/kakao/sdk/friend/core/model/PickerChatFilter;->$VALUES:[Lcom/kakao/sdk/friend/core/model/PickerChatFilter;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/kakao/sdk/friend/core/model/PickerChatFilter;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public final getValue()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/kakao/sdk/friend/core/model/PickerChatFilter;->value:Ljava/lang/String;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method
