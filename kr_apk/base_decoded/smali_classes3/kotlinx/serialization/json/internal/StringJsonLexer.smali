.class public final Lkotlinx/serialization/json/internal/StringJsonLexer;
.super Lkotlinx/serialization/json/internal/AbstractJsonLexer;
.source "StringJsonLexer.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nStringJsonLexer.kt\nKotlin\n*S Kotlin\n*F\n+ 1 StringJsonLexer.kt\nkotlinx/serialization/json/internal/StringJsonLexer\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,127:1\n1855#2,2:128\n*S KotlinDebug\n*F\n+ 1 StringJsonLexer.kt\nkotlinx/serialization/json/internal/StringJsonLexer\n*L\n107#1:128,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000c\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0008\n\u0002\u0008\u0004\u0008\u0000\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0008\u0010\u0007\u001a\u00020\u0008H\u0016J\u0008\u0010\t\u001a\u00020\u0003H\u0016J\u0008\u0010\n\u001a\u00020\u000bH\u0016J\u0010\u0010\n\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000eH\u0016J3\u0010\u000f\u001a\u00020\u000c2\u0006\u0010\u0010\u001a\u00020\u00082!\u0010\u0011\u001a\u001d\u0012\u0013\u0012\u00110\u0003\u00a2\u0006\u000c\u0008\u0013\u0012\u0008\u0008\u0014\u0012\u0004\u0008\u0008(\u0015\u0012\u0004\u0012\u00020\u000c0\u0012H\u0016J\u001a\u0010\u0016\u001a\u0004\u0018\u00010\u00032\u0006\u0010\u0017\u001a\u00020\u00032\u0006\u0010\u0010\u001a\u00020\u0008H\u0016J\u0010\u0010\u0018\u001a\u00020\u00192\u0006\u0010\u001a\u001a\u00020\u0019H\u0016J\u0008\u0010\u001b\u001a\u00020\u0019H\u0016J\u0008\u0010\u001c\u001a\u00020\u0008H\u0016R\u0014\u0010\u0002\u001a\u00020\u0003X\u0094\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\u00a8\u0006\u001d"
    }
    d2 = {
        "Lkotlinx/serialization/json/internal/StringJsonLexer;",
        "Lkotlinx/serialization/json/internal/AbstractJsonLexer;",
        "source",
        "",
        "(Ljava/lang/String;)V",
        "getSource",
        "()Ljava/lang/String;",
        "canConsumeValue",
        "",
        "consumeKeyString",
        "consumeNextToken",
        "",
        "",
        "expected",
        "",
        "consumeStringChunked",
        "isLenient",
        "consumeChunk",
        "Lkotlin/Function1;",
        "Lkotlin/ParameterName;",
        "name",
        "stringChunk",
        "peekLeadingMatchingValue",
        "keyToMatch",
        "prefetchOrEof",
        "",
        "position",
        "skipWhitespaces",
        "tryConsumeComma",
        "kotlinx-serialization-json"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final source:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const-string v0, "source"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    invoke-direct {p0}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;-><init>()V

    iput-object p1, p0, Lkotlinx/serialization/json/internal/StringJsonLexer;->source:Ljava/lang/String;

    return-void

    nop

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public canConsumeValue()Z
    .locals 4

    .line 34
    iget v0, p0, Lkotlinx/serialization/json/internal/StringJsonLexer;->currentPosition:I

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    return v2

    .line 36
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/StringJsonLexer;->getSource()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 37
    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/StringJsonLexer;->getSource()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v3, 0x20

    if-eq v1, v3, :cond_2

    const/16 v3, 0xa

    if-eq v1, v3, :cond_2

    const/16 v3, 0xd

    if-eq v1, v3, :cond_2

    const/16 v3, 0x9

    if-ne v1, v3, :cond_1

    goto :goto_1

    .line 43
    :cond_1
    iput v0, p0, Lkotlinx/serialization/json/internal/StringJsonLexer;->currentPosition:I

    .line 44
    invoke-virtual {p0, v1}, Lkotlinx/serialization/json/internal/StringJsonLexer;->isValidValueStart(C)Z

    move-result v0

    return v0

    :cond_2
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 46
    :cond_3
    iput v0, p0, Lkotlinx/serialization/json/internal/StringJsonLexer;->currentPosition:I

    return v2

    nop

    .array-data 1
    .end array-data
.end method

.method public consumeKeyString()Ljava/lang/String;
    .locals 7

    const/16 v0, 0x22

    .line 86
    invoke-virtual {p0, v0}, Lkotlinx/serialization/json/internal/StringJsonLexer;->consumeNextToken(C)V

    .line 87
    iget v0, p0, Lkotlinx/serialization/json/internal/StringJsonLexer;->currentPosition:I

    .line 88
    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/StringJsonLexer;->getSource()Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    const/16 v2, 0x22

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    move v3, v0

    invoke-static/range {v1 .. v6}, Lkotlin/text/StringsKt;->indexOf$default(Ljava/lang/CharSequence;CIZILjava/lang/Object;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_2

    move v2, v0

    :goto_0
    if-ge v2, v1, :cond_1

    .line 98
    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/StringJsonLexer;->getSource()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x5c

    if-ne v3, v4, :cond_0

    .line 99
    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/StringJsonLexer;->getSource()Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    iget v1, p0, Lkotlinx/serialization/json/internal/StringJsonLexer;->currentPosition:I

    invoke-virtual {p0, v0, v1, v2}, Lkotlinx/serialization/json/internal/StringJsonLexer;->consumeString(Ljava/lang/CharSequence;II)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    add-int/lit8 v2, v1, 0x1

    .line 102
    iput v2, p0, Lkotlinx/serialization/json/internal/StringJsonLexer;->currentPosition:I

    .line 103
    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/StringJsonLexer;->getSource()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const-string v1, "substring(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0

    .line 92
    :cond_2
    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/StringJsonLexer;->consumeStringLenient()Ljava/lang/String;

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 93
    invoke-virtual {p0, v1, v0}, Lkotlinx/serialization/json/internal/StringJsonLexer;->fail$kotlinx_serialization_json(BZ)Ljava/lang/Void;

    new-instance v0, Lkotlin/KotlinNothingValueException;

    invoke-direct {v0}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw v0

    nop

    .array-data 1
    .end array-data
.end method

.method public consumeNextToken()B
    .locals 3

    .line 12
    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/StringJsonLexer;->getSource()Ljava/lang/String;

    move-result-object v0

    .line 13
    :cond_0
    iget v1, p0, Lkotlinx/serialization/json/internal/StringJsonLexer;->currentPosition:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    iget v1, p0, Lkotlinx/serialization/json/internal/StringJsonLexer;->currentPosition:I

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 14
    iget v1, p0, Lkotlinx/serialization/json/internal/StringJsonLexer;->currentPosition:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lkotlinx/serialization/json/internal/StringJsonLexer;->currentPosition:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 15
    invoke-static {v1}, Lkotlinx/serialization/json/internal/AbstractJsonLexerKt;->charToTokenClass(C)B

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    return v1

    :cond_1
    const/16 v0, 0xa

    return v0

    .array-data 1
    .end array-data
.end method

.method public consumeNextToken(C)V
    .locals 4

    .line 68
    iget v0, p0, Lkotlinx/serialization/json/internal/StringJsonLexer;->currentPosition:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0, p1}, Lkotlinx/serialization/json/internal/StringJsonLexer;->unexpectedToken(C)V

    .line 69
    :cond_0
    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/StringJsonLexer;->getSource()Ljava/lang/String;

    move-result-object v0

    .line 70
    :cond_1
    :goto_0
    iget v2, p0, Lkotlinx/serialization/json/internal/StringJsonLexer;->currentPosition:I

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_4

    .line 71
    iget v2, p0, Lkotlinx/serialization/json/internal/StringJsonLexer;->currentPosition:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lkotlinx/serialization/json/internal/StringJsonLexer;->currentPosition:I

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x20

    if-eq v2, v3, :cond_1

    const/16 v3, 0xa

    if-eq v2, v3, :cond_1

    const/16 v3, 0xd

    if-eq v2, v3, :cond_1

    const/16 v3, 0x9

    if-ne v2, v3, :cond_2

    goto :goto_0

    :cond_2
    if-ne v2, p1, :cond_3

    return-void

    .line 74
    :cond_3
    invoke-virtual {p0, p1}, Lkotlinx/serialization/json/internal/StringJsonLexer;->unexpectedToken(C)V

    goto :goto_0

    .line 76
    :cond_4
    iput v1, p0, Lkotlinx/serialization/json/internal/StringJsonLexer;->currentPosition:I

    .line 77
    invoke-virtual {p0, p1}, Lkotlinx/serialization/json/internal/StringJsonLexer;->unexpectedToken(C)V

    return-void

    .array-data 1
    .end array-data
.end method

.method public consumeStringChunked(ZLkotlin/jvm/functions/Function1;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "consumeChunk"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 107
    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/StringJsonLexer;->consumeStringLenient()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/StringJsonLexer;->consumeString()Ljava/lang/String;

    move-result-object p1

    :goto_0
    check-cast p1, Ljava/lang/CharSequence;

    const/16 v0, 0x4000

    invoke-static {p1, v0}, Lkotlin/text/StringsKt;->chunked(Ljava/lang/CharSequence;I)Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    .line 128
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p2, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_1
    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public bridge synthetic getSource()Ljava/lang/CharSequence;
    .locals 1

    .line 7
    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/StringJsonLexer;->getSource()Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method protected getSource()Ljava/lang/String;
    .locals 1

    .line 7
    iget-object v0, p0, Lkotlinx/serialization/json/internal/StringJsonLexer;->source:Ljava/lang/String;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public peekLeadingMatchingValue(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 4

    const-string v0, "keyToMatch"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 111
    iget v0, p0, Lkotlinx/serialization/json/internal/StringJsonLexer;->currentPosition:I

    .line 113
    :try_start_0
    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/StringJsonLexer;->consumeNextToken()B

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x6

    const/4 v3, 0x0

    if-eq v1, v2, :cond_0

    .line 121
    :goto_0
    iput v0, p0, Lkotlinx/serialization/json/internal/StringJsonLexer;->currentPosition:I

    .line 122
    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/StringJsonLexer;->discardPeeked()V

    return-object v3

    .line 114
    :cond_0
    :try_start_1
    invoke-virtual {p0, p2}, Lkotlinx/serialization/json/internal/StringJsonLexer;->peekString(Z)Ljava/lang/String;

    move-result-object v1

    .line 115
    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    .line 116
    :cond_1
    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/StringJsonLexer;->discardPeeked()V

    .line 117
    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/StringJsonLexer;->consumeNextToken()B

    move-result p1

    const/4 v1, 0x5

    if-eq p1, v1, :cond_2

    goto :goto_0

    .line 118
    :cond_2
    invoke-virtual {p0, p2}, Lkotlinx/serialization/json/internal/StringJsonLexer;->peekString(Z)Ljava/lang/String;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 121
    iput v0, p0, Lkotlinx/serialization/json/internal/StringJsonLexer;->currentPosition:I

    .line 122
    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/StringJsonLexer;->discardPeeked()V

    return-object p1

    :catchall_0
    move-exception p1

    .line 121
    iput v0, p0, Lkotlinx/serialization/json/internal/StringJsonLexer;->currentPosition:I

    .line 122
    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/StringJsonLexer;->discardPeeked()V

    throw p1

    .array-data 1
    .end array-data
.end method

.method public prefetchOrEof(I)I
    .locals 1

    .line 9
    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/StringJsonLexer;->getSource()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    :goto_0
    return p1

    nop

    .array-data 1
    .end array-data
.end method

.method public skipWhitespaces()I
    .locals 3

    .line 51
    iget v0, p0, Lkotlinx/serialization/json/internal/StringJsonLexer;->currentPosition:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    return v0

    .line 54
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/StringJsonLexer;->getSource()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 55
    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/StringJsonLexer;->getSource()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x20

    if-eq v1, v2, :cond_1

    const/16 v2, 0xa

    if-eq v1, v2, :cond_1

    const/16 v2, 0xd

    if-eq v1, v2, :cond_1

    const/16 v2, 0x9

    if-ne v1, v2, :cond_2

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 63
    :cond_2
    iput v0, p0, Lkotlinx/serialization/json/internal/StringJsonLexer;->currentPosition:I

    return v0

    .array-data 1
    .end array-data
.end method

.method public tryConsumeComma()Z
    .locals 3

    .line 24
    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/StringJsonLexer;->skipWhitespaces()I

    move-result v0

    .line 25
    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/StringJsonLexer;->getSource()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_1

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 26
    :cond_0
    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/StringJsonLexer;->getSource()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x2c

    if-ne v0, v1, :cond_1

    .line 27
    iget v0, p0, Lkotlinx/serialization/json/internal/StringJsonLexer;->currentPosition:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lkotlinx/serialization/json/internal/StringJsonLexer;->currentPosition:I

    iget v0, p0, Lkotlinx/serialization/json/internal/StringJsonLexer;->currentPosition:I

    return v1

    :cond_1
    :goto_0
    return v2

    nop

    .array-data 1
    .end array-data
.end method
