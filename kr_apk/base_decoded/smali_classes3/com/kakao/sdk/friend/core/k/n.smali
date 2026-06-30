.class public final Lcom/kakao/sdk/friend/core/k/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void

    .array-data 1
    .end array-data
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)I
    .locals 4

    if-eqz p0, :cond_0

    .line 19
    invoke-static {p0}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    if-eqz p1, :cond_7

    invoke-static {p1}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_2

    :cond_1
    if-eqz p0, :cond_6

    invoke-static {p0}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    if-eqz p1, :cond_5

    invoke-static {p1}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_0

    :cond_3
    invoke-static {p0}, Lcom/kakao/sdk/friend/core/k/q;->a(Ljava/lang/String;)C

    move-result v0

    invoke-static {p1}, Lcom/kakao/sdk/friend/core/k/q;->a(Ljava/lang/String;)C

    move-result v1

    invoke-static {v0}, Lcom/kakao/sdk/friend/core/k/q;->c(C)I

    move-result v2

    invoke-static {v1}, Lcom/kakao/sdk/friend/core/k/q;->c(C)I

    move-result v3

    sub-int/2addr v2, v3

    if-nez v2, :cond_4

    sub-int v2, v0, v1

    if-nez v2, :cond_4

    invoke-virtual {p0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p0

    return p0

    :cond_4
    return v2

    :cond_5
    :goto_0
    const/4 p0, -0x1

    return p0

    :cond_6
    :goto_1
    const/4 p0, 0x1

    return p0

    :cond_7
    :goto_2
    const/4 p0, 0x0

    return p0

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    if-nez p1, :cond_1

    if-nez p2, :cond_0

    const/4 p1, 0x0

    .line 19
    invoke-static {p1, p1}, Lcom/kakao/sdk/friend/core/k/n;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1

    .line 29
    :cond_0
    new-instance p1, Ljava/lang/ClassCastException;

    invoke-direct {p1}, Ljava/lang/ClassCastException;-><init>()V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/ClassCastException;

    invoke-direct {p1}, Ljava/lang/ClassCastException;-><init>()V

    throw p1

    .array-data 1
    .end array-data
.end method
