.class public final synthetic Lcom/kakaogame/auth/view/LoginUIManager$showLoginDialog$loginIDPListDialog$1$1$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field public final synthetic f$0:Lkotlin/jvm/functions/Function1;

.field public final synthetic f$1:Lcom/kakaogame/KGResult;


# direct methods
.method public synthetic constructor <init>(Lkotlin/jvm/functions/Function1;Lcom/kakaogame/KGResult;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/kakaogame/auth/view/LoginUIManager$showLoginDialog$loginIDPListDialog$1$1$$ExternalSyntheticLambda0;->f$0:Lkotlin/jvm/functions/Function1;

    iput-object p2, p0, Lcom/kakaogame/auth/view/LoginUIManager$showLoginDialog$loginIDPListDialog$1$1$$ExternalSyntheticLambda0;->f$1:Lcom/kakaogame/KGResult;

    return-void

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public final onDismiss(Landroid/content/DialogInterface;)V
    .locals 2

    iget-object v0, p0, Lcom/kakaogame/auth/view/LoginUIManager$showLoginDialog$loginIDPListDialog$1$1$$ExternalSyntheticLambda0;->f$0:Lkotlin/jvm/functions/Function1;

    iget-object v1, p0, Lcom/kakaogame/auth/view/LoginUIManager$showLoginDialog$loginIDPListDialog$1$1$$ExternalSyntheticLambda0;->f$1:Lcom/kakaogame/KGResult;

    invoke-static {v0, v1, p1}, Lcom/kakaogame/auth/view/LoginUIManager$showLoginDialog$loginIDPListDialog$1$1;->$r8$lambda$Eh-OFnZ_bAJLVVJc14W8-pv2pS8(Lkotlin/jvm/functions/Function1;Lcom/kakaogame/KGResult;Landroid/content/DialogInterface;)V

    return-void

    .array-data 1
    .end array-data
.end method
