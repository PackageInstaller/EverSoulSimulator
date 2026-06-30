.class public Lorg/apache/commons/lang3/text/translate/JavaUnicodeEscaper;
.super Lorg/apache/commons/lang3/text/translate/UnicodeEscaper;
.source "JavaUnicodeEscaper.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public constructor <init>(IIZ)V
    .locals 0

    .line 1019
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/commons/lang3/text/translate/UnicodeEscaper;-><init>(IIZ)V

    return-void

    .array-data 1
    .end array-data
.end method

.method public static above(I)Lorg/apache/commons/lang3/text/translate/JavaUnicodeEscaper;
    .locals 1

    const/4 v0, 0x0

    .line 409
    invoke-static {v0, p0}, Lorg/apache/commons/lang3/text/translate/JavaUnicodeEscaper;->outsideOf(II)Lorg/apache/commons/lang3/text/translate/JavaUnicodeEscaper;

    move-result-object p0

    return-object p0

    .array-data 1
    .end array-data
.end method

.method public static below(I)Lorg/apache/commons/lang3/text/translate/JavaUnicodeEscaper;
    .locals 1

    const v0, 0x7fffffff

    .line 539
    invoke-static {p0, v0}, Lorg/apache/commons/lang3/text/translate/JavaUnicodeEscaper;->outsideOf(II)Lorg/apache/commons/lang3/text/translate/JavaUnicodeEscaper;

    move-result-object p0

    return-object p0

    .array-data 1
    .end array-data
.end method

.method public static between(II)Lorg/apache/commons/lang3/text/translate/JavaUnicodeEscaper;
    .locals 2

    .line 689
    new-instance v0, Lorg/apache/commons/lang3/text/translate/JavaUnicodeEscaper;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, v1}, Lorg/apache/commons/lang3/text/translate/JavaUnicodeEscaper;-><init>(IIZ)V

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public static outsideOf(II)Lorg/apache/commons/lang3/text/translate/JavaUnicodeEscaper;
    .locals 2

    .line 839
    new-instance v0, Lorg/apache/commons/lang3/text/translate/JavaUnicodeEscaper;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lorg/apache/commons/lang3/text/translate/JavaUnicodeEscaper;-><init>(IIZ)V

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method


# virtual methods
.method protected toUtf16Escape(I)Ljava/lang/String;
    .locals 3

    .line 1139
    invoke-static {p1}, Ljava/lang/Character;->toChars(I)[C

    move-result-object p1

    .line 1149
    new-instance v0, Ljava/lang/StringBuilder;

    const v1, 0x54375a6a

    invoke-static {v1}, Lcom/liapp/y;->׳ֳֳ֬د(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    aget-char v2, p1, v2

    invoke-static {v2}, Lorg/apache/commons/lang3/text/translate/JavaUnicodeEscaper;->hex(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x1

    aget-char p1, p1, v1

    invoke-static {p1}, Lorg/apache/commons/lang3/text/translate/JavaUnicodeEscaper;->hex(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    nop

    .array-data 1
    .end array-data
.end method
