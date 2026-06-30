.class public final synthetic Lcom/facebook/gamingservices/ContextCreateDialog$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/facebook/internal/CallbackManagerImpl$Callback;


# instance fields
.field public final synthetic f$0:Lcom/facebook/gamingservices/ContextCreateDialog;

.field public final synthetic f$1:Lcom/facebook/share/internal/ResultProcessor;


# direct methods
.method public synthetic constructor <init>(Lcom/facebook/gamingservices/ContextCreateDialog;Lcom/facebook/share/internal/ResultProcessor;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/facebook/gamingservices/ContextCreateDialog$$ExternalSyntheticLambda0;->f$0:Lcom/facebook/gamingservices/ContextCreateDialog;

    iput-object p2, p0, Lcom/facebook/gamingservices/ContextCreateDialog$$ExternalSyntheticLambda0;->f$1:Lcom/facebook/share/internal/ResultProcessor;

    return-void

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public final onActivityResult(ILandroid/content/Intent;)Z
    .locals 2

    iget-object v0, p0, Lcom/facebook/gamingservices/ContextCreateDialog$$ExternalSyntheticLambda0;->f$0:Lcom/facebook/gamingservices/ContextCreateDialog;

    iget-object v1, p0, Lcom/facebook/gamingservices/ContextCreateDialog$$ExternalSyntheticLambda0;->f$1:Lcom/facebook/share/internal/ResultProcessor;

    invoke-static {v0, v1, p1, p2}, Lcom/facebook/gamingservices/ContextCreateDialog;->$r8$lambda$1F7BGe_Vyo8fz_MbEvOCOq2rRwk(Lcom/facebook/gamingservices/ContextCreateDialog;Lcom/facebook/share/internal/ResultProcessor;ILandroid/content/Intent;)Z

    move-result p1

    return p1

    nop

    .array-data 1
    .end array-data
.end method
