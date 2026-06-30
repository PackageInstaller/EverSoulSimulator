.class public final enum Lcom/kakao/sdk/partner/talk/model/Relation;
.super Ljava/lang/Enum;
.source "Friend.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kakao/sdk/partner/talk/model/Relation$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/kakao/sdk/partner/talk/model/Relation;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0008\u0007\u0008\u0087\u0001\u0018\u0000 \u00072\u0008\u0012\u0004\u0012\u00020\u00000\u0001:\u0001\u0007B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002j\u0002\u0008\u0003j\u0002\u0008\u0004j\u0002\u0008\u0005j\u0002\u0008\u0006\u00a8\u0006\u0008"
    }
    d2 = {
        "Lcom/kakao/sdk/partner/talk/model/Relation;",
        "",
        "(Ljava/lang/String;I)V",
        "NONE",
        "FRIEND",
        "NOT_FRIEND",
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
    with = Lcom/kakao/sdk/partner/talk/model/RelationSerializer;
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/kakao/sdk/partner/talk/model/Relation;

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

.field public static final Companion:Lcom/kakao/sdk/partner/talk/model/Relation$Companion;

.field public static final enum FRIEND:Lcom/kakao/sdk/partner/talk/model/Relation;
    .annotation runtime Lkotlinx/serialization/SerialName;
        value = "friend"
    .end annotation
.end field

.field public static final enum NONE:Lcom/kakao/sdk/partner/talk/model/Relation;
    .annotation runtime Lkotlinx/serialization/SerialName;
        value = "N/A"
    .end annotation
.end field

.field public static final enum NOT_FRIEND:Lcom/kakao/sdk/partner/talk/model/Relation;
    .annotation runtime Lkotlinx/serialization/SerialName;
        value = "no_friend"
    .end annotation
.end field

.field public static final enum UNKNOWN:Lcom/kakao/sdk/partner/talk/model/Relation;
    .annotation runtime Lcom/kakao/sdk/common/json/UnknownValue;
    .end annotation
.end field


# direct methods
.method private static final synthetic $values()[Lcom/kakao/sdk/partner/talk/model/Relation;
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/kakao/sdk/partner/talk/model/Relation;

    const/4 v1, 0x0

    sget-object v2, Lcom/kakao/sdk/partner/talk/model/Relation;->NONE:Lcom/kakao/sdk/partner/talk/model/Relation;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/kakao/sdk/partner/talk/model/Relation;->FRIEND:Lcom/kakao/sdk/partner/talk/model/Relation;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/kakao/sdk/partner/talk/model/Relation;->NOT_FRIEND:Lcom/kakao/sdk/partner/talk/model/Relation;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/kakao/sdk/partner/talk/model/Relation;->UNKNOWN:Lcom/kakao/sdk/partner/talk/model/Relation;

    aput-object v2, v0, v1

    return-object v0

    .array-data 1
    .end array-data
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 1689
    new-instance v0, Lcom/kakao/sdk/partner/talk/model/Relation;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/kakao/sdk/partner/talk/model/Relation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kakao/sdk/partner/talk/model/Relation;->NONE:Lcom/kakao/sdk/partner/talk/model/Relation;

    .line 1749
    new-instance v0, Lcom/kakao/sdk/partner/talk/model/Relation;

    const-string v1, "FRIEND"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/kakao/sdk/partner/talk/model/Relation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kakao/sdk/partner/talk/model/Relation;->FRIEND:Lcom/kakao/sdk/partner/talk/model/Relation;

    .line 1809
    new-instance v0, Lcom/kakao/sdk/partner/talk/model/Relation;

    const-string v1, "NOT_FRIEND"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/kakao/sdk/partner/talk/model/Relation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kakao/sdk/partner/talk/model/Relation;->NOT_FRIEND:Lcom/kakao/sdk/partner/talk/model/Relation;

    .line 1839
    new-instance v0, Lcom/kakao/sdk/partner/talk/model/Relation;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/kakao/sdk/partner/talk/model/Relation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kakao/sdk/partner/talk/model/Relation;->UNKNOWN:Lcom/kakao/sdk/partner/talk/model/Relation;

    invoke-static {}, Lcom/kakao/sdk/partner/talk/model/Relation;->$values()[Lcom/kakao/sdk/partner/talk/model/Relation;

    move-result-object v0

    sput-object v0, Lcom/kakao/sdk/partner/talk/model/Relation;->$VALUES:[Lcom/kakao/sdk/partner/talk/model/Relation;

    new-instance v0, Lcom/kakao/sdk/partner/talk/model/Relation$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/kakao/sdk/partner/talk/model/Relation$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/kakao/sdk/partner/talk/model/Relation;->Companion:Lcom/kakao/sdk/partner/talk/model/Relation$Companion;

    .line 1629
    sget-object v0, Lkotlin/LazyThreadSafetyMode;->PUBLICATION:Lkotlin/LazyThreadSafetyMode;

    sget-object v1, Lcom/kakao/sdk/partner/talk/model/Relation$Companion$$cachedSerializer$delegate$1;->INSTANCE:Lcom/kakao/sdk/partner/talk/model/Relation$Companion$$cachedSerializer$delegate$1;

    check-cast v1, Lkotlin/jvm/functions/Function0;

    invoke-static {v0, v1}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/kakao/sdk/partner/talk/model/Relation;->$cachedSerializer$delegate:Lkotlin/Lazy;

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

    .line 1629
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void

    .array-data 1
    .end array-data
.end method

.method public static final synthetic access$get$cachedSerializer$delegate$cp()Lkotlin/Lazy;
    .locals 1

    .line 1629
    sget-object v0, Lcom/kakao/sdk/partner/talk/model/Relation;->$cachedSerializer$delegate:Lkotlin/Lazy;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/kakao/sdk/partner/talk/model/Relation;
    .locals 1

    const-class v0, Lcom/kakao/sdk/partner/talk/model/Relation;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/kakao/sdk/partner/talk/model/Relation;

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static values()[Lcom/kakao/sdk/partner/talk/model/Relation;
    .locals 1

    sget-object v0, Lcom/kakao/sdk/partner/talk/model/Relation;->$VALUES:[Lcom/kakao/sdk/partner/talk/model/Relation;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/kakao/sdk/partner/talk/model/Relation;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method
