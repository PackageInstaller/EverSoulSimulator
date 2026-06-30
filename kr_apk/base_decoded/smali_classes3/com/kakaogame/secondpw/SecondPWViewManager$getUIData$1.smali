.class final Lcom/kakaogame/secondpw/SecondPWViewManager$getUIData$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SecondPWViewManager.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kakaogame/secondpw/SecondPWViewManager;->getUIData(Landroid/app/Activity;Lcom/kakaogame/secondpw/ActionType;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kakaogame/secondpw/SecondPWViewManager$getUIData$1$WhenMappings;
    }
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
    c = "com.kakaogame.secondpw.SecondPWViewManager$getUIData$1"
    f = "SecondPWViewManager.kt"
    i = {}
    l = {
        0x5b,
        0x6f,
        0x70,
        0x71,
        0x7a,
        0x7d,
        0x88,
        0xa5
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $action:Lcom/kakaogame/secondpw/ActionType;

.field final synthetic $activity:Landroid/app/Activity;

.field final synthetic $callback:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Lcom/kakaogame/secondpw/viewdata/Base2ndPWViewData;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $content:Ljava/lang/String;

.field label:I


# direct methods
.method constructor <init>(Lcom/kakaogame/secondpw/ActionType;Landroid/app/Activity;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/kakaogame/secondpw/ActionType;",
            "Landroid/app/Activity;",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/kakaogame/secondpw/viewdata/Base2ndPWViewData;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/kakaogame/secondpw/SecondPWViewManager$getUIData$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/kakaogame/secondpw/SecondPWViewManager$getUIData$1;->$action:Lcom/kakaogame/secondpw/ActionType;

    iput-object p2, p0, Lcom/kakaogame/secondpw/SecondPWViewManager$getUIData$1;->$activity:Landroid/app/Activity;

    iput-object p3, p0, Lcom/kakaogame/secondpw/SecondPWViewManager$getUIData$1;->$content:Ljava/lang/String;

    iput-object p4, p0, Lcom/kakaogame/secondpw/SecondPWViewManager$getUIData$1;->$callback:Lkotlin/jvm/functions/Function1;

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

    new-instance p1, Lcom/kakaogame/secondpw/SecondPWViewManager$getUIData$1;

    iget-object v1, p0, Lcom/kakaogame/secondpw/SecondPWViewManager$getUIData$1;->$action:Lcom/kakaogame/secondpw/ActionType;

    iget-object v2, p0, Lcom/kakaogame/secondpw/SecondPWViewManager$getUIData$1;->$activity:Landroid/app/Activity;

    iget-object v3, p0, Lcom/kakaogame/secondpw/SecondPWViewManager$getUIData$1;->$content:Ljava/lang/String;

    iget-object v4, p0, Lcom/kakaogame/secondpw/SecondPWViewManager$getUIData$1;->$callback:Lkotlin/jvm/functions/Function1;

    move-object v0, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/kakaogame/secondpw/SecondPWViewManager$getUIData$1;-><init>(Lcom/kakaogame/secondpw/ActionType;Landroid/app/Activity;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlin/coroutines/Continuation;

    return-object p1

    .array-data 1
    .end array-data
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/kakaogame/secondpw/SecondPWViewManager$getUIData$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/kakaogame/secondpw/SecondPWViewManager$getUIData$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/kakaogame/secondpw/SecondPWViewManager$getUIData$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/kakaogame/secondpw/SecondPWViewManager$getUIData$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    nop

    .array-data 1
    .end array-data
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 14

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 459
    iget v1, p0, Lcom/kakaogame/secondpw/SecondPWViewManager$getUIData$1;->label:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    packed-switch v1, :pswitch_data_0

    new-instance p1, Ljava/lang/IllegalStateException;

    const v0, -0x451e018f

    invoke-static {v0}, Lcom/liapp/y;->ڳݬ٬ۮݪ(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_a

    :pswitch_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_0

    :pswitch_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_1

    :pswitch_3
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_2

    :pswitch_4
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_3

    :pswitch_5
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_4

    :pswitch_6
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_5

    :pswitch_7
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_6

    :pswitch_8
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 469
    iget-object p1, p0, Lcom/kakaogame/secondpw/SecondPWViewManager$getUIData$1;->$action:Lcom/kakaogame/secondpw/ActionType;

    sget-object v1, Lcom/kakaogame/secondpw/ActionType;->ENTER_IS_ALLOWED_ACCESS:Lcom/kakaogame/secondpw/ActionType;

    if-eq p1, v1, :cond_0

    .line 479
    iget-object p1, p0, Lcom/kakaogame/secondpw/SecondPWViewManager$getUIData$1;->$action:Lcom/kakaogame/secondpw/ActionType;

    sget-object v1, Lcom/kakaogame/secondpw/ActionType;->SET_PASSWORD:Lcom/kakaogame/secondpw/ActionType;

    if-eq p1, v1, :cond_0

    .line 489
    iget-object p1, p0, Lcom/kakaogame/secondpw/SecondPWViewManager$getUIData$1;->$action:Lcom/kakaogame/secondpw/ActionType;

    sget-object v1, Lcom/kakaogame/secondpw/ActionType;->RESET_PASSWORD:Lcom/kakaogame/secondpw/ActionType;

    if-eq p1, v1, :cond_0

    .line 499
    iget-object p1, p0, Lcom/kakaogame/secondpw/SecondPWViewManager$getUIData$1;->$action:Lcom/kakaogame/secondpw/ActionType;

    sget-object v1, Lcom/kakaogame/secondpw/ActionType;->RESET_DIGIT_CODE_1:Lcom/kakaogame/secondpw/ActionType;

    if-eq p1, v1, :cond_0

    .line 509
    iget-object p1, p0, Lcom/kakaogame/secondpw/SecondPWViewManager$getUIData$1;->$action:Lcom/kakaogame/secondpw/ActionType;

    sget-object v1, Lcom/kakaogame/secondpw/ActionType;->RESET_DIGIT_CODE_2:Lcom/kakaogame/secondpw/ActionType;

    if-eq p1, v1, :cond_0

    .line 519
    sget-object p1, Lcom/kakaogame/secondpw/SecondPWViewManager;->INSTANCE:Lcom/kakaogame/secondpw/SecondPWViewManager;

    invoke-static {p1}, Lcom/kakaogame/secondpw/SecondPWViewManager;->access$removeFile(Lcom/kakaogame/secondpw/SecondPWViewManager;)V

    .line 539
    :cond_0
    iget-object p1, p0, Lcom/kakaogame/secondpw/SecondPWViewManager$getUIData$1;->$action:Lcom/kakaogame/secondpw/ActionType;

    sget-object v1, Lcom/kakaogame/secondpw/SecondPWViewManager$getUIData$1$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Lcom/kakaogame/secondpw/ActionType;->ordinal()I

    move-result p1

    aget p1, v1, p1

    const/16 v1, 0x2329

    const/4 v5, 0x2

    packed-switch p1, :pswitch_data_1

    .line 1639
    new-instance p1, Lcom/kakaogame/secondpw/viewdata/ResultData;

    invoke-direct {p1, v1, v4, v5, v4}, Lcom/kakaogame/secondpw/viewdata/ResultData;-><init>(ILjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    check-cast p1, Lcom/kakaogame/secondpw/viewdata/Base2ndPWViewData;

    goto/16 :goto_9

    .line 1629
    :pswitch_9
    new-instance p1, Lcom/kakaogame/secondpw/viewdata/ResultData;

    const/16 v1, 0xfad

    invoke-direct {p1, v1, v4, v5, v4}, Lcom/kakaogame/secondpw/viewdata/ResultData;-><init>(ILjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    check-cast p1, Lcom/kakaogame/secondpw/viewdata/Base2ndPWViewData;

    goto/16 :goto_9

    .line 1619
    :pswitch_a
    new-instance p1, Lcom/kakaogame/secondpw/viewdata/ResultData;

    invoke-direct {p1, v1, v4, v5, v4}, Lcom/kakaogame/secondpw/viewdata/ResultData;-><init>(ILjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    check-cast p1, Lcom/kakaogame/secondpw/viewdata/Base2ndPWViewData;

    goto/16 :goto_9

    .line 1609
    :pswitch_b
    new-instance p1, Lcom/kakaogame/secondpw/viewdata/ResultData;

    invoke-direct {p1, v1, v4, v5, v4}, Lcom/kakaogame/secondpw/viewdata/ResultData;-><init>(ILjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    check-cast p1, Lcom/kakaogame/secondpw/viewdata/Base2ndPWViewData;

    goto/16 :goto_9

    .line 1599
    :pswitch_c
    new-instance p1, Lcom/kakaogame/secondpw/viewdata/ResultData;

    const/16 v1, 0xc8

    invoke-direct {p1, v1, v4, v5, v4}, Lcom/kakaogame/secondpw/viewdata/ResultData;-><init>(ILjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    check-cast p1, Lcom/kakaogame/secondpw/viewdata/Base2ndPWViewData;

    goto/16 :goto_9

    .line 1549
    :pswitch_d
    sget-object p1, Lcom/kakaogame/secondpw/SecondPWViewManager;->INSTANCE:Lcom/kakaogame/secondpw/SecondPWViewManager;

    .line 1559
    iget-object v1, p0, Lcom/kakaogame/secondpw/SecondPWViewManager$getUIData$1;->$activity:Landroid/app/Activity;

    .line 1569
    sget-object v2, Lcom/kakaogame/secondpw/ActionType;->RESET_PASSWORD:Lcom/kakaogame/secondpw/ActionType;

    .line 1579
    iget-object v3, p0, Lcom/kakaogame/secondpw/SecondPWViewManager$getUIData$1;->$content:Ljava/lang/String;

    .line 1549
    invoke-static {p1, v1, v2, v3}, Lcom/kakaogame/secondpw/SecondPWViewManager;->access$checkSettingPassword(Lcom/kakaogame/secondpw/SecondPWViewManager;Landroid/app/Activity;Lcom/kakaogame/secondpw/ActionType;Ljava/lang/String;)Lcom/kakaogame/secondpw/viewdata/Base2ndPWViewData;

    move-result-object p1

    goto/16 :goto_9

    .line 1499
    :pswitch_e
    sget-object p1, Lcom/kakaogame/secondpw/SecondPWViewManager;->INSTANCE:Lcom/kakaogame/secondpw/SecondPWViewManager;

    .line 1509
    iget-object v1, p0, Lcom/kakaogame/secondpw/SecondPWViewManager$getUIData$1;->$activity:Landroid/app/Activity;

    .line 1519
    sget-object v2, Lcom/kakaogame/secondpw/ActionType;->SET_PASSWORD:Lcom/kakaogame/secondpw/ActionType;

    .line 1529
    iget-object v3, p0, Lcom/kakaogame/secondpw/SecondPWViewManager$getUIData$1;->$content:Ljava/lang/String;

    .line 1499
    invoke-static {p1, v1, v2, v3}, Lcom/kakaogame/secondpw/SecondPWViewManager;->access$checkSettingPassword(Lcom/kakaogame/secondpw/SecondPWViewManager;Landroid/app/Activity;Lcom/kakaogame/secondpw/ActionType;Ljava/lang/String;)Lcom/kakaogame/secondpw/viewdata/Base2ndPWViewData;

    move-result-object p1

    goto/16 :goto_9

    .line 1489
    :pswitch_f
    sget-object p1, Lcom/kakaogame/secondpw/SecondPWViewManager;->INSTANCE:Lcom/kakaogame/secondpw/SecondPWViewManager;

    iget-object v1, p0, Lcom/kakaogame/secondpw/SecondPWViewManager$getUIData$1;->$activity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/kakaogame/secondpw/SecondPWViewManager$getUIData$1;->$content:Ljava/lang/String;

    invoke-static {p1, v1, v2}, Lcom/kakaogame/secondpw/SecondPWViewManager;->access$matchPassword(Lcom/kakaogame/secondpw/SecondPWViewManager;Landroid/app/Activity;Ljava/lang/String;)Lcom/kakaogame/secondpw/viewdata/Base2ndPWViewData;

    move-result-object p1

    goto/16 :goto_9

    .line 1369
    :pswitch_10
    sget-object p1, Lcom/kakaogame/secondpw/SecondPWViewManager;->INSTANCE:Lcom/kakaogame/secondpw/SecondPWViewManager;

    iget-object v1, p0, Lcom/kakaogame/secondpw/SecondPWViewManager$getUIData$1;->$activity:Landroid/app/Activity;

    check-cast v1, Landroid/content/Context;

    move-object v6, p0

    check-cast v6, Lkotlin/coroutines/Continuation;

    const/4 v7, 0x7

    iput v7, p0, Lcom/kakaogame/secondpw/SecondPWViewManager$getUIData$1;->label:I

    invoke-virtual {p1, v1, v5, v6}, Lcom/kakaogame/secondpw/SecondPWViewManager;->getKeypadData(Landroid/content/Context;ILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_1

    return-object v0

    :cond_1
    :goto_0
    check-cast p1, Lcom/kakaogame/KGResult;

    invoke-virtual {p1}, Lcom/kakaogame/KGResult;->isSuccess()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 1379
    new-instance p1, Lcom/kakaogame/secondpw/viewdata/ResetDigitCodeData;

    .line 1389
    invoke-static {}, Lcom/kakaogame/secondpw/SecondPWViewManager;->access$getKeypads$p()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/kakaogame/secondpw/Keypad;

    invoke-virtual {v1}, Lcom/kakaogame/secondpw/Keypad;->getPath()Ljava/lang/String;

    move-result-object v6

    .line 1399
    invoke-static {}, Lcom/kakaogame/secondpw/SecondPWViewManager;->access$getKeypads$p()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/kakaogame/secondpw/Keypad;

    invoke-virtual {v1}, Lcom/kakaogame/secondpw/Keypad;->getValues()Ljava/lang/String;

    move-result-object v7

    .line 1409
    invoke-static {}, Lcom/kakaogame/secondpw/SecondPWViewManager;->access$getKeypads$p()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/kakaogame/secondpw/Keypad;

    invoke-virtual {v1}, Lcom/kakaogame/secondpw/Keypad;->getPath()Ljava/lang/String;

    move-result-object v8

    .line 1419
    invoke-static {}, Lcom/kakaogame/secondpw/SecondPWViewManager;->access$getKeypads$p()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/kakaogame/secondpw/Keypad;

    invoke-virtual {v1}, Lcom/kakaogame/secondpw/Keypad;->getValues()Ljava/lang/String;

    move-result-object v9

    .line 1429
    sget-object v1, Lcom/kakaogame/infodesk/InfodeskHelper;->INSTANCE:Lcom/kakaogame/infodesk/InfodeskHelper;

    invoke-virtual {v1}, Lcom/kakaogame/infodesk/InfodeskHelper;->getKeypadValidTime()I

    move-result v10

    move-object v5, p1

    .line 1379
    invoke-direct/range {v5 .. v10}, Lcom/kakaogame/secondpw/viewdata/ResetDigitCodeData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    check-cast p1, Lcom/kakaogame/secondpw/viewdata/Base2ndPWViewData;

    goto/16 :goto_9

    .line 1459
    :cond_2
    new-instance p1, Lcom/kakaogame/secondpw/viewdata/PopupViewData;

    iget-object v6, p0, Lcom/kakaogame/secondpw/SecondPWViewManager$getUIData$1;->$activity:Landroid/app/Activity;

    sget-object v7, Lcom/kakaogame/secondpw/viewdata/PopupType;->DEFAULT_ERROR:Lcom/kakaogame/secondpw/viewdata/PopupType;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v11, 0x1c

    const/4 v12, 0x0

    move-object v5, p1

    invoke-direct/range {v5 .. v12}, Lcom/kakaogame/secondpw/viewdata/PopupViewData;-><init>(Landroid/app/Activity;Lcom/kakaogame/secondpw/viewdata/PopupType;IIIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    check-cast p1, Lcom/kakaogame/secondpw/viewdata/Base2ndPWViewData;

    goto/16 :goto_9

    .line 1259
    :pswitch_11
    sget-object v5, Lcom/kakaogame/secondpw/SecondPWViewManager;->INSTANCE:Lcom/kakaogame/secondpw/SecondPWViewManager;

    iget-object p1, p0, Lcom/kakaogame/secondpw/SecondPWViewManager$getUIData$1;->$activity:Landroid/app/Activity;

    move-object v6, p1

    check-cast v6, Landroid/content/Context;

    const/4 v7, 0x0

    move-object v8, p0

    check-cast v8, Lkotlin/coroutines/Continuation;

    const/4 v9, 0x2

    const/4 v10, 0x0

    const/4 p1, 0x6

    iput p1, p0, Lcom/kakaogame/secondpw/SecondPWViewManager$getUIData$1;->label:I

    invoke-static/range {v5 .. v10}, Lcom/kakaogame/secondpw/SecondPWViewManager;->getKeypadData$default(Lcom/kakaogame/secondpw/SecondPWViewManager;Landroid/content/Context;ILkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_3

    return-object v0

    :cond_3
    :goto_1
    check-cast p1, Lcom/kakaogame/KGResult;

    invoke-virtual {p1}, Lcom/kakaogame/KGResult;->isSuccess()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 1269
    new-instance p1, Lcom/kakaogame/secondpw/viewdata/ResetDigitCodeData;

    .line 1279
    invoke-static {}, Lcom/kakaogame/secondpw/SecondPWViewManager;->access$getKeypads$p()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/kakaogame/secondpw/Keypad;

    invoke-virtual {v1}, Lcom/kakaogame/secondpw/Keypad;->getPath()Ljava/lang/String;

    move-result-object v6

    .line 1289
    invoke-static {}, Lcom/kakaogame/secondpw/SecondPWViewManager;->access$getKeypads$p()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/kakaogame/secondpw/Keypad;

    invoke-virtual {v1}, Lcom/kakaogame/secondpw/Keypad;->getValues()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 1299
    sget-object v1, Lcom/kakaogame/infodesk/InfodeskHelper;->INSTANCE:Lcom/kakaogame/infodesk/InfodeskHelper;

    invoke-virtual {v1}, Lcom/kakaogame/infodesk/InfodeskHelper;->getKeypadValidTime()I

    move-result v10

    const/16 v11, 0xc

    const/4 v12, 0x0

    move-object v5, p1

    .line 1269
    invoke-direct/range {v5 .. v12}, Lcom/kakaogame/secondpw/viewdata/ResetDigitCodeData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    check-cast p1, Lcom/kakaogame/secondpw/viewdata/Base2ndPWViewData;

    goto/16 :goto_9

    .line 1329
    :cond_4
    new-instance p1, Lcom/kakaogame/secondpw/viewdata/PopupViewData;

    iget-object v6, p0, Lcom/kakaogame/secondpw/SecondPWViewManager$getUIData$1;->$activity:Landroid/app/Activity;

    sget-object v7, Lcom/kakaogame/secondpw/viewdata/PopupType;->DEFAULT_ERROR:Lcom/kakaogame/secondpw/viewdata/PopupType;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v11, 0x1c

    const/4 v12, 0x0

    move-object v5, p1

    invoke-direct/range {v5 .. v12}, Lcom/kakaogame/secondpw/viewdata/PopupViewData;-><init>(Landroid/app/Activity;Lcom/kakaogame/secondpw/viewdata/PopupType;IIIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    check-cast p1, Lcom/kakaogame/secondpw/viewdata/Base2ndPWViewData;

    goto/16 :goto_9

    .line 1239
    :pswitch_12
    sget-object p1, Lcom/kakaogame/secondpw/SecondPWViewManager;->INSTANCE:Lcom/kakaogame/secondpw/SecondPWViewManager;

    iget-object v1, p0, Lcom/kakaogame/secondpw/SecondPWViewManager$getUIData$1;->$activity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/kakaogame/secondpw/SecondPWViewManager$getUIData$1;->$content:Ljava/lang/String;

    invoke-static {p1, v1, v2}, Lcom/kakaogame/secondpw/SecondPWViewManager;->access$verifyExistAuthCodeForRemove(Lcom/kakaogame/secondpw/SecondPWViewManager;Landroid/app/Activity;Ljava/lang/String;)Lcom/kakaogame/secondpw/viewdata/Base2ndPWViewData;

    move-result-object p1

    goto/16 :goto_9

    .line 1229
    :pswitch_13
    sget-object p1, Lcom/kakaogame/secondpw/SecondPWViewManager;->INSTANCE:Lcom/kakaogame/secondpw/SecondPWViewManager;

    iget-object v1, p0, Lcom/kakaogame/secondpw/SecondPWViewManager$getUIData$1;->$activity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/kakaogame/secondpw/SecondPWViewManager$getUIData$1;->$content:Ljava/lang/String;

    move-object v3, p0

    check-cast v3, Lkotlin/coroutines/Continuation;

    const/4 v5, 0x5

    iput v5, p0, Lcom/kakaogame/secondpw/SecondPWViewManager$getUIData$1;->label:I

    invoke-static {p1, v1, v2, v3}, Lcom/kakaogame/secondpw/SecondPWViewManager;->access$verifyExistAuthCodeForReset(Lcom/kakaogame/secondpw/SecondPWViewManager;Landroid/app/Activity;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_5

    return-object v0

    :cond_5
    :goto_2
    check-cast p1, Lcom/kakaogame/secondpw/viewdata/Base2ndPWViewData;

    goto/16 :goto_9

    .line 1219
    :pswitch_14
    sget-object p1, Lcom/kakaogame/secondpw/SecondPWViewManager;->INSTANCE:Lcom/kakaogame/secondpw/SecondPWViewManager;

    iget-object v1, p0, Lcom/kakaogame/secondpw/SecondPWViewManager$getUIData$1;->$activity:Landroid/app/Activity;

    invoke-static {p1, v1}, Lcom/kakaogame/secondpw/SecondPWViewManager;->access$requestRemove(Lcom/kakaogame/secondpw/SecondPWViewManager;Landroid/app/Activity;)Lcom/kakaogame/secondpw/viewdata/Base2ndPWViewData;

    move-result-object p1

    goto/16 :goto_9

    .line 1209
    :pswitch_15
    sget-object p1, Lcom/kakaogame/secondpw/SecondPWViewManager;->INSTANCE:Lcom/kakaogame/secondpw/SecondPWViewManager;

    iget-object v1, p0, Lcom/kakaogame/secondpw/SecondPWViewManager$getUIData$1;->$activity:Landroid/app/Activity;

    invoke-static {p1, v1}, Lcom/kakaogame/secondpw/SecondPWViewManager;->access$requestReset(Lcom/kakaogame/secondpw/SecondPWViewManager;Landroid/app/Activity;)Lcom/kakaogame/secondpw/viewdata/Base2ndPWViewData;

    move-result-object p1

    goto/16 :goto_9

    .line 1169
    :pswitch_16
    new-instance p1, Lcom/kakaogame/secondpw/viewdata/RemoveGuideViewData;

    .line 1179
    iget-object v1, p0, Lcom/kakaogame/secondpw/SecondPWViewManager$getUIData$1;->$activity:Landroid/app/Activity;

    .line 1189
    sget-object v2, Lcom/kakaogame/infodesk/InfodeskHelper;->INSTANCE:Lcom/kakaogame/infodesk/InfodeskHelper;

    invoke-virtual {v2}, Lcom/kakaogame/infodesk/InfodeskHelper;->getSecondaryPasswordAuthType()Lcom/kakaogame/infodesk/InfodeskHelper$SecondaryPWAuthType;

    move-result-object v2

    .line 1169
    invoke-direct {p1, v1, v2}, Lcom/kakaogame/secondpw/viewdata/RemoveGuideViewData;-><init>(Landroid/app/Activity;Lcom/kakaogame/infodesk/InfodeskHelper$SecondaryPWAuthType;)V

    check-cast p1, Lcom/kakaogame/secondpw/viewdata/Base2ndPWViewData;

    goto/16 :goto_9

    .line 1159
    :pswitch_17
    sget-object p1, Lcom/kakaogame/secondpw/SecondPWViewManager;->INSTANCE:Lcom/kakaogame/secondpw/SecondPWViewManager;

    iget-object v1, p0, Lcom/kakaogame/secondpw/SecondPWViewManager$getUIData$1;->$activity:Landroid/app/Activity;

    invoke-static {p1, v1}, Lcom/kakaogame/secondpw/SecondPWViewManager;->access$check2ndPWOptionType(Lcom/kakaogame/secondpw/SecondPWViewManager;Landroid/app/Activity;)Lcom/kakaogame/secondpw/viewdata/Base2ndPWViewData;

    move-result-object p1

    goto/16 :goto_9

    .line 1149
    :pswitch_18
    new-instance p1, Lcom/kakaogame/secondpw/viewdata/ResetGuideViewData;

    iget-object v1, p0, Lcom/kakaogame/secondpw/SecondPWViewManager$getUIData$1;->$activity:Landroid/app/Activity;

    sget-object v2, Lcom/kakaogame/infodesk/InfodeskHelper;->INSTANCE:Lcom/kakaogame/infodesk/InfodeskHelper;

    invoke-virtual {v2}, Lcom/kakaogame/infodesk/InfodeskHelper;->getSecondaryPasswordAuthType()Lcom/kakaogame/infodesk/InfodeskHelper$SecondaryPWAuthType;

    move-result-object v2

    invoke-direct {p1, v1, v2}, Lcom/kakaogame/secondpw/viewdata/ResetGuideViewData;-><init>(Landroid/app/Activity;Lcom/kakaogame/infodesk/InfodeskHelper$SecondaryPWAuthType;)V

    check-cast p1, Lcom/kakaogame/secondpw/viewdata/Base2ndPWViewData;

    goto/16 :goto_9

    .line 1139
    :pswitch_19
    sget-object p1, Lcom/kakaogame/secondpw/SecondPWViewManager;->INSTANCE:Lcom/kakaogame/secondpw/SecondPWViewManager;

    iget-object v1, p0, Lcom/kakaogame/secondpw/SecondPWViewManager$getUIData$1;->$activity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/kakaogame/secondpw/SecondPWViewManager$getUIData$1;->$content:Ljava/lang/String;

    iget-object v3, p0, Lcom/kakaogame/secondpw/SecondPWViewManager$getUIData$1;->$action:Lcom/kakaogame/secondpw/ActionType;

    move-object v5, p0

    check-cast v5, Lkotlin/coroutines/Continuation;

    const/4 v6, 0x4

    iput v6, p0, Lcom/kakaogame/secondpw/SecondPWViewManager$getUIData$1;->label:I

    invoke-static {p1, v1, v2, v3, v5}, Lcom/kakaogame/secondpw/SecondPWViewManager;->access$verifyAuthCode(Lcom/kakaogame/secondpw/SecondPWViewManager;Landroid/app/Activity;Ljava/lang/String;Lcom/kakaogame/secondpw/ActionType;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_6

    return-object v0

    :cond_6
    :goto_3
    check-cast p1, Lcom/kakaogame/secondpw/viewdata/Base2ndPWViewData;

    goto/16 :goto_9

    .line 1129
    :pswitch_1a
    sget-object p1, Lcom/kakaogame/secondpw/SecondPWViewManager;->INSTANCE:Lcom/kakaogame/secondpw/SecondPWViewManager;

    iget-object v1, p0, Lcom/kakaogame/secondpw/SecondPWViewManager$getUIData$1;->$activity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/kakaogame/secondpw/SecondPWViewManager$getUIData$1;->$content:Ljava/lang/String;

    iget-object v3, p0, Lcom/kakaogame/secondpw/SecondPWViewManager$getUIData$1;->$action:Lcom/kakaogame/secondpw/ActionType;

    move-object v5, p0

    check-cast v5, Lkotlin/coroutines/Continuation;

    const/4 v6, 0x3

    iput v6, p0, Lcom/kakaogame/secondpw/SecondPWViewManager$getUIData$1;->label:I

    invoke-static {p1, v1, v2, v3, v5}, Lcom/kakaogame/secondpw/SecondPWViewManager;->access$verifyAuthCode(Lcom/kakaogame/secondpw/SecondPWViewManager;Landroid/app/Activity;Ljava/lang/String;Lcom/kakaogame/secondpw/ActionType;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_7

    return-object v0

    :cond_7
    :goto_4
    check-cast p1, Lcom/kakaogame/secondpw/viewdata/Base2ndPWViewData;

    goto/16 :goto_9

    .line 1119
    :pswitch_1b
    sget-object p1, Lcom/kakaogame/secondpw/SecondPWViewManager;->INSTANCE:Lcom/kakaogame/secondpw/SecondPWViewManager;

    iget-object v1, p0, Lcom/kakaogame/secondpw/SecondPWViewManager$getUIData$1;->$activity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/kakaogame/secondpw/SecondPWViewManager$getUIData$1;->$content:Ljava/lang/String;

    iget-object v3, p0, Lcom/kakaogame/secondpw/SecondPWViewManager$getUIData$1;->$action:Lcom/kakaogame/secondpw/ActionType;

    move-object v6, p0

    check-cast v6, Lkotlin/coroutines/Continuation;

    iput v5, p0, Lcom/kakaogame/secondpw/SecondPWViewManager$getUIData$1;->label:I

    invoke-static {p1, v1, v2, v3, v6}, Lcom/kakaogame/secondpw/SecondPWViewManager;->access$verifyAuthCode(Lcom/kakaogame/secondpw/SecondPWViewManager;Landroid/app/Activity;Ljava/lang/String;Lcom/kakaogame/secondpw/ActionType;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_8

    return-object v0

    :cond_8
    :goto_5
    check-cast p1, Lcom/kakaogame/secondpw/viewdata/Base2ndPWViewData;

    goto/16 :goto_9

    .line 1109
    :pswitch_1c
    sget-object p1, Lcom/kakaogame/secondpw/SecondPWViewManager;->INSTANCE:Lcom/kakaogame/secondpw/SecondPWViewManager;

    iget-object v1, p0, Lcom/kakaogame/secondpw/SecondPWViewManager$getUIData$1;->$activity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/kakaogame/secondpw/SecondPWViewManager$getUIData$1;->$content:Ljava/lang/String;

    invoke-static {p1, v1, v2}, Lcom/kakaogame/secondpw/SecondPWViewManager;->access$sendAuthCodeEmail(Lcom/kakaogame/secondpw/SecondPWViewManager;Landroid/app/Activity;Ljava/lang/String;)Lcom/kakaogame/secondpw/viewdata/Base2ndPWViewData;

    move-result-object p1

    goto/16 :goto_9

    .line 1099
    :pswitch_1d
    sget-object p1, Lcom/kakaogame/secondpw/SecondPWViewManager;->INSTANCE:Lcom/kakaogame/secondpw/SecondPWViewManager;

    iget-object v1, p0, Lcom/kakaogame/secondpw/SecondPWViewManager$getUIData$1;->$activity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/kakaogame/secondpw/SecondPWViewManager$getUIData$1;->$content:Ljava/lang/String;

    invoke-static {p1, v1, v2}, Lcom/kakaogame/secondpw/SecondPWViewManager;->access$sendAuthCodeSMS(Lcom/kakaogame/secondpw/SecondPWViewManager;Landroid/app/Activity;Ljava/lang/String;)Lcom/kakaogame/secondpw/viewdata/Base2ndPWViewData;

    move-result-object p1

    goto/16 :goto_9

    .line 1089
    :pswitch_1e
    sget-object p1, Lcom/kakaogame/secondpw/SecondPWViewManager;->INSTANCE:Lcom/kakaogame/secondpw/SecondPWViewManager;

    iget-object v1, p0, Lcom/kakaogame/secondpw/SecondPWViewManager$getUIData$1;->$activity:Landroid/app/Activity;

    invoke-static {p1, v1}, Lcom/kakaogame/secondpw/SecondPWViewManager;->access$sendAuthCode(Lcom/kakaogame/secondpw/SecondPWViewManager;Landroid/app/Activity;)Lcom/kakaogame/secondpw/viewdata/Base2ndPWViewData;

    move-result-object p1

    goto/16 :goto_9

    .line 919
    :pswitch_1f
    sget-object v5, Lcom/kakaogame/secondpw/SecondPWViewManager;->INSTANCE:Lcom/kakaogame/secondpw/SecondPWViewManager;

    iget-object p1, p0, Lcom/kakaogame/secondpw/SecondPWViewManager$getUIData$1;->$activity:Landroid/app/Activity;

    move-object v6, p1

    check-cast v6, Landroid/content/Context;

    const/4 v7, 0x0

    move-object v8, p0

    check-cast v8, Lkotlin/coroutines/Continuation;

    const/4 v9, 0x2

    const/4 v10, 0x0

    iput v2, p0, Lcom/kakaogame/secondpw/SecondPWViewManager$getUIData$1;->label:I

    invoke-static/range {v5 .. v10}, Lcom/kakaogame/secondpw/SecondPWViewManager;->getKeypadData$default(Lcom/kakaogame/secondpw/SecondPWViewManager;Landroid/content/Context;ILkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_9

    return-object v0

    :cond_9
    :goto_6
    check-cast p1, Lcom/kakaogame/KGResult;

    invoke-virtual {p1}, Lcom/kakaogame/KGResult;->isSuccess()Z

    move-result p1

    if-eqz p1, :cond_b

    .line 929
    sget-object p1, Lcom/kakaogame/infodesk/InfodeskHelper;->INSTANCE:Lcom/kakaogame/infodesk/InfodeskHelper;

    invoke-virtual {p1}, Lcom/kakaogame/infodesk/InfodeskHelper;->getBenefitString()Ljava/lang/String;

    move-result-object v8

    .line 939
    move-object p1, v8

    check-cast p1, Ljava/lang/CharSequence;

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-lez p1, :cond_a

    move v7, v2

    goto :goto_7

    :cond_a
    move v7, v3

    .line 949
    :goto_7
    new-instance p1, Lcom/kakaogame/secondpw/viewdata/InputPasswordViewData;

    .line 959
    iget-object v6, p0, Lcom/kakaogame/secondpw/SecondPWViewManager$getUIData$1;->$activity:Landroid/app/Activity;

    .line 989
    invoke-static {}, Lcom/kakaogame/secondpw/SecondPWViewManager;->access$getKeypads$p()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/kakaogame/secondpw/Keypad;

    invoke-virtual {v1}, Lcom/kakaogame/secondpw/Keypad;->getPath()Ljava/lang/String;

    move-result-object v9

    .line 999
    invoke-static {}, Lcom/kakaogame/secondpw/SecondPWViewManager;->access$getKeypads$p()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/kakaogame/secondpw/Keypad;

    invoke-virtual {v1}, Lcom/kakaogame/secondpw/Keypad;->getValues()Ljava/lang/String;

    move-result-object v10

    .line 1009
    sget-object v1, Lcom/kakaogame/infodesk/InfodeskHelper;->INSTANCE:Lcom/kakaogame/infodesk/InfodeskHelper;

    invoke-virtual {v1}, Lcom/kakaogame/infodesk/InfodeskHelper;->getPinFailBlockTime()I

    move-result v11

    .line 1019
    sget-object v1, Lcom/kakaogame/infodesk/InfodeskHelper;->INSTANCE:Lcom/kakaogame/infodesk/InfodeskHelper;

    invoke-virtual {v1}, Lcom/kakaogame/infodesk/InfodeskHelper;->getPinFailLimitCount()I

    move-result v12

    .line 1029
    sget-object v1, Lcom/kakaogame/infodesk/InfodeskHelper;->INSTANCE:Lcom/kakaogame/infodesk/InfodeskHelper;

    invoke-virtual {v1}, Lcom/kakaogame/infodesk/InfodeskHelper;->getKeypadValidTime()I

    move-result v13

    move-object v5, p1

    .line 949
    invoke-direct/range {v5 .. v13}, Lcom/kakaogame/secondpw/viewdata/InputPasswordViewData;-><init>(Landroid/app/Activity;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;III)V

    check-cast p1, Lcom/kakaogame/secondpw/viewdata/Base2ndPWViewData;

    goto/16 :goto_9

    .line 1059
    :cond_b
    new-instance p1, Lcom/kakaogame/secondpw/viewdata/PopupViewData;

    iget-object v6, p0, Lcom/kakaogame/secondpw/SecondPWViewManager$getUIData$1;->$activity:Landroid/app/Activity;

    sget-object v7, Lcom/kakaogame/secondpw/viewdata/PopupType;->DEFAULT_ERROR:Lcom/kakaogame/secondpw/viewdata/PopupType;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v11, 0x1c

    const/4 v12, 0x0

    move-object v5, p1

    invoke-direct/range {v5 .. v12}, Lcom/kakaogame/secondpw/viewdata/PopupViewData;-><init>(Landroid/app/Activity;Lcom/kakaogame/secondpw/viewdata/PopupType;IIIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    check-cast p1, Lcom/kakaogame/secondpw/viewdata/Base2ndPWViewData;

    goto/16 :goto_9

    .line 899
    :pswitch_20
    new-instance p1, Lcom/kakaogame/secondpw/viewdata/SetAgreementViewData;

    iget-object v1, p0, Lcom/kakaogame/secondpw/SecondPWViewManager$getUIData$1;->$activity:Landroid/app/Activity;

    sget-object v2, Lcom/kakaogame/infodesk/InfodeskHelper;->INSTANCE:Lcom/kakaogame/infodesk/InfodeskHelper;

    invoke-virtual {v2}, Lcom/kakaogame/infodesk/InfodeskHelper;->getSecondaryPasswordAuthType()Lcom/kakaogame/infodesk/InfodeskHelper$SecondaryPWAuthType;

    move-result-object v2

    invoke-direct {p1, v1, v2}, Lcom/kakaogame/secondpw/viewdata/SetAgreementViewData;-><init>(Landroid/app/Activity;Lcom/kakaogame/infodesk/InfodeskHelper$SecondaryPWAuthType;)V

    check-cast p1, Lcom/kakaogame/secondpw/viewdata/Base2ndPWViewData;

    goto/16 :goto_9

    .line 859
    :pswitch_21
    new-instance p1, Lcom/kakaogame/secondpw/viewdata/PopupViewData;

    iget-object v6, p0, Lcom/kakaogame/secondpw/SecondPWViewManager$getUIData$1;->$activity:Landroid/app/Activity;

    .line 869
    sget-object v7, Lcom/kakaogame/secondpw/viewdata/PopupType;->KEYPAD_TIME_LIMIT:Lcom/kakaogame/secondpw/viewdata/PopupType;

    const/4 v8, 0x2

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v11, 0x18

    const/4 v12, 0x0

    move-object v5, p1

    .line 859
    invoke-direct/range {v5 .. v12}, Lcom/kakaogame/secondpw/viewdata/PopupViewData;-><init>(Landroid/app/Activity;Lcom/kakaogame/secondpw/viewdata/PopupType;IIIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    check-cast p1, Lcom/kakaogame/secondpw/viewdata/Base2ndPWViewData;

    goto/16 :goto_9

    .line 799
    :pswitch_22
    new-instance p1, Lcom/kakaogame/secondpw/viewdata/PopupViewData;

    .line 809
    iget-object v6, p0, Lcom/kakaogame/secondpw/SecondPWViewManager$getUIData$1;->$activity:Landroid/app/Activity;

    .line 819
    sget-object v7, Lcom/kakaogame/secondpw/viewdata/PopupType;->KEYPAD_TIME_LIMIT:Lcom/kakaogame/secondpw/viewdata/PopupType;

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v11, 0x18

    const/4 v12, 0x0

    move-object v5, p1

    .line 799
    invoke-direct/range {v5 .. v12}, Lcom/kakaogame/secondpw/viewdata/PopupViewData;-><init>(Landroid/app/Activity;Lcom/kakaogame/secondpw/viewdata/PopupType;IIIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    check-cast p1, Lcom/kakaogame/secondpw/viewdata/Base2ndPWViewData;

    goto :goto_9

    .line 749
    :pswitch_23
    new-instance p1, Lcom/kakaogame/secondpw/viewdata/PopupViewData;

    .line 759
    iget-object v6, p0, Lcom/kakaogame/secondpw/SecondPWViewManager$getUIData$1;->$activity:Landroid/app/Activity;

    .line 769
    sget-object v7, Lcom/kakaogame/secondpw/viewdata/PopupType;->KEYPAD_TIME_LIMIT:Lcom/kakaogame/secondpw/viewdata/PopupType;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v11, 0x1c

    const/4 v12, 0x0

    move-object v5, p1

    .line 749
    invoke-direct/range {v5 .. v12}, Lcom/kakaogame/secondpw/viewdata/PopupViewData;-><init>(Landroid/app/Activity;Lcom/kakaogame/secondpw/viewdata/PopupType;IIIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    check-cast p1, Lcom/kakaogame/secondpw/viewdata/Base2ndPWViewData;

    goto :goto_9

    .line 699
    :pswitch_24
    new-instance p1, Lcom/kakaogame/secondpw/viewdata/SetRegisterGuideViewData;

    .line 709
    iget-object v1, p0, Lcom/kakaogame/secondpw/SecondPWViewManager$getUIData$1;->$activity:Landroid/app/Activity;

    .line 719
    sget-object v2, Lcom/kakaogame/infodesk/InfodeskHelper;->INSTANCE:Lcom/kakaogame/infodesk/InfodeskHelper;

    invoke-virtual {v2}, Lcom/kakaogame/infodesk/InfodeskHelper;->getSecondaryPasswordAuthType()Lcom/kakaogame/infodesk/InfodeskHelper$SecondaryPWAuthType;

    move-result-object v2

    .line 699
    invoke-direct {p1, v1, v2}, Lcom/kakaogame/secondpw/viewdata/SetRegisterGuideViewData;-><init>(Landroid/app/Activity;Lcom/kakaogame/infodesk/InfodeskHelper$SecondaryPWAuthType;)V

    check-cast p1, Lcom/kakaogame/secondpw/viewdata/Base2ndPWViewData;

    goto :goto_9

    .line 559
    :pswitch_25
    sget-object p1, Lcom/kakaogame/infodesk/InfodeskHelper;->INSTANCE:Lcom/kakaogame/infodesk/InfodeskHelper;

    invoke-virtual {p1}, Lcom/kakaogame/infodesk/InfodeskHelper;->getBenefitString()Ljava/lang/String;

    move-result-object v8

    .line 569
    move-object p1, v8

    check-cast p1, Ljava/lang/CharSequence;

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-lez p1, :cond_c

    move v7, v2

    goto :goto_8

    :cond_c
    move v7, v3

    .line 579
    :goto_8
    new-instance p1, Lcom/kakaogame/secondpw/viewdata/InputPasswordViewData;

    .line 589
    iget-object v6, p0, Lcom/kakaogame/secondpw/SecondPWViewManager$getUIData$1;->$activity:Landroid/app/Activity;

    .line 619
    invoke-static {}, Lcom/kakaogame/secondpw/SecondPWViewManager;->access$getKeypads$p()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/kakaogame/secondpw/Keypad;

    invoke-virtual {v1}, Lcom/kakaogame/secondpw/Keypad;->getPath()Ljava/lang/String;

    move-result-object v9

    .line 629
    invoke-static {}, Lcom/kakaogame/secondpw/SecondPWViewManager;->access$getKeypads$p()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/kakaogame/secondpw/Keypad;

    invoke-virtual {v1}, Lcom/kakaogame/secondpw/Keypad;->getValues()Ljava/lang/String;

    move-result-object v10

    .line 639
    sget-object v1, Lcom/kakaogame/infodesk/InfodeskHelper;->INSTANCE:Lcom/kakaogame/infodesk/InfodeskHelper;

    invoke-virtual {v1}, Lcom/kakaogame/infodesk/InfodeskHelper;->getPinFailBlockTime()I

    move-result v11

    .line 649
    sget-object v1, Lcom/kakaogame/infodesk/InfodeskHelper;->INSTANCE:Lcom/kakaogame/infodesk/InfodeskHelper;

    invoke-virtual {v1}, Lcom/kakaogame/infodesk/InfodeskHelper;->getPinFailLimitCount()I

    move-result v12

    .line 659
    sget-object v1, Lcom/kakaogame/infodesk/InfodeskHelper;->INSTANCE:Lcom/kakaogame/infodesk/InfodeskHelper;

    invoke-virtual {v1}, Lcom/kakaogame/infodesk/InfodeskHelper;->getKeypadValidTime()I

    move-result v13

    move-object v5, p1

    .line 579
    invoke-direct/range {v5 .. v13}, Lcom/kakaogame/secondpw/viewdata/InputPasswordViewData;-><init>(Landroid/app/Activity;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;III)V

    check-cast p1, Lcom/kakaogame/secondpw/viewdata/Base2ndPWViewData;

    .line 1659
    :goto_9
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getMain()Lkotlinx/coroutines/MainCoroutineDispatcher;

    move-result-object v1

    check-cast v1, Lkotlin/coroutines/CoroutineContext;

    new-instance v2, Lcom/kakaogame/secondpw/SecondPWViewManager$getUIData$1$1;

    iget-object v3, p0, Lcom/kakaogame/secondpw/SecondPWViewManager$getUIData$1;->$callback:Lkotlin/jvm/functions/Function1;

    invoke-direct {v2, v3, p1, v4}, Lcom/kakaogame/secondpw/SecondPWViewManager$getUIData$1$1;-><init>(Lkotlin/jvm/functions/Function1;Lcom/kakaogame/secondpw/viewdata/Base2ndPWViewData;Lkotlin/coroutines/Continuation;)V

    check-cast v2, Lkotlin/jvm/functions/Function2;

    move-object p1, p0

    check-cast p1, Lkotlin/coroutines/Continuation;

    const/16 v3, 0x8

    iput v3, p0, Lcom/kakaogame/secondpw/SecondPWViewManager$getUIData$1;->label:I

    invoke-static {v1, v2, p1}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_d

    return-object v0

    .line 1689
    :cond_d
    :goto_a
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
    .end packed-switch

    .array-data 1
    .end array-data
.end method
