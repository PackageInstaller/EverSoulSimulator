.class public final synthetic Lcom/kakaogame/ui/DialogManager$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic f$0:Z

.field public final synthetic f$1:Landroid/app/Activity;

.field public final synthetic f$2:Landroid/content/DialogInterface$OnDismissListener;


# direct methods
.method public synthetic constructor <init>(ZLandroid/app/Activity;Landroid/content/DialogInterface$OnDismissListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/kakaogame/ui/DialogManager$$ExternalSyntheticLambda5;->f$0:Z

    iput-object p2, p0, Lcom/kakaogame/ui/DialogManager$$ExternalSyntheticLambda5;->f$1:Landroid/app/Activity;

    iput-object p3, p0, Lcom/kakaogame/ui/DialogManager$$ExternalSyntheticLambda5;->f$2:Landroid/content/DialogInterface$OnDismissListener;

    return-void

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    iget-boolean v0, p0, Lcom/kakaogame/ui/DialogManager$$ExternalSyntheticLambda5;->f$0:Z

    iget-object v1, p0, Lcom/kakaogame/ui/DialogManager$$ExternalSyntheticLambda5;->f$1:Landroid/app/Activity;

    iget-object v2, p0, Lcom/kakaogame/ui/DialogManager$$ExternalSyntheticLambda5;->f$2:Landroid/content/DialogInterface$OnDismissListener;

    invoke-static {v0, v1, v2, p1, p2}, Lcom/kakaogame/ui/DialogManager;->$r8$lambda$e-oycYGCynf6gbioCfzAYoFdH0w(ZLandroid/app/Activity;Landroid/content/DialogInterface$OnDismissListener;Landroid/content/DialogInterface;I)V

    return-void

    .array-data 1
    .end array-data
.end method
