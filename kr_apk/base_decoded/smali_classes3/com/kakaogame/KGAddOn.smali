.class public final Lcom/kakaogame/KGAddOn;
.super Ljava/lang/Object;
.source "KGAddOn.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0008\u0010\u0006\u001a\u00020\u0007H\u0007J \u0010\u0008\u001a\u00020\u00072\u0016\u0010\t\u001a\u0012\u0012\u000c\u0012\n\u0012\u0004\u0012\u00020\u000c\u0018\u00010\u000b\u0018\u00010\nH\u0007J*\u0010\r\u001a\u00020\u00072\u0006\u0010\u000e\u001a\u00020\u00052\u0006\u0010\u000f\u001a\u00020\u00052\u0010\u0010\t\u001a\u000c\u0012\u0006\u0012\u0004\u0018\u00010\u0010\u0018\u00010\nH\u0007J\u0008\u0010\u0011\u001a\u00020\u0007H\u0002R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0012"
    }
    d2 = {
        "Lcom/kakaogame/KGAddOn;",
        "",
        "<init>",
        "()V",
        "CLASS_NAME_KEY",
        "",
        "initialize",
        "",
        "loadIncompleteServices",
        "callback",
        "Lcom/kakaogame/KGResultCallback;",
        "",
        "Lcom/kakaogame/addon/KGService;",
        "finishService",
        "keyId",
        "code",
        "Ljava/lang/Void;",
        "initInterfaceBroker",
        "kakaogame_addon_release"
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
.field private static final CLASS_NAME_KEY:Ljava/lang/String; = "KGAddOn"

.field public static final INSTANCE:Lcom/kakaogame/KGAddOn;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/kakaogame/KGAddOn;

    invoke-direct {v0}, Lcom/kakaogame/KGAddOn;-><init>()V

    sput-object v0, Lcom/kakaogame/KGAddOn;->INSTANCE:Lcom/kakaogame/KGAddOn;

    return-void

    .array-data 1
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .line 159
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void

    .array-data 1
    .end array-data
.end method

.method public static final finishService(Ljava/lang/String;Ljava/lang/String;Lcom/kakaogame/KGResultCallback;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/kakaogame/KGResultCallback<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const v0, 0x7d7764ad

    invoke-static {v0}, Lcom/liapp/y;->حֲݴܳޯ(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const v0, 0x6d0b76e8

    invoke-static {v0}, Lcom/liapp/y;->ٱڳܴڭܩ(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 359
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    invoke-static {v0}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    new-instance v0, Lcom/kakaogame/KGAddOn$finishService$1;

    const/4 v4, 0x0

    invoke-direct {v0, p0, p1, p2, v4}, Lcom/kakaogame/KGAddOn$finishService$1;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/kakaogame/KGResultCallback;Lkotlin/coroutines/Continuation;)V

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

.method private final initInterfaceBroker()V
    .locals 2

    .line 459
    new-instance v0, Lcom/kakaogame/KGAddOn$initInterfaceBroker$1;

    invoke-direct {v0}, Lcom/kakaogame/KGAddOn$initInterfaceBroker$1;-><init>()V

    check-cast v0, Lcom/kakaogame/broker/InterfaceBrokerHandler$InterfaceBroker;

    const v1, 0x5d174d1f

    invoke-static {v1}, Lcom/liapp/y;->ڴݮگ֮ت(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/kakaogame/broker/InterfaceBrokerHandler;->registerInterfaceBroker(Ljava/lang/String;Lcom/kakaogame/broker/InterfaceBrokerHandler$InterfaceBroker;)V

    .line 589
    new-instance v0, Lcom/kakaogame/KGAddOn$initInterfaceBroker$2;

    invoke-direct {v0}, Lcom/kakaogame/KGAddOn$initInterfaceBroker$2;-><init>()V

    check-cast v0, Lcom/kakaogame/broker/InterfaceBrokerHandler$InterfaceBroker;

    const v1, 0x543e67ea

    invoke-static {v1}, Lcom/liapp/y;->׳ֳֳ֬د(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/kakaogame/broker/InterfaceBrokerHandler;->registerInterfaceBroker(Ljava/lang/String;Lcom/kakaogame/broker/InterfaceBrokerHandler$InterfaceBroker;)V

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public static final initialize()V
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 199
    sget-object v0, Lcom/kakaogame/KGAddOn;->INSTANCE:Lcom/kakaogame/KGAddOn;

    invoke-direct {v0}, Lcom/kakaogame/KGAddOn;->initInterfaceBroker()V

    return-void

    .array-data 1
    .end array-data
.end method

.method public static final loadIncompleteServices(Lcom/kakaogame/KGResultCallback;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/kakaogame/KGResultCallback<",
            "Ljava/util/List<",
            "Lcom/kakaogame/addon/KGService;",
            ">;>;)V"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 249
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    invoke-static {v0}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    new-instance v0, Lcom/kakaogame/KGAddOn$loadIncompleteServices$1;

    const/4 v4, 0x0

    invoke-direct {v0, p0, v4}, Lcom/kakaogame/KGAddOn$loadIncompleteServices$1;-><init>(Lcom/kakaogame/KGResultCallback;Lkotlin/coroutines/Continuation;)V

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
