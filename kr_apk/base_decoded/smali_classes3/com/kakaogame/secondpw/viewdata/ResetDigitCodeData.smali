.class public final Lcom/kakaogame/secondpw/viewdata/ResetDigitCodeData;
.super Lcom/kakaogame/secondpw/viewdata/Base2ndPWViewData;
.source "ResetDigitCodeData.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0010\u0008\n\u0002\u0008\u0003\u0018\u00002\u00020\u0001B3\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0003\u0012\u0006\u0010\u0007\u001a\u00020\u0008\u00a2\u0006\u0004\u0008\t\u0010\n\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/kakaogame/secondpw/viewdata/ResetDigitCodeData;",
        "Lcom/kakaogame/secondpw/viewdata/Base2ndPWViewData;",
        "path1",
        "",
        "keys1",
        "path2",
        "keys2",
        "keypadLimitTime",
        "",
        "<init>",
        "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V",
        "security_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 8

    const v0, -0x45164787

    invoke-static {v0}, Lcom/liapp/y;->ڳݬ٬ۮݪ(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const v0, -0x224de1bc

    invoke-static {v0}, Lcom/liapp/y;->״دش۲ݮ(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const v0, 0x336d8dc3

    invoke-static {v0}, Lcom/liapp/y;->ׯ״ٲ֬ب(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const v0, 0x6d033490

    invoke-static {v0}, Lcom/liapp/y;->ٱڳܴڭܩ(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 79
    invoke-direct {p0}, Lcom/kakaogame/secondpw/viewdata/Base2ndPWViewData;-><init>()V

    .line 99
    sget-object v0, Lcom/kakaogame/secondpw/PasswordViewType;->RESET_DIGIT_CODE:Lcom/kakaogame/secondpw/PasswordViewType;

    invoke-virtual {v0}, Lcom/kakaogame/secondpw/PasswordViewType;->getValue()Ljava/lang/String;

    move-result-object v0

    const v1, 0x6d0b0e48

    invoke-static {v1}, Lcom/liapp/y;->ٱڳܴڭܩ(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lcom/kakaogame/secondpw/viewdata/ResetDigitCodeData;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 119
    new-instance v0, Lcom/kakaogame/util/json/JSONArray;

    invoke-direct {v0}, Lcom/kakaogame/util/json/JSONArray;-><init>()V

    const/4 v1, 0x2

    new-array v2, v1, [Lkotlin/Pair;

    const v3, 0x5d12506f

    invoke-static {v3}, Lcom/liapp/y;->ڴݮگ֮ت(I)Ljava/lang/String;

    move-result-object v3

    .line 129
    invoke-static {v3, p1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    const/4 v4, 0x0

    aput-object p1, v2, v4

    const-string p1, "key"

    invoke-static {p1, p2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p2

    const/4 v5, 0x1

    aput-object p2, v2, v5

    invoke-static {v2}, Lkotlin/collections/MapsKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/kakaogame/util/json/JSONArray;->add(Ljava/lang/Object;)Z

    .line 149
    move-object p2, p3

    check-cast p2, Ljava/lang/CharSequence;

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result p2

    if-nez p2, :cond_0

    move p2, v5

    goto :goto_0

    :cond_0
    move p2, v4

    :goto_0
    const v2, 0x543fd752

    invoke-static {v2}, Lcom/liapp/y;->׳ֳֳ֬د(I)Ljava/lang/String;

    move-result-object v2

    const v6, 0x6d00c940

    invoke-static {v6}, Lcom/liapp/y;->ٱڳܴڭܩ(I)Ljava/lang/String;

    move-result-object v6

    const v7, -0x4515bb0f

    invoke-static {v7}, Lcom/liapp/y;->ڳݬ٬ۮݪ(I)Ljava/lang/String;

    move-result-object v7

    if-eqz p2, :cond_1

    new-array p1, v1, [Lkotlin/Pair;

    .line 179
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {v6, p2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p2

    aput-object p2, p1, v4

    .line 189
    sget-object p2, Lcom/kakaogame/secondpw/ActionType;->KEYPAD_TIME_LIMIT_1:Lcom/kakaogame/secondpw/ActionType;

    invoke-virtual {p2}, Lcom/kakaogame/secondpw/ActionType;->getValue()Ljava/lang/String;

    move-result-object p2

    invoke-static {v2, p2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p2

    aput-object p2, p1, v5

    .line 169
    invoke-static {p1}, Lkotlin/collections/MapsKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object p1

    .line 159
    invoke-virtual {p0, v7, p1}, Lcom/kakaogame/secondpw/viewdata/ResetDigitCodeData;->put(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-array p2, v1, [Lkotlin/Pair;

    .line 229
    invoke-static {v3, p3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p3

    aput-object p3, p2, v4

    invoke-static {p1, p4}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    aput-object p1, p2, v5

    invoke-static {p2}, Lkotlin/collections/MapsKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/kakaogame/util/json/JSONArray;->add(Ljava/lang/Object;)Z

    new-array p1, v1, [Lkotlin/Pair;

    .line 259
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {v6, p2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p2

    aput-object p2, p1, v4

    .line 269
    sget-object p2, Lcom/kakaogame/secondpw/ActionType;->KEYPAD_TIME_LIMIT_2:Lcom/kakaogame/secondpw/ActionType;

    invoke-virtual {p2}, Lcom/kakaogame/secondpw/ActionType;->getValue()Ljava/lang/String;

    move-result-object p2

    invoke-static {v2, p2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p2

    aput-object p2, p1, v5

    .line 249
    invoke-static {p1}, Lkotlin/collections/MapsKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object p1

    .line 239
    invoke-virtual {p0, v7, p1}, Lcom/kakaogame/secondpw/viewdata/ResetDigitCodeData;->put(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_1
    const-string p1, "keypad"

    .line 319
    invoke-virtual {p0, p1, v0}, Lcom/kakaogame/secondpw/viewdata/ResetDigitCodeData;->put(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 7

    and-int/lit8 p7, p6, 0x4

    const-string v0, ""

    if-eqz p7, :cond_0

    move-object v4, v0

    goto :goto_0

    :cond_0
    move-object v4, p3

    :goto_0
    and-int/lit8 p3, p6, 0x8

    if-eqz p3, :cond_1

    move-object v5, v0

    goto :goto_1

    :cond_1
    move-object v5, p4

    :goto_1
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v6, p5

    .line 79
    invoke-direct/range {v1 .. v6}, Lcom/kakaogame/secondpw/viewdata/ResetDigitCodeData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-void

    .array-data 1
    .end array-data
.end method
