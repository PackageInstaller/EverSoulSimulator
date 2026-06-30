.class public final Lcom/kakao/sdk/friend/core/k/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field public final a:Lcom/kakao/sdk/friend/core/k/j;

.field public final b:Ljava/text/Collator;


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-static {v0}, Landroidx/core/os/ConfigurationCompat;->getLocales(Landroid/content/res/Configuration;)Landroidx/core/os/LocaleListCompat;

    move-result-object v0

    const-string v1, "getLocales(Resources.getSystem().configuration)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroidx/core/os/LocaleListCompat;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v0, Lcom/kakao/sdk/friend/core/k/c;

    invoke-direct {v0}, Lcom/kakao/sdk/friend/core/k/c;-><init>()V

    goto/16 :goto_1

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/core/os/LocaleListCompat;->get(I)Ljava/util/Locale;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    sget-object v1, Ljava/util/Locale;->KOREAN:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v0, Lcom/kakao/sdk/friend/core/k/g;

    invoke-direct {v0}, Lcom/kakao/sdk/friend/core/k/g;-><init>()V

    goto :goto_1

    :cond_2
    sget-object v1, Ljava/util/Locale;->JAPANESE:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    new-instance v0, Lcom/kakao/sdk/friend/core/k/f;

    invoke-direct {v0}, Lcom/kakao/sdk/friend/core/k/f;-><init>()V

    goto :goto_1

    :cond_3
    const-string v1, "ru"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    new-instance v0, Lcom/kakao/sdk/friend/core/k/h;

    invoke-direct {v0}, Lcom/kakao/sdk/friend/core/k/h;-><init>()V

    goto :goto_1

    :cond_4
    const-string v1, "th"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    new-instance v0, Lcom/kakao/sdk/friend/core/k/k;

    invoke-direct {v0}, Lcom/kakao/sdk/friend/core/k/k;-><init>()V

    goto :goto_1

    :cond_5
    const-string v1, "ar"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    new-instance v0, Lcom/kakao/sdk/friend/core/k/d;

    invoke-direct {v0}, Lcom/kakao/sdk/friend/core/k/d;-><init>()V

    goto :goto_1

    :cond_6
    sget-object v1, Ljava/util/Locale;->CHINESE:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    new-instance v0, Lcom/kakao/sdk/friend/core/k/e;

    invoke-direct {v0}, Lcom/kakao/sdk/friend/core/k/e;-><init>()V

    goto :goto_1

    :cond_7
    if-nez v0, :cond_8

    new-instance v0, Lcom/kakao/sdk/friend/core/k/c;

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v2, "ENGLISH"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/kakao/sdk/friend/core/k/c;-><init>(Ljava/util/Locale;)V

    goto :goto_1

    :cond_8
    new-instance v1, Lcom/kakao/sdk/friend/core/k/c;

    new-instance v2, Ljava/util/Locale;

    invoke-direct {v2, v0}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Lcom/kakao/sdk/friend/core/k/c;-><init>(Ljava/util/Locale;)V

    move-object v0, v1

    .line 29
    :goto_1
    iput-object v0, p0, Lcom/kakao/sdk/friend/core/k/l;->a:Lcom/kakao/sdk/friend/core/k/j;

    invoke-interface {v0}, Lcom/kakao/sdk/friend/core/k/j;->a()Ljava/text/Collator;

    move-result-object v0

    iput-object v0, p0, Lcom/kakao/sdk/friend/core/k/l;->b:Ljava/text/Collator;

    return-void

    nop

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;)I
    .locals 7

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-static {p1}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    if-eqz p2, :cond_b

    invoke-static {p2}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto/16 :goto_4

    :cond_1
    if-eqz p1, :cond_a

    invoke-static {p1}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto/16 :goto_3

    :cond_2
    if-eqz p2, :cond_9

    invoke-static {p2}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_2

    :cond_3
    invoke-static {p1}, Lkotlin/text/StringsKt;->first(Ljava/lang/CharSequence;)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isSurrogate(C)Z

    move-result v1

    const/4 v2, 0x7

    const v3, 0x2a6e0

    const/16 v4, 0x9

    const/high16 v5, 0x20000

    if-eqz v1, :cond_5

    invoke-static {p1, v0}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v1

    if-gt v5, v1, :cond_4

    if-ge v1, v3, :cond_4

    move v1, v2

    goto :goto_0

    :cond_4
    move v1, v4

    goto :goto_0

    .line 19
    :cond_5
    invoke-static {p1}, Lcom/kakao/sdk/friend/core/k/q;->a(Ljava/lang/String;)C

    move-result v1

    invoke-static {v1}, Lcom/kakao/sdk/friend/core/k/q;->c(C)I

    move-result v1

    :goto_0
    invoke-static {p2}, Lkotlin/text/StringsKt;->first(Ljava/lang/CharSequence;)C

    move-result v6

    invoke-static {v6}, Ljava/lang/Character;->isSurrogate(C)Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-static {p2, v0}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v0

    if-gt v5, v0, :cond_6

    if-ge v0, v3, :cond_6

    goto :goto_1

    :cond_6
    move v2, v4

    goto :goto_1

    :cond_7
    invoke-static {p2}, Lcom/kakao/sdk/friend/core/k/q;->a(Ljava/lang/String;)C

    move-result v0

    invoke-static {v0}, Lcom/kakao/sdk/friend/core/k/q;->c(C)I

    move-result v2

    :goto_1
    iget-object v0, p0, Lcom/kakao/sdk/friend/core/k/l;->a:Lcom/kakao/sdk/friend/core/k/j;

    invoke-interface {v0, v1}, Lcom/kakao/sdk/friend/core/k/j;->a(I)I

    move-result v0

    iget-object v1, p0, Lcom/kakao/sdk/friend/core/k/l;->a:Lcom/kakao/sdk/friend/core/k/j;

    invoke-interface {v1, v2}, Lcom/kakao/sdk/friend/core/k/j;->a(I)I

    move-result v1

    sub-int/2addr v0, v1

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/kakao/sdk/friend/core/k/l;->b:Ljava/text/Collator;

    invoke-virtual {v0, p1, p2}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    :cond_8
    return v0

    :cond_9
    :goto_2
    const/4 p1, -0x1

    return p1

    :cond_a
    :goto_3
    const/4 p1, 0x1

    return p1

    :cond_b
    :goto_4
    return v0

    .array-data 1
    .end array-data
