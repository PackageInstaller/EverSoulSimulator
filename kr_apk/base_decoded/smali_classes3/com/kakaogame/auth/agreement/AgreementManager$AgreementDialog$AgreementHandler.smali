.class public final Lcom/kakaogame/auth/agreement/AgreementManager$AgreementDialog$AgreementHandler;
.super Lcom/kakaogame/web/protocol/WebAppProtocolHandler;
.source "AgreementManager.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kakaogame/auth/agreement/AgreementManager$AgreementDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "AgreementHandler"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u0086\u0004\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u001e\u0010\u0004\u001a\u0004\u0018\u00010\u00052\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u00072\u0008\u0010\u0008\u001a\u0004\u0018\u00010\tH\u0015\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/kakaogame/auth/agreement/AgreementManager$AgreementDialog$AgreementHandler;",
        "Lcom/kakaogame/web/protocol/WebAppProtocolHandler;",
        "<init>",
        "(Lcom/kakaogame/auth/agreement/AgreementManager$AgreementDialog;)V",
        "handleInternal",
        "",
        "webView",
        "Landroid/webkit/WebView;",
        "webUri",
        "Landroid/net/Uri;",
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
.field final synthetic this$0:Lcom/kakaogame/auth/agreement/AgreementManager$AgreementDialog;


