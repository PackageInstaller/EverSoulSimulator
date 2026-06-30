.class public final Lcom/kakaogame/ui/font/StyleTextKt;
.super Ljava/lang/Object;
.source "StyleText.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nStyleText.kt\nKotlin\n*S Kotlin\n*F\n+ 1 StyleText.kt\ncom/kakaogame/ui/font/StyleTextKt\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,114:1\n1855#2:115\n1855#2,2:116\n1856#2:118\n*S KotlinDebug\n*F\n+ 1 StyleText.kt\ncom/kakaogame/ui/font/StyleTextKt\n*L\n31#1:115\n36#1:116,2\n31#1:118\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\u001a\u001f\u0010\u0000\u001a\u00020\u00012\u0017\u0010\u0002\u001a\u0013\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u0003\u00a2\u0006\u0002\u0008\u0006\u001a\n\u0010\u0007\u001a\u00020\u0008*\u00020\t\u001a\n\u0010\n\u001a\u00020\u0008*\u00020\u0001\u00a8\u0006\u000b"
    }
    d2 = {
        "styleText",
        "Lcom/kakaogame/util/json/JSONArray;",
        "lambda",
        "Lkotlin/Function1;",
        "Lcom/kakaogame/ui/font/StyleTextBuilder;",
        "",
        "Lkotlin/ExtensionFunctionType;",
        "getBoldText",
        "Landroid/text/SpannableStringBuilder;",
        "",
        "getString",
        "common-kakaogames_release"
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
.method public static synthetic $r8$lambda$6aB_Zum6czACWIYq_krYiRf9QFQ(Ljava/lang/String;Lcom/kakaogame/ui/font/StyleTextBuilder;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1}, Lcom/kakaogame/ui/font/StyleTextKt;->getBoldText$lambda$3(Ljava/lang/String;Lcom/kakaogame/ui/font/StyleTextBuilder;)Lkotlin/Unit;

    move-result-object p0

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static synthetic $r8$lambda$8MuTrkiVZdWWlKf0QTNwxzkY-Zc()[Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/kakaogame/ui/font/StyleTextKt;->getBoldText$lambda$3$lambda$2$lambda$1()[Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public static synthetic $r8$lambda$ts6iIOP5qdp85nkIgRfO3mnes5A(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/kakaogame/ui/font/StyleTextKt;->getBoldText$lambda$3$lambda$2$lambda$0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static synthetic $r8$lambda$uXzfx6ZCyMaVj3AfFWcl_EMJDMw(Ljava/lang/String;Lcom/kakaogame/ui/font/TextBuilder;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1}, Lcom/kakaogame/ui/font/StyleTextKt;->getBoldText$lambda$3$lambda$2(Ljava/lang/String;Lcom/kakaogame/ui/font/TextBuilder;)Lkotlin/Unit;

    move-result-object p0

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static final getBoldText(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;
    .locals 1

    const v0, 0x543e6e4a

    invoke-static {v0}, Lcom/liapp/y;->׳ֳֳ֬د(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 219
    new-instance v0, Lcom/kakaogame/ui/font/StyleTextKt$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/kakaogame/ui/font/StyleTextKt$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/kakaogame/ui/font/StyleTextKt;->styleText(Lkotlin/jvm/functions/Function1;)Lcom/kakaogame/util/json/JSONArray;

    move-result-object p0

    .line 269
    invoke-static {p0}, Lcom/kakaogame/ui/font/StyleTextKt;->getString(Lcom/kakaogame/util/json/JSONArray;)Landroid/text/SpannableStringBuilder;

    move-result-object p0

    return-object p0

    .array-data 1
    .end array-data
.end method

.method private static final getBoldText$lambda$3(Ljava/lang/String;Lcom/kakaogame/ui/font/StyleTextBuilder;)Lkotlin/Unit;
    .locals 1

    const v0, -0x22422ea4

    invoke-static {v0}, Lcom/liapp/y;->״دش۲ݮ(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 229
    new-instance v0, Lcom/kakaogame/ui/font/StyleTextKt$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Lcom/kakaogame/ui/font/StyleTextKt$$ExternalSyntheticLambda3;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/kakaogame/ui/font/StyleTextBuilder;->string(Lkotlin/jvm/functions/Function1;)Z

    .line 269
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method private static final getBoldText$lambda$3$lambda$2(Ljava/lang/String;Lcom/kakaogame/ui/font/TextBuilder;)Lkotlin/Unit;
    .locals 1

    const v0, 0x5d10c91f

    invoke-static {v0}, Lcom/liapp/y;->ڴݮگ֮ت(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 239
    new-instance v0, Lcom/kakaogame/ui/font/StyleTextKt$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/kakaogame/ui/font/StyleTextKt$$ExternalSyntheticLambda1;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/kakaogame/ui/font/TextBuilder;->text(Lkotlin/jvm/functions/Function0;)V

    .line 249
    new-instance p0, Lcom/kakaogame/ui/font/StyleTextKt$$ExternalSyntheticLambda2;

    invoke-direct {p0}, Lcom/kakaogame/ui/font/StyleTextKt$$ExternalSyntheticLambda2;-><init>()V

    invoke-virtual {p1, p0}, Lcom/kakaogame/ui/font/TextBuilder;->styles(Lkotlin/jvm/functions/Function0;)Z

    .line 259
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method private static final getBoldText$lambda$3$lambda$2$lambda$0(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method private static final getBoldText$lambda$3$lambda$2$lambda$1()[Ljava/lang/String;
    .locals 1

    const v0, 0x7d70db5d    # 2.0009607E37f

    invoke-static {v0}, Lcom/liapp/y;->حֲݴܳޯ(I)Ljava/lang/String;

    move-result-object v0

    .line 249
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    return-object v0

    .array-data 1
    .end array-data
.end method

.method public static final getString(Lcom/kakaogame/util/json/JSONArray;)Landroid/text/SpannableStringBuilder;
    .locals 11

    const v0, 0x543e6e4a

    invoke-static {v0}, Lcom/liapp/y;->׳ֳֳ֬د(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 309
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 319
    check-cast p0, Ljava/lang/Iterable;

    .line 1159
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_c

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    const v2, 0x7d711d75

    invoke-static {v2}, Lcom/liapp/y;->حֲݴܳޯ(I)Ljava/lang/String;

    move-result-object v2

    .line 329
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lcom/kakaogame/util/json/JSONObject;

    const v2, -0x4515b29f

    invoke-static {v2}, Lcom/liapp/y;->ڳݬ٬ۮݪ(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/kakaogame/util/json/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-nez v2, :cond_1

    const-string v2, ""

    .line 339
    :cond_1
    check-cast v2, Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-lez v3, :cond_2

    move v3, v4

    goto :goto_1

    :cond_2
    move v3, v5

    :goto_1
    if-eqz v3, :cond_0

    .line 349
    new-instance v3, Landroid/text/SpannableString;

    invoke-direct {v3, v2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    const v2, 0x336c9e7b

    invoke-static {v2}, Lcom/liapp/y;->ׯ״ٲ֬ب(I)Ljava/lang/String;

    move-result-object v2

    .line 359
    invoke-virtual {v1, v2}, Lcom/kakaogame/util/json/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const v2, 0x7d70d42d    # 2.0007275E37f

    invoke-static {v2}, Lcom/liapp/y;->حֲݴܳޯ(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lcom/kakaogame/util/json/JSONArray;

    .line 369
    check-cast v1, Ljava/lang/Iterable;

    .line 1169
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    const v6, -0x224212dc

    invoke-static {v6}, Lcom/liapp/y;->״دش۲ݮ(I)Ljava/lang/String;

    move-result-object v6

    .line 389
    invoke-static {v2, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    const/16 v7, 0x21

    if-eqz v6, :cond_4

    .line 399
    new-instance v6, Landroid/text/style/ForegroundColorSpan;

    const v8, -0x1b7b8

    invoke-direct {v6, v8}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 409
    invoke-virtual {v3}, Landroid/text/SpannableString;->length()I

    move-result v8

    .line 389
    invoke-virtual {v3, v6, v5, v8, v7}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    goto/16 :goto_3

    :cond_4
    const v6, 0x5d1e13b7

    invoke-static {v6}, Lcom/liapp/y;->ڴݮگ֮ت(I)Ljava/lang/String;

    move-result-object v6

    .line 429
    invoke-static {v2, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 439
    new-instance v6, Landroid/text/style/ForegroundColorSpan;

    const v8, -0xa96b18

    invoke-direct {v6, v8}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 449
    invoke-virtual {v3}, Landroid/text/SpannableString;->length()I

    move-result v8

    .line 429
    invoke-virtual {v3, v6, v5, v8, v7}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    goto/16 :goto_3

    :cond_5
    const v6, 0x7d70e045

    invoke-static {v6}, Lcom/liapp/y;->حֲݴܳޯ(I)Ljava/lang/String;

    move-result-object v6

    .line 469
    invoke-static {v2, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 479
    new-instance v6, Landroid/text/style/ForegroundColorSpan;

    const v8, -0xd85c18

    invoke-direct {v6, v8}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 489
    invoke-virtual {v3}, Landroid/text/SpannableString;->length()I

    move-result v8

    .line 469
    invoke-virtual {v3, v6, v5, v8, v7}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    goto :goto_3

    :cond_6
    const v6, 0x543e44ca

    invoke-static {v6}, Lcom/liapp/y;->׳ֳֳ֬د(I)Ljava/lang/String;

    move-result-object v6

    .line 509
    invoke-static {v2, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 519
    new-instance v6, Landroid/text/style/ForegroundColorSpan;

    const/high16 v8, -0x1000000

    invoke-direct {v6, v8}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 529
    invoke-virtual {v3}, Landroid/text/SpannableString;->length()I

    move-result v8

    .line 509
    invoke-virtual {v3, v6, v5, v8, v7}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    goto :goto_3

    :cond_7
    const v6, 0x7d70db5d    # 2.0009607E37f

    invoke-static {v6}, Lcom/liapp/y;->حֲݴܳޯ(I)Ljava/lang/String;

    move-result-object v6

    .line 549
    invoke-static {v2, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 559
    new-instance v6, Landroid/text/style/StyleSpan;

    invoke-direct {v6, v4}, Landroid/text/style/StyleSpan;-><init>(I)V

    .line 569
    invoke-virtual {v3}, Landroid/text/SpannableString;->length()I

    move-result v8

    .line 549
    invoke-virtual {v3, v6, v5, v8, v7}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    goto :goto_3

    :cond_8
    const v6, 0x6d033798

    invoke-static {v6}, Lcom/liapp/y;->ٱڳܴڭܩ(I)Ljava/lang/String;

    move-result-object v6

    .line 589
    invoke-static {v2, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 599
    new-instance v6, Landroid/text/style/UnderlineSpan;

    invoke-direct {v6}, Landroid/text/style/UnderlineSpan;-><init>()V

    .line 609
    invoke-virtual {v3}, Landroid/text/SpannableString;->length()I

    move-result v8

    .line 589
    invoke-virtual {v3, v6, v5, v8, v7}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    goto :goto_3

    :cond_9
    const v6, 0x336d8d2b

    invoke-static {v6}, Lcom/liapp/y;->ׯ״ٲ֬ب(I)Ljava/lang/String;

    move-result-object v6

    .line 629
    invoke-static {v2, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 639
    new-instance v6, Landroid/text/style/RelativeSizeSpan;

    const v8, 0x3f99999a    # 1.2f

    invoke-direct {v6, v8}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    .line 649
    invoke-virtual {v3}, Landroid/text/SpannableString;->length()I

    move-result v8

    .line 629
    invoke-virtual {v3, v6, v5, v8, v7}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 689
    :cond_a
    :goto_3
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    check-cast v6, Ljava/lang/CharSequence;

    const v8, 0x5d145a37

    invoke-static {v8}, Lcom/liapp/y;->ڴݮگ֮ت(I)Ljava/lang/String;

    move-result-object v8

    check-cast v8, Ljava/lang/CharSequence;

    const/4 v9, 0x2

    const/4 v10, 0x0

    invoke-static {v6, v8, v5, v9, v10}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 709
    new-instance v6, Landroid/text/style/URLSpan;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v6, v2}, Landroid/text/style/URLSpan;-><init>(Ljava/lang/String;)V

    .line 719
    invoke-virtual {v3}, Landroid/text/SpannableString;->length()I

    move-result v2

    .line 699
    invoke-virtual {v3, v6, v5, v2, v7}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    goto/16 :goto_2

    .line 769
    :cond_b
    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {v0, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto/16 :goto_0

    :cond_c
    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public static final styleText(Lkotlin/jvm/functions/Function1;)Lcom/kakaogame/util/json/JSONArray;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/kakaogame/ui/font/StyleTextBuilder;",
            "Lkotlin/Unit;",
            ">;)",
            "Lcom/kakaogame/util/json/JSONArray;"
        }
    .end annotation

    const v0, 0x6d0227b0

    invoke-static {v0}, Lcom/liapp/y;->ٱڳܴڭܩ(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 179
    new-instance v0, Lcom/kakaogame/ui/font/StyleTextBuilder;

    invoke-direct {v0}, Lcom/kakaogame/ui/font/StyleTextBuilder;-><init>()V

    invoke-interface {p0, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/kakaogame/ui/font/StyleTextBuilder;->build()Lcom/kakaogame/util/json/JSONArray;

    move-result-object p0

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method
