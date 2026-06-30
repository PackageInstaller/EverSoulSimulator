.class public final Lcom/kakaogame/secondpw/PasswordViewTypeKt;
.super Ljava/lang/Object;
.source "PasswordViewType.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\u001a\n\u0010\u0000\u001a\u00020\u0001*\u00020\u0002\u00a8\u0006\u0003"
    }
    d2 = {
        "getViewType",
        "Lcom/kakaogame/secondpw/PasswordViewType;",
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
.method public static final getViewType(Ljava/lang/String;)Lcom/kakaogame/secondpw/PasswordViewType;
    .locals 1

    const v0, 0x543e6e4a

    invoke-static {v0}, Lcom/liapp/y;->׳ֳֳ֬د(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 209
    sget-object v0, Lcom/kakaogame/secondpw/PasswordViewType;->GUIDE_CENTER:Lcom/kakaogame/secondpw/PasswordViewType;

    invoke-virtual {v0}, Lcom/kakaogame/secondpw/PasswordViewType;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p0, Lcom/kakaogame/secondpw/PasswordViewType;->GUIDE_CENTER:Lcom/kakaogame/secondpw/PasswordViewType;

    goto/16 :goto_0

    .line 219
    :cond_0
    sget-object v0, Lcom/kakaogame/secondpw/PasswordViewType;->GUIDE_3_LINE:Lcom/kakaogame/secondpw/PasswordViewType;

    invoke-virtual {v0}, Lcom/kakaogame/secondpw/PasswordViewType;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object p0, Lcom/kakaogame/secondpw/PasswordViewType;->GUIDE_3_LINE:Lcom/kakaogame/secondpw/PasswordViewType;

    goto/16 :goto_0

    .line 229
    :cond_1
    sget-object v0, Lcom/kakaogame/secondpw/PasswordViewType;->GUIDE_2_LINE:Lcom/kakaogame/secondpw/PasswordViewType;

    invoke-virtual {v0}, Lcom/kakaogame/secondpw/PasswordViewType;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object p0, Lcom/kakaogame/secondpw/PasswordViewType;->GUIDE_2_LINE:Lcom/kakaogame/secondpw/PasswordViewType;

    goto/16 :goto_0

    .line 239
    :cond_2
    sget-object v0, Lcom/kakaogame/secondpw/PasswordViewType;->INPUT_CODE:Lcom/kakaogame/secondpw/PasswordViewType;

    invoke-virtual {v0}, Lcom/kakaogame/secondpw/PasswordViewType;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object p0, Lcom/kakaogame/secondpw/PasswordViewType;->INPUT_CODE:Lcom/kakaogame/secondpw/PasswordViewType;

    goto/16 :goto_0

    .line 249
    :cond_3
    sget-object v0, Lcom/kakaogame/secondpw/PasswordViewType;->INPUT_PHONE:Lcom/kakaogame/secondpw/PasswordViewType;

    invoke-virtual {v0}, Lcom/kakaogame/secondpw/PasswordViewType;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object p0, Lcom/kakaogame/secondpw/PasswordViewType;->INPUT_PHONE:Lcom/kakaogame/secondpw/PasswordViewType;

    goto :goto_0

    .line 259
    :cond_4
    sget-object v0, Lcom/kakaogame/secondpw/PasswordViewType;->INPUT_EMAIL:Lcom/kakaogame/secondpw/PasswordViewType;

    invoke-virtual {v0}, Lcom/kakaogame/secondpw/PasswordViewType;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    sget-object p0, Lcom/kakaogame/secondpw/PasswordViewType;->INPUT_EMAIL:Lcom/kakaogame/secondpw/PasswordViewType;

    goto :goto_0

    .line 269
    :cond_5
    sget-object v0, Lcom/kakaogame/secondpw/PasswordViewType;->SET_PASSWORD:Lcom/kakaogame/secondpw/PasswordViewType;

    invoke-virtual {v0}, Lcom/kakaogame/secondpw/PasswordViewType;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    sget-object p0, Lcom/kakaogame/secondpw/PasswordViewType;->SET_PASSWORD:Lcom/kakaogame/secondpw/PasswordViewType;

    goto :goto_0

    .line 279
    :cond_6
    sget-object v0, Lcom/kakaogame/secondpw/PasswordViewType;->INPUT_PASSWORD:Lcom/kakaogame/secondpw/PasswordViewType;

    invoke-virtual {v0}, Lcom/kakaogame/secondpw/PasswordViewType;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    sget-object p0, Lcom/kakaogame/secondpw/PasswordViewType;->INPUT_PASSWORD:Lcom/kakaogame/secondpw/PasswordViewType;

    goto :goto_0

    .line 289
    :cond_7
    sget-object v0, Lcom/kakaogame/secondpw/PasswordViewType;->POPUP_RESTRICT:Lcom/kakaogame/secondpw/PasswordViewType;

    invoke-virtual {v0}, Lcom/kakaogame/secondpw/PasswordViewType;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    sget-object p0, Lcom/kakaogame/secondpw/PasswordViewType;->POPUP_RESTRICT:Lcom/kakaogame/secondpw/PasswordViewType;

    goto :goto_0

    .line 299
    :cond_8
    sget-object v0, Lcom/kakaogame/secondpw/PasswordViewType;->RESET_DIGIT_CODE:Lcom/kakaogame/secondpw/PasswordViewType;

    invoke-virtual {v0}, Lcom/kakaogame/secondpw/PasswordViewType;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    sget-object p0, Lcom/kakaogame/secondpw/PasswordViewType;->RESET_DIGIT_CODE:Lcom/kakaogame/secondpw/PasswordViewType;

    goto :goto_0

    .line 309
    :cond_9
    sget-object v0, Lcom/kakaogame/secondpw/PasswordViewType;->RESULT:Lcom/kakaogame/secondpw/PasswordViewType;

    invoke-virtual {v0}, Lcom/kakaogame/secondpw/PasswordViewType;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_a

    sget-object p0, Lcom/kakaogame/secondpw/PasswordViewType;->RESULT:Lcom/kakaogame/secondpw/PasswordViewType;

    goto :goto_0

    .line 319
    :cond_a
    sget-object p0, Lcom/kakaogame/secondpw/PasswordViewType;->POPUP:Lcom/kakaogame/secondpw/PasswordViewType;

    :goto_0
    return-object p0

    .array-data 1
    .end array-data
.end method
