.class public final synthetic Lcom/kakaogame/ui/CustomProgressDialog$CustomProgressDialogImpl$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/content/DialogInterface$OnShowListener;


# instance fields
.field public final synthetic f$0:Lcom/kakaogame/databinding/ZinnySdkProgressBinding;

.field public final synthetic f$1:Landroid/view/animation/Animation;


# direct methods
.method public synthetic constructor <init>(Lcom/kakaogame/databinding/ZinnySdkProgressBinding;Landroid/view/animation/Animation;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/kakaogame/ui/CustomProgressDialog$CustomProgressDialogImpl$$ExternalSyntheticLambda0;->f$0:Lcom/kakaogame/databinding/ZinnySdkProgressBinding;

    iput-object p2, p0, Lcom/kakaogame/ui/CustomProgressDialog$CustomProgressDialogImpl$$ExternalSyntheticLambda0;->f$1:Landroid/view/animation/Animation;

    return-void

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public final onShow(Landroid/content/DialogInterface;)V
    .locals 2

    iget-object v0, p0, Lcom/kakaogame/ui/CustomProgressDialog$CustomProgressDialogImpl$$ExternalSyntheticLambda0;->f$0:Lcom/kakaogame/databinding/ZinnySdkProgressBinding;

    iget-object v1, p0, Lcom/kakaogame/ui/CustomProgressDialog$CustomProgressDialogImpl$$ExternalSyntheticLambda0;->f$1:Landroid/view/animation/Animation;

    invoke-static {v0, v1, p1}, Lcom/kakaogame/ui/CustomProgressDialog$CustomProgressDialogImpl;->$r8$lambda$kLz1djZ9ohM04k0HXNVYAO1GuAc(Lcom/kakaogame/databinding/ZinnySdkProgressBinding;Landroid/view/animation/Animation;Landroid/content/DialogInterface;)V

    return-void

    .array-data 1
    .end array-data
.end method
