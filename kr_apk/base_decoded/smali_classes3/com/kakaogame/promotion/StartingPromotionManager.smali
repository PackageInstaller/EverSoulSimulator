.class public final Lcom/kakaogame/promotion/StartingPromotionManager;
.super Ljava/lang/Object;
.source "StartingPromotionManager.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kakaogame/promotion/StartingPromotionManager$HidePrefManager;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000T\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\u0008\u00c6\u0002\u0018\u00002\u00020\u0001:\u0001\u001eB\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0010\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000bH\u0007J\u0018\u0010\u000c\u001a\u00020\u00052\u0008\u0010\n\u001a\u0004\u0018\u00010\u000b2\u0006\u0010\r\u001a\u00020\u000eJ\u001e\u0010\u000f\u001a\u00020\t2\u0006\u0010\u0010\u001a\u00020\u00112\u000e\u0010\u0012\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00050\u0013J&\u0010\u0014\u001a\u00020\t2\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0015\u001a\u00020\u000e2\u000e\u0010\u0012\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00050\u0013J.\u0010\u0016\u001a\u00020\t2\u0006\u0010\u0010\u001a\u00020\u00112\u000c\u0010\u0017\u001a\u0008\u0012\u0004\u0012\u00020\u00190\u00182\u000e\u0010\u0012\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00050\u0013H\u0003J.\u0010\u001a\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00050\u001b2\u0006\u0010\u0010\u001a\u00020\u00112\u000c\u0010\u0017\u001a\u0008\u0012\u0004\u0012\u00020\u00190\u00182\u0006\u0010\u001c\u001a\u00020\u001dH\u0002R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082T\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0006\u001a\u0004\u0018\u00010\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001f"
    }
    d2 = {
        "Lcom/kakaogame/promotion/StartingPromotionManager;",
        "",
        "<init>",
        "()V",
        "TAG",
        "",
        "bgDialog",
        "Landroid/app/Dialog;",
        "clearPreference",
        "",
        "context",
        "Landroid/content/Context;",
        "getErrorMessage",
        "code",
        "",
        "showStartPromotions",
        "activity",
        "Landroid/app/Activity;",
        "callback",
        "Lcom/kakaogame/KGResultCallback;",
        "showStartPromotion",
        "seq",
        "showStartingPromotionPopups",
        "promotionList",
        "",
        "Lcom/kakaogame/promotion/KGPromotionData;",
        "showStartingPromotionPopupsInternal",
        "Lcom/kakaogame/KGResult;",
        "screenPortrait",
        "",
        "HidePrefManager",
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
.field public static final INSTANCE:Lcom/kakaogame/promotion/StartingPromotionManager;

.field private static final TAG:Ljava/lang/String; = "StartingPromotionManager"

.field private static bgDialog:Landroid/app/Dialog;


# direct methods
.method public static synthetic $r8$lambda$Dz-znRWVKlast89nggnCmG4odD8(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/kakaogame/promotion/StartingPromotionManager;->showStartingPromotionPopupsInternal$lambda$0(Landroid/app/Activity;Ljava/lang/String;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/kakaogame/promotion/StartingPromotionManager;

    invoke-direct {v0}, Lcom/kakaogame/promotion/StartingPromotionManager;-><init>()V

    sput-object v0, Lcom/kakaogame/promotion/StartingPromotionManager;->INSTANCE:Lcom/kakaogame/promotion/StartingPromotionManager;

    return-void

    .array-data 1
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .line 319
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void

    .array-data 1
    .end array-data
.end method

.method public static final synthetic access$getBgDialog$p()Landroid/app/Dialog;
    .locals 1

    .line 319
    sget-object v0, Lcom/kakaogame/promotion/StartingPromotionManager;->bgDialog:Landroid/app/Dialog;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public static final synthetic access$setBgDialog$p(Landroid/app/Dialog;)V
    .locals 0

    .line 319
    sput-object p0, Lcom/kakaogame/promotion/StartingPromotionManager;->bgDialog:Landroid/app/Dialog;

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public static final synthetic access$showStartingPromotionPopups(Lcom/kakaogame/promotion/StartingPromotionManager;Landroid/app/Activity;Ljava/util/List;Lcom/kakaogame/KGResultCallback;)V
    .locals 0

    .line 319
    invoke-direct {p0, p1, p2, p3}, Lcom/kakaogame/promotion/StartingPromotionManager;->showStartingPromotionPopups(Landroid/app/Activity;Ljava/util/List;Lcom/kakaogame/KGResultCallback;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method public static final clearPreference(Landroid/content/Context;)V
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const v0, -0x451e0c57

    invoke-static {v0}, Lcom/liapp/y;->ڳݬ٬ۮݪ(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 379
    sget-object v0, Lcom/kakaogame/promotion/StartingPromotionManager$HidePrefManager;->INSTANCE:Lcom/kakaogame/promotion/StartingPromotionManager$HidePrefManager;

    invoke-virtual {v0, p0}, Lcom/kakaogame/promotion/StartingPromotionManager$HidePrefManager;->clearDate(Landroid/content/Context;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method private final showStartingPromotionPopups(Landroid/app/Activity;Ljava/util/List;Lcom/kakaogame/KGResultCallback;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/List<",
            "Lcom/kakaogame/promotion/KGPromotionData;",
            ">;",
            "Lcom/kakaogame/KGResultCallback<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const v0, 0x543554aa

    invoke-static {v0}, Lcom/liapp/y;->׳ֳֳ֬د(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x2255cad6

    invoke-static {v1}, Lcom/liapp/y;->ֲֳگܱޭ(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x5d1c7f9f

    invoke-static {v2}, Lcom/liapp/y;->ڴݮگ֮ت(I)Ljava/lang/String;

    move-result-object v2

    .line 1189
    sget-object v3, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    const v5, 0x7d7c5735

    invoke-static {v5}, Lcom/liapp/y;->حֲݴܳޯ(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const v5, 0x336ef043

    invoke-static {v5}, Lcom/liapp/y;->ׯ״ٲ֬ب(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5, v4}, Lcom/kakaogame/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1199
    invoke-virtual {p1}, Landroid/app/Activity;->getRequestedOrientation()I

    move-result v3

    .line 1219
    :try_start_0
    sget-object v4, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v5, v2}, Lcom/kakaogame/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1229
    invoke-static {p1}, Lcom/kakaogame/util/DisplayUtil;->isScreenPortrait(Landroid/app/Activity;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v4, 0x7

    .line 1249
    invoke-virtual {p1, v4}, Landroid/app/Activity;->setRequestedOrientation(I)V

    goto :goto_0

    :cond_0
    const/4 v4, 0x6

    .line 1269
    invoke-virtual {p1, v4}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 1289
    :goto_0
    sget-object v4, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    if-eqz v2, :cond_1

    const-string/jumbo v6, "true"

    goto :goto_1

    :cond_1
    const-string v6, "false"

    :goto_1
    invoke-virtual {v0, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v5, v0}, Lcom/kakaogame/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1309
    invoke-direct {p0, p1, p2, v2}, Lcom/kakaogame/promotion/StartingPromotionManager;->showStartingPromotionPopupsInternal(Landroid/app/Activity;Ljava/util/List;Z)Lcom/kakaogame/KGResult;

    move-result-object p2

    .line 1319
    invoke-interface {p3, p2}, Lcom/kakaogame/KGResultCallback;->onResult(Lcom/kakaogame/KGResult;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p2

    goto :goto_3

    :catch_0
    move-exception p2

    .line 1339
    :try_start_1
    sget-object v0, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v2, p2

    check-cast v2, Ljava/lang/Throwable;

    invoke-virtual {v0, v5, v1, v2}, Lcom/kakaogame/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1349
    sget-object v0, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    invoke-virtual {p2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p2

    const/16 v1, 0xfa1

    invoke-virtual {v0, v1, p2}, Lcom/kakaogame/KGResult$Companion;->getResult(ILjava/lang/String;)Lcom/kakaogame/KGResult;

    move-result-object p2

    .line 1359
    invoke-interface {p3, p2}, Lcom/kakaogame/KGResultCallback;->onResult(Lcom/kakaogame/KGResult;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1379
    :goto_2
    invoke-virtual {p1, v3}, Landroid/app/Activity;->setRequestedOrientation(I)V

    return-void

    :goto_3
    invoke-virtual {p1, v3}, Landroid/app/Activity;->setRequestedOrientation(I)V

    throw p2

    .array-data 1
    .end array-data
.end method

.method private final showStartingPromotionPopupsInternal(Landroid/app/Activity;Ljava/util/List;Z)Lcom/kakaogame/KGResult;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/List<",
            "Lcom/kakaogame/promotion/KGPromotionData;",
            ">;Z)",
            "Lcom/kakaogame/KGResult<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p1

    .line 1459
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    check-cast v1, Ljava/util/List;

    .line 1489
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x0

    const v5, 0x336ef043

    invoke-static {v5}, Lcom/liapp/y;->ׯ״ٲ֬ب(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/kakaogame/promotion/KGPromotionData;

    .line 1499
    sget-object v7, Lcom/kakaogame/promotion/StartingPromotionManager$HidePrefManager;->INSTANCE:Lcom/kakaogame/promotion/StartingPromotionManager$HidePrefManager;

    move-object v8, v0

    check-cast v8, Landroid/content/Context;

    invoke-virtual {v3}, Lcom/kakaogame/promotion/KGPromotionData;->getSequence()I

    move-result v9

    invoke-virtual {v7, v8, v9}, Lcom/kakaogame/promotion/StartingPromotionManager$HidePrefManager;->isHideDate(Landroid/content/Context;I)Z

    move-result v7

    if-nez v7, :cond_0

    if-eqz p3, :cond_1

    .line 1519
    invoke-virtual {v3}, Lcom/kakaogame/promotion/KGPromotionData;->getPortraitImageUrl()Ljava/lang/String;

    move-result-object v7

    goto :goto_1

    .line 1539
    :cond_1
    invoke-virtual {v3}, Lcom/kakaogame/promotion/KGPromotionData;->getLandscapeImageUrl()Ljava/lang/String;

    move-result-object v7

    .line 1559
    :goto_1
    sget-object v8, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    new-instance v9, Ljava/lang/StringBuilder;

    const v10, 0x6d004d58

    invoke-static {v10}, Lcom/liapp/y;->ٱڳܴڭܩ(I)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v5, v9}, Lcom/kakaogame/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1569
    move-object v5, v7

    check-cast v5, Ljava/lang/CharSequence;

    if-eqz v5, :cond_2

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-nez v5, :cond_3

    :cond_2
    move v4, v6

    :cond_3
    if-nez v4, :cond_0

    .line 1579
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1599
    new-instance v3, Lcom/kakaogame/promotion/StartingPromotionManager$$ExternalSyntheticLambda0;

    invoke-direct {v3, v0, v7}, Lcom/kakaogame/promotion/StartingPromotionManager$$ExternalSyntheticLambda0;-><init>(Landroid/app/Activity;Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 1649
    :cond_4
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    const-string v3, ""

    if-eqz v2, :cond_5

    .line 1659
    sget-object v0, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    const v1, 0x6d004d38

    invoke-static {v1}, Lcom/liapp/y;->ٱڳܴڭܩ(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v5, v1}, Lcom/kakaogame/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1669
    sget-object v0, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    invoke-virtual {v0, v3}, Lcom/kakaogame/KGResult$Companion;->getSuccessResult(Ljava/lang/Object;)Lcom/kakaogame/KGResult;

    move-result-object v0

    return-object v0

    .line 1699
    :cond_5
    sget-object v2, Lcom/kakaogame/util/MutexLock;->Companion:Lcom/kakaogame/util/MutexLock$Companion;

    invoke-virtual {v2}, Lcom/kakaogame/util/MutexLock$Companion;->createLock()Lcom/kakaogame/util/MutexLock;

    move-result-object v2

    .line 1709
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const/4 v7, 0x0

    if-eqz v5, :cond_b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/kakaogame/promotion/KGPromotionData;

    .line 1719
    sget-object v8, Lcom/kakaogame/util/MutexLock;->Companion:Lcom/kakaogame/util/MutexLock$Companion;

    invoke-virtual {v8}, Lcom/kakaogame/util/MutexLock$Companion;->createLock()Lcom/kakaogame/util/MutexLock;

    move-result-object v8

    .line 1729
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getMain()Lkotlinx/coroutines/MainCoroutineDispatcher;

    move-result-object v9

    check-cast v9, Lkotlin/coroutines/CoroutineContext;

    invoke-static {v9}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v10

    const/4 v11, 0x0

    const/4 v12, 0x0

    new-instance v9, Lcom/kakaogame/promotion/StartingPromotionManager$showStartingPromotionPopupsInternal$2;

    invoke-direct {v9, v5, v0, v8, v7}, Lcom/kakaogame/promotion/StartingPromotionManager$showStartingPromotionPopupsInternal$2;-><init>(Lcom/kakaogame/promotion/KGPromotionData;Landroid/app/Activity;Lcom/kakaogame/util/MutexLock;Lkotlin/coroutines/Continuation;)V

    move-object v13, v9

    check-cast v13, Lkotlin/jvm/functions/Function2;

    const/4 v14, 0x3

    const/4 v15, 0x0

    invoke-static/range {v10 .. v15}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    const-wide/16 v9, 0x0

    .line 2009
    invoke-static {v8, v9, v10, v6, v7}, Lcom/kakaogame/util/MutexLock;->lock$default(Lcom/kakaogame/util/MutexLock;JILjava/lang/Object;)V

    .line 2019
    invoke-virtual {v8}, Lcom/kakaogame/util/MutexLock;->getContent()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 2029
    move-object v8, v5

    check-cast v8, Ljava/lang/CharSequence;

    if-eqz v8, :cond_8

    invoke-interface {v8}, Ljava/lang/CharSequence;->length()I

    move-result v8

    if-nez v8, :cond_7

    goto :goto_2

    :cond_7
    move v8, v4

    goto :goto_3

    :cond_8
    :goto_2
    move v8, v6

    :goto_3
    if-nez v8, :cond_6

    .line 2049
    sget-object v1, Lcom/kakaogame/ui/DeepLinkManager;->INSTANCE:Lcom/kakaogame/ui/DeepLinkManager;

    invoke-virtual {v1, v5}, Lcom/kakaogame/ui/DeepLinkManager;->isPlatformDeepLink(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    sget-object v1, Lcom/kakaogame/ui/DeepLinkManager;->INSTANCE:Lcom/kakaogame/ui/DeepLinkManager;

    invoke-virtual {v1, v0, v5}, Lcom/kakaogame/ui/DeepLinkManager;->handlePlatformDeepLink(Landroid/app/Activity;Ljava/lang/String;)Lcom/kakaogame/KGResult;

    move-result-object v0

    goto :goto_4

    .line 2059
    :cond_9
    sget-object v1, Lcom/kakaogame/ui/DeepLinkManager;->INSTANCE:Lcom/kakaogame/ui/DeepLinkManager;

    invoke-virtual {v1, v5}, Lcom/kakaogame/ui/DeepLinkManager;->isDeepLink(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    sget-object v0, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    invoke-virtual {v0, v5}, Lcom/kakaogame/KGResult$Companion;->getSuccessResult(Ljava/lang/Object;)Lcom/kakaogame/KGResult;

    move-result-object v0

    goto :goto_4

    .line 2069
    :cond_a
    new-instance v1, Lcom/kakaogame/promotion/StartingPromotionManager$showStartingPromotionPopupsInternal$result$1;

    invoke-direct {v1, v0, v5, v7}, Lcom/kakaogame/promotion/StartingPromotionManager$showStartingPromotionPopupsInternal$result$1;-><init>(Landroid/app/Activity;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    invoke-static {v7, v1, v6, v7}, Lkotlinx/coroutines/BuildersKt;->runBlocking$default(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kakaogame/KGResult;

    .line 2139
    :goto_4
    invoke-virtual {v2, v0}, Lcom/kakaogame/util/MutexLock;->setContent(Ljava/lang/Object;)V

    .line 2149
    invoke-virtual {v2}, Lcom/kakaogame/util/MutexLock;->unlock()V

    .line 2189
    :cond_b
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getMain()Lkotlinx/coroutines/MainCoroutineDispatcher;

    move-result-object v0

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    invoke-static {v0}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    new-instance v0, Lcom/kakaogame/promotion/StartingPromotionManager$showStartingPromotionPopupsInternal$3;

    invoke-direct {v0, v7}, Lcom/kakaogame/promotion/StartingPromotionManager$showStartingPromotionPopupsInternal$3;-><init>(Lkotlin/coroutines/Continuation;)V

    move-object v11, v0

    check-cast v11, Lkotlin/jvm/functions/Function2;

    const/4 v12, 0x3

    const/4 v13, 0x0

    invoke-static/range {v8 .. v13}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 2249
    invoke-virtual {v2}, Lcom/kakaogame/util/MutexLock;->getContent()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kakaogame/KGResult;

    if-nez v0, :cond_c

    .line 2269
    sget-object v0, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    invoke-virtual {v0, v3}, Lcom/kakaogame/KGResult$Companion;->getSuccessResult(Ljava/lang/Object;)Lcom/kakaogame/KGResult;

    move-result-object v0

    :cond_c
    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method private static final showStartingPromotionPopupsInternal$lambda$0(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 0

    .line 1609
    invoke-static {p0}, Lcom/bumptech/glide/Glide;->with(Landroid/app/Activity;)Lcom/bumptech/glide/RequestManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/bumptech/glide/RequestBuilder;->preload()Lcom/bumptech/glide/request/target/Target;

    return-void

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public final getErrorMessage(Landroid/content/Context;I)Ljava/lang/String;
    .locals 3

    const/16 v0, 0x196

    if-ne p2, v0, :cond_0

    .line 449
    sget p2, Lcom/kakaogame/R$string;->zinny_sdk_promotion_error_not_exist:I

    .line 429
    invoke-static {p1, p2}, Lcom/kakaogame/util/ResourceUtil;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 469
    :cond_0
    sget v0, Lcom/kakaogame/R$string;->zinny_sdk_error_msg_common:I

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v1, v2

    invoke-static {p1, v0, v1}, Lcom/kakaogame/util/ResourceUtil;->getString(Landroid/content/Context;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    :goto_0
    return-object p1

    .array-data 1
    .end array-data
.end method

.method public final showStartPromotion(Landroid/app/Activity;ILcom/kakaogame/KGResultCallback;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "I",
            "Lcom/kakaogame/KGResultCallback<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const v0, 0x543d14da

    invoke-static {v0}, Lcom/liapp/y;->׳ֳֳ֬د(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const v0, 0x6d0d7b60

    invoke-static {v0}, Lcom/liapp/y;->ٱڳܴڭܩ(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 809
    new-instance v4, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v4}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    .line 819
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    invoke-static {v0}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v0

    const/4 v7, 0x0

    const/4 v8, 0x0

    new-instance v9, Lcom/kakaogame/promotion/StartingPromotionManager$showStartPromotion$1;

    const/4 v6, 0x0

    move-object v1, v9

    move-object v2, p3

    move-object v3, p1

    move v5, p2

    invoke-direct/range {v1 .. v6}, Lcom/kakaogame/promotion/StartingPromotionManager$showStartPromotion$1;-><init>(Lcom/kakaogame/KGResultCallback;Landroid/app/Activity;Lkotlin/jvm/internal/Ref$ObjectRef;ILkotlin/coroutines/Continuation;)V

    move-object p1, v9

    check-cast p1, Lkotlin/jvm/functions/Function2;

    const/4 v9, 0x3

    const/4 v10, 0x0

    move-object v5, v0

    move-object v6, v7

    move-object v7, v8

    move-object v8, p1

    invoke-static/range {v5 .. v10}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void

    .array-data 1
    .end array-data
.end method

.method public final showStartPromotions(Landroid/app/Activity;Lcom/kakaogame/KGResultCallback;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lcom/kakaogame/KGResultCallback<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const v0, 0x543d14da

    invoke-static {v0}, Lcom/liapp/y;->׳ֳֳ֬د(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const v0, 0x6d0d7b60

    invoke-static {v0}, Lcom/liapp/y;->ٱڳܴڭܩ(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 519
    new-instance v0, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v0}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    .line 529
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v1

    check-cast v1, Lkotlin/coroutines/CoroutineContext;

    invoke-static {v1}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    new-instance v1, Lcom/kakaogame/promotion/StartingPromotionManager$showStartPromotions$1;

    const/4 v5, 0x0

    invoke-direct {v1, p2, p1, v0, v5}, Lcom/kakaogame/promotion/StartingPromotionManager$showStartPromotions$1;-><init>(Lcom/kakaogame/KGResultCallback;Landroid/app/Activity;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/coroutines/Continuation;)V

    move-object v5, v1

    check-cast v5, Lkotlin/jvm/functions/Function2;

    const/4 v6, 0x3

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void

    .array-data 1
    .end array-data
.end method
