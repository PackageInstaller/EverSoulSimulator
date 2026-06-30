.class public final enum Lcom/kakao/sdk/friend/core/internal/PickerViewType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/kakao/sdk/friend/core/internal/PickerViewType;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0008\u0005\u0008\u0086\u0001\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002j\u0002\u0008\u0003j\u0002\u0008\u0004j\u0002\u0008\u0005\u00a8\u0006\u0006"
    }
    d2 = {
        "Lcom/kakao/sdk/friend/core/internal/PickerViewType;",
        "",
        "(Ljava/lang/String;I)V",
        "FULL",
        "POPUP",
        "EMBED",
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
.field private static final synthetic $VALUES:[Lcom/kakao/sdk/friend/core/internal/PickerViewType;

.field public static final enum EMBED:Lcom/kakao/sdk/friend/core/internal/PickerViewType;

.field public static final enum FULL:Lcom/kakao/sdk/friend/core/internal/PickerViewType;

.field public static final enum POPUP:Lcom/kakao/sdk/friend/core/internal/PickerViewType;


# direct methods
.method private static final synthetic $values()[Lcom/kakao/sdk/friend/core/internal/PickerViewType;
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/kakao/sdk/friend/core/internal/PickerViewType;

    sget-object v1, Lcom/kakao/sdk/friend/core/internal/PickerViewType;->FULL:Lcom/kakao/sdk/friend/core/internal/PickerViewType;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/kakao/sdk/friend/core/internal/PickerViewType;->POPUP:Lcom/kakao/sdk/friend/core/internal/PickerViewType;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/kakao/sdk/friend/core/internal/PickerViewType;->EMBED:Lcom/kakao/sdk/friend/core/internal/PickerViewType;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/kakao/sdk/friend/core/internal/PickerViewType;

    const-string v1, "FULL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/kakao/sdk/friend/core/internal/PickerViewType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kakao/sdk/friend/core/internal/PickerViewType;->FULL:Lcom/kakao/sdk/friend/core/internal/PickerViewType;

    new-instance v0, Lcom/kakao/sdk/friend/core/internal/PickerViewType;

    const-string v1, "POPUP"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/kakao/sdk/friend/core/internal/PickerViewType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kakao/sdk/friend/core/internal/PickerViewType;->POPUP:Lcom/kakao/sdk/friend/core/internal/PickerViewType;

    new-instance v0, Lcom/kakao/sdk/friend/core/internal/PickerViewType;

    const-string v1, "EMBED"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/kakao/sdk/friend/core/internal/PickerViewType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kakao/sdk/friend/core/internal/PickerViewType;->EMBED:Lcom/kakao/sdk/friend/core/internal/PickerViewType;

    invoke-static {}, Lcom/kakao/sdk/friend/core/internal/PickerViewType;->$values()[Lcom/kakao/sdk/friend/core/internal/PickerViewType;

    move-result-object v0

    sput-object v0, Lcom/kakao/sdk/friend/core/internal/PickerViewType;->$VALUES:[Lcom/kakao/sdk/friend/core/internal/PickerViewType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/kakao/sdk/friend/core/internal/PickerViewType;
    .locals 1

    const-class v0, Lcom/kakao/sdk/friend/core/internal/PickerViewType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/kakao/sdk/friend/core/internal/PickerViewType;

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static values()[Lcom/kakao/sdk/friend/core/internal/PickerViewType;
    .locals 1

    sget-object v0, Lcom/kakao/sdk/friend/core/internal/PickerViewType;->$VALUES:[Lcom/kakao/sdk/friend/core/internal/PickerViewType;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/kakao/sdk/friend/core/internal/PickerViewType;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method
