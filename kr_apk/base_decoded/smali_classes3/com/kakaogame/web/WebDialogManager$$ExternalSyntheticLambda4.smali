.class public final synthetic Lcom/kakaogame/web/WebDialogManager$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field public final synthetic f$0:Lcom/kakaogame/util/MutexLock;


# direct methods
.method public synthetic constructor <init>(Lcom/kakaogame/util/MutexLock;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/kakaogame/web/WebDialogManager$$ExternalSyntheticLambda4;->f$0:Lcom/kakaogame/util/MutexLock;

    return-void

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public final onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    iget-object v0, p0, Lcom/kakaogame/web/WebDialogManager$$ExternalSyntheticLambda4;->f$0:Lcom/kakaogame/util/MutexLock;

    invoke-static {v0, p1}, Lcom/kakaogame/web/WebDialogManager;->$r8$lambda$pF9TkaN02FS06Fecgv6PQkEOnTQ(Lcom/kakaogame/util/MutexLock;Landroid/content/DialogInterface;)V

    return-void

    .array-data 1
    .end array-data
.end method
