.class public final Lcom/kakaogame/idp/KGTwitterAuth$idpLoginWithWebView$eventListener$1;
.super Ljava/lang/Object;
.source "KGTwitterAuth.kt"

# interfaces
.implements Lcom/kakaogame/KGAuthActivity$KGActivityEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kakaogame/idp/KGTwitterAuth;->idpLoginWithWebView(Landroid/app/Activity;Lkotlin/jvm/functions/Function2;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000)\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\"\u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\u00082\u0008\u0010\n\u001a\u0004\u0018\u00010\u000bH\u0016J\u0008\u0010\u000c\u001a\u00020\u0003H\u0016\u00a8\u0006\r"
    }
    d2 = {
        "com/kakaogame/idp/KGTwitterAuth$idpLoginWithWebView$eventListener$1",
        "Lcom/kakaogame/KGAuthActivity$KGActivityEventListener;",
        "onActivityStart",
        "",
        "activity",
        "Landroid/app/Activity;",
        "onActivityResult",
        "requestCode",
        "",
        "resultCode",
        "data",
        "Landroid/content/Intent;",
        "onDestroy",
        "idp_twitter_release"
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
.field final synthetic $callback:Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function2<",
            "Lcom/kakaogame/KGResult<",
            "Ltwitter4j/auth/AccessToken;",
            ">;",
            "Ljava/lang/Long;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $txId:Lkotlin/jvm/internal/Ref$LongRef;

.field final synthetic this$0:Lcom/kakaogame/idp/KGTwitterAuth;


# direct methods
.method public static synthetic $r8$lambda$jJ9qQ9BiyqQyPEoXya72cdkx98Y(Lcom/kakaogame/idp/KGTwitterAuth;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/internal/Ref$LongRef;Lcom/kakaogame/idp/KGTwitterAuth$idpLoginWithWebView$eventListener$1;Lcom/kakaogame/KGResult;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/kakaogame/idp/KGTwitterAuth$idpLoginWithWebView$eventListener$1;->onActivityResult$lambda$0(Lcom/kakaogame/idp/KGTwitterAuth;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/internal/Ref$LongRef;Lcom/kakaogame/idp/KGTwitterAuth$idpLoginWithWebView$eventListener$1;Lcom/kakaogame/KGResult;)Lkotlin/Unit;

    move-result-object p0

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method constructor <init>(Lcom/kakaogame/idp/KGTwitterAuth;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/internal/Ref$LongRef;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/kakaogame/idp/KGTwitterAuth;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lcom/kakaogame/KGResult<",
            "Ltwitter4j/auth/AccessToken;",
            ">;-",
            "Ljava/lang/Long;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/internal/Ref$LongRef;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/kakaogame/idp/KGTwitterAuth$idpLoginWithWebView$eventListener$1;->this$0:Lcom/kakaogame/idp/KGTwitterAuth;

    iput-object p2, p0, Lcom/kakaogame/idp/KGTwitterAuth$idpLoginWithWebView$eventListener$1;->$callback:Lkotlin/jvm/functions/Function2;

    iput-object p3, p0, Lcom/kakaogame/idp/KGTwitterAuth$idpLoginWithWebView$eventListener$1;->$txId:Lkotlin/jvm/internal/Ref$LongRef;

    .line 1719
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void

    .array-data 1
    .end array-data
.end method

.method private static final onActivityResult$lambda$0(Lcom/kakaogame/idp/KGTwitterAuth;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/internal/Ref$LongRef;Lcom/kakaogame/idp/KGTwitterAuth$idpLoginWithWebView$eventListener$1;Lcom/kakaogame/KGResult;)Lkotlin/Unit;
    .locals 3

    const v0, 0x543e8a9a

    invoke-static {v0}, Lcom/liapp/y;->׳ֳֳ֬د(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1809
    sget-object v0, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const v2, 0x22556a76

    invoke-static {v2}, Lcom/liapp/y;->ֲֳگܱޭ(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const v2, 0x22579a26

    invoke-static {v2}, Lcom/liapp/y;->ֲֳگܱޭ(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lcom/kakaogame/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1819
    invoke-virtual {p4}, Lcom/kakaogame/KGResult;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1829
    invoke-virtual {p4}, Lcom/kakaogame/KGResult;->getContent()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltwitter4j/auth/AccessToken;

    invoke-static {p0, v0}, Lcom/kakaogame/idp/KGTwitterAuth;->access$setAccessToken$p(Lcom/kakaogame/idp/KGTwitterAuth;Ltwitter4j/auth/AccessToken;)V

    .line 1839
    invoke-static {p0}, Lcom/kakaogame/idp/KGTwitterAuth;->access$getTwitter$p(Lcom/kakaogame/idp/KGTwitterAuth;)Ltwitter4j/Twitter;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/kakaogame/idp/KGTwitterAuth;->access$getAccessToken$p(Lcom/kakaogame/idp/KGTwitterAuth;)Ltwitter4j/auth/AccessToken;

    move-result-object p0

    invoke-interface {v0, p0}, Ltwitter4j/Twitter;->setOAuthAccessToken(Ltwitter4j/auth/AccessToken;)V

    .line 1859
    :cond_0
    iget-wide v0, p2, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-interface {p1, p4, p0}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1869
    sget-object p0, Lcom/kakaogame/auth/AuthActivityManager;->Companion:Lcom/kakaogame/auth/AuthActivityManager$Companion;

    invoke-virtual {p0}, Lcom/kakaogame/auth/AuthActivityManager$Companion;->getInstance()Lcom/kakaogame/auth/AuthActivityManager;

    move-result-object p0

    check-cast p3, Lcom/kakaogame/KGAuthActivity$KGActivityEventListener;

    invoke-virtual {p0, p3}, Lcom/kakaogame/auth/AuthActivityManager;->removeResultListener(Lcom/kakaogame/KGAuthActivity$KGActivityEventListener;)V

    .line 1879
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 4

    .line 1799
    iget-object v0, p0, Lcom/kakaogame/idp/KGTwitterAuth$idpLoginWithWebView$eventListener$1;->this$0:Lcom/kakaogame/idp/KGTwitterAuth;

    iget-object v1, p0, Lcom/kakaogame/idp/KGTwitterAuth$idpLoginWithWebView$eventListener$1;->$callback:Lkotlin/jvm/functions/Function2;

    iget-object v2, p0, Lcom/kakaogame/idp/KGTwitterAuth$idpLoginWithWebView$eventListener$1;->$txId:Lkotlin/jvm/internal/Ref$LongRef;

    new-instance v3, Lcom/kakaogame/idp/KGTwitterAuth$idpLoginWithWebView$eventListener$1$$ExternalSyntheticLambda0;

    invoke-direct {v3, v0, v1, v2, p0}, Lcom/kakaogame/idp/KGTwitterAuth$idpLoginWithWebView$eventListener$1$$ExternalSyntheticLambda0;-><init>(Lcom/kakaogame/idp/KGTwitterAuth;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/internal/Ref$LongRef;Lcom/kakaogame/idp/KGTwitterAuth$idpLoginWithWebView$eventListener$1;)V

    invoke-virtual {v0, p1, p2, p3, v3}, Lcom/kakaogame/idp/KGTwitterAuth;->activityResultOnIdpLogin(IILandroid/content/Intent;Lkotlin/jvm/functions/Function1;)V

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public onActivityStart(Landroid/app/Activity;)V
    .locals 3

    const v0, 0x543d14da

    invoke-static {v0}, Lcom/liapp/y;->׳ֳֳ֬د(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1749
    new-instance v0, Landroid/content/Intent;

    move-object v1, p1

    check-cast v1, Landroid/content/Context;

    const-class v2, Lcom/kakaogame/twitter/TwitterOAuthActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1759
    iget-object v1, p0, Lcom/kakaogame/idp/KGTwitterAuth$idpLoginWithWebView$eventListener$1;->this$0:Lcom/kakaogame/idp/KGTwitterAuth;

    invoke-static {v1}, Lcom/kakaogame/idp/KGTwitterAuth;->access$getRequestToken$p(Lcom/kakaogame/idp/KGTwitterAuth;)Ltwitter4j/auth/RequestToken;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ltwitter4j/auth/RequestToken;->getAuthorizationURL()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const v2, -0x451b834f

    invoke-static {v2}, Lcom/liapp/y;->ڳݬ٬ۮݪ(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/16 v1, 0x8c

    .line 1769
    invoke-virtual {p1, v0, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void

    .array-data 1
    .end array-data
.end method

.method public onDestroy()V
    .locals 0

    return-void

    nop

    .array-data 1
    .end array-data
.end method
