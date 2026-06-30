.class public final Lcom/kakaogame/promotion/EndingPromotionManager;
.super Ljava/lang/Object;
.source "EndingPromotionManager.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kakaogame/promotion/EndingPromotionManager$EndingPopupDialog;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u00c6\u0002\u0018\u00002\u00020\u0001:\u0001\u0011B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u001e\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\t2\u000e\u0010\n\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00050\u000bJ,\u0010\u000c\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\t2\u0008\u0010\r\u001a\u0004\u0018\u00010\u000e2\u0010\u0010\n\u001a\u000c\u0012\u0006\u0012\u0004\u0018\u00010\u0005\u0018\u00010\u000bH\u0002J*\u0010\u000f\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\t2\u0006\u0010\u0010\u001a\u00020\u00052\u0010\u0010\n\u001a\u000c\u0012\u0006\u0012\u0004\u0018\u00010\u0005\u0018\u00010\u000bH\u0002R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0012"
    }
    d2 = {
        "Lcom/kakaogame/promotion/EndingPromotionManager;",
        "",
        "<init>",
        "()V",
        "TAG",
        "",
        "showEndingPromotions",
        "",
        "activity",
        "Landroid/app/Activity;",
        "callback",
        "Lcom/kakaogame/KGResultCallback;",
        "showEndingPromotionPopup",
        "promotion",
        "Lcom/kakaogame/promotion/KGPromotionData;",
        "showClickLink",
        "clickLink",
        "EndingPopupDialog",
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
.field public static final INSTANCE:Lcom/kakaogame/promotion/EndingPromotionManager;

.field private static final TAG:Ljava/lang/String; = "EndingPromotionManager"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/kakaogame/promotion/EndingPromotionManager;

    invoke-direct {v0}, Lcom/kakaogame/promotion/EndingPromotionManager;-><init>()V

    sput-object v0, Lcom/kakaogame/promotion/EndingPromotionManager;->INSTANCE:Lcom/kakaogame/promotion/EndingPromotionManager;

    return-void

    .array-data 1
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .line 359
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void

    .array-data 1
    .end array-data
.end method

.method public static final synthetic access$showClickLink(Lcom/kakaogame/promotion/EndingPromotionManager;Landroid/app/Activity;Ljava/lang/String;Lcom/kakaogame/KGResultCallback;)V
    .locals 0

    .line 359
    invoke-direct {p0, p1, p2, p3}, Lcom/kakaogame/promotion/EndingPromotionManager;->showClickLink(Landroid/app/Activity;Ljava/lang/String;Lcom/kakaogame/KGResultCallback;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method public static final synthetic access$showEndingPromotionPopup(Lcom/kakaogame/promotion/EndingPromotionManager;Landroid/app/Activity;Lcom/kakaogame/promotion/KGPromotionData;Lcom/kakaogame/KGResultCallback;)V
    .locals 0

    .line 359
    invoke-direct {p0, p1, p2, p3}, Lcom/kakaogame/promotion/EndingPromotionManager;->showEndingPromotionPopup(Landroid/app/Activity;Lcom/kakaogame/promotion/KGPromotionData;Lcom/kakaogame/KGResultCallback;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method private final showClickLink(Landroid/app/Activity;Ljava/lang/String;Lcom/kakaogame/KGResultCallback;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/lang/String;",
            "Lcom/kakaogame/KGResultCallback<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 929
    sget-object v0, Lcom/kakaogame/ui/DeepLinkManager;->INSTANCE:Lcom/kakaogame/ui/DeepLinkManager;

    invoke-virtual {v0, p2}, Lcom/kakaogame/ui/DeepLinkManager;->isPlatformDeepLink(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p3, :cond_2

    .line 939
    sget-object v0, Lcom/kakaogame/ui/DeepLinkManager;->INSTANCE:Lcom/kakaogame/ui/DeepLinkManager;

    invoke-virtual {v0, p1, p2}, Lcom/kakaogame/ui/DeepLinkManager;->handlePlatformDeepLink(Landroid/app/Activity;Ljava/lang/String;)Lcom/kakaogame/KGResult;

    move-result-object p1

    .line 929
    invoke-interface {p3, p1}, Lcom/kakaogame/KGResultCallback;->onResult(Lcom/kakaogame/KGResult;)V

    goto :goto_0

    .line 959
    :cond_0
    sget-object v0, Lcom/kakaogame/ui/DeepLinkManager;->INSTANCE:Lcom/kakaogame/ui/DeepLinkManager;

    invoke-virtual {v0, p2}, Lcom/kakaogame/ui/DeepLinkManager;->isDeepLink(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p3, :cond_2

    .line 969
    sget-object p1, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    invoke-virtual {p1, p2}, Lcom/kakaogame/KGResult$Companion;->getSuccessResult(Ljava/lang/Object;)Lcom/kakaogame/KGResult;

    move-result-object p1

    .line 959
    invoke-interface {p3, p1}, Lcom/kakaogame/KGResultCallback;->onResult(Lcom/kakaogame/KGResult;)V

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 1029
    new-instance v0, Lcom/kakaogame/promotion/EndingPromotionManager$showClickLink$1;

    invoke-direct {v0, p3}, Lcom/kakaogame/promotion/EndingPromotionManager$showClickLink$1;-><init>(Lcom/kakaogame/KGResultCallback;)V

    move-object v4, v0

    check-cast v4, Lcom/kakaogame/KGResultCallback;

    const/16 v5, 0xc

    const/4 v6, 0x0

    move-object v0, p1

    move-object v1, p2

    .line 999
    invoke-static/range {v0 .. v6}, Lcom/kakaogame/web/WebDialogManager;->show$default(Landroid/app/Activity;Ljava/lang/String;Lcom/kakaogame/web/WebDialog$Settings;ZLcom/kakaogame/KGResultCallback;ILjava/lang/Object;)V

    :cond_2
    :goto_0
    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method private final showEndingPromotionPopup(Landroid/app/Activity;Lcom/kakaogame/promotion/KGPromotionData;Lcom/kakaogame/KGResultCallback;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lcom/kakaogame/promotion/KGPromotionData;",
            "Lcom/kakaogame/KGResultCallback<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 659
    sget-object v0, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const v2, 0x22590d3e

    invoke-static {v2}, Lcom/liapp/y;->ֲֳگܱޭ(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const v2, 0x54350862

    invoke-static {v2}, Lcom/liapp/y;->׳ֳֳ֬د(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lcom/kakaogame/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 679
    :try_start_0
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getMain()Lkotlinx/coroutines/MainCoroutineDispatcher;

    move-result-object v0

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    invoke-static {v0}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    new-instance v0, Lcom/kakaogame/promotion/EndingPromotionManager$showEndingPromotionPopup$1;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, p3, v1}, Lcom/kakaogame/promotion/EndingPromotionManager$showEndingPromotionPopup$1;-><init>(Landroid/app/Activity;Lcom/kakaogame/promotion/KGPromotionData;Lcom/kakaogame/KGResultCallback;Lkotlin/coroutines/Continuation;)V

    move-object v6, v0

    check-cast v6, Lkotlin/jvm/functions/Function2;

    const/4 v7, 0x3

    const/4 v8, 0x0

    invoke-static/range {v3 .. v8}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 869
    sget-object p2, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    new-instance p3, Ljava/lang/StringBuilder;

    const v0, -0x45156aef

    invoke-static {v0}, Lcom/liapp/y;->ڳݬ٬ۮݪ(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p2, v2, p3, p1}, Lcom/kakaogame/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public final showEndingPromotions(Landroid/app/Activity;Lcom/kakaogame/KGResultCallback;)V
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

    .line 389
    new-instance v0, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v0}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    .line 399
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v1

    check-cast v1, Lkotlin/coroutines/CoroutineContext;

    invoke-static {v1}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    new-instance v1, Lcom/kakaogame/promotion/EndingPromotionManager$showEndingPromotions$1;

    const/4 v5, 0x0

    invoke-direct {v1, p1, v0, p2, v5}, Lcom/kakaogame/promotion/EndingPromotionManager$showEndingPromotions$1;-><init>(Landroid/app/Activity;Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/kakaogame/KGResultCallback;Lkotlin/coroutines/Continuation;)V

    move-object v5, v1

    check-cast v5, Lkotlin/jvm/functions/Function2;

    const/4 v6, 0x3

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void

    .array-data 1
    .end array-data
.end method
