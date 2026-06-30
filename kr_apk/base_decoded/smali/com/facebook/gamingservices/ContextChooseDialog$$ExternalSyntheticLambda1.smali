.class public final synthetic Lcom/facebook/gamingservices/ContextChooseDialog$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/facebook/internal/CallbackManagerImpl$Callback;


# instance fields
.field public final synthetic f$0:Lcom/facebook/gamingservices/ContextChooseDialog;

.field public final synthetic f$1:Lcom/facebook/gamingservices/ContextChooseDialog$registerCallbackImpl$resultProcessor$1;


# direct methods
.method public synthetic constructor <init>(Lcom/facebook/gamingservices/ContextChooseDialog;Lcom/facebook/gamingservices/ContextChooseDialog$registerCallbackImpl$resultProcessor$1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/facebook/gamingservices/ContextChooseDialog$$ExternalSyntheticLambda1;->f$0:Lcom/facebook/gamingservices/ContextChooseDialog;

    iput-object p2, p0, Lcom/facebook/gamingservices/ContextChooseDialog$$ExternalSyntheticLambda1;->f$1:Lcom/facebook/gamingservices/ContextChooseDialog$registerCallbackImpl$resultProcessor$1;

    return-void

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public final onActivityResult(ILandroid/content/Intent;)Z
    .locals 2

    iget-object v0, p0, Lcom/facebook/gamingservices/ContextChooseDialog$$ExternalSyntheticLambda1;->f$0:Lcom/facebook/gamingservices/ContextChooseDialog;

    iget-object v1, p0, Lcom/facebook/gamingservices/ContextChooseDialog$$ExternalSyntheticLambda1;->f$1:Lcom/facebook/gamingservices/ContextChooseDialog$registerCallbackImpl$resultProcessor$1;

    invoke-static {v0, v1, p1, p2}, Lcom/facebook/gamingservices/ContextChooseDialog;->$r8$lambda$48Z4moKidldET4LLNcACX4-iQk4(Lcom/facebook/gamingservices/ContextChooseDialog;Lcom/facebook/gamingservices/ContextChooseDialog$registerCallbackImpl$resultProcessor$1;ILandroid/content/Intent;)Z

    move-result p1

    return p1

    nop

    .array-data 1
    .end array-data
.end method
