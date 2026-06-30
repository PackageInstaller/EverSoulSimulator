.class public final synthetic Lcom/kakaogame/ui/DialogManager$CustomAlertDialog$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/kakaogame/ui/DialogManager$CustomAlertDialog;

.field public final synthetic f$1:Lcom/kakaogame/ui/DialogManager$Settings;


# direct methods
.method public synthetic constructor <init>(Lcom/kakaogame/ui/DialogManager$CustomAlertDialog;Lcom/kakaogame/ui/DialogManager$Settings;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/kakaogame/ui/DialogManager$CustomAlertDialog$$ExternalSyntheticLambda0;->f$0:Lcom/kakaogame/ui/DialogManager$CustomAlertDialog;

    iput-object p2, p0, Lcom/kakaogame/ui/DialogManager$CustomAlertDialog$$ExternalSyntheticLambda0;->f$1:Lcom/kakaogame/ui/DialogManager$Settings;

    return-void

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/kakaogame/ui/DialogManager$CustomAlertDialog$$ExternalSyntheticLambda0;->f$0:Lcom/kakaogame/ui/DialogManager$CustomAlertDialog;

    iget-object v1, p0, Lcom/kakaogame/ui/DialogManager$CustomAlertDialog$$ExternalSyntheticLambda0;->f$1:Lcom/kakaogame/ui/DialogManager$Settings;

    invoke-static {v0, v1, p1}, Lcom/kakaogame/ui/DialogManager$CustomAlertDialog;->$r8$lambda$dKQZuEpgl7YfltguvIDhwxQ14R8(Lcom/kakaogame/ui/DialogManager$CustomAlertDialog;Lcom/kakaogame/ui/DialogManager$Settings;Landroid/view/View;)V

    return-void

    .array-data 1
    .end array-data
.end method
