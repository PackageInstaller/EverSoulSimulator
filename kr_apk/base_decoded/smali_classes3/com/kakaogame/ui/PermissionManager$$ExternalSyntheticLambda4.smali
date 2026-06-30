.class public final synthetic Lcom/kakaogame/ui/PermissionManager$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field public final synthetic f$0:Z

.field public final synthetic f$1:Landroid/app/Activity;

.field public final synthetic f$2:Lcom/kakaogame/util/MutexLock;


# direct methods
.method public synthetic constructor <init>(ZLandroid/app/Activity;Lcom/kakaogame/util/MutexLock;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/kakaogame/ui/PermissionManager$$ExternalSyntheticLambda4;->f$0:Z

    iput-object p2, p0, Lcom/kakaogame/ui/PermissionManager$$ExternalSyntheticLambda4;->f$1:Landroid/app/Activity;

    iput-object p3, p0, Lcom/kakaogame/ui/PermissionManager$$ExternalSyntheticLambda4;->f$2:Lcom/kakaogame/util/MutexLock;

    return-void

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public final onDismiss(Landroid/content/DialogInterface;)V
    .locals 3

    iget-boolean v0, p0, Lcom/kakaogame/ui/PermissionManager$$ExternalSyntheticLambda4;->f$0:Z

    iget-object v1, p0, Lcom/kakaogame/ui/PermissionManager$$ExternalSyntheticLambda4;->f$1:Landroid/app/Activity;

    iget-object v2, p0, Lcom/kakaogame/ui/PermissionManager$$ExternalSyntheticLambda4;->f$2:Lcom/kakaogame/util/MutexLock;

    invoke-static {v0, v1, v2, p1}, Lcom/kakaogame/ui/PermissionManager;->$r8$lambda$4ls8EI9j1ItifRFGmWQ6-FNkFE0(ZLandroid/app/Activity;Lcom/kakaogame/util/MutexLock;Landroid/content/DialogInterface;)V

    return-void

    .array-data 1
    .end array-data
.end method
