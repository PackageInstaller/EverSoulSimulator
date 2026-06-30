.class public final synthetic Lcom/kakaogame/auth/view/LoginUIManager$$ExternalSyntheticLambda22;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic f$0:I

.field public final synthetic f$1:Landroid/app/Activity;

.field public final synthetic f$2:Ljava/lang/String;

.field public final synthetic f$3:Lcom/kakaogame/auth/view/LoginUIManager$RequestType;

.field public final synthetic f$4:Lcom/kakaogame/KGResultCallback;


# direct methods
.method public synthetic constructor <init>(ILandroid/app/Activity;Ljava/lang/String;Lcom/kakaogame/auth/view/LoginUIManager$RequestType;Lcom/kakaogame/KGResultCallback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/kakaogame/auth/view/LoginUIManager$$ExternalSyntheticLambda22;->f$0:I

    iput-object p2, p0, Lcom/kakaogame/auth/view/LoginUIManager$$ExternalSyntheticLambda22;->f$1:Landroid/app/Activity;

    iput-object p3, p0, Lcom/kakaogame/auth/view/LoginUIManager$$ExternalSyntheticLambda22;->f$2:Ljava/lang/String;

    iput-object p4, p0, Lcom/kakaogame/auth/view/LoginUIManager$$ExternalSyntheticLambda22;->f$3:Lcom/kakaogame/auth/view/LoginUIManager$RequestType;

    iput-object p5, p0, Lcom/kakaogame/auth/view/LoginUIManager$$ExternalSyntheticLambda22;->f$4:Lcom/kakaogame/KGResultCallback;

    return-void

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 7

    iget v0, p0, Lcom/kakaogame/auth/view/LoginUIManager$$ExternalSyntheticLambda22;->f$0:I

    iget-object v1, p0, Lcom/kakaogame/auth/view/LoginUIManager$$ExternalSyntheticLambda22;->f$1:Landroid/app/Activity;

    iget-object v2, p0, Lcom/kakaogame/auth/view/LoginUIManager$$ExternalSyntheticLambda22;->f$2:Ljava/lang/String;

    iget-object v3, p0, Lcom/kakaogame/auth/view/LoginUIManager$$ExternalSyntheticLambda22;->f$3:Lcom/kakaogame/auth/view/LoginUIManager$RequestType;

    iget-object v4, p0, Lcom/kakaogame/auth/view/LoginUIManager$$ExternalSyntheticLambda22;->f$4:Lcom/kakaogame/KGResultCallback;

    move-object v5, p1

    move v6, p2

    invoke-static/range {v0 .. v6}, Lcom/kakaogame/auth/view/LoginUIManager;->$r8$lambda$2HdLGIpIyIvIAcH28IDbwoaMSO8(ILandroid/app/Activity;Ljava/lang/String;Lcom/kakaogame/auth/view/LoginUIManager$RequestType;Lcom/kakaogame/KGResultCallback;Landroid/content/DialogInterface;I)V

    return-void

    .array-data 1
    .end array-data
.end method