.end method

.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 2

    check-cast p1, Lcom/kakao/sdk/friend/core/i/e;

    check-cast p2, Lcom/kakao/sdk/friend/core/i/e;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 19
    iget-object p1, p1, Lcom/kakao/sdk/friend/core/i/e;->c:Ljava/lang/String;

    if-eqz p1, :cond_0

    .line 29
    sget-object v1, Lcom/kakao/sdk/friend/core/util/StringUtils;->INSTANCE:Lcom/kakao/sdk/friend/core/util/StringUtils;

    invoke-virtual {v1, p1}, Lcom/kakao/sdk/friend/core/util/StringUtils;->trimZeroWidthChars$friend_core_release(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, v0

    :goto_0
    if-eqz p2, :cond_1

    .line 39
    iget-object p2, p2, Lcom/kakao/sdk/friend/core/i/e;->c:Ljava/lang/String;

    if-eqz p2, :cond_1

    .line 49
    sget-object v0, Lcom/kakao/sdk/friend/core/util/StringUtils;->INSTANCE:Lcom/kakao/sdk/friend/core/util/StringUtils;

    invoke-virtual {v0, p2}, Lcom/kakao/sdk/friend/core/util/StringUtils;->trimZeroWidthChars$friend_core_release(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_1
    invoke-virtual {p0, p1, v0}, Lcom/kakao/sdk/friend/core/k/l;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1

    .array-data 1
    .end array-data
.end method
