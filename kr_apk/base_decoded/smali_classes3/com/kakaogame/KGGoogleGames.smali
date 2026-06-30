.class public final Lcom/kakaogame/KGGoogleGames;
.super Ljava/lang/Object;
.source "KGGoogleGames.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0004\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0008\u0010\u0006\u001a\u00020\u0007H\u0007J\"\u0010\u0008\u001a\u00020\u00072\u0006\u0010\t\u001a\u00020\n2\u0010\u0010\u000b\u001a\u000c\u0012\u0006\u0012\u0004\u0018\u00010\r\u0018\u00010\u000cH\u0007J\u001a\u0010\u000e\u001a\u00020\u00072\u0010\u0010\u000b\u001a\u000c\u0012\u0006\u0012\u0004\u0018\u00010\r\u0018\u00010\u000cH\u0007J\u0008\u0010\u0013\u001a\u00020\u0007H\u0002R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082T\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u000f\u001a\u00020\u00108FX\u0087\u0004\u00a2\u0006\u000c\u0012\u0004\u0008\u0011\u0010\u0003\u001a\u0004\u0008\u000f\u0010\u0012\u00a8\u0006\u0014"
    }
    d2 = {
        "Lcom/kakaogame/KGGoogleGames;",
        "",
        "<init>",
        "()V",
        "TAG",
        "",
        "initialize",
        "",
        "login",
        "activity",
        "Landroid/app/Activity;",
        "callback",
        "Lcom/kakaogame/KGResultCallback;",
        "Ljava/lang/Void;",
        "logout",
        "isLoggedIn",
        "",
        "isLoggedIn$annotations",
        "()Z",
        "initInterfaceBroker",
        "idp_google_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final INSTANCE:Lcom/kakaogame/KGGoogleGames;

.field private static final TAG:Ljava/lang/String; = "KGGoogleGames"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/kakaogame/KGGoogleGames;

    invoke-direct {v0}, Lcom/kakaogame/KGGoogleGames;-><init>()V

    sput-object v0, Lcom/kakaogame/KGGoogleGames;->INSTANCE:Lcom/kakaogame/KGGoogleGames;

    return-void

    .array-data 1
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .line 169
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void

    .array-data 1
    .end array-data
.end method

.method private final initInterfaceBroker()V
    .locals 2

    .line 799
    new-instance v0, Lcom/kakaogame/KGGoogleGames$initInterfaceBroker$1;

    invoke-direct {v0}, Lcom/kakaogame/KGGoogleGames$initInterfaceBroker$1;-><init>()V

    check-cast v0, Lcom/kakaogame/broker/InterfaceBrokerHandler$InterfaceBroker;

    const v1, -0x451e8e77    # -0.0017199974f

    invoke-static {v1}, Lcom/liapp/y;->ڳݬ٬ۮݪ(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/kakaogame/broker/InterfaceBrokerHandler;->registerInterfaceBroker(Ljava/lang/String;Lcom/kakaogame/broker/InterfaceBrokerHandler$InterfaceBroker;)V

    .line 929
    new-instance v0, Lcom/kakaogame/KGGoogleGames$initInterfaceBroker$2;

    invoke-direct {v0}, Lcom/kakaogame/KGGoogleGames$initInterfaceBroker$2;-><init>()V

    check-cast v0, Lcom/kakaogame/broker/InterfaceBrokerHandler$InterfaceBroker;

    const v1, 0x543ee0ba

    invoke-static {v1}, Lcom/liapp/y;->׳ֳֳ֬د(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/kakaogame/broker/InterfaceBrokerHandler;->registerInterfaceBroker(Ljava/lang/String;Lcom/kakaogame/broker/InterfaceBrokerHandler$InterfaceBroker;)V

    .line 1019
    new-instance v0, Lcom/kakaogame/KGGoogleGames$initInterfaceBroker$3;

    invoke-direct {v0}, Lcom/kakaogame/KGGoogleGames$initInterfaceBroker$3;-><init>()V

    check-cast v0, Lcom/kakaogame/broker/InterfaceBrokerHandler$InterfaceBroker;

    const v1, -0x22452a6c

    invoke-static {v1}, Lcom/liapp/y;->״دش۲ݮ(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/kakaogame/broker/InterfaceBrokerHandler;->registerInterfaceBroker(Ljava/lang/String;Lcom/kakaogame/broker/InterfaceBrokerHandler$InterfaceBroker;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method public static final initialize()V
    .locals 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 219
    sget-object v0, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    const v1, 0x2252f5de

    invoke-static {v1}, Lcom/liapp/y;->ֲֳگܱޭ(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x33655853

    invoke-static {v2}, Lcom/liapp/y;->ׯ״ٲ֬ب(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/kakaogame/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    sget-object v0, Lcom/kakaogame/KGGoogleGames;->INSTANCE:Lcom/kakaogame/KGGoogleGames;

    invoke-direct {v0}, Lcom/kakaogame/KGGoogleGames;->initInterfaceBroker()V

    .line 239
    invoke-static {}, Lcom/kakaogame/KGGoogleGamesAchievements;->initialize()V

    .line 249
    invoke-static {}, Lcom/kakaogame/KGGoogleGamesLeaderboards;->initialize()V

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public static final isLoggedIn()Z
    .locals 4

    .line 729
    :try_start_0
    sget-object v0, Lcom/kakaogame/idp/KGGoogleGamesAuth;->Companion:Lcom/kakaogame/idp/KGGoogleGamesAuth$Companion;

    invoke-virtual {v0}, Lcom/kakaogame/idp/KGGoogleGamesAuth$Companion;->isSignedIn()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 749
    sget-object v1, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    check-cast v0, Ljava/lang/Throwable;

    const v3, 0x2252f5de

    invoke-static {v3}, Lcom/liapp/y;->ֲֳگܱޭ(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3, v2, v0}, Lcom/kakaogame/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    :goto_0
    return v0

    .array-data 1
    .end array-data
.end method

.method public static synthetic isLoggedIn$annotations()V
    .locals 0
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public static final login(Landroid/app/Activity;Lcom/kakaogame/KGResultCallback;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lcom/kakaogame/KGResultCallback<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const v0, 0x543d14da

    invoke-static {v0}, Lcom/liapp/y;->׳ֳֳ֬د(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 359
    invoke-static {}, Lcom/kakaogame/KGGoogleGames;->isLoggedIn()Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    .line 369
    sget-object p0, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    invoke-virtual {p0}, Lcom/kakaogame/KGResult$Companion;->getSuccessResult()Lcom/kakaogame/KGResult;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/kakaogame/KGResultCallback;->onResult(Lcom/kakaogame/KGResult;)V

    :cond_0
    return-void

    .line 399
    :cond_1
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    invoke-static {v0}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    new-instance v0, Lcom/kakaogame/KGGoogleGames$login$1;

    const/4 v4, 0x0

    invoke-direct {v0, p0, p1, v4}, Lcom/kakaogame/KGGoogleGames$login$1;-><init>(Landroid/app/Activity;Lcom/kakaogame/KGResultCallback;Lkotlin/coroutines/Continuation;)V

    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v5, 0x3

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public static final logout(Lcom/kakaogame/KGResultCallback;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/kakaogame/KGResultCallback<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 559
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    invoke-static {v0}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    new-instance v0, Lcom/kakaogame/KGGoogleGames$logout$1;

    const/4 v4, 0x0

    invoke-direct {v0, p0, v4}, Lcom/kakaogame/KGGoogleGames$logout$1;-><init>(Lcom/kakaogame/KGResultCallback;Lkotlin/coroutines/Continuation;)V

    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v5, 0x3

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void

    nop

    .array-data 1
    .end array-data
.end method
