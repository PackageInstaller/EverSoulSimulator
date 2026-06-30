.class public final Lcom/kakaogame/KGSNSShare$showRewardView$listener$1;
.super Ljava/lang/Object;
.source "KGSNSShare.kt"

# interfaces
.implements Lcom/kakaogame/web/WebDialog$OnCloseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kakaogame/KGSNSShare;->showRewardView(Landroid/app/Activity;Ljava/lang/String;Lcom/kakaogame/KGResultCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0012\u0010\u0002\u001a\u00020\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005H\u0016\u00a8\u0006\u0006"
    }
    d2 = {
        "com/kakaogame/KGSNSShare$showRewardView$listener$1",
        "Lcom/kakaogame/web/WebDialog$OnCloseListener;",
        "onClose",
        "",
        "dialog",
        "Lcom/kakaogame/web/WebDialog;",
        "gamesdk_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $activity:Landroid/app/Activity;


# direct methods
.method constructor <init>(Landroid/app/Activity;)V
    .locals 0

    iput-object p1, p0, Lcom/kakaogame/KGSNSShare$showRewardView$listener$1;->$activity:Landroid/app/Activity;

    .line 5989
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public onClose(Lcom/kakaogame/web/WebDialog;)V
    .locals 2

    .line 6009
    sget-object v0, Lcom/kakaogame/KGSNSShare;->INSTANCE:Lcom/kakaogame/KGSNSShare;

    iget-object v1, p0, Lcom/kakaogame/KGSNSShare$showRewardView$listener$1;->$activity:Landroid/app/Activity;

    invoke-static {v0, v1, p1}, Lcom/kakaogame/KGSNSShare;->access$showAlertDialog(Lcom/kakaogame/KGSNSShare;Landroid/app/Activity;Lcom/kakaogame/web/WebDialog;)V

    return-void

    .array-data 1
    .end array-data
.end method
