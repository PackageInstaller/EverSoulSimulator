.class public final synthetic Lcom/kakaogame/ui/PermissionManager$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/content/DialogInterface$OnShowListener;


# instance fields
.field public final synthetic f$0:Landroid/app/AlertDialog;

.field public final synthetic f$1:Lcom/kakaogame/KGApplication$KGPermissionTheme;


# direct methods
.method public synthetic constructor <init>(Landroid/app/AlertDialog;Lcom/kakaogame/KGApplication$KGPermissionTheme;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/kakaogame/ui/PermissionManager$$ExternalSyntheticLambda3;->f$0:Landroid/app/AlertDialog;

    iput-object p2, p0, Lcom/kakaogame/ui/PermissionManager$$ExternalSyntheticLambda3;->f$1:Lcom/kakaogame/KGApplication$KGPermissionTheme;

    return-void

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public final onShow(Landroid/content/DialogInterface;)V
    .locals 2

    iget-object v0, p0, Lcom/kakaogame/ui/PermissionManager$$ExternalSyntheticLambda3;->f$0:Landroid/app/AlertDialog;

    iget-object v1, p0, Lcom/kakaogame/ui/PermissionManager$$ExternalSyntheticLambda3;->f$1:Lcom/kakaogame/KGApplication$KGPermissionTheme;

    invoke-static {v0, v1, p1}, Lcom/kakaogame/ui/PermissionManager;->$r8$lambda$IIEhR9rbNvTlLgwc0NSAZEL8ZBo(Landroid/app/AlertDialog;Lcom/kakaogame/KGApplication$KGPermissionTheme;Landroid/content/DialogInterface;)V

    return-void

    .array-data 1
    .end array-data
.end method
