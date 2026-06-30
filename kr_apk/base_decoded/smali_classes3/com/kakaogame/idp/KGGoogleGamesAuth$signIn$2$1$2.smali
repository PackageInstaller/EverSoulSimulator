.class final Lcom/kakaogame/idp/KGGoogleGamesAuth$signIn$2$1$2;
.super Ljava/lang/Object;
.source "KGGoogleGamesAuth.kt"

# interfaces
.implements Lcom/google/android/gms/tasks/OnCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kakaogame/idp/KGGoogleGamesAuth$signIn$2$1;->onComplete(Lcom/google/android/gms/tasks/Task;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TResult:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/tasks/OnCompleteListener;"
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
.field final synthetic $activity:Landroid/app/Activity;

.field final synthetic $it:Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/coroutines/Continuation<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/kakaogame/idp/KGGoogleGamesAuth;


# direct methods
.method constructor <init>(Lcom/kakaogame/idp/KGGoogleGamesAuth;Landroid/app/Activity;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/kakaogame/idp/KGGoogleGamesAuth;",
            "Landroid/app/Activity;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/kakaogame/idp/KGGoogleGamesAuth$signIn$2$1$2;->this$0:Lcom/kakaogame/idp/KGGoogleGamesAuth;

    iput-object p2, p0, Lcom/kakaogame/idp/KGGoogleGamesAuth$signIn$2$1$2;->$activity:Landroid/app/Activity;

    iput-object p3, p0, Lcom/kakaogame/idp/KGGoogleGamesAuth$signIn$2$1$2;->$it:Lkotlin/coroutines/Continuation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public final onComplete(Lcom/google/android/gms/tasks/Task;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/tasks/Task<",
            "Lcom/google/android/gms/games/AuthenticationResult;",
            ">;)V"
        }
    .end annotation

    const v0, -0x451bc1ff

    invoke-static {v0}, Lcom/liapp/y;->ڳݬ٬ۮݪ(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2109
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->isSuccessful()Z

    move-result v0

    const v1, -0x22406724

    invoke-static {v1}, Lcom/liapp/y;->״دش۲ݮ(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v0, :cond_0

    .line 2119
    sget-object v0, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    const v3, 0x2257a6ee

    invoke-static {v3}, Lcom/liapp/y;->ֲֳگܱޭ(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->getResult()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/kakaogame/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2129
    sget-object p1, Lcom/kakaogame/idp/KGGoogleGamesAuth;->Companion:Lcom/kakaogame/idp/KGGoogleGamesAuth$Companion;

    const/4 p1, 0x1

    invoke-static {p1}, Lcom/kakaogame/idp/KGGoogleGamesAuth;->access$setSignedIn$cp(Z)V

    .line 2139
    iget-object p1, p0, Lcom/kakaogame/idp/KGGoogleGamesAuth$signIn$2$1$2;->this$0:Lcom/kakaogame/idp/KGGoogleGamesAuth;

    iget-object v0, p0, Lcom/kakaogame/idp/KGGoogleGamesAuth$signIn$2$1$2;->$activity:Landroid/app/Activity;

    new-instance v1, Lcom/kakaogame/idp/KGGoogleGamesAuth$signIn$2$1$2$1;

    iget-object v2, p0, Lcom/kakaogame/idp/KGGoogleGamesAuth$signIn$2$1$2;->$it:Lkotlin/coroutines/Continuation;

    invoke-direct {v1, v2}, Lcom/kakaogame/idp/KGGoogleGamesAuth$signIn$2$1$2$1;-><init>(Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function1;

    invoke-static {p1, v0, v1}, Lcom/kakaogame/idp/KGGoogleGamesAuth;->access$getServerToken(Lcom/kakaogame/idp/KGGoogleGamesAuth;Landroid/app/Activity;Lkotlin/jvm/functions/Function1;)V

    goto :goto_0

    .line 2179
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->getException()Ljava/lang/Exception;

    move-result-object p1

    const v0, -0x451bc0af

    invoke-static {v0}, Lcom/liapp/y;->ڳݬ٬ۮݪ(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/google/android/gms/common/api/ApiException;

    .line 2189
    sget-object v0, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    const v3, -0x451bc517

    invoke-static {v3}, Lcom/liapp/y;->ڳݬ٬ۮݪ(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/ApiException;->getStatusCode()I

    move-result p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/kakaogame/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2199
    sget-object p1, Lcom/kakaogame/idp/KGGoogleGamesAuth;->Companion:Lcom/kakaogame/idp/KGGoogleGamesAuth$Companion;

    const/4 p1, 0x0

    invoke-static {p1}, Lcom/kakaogame/idp/KGGoogleGamesAuth;->access$setSignedIn$cp(Z)V

    .line 2209
    iget-object p1, p0, Lcom/kakaogame/idp/KGGoogleGamesAuth$signIn$2$1$2;->$it:Lkotlin/coroutines/Continuation;

    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    const/4 v0, 0x0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, v0}, Lkotlin/coroutines/Continuation;->resumeWith(Ljava/lang/Object;)V

    :goto_0
    return-void

    nop

    .array-data 1
    .end array-data
.end method
