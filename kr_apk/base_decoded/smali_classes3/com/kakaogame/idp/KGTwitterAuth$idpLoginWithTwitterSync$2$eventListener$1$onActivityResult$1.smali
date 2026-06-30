.class final Lcom/kakaogame/idp/KGTwitterAuth$idpLoginWithTwitterSync$2$eventListener$1$onActivityResult$1;
.super Ljava/lang/Object;
.source "KGTwitterAuth.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kakaogame/idp/KGTwitterAuth$idpLoginWithTwitterSync$2$eventListener$1;->onActivityResult(IILandroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlin/jvm/functions/Function1<",
        "Lcom/kakaogame/KGResult<",
        "Ltwitter4j/auth/AccessToken;",
        ">;",
        "Lkotlin/Unit;",
        ">;"
    }
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

.field final synthetic this$0:Lcom/kakaogame/idp/KGTwitterAuth$idpLoginWithTwitterSync$2$eventListener$1;


# direct methods
.method constructor <init>(Lkotlin/jvm/internal/Ref$LongRef;Lcom/kakaogame/idp/KGTwitterAuth$idpLoginWithTwitterSync$2$eventListener$1;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/internal/Ref$LongRef;",
            "Lcom/kakaogame/idp/KGTwitterAuth$idpLoginWithTwitterSync$2$eventListener$1;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/kakaogame/KGResult<",
            "Ltwitter4j/auth/AccessToken;",
            ">;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/kakaogame/idp/KGTwitterAuth$idpLoginWithTwitterSync$2$eventListener$1$onActivityResult$1;->$txId:Lkotlin/jvm/internal/Ref$LongRef;

    iput-object p2, p0, Lcom/kakaogame/idp/KGTwitterAuth$idpLoginWithTwitterSync$2$eventListener$1$onActivityResult$1;->this$0:Lcom/kakaogame/idp/KGTwitterAuth$idpLoginWithTwitterSync$2$eventListener$1;

    iput-object p3, p0, Lcom/kakaogame/idp/KGTwitterAuth$idpLoginWithTwitterSync$2$eventListener$1$onActivityResult$1;->$it:Lkotlin/coroutines/Continuation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1349
    check-cast p1, Lcom/kakaogame/KGResult;

    invoke-virtual {p0, p1}, Lcom/kakaogame/idp/KGTwitterAuth$idpLoginWithTwitterSync$2$eventListener$1$onActivityResult$1;->invoke(Lcom/kakaogame/KGResult;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .array-data 1
    .end array-data
.end method

.method public final invoke(Lcom/kakaogame/KGResult;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/kakaogame/KGResult<",
            "Ltwitter4j/auth/AccessToken;",
            ">;)V"
        }
    .end annotation

    const v0, 0x543e8a9a

    invoke-static {v0}, Lcom/liapp/y;->׳ֳֳ֬د(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1359
    sget-object v0, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const v2, 0x22556a76

    invoke-static {v2}, Lcom/liapp/y;->ֲֳگܱޭ(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const v2, 0x22579a26

    invoke-static {v2}, Lcom/liapp/y;->ֲֳگܱޭ(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lcom/kakaogame/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1369
    sget-object v0, Lcom/kakaogame/auth/AuthActivityManager;->Companion:Lcom/kakaogame/auth/AuthActivityManager$Companion;

    invoke-virtual {v0}, Lcom/kakaogame/auth/AuthActivityManager$Companion;->getInstance()Lcom/kakaogame/auth/AuthActivityManager;

    move-result-object v0

    iget-object v1, p0, Lcom/kakaogame/idp/KGTwitterAuth$idpLoginWithTwitterSync$2$eventListener$1$onActivityResult$1;->$txId:Lkotlin/jvm/internal/Ref$LongRef;

    iget-wide v1, v1, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    invoke-virtual {v0, v1, v2}, Lcom/kakaogame/auth/AuthActivityManager;->finishActivity(J)V

    .line 1379
    sget-object v0, Lcom/kakaogame/auth/AuthActivityManager;->Companion:Lcom/kakaogame/auth/AuthActivityManager$Companion;

    invoke-virtual {v0}, Lcom/kakaogame/auth/AuthActivityManager$Companion;->getInstance()Lcom/kakaogame/auth/AuthActivityManager;

    move-result-object v0

    iget-object v1, p0, Lcom/kakaogame/idp/KGTwitterAuth$idpLoginWithTwitterSync$2$eventListener$1$onActivityResult$1;->this$0:Lcom/kakaogame/idp/KGTwitterAuth$idpLoginWithTwitterSync$2$eventListener$1;

    check-cast v1, Lcom/kakaogame/KGAuthActivity$KGActivityEventListener;

    invoke-virtual {v0, v1}, Lcom/kakaogame/auth/AuthActivityManager;->removeResultListener(Lcom/kakaogame/KGAuthActivity$KGActivityEventListener;)V

    .line 1389
    iget-object v0, p0, Lcom/kakaogame/idp/KGTwitterAuth$idpLoginWithTwitterSync$2$eventListener$1$onActivityResult$1;->$it:Lkotlin/coroutines/Continuation;

    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, p1}, Lkotlin/coroutines/Continuation;->resumeWith(Ljava/lang/Object;)V

    return-void

    .array-data 1
    .end array-data
.end method
