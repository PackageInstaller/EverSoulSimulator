.class public final enum Lcom/kakao/sdk/common/util/SdkLogLevel;
.super Ljava/lang/Enum;
.source "SdkLog.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/kakao/sdk/common/util/SdkLogLevel;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u000b\u0008\u0086\u0001\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u0017\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008R\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\nj\u0002\u0008\u000bj\u0002\u0008\u000cj\u0002\u0008\rj\u0002\u0008\u000ej\u0002\u0008\u000f\u00a8\u0006\u0010"
    }
    d2 = {
        "Lcom/kakao/sdk/common/util/SdkLogLevel;",
        "",
        "level",
        "",
        "symbol",
        "",
        "(Ljava/lang/String;IILjava/lang/String;)V",
        "getLevel",
        "()I",
        "getSymbol",
        "()Ljava/lang/String;",
        "V",
        "D",
        "I",
        "W",
        "E",
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
.field private static final synthetic $VALUES:[Lcom/kakao/sdk/common/util/SdkLogLevel;

.field public static final enum D:Lcom/kakao/sdk/common/util/SdkLogLevel;

.field public static final enum E:Lcom/kakao/sdk/common/util/SdkLogLevel;

.field public static final enum I:Lcom/kakao/sdk/common/util/SdkLogLevel;

.field public static final enum V:Lcom/kakao/sdk/common/util/SdkLogLevel;

.field public static final enum W:Lcom/kakao/sdk/common/util/SdkLogLevel;


# instance fields
.field private final level:I

.field private final symbol:Ljava/lang/String;


# direct methods
.method private static final synthetic $values()[Lcom/kakao/sdk/common/util/SdkLogLevel;
    .locals 3

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/kakao/sdk/common/util/SdkLogLevel;

    const/4 v1, 0x0

    sget-object v2, Lcom/kakao/sdk/common/util/SdkLogLevel;->V:Lcom/kakao/sdk/common/util/SdkLogLevel;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/kakao/sdk/common/util/SdkLogLevel;->D:Lcom/kakao/sdk/common/util/SdkLogLevel;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/kakao/sdk/common/util/SdkLogLevel;->I:Lcom/kakao/sdk/common/util/SdkLogLevel;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/kakao/sdk/common/util/SdkLogLevel;->W:Lcom/kakao/sdk/common/util/SdkLogLevel;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lcom/kakao/sdk/common/util/SdkLogLevel;->E:Lcom/kakao/sdk/common/util/SdkLogLevel;

    aput-object v2, v0, v1

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 299
    new-instance v0, Lcom/kakao/sdk/common/util/SdkLogLevel;

    const/4 v1, 0x0

    const-string v2, "[\ud83d\udcac]"

    const-string v3, "V"

    invoke-direct {v0, v3, v1, v1, v2}, Lcom/kakao/sdk/common/util/SdkLogLevel;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/kakao/sdk/common/util/SdkLogLevel;->V:Lcom/kakao/sdk/common/util/SdkLogLevel;

    .line 309
    new-instance v0, Lcom/kakao/sdk/common/util/SdkLogLevel;

    const/4 v1, 0x1

    const-string v2, "[\u2139\ufe0f]"

    const-string v3, "D"

    invoke-direct {v0, v3, v1, v1, v2}, Lcom/kakao/sdk/common/util/SdkLogLevel;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/kakao/sdk/common/util/SdkLogLevel;->D:Lcom/kakao/sdk/common/util/SdkLogLevel;

    .line 319
    new-instance v0, Lcom/kakao/sdk/common/util/SdkLogLevel;

    const/4 v1, 0x2

    const-string v2, "[\ud83d\udd2c]"

    const-string v3, "I"

    invoke-direct {v0, v3, v1, v1, v2}, Lcom/kakao/sdk/common/util/SdkLogLevel;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/kakao/sdk/common/util/SdkLogLevel;->I:Lcom/kakao/sdk/common/util/SdkLogLevel;

    .line 329
    new-instance v0, Lcom/kakao/sdk/common/util/SdkLogLevel;

    const/4 v1, 0x3

    const-string v2, "[\u26a0\ufe0f]"

    const-string v3, "W"

    invoke-direct {v0, v3, v1, v1, v2}, Lcom/kakao/sdk/common/util/SdkLogLevel;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/kakao/sdk/common/util/SdkLogLevel;->W:Lcom/kakao/sdk/common/util/SdkLogLevel;

    .line 339
    new-instance v0, Lcom/kakao/sdk/common/util/SdkLogLevel;

    const/4 v1, 0x4

    const-string v2, "[\u203c\ufe0f]"

    const-string v3, "E"

    invoke-direct {v0, v3, v1, v1, v2}, Lcom/kakao/sdk/common/util/SdkLogLevel;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/kakao/sdk/common/util/SdkLogLevel;->E:Lcom/kakao/sdk/common/util/SdkLogLevel;

    invoke-static {}, Lcom/kakao/sdk/common/util/SdkLogLevel;->$values()[Lcom/kakao/sdk/common/util/SdkLogLevel;

    move-result-object v0

    sput-object v0, Lcom/kakao/sdk/common/util/SdkLogLevel;->$VALUES:[Lcom/kakao/sdk/common/util/SdkLogLevel;

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 289
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/kakao/sdk/common/util/SdkLogLevel;->level:I

    iput-object p4, p0, Lcom/kakao/sdk/common/util/SdkLogLevel;->symbol:Ljava/lang/String;

    return-void

    .array-data 1
    .end array-data
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/kakao/sdk/common/util/SdkLogLevel;
    .locals 1

    const-class v0, Lcom/kakao/sdk/common/util/SdkLogLevel;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/kakao/sdk/common/util/SdkLogLevel;

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static values()[Lcom/kakao/sdk/common/util/SdkLogLevel;
    .locals 1

    sget-object v0, Lcom/kakao/sdk/common/util/SdkLogLevel;->$VALUES:[Lcom/kakao/sdk/common/util/SdkLogLevel;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/kakao/sdk/common/util/SdkLogLevel;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public final getLevel()I
    .locals 1

    .line 289
    iget v0, p0, Lcom/kakao/sdk/common/util/SdkLogLevel;->level:I

    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final getSymbol()Ljava/lang/String;
    .locals 1

    .line 289
    iget-object v0, p0, Lcom/kakao/sdk/common/util/SdkLogLevel;->symbol:Ljava/lang/String;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method
