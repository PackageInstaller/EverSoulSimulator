.class public final Lcom/kakaogame/broker/InterfaceBrokerManager$initInternalAPIs$17$request$1;
.super Ljava/lang/Object;
.source "InterfaceBrokerManager.kt"

# interfaces
.implements Lcom/kakaogame/KGCustomUI$KGShowCustomAlertHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kakaogame/broker/InterfaceBrokerManager$initInternalAPIs$17;->request(Landroid/app/Activity;Lcom/kakaogame/broker/InterfaceBrokerHandler$InterfaceRequest;)Lcom/kakaogame/KGResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000#\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J&\u0010\u0002\u001a\u00020\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u00052\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u00072\u0008\u0010\u0008\u001a\u0004\u0018\u00010\tH\u0016\u00a8\u0006\n"
    }
    d2 = {
        "com/kakaogame/broker/InterfaceBrokerManager$initInternalAPIs$17$request$1",
        "Lcom/kakaogame/KGCustomUI$KGShowCustomAlertHandler;",
        "onShow",
        "",
        "activity",
        "Landroid/app/Activity;",
        "alert",
        "Lcom/kakaogame/KGCustomUI$KGCustomAlert;",
        "callback",
        "Lcom/kakaogame/KGCustomUI$KGCustomAlertCallback;",
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


# direct methods
.method constructor <init>()V
    .locals 0

    .line 5289
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public onShow(Landroid/app/Activity;Lcom/kakaogame/KGCustomUI$KGCustomAlert;Lcom/kakaogame/KGCustomUI$KGCustomAlertCallback;)V
    .locals 0

    const-string p1, "InterfaceBrokerManager"

    const-string p2, "Never get Here."

    .line 5309
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .array-data 1
    .end array-data
.end method
