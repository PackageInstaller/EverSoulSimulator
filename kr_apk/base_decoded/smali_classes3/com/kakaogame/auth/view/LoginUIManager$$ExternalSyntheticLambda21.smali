.class public final synthetic Lcom/kakaogame/auth/view/LoginUIManager$$ExternalSyntheticLambda21;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field public final synthetic f$0:Lcom/kakaogame/KGResultCallback;


# direct methods
.method public synthetic constructor <init>(Lcom/kakaogame/KGResultCallback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/kakaogame/auth/view/LoginUIManager$$ExternalSyntheticLambda21;->f$0:Lcom/kakaogame/KGResultCallback;

    return-void

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public final onCancel(Landroid/content/DialogInterface;)V
    .locals 1

    iget-object v0, p0, Lcom/kakaogame/auth/view/LoginUIManager$$ExternalSyntheticLambda21;->f$0:Lcom/kakaogame/KGResultCallback;

    invoke-static {v0, p1}, Lcom/kakaogame/auth/view/LoginUIManager;->$r8$lambda$9NRSZAxla-rXYA6v2Qu8KF5EvWE(Lcom/kakaogame/KGResultCallback;Landroid/content/DialogInterface;)V

    return-void

    .array-data 1
    .end array-data
.end method
