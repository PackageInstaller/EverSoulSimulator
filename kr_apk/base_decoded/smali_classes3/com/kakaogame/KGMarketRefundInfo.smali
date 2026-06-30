.class public final Lcom/kakaogame/KGMarketRefundInfo;
.super Lcom/kakaogame/KGObject;
.source "KGMarketRefundInfo.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kakaogame/KGMarketRefundInfo$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010%\n\u0002\u0010\u000e\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\t\n\u0002\u0008\u000c\n\u0002\u0010\u0008\n\u0002\u0008\u000c\u0018\u0000 !2\u00020\u0001:\u0001!B\u001f\u0012\u0016\u0010\u0002\u001a\u0012\u0012\u0004\u0012\u00020\u0004\u0012\u0006\u0012\u0004\u0018\u00010\u0005\u0018\u00010\u0003\u00a2\u0006\u0004\u0008\u0006\u0010\u0007R\u0011\u0010\u0008\u001a\u00020\t8F\u00a2\u0006\u0006\u001a\u0004\u0008\n\u0010\u000bR\u0013\u0010\u000c\u001a\u0004\u0018\u00010\u00048F\u00a2\u0006\u0006\u001a\u0004\u0008\r\u0010\u000eR\u0013\u0010\u000f\u001a\u0004\u0018\u00010\u00048F\u00a2\u0006\u0006\u001a\u0004\u0008\u0010\u0010\u000eR\u0013\u0010\u0011\u001a\u0004\u0018\u00010\u00048F\u00a2\u0006\u0006\u001a\u0004\u0008\u0012\u0010\u000eR\u0013\u0010\u0013\u001a\u0004\u0018\u00010\u00048F\u00a2\u0006\u0006\u001a\u0004\u0008\u0014\u0010\u000eR\u0011\u0010\u0015\u001a\u00020\u00168F\u00a2\u0006\u0006\u001a\u0004\u0008\u0017\u0010\u0018R\u0011\u0010\u0019\u001a\u00020\t8F\u00a2\u0006\u0006\u001a\u0004\u0008\u001a\u0010\u000bR\u0011\u0010\u001b\u001a\u00020\t8F\u00a2\u0006\u0006\u001a\u0004\u0008\u001c\u0010\u000bR\u0013\u0010\u001d\u001a\u0004\u0018\u00010\u00048F\u00a2\u0006\u0006\u001a\u0004\u0008\u001e\u0010\u000eR\u0013\u0010\u001f\u001a\u0004\u0018\u00010\u00048F\u00a2\u0006\u0006\u001a\u0004\u0008 \u0010\u000e\u00a8\u0006\""
    }
    d2 = {
        "Lcom/kakaogame/KGMarketRefundInfo;",
        "Lcom/kakaogame/KGObject;",
        "m",
        "",
        "",
        "",
        "<init>",
        "(Ljava/util/Map;)V",
        "marketRefundSeq",
        "",
        "getMarketRefundSeq",
        "()J",
        "playerId",
        "getPlayerId",
        "()Ljava/lang/String;",
        "marketProductId",
        "getMarketProductId",
        "marketOrderId",
        "getMarketOrderId",
        "currency",
        "getCurrency",
        "price",
        "",
        "getPrice",
        "()I",
        "marketPurchaseTime",
        "getMarketPurchaseTime",
        "marketRefundTime",
        "getMarketRefundTime",
        "os",
        "getOs",
        "market",
        "getMarket",
        "Companion",
        "gamesdk_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final Companion:Lcom/kakaogame/KGMarketRefundInfo$Companion;

.field private static final TAG:Ljava/lang/String; = "KGMarketRefundInfo"

.field private static getListUri:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/kakaogame/KGMarketRefundInfo$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/kakaogame/KGMarketRefundInfo$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/kakaogame/KGMarketRefundInfo;->Companion:Lcom/kakaogame/KGMarketRefundInfo$Companion;

    .line 1339
    sget-object v0, Lcom/kakaogame/server/openapi/OpenApiService;->INSTANCE:Lcom/kakaogame/server/openapi/OpenApiService;

    const v1, 0x7d713825

    invoke-static {v1}, Lcom/liapp/y;->حֲݴܳޯ(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x6d0d2460

    invoke-static {v2}, Lcom/liapp/y;->ٱڳܴڭܩ(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/kakaogame/server/openapi/OpenApiService;->setOpenApiUri(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/kakaogame/KGMarketRefundInfo;->getListUri:Ljava/lang/String;

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 309
    invoke-direct {p0, p1}, Lcom/kakaogame/KGObject;-><init>(Ljava/util/Map;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method public static final synthetic access$getGetListUri$cp()Ljava/lang/String;
    .locals 1

    .line 309
    sget-object v0, Lcom/kakaogame/KGMarketRefundInfo;->getListUri:Ljava/lang/String;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public static final synthetic access$setGetListUri$cp(Ljava/lang/String;)V
    .locals 0

    .line 309
    sput-object p0, Lcom/kakaogame/KGMarketRefundInfo;->getListUri:Ljava/lang/String;

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public static final loadMarketRefundInfoList(Lcom/kakaogame/KGResultCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/kakaogame/KGResultCallback<",
            "Ljava/util/List<",
            "Lcom/kakaogame/KGMarketRefundInfo;",
            ">;>;)V"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/kakaogame/KGMarketRefundInfo;->Companion:Lcom/kakaogame/KGMarketRefundInfo$Companion;

    invoke-virtual {v0, p0}, Lcom/kakaogame/KGMarketRefundInfo$Companion;->loadMarketRefundInfoList(Lcom/kakaogame/KGResultCallback;)V

    return-void

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public final getCurrency()Ljava/lang/String;
    .locals 1

    const v0, -0x451855a7

    invoke-static {v0}, Lcom/liapp/y;->ڳݬ٬ۮݪ(I)Ljava/lang/String;

    move-result-object v0

    .line 749
    invoke-virtual {p0, v0}, Lcom/kakaogame/KGMarketRefundInfo;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0

    .array-data 1
    .end array-data
.end method

.method public final getMarket()Ljava/lang/String;
    .locals 1

    const v0, 0x6d0d2708

    invoke-static {v0}, Lcom/liapp/y;->ٱڳܴڭܩ(I)Ljava/lang/String;

    move-result-object v0

    .line 1299
    invoke-virtual {p0, v0}, Lcom/kakaogame/KGMarketRefundInfo;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0

    .array-data 1
    .end array-data
.end method

.method public final getMarketOrderId()Ljava/lang/String;
    .locals 1

    const v0, 0x5d111247

    invoke-static {v0}, Lcom/liapp/y;->ڴݮگ֮ت(I)Ljava/lang/String;

    move-result-object v0

    .line 669
    invoke-virtual {p0, v0}, Lcom/kakaogame/KGMarketRefundInfo;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0

    .array-data 1
    .end array-data
.end method

.method public final getMarketProductId()Ljava/lang/String;
    .locals 1

    const v0, -0x2243f2ec

    invoke-static {v0}, Lcom/liapp/y;->״دش۲ݮ(I)Ljava/lang/String;

    move-result-object v0

    .line 589
    invoke-virtual {p0, v0}, Lcom/kakaogame/KGMarketRefundInfo;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0

    .array-data 1
    .end array-data
.end method

.method public final getMarketPurchaseTime()J
    .locals 4

    :try_start_0
    const-string v0, "marketPurchaseTime"

    .line 969
    invoke-virtual {p0, v0}, Lcom/kakaogame/KGMarketRefundInfo;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 989
    sget-object v1, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    check-cast v0, Ljava/lang/Throwable;

    const v3, 0x54383f9a

    invoke-static {v3}, Lcom/liapp/y;->׳ֳֳ֬د(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3, v2, v0}, Lcom/kakaogame/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    .array-data 1
    .end array-data
.end method

.method public final getMarketRefundSeq()J
    .locals 4

    :try_start_0
    const-string v0, "marketRefundSeq"

    .line 389
    invoke-virtual {p0, v0}, Lcom/kakaogame/KGMarketRefundInfo;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 409
    sget-object v1, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    check-cast v0, Ljava/lang/Throwable;

    const v3, 0x54383f9a

    invoke-static {v3}, Lcom/liapp/y;->׳ֳֳ֬د(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3, v2, v0}, Lcom/kakaogame/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    .array-data 1
    .end array-data
.end method

.method public final getMarketRefundTime()J
    .locals 4

    :try_start_0
    const-string v0, "marketRefundTime"

    .line 1099
    invoke-virtual {p0, v0}, Lcom/kakaogame/KGMarketRefundInfo;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 1119
    sget-object v1, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    check-cast v0, Ljava/lang/Throwable;

    const v3, 0x54383f9a

    invoke-static {v3}, Lcom/liapp/y;->׳ֳֳ֬د(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3, v2, v0}, Lcom/kakaogame/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    .array-data 1
    .end array-data
.end method

.method public final getOs()Ljava/lang/String;
    .locals 1

    const v0, 0x5d111d47

    invoke-static {v0}, Lcom/liapp/y;->ڴݮگ֮ت(I)Ljava/lang/String;

    move-result-object v0

    .line 1219
    invoke-virtual {p0, v0}, Lcom/kakaogame/KGMarketRefundInfo;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0

    .array-data 1
    .end array-data
.end method

.method public final getPlayerId()Ljava/lang/String;
    .locals 1

    const v0, -0x224509cc

    invoke-static {v0}, Lcom/liapp/y;->״دش۲ݮ(I)Ljava/lang/String;

    move-result-object v0

    .line 509
    invoke-virtual {p0, v0}, Lcom/kakaogame/KGMarketRefundInfo;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0

    .array-data 1
    .end array-data
.end method

.method public final getPrice()I
    .locals 4

    :try_start_0
    const-string v0, "price"

    .line 839
    invoke-virtual {p0, v0}, Lcom/kakaogame/KGMarketRefundInfo;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 859
    sget-object v1, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    check-cast v0, Ljava/lang/Throwable;

    const v3, 0x54383f9a

    invoke-static {v3}, Lcom/liapp/y;->׳ֳֳ֬د(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3, v2, v0}, Lcom/kakaogame/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    :goto_0
    return v0

    nop

    .array-data 1
    .end array-data
.end method
