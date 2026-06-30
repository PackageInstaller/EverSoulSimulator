.class public final synthetic Lcom/kakaogame/auth/view/LoginUIManager$$ExternalSyntheticLambda23;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic f$0:I

.field public final synthetic f$1:Lcom/kakaogame/KGResultCallback;


# direct methods
.method public synthetic constructor <init>(ILcom/kakaogame/KGResultCallback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/kakaogame/auth/view/LoginUIManager$$ExternalSyntheticLambda23;->f$0:I

    iput-object p2, p0, Lcom/kakaogame/auth/view/LoginUIManager$$ExternalSyntheticLambda23;->f$1:Lcom/kakaogame/KGResultCallback;

    return-void

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget v0, p0, Lcom/kakaogame/auth/view/LoginUIManager$$ExternalSyntheticLambda23;->f$0:I

    iget-object v1, p0, Lcom/kakaogame/auth/view/LoginUIManager$$ExternalSyntheticLambda23;->f$1:Lcom/kakaogame/KGResultCallback;

    invoke-static {v0, v1, p1, p2}, Lcom/kakaogame/auth/view/LoginUIManager;->$r8$lambda$hVXElSZY8UOTLf29rh1XiVxsz3E(ILcom/kakaogame/KGResultCallback;Landroid/content/DialogInterface;I)V

    return-void

    .array-data 1
    .end array-data
.end method
