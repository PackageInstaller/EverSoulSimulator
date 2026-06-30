.class public final Lcom/kakaogame/ui/CustomUIManager$showCustomUI$3;
.super Ljava/lang/Object;
.source "CustomUIManager.kt"

# interfaces
.implements Lcom/kakaogame/KGCustomUI$KGCustomAlertCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kakaogame/ui/CustomUIManager;->showCustomUI(Landroid/app/Activity;Lcom/kakaogame/KGCustomUI$KGCustomAlert;)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0012\u0010\u0002\u001a\u00020\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005H\u0016\u00a8\u0006\u0006"
    }
    d2 = {
        "com/kakaogame/ui/CustomUIManager$showCustomUI$3",
        "Lcom/kakaogame/KGCustomUI$KGCustomAlertCallback;",
        "onClick",
        "",
        "action",
        "",
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
.field final synthetic this$0:Lcom/kakaogame/ui/CustomUIManager;


# direct methods
.method constructor <init>(Lcom/kakaogame/ui/CustomUIManager;)V
    .locals 0

    iput-object p1, p0, Lcom/kakaogame/ui/CustomUIManager$showCustomUI$3;->this$0:Lcom/kakaogame/ui/CustomUIManager;

    .line 459
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public onClick(Ljava/lang/String;)V
    .locals 1

    .line 479
    iget-object v0, p0, Lcom/kakaogame/ui/CustomUIManager$showCustomUI$3;->this$0:Lcom/kakaogame/ui/CustomUIManager;

    invoke-static {v0}, Lcom/kakaogame/ui/CustomUIManager;->access$getUiAlertLock$p(Lcom/kakaogame/ui/CustomUIManager;)Lcom/kakaogame/util/MutexLock;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0, p1}, Lcom/kakaogame/util/MutexLock;->setContent(Ljava/lang/Object;)V

    .line 489
    iget-object p1, p0, Lcom/kakaogame/ui/CustomUIManager$showCustomUI$3;->this$0:Lcom/kakaogame/ui/CustomUIManager;

    invoke-static {p1}, Lcom/kakaogame/ui/CustomUIManager;->access$getUiAlertLock$p(Lcom/kakaogame/ui/CustomUIManager;)Lcom/kakaogame/util/MutexLock;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/kakaogame/util/MutexLock;->unlock()V

    return-void

    nop

    .array-data 1
    .end array-data
.end method
