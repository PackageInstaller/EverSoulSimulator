.class public final synthetic Lcom/kakaogame/web/WebDialogManager$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field public final synthetic f$0:Lcom/kakaogame/web/WebDialog;

.field public final synthetic f$1:Lcom/kakaogame/KGResultCallback;


# direct methods
.method public synthetic constructor <init>(Lcom/kakaogame/web/WebDialog;Lcom/kakaogame/KGResultCallback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/kakaogame/web/WebDialogManager$$ExternalSyntheticLambda1;->f$0:Lcom/kakaogame/web/WebDialog;

    iput-object p2, p0, Lcom/kakaogame/web/WebDialogManager$$ExternalSyntheticLambda1;->f$1:Lcom/kakaogame/KGResultCallback;

    return-void

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public final onDismiss(Landroid/content/DialogInterface;)V
    .locals 2

    iget-object v0, p0, Lcom/kakaogame/web/WebDialogManager$$ExternalSyntheticLambda1;->f$0:Lcom/kakaogame/web/WebDialog;

    iget-object v1, p0, Lcom/kakaogame/web/WebDialogManager$$ExternalSyntheticLambda1;->f$1:Lcom/kakaogame/KGResultCallback;

    invoke-static {v0, v1, p1}, Lcom/kakaogame/web/WebDialogManager;->$r8$lambda$sqkwwQIauQmg4OOccHQaSUoRBbg(Lcom/kakaogame/web/WebDialog;Lcom/kakaogame/KGResultCallback;Landroid/content/DialogInterface;)V

    return-void

    .array-data 1
    .end array-data
.end method
