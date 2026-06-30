.class public final Lcom/kakaogame/secondpw/ActionTypeKt;
.super Ljava/lang/Object;
.source "ActionType.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\u001a\n\u0010\u0000\u001a\u00020\u0001*\u00020\u0002\u00a8\u0006\u0003"
    }
    d2 = {
        "getActionType",
        "Lcom/kakaogame/secondpw/ActionType;",
        "",
        "security_release"
    }
    k = 0x2
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static final getActionType(Ljava/lang/String;)Lcom/kakaogame/secondpw/ActionType;
    .locals 1

    const v0, 0x543e6e4a

    invoke-static {v0}, Lcom/liapp/y;->׳ֳֳ֬د(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 409
    sget-object v0, Lcom/kakaogame/secondpw/ActionType;->ENTER_IS_ALLOWED_ACCESS:Lcom/kakaogame/secondpw/ActionType;

    invoke-virtual {v0}, Lcom/kakaogame/secondpw/ActionType;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p0, Lcom/kakaogame/secondpw/ActionType;->ENTER_IS_ALLOWED_ACCESS:Lcom/kakaogame/secondpw/ActionType;

    goto/16 :goto_0

    .line 419
    :cond_0
    sget-object v0, Lcom/kakaogame/secondpw/ActionType;->ENTER_SHOW_PASSWORD_SETTING_VIEW:Lcom/kakaogame/secondpw/ActionType;

    invoke-virtual {v0}, Lcom/kakaogame/secondpw/ActionType;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object p0, Lcom/kakaogame/secondpw/ActionType;->ENTER_SHOW_PASSWORD_SETTING_VIEW:Lcom/kakaogame/secondpw/ActionType;

    goto/16 :goto_0

    .line 429
    :cond_1
    sget-object v0, Lcom/kakaogame/secondpw/ActionType;->SHOW_RESTRICT_POPUP:Lcom/kakaogame/secondpw/ActionType;

    invoke-virtual {v0}, Lcom/kakaogame/secondpw/ActionType;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object p0, Lcom/kakaogame/secondpw/ActionType;->SHOW_RESTRICT_POPUP:Lcom/kakaogame/secondpw/ActionType;

    goto/16 :goto_0

    .line 439
    :cond_2
    sget-object v0, Lcom/kakaogame/secondpw/ActionType;->SHOW_PUT_PASSWORD:Lcom/kakaogame/secondpw/ActionType;

    invoke-virtual {v0}, Lcom/kakaogame/secondpw/ActionType;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object p0, Lcom/kakaogame/secondpw/ActionType;->SHOW_PUT_PASSWORD:Lcom/kakaogame/secondpw/ActionType;

    goto/16 :goto_0

    .line 449
    :cond_3
    sget-object v0, Lcom/kakaogame/secondpw/ActionType;->SET_REQUEST_CODE:Lcom/kakaogame/secondpw/ActionType;

    invoke-virtual {v0}, Lcom/kakaogame/secondpw/ActionType;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object p0, Lcom/kakaogame/secondpw/ActionType;->SET_REQUEST_CODE:Lcom/kakaogame/secondpw/ActionType;

    goto/16 :goto_0

    .line 459
    :cond_4
    sget-object v0, Lcom/kakaogame/secondpw/ActionType;->SET_CODE_TALK:Lcom/kakaogame/secondpw/ActionType;

    invoke-virtual {v0}, Lcom/kakaogame/secondpw/ActionType;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    sget-object p0, Lcom/kakaogame/secondpw/ActionType;->SET_CODE_TALK:Lcom/kakaogame/secondpw/ActionType;

    goto/16 :goto_0

    .line 469
    :cond_5
    sget-object v0, Lcom/kakaogame/secondpw/ActionType;->SET_CODE_SMS:Lcom/kakaogame/secondpw/ActionType;

    invoke-virtual {v0}, Lcom/kakaogame/secondpw/ActionType;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    sget-object p0, Lcom/kakaogame/secondpw/ActionType;->SET_CODE_SMS:Lcom/kakaogame/secondpw/ActionType;

    goto/16 :goto_0

    .line 479
    :cond_6
    sget-object v0, Lcom/kakaogame/secondpw/ActionType;->SET_CODE_EMAIL:Lcom/kakaogame/secondpw/ActionType;

    invoke-virtual {v0}, Lcom/kakaogame/secondpw/ActionType;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    sget-object p0, Lcom/kakaogame/secondpw/ActionType;->SET_CODE_EMAIL:Lcom/kakaogame/secondpw/ActionType;

    goto/16 :goto_0

    .line 489
    :cond_7
    sget-object v0, Lcom/kakaogame/secondpw/ActionType;->SET_AGREE:Lcom/kakaogame/secondpw/ActionType;

    invoke-virtual {v0}, Lcom/kakaogame/secondpw/ActionType;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    sget-object p0, Lcom/kakaogame/secondpw/ActionType;->SET_AGREE:Lcom/kakaogame/secondpw/ActionType;

    goto/16 :goto_0

    .line 499
    :cond_8
    sget-object v0, Lcom/kakaogame/secondpw/ActionType;->SET_PHONE_NUMBER:Lcom/kakaogame/secondpw/ActionType;

    invoke-virtual {v0}, Lcom/kakaogame/secondpw/ActionType;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    sget-object p0, Lcom/kakaogame/secondpw/ActionType;->SET_PHONE_NUMBER:Lcom/kakaogame/secondpw/ActionType;

    goto/16 :goto_0

    .line 509
    :cond_9
    sget-object v0, Lcom/kakaogame/secondpw/ActionType;->SET_EMAIL:Lcom/kakaogame/secondpw/ActionType;

    invoke-virtual {v0}, Lcom/kakaogame/secondpw/ActionType;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    sget-object p0, Lcom/kakaogame/secondpw/ActionType;->SET_EMAIL:Lcom/kakaogame/secondpw/ActionType;

    goto/16 :goto_0

    .line 519
    :cond_a
    sget-object v0, Lcom/kakaogame/secondpw/ActionType;->RESET_DIGIT_CODE_1:Lcom/kakaogame/secondpw/ActionType;

    invoke-virtual {v0}, Lcom/kakaogame/secondpw/ActionType;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    sget-object p0, Lcom/kakaogame/secondpw/ActionType;->RESET_DIGIT_CODE_1:Lcom/kakaogame/secondpw/ActionType;

    goto/16 :goto_0

    .line 529
    :cond_b
    sget-object v0, Lcom/kakaogame/secondpw/ActionType;->RESET_DIGIT_CODE_2:Lcom/kakaogame/secondpw/ActionType;

    invoke-virtual {v0}, Lcom/kakaogame/secondpw/ActionType;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    sget-object p0, Lcom/kakaogame/secondpw/ActionType;->RESET_DIGIT_CODE_2:Lcom/kakaogame/secondpw/ActionType;

    goto/16 :goto_0

    .line 539
    :cond_c
    sget-object v0, Lcom/kakaogame/secondpw/ActionType;->KEYPAD_TIME_LIMIT:Lcom/kakaogame/secondpw/ActionType;

    invoke-virtual {v0}, Lcom/kakaogame/secondpw/ActionType;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    sget-object p0, Lcom/kakaogame/secondpw/ActionType;->KEYPAD_TIME_LIMIT:Lcom/kakaogame/secondpw/ActionType;

    goto/16 :goto_0

    .line 549
    :cond_d
    sget-object v0, Lcom/kakaogame/secondpw/ActionType;->KEYPAD_TIME_LIMIT_1:Lcom/kakaogame/secondpw/ActionType;

    invoke-virtual {v0}, Lcom/kakaogame/secondpw/ActionType;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    sget-object p0, Lcom/kakaogame/secondpw/ActionType;->KEYPAD_TIME_LIMIT_1:Lcom/kakaogame/secondpw/ActionType;

    goto/16 :goto_0

    .line 559
    :cond_e
    sget-object v0, Lcom/kakaogame/secondpw/ActionType;->KEYPAD_TIME_LIMIT_2:Lcom/kakaogame/secondpw/ActionType;

    invoke-virtual {v0}, Lcom/kakaogame/secondpw/ActionType;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    sget-object p0, Lcom/kakaogame/secondpw/ActionType;->KEYPAD_TIME_LIMIT_2:Lcom/kakaogame/secondpw/ActionType;

    goto/16 :goto_0

    .line 569
    :cond_f
    sget-object v0, Lcom/kakaogame/secondpw/ActionType;->SET_PASSWORD:Lcom/kakaogame/secondpw/ActionType;

    invoke-virtual {v0}, Lcom/kakaogame/secondpw/ActionType;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    sget-object p0, Lcom/kakaogame/secondpw/ActionType;->SET_PASSWORD:Lcom/kakaogame/secondpw/ActionType;

    goto/16 :goto_0

    .line 579
    :cond_10
    sget-object v0, Lcom/kakaogame/secondpw/ActionType;->SET_COMPLETE:Lcom/kakaogame/secondpw/ActionType;

    invoke-virtual {v0}, Lcom/kakaogame/secondpw/ActionType;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    sget-object p0, Lcom/kakaogame/secondpw/ActionType;->SET_COMPLETE:Lcom/kakaogame/secondpw/ActionType;

    goto/16 :goto_0

    .line 589
    :cond_11
    sget-object v0, Lcom/kakaogame/secondpw/ActionType;->REQUEST_RESET:Lcom/kakaogame/secondpw/ActionType;

    invoke-virtual {v0}, Lcom/kakaogame/secondpw/ActionType;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    sget-object p0, Lcom/kakaogame/secondpw/ActionType;->REQUEST_RESET:Lcom/kakaogame/secondpw/ActionType;

    goto/16 :goto_0

    .line 599
    :cond_12
    sget-object v0, Lcom/kakaogame/secondpw/ActionType;->REQUEST_REMOVE:Lcom/kakaogame/secondpw/ActionType;

    invoke-virtual {v0}, Lcom/kakaogame/secondpw/ActionType;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    sget-object p0, Lcom/kakaogame/secondpw/ActionType;->REQUEST_REMOVE:Lcom/kakaogame/secondpw/ActionType;

    goto/16 :goto_0

    .line 609
    :cond_13
    sget-object v0, Lcom/kakaogame/secondpw/ActionType;->PUT_PASSWORD:Lcom/kakaogame/secondpw/ActionType;

    invoke-virtual {v0}, Lcom/kakaogame/secondpw/ActionType;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    sget-object p0, Lcom/kakaogame/secondpw/ActionType;->PUT_PASSWORD:Lcom/kakaogame/secondpw/ActionType;

    goto/16 :goto_0

    .line 619
    :cond_14
    sget-object v0, Lcom/kakaogame/secondpw/ActionType;->RESET_REQUEST_CODE:Lcom/kakaogame/secondpw/ActionType;

    invoke-virtual {v0}, Lcom/kakaogame/secondpw/ActionType;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    sget-object p0, Lcom/kakaogame/secondpw/ActionType;->RESET_REQUEST_CODE:Lcom/kakaogame/secondpw/ActionType;

    goto/16 :goto_0

    .line 629
    :cond_15
    sget-object v0, Lcom/kakaogame/secondpw/ActionType;->RESET_CODE:Lcom/kakaogame/secondpw/ActionType;

    invoke-virtual {v0}, Lcom/kakaogame/secondpw/ActionType;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    sget-object p0, Lcom/kakaogame/secondpw/ActionType;->RESET_CODE:Lcom/kakaogame/secondpw/ActionType;

    goto/16 :goto_0

    .line 639
    :cond_16
    sget-object v0, Lcom/kakaogame/secondpw/ActionType;->RESET_PASSWORD:Lcom/kakaogame/secondpw/ActionType;

    invoke-virtual {v0}, Lcom/kakaogame/secondpw/ActionType;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    sget-object p0, Lcom/kakaogame/secondpw/ActionType;->RESET_PASSWORD:Lcom/kakaogame/secondpw/ActionType;

    goto/16 :goto_0

    .line 649
    :cond_17
    sget-object v0, Lcom/kakaogame/secondpw/ActionType;->RESET_COMPLETE:Lcom/kakaogame/secondpw/ActionType;

    invoke-virtual {v0}, Lcom/kakaogame/secondpw/ActionType;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    sget-object p0, Lcom/kakaogame/secondpw/ActionType;->RESET_COMPLETE:Lcom/kakaogame/secondpw/ActionType;

    goto :goto_0

    .line 659
    :cond_18
    sget-object v0, Lcom/kakaogame/secondpw/ActionType;->REMOVE_CONFIRM:Lcom/kakaogame/secondpw/ActionType;

    invoke-virtual {v0}, Lcom/kakaogame/secondpw/ActionType;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    sget-object p0, Lcom/kakaogame/secondpw/ActionType;->REMOVE_CONFIRM:Lcom/kakaogame/secondpw/ActionType;

    goto :goto_0

    .line 669
    :cond_19
    sget-object v0, Lcom/kakaogame/secondpw/ActionType;->REMOVE_REQUEST_CODE:Lcom/kakaogame/secondpw/ActionType;

    invoke-virtual {v0}, Lcom/kakaogame/secondpw/ActionType;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    sget-object p0, Lcom/kakaogame/secondpw/ActionType;->REMOVE_REQUEST_CODE:Lcom/kakaogame/secondpw/ActionType;

    goto :goto_0

    .line 679
    :cond_1a
    sget-object v0, Lcom/kakaogame/secondpw/ActionType;->REMOVE_CODE:Lcom/kakaogame/secondpw/ActionType;

    invoke-virtual {v0}, Lcom/kakaogame/secondpw/ActionType;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    sget-object p0, Lcom/kakaogame/secondpw/ActionType;->REMOVE_CODE:Lcom/kakaogame/secondpw/ActionType;

    goto :goto_0

    .line 689
    :cond_1b
    sget-object v0, Lcom/kakaogame/secondpw/ActionType;->REMOVE_COMPLETE:Lcom/kakaogame/secondpw/ActionType;

    invoke-virtual {v0}, Lcom/kakaogame/secondpw/ActionType;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    sget-object p0, Lcom/kakaogame/secondpw/ActionType;->REMOVE_COMPLETE:Lcom/kakaogame/secondpw/ActionType;

    goto :goto_0

    .line 699
    :cond_1c
    sget-object v0, Lcom/kakaogame/secondpw/ActionType;->CLOSE_POPUP:Lcom/kakaogame/secondpw/ActionType;

    invoke-virtual {v0}, Lcom/kakaogame/secondpw/ActionType;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    sget-object p0, Lcom/kakaogame/secondpw/ActionType;->CLOSE_POPUP:Lcom/kakaogame/secondpw/ActionType;

    goto :goto_0

    .line 709
    :cond_1d
    sget-object v0, Lcom/kakaogame/secondpw/ActionType;->RESTRICT_ACCESS:Lcom/kakaogame/secondpw/ActionType;

    invoke-virtual {v0}, Lcom/kakaogame/secondpw/ActionType;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1e

    sget-object p0, Lcom/kakaogame/secondpw/ActionType;->RESTRICT_ACCESS:Lcom/kakaogame/secondpw/ActionType;

    goto :goto_0

    .line 719
    :cond_1e
    sget-object p0, Lcom/kakaogame/secondpw/ActionType;->EXIT:Lcom/kakaogame/secondpw/ActionType;

    :goto_0
    return-object p0

    .array-data 1
    .end array-data
.end method
