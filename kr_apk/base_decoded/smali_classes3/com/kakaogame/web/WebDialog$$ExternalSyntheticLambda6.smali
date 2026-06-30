.class public final synthetic Lcom/kakaogame/web/WebDialog$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# instance fields
.field public final synthetic f$0:Landroid/view/View;

.field public final synthetic f$1:Landroid/app/Activity;

.field public final synthetic f$2:Lcom/kakaogame/web/WebDialog;

.field public final synthetic f$3:Landroid/view/View;


# direct methods
.method public synthetic constructor <init>(Landroid/view/View;Landroid/app/Activity;Lcom/kakaogame/web/WebDialog;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/kakaogame/web/WebDialog$$ExternalSyntheticLambda6;->f$0:Landroid/view/View;

    iput-object p2, p0, Lcom/kakaogame/web/WebDialog$$ExternalSyntheticLambda6;->f$1:Landroid/app/Activity;

    iput-object p3, p0, Lcom/kakaogame/web/WebDialog$$ExternalSyntheticLambda6;->f$2:Lcom/kakaogame/web/WebDialog;

    iput-object p4, p0, Lcom/kakaogame/web/WebDialog$$ExternalSyntheticLambda6;->f$3:Landroid/view/View;

    return-void

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public final onGlobalLayout()V
    .locals 4

    iget-object v0, p0, Lcom/kakaogame/web/WebDialog$$ExternalSyntheticLambda6;->f$0:Landroid/view/View;

    iget-object v1, p0, Lcom/kakaogame/web/WebDialog$$ExternalSyntheticLambda6;->f$1:Landroid/app/Activity;

    iget-object v2, p0, Lcom/kakaogame/web/WebDialog$$ExternalSyntheticLambda6;->f$2:Lcom/kakaogame/web/WebDialog;

    iget-object v3, p0, Lcom/kakaogame/web/WebDialog$$ExternalSyntheticLambda6;->f$3:Landroid/view/View;

    invoke-static {v0, v1, v2, v3}, Lcom/kakaogame/web/WebDialog;->$r8$lambda$HTn1Ou0ctiKiSgAJvtQIq66a348(Landroid/view/View;Landroid/app/Activity;Lcom/kakaogame/web/WebDialog;Landroid/view/View;)V

    return-void

    .array-data 1
    .end array-data
.end method
