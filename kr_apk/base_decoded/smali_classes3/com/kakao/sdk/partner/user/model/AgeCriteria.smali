.class public final enum Lcom/kakao/sdk/partner/user/model/AgeCriteria;
.super Ljava/lang/Enum;
.source "AgeCriteria.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/kakao/sdk/partner/user/model/AgeCriteria;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0008\u0004\u0008\u0086\u0001\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002j\u0002\u0008\u0003j\u0002\u0008\u0004\u00a8\u0006\u0005"
    }
    d2 = {
        "Lcom/kakao/sdk/partner/user/model/AgeCriteria;",
        "",
        "(Ljava/lang/String;I)V",
        "INTERNATIONAL",
        "YEAR",
        "partner-user_release"
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
.field private static final synthetic $VALUES:[Lcom/kakao/sdk/partner/user/model/AgeCriteria;

.field public static final enum INTERNATIONAL:Lcom/kakao/sdk/partner/user/model/AgeCriteria;

.field public static final enum YEAR:Lcom/kakao/sdk/partner/user/model/AgeCriteria;


# direct methods
.method private static final synthetic $values()[Lcom/kakao/sdk/partner/user/model/AgeCriteria;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/kakao/sdk/partner/user/model/AgeCriteria;

    const/4 v1, 0x0

    sget-object v2, Lcom/kakao/sdk/partner/user/model/AgeCriteria;->INTERNATIONAL:Lcom/kakao/sdk/partner/user/model/AgeCriteria;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/kakao/sdk/partner/user/model/AgeCriteria;->YEAR:Lcom/kakao/sdk/partner/user/model/AgeCriteria;

    aput-object v2, v0, v1

    return-object v0

    .array-data 1
    .end array-data
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 259
    new-instance v0, Lcom/kakao/sdk/partner/user/model/AgeCriteria;

    const-string v1, "INTERNATIONAL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/kakao/sdk/partner/user/model/AgeCriteria;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kakao/sdk/partner/user/model/AgeCriteria;->INTERNATIONAL:Lcom/kakao/sdk/partner/user/model/AgeCriteria;

    .line 309
    new-instance v0, Lcom/kakao/sdk/partner/user/model/AgeCriteria;

    const-string v1, "YEAR"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/kakao/sdk/partner/user/model/AgeCriteria;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kakao/sdk/partner/user/model/AgeCriteria;->YEAR:Lcom/kakao/sdk/partner/user/model/AgeCriteria;

    invoke-static {}, Lcom/kakao/sdk/partner/user/model/AgeCriteria;->$values()[Lcom/kakao/sdk/partner/user/model/AgeCriteria;

    move-result-object v0

    sput-object v0, Lcom/kakao/sdk/partner/user/model/AgeCriteria;->$VALUES:[Lcom/kakao/sdk/partner/user/model/AgeCriteria;

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

    .line 219
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void

    .array-data 1
    .end array-data
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/kakao/sdk/partner/user/model/AgeCriteria;
    .locals 1

    const-class v0, Lcom/kakao/sdk/partner/user/model/AgeCriteria;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/kakao/sdk/partner/user/model/AgeCriteria;

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static values()[Lcom/kakao/sdk/partner/user/model/AgeCriteria;
    .locals 1

    sget-object v0, Lcom/kakao/sdk/partner/user/model/AgeCriteria;->$VALUES:[Lcom/kakao/sdk/partner/user/model/AgeCriteria;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/kakao/sdk/partner/user/model/AgeCriteria;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method
