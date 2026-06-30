.class public final enum Lcom/facebook/messenger/MessengerThreadParams$Origin;
.super Ljava/lang/Enum;
.source "MessengerThreadParams.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/messenger/MessengerThreadParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Origin"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/facebook/messenger/MessengerThreadParams$Origin;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0008\u0005\u0008\u0086\u0001\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002j\u0002\u0008\u0003j\u0002\u0008\u0004j\u0002\u0008\u0005\u00a8\u0006\u0006"
    }
    d2 = {
        "Lcom/facebook/messenger/MessengerThreadParams$Origin;",
        "",
        "(Ljava/lang/String;I)V",
        "REPLY_FLOW",
        "COMPOSE_FLOW",
        "UNKNOWN",
        "facebook-messenger_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/facebook/messenger/MessengerThreadParams$Origin;

.field public static final enum COMPOSE_FLOW:Lcom/facebook/messenger/MessengerThreadParams$Origin;

.field public static final enum REPLY_FLOW:Lcom/facebook/messenger/MessengerThreadParams$Origin;

.field public static final enum UNKNOWN:Lcom/facebook/messenger/MessengerThreadParams$Origin;


# direct methods
.method private static final synthetic $values()[Lcom/facebook/messenger/MessengerThreadParams$Origin;
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/facebook/messenger/MessengerThreadParams$Origin;

    const/4 v1, 0x0

    sget-object v2, Lcom/facebook/messenger/MessengerThreadParams$Origin;->REPLY_FLOW:Lcom/facebook/messenger/MessengerThreadParams$Origin;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/facebook/messenger/MessengerThreadParams$Origin;->COMPOSE_FLOW:Lcom/facebook/messenger/MessengerThreadParams$Origin;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/facebook/messenger/MessengerThreadParams$Origin;->UNKNOWN:Lcom/facebook/messenger/MessengerThreadParams$Origin;

    aput-object v2, v0, v1

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 38
    new-instance v0, Lcom/facebook/messenger/MessengerThreadParams$Origin;

    const-string v1, "REPLY_FLOW"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/facebook/messenger/MessengerThreadParams$Origin;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/messenger/MessengerThreadParams$Origin;->REPLY_FLOW:Lcom/facebook/messenger/MessengerThreadParams$Origin;

    .line 41
    new-instance v0, Lcom/facebook/messenger/MessengerThreadParams$Origin;

    const-string v1, "COMPOSE_FLOW"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/facebook/messenger/MessengerThreadParams$Origin;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/messenger/MessengerThreadParams$Origin;->COMPOSE_FLOW:Lcom/facebook/messenger/MessengerThreadParams$Origin;

    .line 44
    new-instance v0, Lcom/facebook/messenger/MessengerThreadParams$Origin;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/facebook/messenger/MessengerThreadParams$Origin;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/messenger/MessengerThreadParams$Origin;->UNKNOWN:Lcom/facebook/messenger/MessengerThreadParams$Origin;

    invoke-static {}, Lcom/facebook/messenger/MessengerThreadParams$Origin;->$values()[Lcom/facebook/messenger/MessengerThreadParams$Origin;

    move-result-object v0

    sput-object v0, Lcom/facebook/messenger/MessengerThreadParams$Origin;->$VALUES:[Lcom/facebook/messenger/MessengerThreadParams$Origin;

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

    .line 36
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void

    .array-data 1
    .end array-data
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/messenger/MessengerThreadParams$Origin;
    .locals 1

    const-string v0, "value"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-class v0, Lcom/facebook/messenger/MessengerThreadParams$Origin;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    .line 45
    check-cast p0, Lcom/facebook/messenger/MessengerThreadParams$Origin;

    return-object p0

    .array-data 1
    .end array-data
.end method

.method public static values()[Lcom/facebook/messenger/MessengerThreadParams$Origin;
    .locals 2

    sget-object v0, Lcom/facebook/messenger/MessengerThreadParams$Origin;->$VALUES:[Lcom/facebook/messenger/MessengerThreadParams$Origin;

    array-length v1, v0

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    .line 45
    check-cast v0, [Lcom/facebook/messenger/MessengerThreadParams$Origin;

    return-object v0

    .array-data 1
    .end array-data
.end method
