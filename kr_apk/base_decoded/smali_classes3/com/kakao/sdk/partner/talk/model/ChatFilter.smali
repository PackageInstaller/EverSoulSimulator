.class public final enum Lcom/kakao/sdk/partner/talk/model/ChatFilter;
.super Ljava/lang/Enum;
.source "Chats.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kakao/sdk/partner/talk/model/ChatFilter$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/kakao/sdk/partner/talk/model/ChatFilter;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\t\u0008\u0087\u0001\u0018\u0000 \u000b2\u0008\u0012\u0004\u0012\u00020\u00000\u0001:\u0001\u000bB\u000f\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006j\u0002\u0008\u0007j\u0002\u0008\u0008j\u0002\u0008\tj\u0002\u0008\n\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcom/kakao/sdk/partner/talk/model/ChatFilter;",
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
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/kakao/sdk/partner/talk/model/ChatFilter;

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

.field public static final Companion:Lcom/kakao/sdk/partner/talk/model/ChatFilter$Companion;

.field public static final enum DIRECT:Lcom/kakao/sdk/partner/talk/model/ChatFilter;
    .annotation runtime Lkotlinx/serialization/SerialName;
        value = "direct"
    .end annotation
.end field

.field public static final enum MULTI:Lcom/kakao/sdk/partner/talk/model/ChatFilter;
    .annotation runtime Lkotlinx/serialization/SerialName;
        value = "multi"
    .end annotation
.end field

.field public static final enum OPEN:Lcom/kakao/sdk/partner/talk/model/ChatFilter;
    .annotation runtime Lkotlinx/serialization/SerialName;
        value = "open"
    .end annotation
.end field

.field public static final enum REGULAR:Lcom/kakao/sdk/partner/talk/model/ChatFilter;
    .annotation runtime Lkotlinx/serialization/SerialName;
        value = "regular"
    .end annotation
.end field


# instance fields
.field private final value:Ljava/lang/String;


# direct methods
.method private static final synthetic $values()[Lcom/kakao/sdk/partner/talk/model/ChatFilter;
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/kakao/sdk/partner/talk/model/ChatFilter;

    const/4 v1, 0x0

    sget-object v2, Lcom/kakao/sdk/partner/talk/model/ChatFilter;->DIRECT:Lcom/kakao/sdk/partner/talk/model/ChatFilter;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/kakao/sdk/partner/talk/model/ChatFilter;->MULTI:Lcom/kakao/sdk/partner/talk/model/ChatFilter;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/kakao/sdk/partner/talk/model/ChatFilter;->REGULAR:Lcom/kakao/sdk/partner/talk/model/ChatFilter;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/kakao/sdk/partner/talk/model/ChatFilter;->OPEN:Lcom/kakao/sdk/partner/talk/model/ChatFilter;

    aput-object v2, v0, v1

    return-object v0

    .array-data 1
    .end array-data
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 1149
    new-instance v0, Lcom/kakao/sdk/partner/talk/model/ChatFilter;

    const/4 v1, 0x0

    const-string v2, "direct"

    const-string v3, "DIRECT"

    invoke-direct {v0, v3, v1, v2}, Lcom/kakao/sdk/partner/talk/model/ChatFilter;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/kakao/sdk/partner/talk/model/ChatFilter;->DIRECT:Lcom/kakao/sdk/partner/talk/model/ChatFilter;

    .line 1209
    new-instance v0, Lcom/kakao/sdk/partner/talk/model/ChatFilter;

    const/4 v1, 0x1

    const-string v2, "multi"

    const-string v3, "MULTI"

    invoke-direct {v0, v3, v1, v2}, Lcom/kakao/sdk/partner/talk/model/ChatFilter;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/kakao/sdk/partner/talk/model/ChatFilter;->MULTI:Lcom/kakao/sdk/partner/talk/model/ChatFilter;

    .line 1269
    new-instance v0, Lcom/kakao/sdk/partner/talk/model/ChatFilter;

    const/4 v1, 0x2

    const-string v2, "regular"

    const-string v3, "REGULAR"

    invoke-direct {v0, v3, v1, v2}, Lcom/kakao/sdk/partner/talk/model/ChatFilter;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/kakao/sdk/partner/talk/model/ChatFilter;->REGULAR:Lcom/kakao/sdk/partner/talk/model/ChatFilter;

    .line 1329
    new-instance v0, Lcom/kakao/sdk/partner/talk/model/ChatFilter;

    const/4 v1, 0x3

    const-string v2, "open"

    const-string v3, "OPEN"

    invoke-direct {v0, v3, v1, v2}, Lcom/kakao/sdk/partner/talk/model/ChatFilter;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/kakao/sdk/partner/talk/model/ChatFilter;->OPEN:Lcom/kakao/sdk/partner/talk/model/ChatFilter;

    invoke-static {}, Lcom/kakao/sdk/partner/talk/model/ChatFilter;->$values()[Lcom/kakao/sdk/partner/talk/model/ChatFilter;

    move-result-object v0

    sput-object v0, Lcom/kakao/sdk/partner/talk/model/ChatFilter;->$VALUES:[Lcom/kakao/sdk/partner/talk/model/ChatFilter;

    new-instance v0, Lcom/kakao/sdk/partner/talk/model/ChatFilter$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/kakao/sdk/partner/talk/model/ChatFilter$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/kakao/sdk/partner/talk/model/ChatFilter;->Companion:Lcom/kakao/sdk/partner/talk/model/ChatFilter$Companion;

    .line 1099
    sget-object v0, Lkotlin/LazyThreadSafetyMode;->PUBLICATION:Lkotlin/LazyThreadSafetyMode;

    sget-object v1, Lcom/kakao/sdk/partner/talk/model/ChatFilter$Companion$$cachedSerializer$delegate$1;->INSTANCE:Lcom/kakao/sdk/partner/talk/model/ChatFilter$Companion$$cachedSerializer$delegate$1;

    check-cast v1, Lkotlin/jvm/functions/Function0;

    invoke-static {v0, v1}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/kakao/sdk/partner/talk/model/ChatFilter;->$cachedSerializer$delegate:Lkotlin/Lazy;

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

    .line 1099
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 1109
    iput-object p3, p0, Lcom/kakao/sdk/partner/talk/model/ChatFilter;->value:Ljava/lang/String;

    return-void

    .array-data 1
    .end array-data
.end method

.method public static final synthetic access$get$cachedSerializer$delegate$cp()Lkotlin/Lazy;
    .locals 1

    .line 1099
    sget-object v0, Lcom/kakao/sdk/partner/talk/model/ChatFilter;->$cachedSerializer$delegate:Lkotlin/Lazy;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/kakao/sdk/partner/talk/model/ChatFilter;
    .locals 1

    const-class v0, Lcom/kakao/sdk/partner/talk/model/ChatFilter;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/kakao/sdk/partner/talk/model/ChatFilter;

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static values()[Lcom/kakao/sdk/partner/talk/model/ChatFilter;
    .locals 1

    sget-object v0, Lcom/kakao/sdk/partner/talk/model/ChatFilter;->$VALUES:[Lcom/kakao/sdk/partner/talk/model/ChatFilter;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/kakao/sdk/partner/talk/model/ChatFilter;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public final getValue()Ljava/lang/String;
    .locals 1

    .line 1109
    iget-object v0, p0, Lcom/kakao/sdk/partner/talk/model/ChatFilter;->value:Ljava/lang/String;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method
