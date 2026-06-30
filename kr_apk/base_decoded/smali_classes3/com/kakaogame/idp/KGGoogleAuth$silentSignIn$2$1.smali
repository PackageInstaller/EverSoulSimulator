.class final Lcom/kakaogame/idp/KGGoogleAuth$silentSignIn$2$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "KGGoogleAuth.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kakaogame/idp/KGGoogleAuth;->silentSignIn(Landroid/app/Activity;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
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
    c = "com.kakaogame.idp.KGGoogleAuth$silentSignIn$2$1"
    f = "KGGoogleAuth.kt"
    i = {}
    l = {
        0x139
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $activity:Landroid/app/Activity;

.field final synthetic $it:Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/coroutines/Continuation<",
            "Lcom/kakaogame/KGResult<",
            "Lcom/kakaogame/idp/IdpAccount;",
            ">;>;"
        }
    .end annotation
.end field

.field final synthetic $request:Landroidx/credentials/GetCredentialRequest;

.field label:I

.field final synthetic this$0:Lcom/kakaogame/idp/KGGoogleAuth;


# direct methods
.method constructor <init>(Lcom/kakaogame/idp/KGGoogleAuth;Landroid/app/Activity;Landroidx/credentials/GetCredentialRequest;Lkotlin/coroutines/Continuation;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/kakaogame/idp/KGGoogleAuth;",
            "Landroid/app/Activity;",
            "Landroidx/credentials/GetCredentialRequest;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/kakaogame/KGResult<",
            "Lcom/kakaogame/idp/IdpAccount;",
            ">;>;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/kakaogame/idp/KGGoogleAuth$silentSignIn$2$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/kakaogame/idp/KGGoogleAuth$silentSignIn$2$1;->this$0:Lcom/kakaogame/idp/KGGoogleAuth;

    iput-object p2, p0, Lcom/kakaogame/idp/KGGoogleAuth$silentSignIn$2$1;->$activity:Landroid/app/Activity;

    iput-object p3, p0, Lcom/kakaogame/idp/KGGoogleAuth$silentSignIn$2$1;->$request:Landroidx/credentials/GetCredentialRequest;

    iput-object p4, p0, Lcom/kakaogame/idp/KGGoogleAuth$silentSignIn$2$1;->$it:Lkotlin/coroutines/Continuation;

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

    new-instance p1, Lcom/kakaogame/idp/KGGoogleAuth$silentSignIn$2$1;

    iget-object v1, p0, Lcom/kakaogame/idp/KGGoogleAuth$silentSignIn$2$1;->this$0:Lcom/kakaogame/idp/KGGoogleAuth;

    iget-object v2, p0, Lcom/kakaogame/idp/KGGoogleAuth$silentSignIn$2$1;->$activity:Landroid/app/Activity;

    iget-object v3, p0, Lcom/kakaogame/idp/KGGoogleAuth$silentSignIn$2$1;->$request:Landroidx/credentials/GetCredentialRequest;

    iget-object v4, p0, Lcom/kakaogame/idp/KGGoogleAuth$silentSignIn$2$1;->$it:Lkotlin/coroutines/Continuation;

    move-object v0, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/kakaogame/idp/KGGoogleAuth$silentSignIn$2$1;-><init>(Lcom/kakaogame/idp/KGGoogleAuth;Landroid/app/Activity;Landroidx/credentials/GetCredentialRequest;Lkotlin/coroutines/Continuation;Lkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlin/coroutines/Continuation;

    return-object p1

    .array-data 1
    .end array-data
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/kakaogame/idp/KGGoogleAuth$silentSignIn$2$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/kakaogame/idp/KGGoogleAuth$silentSignIn$2$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/kakaogame/idp/KGGoogleAuth$silentSignIn$2$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/kakaogame/idp/KGGoogleAuth$silentSignIn$2$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    nop

    .array-data 1
    .end array-data
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 3119
    iget v1, p0, Lcom/kakaogame/idp/KGGoogleAuth$silentSignIn$2$1;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catch Landroidx/credentials/exceptions/GetCredentialException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const v0, -0x451e018f

    invoke-static {v0}, Lcom/liapp/y;->ڳݬ٬ۮݪ(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 3139
    :try_start_1
    iget-object p1, p0, Lcom/kakaogame/idp/KGGoogleAuth$silentSignIn$2$1;->this$0:Lcom/kakaogame/idp/KGGoogleAuth;

    invoke-static {p1}, Lcom/kakaogame/idp/KGGoogleAuth;->access$getCredentialManager$p(Lcom/kakaogame/idp/KGGoogleAuth;)Landroidx/credentials/CredentialManager;

    move-result-object p1

    if-nez p1, :cond_2

    const-string p1, "credentialManager"

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 3159
    :cond_2
    iget-object v1, p0, Lcom/kakaogame/idp/KGGoogleAuth$silentSignIn$2$1;->$activity:Landroid/app/Activity;

    check-cast v1, Landroid/content/Context;

    .line 3149
    iget-object v3, p0, Lcom/kakaogame/idp/KGGoogleAuth$silentSignIn$2$1;->$request:Landroidx/credentials/GetCredentialRequest;

    move-object v4, p0

    check-cast v4, Lkotlin/coroutines/Continuation;

    .line 3139
    iput v2, p0, Lcom/kakaogame/idp/KGGoogleAuth$silentSignIn$2$1;->label:I

    invoke-interface {p1, v1, v3, v4}, Landroidx/credentials/CredentialManager;->getCredential(Landroid/content/Context;Landroidx/credentials/GetCredentialRequest;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_3

    return-object v0

    .line 3119
    :cond_3
    :goto_0
    check-cast p1, Landroidx/credentials/GetCredentialResponse;

    .line 3179
    iget-object v0, p0, Lcom/kakaogame/idp/KGGoogleAuth$silentSignIn$2$1;->this$0:Lcom/kakaogame/idp/KGGoogleAuth;

    invoke-static {v0, p1}, Lcom/kakaogame/idp/KGGoogleAuth;->access$handleSignIn(Lcom/kakaogame/idp/KGGoogleAuth;Landroidx/credentials/GetCredentialResponse;)Lcom/kakaogame/KGResult;

    move-result-object p1

    .line 3189
    iget-object v0, p0, Lcom/kakaogame/idp/KGGoogleAuth$silentSignIn$2$1;->$it:Lkotlin/coroutines/Continuation;

    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, p1}, Lkotlin/coroutines/Continuation;->resumeWith(Ljava/lang/Object;)V
    :try_end_1
    .catch Landroidx/credentials/exceptions/GetCredentialException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 3209
    :goto_1
    iget-object v0, p0, Lcom/kakaogame/idp/KGGoogleAuth$silentSignIn$2$1;->$it:Lkotlin/coroutines/Continuation;

    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 3219
    sget-object v1, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    const/16 v2, 0xfaa

    .line 3239
    invoke-virtual {p1}, Landroidx/credentials/exceptions/GetCredentialException;->toString()Ljava/lang/String;

    move-result-object p1

    .line 3219
    invoke-virtual {v1, v2, p1}, Lcom/kakaogame/KGResult$Companion;->getResult(ILjava/lang/String;)Lcom/kakaogame/KGResult;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, p1}, Lkotlin/coroutines/Continuation;->resumeWith(Ljava/lang/Object;)V

    .line 3279
    :goto_2
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    nop

    .array-data 1
    .end array-data
.end method
