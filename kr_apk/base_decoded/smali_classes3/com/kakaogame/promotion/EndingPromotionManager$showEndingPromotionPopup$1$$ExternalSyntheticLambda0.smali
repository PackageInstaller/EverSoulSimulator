.class public final synthetic Lcom/kakaogame/promotion/EndingPromotionManager$showEndingPromotionPopup$1$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field public final synthetic f$0:Lcom/kakaogame/promotion/EndingPromotionManager$EndingPopupDialog;

.field public final synthetic f$1:Lcom/kakaogame/KGResultCallback;

.field public final synthetic f$2:Landroid/app/Activity;


# direct methods
.method public synthetic constructor <init>(Lcom/kakaogame/promotion/EndingPromotionManager$EndingPopupDialog;Lcom/kakaogame/KGResultCallback;Landroid/app/Activity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/kakaogame/promotion/EndingPromotionManager$showEndingPromotionPopup$1$$ExternalSyntheticLambda0;->f$0:Lcom/kakaogame/promotion/EndingPromotionManager$EndingPopupDialog;

    iput-object p2, p0, Lcom/kakaogame/promotion/EndingPromotionManager$showEndingPromotionPopup$1$$ExternalSyntheticLambda0;->f$1:Lcom/kakaogame/KGResultCallback;

    iput-object p3, p0, Lcom/kakaogame/promotion/EndingPromotionManager$showEndingPromotionPopup$1$$ExternalSyntheticLambda0;->f$2:Landroid/app/Activity;

    return-void

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public final onDismiss(Landroid/content/DialogInterface;)V
    .locals 3

    iget-object v0, p0, Lcom/kakaogame/promotion/EndingPromotionManager$showEndingPromotionPopup$1$$ExternalSyntheticLambda0;->f$0:Lcom/kakaogame/promotion/EndingPromotionManager$EndingPopupDialog;

    iget-object v1, p0, Lcom/kakaogame/promotion/EndingPromotionManager$showEndingPromotionPopup$1$$ExternalSyntheticLambda0;->f$1:Lcom/kakaogame/KGResultCallback;

    iget-object v2, p0, Lcom/kakaogame/promotion/EndingPromotionManager$showEndingPromotionPopup$1$$ExternalSyntheticLambda0;->f$2:Landroid/app/Activity;

    invoke-static {v0, v1, v2, p1}, Lcom/kakaogame/promotion/EndingPromotionManager$showEndingPromotionPopup$1;->$r8$lambda$xjTaq3L91jfmDKi6TeVd4q-9qmY(Lcom/kakaogame/promotion/EndingPromotionManager$EndingPopupDialog;Lcom/kakaogame/KGResultCallback;Landroid/app/Activity;Landroid/content/DialogInterface;)V

    return-void

    .array-data 1
    .end array-data
.end method
