.class final Lcom/kakaogame/idp/KGGoogleGamesAuth$signIn$2$1;
.super Ljava/lang/Object;
.source "KGGoogleGamesAuth.kt"

# interfaces
.implements Lcom/google/android/gms/tasks/OnCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kakaogame/idp/KGGoogleGamesAuth;->signIn(Landroid/app/Activity;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
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

.field final synthetic $gamesSignInClient:Lcom/google/android/gms/games/GamesSignInClient;

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
.method constructor <init>(Lcom/kakaogame/idp/KGGoogleGamesAuth;Landroid/app/Activity;Lcom/google/android/gms/games/GamesSignInClient;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/kakaogame/idp/KGGoogleGamesAuth;",
            "Landroid/app/Activity;",
            "Lcom/google/android/gms/games/GamesSignInClient;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/kakaogame/idp/KGGoogleGamesAuth$signIn$2$1;->this$0:Lcom/kakaogame/idp/KGGoogleGamesAuth;

    iput-object p2, p0, Lcom/kakaogame/idp/KGGoogleGamesAuth$signIn$2$1;->$activity:Landroid/app/Activity;

    iput-object p3, p0, Lcom/kakaogame/idp/KGGoogleGamesAuth$signIn$2$1;->$gamesSignInClient:Lcom/google/android/gms/games/GamesSignInClient;

    iput-object p4, p0, Lcom/kakaogame/idp/KGGoogleGamesAuth$signIn$2$1;->$it:Lkotlin/coroutines/Continuation;

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

    const v0, 0x6d0eb738

    invoke-static {v0}, Lcom/liapp/y;->ٱڳܴڭܩ(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1979
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->isSuccessful()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->getResult()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/games/AuthenticationResult;

    invoke-virtual {p1}, Lcom/google/android/gms/games/AuthenticationResult;->isAuthenticated()Z

    move-result p1

    if-eqz p1, :cond_0

    move p1, v1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    const v0, -0x22406724

    invoke-static {v0}, Lcom/liapp/y;->״دش۲ݮ(I)Ljava/lang/String;

    move-result-object v0

    if-eqz p1, :cond_1

    .line 1999
    sget-object p1, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    const v2, 0x6d0eb650

    invoke-static {v2}, Lcom/liapp/y;->ٱڳܴڭܩ(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Lcom/kakaogame/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2009
    sget-object p1, Lcom/kakaogame/idp/KGGoogleGamesAuth;->Companion:Lcom/kakaogame/idp/KGGoogleGamesAuth$Companion;

    invoke-static {v1}, Lcom/kakaogame/idp/KGGoogleGamesAuth;->access$setSignedIn$cp(Z)V

    .line 2019
    iget-object p1, p0, Lcom/kakaogame/idp/KGGoogleGamesAuth$signIn$2$1;->this$0:Lcom/kakaogame/idp/KGGoogleGamesAuth;

    iget-object v0, p0, Lcom/kakaogame/idp/KGGoogleGamesAuth$signIn$2$1;->$activity:Landroid/app/Activity;

    new-instance v1, Lcom/kakaogame/idp/KGGoogleGamesAuth$signIn$2$1$1;

    iget-object v2, p0, Lcom/kakaogame/idp/KGGoogleGamesAuth$signIn$2$1;->$it:Lkotlin/coroutines/Continuation;

    invoke-direct {v1, v2}, Lcom/kakaogame/idp/KGGoogleGamesAuth$signIn$2$1$1;-><init>(Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function1;

    invoke-static {p1, v0, v1}, Lcom/kakaogame/idp/KGGoogleGamesAuth;->access$getServerToken(Lcom/kakaogame/idp/KGGoogleGamesAuth;Landroid/app/Activity;Lkotlin/jvm/functions/Function1;)V

    goto :goto_1

    .line 2079
    :cond_1
    sget-object p1, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    const v1, -0x22406d2c

    invoke-static {v1}, Lcom/liapp/y;->״دش۲ݮ(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/kakaogame/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2089
    iget-object p1, p0, Lcom/kakaogame/idp/KGGoogleGamesAuth$signIn$2$1;->$gamesSignInClient:Lcom/google/android/gms/games/GamesSignInClient;

    invoke-interface {p1}, Lcom/google/android/gms/games/GamesSignInClient;->signIn()Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    .line 2099
    new-instance v0, Lcom/kakaogame/idp/KGGoogleGamesAuth$signIn$2$1$2;

    iget-object v1, p0, Lcom/kakaogame/idp/KGGoogleGamesAuth$signIn$2$1;->this$0:Lcom/kakaogame/idp/KGGoogleGamesAuth;

    iget-object v2, p0, Lcom/kakaogame/idp/KGGoogleGamesAuth$signIn$2$1;->$activity:Landroid/app/Activity;

    iget-object v3, p0, Lcom/kakaogame/idp/KGGoogleGamesAuth$signIn$2$1;->$it:Lkotlin/coroutines/Continuation;

    invoke-direct {v0, v1, v2, v3}, Lcom/kakaogame/idp/KGGoogleGamesAuth$signIn$2$1$2;-><init>(Lcom/kakaogame/idp/KGGoogleGamesAuth;Landroid/app/Activity;Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lcom/google/android/gms/tasks/OnCompleteListener;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/tasks/Task;->addOnCompleteListener(Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;

    .line 2239
    iget-object p1, p0, Lcom/kakaogame/idp/KGGoogleGamesAuth$signIn$2$1;->this$0:Lcom/kakaogame/idp/KGGoogleGamesAuth;

    iget-object v0, p0, Lcom/kakaogame/idp/KGGoogleGamesAuth$signIn$2$1;->$activity:Landroid/app/Activity;

    check-cast v0, Landroid/content/Context;

    invoke-static {p1, v0}, Lcom/kakaogame/idp/KGGoogleGamesAuth;->access$setLoginAttempted(Lcom/kakaogame/idp/KGGoogleGamesAuth;Landroid/content/Context;)V

    :goto_1
    return-void

    nop

    .array-data 1
    .end array-data
.end method
