.class public final synthetic Lcom/kakaogame/web/WebDialogManager$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field public final synthetic f$0:Lcom/kakaogame/web/CafeWebDialog;

.field public final synthetic f$1:Lcom/kakaogame/KGResultCallback;

.field public final synthetic f$2:Lcom/kakaogame/util/MutexLock;


# direct methods
.method public synthetic constructor <init>(Lcom/kakaogame/web/CafeWebDialog;Lcom/kakaogame/KGResultCallback;Lcom/kakaogame/util/MutexLock;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/kakaogame/web/WebDialogManager$$ExternalSyntheticLambda0;->f$0:Lcom/kakaogame/web/CafeWebDialog;

    iput-object p2, p0, Lcom/kakaogame/web/WebDialogManager$$ExternalSyntheticLambda0;->f$1:Lcom/kakaogame/KGResultCallback;

    iput-object p3, p0, Lcom/kakaogame/web/WebDialogManager$$ExternalSyntheticLambda0;->f$2:Lcom/kakaogame/util/MutexLock;

    return-void

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public final onDismiss(Landroid/content/DialogInterface;)V
    .locals 3

    iget-object v0, p0, Lcom/kakaogame/web/WebDialogManager$$ExternalSyntheticLambda0;->f$0:Lcom/kakaogame/web/CafeWebDialog;

    iget-object v1, p0, Lcom/kakaogame/web/WebDialogManager$$ExternalSyntheticLambda0;->f$1:Lcom/kakaogame/KGResultCallback;

    iget-object v2, p0, Lcom/kakaogame/web/WebDialogManager$$ExternalSyntheticLambda0;->f$2:Lcom/kakaogame/util/MutexLock;

    invoke-static {v0, v1, v2, p1}, Lcom/kakaogame/web/WebDialogManager;->$r8$lambda$cim8BaIoW5tSdj0R0pTaW9gSHxA(Lcom/kakaogame/web/CafeWebDialog;Lcom/kakaogame/KGResultCallback;Lcom/kakaogame/util/MutexLock;Landroid/content/DialogInterface;)V

    return-void

    .array-data 1
    .end array-data
.end method
