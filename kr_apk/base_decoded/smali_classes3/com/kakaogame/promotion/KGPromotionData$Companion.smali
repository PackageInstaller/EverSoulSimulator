.class public final Lcom/kakaogame/promotion/KGPromotionData$Companion;
.super Ljava/lang/Object;
.source "KGPromotionData.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kakaogame/promotion/KGPromotionData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0010\u0010\n\u001a\u00020\u000b2\u0008\u0010\u000c\u001a\u0004\u0018\u00010\tJ\u0016\u0010\r\u001a\u0010\u0012\u000c\u0012\n\u0012\u0004\u0012\u00020\u0010\u0018\u00010\u000f0\u000eH\u0007J\u0010\u0010\u0011\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00100\u000eH\u0007R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0008\u001a\u0004\u0018\u00010\tX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0012"
    }
    d2 = {
        "Lcom/kakaogame/promotion/KGPromotionData$Companion;",
        "",
        "<init>",
        "()V",
        "TAG",
        "",
        "serialVersionUID",
        "",
        "context",
        "Landroid/content/Context;",
        "initialize",
        "",
        "ctx",
        "loadPromotions",
        "Lcom/kakaogame/KGResult;",
        "",
        "Lcom/kakaogame/promotion/KGPromotionData;",
        "loadEndingPromotion",
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


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1329
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void

    .array-data 1
    .end array-data
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/kakaogame/promotion/KGPromotionData$Companion;-><init>()V

    return-void

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public final initialize(Landroid/content/Context;)V
    .locals 0

    .line 1379
    invoke-static {p1}, Lcom/kakaogame/promotion/KGPromotionData;->access$setContext$cp(Landroid/content/Context;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method public final loadEndingPromotion()Lcom/kakaogame/KGResult;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/kakaogame/KGResult<",
            "Lcom/kakaogame/promotion/KGPromotionData;",
            ">;"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 1919
    sget-object v0, Lcom/kakaogame/util/Stopwatch;->Companion:Lcom/kakaogame/util/Stopwatch$Companion;

    const v1, 0x336ea223

    invoke-static {v1}, Lcom/liapp/y;->ׯ״ٲ֬ب(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kakaogame/util/Stopwatch$Companion;->start(Ljava/lang/String;)Lcom/kakaogame/util/Stopwatch;

    move-result-object v0

    .line 1939
    :try_start_0
    sget-object v1, Lcom/kakaogame/core/CoreManager;->Companion:Lcom/kakaogame/core/CoreManager$Companion;

    invoke-virtual {v1}, Lcom/kakaogame/core/CoreManager$Companion;->getInstance()Lcom/kakaogame/core/CoreManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/kakaogame/core/CoreManager;->isNotAuthorized()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1949
    sget-object v1, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    const/16 v2, 0xbba

    invoke-virtual {v1, v2}, Lcom/kakaogame/KGResult$Companion;->getResult(I)Lcom/kakaogame/KGResult;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 2269
    invoke-virtual {v1}, Lcom/kakaogame/KGResult;->isNotSuccess()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2279
    sget-object v2, Lcom/kakaogame/promotion/StartingPromotionManager;->INSTANCE:Lcom/kakaogame/promotion/StartingPromotionManager;

    invoke-static {}, Lcom/kakaogame/promotion/KGPromotionData;->access$getContext$cp()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v1}, Lcom/kakaogame/KGResult;->getCode()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/kakaogame/promotion/StartingPromotionManager;->getErrorMessage(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/kakaogame/KGResult;->setMessage(Ljava/lang/String;)V

    .line 2309
    :cond_0
    invoke-virtual {v0}, Lcom/kakaogame/util/Stopwatch;->stop()V

    return-object v1

    :cond_1
    :try_start_1
    const-string v1, "closing"

    .line 1979
    invoke-static {v1}, Lcom/kakaogame/promotion/PromotionService;->getPopupPromotionsforV4(Ljava/lang/String;)Lcom/kakaogame/KGResult;

    move-result-object v1

    .line 1989
    invoke-virtual {v1}, Lcom/kakaogame/KGResult;->isSuccess()Z

    move-result v2

    if-nez v2, :cond_3

    .line 1999
    sget-object v2, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    check-cast v1, Ljava/util/Map;

    invoke-virtual {v2, v1}, Lcom/kakaogame/KGResult$Companion;->getResult(Ljava/util/Map;)Lcom/kakaogame/KGResult;

    move-result-object v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_2

    .line 2269
    invoke-virtual {v1}, Lcom/kakaogame/KGResult;->isNotSuccess()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2279
    sget-object v2, Lcom/kakaogame/promotion/StartingPromotionManager;->INSTANCE:Lcom/kakaogame/promotion/StartingPromotionManager;

    invoke-static {}, Lcom/kakaogame/promotion/KGPromotionData;->access$getContext$cp()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v1}, Lcom/kakaogame/KGResult;->getCode()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/kakaogame/promotion/StartingPromotionManager;->getErrorMessage(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/kakaogame/KGResult;->setMessage(Ljava/lang/String;)V

    .line 2309
    :cond_2
    invoke-virtual {v0}, Lcom/kakaogame/util/Stopwatch;->stop()V

    return-object v1

    .line 2029
    :cond_3
    :try_start_2
    invoke-virtual {v1}, Lcom/kakaogame/KGResult;->getContent()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v1, Ljava/util/List;

    .line 2039
    move-object v2, v1

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_5

    .line 2049
    new-instance v2, Lcom/kakaogame/promotion/KGPromotionData;

    const/4 v3, 0x0

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    invoke-direct {v2, v1}, Lcom/kakaogame/promotion/KGPromotionData;-><init>(Ljava/util/Map;)V

    .line 2059
    sget-object v1, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    invoke-virtual {v1, v2}, Lcom/kakaogame/KGResult$Companion;->getSuccessResult(Ljava/lang/Object;)Lcom/kakaogame/KGResult;

    move-result-object v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v1, :cond_4

    .line 2269
    invoke-virtual {v1}, Lcom/kakaogame/KGResult;->isNotSuccess()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 2279
    sget-object v2, Lcom/kakaogame/promotion/StartingPromotionManager;->INSTANCE:Lcom/kakaogame/promotion/StartingPromotionManager;

    invoke-static {}, Lcom/kakaogame/promotion/KGPromotionData;->access$getContext$cp()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v1}, Lcom/kakaogame/KGResult;->getCode()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/kakaogame/promotion/StartingPromotionManager;->getErrorMessage(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/kakaogame/KGResult;->setMessage(Ljava/lang/String;)V

    .line 2309
    :cond_4
    invoke-virtual {v0}, Lcom/kakaogame/util/Stopwatch;->stop()V

    return-object v1

    .line 2089
    :cond_5
    :try_start_3
    sget-object v1, Lcom/kakaogame/infodesk/InfodeskHelper;->INSTANCE:Lcom/kakaogame/infodesk/InfodeskHelper;

    invoke-virtual {v1}, Lcom/kakaogame/infodesk/InfodeskHelper;->offPromotion3()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 2099
    sget-object v1, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/kakaogame/KGResult$Companion;->getSuccessResult(Ljava/lang/Object;)Lcom/kakaogame/KGResult;

    move-result-object v1
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v1, :cond_6

    .line 2269
    invoke-virtual {v1}, Lcom/kakaogame/KGResult;->isNotSuccess()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 2279
    sget-object v2, Lcom/kakaogame/promotion/StartingPromotionManager;->INSTANCE:Lcom/kakaogame/promotion/StartingPromotionManager;

    invoke-static {}, Lcom/kakaogame/promotion/KGPromotionData;->access$getContext$cp()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v1}, Lcom/kakaogame/KGResult;->getCode()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/kakaogame/promotion/StartingPromotionManager;->getErrorMessage(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/kakaogame/KGResult;->setMessage(Ljava/lang/String;)V

    .line 2309
    :cond_6
    invoke-virtual {v0}, Lcom/kakaogame/util/Stopwatch;->stop()V

    return-object v1

    .line 2129
    :cond_7
    :try_start_4
    invoke-static {}, Lcom/kakaogame/promotion/PromotionService;->getEndingPopupPromotion()Lcom/kakaogame/KGResult;

    move-result-object v1

    .line 2139
    invoke-virtual {v1}, Lcom/kakaogame/KGResult;->isSuccess()Z

    move-result v2

    if-nez v2, :cond_9

    .line 2149
    sget-object v2, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    check-cast v1, Ljava/util/Map;

    invoke-virtual {v2, v1}, Lcom/kakaogame/KGResult$Companion;->getResult(Ljava/util/Map;)Lcom/kakaogame/KGResult;

    move-result-object v1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v1, :cond_8

    .line 2269
    invoke-virtual {v1}, Lcom/kakaogame/KGResult;->isNotSuccess()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 2279
    sget-object v2, Lcom/kakaogame/promotion/StartingPromotionManager;->INSTANCE:Lcom/kakaogame/promotion/StartingPromotionManager;

    invoke-static {}, Lcom/kakaogame/promotion/KGPromotionData;->access$getContext$cp()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v1}, Lcom/kakaogame/KGResult;->getCode()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/kakaogame/promotion/StartingPromotionManager;->getErrorMessage(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/kakaogame/KGResult;->setMessage(Ljava/lang/String;)V

    .line 2309
    :cond_8
    invoke-virtual {v0}, Lcom/kakaogame/util/Stopwatch;->stop()V

    return-object v1

    .line 2179
    :cond_9
    :try_start_5
    new-instance v2, Lcom/kakaogame/promotion/KGPromotionData;

    invoke-virtual {v1}, Lcom/kakaogame/KGResult;->getContent()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    invoke-direct {v2, v1}, Lcom/kakaogame/promotion/KGPromotionData;-><init>(Ljava/util/Map;)V

    .line 2189
    sget-object v1, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    invoke-virtual {v1, v2}, Lcom/kakaogame/KGResult$Companion;->getSuccessResult(Ljava/lang/Object;)Lcom/kakaogame/KGResult;

    move-result-object v1
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-eqz v1, :cond_a

    .line 2269
    invoke-virtual {v1}, Lcom/kakaogame/KGResult;->isNotSuccess()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 2279
    sget-object v2, Lcom/kakaogame/promotion/StartingPromotionManager;->INSTANCE:Lcom/kakaogame/promotion/StartingPromotionManager;

    invoke-static {}, Lcom/kakaogame/promotion/KGPromotionData;->access$getContext$cp()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v1}, Lcom/kakaogame/KGResult;->getCode()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/kakaogame/promotion/StartingPromotionManager;->getErrorMessage(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/kakaogame/KGResult;->setMessage(Ljava/lang/String;)V

    .line 2309
    :cond_a
    invoke-virtual {v0}, Lcom/kakaogame/util/Stopwatch;->stop()V

    return-object v1

    :catchall_0
    move-exception v1

    goto :goto_0

    :catch_0
    move-exception v1

    .line 2219
    :try_start_6
    sget-object v2, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    const-string v3, "KGPromotionData"

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v5, v1

    check-cast v5, Ljava/lang/Throwable;

    invoke-virtual {v2, v3, v4, v5}, Lcom/kakaogame/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2229
    sget-object v2, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0xfa1

    invoke-virtual {v2, v3, v1}, Lcom/kakaogame/KGResult$Companion;->getResult(ILjava/lang/String;)Lcom/kakaogame/KGResult;

    move-result-object v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    if-eqz v1, :cond_b

    .line 2269
    invoke-virtual {v1}, Lcom/kakaogame/KGResult;->isNotSuccess()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 2279
    sget-object v2, Lcom/kakaogame/promotion/StartingPromotionManager;->INSTANCE:Lcom/kakaogame/promotion/StartingPromotionManager;

    invoke-static {}, Lcom/kakaogame/promotion/KGPromotionData;->access$getContext$cp()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v1}, Lcom/kakaogame/KGResult;->getCode()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/kakaogame/promotion/StartingPromotionManager;->getErrorMessage(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/kakaogame/KGResult;->setMessage(Ljava/lang/String;)V

    .line 2309
    :cond_b
    invoke-virtual {v0}, Lcom/kakaogame/util/Stopwatch;->stop()V

    return-object v1

    :goto_0
    invoke-virtual {v0}, Lcom/kakaogame/util/Stopwatch;->stop()V

    throw v1

    nop

    .array-data 1
    .end array-data
.end method

.method public final loadPromotions()Lcom/kakaogame/KGResult;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/kakaogame/KGResult<",
            "Ljava/util/List<",
            "Lcom/kakaogame/promotion/KGPromotionData;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const v0, 0x6d001a30

    invoke-static {v0}, Lcom/liapp/y;->ٱڳܴڭܩ(I)Ljava/lang/String;

    move-result-object v0

    const v1, -0x224ec914

    invoke-static {v1}, Lcom/liapp/y;->״دش۲ݮ(I)Ljava/lang/String;

    move-result-object v1

    .line 1439
    sget-object v2, Lcom/kakaogame/util/Stopwatch;->Companion:Lcom/kakaogame/util/Stopwatch$Companion;

    const v3, 0x5d1c281f

    invoke-static {v3}, Lcom/liapp/y;->ڴݮگ֮ت(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/kakaogame/util/Stopwatch$Companion;->start(Ljava/lang/String;)Lcom/kakaogame/util/Stopwatch;

    move-result-object v2

    .line 1459
    :try_start_0
    sget-object v3, Lcom/kakaogame/core/CoreManager;->Companion:Lcom/kakaogame/core/CoreManager$Companion;

    invoke-virtual {v3}, Lcom/kakaogame/core/CoreManager$Companion;->getInstance()Lcom/kakaogame/core/CoreManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/kakaogame/core/CoreManager;->isNotAuthorized()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1469
    sget-object v1, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    const/16 v3, 0xbba

    invoke-virtual {v1, v3}, Lcom/kakaogame/KGResult$Companion;->getResult(I)Lcom/kakaogame/KGResult;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 1809
    invoke-virtual {v0}, Lcom/kakaogame/KGResult;->isSuccess()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1819
    sget-object v1, Lcom/kakaogame/promotion/StartingPromotionManager;->INSTANCE:Lcom/kakaogame/promotion/StartingPromotionManager;

    invoke-static {}, Lcom/kakaogame/promotion/KGPromotionData;->access$getContext$cp()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v0}, Lcom/kakaogame/KGResult;->getCode()I

    move-result v4

    invoke-virtual {v1, v3, v4}, Lcom/kakaogame/promotion/StartingPromotionManager;->getErrorMessage(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kakaogame/KGResult;->setMessage(Ljava/lang/String;)V

    .line 1849
    :cond_0
    invoke-virtual {v2}, Lcom/kakaogame/util/Stopwatch;->stop()V

    return-object v0

    .line 1499
    :cond_1
    :try_start_1
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    check-cast v3, Ljava/util/List;

    const-string v4, "opening"

    .line 1509
    invoke-static {v4}, Lcom/kakaogame/promotion/PromotionService;->getPopupPromotionsforV4(Ljava/lang/String;)Lcom/kakaogame/KGResult;

    move-result-object v4

    .line 1519
    invoke-virtual {v4}, Lcom/kakaogame/KGResult;->isNotSuccess()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1529
    sget-object v1, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    check-cast v4, Ljava/util/Map;

    invoke-virtual {v1, v4}, Lcom/kakaogame/KGResult$Companion;->getResult(Ljava/util/Map;)Lcom/kakaogame/KGResult;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_2

    .line 1809
    invoke-virtual {v0}, Lcom/kakaogame/KGResult;->isSuccess()Z

    move-result v1

    if-nez v1, :cond_2

    .line 1819
    sget-object v1, Lcom/kakaogame/promotion/StartingPromotionManager;->INSTANCE:Lcom/kakaogame/promotion/StartingPromotionManager;

    invoke-static {}, Lcom/kakaogame/promotion/KGPromotionData;->access$getContext$cp()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v0}, Lcom/kakaogame/KGResult;->getCode()I

    move-result v4

    invoke-virtual {v1, v3, v4}, Lcom/kakaogame/promotion/StartingPromotionManager;->getErrorMessage(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kakaogame/KGResult;->setMessage(Ljava/lang/String;)V

    .line 1849
    :cond_2
    invoke-virtual {v2}, Lcom/kakaogame/util/Stopwatch;->stop()V

    return-object v0

    .line 1559
    :cond_3
    :try_start_2
    sget-object v5, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v0, v1}, Lcom/kakaogame/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1569
    invoke-virtual {v4}, Lcom/kakaogame/KGResult;->getContent()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v1, Ljava/util/List;

    .line 1579
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/kakaogame/promotion/PromotionData;

    .line 1589
    new-instance v5, Lcom/kakaogame/promotion/KGPromotionData;

    check-cast v4, Ljava/util/Map;

    invoke-direct {v5, v4}, Lcom/kakaogame/promotion/KGPromotionData;-><init>(Ljava/util/Map;)V

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1609
    :cond_4
    sget-object v1, Lcom/kakaogame/infodesk/InfodeskHelper;->INSTANCE:Lcom/kakaogame/infodesk/InfodeskHelper;

    invoke-virtual {v1}, Lcom/kakaogame/infodesk/InfodeskHelper;->offPromotion3()Z

    move-result v1

    if-nez v1, :cond_7

    .line 1619
    invoke-static {}, Lcom/kakaogame/promotion/PromotionService;->getStartingPopupPromotions()Lcom/kakaogame/KGResult;

    move-result-object v1

    .line 1629
    invoke-virtual {v1}, Lcom/kakaogame/KGResult;->isNotSuccess()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 1639
    sget-object v3, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    check-cast v1, Ljava/util/Map;

    invoke-virtual {v3, v1}, Lcom/kakaogame/KGResult$Companion;->getResult(Ljava/util/Map;)Lcom/kakaogame/KGResult;

    move-result-object v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v0, :cond_5

    .line 1809
    invoke-virtual {v0}, Lcom/kakaogame/KGResult;->isSuccess()Z

    move-result v1

    if-nez v1, :cond_5

    .line 1819
    sget-object v1, Lcom/kakaogame/promotion/StartingPromotionManager;->INSTANCE:Lcom/kakaogame/promotion/StartingPromotionManager;

    invoke-static {}, Lcom/kakaogame/promotion/KGPromotionData;->access$getContext$cp()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v0}, Lcom/kakaogame/KGResult;->getCode()I

    move-result v4

    invoke-virtual {v1, v3, v4}, Lcom/kakaogame/promotion/StartingPromotionManager;->getErrorMessage(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kakaogame/KGResult;->setMessage(Ljava/lang/String;)V

    .line 1849
    :cond_5
    invoke-virtual {v2}, Lcom/kakaogame/util/Stopwatch;->stop()V

    return-object v0

    .line 1669
    :cond_6
    :try_start_3
    sget-object v4, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "loadPromotions result: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v0, v5}, Lcom/kakaogame/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1679
    invoke-virtual {v1}, Lcom/kakaogame/KGResult;->getContent()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v1, Ljava/util/List;

    .line 1689
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/kakaogame/promotion/PromotionData;

    .line 1699
    new-instance v5, Lcom/kakaogame/promotion/KGPromotionData;

    check-cast v4, Ljava/util/Map;

    invoke-direct {v5, v4}, Lcom/kakaogame/promotion/KGPromotionData;-><init>(Ljava/util/Map;)V

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1729
    :cond_7
    sget-object v1, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    invoke-virtual {v1, v3}, Lcom/kakaogame/KGResult$Companion;->getSuccessResult(Ljava/lang/Object;)Lcom/kakaogame/KGResult;

    move-result-object v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v0, :cond_8

    .line 1809
    invoke-virtual {v0}, Lcom/kakaogame/KGResult;->isSuccess()Z

    move-result v1

    if-nez v1, :cond_8

    .line 1819
    sget-object v1, Lcom/kakaogame/promotion/StartingPromotionManager;->INSTANCE:Lcom/kakaogame/promotion/StartingPromotionManager;

    invoke-static {}, Lcom/kakaogame/promotion/KGPromotionData;->access$getContext$cp()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v0}, Lcom/kakaogame/KGResult;->getCode()I

    move-result v4

    invoke-virtual {v1, v3, v4}, Lcom/kakaogame/promotion/StartingPromotionManager;->getErrorMessage(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kakaogame/KGResult;->setMessage(Ljava/lang/String;)V

    .line 1849
    :cond_8
    invoke-virtual {v2}, Lcom/kakaogame/util/Stopwatch;->stop()V

    return-object v0

    :catchall_0
    move-exception v0

    goto :goto_2

    :catch_0
    move-exception v1

    .line 1759
    :try_start_4
    sget-object v3, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v5, v1

    check-cast v5, Ljava/lang/Throwable;

    invoke-virtual {v3, v0, v4, v5}, Lcom/kakaogame/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1769
    sget-object v0, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0xfa1

    invoke-virtual {v0, v3, v1}, Lcom/kakaogame/KGResult$Companion;->getResult(ILjava/lang/String;)Lcom/kakaogame/KGResult;

    move-result-object v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v0, :cond_9

    .line 1809
    invoke-virtual {v0}, Lcom/kakaogame/KGResult;->isSuccess()Z

    move-result v1

    if-nez v1, :cond_9

    .line 1819
    sget-object v1, Lcom/kakaogame/promotion/StartingPromotionManager;->INSTANCE:Lcom/kakaogame/promotion/StartingPromotionManager;

    invoke-static {}, Lcom/kakaogame/promotion/KGPromotionData;->access$getContext$cp()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v0}, Lcom/kakaogame/KGResult;->getCode()I

    move-result v4

    invoke-virtual {v1, v3, v4}, Lcom/kakaogame/promotion/StartingPromotionManager;->getErrorMessage(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kakaogame/KGResult;->setMessage(Ljava/lang/String;)V

    .line 1849
    :cond_9
    invoke-virtual {v2}, Lcom/kakaogame/util/Stopwatch;->stop()V

    return-object v0

    :goto_2
    invoke-virtual {v2}, Lcom/kakaogame/util/Stopwatch;->stop()V

    throw v0

    .array-data 1
    .end array-data
.end method
