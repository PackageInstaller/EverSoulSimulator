.class final Lcom/kakaogame/web/WebDialogManager$showCafe$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "WebDialogManager.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kakaogame/web/WebDialogManager;->showCafe(Landroid/app/Activity;Ljava/lang/String;Lcom/kakaogame/web/WebDialog$Settings;Lcom/kakaogame/KGResultCallback;)V
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
    c = "com.kakaogame.web.WebDialogManager$showCafe$2"
    f = "WebDialogManager.kt"
    i = {}
    l = {}
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $activity:Landroid/app/Activity;

.field final synthetic $callback:Lcom/kakaogame/KGResultCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/kakaogame/KGResultCallback<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $settings:Lcom/kakaogame/web/WebDialog$Settings;

.field final synthetic $webUrl:Ljava/lang/String;

.field label:I


# direct methods
.method constructor <init>(Landroid/app/Activity;Ljava/lang/String;Lcom/kakaogame/web/WebDialog$Settings;Lcom/kakaogame/KGResultCallback;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/lang/String;",
            "Lcom/kakaogame/web/WebDialog$Settings;",
            "Lcom/kakaogame/KGResultCallback<",
            "Ljava/lang/String;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/kakaogame/web/WebDialogManager$showCafe$2;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/kakaogame/web/WebDialogManager$showCafe$2;->$activity:Landroid/app/Activity;

    iput-object p2, p0, Lcom/kakaogame/web/WebDialogManager$showCafe$2;->$webUrl:Ljava/lang/String;

    iput-object p3, p0, Lcom/kakaogame/web/WebDialogManager$showCafe$2;->$settings:Lcom/kakaogame/web/WebDialog$Settings;

    iput-object p4, p0, Lcom/kakaogame/web/WebDialogManager$showCafe$2;->$callback:Lcom/kakaogame/KGResultCallback;

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

    new-instance p1, Lcom/kakaogame/web/WebDialogManager$showCafe$2;

    iget-object v1, p0, Lcom/kakaogame/web/WebDialogManager$showCafe$2;->$activity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/kakaogame/web/WebDialogManager$showCafe$2;->$webUrl:Ljava/lang/String;

    iget-object v3, p0, Lcom/kakaogame/web/WebDialogManager$showCafe$2;->$settings:Lcom/kakaogame/web/WebDialog$Settings;

    iget-object v4, p0, Lcom/kakaogame/web/WebDialogManager$showCafe$2;->$callback:Lcom/kakaogame/KGResultCallback;

    move-object v0, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/kakaogame/web/WebDialogManager$showCafe$2;-><init>(Landroid/app/Activity;Ljava/lang/String;Lcom/kakaogame/web/WebDialog$Settings;Lcom/kakaogame/KGResultCallback;Lkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlin/coroutines/Continuation;

    return-object p1

    .array-data 1
    .end array-data
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/kakaogame/web/WebDialogManager$showCafe$2;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/kakaogame/web/WebDialogManager$showCafe$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/kakaogame/web/WebDialogManager$showCafe$2;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/kakaogame/web/WebDialogManager$showCafe$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    nop

    .array-data 1
    .end array-data
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 1309
    iget v0, p0, Lcom/kakaogame/web/WebDialogManager$showCafe$2;->label:I

    if-nez v0, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 1319
    sget-object p1, Lcom/kakaogame/web/WebDialogManager;->INSTANCE:Lcom/kakaogame/web/WebDialogManager;

    iget-object v0, p0, Lcom/kakaogame/web/WebDialogManager$showCafe$2;->$activity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/kakaogame/web/WebDialogManager$showCafe$2;->$webUrl:Ljava/lang/String;

    iget-object v2, p0, Lcom/kakaogame/web/WebDialogManager$showCafe$2;->$settings:Lcom/kakaogame/web/WebDialog$Settings;

    iget-object v3, p0, Lcom/kakaogame/web/WebDialogManager$showCafe$2;->$callback:Lcom/kakaogame/KGResultCallback;

    invoke-static {p1, v0, v1, v2, v3}, Lcom/kakaogame/web/WebDialogManager;->access$showCafeImpl(Lcom/kakaogame/web/WebDialogManager;Landroid/app/Activity;Ljava/lang/String;Lcom/kakaogame/web/WebDialog$Settings;Lcom/kakaogame/KGResultCallback;)V

    .line 1329
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 1309
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
