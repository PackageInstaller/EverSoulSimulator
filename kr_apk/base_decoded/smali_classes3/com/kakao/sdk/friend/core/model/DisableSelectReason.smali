.class public final enum Lcom/kakao/sdk/friend/core/model/DisableSelectReason;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/kakao/sdk/friend/core/model/DisableSelectReason;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\t\u0008\u0086\u0001\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u000f\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006j\u0002\u0008\u0007j\u0002\u0008\u0008j\u0002\u0008\tj\u0002\u0008\nj\u0002\u0008\u000b\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcom/kakao/sdk/friend/core/model/DisableSelectReason;",
        "",
        "resId",
        "",
        "(Ljava/lang/String;II)V",
        "getResId",
        "()I",
        "MSG_BLOCKED",
        "REGISTERED",
        "UNREGISTERED",
        "NOT_FRIEND",
        "CUSTOM",
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
.field private static final synthetic $VALUES:[Lcom/kakao/sdk/friend/core/model/DisableSelectReason;

.field public static final enum CUSTOM:Lcom/kakao/sdk/friend/core/model/DisableSelectReason;

.field public static final enum MSG_BLOCKED:Lcom/kakao/sdk/friend/core/model/DisableSelectReason;

.field public static final enum NOT_FRIEND:Lcom/kakao/sdk/friend/core/model/DisableSelectReason;

.field public static final enum REGISTERED:Lcom/kakao/sdk/friend/core/model/DisableSelectReason;

.field public static final enum UNREGISTERED:Lcom/kakao/sdk/friend/core/model/DisableSelectReason;


# instance fields
.field private final resId:I


# direct methods
.method private static final synthetic $values()[Lcom/kakao/sdk/friend/core/model/DisableSelectReason;
    .locals 3

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/kakao/sdk/friend/core/model/DisableSelectReason;

    sget-object v1, Lcom/kakao/sdk/friend/core/model/DisableSelectReason;->MSG_BLOCKED:Lcom/kakao/sdk/friend/core/model/DisableSelectReason;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/kakao/sdk/friend/core/model/DisableSelectReason;->REGISTERED:Lcom/kakao/sdk/friend/core/model/DisableSelectReason;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/kakao/sdk/friend/core/model/DisableSelectReason;->UNREGISTERED:Lcom/kakao/sdk/friend/core/model/DisableSelectReason;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/kakao/sdk/friend/core/model/DisableSelectReason;->NOT_FRIEND:Lcom/kakao/sdk/friend/core/model/DisableSelectReason;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcom/kakao/sdk/friend/core/model/DisableSelectReason;->CUSTOM:Lcom/kakao/sdk/friend/core/model/DisableSelectReason;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/kakao/sdk/friend/core/model/DisableSelectReason;

    sget v1, Lcom/kakao/sdk/friend/core/R$string;->reject_message:I

    const-string v2, "MSG_BLOCKED"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Lcom/kakao/sdk/friend/core/model/DisableSelectReason;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/kakao/sdk/friend/core/model/DisableSelectReason;->MSG_BLOCKED:Lcom/kakao/sdk/friend/core/model/DisableSelectReason;

    new-instance v0, Lcom/kakao/sdk/friend/core/model/DisableSelectReason;

    sget v1, Lcom/kakao/sdk/friend/core/R$string;->registered:I

    const-string v2, "REGISTERED"

    const/4 v3, 0x1

    invoke-direct {v0, v2, v3, v1}, Lcom/kakao/sdk/friend/core/model/DisableSelectReason;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/kakao/sdk/friend/core/model/DisableSelectReason;->REGISTERED:Lcom/kakao/sdk/friend/core/model/DisableSelectReason;

    new-instance v0, Lcom/kakao/sdk/friend/core/model/DisableSelectReason;

    sget v1, Lcom/kakao/sdk/friend/core/R$string;->unregistered:I

    const-string v2, "UNREGISTERED"

    const/4 v3, 0x2

    invoke-direct {v0, v2, v3, v1}, Lcom/kakao/sdk/friend/core/model/DisableSelectReason;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/kakao/sdk/friend/core/model/DisableSelectReason;->UNREGISTERED:Lcom/kakao/sdk/friend/core/model/DisableSelectReason;

    new-instance v0, Lcom/kakao/sdk/friend/core/model/DisableSelectReason;

    sget v1, Lcom/kakao/sdk/friend/core/R$string;->not_talk_friend:I

    const-string v2, "NOT_FRIEND"

    const/4 v3, 0x3

    invoke-direct {v0, v2, v3, v1}, Lcom/kakao/sdk/friend/core/model/DisableSelectReason;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/kakao/sdk/friend/core/model/DisableSelectReason;->NOT_FRIEND:Lcom/kakao/sdk/friend/core/model/DisableSelectReason;

    new-instance v0, Lcom/kakao/sdk/friend/core/model/DisableSelectReason;

    const/4 v1, 0x4

    const/4 v2, -0x1

    const-string v3, "CUSTOM"

    invoke-direct {v0, v3, v1, v2}, Lcom/kakao/sdk/friend/core/model/DisableSelectReason;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/kakao/sdk/friend/core/model/DisableSelectReason;->CUSTOM:Lcom/kakao/sdk/friend/core/model/DisableSelectReason;

    invoke-static {}, Lcom/kakao/sdk/friend/core/model/DisableSelectReason;->$values()[Lcom/kakao/sdk/friend/core/model/DisableSelectReason;

    move-result-object v0

    sput-object v0, Lcom/kakao/sdk/friend/core/model/DisableSelectReason;->$VALUES:[Lcom/kakao/sdk/friend/core/model/DisableSelectReason;

    return-void

    .array-data 1
    .end array-data
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/kakao/sdk/friend/core/model/DisableSelectReason;->resId:I

    return-void

    .array-data 1
    .end array-data
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/kakao/sdk/friend/core/model/DisableSelectReason;
    .locals 1

    const-class v0, Lcom/kakao/sdk/friend/core/model/DisableSelectReason;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/kakao/sdk/friend/core/model/DisableSelectReason;

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static values()[Lcom/kakao/sdk/friend/core/model/DisableSelectReason;
    .locals 1

    sget-object v0, Lcom/kakao/sdk/friend/core/model/DisableSelectReason;->$VALUES:[Lcom/kakao/sdk/friend/core/model/DisableSelectReason;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/kakao/sdk/friend/core/model/DisableSelectReason;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public final getResId()I
    .locals 1

    iget v0, p0, Lcom/kakao/sdk/friend/core/model/DisableSelectReason;->resId:I

    return v0

    nop

    .array-data 1
    .end array-data
.end method
