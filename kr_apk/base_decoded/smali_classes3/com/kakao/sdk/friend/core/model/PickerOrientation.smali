.class public final enum Lcom/kakao/sdk/friend/core/model/PickerOrientation;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/kakao/sdk/friend/core/model/PickerOrientation;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0008\u0005\u0008\u0086\u0001\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002j\u0002\u0008\u0003j\u0002\u0008\u0004j\u0002\u0008\u0005\u00a8\u0006\u0006"
    }
    d2 = {
        "Lcom/kakao/sdk/friend/core/model/PickerOrientation;",
        "",
        "(Ljava/lang/String;I)V",
        "PORTRAIT",
        "LANDSCAPE",
        "AUTO",
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
.field private static final synthetic $VALUES:[Lcom/kakao/sdk/friend/core/model/PickerOrientation;

.field public static final enum AUTO:Lcom/kakao/sdk/friend/core/model/PickerOrientation;

.field public static final enum LANDSCAPE:Lcom/kakao/sdk/friend/core/model/PickerOrientation;

.field public static final enum PORTRAIT:Lcom/kakao/sdk/friend/core/model/PickerOrientation;


# direct methods
.method private static final synthetic $values()[Lcom/kakao/sdk/friend/core/model/PickerOrientation;
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/kakao/sdk/friend/core/model/PickerOrientation;

    sget-object v1, Lcom/kakao/sdk/friend/core/model/PickerOrientation;->PORTRAIT:Lcom/kakao/sdk/friend/core/model/PickerOrientation;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/kakao/sdk/friend/core/model/PickerOrientation;->LANDSCAPE:Lcom/kakao/sdk/friend/core/model/PickerOrientation;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/kakao/sdk/friend/core/model/PickerOrientation;->AUTO:Lcom/kakao/sdk/friend/core/model/PickerOrientation;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/kakao/sdk/friend/core/model/PickerOrientation;

    const-string v1, "PORTRAIT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/kakao/sdk/friend/core/model/PickerOrientation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kakao/sdk/friend/core/model/PickerOrientation;->PORTRAIT:Lcom/kakao/sdk/friend/core/model/PickerOrientation;

    new-instance v0, Lcom/kakao/sdk/friend/core/model/PickerOrientation;

    const-string v1, "LANDSCAPE"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/kakao/sdk/friend/core/model/PickerOrientation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kakao/sdk/friend/core/model/PickerOrientation;->LANDSCAPE:Lcom/kakao/sdk/friend/core/model/PickerOrientation;

    new-instance v0, Lcom/kakao/sdk/friend/core/model/PickerOrientation;

    const-string v1, "AUTO"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/kakao/sdk/friend/core/model/PickerOrientation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kakao/sdk/friend/core/model/PickerOrientation;->AUTO:Lcom/kakao/sdk/friend/core/model/PickerOrientation;

    invoke-static {}, Lcom/kakao/sdk/friend/core/model/PickerOrientation;->$values()[Lcom/kakao/sdk/friend/core/model/PickerOrientation;

    move-result-object v0

    sput-object v0, Lcom/kakao/sdk/friend/core/model/PickerOrientation;->$VALUES:[Lcom/kakao/sdk/friend/core/model/PickerOrientation;

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

.method public static valueOf(Ljava/lang/String;)Lcom/kakao/sdk/friend/core/model/PickerOrientation;
    .locals 1

    const-class v0, Lcom/kakao/sdk/friend/core/model/PickerOrientation;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/kakao/sdk/friend/core/model/PickerOrientation;

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static values()[Lcom/kakao/sdk/friend/core/model/PickerOrientation;
    .locals 1

    sget-object v0, Lcom/kakao/sdk/friend/core/model/PickerOrientation;->$VALUES:[Lcom/kakao/sdk/friend/core/model/PickerOrientation;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/kakao/sdk/friend/core/model/PickerOrientation;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method
