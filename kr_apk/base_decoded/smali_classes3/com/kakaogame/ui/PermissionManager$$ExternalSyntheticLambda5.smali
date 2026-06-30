.class public final synthetic Lcom/kakaogame/ui/PermissionManager$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic f$0:Z

.field public final synthetic f$1:I

.field public final synthetic f$2:Landroid/app/Activity;


# direct methods
.method public synthetic constructor <init>(ZILandroid/app/Activity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/kakaogame/ui/PermissionManager$$ExternalSyntheticLambda5;->f$0:Z

    iput p2, p0, Lcom/kakaogame/ui/PermissionManager$$ExternalSyntheticLambda5;->f$1:I

    iput-object p3, p0, Lcom/kakaogame/ui/PermissionManager$$ExternalSyntheticLambda5;->f$2:Landroid/app/Activity;

    return-void

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    iget-boolean v0, p0, Lcom/kakaogame/ui/PermissionManager$$ExternalSyntheticLambda5;->f$0:Z

    iget v1, p0, Lcom/kakaogame/ui/PermissionManager$$ExternalSyntheticLambda5;->f$1:I

    iget-object v2, p0, Lcom/kakaogame/ui/PermissionManager$$ExternalSyntheticLambda5;->f$2:Landroid/app/Activity;

    invoke-static {v0, v1, v2, p1, p2}, Lcom/kakaogame/ui/PermissionManager;->$r8$lambda$62B_HSrMXsodn4-gqrxdc1h79m4(ZILandroid/app/Activity;Landroid/content/DialogInterface;I)V

    return-void

    .array-data 1
    .end array-data
.end method
