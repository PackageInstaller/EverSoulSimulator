.class public final Lcom/kakaogame/idp/KGTwitterAuth$idpLoginWithTwitterSync$2$eventListener$1;
.super Ljava/lang/Object;
.source "KGTwitterAuth.kt"

# interfaces
.implements Lcom/kakaogame/KGAuthActivity$KGActivityEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kakaogame/idp/KGTwitterAuth;->idpLoginWithTwitterSync(Landroid/app/Activity;Landroid/content/Intent;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
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
        "com/kakaogame/idp/KGTwitterAuth$idpLoginWithTwitterSync$2$eventListener$1",
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
.field final synthetic $intent:Landroid/content/Intent;

.field final synthetic $it:Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/coroutines/Continuation<",
            "Lcom/kakaogame/KGResult<",
            "Ltwitter4j/auth/AccessToken;",
            ">;>;"
        }
    .end annotation
.end field

.field final synthetic $txId:Lkotlin/jvm/internal/Ref$LongRef;

.field final synthetic this$0:Lcom/kakaogame/idp/KGTwitterAuth;


# direct methods
.method constructor <init>(Landroid/content/Intent;Lcom/kakaogame/idp/KGTwitterAuth;Lkotlin/jvm/internal/Ref$LongRef;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Lcom/kakaogame/idp/KGTwitterAuth;",
            "Lkotlin/jvm/internal/Ref$LongRef;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/kakaogame/KGResult<",
            "Ltwitter4j/auth/AccessToken;",
            ">;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/kakaogame/idp/KGTwitterAuth$idpLoginWithTwitterSync$2$eventListener$1;->$intent:Landroid/content/Intent;

    iput-object p2, p0, Lcom/kakaogame/idp/KGTwitterAuth$idpLoginWithTwitterSync$2$eventListener$1;->this$0:Lcom/kakaogame/idp/KGTwitterAuth;

    iput-object p3, p0, Lcom/kakaogame/idp/KGTwitterAuth$idpLoginWithTwitterSync$2$eventListener$1;->$txId:Lkotlin/jvm/internal/Ref$LongRef;

    iput-object p4, p0, Lcom/kakaogame/idp/KGTwitterAuth$idpLoginWithTwitterSync$2$eventListener$1;->$it:Lkotlin/coroutines/Continuation;

    .line 1289
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 4

    .line 1349
    iget-object v0, p0, Lcom/kakaogame/idp/KGTwitterAuth$idpLoginWithTwitterSync$2$eventListener$1;->this$0:Lcom/kakaogame/idp/KGTwitterAuth;

    new-instance v1, Lcom/kakaogame/idp/KGTwitterAuth$idpLoginWithTwitterSync$2$eventListener$1$onActivityResult$1;

    iget-object v2, p0, Lcom/kakaogame/idp/KGTwitterAuth$idpLoginWithTwitterSync$2$eventListener$1;->$txId:Lkotlin/jvm/internal/Ref$LongRef;

    iget-object v3, p0, Lcom/kakaogame/idp/KGTwitterAuth$idpLoginWithTwitterSync$2$eventListener$1;->$it:Lkotlin/coroutines/Continuation;

    invoke-direct {v1, v2, p0, v3}, Lcom/kakaogame/idp/KGTwitterAuth$idpLoginWithTwitterSync$2$eventListener$1$onActivityResult$1;-><init>(Lkotlin/jvm/internal/Ref$LongRef;Lcom/kakaogame/idp/KGTwitterAuth$idpLoginWithTwitterSync$2$eventListener$1;Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function1;

    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/kakaogame/idp/KGTwitterAuth;->activityResultOnIdpLogin(IILandroid/content/Intent;Lkotlin/jvm/functions/Function1;)V

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public onActivityStart(Landroid/app/Activity;)V
    .locals 1

    const v0, 0x543d14da

    invoke-static {v0}, Lcom/liapp/y;->׳ֳֳ֬د(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1319
    iget-object v0, p0, Lcom/kakaogame/idp/KGTwitterAuth$idpLoginWithTwitterSync$2$eventListener$1;->$intent:Landroid/content/Intent;

    invoke-static {p1, v0}, Lcom/kakaogame/twitter/TwitterSSOAuthHandler;->startAuthActivityForResult(Landroid/app/Activity;Landroid/content/Intent;)V

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
