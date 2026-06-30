.class public Lcom/liapp/p;
.super Ljava/lang/Object;
.source "\u06b1\u06ef\u076c\u072c\u07a8.java"


# direct methods
.method public static ۱٬ڱܯޫ(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    new-array v2, v1, [C

    add-int/lit8 v1, v1, -0x1

    const/16 v3, 0x6f

    :goto_0
    if-ltz v1, :cond_0

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    xor-int/2addr v4, v3

    int-to-char v4, v4

    xor-int/2addr v3, v1

    int-to-char v3, v3

    and-int/lit8 v3, v3, 0x3f

    int-to-char v3, v3

    aput-char v4, v2, v1

    add-int/lit8 v1, v1, -0x1

    if-ltz v1, :cond_0

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    xor-int/2addr v4, v3

    int-to-char v4, v4

    xor-int/2addr v3, v1

    int-to-char v3, v3

    and-int/lit8 v3, v3, 0x3f

    int-to-char v3, v3

    aput-char v4, v2, v1

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_0
    invoke-direct {v0, v2}, Ljava/lang/String;-><init>([C)V

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public static ݱزݴڭܩ(Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    new-instance v0, Ljava/lang/LinkageError;

    invoke-direct {v0}, Ljava/lang/LinkageError;-><init>()V

    invoke-virtual {v0}, Ljava/lang/LinkageError;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    const/4 v1, 0x1

    aget-object v0, v0, v1

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v2, v1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    new-array v4, v3, [C

    sub-int/2addr v3, v1

    const/16 v1, 0x6f

    move v5, v2

    :goto_0
    if-gez v3, :cond_0

    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v4}, Ljava/lang/String;-><init>([C)V

    return-object p0

    :cond_0
    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v7

    xor-int/2addr v7, v1

    xor-int/2addr v7, v6

    int-to-char v7, v7

    aput-char v7, v4, v3

    xor-int/2addr v6, v3

    xor-int/2addr v1, v6

    and-int/lit8 v1, v1, 0x3f

    int-to-char v1, v1

    add-int/lit8 v5, v5, -0x1

    if-gez v5, :cond_1

    move v5, v2

    :cond_1
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .array-data 1
    .end array-data
.end method
