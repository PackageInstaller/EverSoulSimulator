.class public final enum Lcom/kakao/sdk/common/KakaoSdk$Type;
.super Ljava/lang/Enum;
.source "KakaoSdk.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kakao/sdk/common/KakaoSdk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/kakao/sdk/common/KakaoSdk$Type;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0006\u0008\u0086\u0001\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u000f\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006j\u0002\u0008\u0007j\u0002\u0008\u0008\u00a8\u0006\t"
    }
    d2 = {
        "Lcom/kakao/sdk/common/KakaoSdk$Type;",
        "",
        "value",
        "",
        "(Ljava/lang/String;ILjava/lang/String;)V",
        "getValue",
        "()Ljava/lang/String;",
        "KOTLIN",
        "RX_KOTLIN",
        "common_release"
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
.field private static final synthetic $VALUES:[Lcom/kakao/sdk/common/KakaoSdk$Type;

.field public static final enum KOTLIN:Lcom/kakao/sdk/common/KakaoSdk$Type;

.field public static final enum RX_KOTLIN:Lcom/kakao/sdk/common/KakaoSdk$Type;


# instance fields
.field private final value:Ljava/lang/String;


# direct methods
.method private static final synthetic $values()[Lcom/kakao/sdk/common/KakaoSdk$Type;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/kakao/sdk/common/KakaoSdk$Type;

    const/4 v1, 0x0

    sget-object v2, Lcom/kakao/sdk/common/KakaoSdk$Type;->KOTLIN:Lcom/kakao/sdk/common/KakaoSdk$Type;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/kakao/sdk/common/KakaoSdk$Type;->RX_KOTLIN:Lcom/kakao/sdk/common/KakaoSdk$Type;

    aput-object v2, v0, v1

    return-object v0

    .array-data 1
    .end array-data
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 1529
    new-instance v0, Lcom/kakao/sdk/common/KakaoSdk$Type;

    const/4 v1, 0x0

    const-string v2, "kotlin"

    const-string v3, "KOTLIN"

    invoke-direct {v0, v3, v1, v2}, Lcom/kakao/sdk/common/KakaoSdk$Type;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/kakao/sdk/common/KakaoSdk$Type;->KOTLIN:Lcom/kakao/sdk/common/KakaoSdk$Type;

    .line 1539
    new-instance v0, Lcom/kakao/sdk/common/KakaoSdk$Type;

    const/4 v1, 0x1

    const-string v2, "rx-kotlin"

    const-string v3, "RX_KOTLIN"

    invoke-direct {v0, v3, v1, v2}, Lcom/kakao/sdk/common/KakaoSdk$Type;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/kakao/sdk/common/KakaoSdk$Type;->RX_KOTLIN:Lcom/kakao/sdk/common/KakaoSdk$Type;

    invoke-static {}, Lcom/kakao/sdk/common/KakaoSdk$Type;->$values()[Lcom/kakao/sdk/common/KakaoSdk$Type;

    move-result-object v0

    sput-object v0, Lcom/kakao/sdk/common/KakaoSdk$Type;->$VALUES:[Lcom/kakao/sdk/common/KakaoSdk$Type;

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

    .line 1519
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/kakao/sdk/common/KakaoSdk$Type;->value:Ljava/lang/String;

    return-void

    .array-data 1
    .end array-data
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/kakao/sdk/common/KakaoSdk$Type;
    .locals 1

    const-class v0, Lcom/kakao/sdk/common/KakaoSdk$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/kakao/sdk/common/KakaoSdk$Type;

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static values()[Lcom/kakao/sdk/common/KakaoSdk$Type;
    .locals 1

    sget-object v0, Lcom/kakao/sdk/common/KakaoSdk$Type;->$VALUES:[Lcom/kakao/sdk/common/KakaoSdk$Type;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/kakao/sdk/common/KakaoSdk$Type;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public final getValue()Ljava/lang/String;
    .locals 1

    .line 1519
    iget-object v0, p0, Lcom/kakao/sdk/common/KakaoSdk$Type;->value:Ljava/lang/String;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method
