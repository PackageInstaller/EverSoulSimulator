.class public final synthetic Lcom/kakaogame/auth/view/LoginUIManager$showLoginDialog$loginIDPListDialog$1$1$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field public final synthetic f$0:Landroid/app/Activity;

.field public final synthetic f$1:Ljava/util/List;

.field public final synthetic f$2:Lcom/kakaogame/auth/view/LoginUIManager$RequestType;

.field public final synthetic f$3:I

.field public final synthetic f$4:Lkotlin/jvm/functions/Function1;


# direct methods
.method public synthetic constructor <init>(Landroid/app/Activity;Ljava/util/List;Lcom/kakaogame/auth/view/LoginUIManager$RequestType;ILkotlin/jvm/functions/Function1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/kakaogame/auth/view/LoginUIManager$showLoginDialog$loginIDPListDialog$1$1$$ExternalSyntheticLambda1;->f$0:Landroid/app/Activity;

    iput-object p2, p0, Lcom/kakaogame/auth/view/LoginUIManager$showLoginDialog$loginIDPListDialog$1$1$$ExternalSyntheticLambda1;->f$1:Ljava/util/List;

    iput-object p3, p0, Lcom/kakaogame/auth/view/LoginUIManager$showLoginDialog$loginIDPListDialog$1$1$$ExternalSyntheticLambda1;->f$2:Lcom/kakaogame/auth/view/LoginUIManager$RequestType;

    iput p4, p0, Lcom/kakaogame/auth/view/LoginUIManager$showLoginDialog$loginIDPListDialog$1$1$$ExternalSyntheticLambda1;->f$3:I

    iput-object p5, p0, Lcom/kakaogame/auth/view/LoginUIManager$showLoginDialog$loginIDPListDialog$1$1$$ExternalSyntheticLambda1;->f$4:Lkotlin/jvm/functions/Function1;

    return-void

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public final onDismiss(Landroid/content/DialogInterface;)V
    .locals 6

    iget-object v0, p0, Lcom/kakaogame/auth/view/LoginUIManager$showLoginDialog$loginIDPListDialog$1$1$$ExternalSyntheticLambda1;->f$0:Landroid/app/Activity;

    iget-object v1, p0, Lcom/kakaogame/auth/view/LoginUIManager$showLoginDialog$loginIDPListDialog$1$1$$ExternalSyntheticLambda1;->f$1:Ljava/util/List;

    iget-object v2, p0, Lcom/kakaogame/auth/view/LoginUIManager$showLoginDialog$loginIDPListDialog$1$1$$ExternalSyntheticLambda1;->f$2:Lcom/kakaogame/auth/view/LoginUIManager$RequestType;

    iget v3, p0, Lcom/kakaogame/auth/view/LoginUIManager$showLoginDialog$loginIDPListDialog$1$1$$ExternalSyntheticLambda1;->f$3:I

    iget-object v4, p0, Lcom/kakaogame/auth/view/LoginUIManager$showLoginDialog$loginIDPListDialog$1$1$$ExternalSyntheticLambda1;->f$4:Lkotlin/jvm/functions/Function1;

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/kakaogame/auth/view/LoginUIManager$showLoginDialog$loginIDPListDialog$1$1;->$r8$lambda$Y8Qahytny0uZtbNRKFr8IY6h4s4(Landroid/app/Activity;Ljava/util/List;Lcom/kakaogame/auth/view/LoginUIManager$RequestType;ILkotlin/jvm/functions/Function1;Landroid/content/DialogInterface;)V

    return-void

    nop

    .array-data 1
    .end array-data
.end method
