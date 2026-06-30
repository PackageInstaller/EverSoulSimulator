.class public final synthetic Lcom/kakaogame/ui/PermissionManager$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/app/AlertDialog$Builder;

.field public final synthetic f$1:Lcom/kakaogame/KGApplication$KGPermissionTheme;

.field public final synthetic f$2:Landroid/app/Activity;

.field public final synthetic f$3:Lcom/kakaogame/util/MutexLock;


# direct methods
.method public synthetic constructor <init>(Landroid/app/AlertDialog$Builder;Lcom/kakaogame/KGApplication$KGPermissionTheme;Landroid/app/Activity;Lcom/kakaogame/util/MutexLock;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/kakaogame/ui/PermissionManager$$ExternalSyntheticLambda1;->f$0:Landroid/app/AlertDialog$Builder;

    iput-object p2, p0, Lcom/kakaogame/ui/PermissionManager$$ExternalSyntheticLambda1;->f$1:Lcom/kakaogame/KGApplication$KGPermissionTheme;

    iput-object p3, p0, Lcom/kakaogame/ui/PermissionManager$$ExternalSyntheticLambda1;->f$2:Landroid/app/Activity;

    iput-object p4, p0, Lcom/kakaogame/ui/PermissionManager$$ExternalSyntheticLambda1;->f$3:Lcom/kakaogame/util/MutexLock;

    return-void

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/kakaogame/ui/PermissionManager$$ExternalSyntheticLambda1;->f$0:Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/kakaogame/ui/PermissionManager$$ExternalSyntheticLambda1;->f$1:Lcom/kakaogame/KGApplication$KGPermissionTheme;

    iget-object v2, p0, Lcom/kakaogame/ui/PermissionManager$$ExternalSyntheticLambda1;->f$2:Landroid/app/Activity;

    iget-object v3, p0, Lcom/kakaogame/ui/PermissionManager$$ExternalSyntheticLambda1;->f$3:Lcom/kakaogame/util/MutexLock;

    invoke-static {v0, v1, v2, v3}, Lcom/kakaogame/ui/PermissionManager;->$r8$lambda$Z3PrSwe6txpZfAUqHA9PNk1X1EU(Landroid/app/AlertDialog$Builder;Lcom/kakaogame/KGApplication$KGPermissionTheme;Landroid/app/Activity;Lcom/kakaogame/util/MutexLock;)V

    return-void

    .array-data 1
    .end array-data
.end method
