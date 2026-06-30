.class public final Lcom/kakaogame/promotion/KGPromotionData;
.super Lcom/kakaogame/KGObject;
.source "KGPromotionData.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kakaogame/promotion/KGPromotionData$Companion;,
        Lcom/kakaogame/promotion/KGPromotionData$KGPromotionApplyType;,
        Lcom/kakaogame/promotion/KGPromotionData$KGPromotionType;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nKGPromotionData.kt\nKotlin\n*S Kotlin\n*F\n+ 1 KGPromotionData.kt\ncom/kakaogame/promotion/KGPromotionData\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,234:1\n1#2:235\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000H\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010%\n\u0002\u0010\u000e\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0008\n\u0002\u0010\t\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u0000 )2\u00020\u0001:\u0003\'()B\u001f\u0012\u0016\u0010\u0002\u001a\u0012\u0012\u0004\u0012\u00020\u0004\u0012\u0006\u0012\u0004\u0018\u00010\u0005\u0018\u00010\u0003\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u000e\u0010!\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010#0\"J\u0018\u0010!\u001a\u00020$2\u0010\u0010%\u001a\u000c\u0012\u0006\u0012\u0004\u0018\u00010#\u0018\u00010&R\u0011\u0010\u0008\u001a\u00020\t8F\u00a2\u0006\u0006\u001a\u0004\u0008\n\u0010\u000bR\u0011\u0010\u000c\u001a\u00020\t8F\u00a2\u0006\u0006\u001a\u0004\u0008\r\u0010\u000bR\u0013\u0010\u000e\u001a\u0004\u0018\u00010\u00048F\u00a2\u0006\u0006\u001a\u0004\u0008\u000f\u0010\u0010R\u0011\u0010\u0011\u001a\u00020\u00128F\u00a2\u0006\u0006\u001a\u0004\u0008\u0013\u0010\u0014R\u0011\u0010\u0015\u001a\u00020\u00128F\u00a2\u0006\u0006\u001a\u0004\u0008\u0016\u0010\u0014R\u0013\u0010\u0017\u001a\u0004\u0018\u00010\u00048F\u00a2\u0006\u0006\u001a\u0004\u0008\u0018\u0010\u0010R\u0013\u0010\u0019\u001a\u0004\u0018\u00010\u00048F\u00a2\u0006\u0006\u001a\u0004\u0008\u001a\u0010\u0010R\u0013\u0010\u001b\u001a\u0004\u0018\u00010\u00048F\u00a2\u0006\u0006\u001a\u0004\u0008\u001c\u0010\u0010R\u0011\u0010\u001d\u001a\u00020\u001e8F\u00a2\u0006\u0006\u001a\u0004\u0008\u001f\u0010 \u00a8\u0006*"
    }
    d2 = {
        "Lcom/kakaogame/promotion/KGPromotionData;",
        "Lcom/kakaogame/KGObject;",
        "m",
        "",
        "",
        "",
        "<init>",
        "(Ljava/util/Map;)V",
        "sequence",
        "",
        "getSequence",
        "()I",
        "version",
        "getVersion",
        "name",
        "getName",
        "()Ljava/lang/String;",
        "beginTime",
        "",
        "getBeginTime",
        "()J",
        "endTime",
        "getEndTime",
        "linkUrl",
        "getLinkUrl",
        "portraitImageUrl",
        "getPortraitImageUrl",
        "landscapeImageUrl",
        "getLandscapeImageUrl",
        "applyType",
        "Lcom/kakaogame/promotion/KGPromotionData$KGPromotionApplyType;",
        "getApplyType",
        "()Lcom/kakaogame/promotion/KGPromotionData$KGPromotionApplyType;",
        "apply",
        "Lcom/kakaogame/KGResult;",
        "Ljava/lang/Void;",
        "",
        "callback",
        "Lcom/kakaogame/KGResultCallback;",
        "KGPromotionApplyType",
        "KGPromotionType",
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
.field public static final Companion:Lcom/kakaogame/promotion/KGPromotionData$Companion;

.field private static final TAG:Ljava/lang/String; = "KGPromotionData"

.field private static context:Landroid/content/Context; = null

.field private static final serialVersionUID:J = -0x60665c1b7ce3bda6L


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/kakaogame/promotion/KGPromotionData$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/kakaogame/promotion/KGPromotionData$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/kakaogame/promotion/KGPromotionData;->Companion:Lcom/kakaogame/promotion/KGPromotionData$Companion;

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

    .line 259
    invoke-direct {p0, p1}, Lcom/kakaogame/KGObject;-><init>(Ljava/util/Map;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method public static final synthetic access$getContext$cp()Landroid/content/Context;
    .locals 1

    .line 259
    sget-object v0, Lcom/kakaogame/promotion/KGPromotionData;->context:Landroid/content/Context;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public static final synthetic access$setContext$cp(Landroid/content/Context;)V
    .locals 0

    .line 259
    sput-object p0, Lcom/kakaogame/promotion/KGPromotionData;->context:Landroid/content/Context;

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public static final loadEndingPromotion()Lcom/kakaogame/KGResult;
    .locals 1
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

    sget-object v0, Lcom/kakaogame/promotion/KGPromotionData;->Companion:Lcom/kakaogame/promotion/KGPromotionData$Companion;

    invoke-virtual {v0}, Lcom/kakaogame/promotion/KGPromotionData$Companion;->loadEndingPromotion()Lcom/kakaogame/KGResult;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public static final loadPromotions()Lcom/kakaogame/KGResult;
    .locals 1
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

    sget-object v0, Lcom/kakaogame/promotion/KGPromotionData;->Companion:Lcom/kakaogame/promotion/KGPromotionData$Companion;

    invoke-virtual {v0}, Lcom/kakaogame/promotion/KGPromotionData$Companion;->loadPromotions()Lcom/kakaogame/KGResult;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public final apply()Lcom/kakaogame/KGResult;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/kakaogame/KGResult<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 879
    sget-object v0, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    const v1, 0x54350182

    invoke-static {v1}, Lcom/liapp/y;->׳ֳֳ֬د(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x6d001a30

    invoke-static {v2}, Lcom/liapp/y;->ٱڳܴڭܩ(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lcom/kakaogame/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 899
    sget-object v0, Lcom/kakaogame/util/Stopwatch;->Companion:Lcom/kakaogame/util/Stopwatch$Companion;

    const v1, 0x336ea79b

    invoke-static {v1}, Lcom/liapp/y;->ׯ״ٲ֬ب(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kakaogame/util/Stopwatch$Companion;->start(Ljava/lang/String;)Lcom/kakaogame/util/Stopwatch;

    move-result-object v0

    .line 919
    :try_start_0
    sget-object v1, Lcom/kakaogame/core/CoreManager;->Companion:Lcom/kakaogame/core/CoreManager$Companion;

    invoke-virtual {v1}, Lcom/kakaogame/core/CoreManager$Companion;->getInstance()Lcom/kakaogame/core/CoreManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/kakaogame/core/CoreManager;->isNotAuthorized()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 929
    sget-object v1, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    const/16 v3, 0xbba

    invoke-virtual {v1, v3}, Lcom/kakaogame/KGResult$Companion;->getResult(I)Lcom/kakaogame/KGResult;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1049
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1}, Lcom/kakaogame/KGResult;->isSuccess()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1059
    sget-object v2, Lcom/kakaogame/promotion/StartingPromotionManager;->INSTANCE:Lcom/kakaogame/promotion/StartingPromotionManager;

    sget-object v3, Lcom/kakaogame/promotion/KGPromotionData;->context:Landroid/content/Context;

    invoke-virtual {v1}, Lcom/kakaogame/KGResult;->getCode()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/kakaogame/promotion/StartingPromotionManager;->getErrorMessage(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/kakaogame/KGResult;->setMessage(Ljava/lang/String;)V

    .line 1079
    :cond_0
    invoke-virtual {v0}, Lcom/kakaogame/util/Stopwatch;->stop()V

    return-object v1

    .line 949
    :cond_1
    :try_start_1
    invoke-virtual {p0}, Lcom/kakaogame/promotion/KGPromotionData;->getVersion()I

    move-result v1

    const/4 v3, 0x3

    if-ne v1, v3, :cond_2

    .line 959
    invoke-virtual {p0}, Lcom/kakaogame/promotion/KGPromotionData;->getSequence()I

    move-result v1

    invoke-static {v1}, Lcom/kakaogame/promotion/PromotionService;->applyPromotion(I)Lcom/kakaogame/KGResult;

    move-result-object v1

    goto :goto_0

    .line 979
    :cond_2
    invoke-virtual {p0}, Lcom/kakaogame/promotion/KGPromotionData;->getSequence()I

    move-result v1

    invoke-static {v1}, Lcom/kakaogame/promotion/PromotionService;->clickPromotion(I)Lcom/kakaogame/KGResult;

    move-result-object v1

    .line 999
    :goto_0
    sget-object v3, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    check-cast v1, Ljava/util/Map;

    invoke-virtual {v3, v1}, Lcom/kakaogame/KGResult$Companion;->getResult(Ljava/util/Map;)Lcom/kakaogame/KGResult;

    move-result-object v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1049
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1}, Lcom/kakaogame/KGResult;->isSuccess()Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_1

    :catch_0
    move-exception v1

    .line 1019
    :try_start_2
    sget-object v3, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v5, v1

    check-cast v5, Ljava/lang/Throwable;

    invoke-virtual {v3, v2, v4, v5}, Lcom/kakaogame/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1029
    sget-object v2, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0xfa1

    invoke-virtual {v2, v3, v1}, Lcom/kakaogame/KGResult$Companion;->getResult(ILjava/lang/String;)Lcom/kakaogame/KGResult;

    move-result-object v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1049
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object v2, v1

    check-cast v2, Lcom/kakaogame/KGResult;

    invoke-virtual {v1}, Lcom/kakaogame/KGResult;->isSuccess()Z

    move-result v2

    if-nez v2, :cond_3

    .line 1059
    :goto_1
    sget-object v2, Lcom/kakaogame/promotion/StartingPromotionManager;->INSTANCE:Lcom/kakaogame/promotion/StartingPromotionManager;

    sget-object v3, Lcom/kakaogame/promotion/KGPromotionData;->context:Landroid/content/Context;

    invoke-virtual {v1}, Lcom/kakaogame/KGResult;->getCode()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/kakaogame/promotion/StartingPromotionManager;->getErrorMessage(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/kakaogame/KGResult;->setMessage(Ljava/lang/String;)V

    .line 1079
    :cond_3
    invoke-virtual {v0}, Lcom/kakaogame/util/Stopwatch;->stop()V

    return-object v1

    :catchall_0
    const/4 v0, 0x0

    .line 1049
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object v1, v0

    check-cast v1, Lcom/kakaogame/KGResult;

    invoke-virtual {v0}, Lcom/kakaogame/KGResult;->isSuccess()Z

    throw v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final apply(Lcom/kakaogame/KGResultCallback;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/kakaogame/KGResultCallback<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .line 1139
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    invoke-static {v0}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    new-instance v0, Lcom/kakaogame/promotion/KGPromotionData$apply$4;

    const/4 v4, 0x0

    invoke-direct {v0, p0, p1, v4}, Lcom/kakaogame/promotion/KGPromotionData$apply$4;-><init>(Lcom/kakaogame/promotion/KGPromotionData;Lcom/kakaogame/KGResultCallback;Lkotlin/coroutines/Continuation;)V

    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v5, 0x3

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public final getApplyType()Lcom/kakaogame/promotion/KGPromotionData$KGPromotionApplyType;
    .locals 7

    const v0, 0x336ea703

    invoke-static {v0}, Lcom/liapp/y;->ׯ״ٲ֬ب(I)Ljava/lang/String;

    move-result-object v0

    .line 809
    invoke-virtual {p0, v0}, Lcom/kakaogame/promotion/KGPromotionData;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 819
    invoke-static {}, Lcom/kakaogame/promotion/KGPromotionData$KGPromotionApplyType;->values()[Lcom/kakaogame/promotion/KGPromotionData$KGPromotionApplyType;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    .line 829
    invoke-virtual {v4}, Lcom/kakaogame/promotion/KGPromotionData$KGPromotionApplyType;->getValue()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    invoke-static {v5, v0, v6}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    :goto_1
    if-nez v4, :cond_2

    .line 839
    sget-object v4, Lcom/kakaogame/promotion/KGPromotionData$KGPromotionApplyType;->NONE:Lcom/kakaogame/promotion/KGPromotionData$KGPromotionApplyType;

    :cond_2
    return-object v4

    .array-data 1
    .end array-data
.end method

.method public final getBeginTime()J
    .locals 3

    const-wide/16 v0, -0x1

    :try_start_0
    const-string v2, "beginTime"

    .line 429
    invoke-virtual {p0, v2}, Lcom/kakaogame/promotion/KGPromotionData;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/Number;->longValue()J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-wide v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final getEndTime()J
    .locals 3

    const-wide/16 v0, -0x1

    :try_start_0
    const-string v2, "endTime"

    .line 489
    invoke-virtual {p0, v2}, Lcom/kakaogame/promotion/KGPromotionData;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/Number;->longValue()J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-wide v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final getLandscapeImageUrl()Ljava/lang/String;
    .locals 2

    .line 689
    invoke-virtual {p0}, Lcom/kakaogame/promotion/KGPromotionData;->getVersion()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    const v0, -0x224ed54c

    invoke-static {v0}, Lcom/liapp/y;->״دش۲ݮ(I)Ljava/lang/String;

    move-result-object v0

    .line 709
    invoke-virtual {p0, v0}, Lcom/kakaogame/promotion/KGPromotionData;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kakaogame/util/json/JSONObject;

    if-eqz v0, :cond_0

    const v1, -0x451573a7

    invoke-static {v1}, Lcom/liapp/y;->ڳݬ٬ۮݪ(I)Ljava/lang/String;

    move-result-object v1

    .line 729
    invoke-virtual {v0, v1}, Lcom/kakaogame/util/json/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_2

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const v0, 0x5d1c35b7

    invoke-static {v0}, Lcom/liapp/y;->ڴݮگ֮ت(I)Ljava/lang/String;

    move-result-object v0

    .line 759
    invoke-virtual {p0, v0}, Lcom/kakaogame/promotion/KGPromotionData;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :cond_2
    :goto_0
    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final getLinkUrl()Ljava/lang/String;
    .locals 1

    const v0, -0x224ed4e4

    invoke-static {v0}, Lcom/liapp/y;->״دش۲ݮ(I)Ljava/lang/String;

    move-result-object v0

    .line 539
    invoke-virtual {p0, v0}, Lcom/kakaogame/promotion/KGPromotionData;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0

    .array-data 1
    .end array-data
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    const v0, -0x451eea5f

    invoke-static {v0}, Lcom/liapp/y;->ڳݬ٬ۮݪ(I)Ljava/lang/String;

    move-result-object v0

    .line 399
    invoke-virtual {p0, v0}, Lcom/kakaogame/promotion/KGPromotionData;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0

    .array-data 1
    .end array-data
.end method

.method public final getPortraitImageUrl()Ljava/lang/String;
    .locals 2

    .line 569
    invoke-virtual {p0}, Lcom/kakaogame/promotion/KGPromotionData;->getVersion()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    const v0, -0x224ed54c

    invoke-static {v0}, Lcom/liapp/y;->״دش۲ݮ(I)Ljava/lang/String;

    move-result-object v0

    .line 589
    invoke-virtual {p0, v0}, Lcom/kakaogame/promotion/KGPromotionData;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kakaogame/util/json/JSONObject;

    if-eqz v0, :cond_0

    const v1, 0x6d000010

    invoke-static {v1}, Lcom/liapp/y;->ٱڳܴڭܩ(I)Ljava/lang/String;

    move-result-object v1

    .line 609
    invoke-virtual {v0, v1}, Lcom/kakaogame/util/json/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_2

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const v0, 0x336ebacb

    invoke-static {v0}, Lcom/liapp/y;->ׯ״ٲ֬ب(I)Ljava/lang/String;

    move-result-object v0

    .line 639
    invoke-virtual {p0, v0}, Lcom/kakaogame/promotion/KGPromotionData;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :cond_2
    :goto_0
    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final getSequence()I
    .locals 2

    const/4 v0, -0x1

    :try_start_0
    const-string v1, "seq"

    .line 289
    invoke-virtual {p0, v1}, Lcom/kakaogame/promotion/KGPromotionData;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return v0

    .array-data 1
    .end array-data
.end method

.method public final getVersion()I
    .locals 2

    const/4 v0, 0x3

    :try_start_0
    const-string/jumbo v1, "version"

    .line 349
    invoke-virtual {p0, v1}, Lcom/kakaogame/promotion/KGPromotionData;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return v0

    nop

    .array-data 1
    .end array-data
.end method
