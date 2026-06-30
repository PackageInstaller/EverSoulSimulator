.class public final Lcom/facebook/gamingservices/ContextSwitchDialog$registerCallbackImpl$resultProcessor$1;
.super Lcom/facebook/share/internal/ResultProcessor;
.source "ContextSwitchDialog.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/gamingservices/ContextSwitchDialog;->registerCallbackImpl(Lcom/facebook/internal/CallbackManagerImpl;Lcom/facebook/FacebookCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001d\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u001a\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0007H\u0016\u00a8\u0006\u0008"
    }
    d2 = {
        "com/facebook/gamingservices/ContextSwitchDialog$registerCallbackImpl$resultProcessor$1",
        "Lcom/facebook/share/internal/ResultProcessor;",
        "onSuccess",
        "",
        "appCall",
        "Lcom/facebook/internal/AppCall;",
        "results",
        "Landroid/os/Bundle;",
        "facebook-gamingservices_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $callback:Lcom/facebook/FacebookCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/FacebookCallback<",
            "Lcom/facebook/gamingservices/ContextSwitchDialog$Result;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/facebook/FacebookCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/FacebookCallback<",
            "Lcom/facebook/gamingservices/ContextSwitchDialog$Result;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/facebook/gamingservices/ContextSwitchDialog$registerCallbackImpl$resultProcessor$1;->$callback:Lcom/facebook/FacebookCallback;

    .line 106
    invoke-direct {p0, p1}, Lcom/facebook/share/internal/ResultProcessor;-><init>(Lcom/facebook/FacebookCallback;)V

    return-void

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public onSuccess(Lcom/facebook/internal/AppCall;Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "appCall"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_3

    const-string p1, "error_message"

    .line 109
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 110
    iget-object v0, p0, Lcom/facebook/gamingservices/ContextSwitchDialog$registerCallbackImpl$resultProcessor$1;->$callback:Lcom/facebook/FacebookCallback;

    new-instance v1, Lcom/facebook/FacebookException;

    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/facebook/FacebookCallback;->onError(Lcom/facebook/FacebookException;)V

    return-void

    :cond_0
    const-string p1, "id"

    .line 113
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "context_id"

    .line 114
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz p1, :cond_1

    .line 116
    sget-object v0, Lcom/facebook/gamingservices/GamingContext;->Companion:Lcom/facebook/gamingservices/GamingContext$Companion;

    new-instance v1, Lcom/facebook/gamingservices/GamingContext;

    invoke-direct {v1, p1}, Lcom/facebook/gamingservices/GamingContext;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/facebook/gamingservices/GamingContext$Companion;->setCurrentGamingContext(Lcom/facebook/gamingservices/GamingContext;)V

    .line 117
    iget-object v0, p0, Lcom/facebook/gamingservices/ContextSwitchDialog$registerCallbackImpl$resultProcessor$1;->$callback:Lcom/facebook/FacebookCallback;

    new-instance v1, Lcom/facebook/gamingservices/ContextSwitchDialog$Result;

    invoke-direct {v1, p1}, Lcom/facebook/gamingservices/ContextSwitchDialog$Result;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/facebook/FacebookCallback;->onSuccess(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    if-eqz v0, :cond_2

    .line 119
    sget-object p1, Lcom/facebook/gamingservices/GamingContext;->Companion:Lcom/facebook/gamingservices/GamingContext$Companion;

    new-instance v1, Lcom/facebook/gamingservices/GamingContext;

    invoke-direct {v1, v0}, Lcom/facebook/gamingservices/GamingContext;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Lcom/facebook/gamingservices/GamingContext$Companion;->setCurrentGamingContext(Lcom/facebook/gamingservices/GamingContext;)V

    .line 120
    iget-object p1, p0, Lcom/facebook/gamingservices/ContextSwitchDialog$registerCallbackImpl$resultProcessor$1;->$callback:Lcom/facebook/FacebookCallback;

    new-instance v1, Lcom/facebook/gamingservices/ContextSwitchDialog$Result;

    invoke-direct {v1, v0}, Lcom/facebook/gamingservices/ContextSwitchDialog$Result;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, v1}, Lcom/facebook/FacebookCallback;->onSuccess(Ljava/lang/Object;)V

    .line 122
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/facebook/gamingservices/ContextSwitchDialog$registerCallbackImpl$resultProcessor$1;->$callback:Lcom/facebook/FacebookCallback;

    .line 123
    new-instance v0, Lcom/facebook/FacebookException;

    const-string v1, "Invalid response received from server."

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, p2}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    .line 122
    invoke-interface {p1, v0}, Lcom/facebook/FacebookCallback;->onError(Lcom/facebook/FacebookException;)V

    goto :goto_1

    .line 125
    :cond_3
    invoke-virtual {p0, p1}, Lcom/facebook/gamingservices/ContextSwitchDialog$registerCallbackImpl$resultProcessor$1;->onCancel(Lcom/facebook/internal/AppCall;)V

    :goto_1
    return-void

    .array-data 1
    .end array-data
.end method
