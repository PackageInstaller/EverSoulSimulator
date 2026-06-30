.class public abstract Lcom/kakao/sdk/friend/core/k/q;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:[C

.field public static final b:[C

.field public static final c:[C

.field public static final d:[C

.field public static final e:[C

.field public static final f:[C

.field public static final g:[C


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x2

    new-array v0, v0, [C

    .line 19
    fill-array-data v0, :array_0

    sput-object v0, Lcom/kakao/sdk/friend/core/k/q;->a:[C

    const/16 v0, 0x13

    new-array v0, v0, [C

    fill-array-data v0, :array_1

    sput-object v0, Lcom/kakao/sdk/friend/core/k/q;->b:[C

    const/16 v0, 0x15

    new-array v0, v0, [C

    fill-array-data v0, :array_2

    sput-object v0, Lcom/kakao/sdk/friend/core/k/q;->c:[C

    const/16 v0, 0x1c

    new-array v0, v0, [C

    fill-array-data v0, :array_3

    sput-object v0, Lcom/kakao/sdk/friend/core/k/q;->d:[C

    const/16 v0, 0xa

    new-array v1, v0, [C

    fill-array-data v1, :array_4

    sput-object v1, Lcom/kakao/sdk/friend/core/k/q;->e:[C

    const/16 v1, 0x1a

    new-array v1, v1, [C

    fill-array-data v1, :array_5

    sput-object v1, Lcom/kakao/sdk/friend/core/k/q;->f:[C

    new-array v0, v0, [C

    fill-array-data v0, :array_6

    sput-object v0, Lcom/kakao/sdk/friend/core/k/q;->g:[C

    return-void

    nop

    :array_0
    .array-data 2
        0xd7s
        0xf7s
    .end array-data

    :array_1
    .array-data 2
        0x3131s
        0x3132s
        0x3134s
        0x3137s
        0x3138s
        0x3139s
        0x3141s
        0x3142s
        0x3143s
        0x3145s
        0x3146s
        0x3147s
        0x3148s
        0x3149s
        0x314as
        0x314bs
        0x314cs
        0x314ds
        0x314es
    .end array-data

    nop

    :array_2
    .array-data 2
        0x314fs
        0x3150s
        0x3151s
        0x3152s
        0x3153s
        0x3154s
        0x3155s
        0x3156s
        0x3157s
        0x3158s
        0x3159s
        0x315as
        0x315bs
        0x315cs
        0x315ds
        0x315es
        0x315fs
        0x3160s
        0x3161s
        0x3162s
        0x3163s
    .end array-data

    nop

    :array_3
    .array-data 2
        0x20s
        0x3131s
        0x3132s
        0x3133s
        0x3134s
        0x3135s
        0x3136s
        0x3137s
        0x3139s
        0x313as
        0x313bs
        0x313cs
        0x313ds
        0x313es
        0x313fs
        0x3140s
        0x3141s
        0x3142s
        0x3144s
        0x3145s
        0x3146s
        0x3147s
        0x3148s
        0x314as
        0x314bs
        0x314cs
        0x314ds
        0x314es
    .end array-data

    :array_4
    .array-data 2
        0x3042s
        0x304bs
        0x3055s
        0x305fs
        0x306as
        0x306fs
        0x307es
        0x3084s
        0x3089s
        0x308fs
    .end array-data

    :array_5
    .array-data 2
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
        0x67s
        0x68s
        0x69s
        0x6as
        0x6bs
        0x6cs
        0x6ds
        0x6es
        0x6fs
        0x70s
        0x71s
        0x72s
        0x73s
        0x74s
        0x75s
        0x76s
        0x77s
        0x78s
        0x79s
        0x7as
    .end array-data

    :array_6
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
    .end array-data

    .array-data 1
    .end array-data
.end method

.method public static final a(Ljava/lang/String;)C
    .locals 3

    const-string/jumbo v0, "value"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 p0, 0x20

    return p0

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result p0

    const v1, 0xac00

    if-gt v1, p0, :cond_1

    const v2, 0xd7a4

    if-ge p0, v2, :cond_1

    if-gt v1, p0, :cond_f

    if-ge p0, v2, :cond_f

    sub-int/2addr p0, v1

    .line 19
    div-int/lit16 p0, p0, 0x24c

    sget-object v0, Lcom/kakao/sdk/friend/core/k/q;->b:[C

    aget-char p0, v0, p0

    goto/16 :goto_3

    :cond_1
    const/16 v1, 0x3041

    if-gt v1, p0, :cond_2

    const/16 v2, 0x30f7

    if-ge p0, v2, :cond_2

    goto :goto_0

    :cond_2
    const v2, 0xff61

    if-gt v2, p0, :cond_e

    const v2, 0xffa0

    if-ge p0, v2, :cond_e

    :goto_0
    if-gt v1, p0, :cond_3

    const/16 v1, 0x30a0

    if-ge p0, v1, :cond_3

    add-int/lit16 p0, p0, -0x3041

    goto :goto_1

    :cond_3
    add-int/lit16 p0, p0, -0x30a1

    :goto_1
    const/16 v1, 0xa

    if-ltz p0, :cond_4

    if-ge p0, v1, :cond_4

    goto :goto_2

    :cond_4
    const/16 v2, 0x14

    if-gt v1, p0, :cond_5

    if-ge p0, v2, :cond_5

    const/4 v0, 0x1

    goto :goto_2

    :cond_5
    const/16 v1, 0x1e

    if-gt v2, p0, :cond_6

    if-ge p0, v1, :cond_6

    const/4 v0, 0x2

    goto :goto_2

    :cond_6
    const/16 v2, 0x29

    if-gt v1, p0, :cond_7

    if-ge p0, v2, :cond_7

    const/4 v0, 0x3

    goto :goto_2

    :cond_7
    const/16 v1, 0x2e

    if-gt v2, p0, :cond_8

    if-ge p0, v1, :cond_8

    const/4 v0, 0x4

    goto :goto_2

    :cond_8
    const/16 v2, 0x3d

    if-gt v1, p0, :cond_9

    if-ge p0, v2, :cond_9

    const/4 v0, 0x5

    goto :goto_2

    :cond_9
    const/16 v1, 0x42

    if-gt v2, p0, :cond_a

    if-ge p0, v1, :cond_a

    const/4 v0, 0x6

    goto :goto_2

    :cond_a
    const/16 v2, 0x48

    if-gt v1, p0, :cond_b

    if-ge p0, v2, :cond_b

    const/4 v0, 0x7

    goto :goto_2

    :cond_b
    const/16 v1, 0x4d

    if-gt v2, p0, :cond_c

    if-ge p0, v1, :cond_c

    const/16 v0, 0x8

    goto :goto_2

    :cond_c
    if-gt v1, p0, :cond_d

    const/16 v1, 0x54

    if-ge p0, v1, :cond_d

    const/16 v0, 0x9

    .line 29
    :cond_d
    :goto_2
    sget-object p0, Lcom/kakao/sdk/friend/core/k/q;->e:[C

    aget-char p0, p0, v0

    goto :goto_3

    .line 39
    :cond_e
    invoke-static {p0}, Ljava/lang/Character;->toLowerCase(C)C

    move-result p0

    :cond_f
    :goto_3
    return p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static final a(C)Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sb"

    .line 49
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const v1, 0xac00

    if-gt v1, p0, :cond_0

    const v2, 0xd7a4

    if-ge p0, v2, :cond_0

    sub-int/2addr p0, v1

    rem-int/lit8 v1, p0, 0x1c

    sub-int/2addr p0, v1

    div-int/lit8 p0, p0, 0x1c

    rem-int/lit8 v2, p0, 0x15

    div-int/lit8 p0, p0, 0x15

    sget-object v3, Lcom/kakao/sdk/friend/core/k/q;->b:[C

    aget-char p0, v3, p0

    invoke-static {p0}, Lcom/kakao/sdk/friend/core/k/q;->b(C)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p0, Lcom/kakao/sdk/friend/core/k/q;->c:[C

    aget-char p0, p0, v2

    invoke-static {p0}, Lcom/kakao/sdk/friend/core/k/q;->b(C)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-lez v1, :cond_1

    sget-object p0, Lcom/kakao/sdk/friend/core/k/q;->d:[C

    aget-char p0, p0, v1

    invoke-static {p0}, Lcom/kakao/sdk/friend/core/k/q;->b(C)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 59
    :cond_1
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "sb.toString()"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static final a(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7

    const-string v0, "filterKeyword"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "search"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lkotlin/text/Regex;

    const-string v1, "\\s"

    invoke-direct {v0, v1}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    const-string v2, ""

    invoke-virtual {v0, p0, v2}, Lkotlin/text/Regex;->replace(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    const-string v3, "getDefault()"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v0, "toLowerCase(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v4, Lkotlin/text/Regex;

    invoke-direct {v4, v1}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1, v2}, Lkotlin/text/Regex;->replace(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz p0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 69
    :cond_0
    invoke-static {p0}, Lcom/kakao/sdk/friend/core/k/q;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {v6, p1, v5, v2, v1}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v6

    goto :goto_2

    :cond_1
    :goto_0
    if-eqz p0, :cond_2

    goto :goto_1

    :cond_2
    if-ne p1, p0, :cond_3

    :goto_1
    move v6, v4

    goto :goto_2

    :cond_3
    move v6, v5

    :goto_2
    if-eqz v6, :cond_4

    goto/16 :goto_7

    .line 79
    :cond_4
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v6

    invoke-static {v6, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v6}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, v3, v5, v2, v1}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_7

    :cond_5
    invoke-static {p0, p1}, Lcom/kakao/sdk/friend/core/k/q;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    goto :goto_7

    :cond_6
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    const-string/jumbo v1, "toCharArray(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "s"

    .line 89
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    array-length v1, v0

    move v2, v5

    :goto_3
    if-ge v2, v1, :cond_a

    aget-char v3, v0, v2

    const/16 v6, 0x3041

    if-gt v6, v3, :cond_7

    const/16 v6, 0x30f7

    if-ge v3, v6, :cond_7

    goto :goto_4

    :cond_7
    const v6, 0xff61

    if-gt v6, v3, :cond_8

    const v6, 0xffa0

    if-ge v3, v6, :cond_8

    :goto_4
    move v3, v4

    goto :goto_5

    :cond_8
    move v3, v5

    :goto_5
    if-eqz v3, :cond_9

    goto :goto_6

    :cond_9
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_a
    move v4, v5

    :goto_6
    if-eqz v4, :cond_b

    .line 99
    invoke-static {p1}, Lcom/kakao/sdk/friend/core/k/q;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0}, Lcom/kakao/sdk/friend/core/k/q;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lorg/apache/commons/lang3/StringUtils;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    goto :goto_7

    :cond_b
    move v4, v5

    :goto_7
    return v4

    nop

    .array-data 1
    .end array-data
.end method

.method public static b(C)Ljava/lang/String;
    .locals 1

    const/16 v0, 0x3158

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/16 v0, 0x3159

    if-ne p0, v0, :cond_1

    :goto_0
    const-string/jumbo p0, "\u3157\u314f"

    goto/16 :goto_1

    :cond_1
    const/16 v0, 0x315a

    if-ne p0, v0, :cond_2

    const-string/jumbo p0, "\u3157\u3163"

    goto/16 :goto_1

    :cond_2
    const/16 v0, 0x315d

    if-ne p0, v0, :cond_3

    const-string/jumbo p0, "\u315c\u3153"

    goto/16 :goto_1

    :cond_3
    const/16 v0, 0x315e

    if-ne p0, v0, :cond_4

    const-string/jumbo p0, "\u315c\u3154"

    goto/16 :goto_1

    :cond_4
    const/16 v0, 0x315f

    if-ne p0, v0, :cond_5

    const-string/jumbo p0, "\u315c\u3163"

    goto/16 :goto_1

    :cond_5
    const/16 v0, 0x3162

    if-ne p0, v0, :cond_6

    const-string/jumbo p0, "\u3161\u3163"

    goto/16 :goto_1

    :cond_6
    const/16 v0, 0x3132

    if-ne p0, v0, :cond_7

    const-string/jumbo p0, "\u3131\u3131"

    goto/16 :goto_1

    :cond_7
    const/16 v0, 0x3133

    if-ne p0, v0, :cond_8

    const-string/jumbo p0, "\u3131\u3145"

    goto/16 :goto_1

    :cond_8
    const/16 v0, 0x3135

    if-ne p0, v0, :cond_9

    const-string/jumbo p0, "\u3134\u3148"

    goto/16 :goto_1

    :cond_9
    const/16 v0, 0x3136

    if-ne p0, v0, :cond_a

    const-string/jumbo p0, "\u3134\u314e"

    goto :goto_1

    :cond_a
    const/16 v0, 0x3138

    if-ne p0, v0, :cond_b

    const-string/jumbo p0, "\u3137\u3137"

    goto :goto_1

    :cond_b
    const/16 v0, 0x313a

    if-ne p0, v0, :cond_c

    const-string/jumbo p0, "\u3139\u3131"

    goto :goto_1

    :cond_c
    const/16 v0, 0x313b

    if-ne p0, v0, :cond_d

    const-string/jumbo p0, "\u3139\u3141"

    goto :goto_1

    :cond_d
    const/16 v0, 0x313c

    if-ne p0, v0, :cond_e

    const-string/jumbo p0, "\u3139\u3142"

    goto :goto_1

    :cond_e
    const/16 v0, 0x313d

    if-ne p0, v0, :cond_f

    const-string/jumbo p0, "\u3139\u3145"

    goto :goto_1

    :cond_f
    const/16 v0, 0x313e

    if-ne p0, v0, :cond_10

    const-string/jumbo p0, "\u3139\u314c"

    goto :goto_1

    :cond_10
    const/16 v0, 0x313f

    if-ne p0, v0, :cond_11

    const-string/jumbo p0, "\u3139\u314d"

    goto :goto_1

    :cond_11
    const/16 v0, 0x3140

    if-ne p0, v0, :cond_12

    const-string/jumbo p0, "\u3139\u314e"

    goto :goto_1

    :cond_12
    const/16 v0, 0x3143

    if-ne p0, v0, :cond_13

    const-string/jumbo p0, "\u3142\u3142"

    goto :goto_1

    :cond_13
    const/16 v0, 0x3144

    if-ne p0, v0, :cond_14

    const-string/jumbo p0, "\u3142\u3145"

    goto :goto_1

    :cond_14
    const/16 v0, 0x3146

    if-ne p0, v0, :cond_15

    const-string/jumbo p0, "\u3145\u3145"

    goto :goto_1

    :cond_15
    const/16 v0, 0x3149

    if-ne p0, v0, :cond_16

    const-string/jumbo p0, "\u3148\u3148"

    goto :goto_1

    .line 39
    :cond_16
    invoke-static {p0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object p0

    :goto_1
    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static final b(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_2

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const v3, 0xac00

    if-gt v3, v2, :cond_1

    const v4, 0xd7a4

    if-ge v2, v4, :cond_1

    if-gt v3, v2, :cond_1

    if-ge v2, v4, :cond_1

    sub-int/2addr v2, v3

    .line 19
    div-int/lit16 v2, v2, 0x24c

    sget-object v3, Lcom/kakao/sdk/friend/core/k/q;->b:[C

    aget-char v2, v3, v2

    .line 29
    :cond_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .array-data 1
    .end array-data
.end method

.method public static final b(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string/jumbo v2, "value"

    .line 49
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "search"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static/range {p0 .. p0}, Lcom/kakao/sdk/friend/core/k/q;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static/range {p1 .. p1}, Lcom/kakao/sdk/friend/core/k/q;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    if-eqz v2, :cond_8

    if-nez v9, :cond_0

    goto/16 :goto_3

    :cond_0
    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-static {v2, v9, v10, v3, v4}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    return v10

    :cond_1
    move v5, v10

    :cond_2
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v4

    sub-int/2addr v3, v4

    if-gt v5, v3, :cond_8

    const/4 v6, 0x0

    const/4 v7, 0x4

    const/4 v8, 0x0

    move-object v3, v2

    move-object v4, v9

    invoke-static/range {v3 .. v8}, Lkotlin/text/StringsKt;->indexOf$default(Ljava/lang/CharSequence;Ljava/lang/String;IZILjava/lang/Object;)I

    move-result v3

    if-gez v3, :cond_3

    return v10

    :cond_3
    add-int/lit8 v5, v3, 0x1

    move v4, v10

    :goto_0
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v6

    const/4 v7, 0x1

    if-ge v4, v6, :cond_7

    add-int v6, v3, v4

    invoke-virtual {v2, v6}, Ljava/lang/String;->charAt(I)C

    move-result v8

    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v11

    if-ne v8, v11, :cond_4

    goto :goto_2

    :cond_4
    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v8

    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v11

    if-ne v8, v11, :cond_5

    goto :goto_2

    :cond_5
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v8

    sub-int/2addr v8, v7

    if-ne v4, v8, :cond_7

    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v8

    invoke-static {v8}, Lcom/kakao/sdk/friend/core/k/q;->a(C)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v8

    invoke-static {v8}, Lcom/kakao/sdk/friend/core/k/q;->a(C)Ljava/lang/String;

    move-result-object v8

    add-int/lit8 v6, v6, 0x1

    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v11

    if-ge v6, v11, :cond_6

    invoke-virtual {v2, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object v11, v6

    goto :goto_1

    :cond_6
    move-object v11, v8

    :goto_1
    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x6

    const/16 v16, 0x0

    invoke-static/range {v11 .. v16}, Lkotlin/text/StringsKt;->indexOf$default(Ljava/lang/CharSequence;Ljava/lang/String;IZILjava/lang/Object;)I

    move-result v6

    if-nez v6, :cond_7

    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_7
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v3

    if-ne v4, v3, :cond_2

    return v7

    :cond_8
    :goto_3
    return v10

    .array-data 1
    .end array-data
.end method

.method public static c(C)I
    .locals 2

    .line 29
    sget-object v0, Lcom/kakao/sdk/friend/core/k/q;->b:[C

    invoke-static {v0, p0}, Ljava/util/Arrays;->binarySearch([CC)I

    move-result v0

    const/4 v1, -0x1

    if-le v0, v1, :cond_0

    const/4 p0, 0x1

    goto/16 :goto_3

    .line 39
    :cond_0
    sget-object v0, Lcom/kakao/sdk/friend/core/k/q;->f:[C

    invoke-static {v0, p0}, Ljava/util/Arrays;->binarySearch([CC)I

    move-result v0

    if-gt v0, v1, :cond_b

    const/16 v0, 0xc0

    if-gt v0, p0, :cond_1

    const/16 v0, 0x250

    if-ge p0, v0, :cond_1

    sget-object v0, Lcom/kakao/sdk/friend/core/k/q;->a:[C

    invoke-static {v0, p0}, Lorg/apache/commons/lang3/ArrayUtils;->contains([CC)Z

    move-result v0

    if-eqz v0, :cond_b

    :cond_1
    const/16 v0, 0x1e00

    if-gt v0, p0, :cond_2

    const/16 v0, 0x1f00

    if-ge p0, v0, :cond_2

    goto :goto_2

    .line 49
    :cond_2
    sget-object v0, Lcom/kakao/sdk/friend/core/k/q;->g:[C

    invoke-static {v0, p0}, Ljava/util/Arrays;->binarySearch([CC)I

    move-result v0

    if-le v0, v1, :cond_3

    const/16 p0, 0x8

    goto :goto_3

    .line 59
    :cond_3
    sget-object v0, Lcom/kakao/sdk/friend/core/k/q;->e:[C

    invoke-static {v0, p0}, Ljava/util/Arrays;->binarySearch([CC)I

    move-result v0

    if-le v0, v1, :cond_4

    const/4 p0, 0x2

    goto :goto_3

    :cond_4
    const/16 v0, 0x400

    if-gt v0, p0, :cond_5

    const/16 v0, 0x530

    if-ge p0, v0, :cond_5

    const/4 p0, 0x4

    goto :goto_3

    :cond_5
    const/16 v0, 0xe01

    if-gt v0, p0, :cond_6

    const/16 v0, 0xe5c

    if-ge p0, v0, :cond_6

    const/4 p0, 0x5

    goto :goto_3

    :cond_6
    const/16 v0, 0x600

    if-gt v0, p0, :cond_7

    const/16 v0, 0x700

    if-ge p0, v0, :cond_7

    goto :goto_0

    :cond_7
    const/16 v0, 0x750

    if-gt v0, p0, :cond_8

    const/16 v0, 0x780

    if-ge p0, v0, :cond_8

    :goto_0
    const/4 p0, 0x6

    goto :goto_3

    :cond_8
    const/16 v0, 0x4e00

    if-gt v0, p0, :cond_9

    const v0, 0xa000

    if-ge p0, v0, :cond_9

    goto :goto_1

    :cond_9
    const/16 v0, 0x3400

    if-gt v0, p0, :cond_a

    const/16 v0, 0x4dc0

    if-ge p0, v0, :cond_a

    :goto_1
    const/4 p0, 0x7

    goto :goto_3

    :cond_a
    const/16 p0, 0x9

    goto :goto_3

    :cond_b
    :goto_2
    const/4 p0, 0x3

    :goto_3
    return p0

    .array-data 1
    .end array-data
.end method

.method public static final c(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    const-string v0, "s"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x3041

    if-gt v4, v3, :cond_1

    const/16 v4, 0x30a0

    if-ge v3, v4, :cond_1

    .line 19
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    add-int/lit8 v3, v3, 0x60

    int-to-char v3, v3

    goto :goto_1

    :cond_1
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    :goto_1
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "StringBuilder().apply {\n\u2026   }\n        }.toString()"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    .array-data 1
    .end array-data
.end method
