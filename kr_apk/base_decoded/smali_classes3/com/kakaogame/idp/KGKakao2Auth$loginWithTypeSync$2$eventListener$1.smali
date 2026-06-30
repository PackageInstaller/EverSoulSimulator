.class public final Lcom/kakaogame/idp/KGKakao2Auth$loginWithTypeSync$2$eventListener$1;
.super Ljava/lang/Object;
.source "KGKakao2Auth.kt"

# interfaces
.implements Lcom/kakaogame/KGAuthActivity$KGActivityEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kakaogame/idp/KGKakao2Auth;->loginWithTypeSync(Landroid/app/Activity;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
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
        "com/kakaogame/idp/KGKakao2Auth$loginWithTypeSync$2$eventListener$1",
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
        "idp_kakao_release"
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
.field final synthetic $cont:Lkotlinx/coroutines/CancellableContinuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/CancellableContinuation<",
            "Lcom/kakaogame/KGResult<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field final synthetic $txId:Lkotlin/jvm/internal/Ref$LongRef;

.field final synthetic $type:Ljava/lang/String;

.field final synthetic this$0:Lcom/kakaogame/idp/KGKakao2Auth;


# direct methods
.method constructor <init>(Lcom/kakaogame/idp/KGKakao2Auth;Ljava/lang/String;Lkotlinx/coroutines/CancellableContinuation;Lkotlin/jvm/internal/Ref$LongRef;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/kakaogame/idp/KGKakao2Auth;",
            "Ljava/lang/String;",
            "Lkotlinx/coroutines/CancellableContinuation<",
            "-",
            "Lcom/kakaogame/KGResult<",
            "Ljava/lang/String;",
            ">;>;",
            "Lkotlin/jvm/internal/Ref$LongRef;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/kakaogame/idp/KGKakao2Auth$loginWithTypeSync$2$eventListener$1;->this$0:Lcom/kakaogame/idp/KGKakao2Auth;

    iput-object p2, p0, Lcom/kakaogame/idp/KGKakao2Auth$loginWithTypeSync$2$eventListener$1;->$type:Ljava/lang/String;

    iput-object p3, p0, Lcom/kakaogame/idp/KGKakao2Auth$loginWithTypeSync$2$eventListener$1;->$cont:Lkotlinx/coroutines/CancellableContinuation;

    iput-object p4, p0, Lcom/kakaogame/idp/KGKakao2Auth$loginWithTypeSync$2$eventListener$1;->$txId:Lkotlin/jvm/internal/Ref$LongRef;

    .line 1399
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public onActivityStart(Landroid/app/Activity;)V
    .locals 5

    const v0, 0x543d14da

    invoke-static {v0}, Lcom/liapp/y;->׳ֳֳ֬د(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1429
    iget-object v0, p0, Lcom/kakaogame/idp/KGKakao2Auth$loginWithTypeSync$2$eventListener$1;->this$0:Lcom/kakaogame/idp/KGKakao2Auth;

    iget-object v1, p0, Lcom/kakaogame/idp/KGKakao2Auth$loginWithTypeSync$2$eventListener$1;->$type:Ljava/lang/String;

    new-instance v2, Lcom/kakaogame/idp/KGKakao2Auth$loginWithTypeSync$2$eventListener$1$onActivityStart$1;

    iget-object v3, p0, Lcom/kakaogame/idp/KGKakao2Auth$loginWithTypeSync$2$eventListener$1;->$cont:Lkotlinx/coroutines/CancellableContinuation;

    iget-object v4, p0, Lcom/kakaogame/idp/KGKakao2Auth$loginWithTypeSync$2$eventListener$1;->$txId:Lkotlin/jvm/internal/Ref$LongRef;

    invoke-direct {v2, v3, v4, p0}, Lcom/kakaogame/idp/KGKakao2Auth$loginWithTypeSync$2$eventListener$1$onActivityStart$1;-><init>(Lkotlinx/coroutines/CancellableContinuation;Lkotlin/jvm/internal/Ref$LongRef;Lcom/kakaogame/idp/KGKakao2Auth$loginWithTypeSync$2$eventListener$1;)V

    check-cast v2, Lkotlin/jvm/functions/Function1;

    invoke-static {v0, p1, v1, v2}, Lcom/kakaogame/idp/KGKakao2Auth;->access$kakaoLoginWithType(Lcom/kakaogame/idp/KGKakao2Auth;Landroid/app/Activity;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public onDestroy()V
    .locals 3

    .line 1539
    iget-object v0, p0, Lcom/kakaogame/idp/KGKakao2Auth$loginWithTypeSync$2$eventListener$1;->$cont:Lkotlinx/coroutines/CancellableContinuation;

    invoke-interface {v0}, Lkotlinx/coroutines/CancellableContinuation;->isActive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1549
    sget-object v0, Lcom/kakaogame/auth/AuthActivityManager;->Companion:Lcom/kakaogame/auth/AuthActivityManager$Companion;

    invoke-virtual {v0}, Lcom/kakaogame/auth/AuthActivityManager$Companion;->getInstance()Lcom/kakaogame/auth/AuthActivityManager;

    move-result-object v0

    iget-object v1, p0, Lcom/kakaogame/idp/KGKakao2Auth$loginWithTypeSync$2$eventListener$1;->$txId:Lkotlin/jvm/internal/Ref$LongRef;

    iget-wide v1, v1, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    invoke-virtual {v0, v1, v2}, Lcom/kakaogame/auth/AuthActivityManager;->finishActivity(J)V

    .line 1559
    sget-object v0, Lcom/kakaogame/auth/AuthActivityManager;->Companion:Lcom/kakaogame/auth/AuthActivityManager$Companion;

    invoke-virtual {v0}, Lcom/kakaogame/auth/AuthActivityManager$Companion;->getInstance()Lcom/kakaogame/auth/AuthActivityManager;

    move-result-object v0

    move-object v1, p0

    check-cast v1, Lcom/kakaogame/KGAuthActivity$KGActivityEventListener;

    invoke-virtual {v0, v1}, Lcom/kakaogame/auth/AuthActivityManager;->removeResultListener(Lcom/kakaogame/KGAuthActivity$KGActivityEventListener;)V

    .line 1569
    iget-object v0, p0, Lcom/kakaogame/idp/KGKakao2Auth$loginWithTypeSync$2$eventListener$1;->$cont:Lkotlinx/coroutines/CancellableContinuation;

    check-cast v0, Lkotlin/coroutines/Continuation;

    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    sget-object v1, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    const/16 v2, 0x2329

    invoke-virtual {v1, v2}, Lcom/kakaogame/KGResult$Companion;->getResult(I)Lcom/kakaogame/KGResult;

    move-result-object v1

    invoke-static {v1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Lkotlin/coroutines/Continuation;->resumeWith(Ljava/lang/Object;)V

    :cond_0
    return-void

    nop

    .array-data 1
    .end array-data
.end method
