.class final Lcom/kakaogame/KGPlayer$Companion$showDatePickerDialog$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "KGPlayer.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kakaogame/KGPlayer$Companion;->showDatePickerDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/kakaogame/KGResultCallback;)V
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
    c = "com.kakaogame.KGPlayer$Companion$showDatePickerDialog$1"
    f = "KGPlayer.kt"
    i = {}
    l = {}
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $activity:Landroid/app/Activity;

.field final synthetic $listener:Lcom/kakaogame/auth/view/DatePickerDialog$DatePickerListener;

.field final synthetic $subTitle:Ljava/lang/String;

.field final synthetic $title:Ljava/lang/String;

.field label:I


# direct methods
.method constructor <init>(Landroid/app/Activity;Lcom/kakaogame/auth/view/DatePickerDialog$DatePickerListener;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lcom/kakaogame/auth/view/DatePickerDialog$DatePickerListener;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/kakaogame/KGPlayer$Companion$showDatePickerDialog$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/kakaogame/KGPlayer$Companion$showDatePickerDialog$1;->$activity:Landroid/app/Activity;

    iput-object p2, p0, Lcom/kakaogame/KGPlayer$Companion$showDatePickerDialog$1;->$listener:Lcom/kakaogame/auth/view/DatePickerDialog$DatePickerListener;

    iput-object p3, p0, Lcom/kakaogame/KGPlayer$Companion$showDatePickerDialog$1;->$title:Ljava/lang/String;

    iput-object p4, p0, Lcom/kakaogame/KGPlayer$Companion$showDatePickerDialog$1;->$subTitle:Ljava/lang/String;

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

    new-instance p1, Lcom/kakaogame/KGPlayer$Companion$showDatePickerDialog$1;

    iget-object v1, p0, Lcom/kakaogame/KGPlayer$Companion$showDatePickerDialog$1;->$activity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/kakaogame/KGPlayer$Companion$showDatePickerDialog$1;->$listener:Lcom/kakaogame/auth/view/DatePickerDialog$DatePickerListener;

    iget-object v3, p0, Lcom/kakaogame/KGPlayer$Companion$showDatePickerDialog$1;->$title:Ljava/lang/String;

    iget-object v4, p0, Lcom/kakaogame/KGPlayer$Companion$showDatePickerDialog$1;->$subTitle:Ljava/lang/String;

    move-object v0, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/kakaogame/KGPlayer$Companion$showDatePickerDialog$1;-><init>(Landroid/app/Activity;Lcom/kakaogame/auth/view/DatePickerDialog$DatePickerListener;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlin/coroutines/Continuation;

    return-object p1

    .array-data 1
    .end array-data
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/kakaogame/KGPlayer$Companion$showDatePickerDialog$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/kakaogame/KGPlayer$Companion$showDatePickerDialog$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/kakaogame/KGPlayer$Companion$showDatePickerDialog$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/kakaogame/KGPlayer$Companion$showDatePickerDialog$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    nop

    .array-data 1
    .end array-data
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 3309
    iget v0, p0, Lcom/kakaogame/KGPlayer$Companion$showDatePickerDialog$1;->label:I

    if-nez v0, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 3319
    new-instance p1, Lcom/kakaogame/auth/view/DatePickerDialog;

    iget-object v0, p0, Lcom/kakaogame/KGPlayer$Companion$showDatePickerDialog$1;->$activity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/kakaogame/KGPlayer$Companion$showDatePickerDialog$1;->$listener:Lcom/kakaogame/auth/view/DatePickerDialog$DatePickerListener;

    iget-object v2, p0, Lcom/kakaogame/KGPlayer$Companion$showDatePickerDialog$1;->$title:Ljava/lang/String;

    iget-object v3, p0, Lcom/kakaogame/KGPlayer$Companion$showDatePickerDialog$1;->$subTitle:Ljava/lang/String;

    invoke-direct {p1, v0, v1, v2, v3}, Lcom/kakaogame/auth/view/DatePickerDialog;-><init>(Landroid/app/Activity;Lcom/kakaogame/auth/view/DatePickerDialog$DatePickerListener;Ljava/lang/String;Ljava/lang/String;)V

    .line 3329
    invoke-virtual {p1}, Lcom/kakaogame/auth/view/DatePickerDialog;->show()V

    .line 3339
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 3309
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const v0, -0x451e018f

    invoke-static {v0}, Lcom/liapp/y;->ڳݬ٬ۮݪ(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .array-data 1
    .end array-data
.end method
