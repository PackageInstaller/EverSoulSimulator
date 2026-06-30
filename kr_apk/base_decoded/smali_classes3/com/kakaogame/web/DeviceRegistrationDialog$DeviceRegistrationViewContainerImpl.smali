.class public final Lcom/kakaogame/web/DeviceRegistrationDialog$DeviceRegistrationViewContainerImpl;
.super Lcom/kakaogame/web/WebDialog$WebViewContainerImpl;
.source "DeviceRegistrationDialog.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kakaogame/web/DeviceRegistrationDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x14
    name = "DeviceRegistrationViewContainerImpl"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\u0008\u0084\u0004\u0018\u00002\u00060\u0001R\u00020\u0002B\u001f\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\u0008\u00a2\u0006\u0004\u0008\t\u0010\nJ\u001c\u0010\u000b\u001a\u00020\u000c2\u0008\u0010\r\u001a\u0004\u0018\u00010\u00062\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u000fH\u0014\u00a8\u0006\u0010"
    }
    d2 = {
        "Lcom/kakaogame/web/DeviceRegistrationDialog$DeviceRegistrationViewContainerImpl;",
        "Lcom/kakaogame/web/WebDialog$WebViewContainerImpl;",
        "Lcom/kakaogame/web/WebDialog;",
        "activity",
        "Landroid/app/Activity;",
        "webView",
        "Landroid/webkit/WebView;",
        "settings",
        "Lcom/kakaogame/web/WebDialog$Settings;",
        "<init>",
        "(Lcom/kakaogame/web/DeviceRegistrationDialog;Landroid/app/Activity;Landroid/webkit/WebView;Lcom/kakaogame/web/WebDialog$Settings;)V",
        "shouldOverrideUrlLoading",
        "",
        "view",
        "url",
        "",
        "security_release"
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
.field final synthetic this$0:Lcom/kakaogame/web/DeviceRegistrationDialog;


# direct methods
.method public constructor <init>(Lcom/kakaogame/web/DeviceRegistrationDialog;Landroid/app/Activity;Landroid/webkit/WebView;Lcom/kakaogame/web/WebDialog$Settings;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Landroid/webkit/WebView;",
            "Lcom/kakaogame/web/WebDialog$Settings;",
            ")V"
        }
    .end annotation

    const v0, 0x543d14da

    invoke-static {v0}, Lcom/liapp/y;->׳ֳֳ֬د(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const v0, 0x543983ba

    invoke-static {v0}, Lcom/liapp/y;->׳ֳֳ֬د(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const v0, 0x5d10a28f

    invoke-static {v0}, Lcom/liapp/y;->ڴݮگ֮ت(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 859
    iput-object p1, p0, Lcom/kakaogame/web/DeviceRegistrationDialog$DeviceRegistrationViewContainerImpl;->this$0:Lcom/kakaogame/web/DeviceRegistrationDialog;

    .line 899
    check-cast p1, Lcom/kakaogame/web/WebDialog;

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/kakaogame/web/WebDialog$WebViewContainerImpl;-><init>(Lcom/kakaogame/web/WebDialog;Landroid/app/Activity;Landroid/webkit/WebView;Lcom/kakaogame/web/WebDialog$Settings;)V

    .line 1189
    invoke-virtual {p3}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    const/16 p2, 0x64

    invoke-virtual {p1, p2}, Landroid/webkit/WebSettings;->setTextZoom(I)V

    return-void

    nop

    .array-data 1
    .end array-data
.end method


# virtual methods
.method protected shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 5

    .line 919
    sget-object v0, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const v2, 0x7d72e3a5

    invoke-static {v2}, Lcom/liapp/y;->حֲݴܳޯ(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const v2, 0x336c0693

    invoke-static {v2}, Lcom/liapp/y;->ׯ״ٲ֬ب(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lcom/kakaogame/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    if-nez p2, :cond_0

    goto :goto_0

    .line 949
    :cond_0
    move-object v1, p2

    check-cast v1, Ljava/lang/CharSequence;

    const v2, 0x5d1e8a47

    invoke-static {v2}, Lcom/liapp/y;->ڴݮگ֮ت(I)Ljava/lang/String;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-static {v1, v2, v0}, Lkotlin/text/StringsKt;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 959
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 969
    sget-object p2, Lcom/kakaogame/core/CoreManager;->Companion:Lcom/kakaogame/core/CoreManager$Companion;

    invoke-virtual {p2}, Lcom/kakaogame/core/CoreManager$Companion;->getInstance()Lcom/kakaogame/core/CoreManager;

    move-result-object p2

    invoke-virtual {p2}, Lcom/kakaogame/core/CoreManager;->getConfiguration()Lcom/kakaogame/config/Configuration;

    move-result-object p2

    invoke-virtual {p2}, Lcom/kakaogame/config/Configuration;->getAppId()Ljava/lang/String;

    move-result-object p2

    .line 979
    sget-object v1, Lcom/kakaogame/KGLocalPlayer;->Companion:Lcom/kakaogame/KGLocalPlayer$Companion;

    invoke-virtual {v1}, Lcom/kakaogame/KGLocalPlayer$Companion;->getCurrentPlayer()Lcom/kakaogame/KGLocalPlayer;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1}, Lcom/kakaogame/KGLocalPlayer;->getPlayerId()Ljava/lang/String;

    move-result-object v1

    const v2, 0x336d85f3

    invoke-static {v2}, Lcom/liapp/y;->ׯ״ٲ֬ب(I)Ljava/lang/String;

    move-result-object v2

    .line 989
    invoke-virtual {p1, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 999
    sget-object v2, Lcom/kakaogame/security/ProtectionManager$CertificationPrefManager;->INSTANCE:Lcom/kakaogame/security/ProtectionManager$CertificationPrefManager;

    .line 1009
    invoke-virtual {p0}, Lcom/kakaogame/web/DeviceRegistrationDialog$DeviceRegistrationViewContainerImpl;->getWebView()Landroid/webkit/WebView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x5d1e8a87

    invoke-static {v4}, Lcom/liapp/y;->ڴݮگ֮ت(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 999
    invoke-virtual {v2, v3, p2, v1, p1}, Lcom/kakaogame/security/ProtectionManager$CertificationPrefManager;->saveCertification(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const v1, 0x5d12d467

    invoke-static {v1}, Lcom/liapp/y;->ڴݮگ֮ت(I)Ljava/lang/String;

    move-result-object v1

    .line 1089
    invoke-static {p2, v1, v0}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1099
    iget-object p1, p0, Lcom/kakaogame/web/DeviceRegistrationDialog$DeviceRegistrationViewContainerImpl;->this$0:Lcom/kakaogame/web/DeviceRegistrationDialog;

    invoke-static {p1}, Lcom/kakaogame/web/DeviceRegistrationDialog;->access$getCallback$p(Lcom/kakaogame/web/DeviceRegistrationDialog;)Lkotlin/jvm/functions/Function1;

    move-result-object p1

    sget-object p2, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    invoke-virtual {p2}, Lcom/kakaogame/KGResult$Companion;->getSuccessResult()Lcom/kakaogame/KGResult;

    move-result-object p2

    invoke-interface {p1, p2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1109
    iget-object p1, p0, Lcom/kakaogame/web/DeviceRegistrationDialog$DeviceRegistrationViewContainerImpl;->this$0:Lcom/kakaogame/web/DeviceRegistrationDialog;

    invoke-virtual {p1}, Lcom/kakaogame/web/DeviceRegistrationDialog;->dismiss()V

    goto :goto_0

    .line 1139
    :cond_2
    invoke-super {p0, p1, p2}, Lcom/kakaogame/web/WebDialog$WebViewContainerImpl;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result v0

    :cond_3
    :goto_0
    return v0

    nop

    .array-data 1
    .end array-data
.end method
