.class final Lcom/kakaogame/security/ProtectionManager$showInAppWebView$2$1;
.super Ljava/lang/Object;
.source "ProtectionManager.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kakaogame/security/ProtectionManager;->showInAppWebView(Landroid/app/Activity;Ljava/lang/String;Lcom/kakaogame/web/WebDialog$Settings;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $activity:Landroid/app/Activity;

.field final synthetic $cont:Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/coroutines/Continuation<",
            "Lcom/kakaogame/KGResult<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field final synthetic $settings:Lcom/kakaogame/web/WebDialog$Settings;

.field final synthetic $url:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/app/Activity;Ljava/lang/String;Lcom/kakaogame/web/WebDialog$Settings;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/lang/String;",
            "Lcom/kakaogame/web/WebDialog$Settings;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/kakaogame/KGResult<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/kakaogame/security/ProtectionManager$showInAppWebView$2$1;->$activity:Landroid/app/Activity;

    iput-object p2, p0, Lcom/kakaogame/security/ProtectionManager$showInAppWebView$2$1;->$url:Ljava/lang/String;

    iput-object p3, p0, Lcom/kakaogame/security/ProtectionManager$showInAppWebView$2$1;->$settings:Lcom/kakaogame/web/WebDialog$Settings;

    iput-object p4, p0, Lcom/kakaogame/security/ProtectionManager$showInAppWebView$2$1;->$cont:Lkotlin/coroutines/Continuation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 4799
    :try_start_0
    new-instance v0, Lcom/kakaogame/web/DeviceRegistrationDialog;

    .line 4809
    iget-object v1, p0, Lcom/kakaogame/security/ProtectionManager$showInAppWebView$2$1;->$activity:Landroid/app/Activity;

    .line 4819
    iget-object v2, p0, Lcom/kakaogame/security/ProtectionManager$showInAppWebView$2$1;->$url:Ljava/lang/String;

    .line 4829
    iget-object v3, p0, Lcom/kakaogame/security/ProtectionManager$showInAppWebView$2$1;->$settings:Lcom/kakaogame/web/WebDialog$Settings;

    .line 4799
    new-instance v4, Lcom/kakaogame/security/ProtectionManager$showInAppWebView$2$1$webDialog$1;

    iget-object v5, p0, Lcom/kakaogame/security/ProtectionManager$showInAppWebView$2$1;->$cont:Lkotlin/coroutines/Continuation;

    invoke-direct {v4, v5}, Lcom/kakaogame/security/ProtectionManager$showInAppWebView$2$1$webDialog$1;-><init>(Lkotlin/coroutines/Continuation;)V

    check-cast v4, Lkotlin/jvm/functions/Function1;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/kakaogame/web/DeviceRegistrationDialog;-><init>(Landroid/app/Activity;Ljava/lang/String;Lcom/kakaogame/web/WebDialog$Settings;Lkotlin/jvm/functions/Function1;)V

    .line 4869
    invoke-virtual {v0}, Lcom/kakaogame/web/DeviceRegistrationDialog;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 4889
    sget-object v1, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v3, v0

    check-cast v3, Ljava/lang/Throwable;

    const v4, 0x5d1f14df

    invoke-static {v4}, Lcom/liapp/y;->ڴݮگ֮ت(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4, v2, v3}, Lcom/kakaogame/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 4899
    sget-object v1, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    const/16 v2, 0xfa1

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/kakaogame/KGResult$Companion;->getResult(ILjava/lang/String;)Lcom/kakaogame/KGResult;

    move-result-object v0

    .line 4909
    iget-object v1, p0, Lcom/kakaogame/security/ProtectionManager$showInAppWebView$2$1;->$cont:Lkotlin/coroutines/Continuation;

    sget-object v2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v1, v0}, Lkotlin/coroutines/Continuation;->resumeWith(Ljava/lang/Object;)V

    :goto_0
    return-void

    .array-data 1
    .end array-data
.end method
