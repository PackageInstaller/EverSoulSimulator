.class final Lcom/kakaogame/idp/KGSIWAAuth$idpLoginSync$2$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "KGSIWAAuth.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kakaogame/idp/KGSIWAAuth;->idpLoginSync(Landroid/app/Activity;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lkotlinx/coroutines/CoroutineScope;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"
    }
    d2 = {
        "<anonymous>",
        "",
        "Lkotlinx/coroutines/CoroutineScope;"
    }
    k = 0x3
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.kakaogame.idp.KGSIWAAuth$idpLoginSync$2$1"
    f = "KGSIWAAuth.kt"
    i = {}
    l = {}
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $activity:Landroid/app/Activity;

.field final synthetic $cont:Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/coroutines/Continuation<",
            "Lcom/kakaogame/KGResult<",
            "Lcom/kakaogame/idp/IdpAccount;",
            ">;>;"
        }
    .end annotation
.end field

.field final synthetic $url:Ljava/lang/String;

.field label:I

.field final synthetic this$0:Lcom/kakaogame/idp/KGSIWAAuth;


# direct methods
.method constructor <init>(Landroid/app/Activity;Ljava/lang/String;Lcom/kakaogame/idp/KGSIWAAuth;Lkotlin/coroutines/Continuation;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/lang/String;",
            "Lcom/kakaogame/idp/KGSIWAAuth;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/kakaogame/KGResult<",
            "Lcom/kakaogame/idp/IdpAccount;",
            ">;>;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/kakaogame/idp/KGSIWAAuth$idpLoginSync$2$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/kakaogame/idp/KGSIWAAuth$idpLoginSync$2$1;->$activity:Landroid/app/Activity;

    iput-object p2, p0, Lcom/kakaogame/idp/KGSIWAAuth$idpLoginSync$2$1;->$url:Ljava/lang/String;

    iput-object p3, p0, Lcom/kakaogame/idp/KGSIWAAuth$idpLoginSync$2$1;->this$0:Lcom/kakaogame/idp/KGSIWAAuth;

    iput-object p4, p0, Lcom/kakaogame/idp/KGSIWAAuth$idpLoginSync$2$1;->$cont:Lkotlin/coroutines/Continuation;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p5}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void

    nop

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlin/coroutines/Continuation<",
            "*>;)",
            "Lkotlin/coroutines/Continuation<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    new-instance p1, Lcom/kakaogame/idp/KGSIWAAuth$idpLoginSync$2$1;

    iget-object v1, p0, Lcom/kakaogame/idp/KGSIWAAuth$idpLoginSync$2$1;->$activity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/kakaogame/idp/KGSIWAAuth$idpLoginSync$2$1;->$url:Ljava/lang/String;

    iget-object v3, p0, Lcom/kakaogame/idp/KGSIWAAuth$idpLoginSync$2$1;->this$0:Lcom/kakaogame/idp/KGSIWAAuth;

    iget-object v4, p0, Lcom/kakaogame/idp/KGSIWAAuth$idpLoginSync$2$1;->$cont:Lkotlin/coroutines/Continuation;

    move-object v0, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/kakaogame/idp/KGSIWAAuth$idpLoginSync$2$1;-><init>(Landroid/app/Activity;Ljava/lang/String;Lcom/kakaogame/idp/KGSIWAAuth;Lkotlin/coroutines/Continuation;Lkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlin/coroutines/Continuation;

    return-object p1

    .array-data 1
    .end array-data
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/kakaogame/idp/KGSIWAAuth$idpLoginSync$2$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    nop

    .array-data 1
    .end array-data
.end method

.method public final invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/CoroutineScope;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/kakaogame/idp/KGSIWAAuth$idpLoginSync$2$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/kakaogame/idp/KGSIWAAuth$idpLoginSync$2$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/kakaogame/idp/KGSIWAAuth$idpLoginSync$2$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    nop

    .array-data 1
    .end array-data
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 669
    iget v0, p0, Lcom/kakaogame/idp/KGSIWAAuth$idpLoginSync$2$1;->label:I

    if-nez v0, :cond_1

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 679
    iget-object p1, p0, Lcom/kakaogame/idp/KGSIWAAuth$idpLoginSync$2$1;->$activity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getRequestedOrientation()I

    move-result p1

    .line 689
    iget-object v0, p0, Lcom/kakaogame/idp/KGSIWAAuth$idpLoginSync$2$1;->$activity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/kakaogame/util/DisplayUtil;->isScreenPortrait(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 709
    iget-object v0, p0, Lcom/kakaogame/idp/KGSIWAAuth$idpLoginSync$2$1;->$activity:Landroid/app/Activity;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    goto :goto_0

    .line 729
    :cond_0
    iget-object v0, p0, Lcom/kakaogame/idp/KGSIWAAuth$idpLoginSync$2$1;->$activity:Landroid/app/Activity;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 749
    :goto_0
    new-instance v0, Lcom/kakaogame/idp/SIWAWebDialog;

    iget-object v1, p0, Lcom/kakaogame/idp/KGSIWAAuth$idpLoginSync$2$1;->$activity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/kakaogame/idp/KGSIWAAuth$idpLoginSync$2$1;->$url:Ljava/lang/String;

    new-instance v3, Lcom/kakaogame/web/WebDialog$Settings$Builder;

    invoke-direct {v3}, Lcom/kakaogame/web/WebDialog$Settings$Builder;-><init>()V

    invoke-virtual {v3}, Lcom/kakaogame/web/WebDialog$Settings$Builder;->build()Lcom/kakaogame/web/WebDialog$Settings;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/kakaogame/idp/SIWAWebDialog;-><init>(Landroid/app/Activity;Ljava/lang/String;Lcom/kakaogame/web/WebDialog$Settings;)V

    .line 769
    new-instance v1, Lcom/kakaogame/idp/KGSIWAAuth$idpLoginSync$2$1$1;

    iget-object v2, p0, Lcom/kakaogame/idp/KGSIWAAuth$idpLoginSync$2$1;->$activity:Landroid/app/Activity;

    iget-object v3, p0, Lcom/kakaogame/idp/KGSIWAAuth$idpLoginSync$2$1;->this$0:Lcom/kakaogame/idp/KGSIWAAuth;

    iget-object v4, p0, Lcom/kakaogame/idp/KGSIWAAuth$idpLoginSync$2$1;->$cont:Lkotlin/coroutines/Continuation;

    invoke-direct {v1, v2, p1, v3, v4}, Lcom/kakaogame/idp/KGSIWAAuth$idpLoginSync$2$1$1;-><init>(Landroid/app/Activity;ILcom/kakaogame/idp/KGSIWAAuth;Lkotlin/coroutines/Continuation;)V

    check-cast v1, Landroid/content/DialogInterface$OnDismissListener;

    invoke-virtual {v0, v1}, Lcom/kakaogame/idp/SIWAWebDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 1169
    invoke-virtual {v0}, Lcom/kakaogame/idp/SIWAWebDialog;->show()V

    .line 1179
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 669
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const v0, -0x451e018f

    invoke-static {v0}, Lcom/liapp/y;->ڳݬ٬ۮݪ(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .array-data 1
    .end array-data
.end method
