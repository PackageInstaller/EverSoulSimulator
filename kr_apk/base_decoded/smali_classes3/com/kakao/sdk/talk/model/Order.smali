.class public final enum Lcom/kakao/sdk/talk/model/Order;
.super Ljava/lang/Enum;
.source "Friends.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kakao/sdk/talk/model/Order$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/kakao/sdk/talk/model/Order;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0008\u0005\u0008\u0087\u0001\u0018\u0000 \u00052\u0008\u0012\u0004\u0012\u00020\u00000\u0001:\u0001\u0005B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002j\u0002\u0008\u0003j\u0002\u0008\u0004\u00a8\u0006\u0006"
    }
    d2 = {
        "Lcom/kakao/sdk/talk/model/Order;",
        "",
        "(Ljava/lang/String;I)V",
        "ASC",
        "DESC",
        "Companion",
        "talk_release"
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
.field private static final synthetic $VALUES:[Lcom/kakao/sdk/talk/model/Order;

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

.field public static final enum ASC:Lcom/kakao/sdk/talk/model/Order;
    .annotation runtime Lkotlinx/serialization/SerialName;
        value = "asc"
    .end annotation
.end field

.field public static final Companion:Lcom/kakao/sdk/talk/model/Order$Companion;

.field public static final enum DESC:Lcom/kakao/sdk/talk/model/Order;
    .annotation runtime Lkotlinx/serialization/SerialName;
        value = "desc"
    .end annotation
.end field


# direct methods
.method private static final synthetic $values()[Lcom/kakao/sdk/talk/model/Order;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/kakao/sdk/talk/model/Order;

    const/4 v1, 0x0

    sget-object v2, Lcom/kakao/sdk/talk/model/Order;->ASC:Lcom/kakao/sdk/talk/model/Order;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/kakao/sdk/talk/model/Order;->DESC:Lcom/kakao/sdk/talk/model/Order;

    aput-object v2, v0, v1

    return-object v0

    .array-data 1
    .end array-data
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 1239
    new-instance v0, Lcom/kakao/sdk/talk/model/Order;

    const-string v1, "ASC"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/kakao/sdk/talk/model/Order;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kakao/sdk/talk/model/Order;->ASC:Lcom/kakao/sdk/talk/model/Order;

    .line 1299
    new-instance v0, Lcom/kakao/sdk/talk/model/Order;

    const-string v1, "DESC"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/kakao/sdk/talk/model/Order;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kakao/sdk/talk/model/Order;->DESC:Lcom/kakao/sdk/talk/model/Order;

    invoke-static {}, Lcom/kakao/sdk/talk/model/Order;->$values()[Lcom/kakao/sdk/talk/model/Order;

    move-result-object v0

    sput-object v0, Lcom/kakao/sdk/talk/model/Order;->$VALUES:[Lcom/kakao/sdk/talk/model/Order;

    new-instance v0, Lcom/kakao/sdk/talk/model/Order$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/kakao/sdk/talk/model/Order$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/kakao/sdk/talk/model/Order;->Companion:Lcom/kakao/sdk/talk/model/Order$Companion;

    .line 1189
    sget-object v0, Lkotlin/LazyThreadSafetyMode;->PUBLICATION:Lkotlin/LazyThreadSafetyMode;

    sget-object v1, Lcom/kakao/sdk/talk/model/Order$Companion$$cachedSerializer$delegate$1;->INSTANCE:Lcom/kakao/sdk/talk/model/Order$Companion$$cachedSerializer$delegate$1;

    check-cast v1, Lkotlin/jvm/functions/Function0;

    invoke-static {v0, v1}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/kakao/sdk/talk/model/Order;->$cachedSerializer$delegate:Lkotlin/Lazy;

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

    .line 1189
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void

    .array-data 1
    .end array-data
.end method

.method public static final synthetic access$get$cachedSerializer$delegate$cp()Lkotlin/Lazy;
    .locals 1

    .line 1189
    sget-object v0, Lcom/kakao/sdk/talk/model/Order;->$cachedSerializer$delegate:Lkotlin/Lazy;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/kakao/sdk/talk/model/Order;
    .locals 1

    const-class v0, Lcom/kakao/sdk/talk/model/Order;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/kakao/sdk/talk/model/Order;

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static values()[Lcom/kakao/sdk/talk/model/Order;
    .locals 1

    sget-object v0, Lcom/kakao/sdk/talk/model/Order;->$VALUES:[Lcom/kakao/sdk/talk/model/Order;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/kakao/sdk/talk/model/Order;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method
