.class final Lcom/kakaogame/auth/agreement/AdConsentManager$sendBasicLog$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "AdConsentManager.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kakaogame/auth/agreement/AdConsentManager;->sendBasicLog(Landroid/content/Context;ZZLjava/lang/String;)V
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
    c = "com.kakaogame.auth.agreement.AdConsentManager$sendBasicLog$1"
    f = "AdConsentManager.kt"
    i = {}
    l = {}
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $action:Ljava/lang/String;

.field final synthetic $adid:Ljava/lang/String;

.field final synthetic $category:Ljava/lang/String;

.field final synthetic $context:Landroid/content/Context;

.field final synthetic $label:Ljava/lang/String;

.field final synthetic $position:Ljava/lang/String;

.field label:I


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/kakaogame/auth/agreement/AdConsentManager$sendBasicLog$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/kakaogame/auth/agreement/AdConsentManager$sendBasicLog$1;->$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/kakaogame/auth/agreement/AdConsentManager$sendBasicLog$1;->$category:Ljava/lang/String;

    iput-object p3, p0, Lcom/kakaogame/auth/agreement/AdConsentManager$sendBasicLog$1;->$action:Ljava/lang/String;

    iput-object p4, p0, Lcom/kakaogame/auth/agreement/AdConsentManager$sendBasicLog$1;->$label:Ljava/lang/String;

    iput-object p5, p0, Lcom/kakaogame/auth/agreement/AdConsentManager$sendBasicLog$1;->$position:Ljava/lang/String;

    iput-object p6, p0, Lcom/kakaogame/auth/agreement/AdConsentManager$sendBasicLog$1;->$adid:Ljava/lang/String;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p7}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void

    nop

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 8
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

    new-instance p1, Lcom/kakaogame/auth/agreement/AdConsentManager$sendBasicLog$1;

    iget-object v1, p0, Lcom/kakaogame/auth/agreement/AdConsentManager$sendBasicLog$1;->$context:Landroid/content/Context;

    iget-object v2, p0, Lcom/kakaogame/auth/agreement/AdConsentManager$sendBasicLog$1;->$category:Ljava/lang/String;

    iget-object v3, p0, Lcom/kakaogame/auth/agreement/AdConsentManager$sendBasicLog$1;->$action:Ljava/lang/String;

    iget-object v4, p0, Lcom/kakaogame/auth/agreement/AdConsentManager$sendBasicLog$1;->$label:Ljava/lang/String;

    iget-object v5, p0, Lcom/kakaogame/auth/agreement/AdConsentManager$sendBasicLog$1;->$position:Ljava/lang/String;

    iget-object v6, p0, Lcom/kakaogame/auth/agreement/AdConsentManager$sendBasicLog$1;->$adid:Ljava/lang/String;

    move-object v0, p1

    move-object v7, p2

    invoke-direct/range {v0 .. v7}, Lcom/kakaogame/auth/agreement/AdConsentManager$sendBasicLog$1;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlin/coroutines/Continuation;

    return-object p1

    .array-data 1
    .end array-data
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/kakaogame/auth/agreement/AdConsentManager$sendBasicLog$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/kakaogame/auth/agreement/AdConsentManager$sendBasicLog$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/kakaogame/auth/agreement/AdConsentManager$sendBasicLog$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/kakaogame/auth/agreement/AdConsentManager$sendBasicLog$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    nop

    .array-data 1
    .end array-data
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 1299
    iget v0, p0, Lcom/kakaogame/auth/agreement/AdConsentManager$sendBasicLog$1;->label:I

    if-nez v0, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 1309
    sget-object v1, Lcom/kakaogame/log/service/BasicLogService;->INSTANCE:Lcom/kakaogame/log/service/BasicLogService;

    .line 1319
    iget-object v2, p0, Lcom/kakaogame/auth/agreement/AdConsentManager$sendBasicLog$1;->$context:Landroid/content/Context;

    .line 1329
    iget-object v3, p0, Lcom/kakaogame/auth/agreement/AdConsentManager$sendBasicLog$1;->$category:Ljava/lang/String;

    .line 1339
    iget-object v4, p0, Lcom/kakaogame/auth/agreement/AdConsentManager$sendBasicLog$1;->$action:Ljava/lang/String;

    .line 1349
    iget-object v5, p0, Lcom/kakaogame/auth/agreement/AdConsentManager$sendBasicLog$1;->$label:Ljava/lang/String;

    .line 1359
    iget-object v6, p0, Lcom/kakaogame/auth/agreement/AdConsentManager$sendBasicLog$1;->$position:Ljava/lang/String;

    .line 1369
    iget-object v7, p0, Lcom/kakaogame/auth/agreement/AdConsentManager$sendBasicLog$1;->$adid:Ljava/lang/String;

    .line 1309
    invoke-virtual/range {v1 .. v7}, Lcom/kakaogame/log/service/BasicLogService;->writeBasicLogForAdConsent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1389
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 1299
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const v0, -0x451e018f

    invoke-static {v0}, Lcom/liapp/y;->ڳݬ٬ۮݪ(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    nop

    .array-data 1
    .end array-data
.end method
