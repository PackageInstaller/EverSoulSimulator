.class public final Lcom/kakaogame/promotion/StartingPromotionManager$showStartingPromotionPopupsInternal$2$callback$1;
.super Ljava/lang/Object;
.source "StartingPromotionManager.kt"

# interfaces
.implements Lcom/kakaogame/promotion/view/StartingPromotionDialog$StartingPromotionDialogListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kakaogame/promotion/StartingPromotionManager$showStartingPromotionPopupsInternal$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0019\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0008\u0010\u0002\u001a\u00020\u0003H\u0016J\u0008\u0010\u0004\u001a\u00020\u0003H\u0016J\u0012\u0010\u0005\u001a\u00020\u00032\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0007H\u0016\u00a8\u0006\u0008"
    }
    d2 = {
        "com/kakaogame/promotion/StartingPromotionManager$showStartingPromotionPopupsInternal$2$callback$1",
        "Lcom/kakaogame/promotion/view/StartingPromotionDialog$StartingPromotionDialogListener;",
        "onDismiss",
        "",
        "onCheckClicked",
        "onImageLinkClicked",
        "clickLink",
        "",
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


# instance fields
.field final synthetic $activity:Landroid/app/Activity;

.field final synthetic $dismissLock:Lcom/kakaogame/util/MutexLock;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/kakaogame/util/MutexLock<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $promotion:Lcom/kakaogame/promotion/KGPromotionData;


# direct methods
.method constructor <init>(Lcom/kakaogame/util/MutexLock;Landroid/app/Activity;Lcom/kakaogame/promotion/KGPromotionData;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/kakaogame/util/MutexLock<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/app/Activity;",
            "Lcom/kakaogame/promotion/KGPromotionData;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/kakaogame/promotion/StartingPromotionManager$showStartingPromotionPopupsInternal$2$callback$1;->$dismissLock:Lcom/kakaogame/util/MutexLock;

    iput-object p2, p0, Lcom/kakaogame/promotion/StartingPromotionManager$showStartingPromotionPopupsInternal$2$callback$1;->$activity:Landroid/app/Activity;

    iput-object p3, p0, Lcom/kakaogame/promotion/StartingPromotionManager$showStartingPromotionPopupsInternal$2$callback$1;->$promotion:Lcom/kakaogame/promotion/KGPromotionData;

    .line 1769
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public onCheckClicked()V
    .locals 3

    .line 1839
    sget-object v0, Lcom/kakaogame/promotion/StartingPromotionManager$HidePrefManager;->INSTANCE:Lcom/kakaogame/promotion/StartingPromotionManager$HidePrefManager;

    iget-object v1, p0, Lcom/kakaogame/promotion/StartingPromotionManager$showStartingPromotionPopupsInternal$2$callback$1;->$activity:Landroid/app/Activity;

    check-cast v1, Landroid/content/Context;

    iget-object v2, p0, Lcom/kakaogame/promotion/StartingPromotionManager$showStartingPromotionPopupsInternal$2$callback$1;->$promotion:Lcom/kakaogame/promotion/KGPromotionData;

    invoke-virtual {v2}, Lcom/kakaogame/promotion/KGPromotionData;->getSequence()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/kakaogame/promotion/StartingPromotionManager$HidePrefManager;->saveHideDate(Landroid/content/Context;I)V

    .line 1849
    iget-object v0, p0, Lcom/kakaogame/promotion/StartingPromotionManager$showStartingPromotionPopupsInternal$2$callback$1;->$dismissLock:Lcom/kakaogame/util/MutexLock;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/kakaogame/util/MutexLock;->setContent(Ljava/lang/Object;)V

    .line 1859
    iget-object v0, p0, Lcom/kakaogame/promotion/StartingPromotionManager$showStartingPromotionPopupsInternal$2$callback$1;->$dismissLock:Lcom/kakaogame/util/MutexLock;

    invoke-virtual {v0}, Lcom/kakaogame/util/MutexLock;->unlock()V

    return-void

    .array-data 1
    .end array-data
.end method

.method public onDismiss()V
    .locals 2

    .line 1789
    iget-object v0, p0, Lcom/kakaogame/promotion/StartingPromotionManager$showStartingPromotionPopupsInternal$2$callback$1;->$dismissLock:Lcom/kakaogame/util/MutexLock;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/kakaogame/util/MutexLock;->setContent(Ljava/lang/Object;)V

    .line 1799
    iget-object v0, p0, Lcom/kakaogame/promotion/StartingPromotionManager$showStartingPromotionPopupsInternal$2$callback$1;->$dismissLock:Lcom/kakaogame/util/MutexLock;

    invoke-virtual {v0}, Lcom/kakaogame/util/MutexLock;->unlock()V

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public onImageLinkClicked(Ljava/lang/String;)V
    .locals 1

    .line 1899
    iget-object v0, p0, Lcom/kakaogame/promotion/StartingPromotionManager$showStartingPromotionPopupsInternal$2$callback$1;->$dismissLock:Lcom/kakaogame/util/MutexLock;

    invoke-virtual {v0, p1}, Lcom/kakaogame/util/MutexLock;->setContent(Ljava/lang/Object;)V

    .line 1909
    iget-object p1, p0, Lcom/kakaogame/promotion/StartingPromotionManager$showStartingPromotionPopupsInternal$2$callback$1;->$dismissLock:Lcom/kakaogame/util/MutexLock;

    invoke-virtual {p1}, Lcom/kakaogame/util/MutexLock;->unlock()V

    return-void

    nop

    .array-data 1
    .end array-data
.end method