# direct methods
.method public constructor <init>(Lcom/kakaogame/auth/agreement/AgreementManager$AgreementDialog;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 4679
    iput-object p1, p0, Lcom/kakaogame/auth/agreement/AgreementManager$AgreementDialog$AgreementHandler;->this$0:Lcom/kakaogame/auth/agreement/AgreementManager$AgreementDialog;

    const-string p1, "AgreementOk"

    invoke-direct {p0, p1}, Lcom/kakaogame/web/protocol/WebAppProtocolHandler;-><init>(Ljava/lang/String;)V

    .line 5009
    invoke-virtual {p0}, Lcom/kakaogame/auth/agreement/AgreementManager$AgreementDialog$AgreementHandler;->setWebAppProtocolHandler()V

    return-void

    nop

    .array-data 1
    .end array-data
.end method


# virtual methods
.method protected handleInternal(Landroid/webkit/WebView;Landroid/net/Uri;)Ljava/lang/String;
    .locals 6

    .line 4709
    sget-object p1, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    new-instance v0, Ljava/lang/StringBuilder;

    const v1, 0x5d10ac87

    invoke-static {v1}, Lcom/liapp/y;->ڴݮگ֮ت(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const v1, 0x3362223b

    invoke-static {v1}, Lcom/liapp/y;->ׯ״ٲ֬ب(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1, v0}, Lcom/kakaogame/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 4719
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast p1, Ljava/util/Map;

    .line 4729
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast v0, Ljava/util/Map;

    if-eqz p2, :cond_2

    .line 4739
    iget-object v1, p0, Lcom/kakaogame/auth/agreement/AgreementManager$AgreementDialog$AgreementHandler;->this$0:Lcom/kakaogame/auth/agreement/AgreementManager$AgreementDialog;

    .line 4749
    invoke-static {v1}, Lcom/kakaogame/auth/agreement/AgreementManager$AgreementDialog;->access$getPLUS_FRIEND_ID_KEY$p(Lcom/kakaogame/auth/agreement/AgreementManager$AgreementDialog;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/net/Uri;->getQueryParameters(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    const v3, 0x6d0c9aa0

    invoke-static {v3}, Lcom/liapp/y;->ٱڳܴڭܩ(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4759
    invoke-static {v1}, Lcom/kakaogame/auth/agreement/AgreementManager$AgreementDialog;->access$getJOIN_MEMBERSHOP_KEY$p(Lcom/kakaogame/auth/agreement/AgreementManager$AgreementDialog;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const v3, 0x6d0c9dc8

    invoke-static {v3}, Lcom/liapp/y;->ٱڳܴڭܩ(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v3, v2, v4}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const v5, 0x7d708095

    invoke-static {v5}, Lcom/liapp/y;->حֲݴܳޯ(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4769
    invoke-static {v1}, Lcom/kakaogame/auth/agreement/AgreementManager$AgreementDialog;->access$getAD_AGREEMENT_KEY$p(Lcom/kakaogame/auth/agreement/AgreementManager$AgreementDialog;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2, v4}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const v3, 0x5d10a9ff

    invoke-static {v3}, Lcom/liapp/y;->ڴݮگ֮ت(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4779
    invoke-virtual {p2}, Landroid/net/Uri;->getQueryParameterNames()Ljava/util/Set;

    move-result-object v2

    .line 4789
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 4799
    invoke-static {v1}, Lcom/kakaogame/auth/agreement/AgreementManager$AgreementDialog;->access$getPLUS_FRIEND_ID_KEY$p(Lcom/kakaogame/auth/agreement/AgreementManager$AgreementDialog;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5, v4}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v5

    if-nez v5, :cond_0

    .line 4809
    invoke-static {v1}, Lcom/kakaogame/auth/agreement/AgreementManager$AgreementDialog;->access$getJOIN_MEMBERSHOP_KEY$p(Lcom/kakaogame/auth/agreement/AgreementManager$AgreementDialog;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5, v4}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v5

    if-nez v5, :cond_0

    .line 4819
    invoke-static {v1}, Lcom/kakaogame/auth/agreement/AgreementManager$AgreementDialog;->access$getAD_AGREEMENT_KEY$p(Lcom/kakaogame/auth/agreement/AgreementManager$AgreementDialog;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5, v4}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v5

    if-nez v5, :cond_0

    .line 4829
    invoke-virtual {p2, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    const-string p2, "agreement"

    .line 4859
    invoke-interface {p1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4879
    :cond_2
    invoke-static {p1}, Lcom/kakaogame/util/json/JSONValue;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 4889
    sget-object p2, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    invoke-virtual {p2, p1}, Lcom/kakaogame/KGResult$Companion;->getSuccessResult(Ljava/lang/Object;)Lcom/kakaogame/KGResult;

    move-result-object p1

    .line 4899
    sget-object p2, Lcom/kakaogame/log/tracer/Tracer;->INSTANCE:Lcom/kakaogame/log/tracer/Tracer;

    iget-object v0, p0, Lcom/kakaogame/auth/agreement/AgreementManager$AgreementDialog$AgreementHandler;->this$0:Lcom/kakaogame/auth/agreement/AgreementManager$AgreementDialog;

    invoke-static {v0}, Lcom/kakaogame/auth/agreement/AgreementManager$AgreementDialog;->access$getTraceJobId$p(Lcom/kakaogame/auth/agreement/AgreementManager$AgreementDialog;)I

    move-result v0

    .line 4909
    sget-object v1, Lcom/kakaogame/log/tracer/TraceLoginActionCode;->SDK_AGREEMENT_WEB_CLOSE:Lcom/kakaogame/log/tracer/TraceLoginActionCode;

    const/16 v2, 0xc8

    const v3, -0x2243743c

    invoke-static {v3}, Lcom/liapp/y;->״دش۲ݮ(I)Ljava/lang/String;

    move-result-object v3

    .line 4899
    invoke-virtual {p2, v0, v1, v2, v3}, Lcom/kakaogame/log/tracer/Tracer;->finishAction(ILcom/kakaogame/log/tracer/TraceLoginActionCode;ILjava/lang/String;)V

    .line 4949
    iget-object p2, p0, Lcom/kakaogame/auth/agreement/AgreementManager$AgreementDialog$AgreementHandler;->this$0:Lcom/kakaogame/auth/agreement/AgreementManager$AgreementDialog;

    invoke-static {p2}, Lcom/kakaogame/auth/agreement/AgreementManager$AgreementDialog;->access$getCallback$p(Lcom/kakaogame/auth/agreement/AgreementManager$AgreementDialog;)Lkotlin/jvm/functions/Function1;

    move-result-object p2

    invoke-interface {p2, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4959
    iget-object p1, p0, Lcom/kakaogame/auth/agreement/AgreementManager$AgreementDialog$AgreementHandler;->this$0:Lcom/kakaogame/auth/agreement/AgreementManager$AgreementDialog;

    invoke-virtual {p1}, Lcom/kakaogame/auth/agreement/AgreementManager$AgreementDialog;->dismiss()V

    const/4 p1, 0x0

    return-object p1

    nop

    .array-data 1
    .end array-data
.end method
