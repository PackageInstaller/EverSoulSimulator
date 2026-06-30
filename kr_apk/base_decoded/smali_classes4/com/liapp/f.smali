.class public final Lcom/liapp/f;
.super Ljava/lang/Object;
.source "\u0632\u05ee\u05b1\u06ac\u0728.java"


# instance fields
.field private ׯڳ׮ڭܩ:I

.field private final جڳڴڮܪ:I

.field private گٱܱڬܨ:I

.field private final ڲحز׳ٯ:Ljava/lang/String;

.field private ۲ܭׯײٮ:[C

.field private ܬڱ״۳ݯ:I

.field private ܳ׭֮׳ٯ:I


# direct methods
.method public constructor <init>(Ljavax/security/auth/x500/X500Principal;)V
    .locals 1

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    const-string v0, "zoh\u001a\u001e\u001c\\"

    invoke-static {v0}, Lcom/liapp/p;->۱٬ڱܯޫ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljavax/security/auth/x500/X500Principal;->getName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/liapp/f;->ڲحز׳ٯ:Ljava/lang/String;

    .line 45
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    iput p1, p0, Lcom/liapp/f;->جڳڴڮܪ:I

    .line 46
    return-void

    .array-data 1
    .end array-data
.end method

.method private synthetic حٲݭڳܯ()Ljava/lang/String;
    .locals 7

    .line 123
    iget v0, p0, Lcom/liapp/f;->ܬڱ״۳ݯ:I

    add-int/lit8 v1, v0, 0x4

    iget v2, p0, Lcom/liapp/f;->جڳڴڮܪ:I

    const-string v3, "{AHVZJJZCK\u0005KLK\u0001AX\u000fy`\u0000O"

    const/4 v4, 0x0

    if-ge v1, v2, :cond_7

    .line 127
    iput v0, p0, Lcom/liapp/f;->ׯڳ׮ڭܩ:I

    .line 128
    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/liapp/f;->ܬڱ״۳ݯ:I

    .line 132
    :goto_0
    iget v0, p0, Lcom/liapp/f;->ܬڱ״۳ݯ:I

    iget v1, p0, Lcom/liapp/f;->جڳڴڮܪ:I

    if-eq v0, v1, :cond_4

    iget-object v1, p0, Lcom/liapp/f;->۲ܭׯײٮ:[C

    aget-char v2, v1, v0

    const/16 v5, 0x2b

    if-eq v2, v5, :cond_4

    aget-char v2, v1, v0

    const/16 v5, 0x2c

    if-eq v2, v5, :cond_4

    aget-char v2, v1, v0

    const/16 v5, 0x3b

    if-ne v2, v5, :cond_0

    goto :goto_2

    .line 137
    :cond_0
    aget-char v2, v1, v0

    const/16 v5, 0x20

    if-ne v2, v5, :cond_2

    .line 138
    iput v0, p0, Lcom/liapp/f;->ܳ׭֮׳ٯ:I

    .line 139
    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/liapp/f;->ܬڱ״۳ݯ:I

    .line 142
    :goto_1
    iget v0, p0, Lcom/liapp/f;->ܬڱ״۳ݯ:I

    iget v1, p0, Lcom/liapp/f;->جڳڴڮܪ:I

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/liapp/f;->۲ܭׯײٮ:[C

    aget-char v1, v1, v0

    if-ne v1, v5, :cond_1

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/liapp/f;->ܬڱ״۳ݯ:I

    goto :goto_1

    .line 152
    :cond_1
    goto :goto_3

    .line 145
    :cond_2
    aget-char v2, v1, v0

    const/16 v6, 0x41

    if-lt v2, v6, :cond_3

    aget-char v2, v1, v0

    const/16 v6, 0x46

    if-gt v2, v6, :cond_3

    .line 146
    aget-char v2, v1, v0

    add-int/2addr v2, v5

    int-to-char v2, v2

    aput-char v2, v1, v0

    .line 148
    :cond_3
    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/liapp/f;->ܬڱ״۳ݯ:I

    goto :goto_0

    .line 134
    :cond_4
    :goto_2
    iput v0, p0, Lcom/liapp/f;->ܳ׭֮׳ٯ:I

    .line 135
    nop

    .line 152
    :goto_3
    iget v0, p0, Lcom/liapp/f;->ܳ׭֮׳ٯ:I

    iget v1, p0, Lcom/liapp/f;->ׯڳ׮ڭܩ:I

    sub-int/2addr v0, v1

    .line 153
    const/4 v2, 0x5

    if-lt v0, v2, :cond_6

    and-int/lit8 v2, v0, 0x1

    if-eqz v2, :cond_6

    .line 157
    div-int/lit8 v2, v0, 0x2

    new-array v3, v2, [B

    .line 158
    add-int/lit8 v1, v1, 0x1

    :goto_4
    if-ge v4, v2, :cond_5

    .line 159
    invoke-direct {p0, v1}, Lcom/liapp/f;->۱٬ڱܯޫ(I)I

    move-result v5

    int-to-byte v5, v5

    add-int/lit8 v1, v1, 0x2

    aput-byte v5, v3, v4

    .line 158
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 161
    :cond_5
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/liapp/f;->۲ܭׯײٮ:[C

    iget v3, p0, Lcom/liapp/f;->ׯڳ׮ڭܩ:I

    invoke-direct {v1, v2, v3, v0}, Ljava/lang/String;-><init>([CII)V

    return-object v1

    .line 154
    :cond_6
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v3}, Lcom/liapp/p;->۱٬ڱܯޫ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v4, v2}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/liapp/f;->ڲحز׳ٯ:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 125
    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v3}, Lcom/liapp/p;->۱٬ڱܯޫ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v4, v2}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/liapp/f;->ڲحز׳ٯ:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto :goto_6

    :goto_5
    throw v0

    :goto_6
    goto :goto_5

    .array-data 1
    .end array-data
.end method

.method private synthetic ۱٬ڱܯޫ()C
    .locals 4

    .line 206
    iget v0, p0, Lcom/liapp/f;->ܬڱ״۳ݯ:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/liapp/f;->ܬڱ״۳ݯ:I

    .line 207
    iget v1, p0, Lcom/liapp/f;->جڳڴڮܪ:I

    if-eq v0, v1, :cond_0

    .line 210
    iget-object v1, p0, Lcom/liapp/f;->۲ܭׯײٮ:[C

    aget-char v2, v1, v0

    sparse-switch v2, :sswitch_data_0

    .line 229
    invoke-direct {p0}, Lcom/liapp/f;->ݱزݴڭܩ()C

    move-result v0

    return v0

    .line 225
    :sswitch_0
    aget-char v0, v1, v0

    return v0

    .line 208
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    const-string v3, "{AHVZJJZCK\u0005KLK\u0001AX\u000fy`\u0000O"

    invoke-static {v3}, Lcom/liapp/p;->۱٬ڱܯޫ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/liapp/f;->ڲحز׳ٯ:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_data_0
    .sparse-switch
        0x20 -> :sswitch_0
        0x22 -> :sswitch_0
        0x23 -> :sswitch_0
        0x25 -> :sswitch_0
        0x2a -> :sswitch_0
        0x2b -> :sswitch_0
        0x2c -> :sswitch_0
        0x3b -> :sswitch_0
        0x3c -> :sswitch_0
        0x3d -> :sswitch_0
        0x3e -> :sswitch_0
        0x5c -> :sswitch_0
        0x5f -> :sswitch_0
    .end sparse-switch

    .array-data 1
    .end array-data
.end method

.method private synthetic ۱٬ڱܯޫ(I)I
    .locals 10

    .line 277
    add-int/lit8 v0, p1, 0x1

    iget v1, p0, Lcom/liapp/f;->جڳڴڮܪ:I

    const-string v2, "cNAHE]DKB\u000fa`\u0018O"

    const/4 v3, 0x0

    if-ge v0, v1, :cond_6

    .line 281
    iget-object v1, p0, Lcom/liapp/f;->۲ܭׯײٮ:[C

    aget-char p1, v1, p1

    .line 282
    const/16 v4, 0x46

    const/16 v5, 0x66

    const/16 v6, 0x41

    const/16 v7, 0x39

    const/16 v8, 0x61

    const/16 v9, 0x30

    if-lt p1, v9, :cond_0

    if-gt p1, v7, :cond_0

    .line 283
    sub-int/2addr p1, v9

    goto :goto_0

    .line 284
    :cond_0
    if-lt p1, v8, :cond_1

    if-gt p1, v5, :cond_1

    .line 285
    add-int/lit8 p1, p1, -0x57

    goto :goto_0

    .line 286
    :cond_1
    if-lt p1, v6, :cond_5

    if-gt p1, v4, :cond_5

    .line 287
    add-int/lit8 p1, p1, -0x37

    .line 291
    :goto_0
    aget-char v0, v1, v0

    .line 292
    if-lt v0, v9, :cond_2

    if-gt v0, v7, :cond_2

    .line 293
    sub-int/2addr v0, v9

    goto :goto_1

    .line 294
    :cond_2
    if-lt v0, v8, :cond_3

    if-gt v0, v5, :cond_3

    .line 295
    add-int/lit8 v0, v0, -0x57

    goto :goto_1

    .line 296
    :cond_3
    if-lt v0, v6, :cond_4

    if-gt v0, v4, :cond_4

    .line 297
    add-int/lit8 v0, v0, -0x37

    .line 301
    :goto_1
    shl-int/lit8 p1, p1, 0x4

    add-int/2addr p1, v0

    return p1

    .line 299
    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v2}, Lcom/liapp/p;->۱٬ڱܯޫ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/liapp/f;->ڲحز׳ٯ:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 289
    :cond_5
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v2}, Lcom/liapp/p;->۱٬ڱܯޫ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/liapp/f;->ڲحز׳ٯ:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 278
    :cond_6
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v2}, Lcom/liapp/p;->۱٬ڱܯޫ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/liapp/f;->ڲحز׳ٯ:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    nop

    .array-data 1
    .end array-data
.end method

.method private synthetic ۱٬ڱܯޫ()Ljava/lang/String;
    .locals 4

    .line 95
    iget v0, p0, Lcom/liapp/f;->ܬڱ״۳ݯ:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/liapp/f;->ܬڱ״۳ݯ:I

    .line 96
    iput v0, p0, Lcom/liapp/f;->ׯڳ׮ڭܩ:I

    .line 97
    iput v0, p0, Lcom/liapp/f;->ܳ׭֮׳ٯ:I

    .line 99
    :goto_0
    iget v0, p0, Lcom/liapp/f;->ܬڱ״۳ݯ:I

    iget v1, p0, Lcom/liapp/f;->جڳڴڮܪ:I

    if-eq v0, v1, :cond_3

    .line 102
    iget-object v1, p0, Lcom/liapp/f;->۲ܭׯײٮ:[C

    aget-char v2, v1, v0

    const/16 v3, 0x22

    if-ne v2, v3, :cond_1

    .line 104
    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/liapp/f;->ܬڱ״۳ݯ:I

    .line 105
    nop

    .line 117
    :goto_1
    iget v0, p0, Lcom/liapp/f;->ܬڱ״۳ݯ:I

    iget v1, p0, Lcom/liapp/f;->جڳڴڮܪ:I

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/liapp/f;->۲ܭׯײٮ:[C

    aget-char v1, v1, v0

    const/16 v2, 0x20

    if-ne v1, v2, :cond_0

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/liapp/f;->ܬڱ״۳ݯ:I

    goto :goto_1

    .line 119
    :cond_0
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/liapp/f;->۲ܭׯײٮ:[C

    iget v2, p0, Lcom/liapp/f;->ׯڳ׮ڭܩ:I

    iget v3, p0, Lcom/liapp/f;->ܳ׭֮׳ٯ:I

    sub-int/2addr v3, v2

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    return-object v0

    .line 106
    :cond_1
    aget-char v2, v1, v0

    const/16 v3, 0x5c

    if-ne v2, v3, :cond_2

    .line 107
    iget v0, p0, Lcom/liapp/f;->ܳ׭֮׳ٯ:I

    invoke-direct {p0}, Lcom/liapp/f;->۱٬ڱܯޫ()C

    move-result v2

    aput-char v2, v1, v0

    goto :goto_2

    .line 110
    :cond_2
    iget v2, p0, Lcom/liapp/f;->ܳ׭֮׳ٯ:I

    aget-char v0, v1, v0

    aput-char v0, v1, v2

    .line 112
    :goto_2
    iget v0, p0, Lcom/liapp/f;->ܬڱ״۳ݯ:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/liapp/f;->ܬڱ״۳ݯ:I

    .line 113
    iget v0, p0, Lcom/liapp/f;->ܳ׭֮׳ٯ:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/liapp/f;->ܳ׭֮׳ٯ:I

    goto :goto_0

    .line 100
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    const-string v3, "{AHVZJJZCK\u0005KLK\u0001AX\u000fy`\u0000O"

    invoke-static {v3}, Lcom/liapp/p;->۱٬ڱܯޫ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/liapp/f;->ڲحز׳ٯ:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto :goto_4

    :goto_3
    throw v0

    :goto_4
    goto :goto_3

    .array-data 1
    .end array-data
.end method

.method private synthetic ۴ڴݲٯ۫()Ljava/lang/String;
    .locals 5

    .line 165
    iget v0, p0, Lcom/liapp/f;->ܬڱ״۳ݯ:I

    iput v0, p0, Lcom/liapp/f;->ׯڳ׮ڭܩ:I

    .line 166
    iput v0, p0, Lcom/liapp/f;->ܳ׭֮׳ٯ:I

    .line 168
    :cond_0
    nop

    :goto_0
    iget v0, p0, Lcom/liapp/f;->ܬڱ״۳ݯ:I

    iget v1, p0, Lcom/liapp/f;->جڳڴڮܪ:I

    if-lt v0, v1, :cond_1

    .line 170
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/liapp/f;->۲ܭׯײٮ:[C

    iget v2, p0, Lcom/liapp/f;->ׯڳ׮ڭܩ:I

    iget v3, p0, Lcom/liapp/f;->ܳ׭֮׳ٯ:I

    sub-int/2addr v3, v2

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    return-object v0

    .line 172
    :cond_1
    iget-object v1, p0, Lcom/liapp/f;->۲ܭׯײٮ:[C

    aget-char v2, v1, v0

    sparse-switch v2, :sswitch_data_0

    .line 199
    iget v2, p0, Lcom/liapp/f;->ܳ׭֮׳ٯ:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/liapp/f;->ܳ׭֮׳ٯ:I

    aget-char v3, v1, v0

    aput-char v3, v1, v2

    .line 200
    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/liapp/f;->ܬڱ״۳ݯ:I

    goto :goto_0

    .line 180
    :sswitch_0
    iget v0, p0, Lcom/liapp/f;->ܳ׭֮׳ٯ:I

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lcom/liapp/f;->ܳ׭֮׳ٯ:I

    invoke-direct {p0}, Lcom/liapp/f;->۱٬ڱܯޫ()C

    move-result v2

    aput-char v2, v1, v0

    .line 181
    iget v0, p0, Lcom/liapp/f;->ܬڱ״۳ݯ:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/liapp/f;->ܬڱ״۳ݯ:I

    .line 182
    goto :goto_0

    .line 177
    :sswitch_1
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/liapp/f;->۲ܭׯײٮ:[C

    iget v2, p0, Lcom/liapp/f;->ׯڳ׮ڭܩ:I

    iget v3, p0, Lcom/liapp/f;->ܳ׭֮׳ٯ:I

    sub-int/2addr v3, v2

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    return-object v0

    .line 186
    :sswitch_2
    iget v2, p0, Lcom/liapp/f;->ܳ׭֮׳ٯ:I

    iput v2, p0, Lcom/liapp/f;->گٱܱڬܨ:I

    .line 187
    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/liapp/f;->ܬڱ״۳ݯ:I

    .line 188
    add-int/lit8 v0, v2, 0x1

    iput v0, p0, Lcom/liapp/f;->ܳ׭֮׳ٯ:I

    const/16 v0, 0x20

    aput-char v0, v1, v2

    .line 189
    nop

    :goto_1
    iget v1, p0, Lcom/liapp/f;->ܬڱ״۳ݯ:I

    iget v2, p0, Lcom/liapp/f;->جڳڴڮܪ:I

    if-ge v1, v2, :cond_2

    iget-object v3, p0, Lcom/liapp/f;->۲ܭׯײٮ:[C

    aget-char v4, v3, v1

    if-ne v4, v0, :cond_2

    .line 190
    iget v2, p0, Lcom/liapp/f;->ܳ׭֮׳ٯ:I

    add-int/lit8 v4, v2, 0x1

    iput v4, p0, Lcom/liapp/f;->ܳ׭֮׳ٯ:I

    aput-char v0, v3, v2

    .line 189
    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/liapp/f;->ܬڱ״۳ݯ:I

    goto :goto_1

    .line 192
    :cond_2
    if-eq v1, v2, :cond_3

    iget-object v0, p0, Lcom/liapp/f;->۲ܭׯײٮ:[C

    aget-char v2, v0, v1

    const/16 v3, 0x2c

    if-eq v2, v3, :cond_3

    aget-char v2, v0, v1

    const/16 v3, 0x2b

    if-eq v2, v3, :cond_3

    aget-char v0, v0, v1

    const/16 v1, 0x3b

    if-ne v0, v1, :cond_0

    .line 195
    :cond_3
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/liapp/f;->۲ܭׯײٮ:[C

    iget v2, p0, Lcom/liapp/f;->ׯڳ׮ڭܩ:I

    iget v3, p0, Lcom/liapp/f;->گٱܱڬܨ:I

    sub-int/2addr v3, v2

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x20 -> :sswitch_2
        0x2b -> :sswitch_1
        0x2c -> :sswitch_1
        0x3b -> :sswitch_1
        0x5c -> :sswitch_0
    .end sparse-switch

    .array-data 1
    .end array-data
.end method

.method private synthetic ݱزݴڭܩ()C
    .locals 9

    .line 235
    iget v0, p0, Lcom/liapp/f;->ܬڱ״۳ݯ:I

    invoke-direct {p0, v0}, Lcom/liapp/f;->۱٬ڱܯޫ(I)I

    move-result v0

    .line 236
    iget v1, p0, Lcom/liapp/f;->ܬڱ״۳ݯ:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iput v1, p0, Lcom/liapp/f;->ܬڱ״۳ݯ:I

    .line 237
    const/16 v1, 0x80

    if-ge v0, v1, :cond_0

    .line 238
    int-to-char v0, v0

    return v0

    .line 239
    :cond_0
    const/16 v3, 0xc0

    const/16 v4, 0x3f

    if-lt v0, v3, :cond_7

    const/16 v3, 0xf7

    if-gt v0, v3, :cond_7

    .line 241
    const/16 v3, 0xdf

    if-gt v0, v3, :cond_1

    .line 242
    nop

    .line 243
    and-int/lit8 v0, v0, 0x1f

    const/4 v3, 0x1

    goto :goto_0

    .line 244
    :cond_1
    const/16 v3, 0xef

    if-gt v0, v3, :cond_2

    .line 245
    const/4 v3, 0x2

    .line 246
    and-int/lit8 v0, v0, 0xf

    goto :goto_0

    .line 248
    :cond_2
    const/4 v3, 0x3

    .line 249
    and-int/lit8 v0, v0, 0x7

    .line 252
    :goto_0
    const/4 v5, 0x0

    :goto_1
    if-ge v5, v3, :cond_6

    .line 253
    iget v6, p0, Lcom/liapp/f;->ܬڱ״۳ݯ:I

    add-int/2addr v6, v2

    iput v6, p0, Lcom/liapp/f;->ܬڱ״۳ݯ:I

    .line 254
    iget v7, p0, Lcom/liapp/f;->جڳڴڮܪ:I

    if-eq v6, v7, :cond_5

    iget-object v7, p0, Lcom/liapp/f;->۲ܭׯײٮ:[C

    aget-char v7, v7, v6

    const/16 v8, 0x5c

    if-eq v7, v8, :cond_3

    goto :goto_2

    .line 257
    :cond_3
    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/liapp/f;->ܬڱ״۳ݯ:I

    .line 258
    invoke-direct {p0, v6}, Lcom/liapp/f;->۱٬ڱܯޫ(I)I

    move-result v6

    .line 259
    iget v7, p0, Lcom/liapp/f;->ܬڱ״۳ݯ:I

    add-int/2addr v7, v2

    iput v7, p0, Lcom/liapp/f;->ܬڱ״۳ݯ:I

    .line 260
    and-int/lit16 v7, v6, 0xc0

    if-eq v7, v1, :cond_4

    .line 261
    return v4

    .line 263
    :cond_4
    shl-int/lit8 v0, v0, 0x6

    add-int/lit8 v5, v5, 0x1

    and-int/lit8 v6, v6, 0x3f

    add-int/2addr v0, v6

    .line 252
    goto :goto_1

    .line 255
    :cond_5
    :goto_2
    return v4

    .line 265
    :cond_6
    int-to-char v0, v0

    return v0

    .line 267
    :cond_7
    return v4

    nop

    .array-data 1
    .end array-data
.end method

.method private synthetic ݱزݴڭܩ()Ljava/lang/String;
    .locals 8

    .line 51
    nop

    :goto_0
    iget v0, p0, Lcom/liapp/f;->ܬڱ״۳ݯ:I

    iget v1, p0, Lcom/liapp/f;->جڳڴڮܪ:I

    const/16 v2, 0x20

    if-ge v0, v1, :cond_0

    iget-object v3, p0, Lcom/liapp/f;->۲ܭׯײٮ:[C

    aget-char v3, v3, v0

    if-ne v3, v2, :cond_0

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/liapp/f;->ܬڱ״۳ݯ:I

    goto :goto_0

    .line 53
    :cond_0
    if-ne v0, v1, :cond_1

    .line 54
    const/4 v0, 0x0

    return-object v0

    .line 57
    :cond_1
    iput v0, p0, Lcom/liapp/f;->ׯڳ׮ڭܩ:I

    .line 59
    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/liapp/f;->ܬڱ״۳ݯ:I

    .line 60
    :goto_1
    iget v0, p0, Lcom/liapp/f;->ܬڱ״۳ݯ:I

    iget v1, p0, Lcom/liapp/f;->جڳڴڮܪ:I

    const/16 v3, 0x3d

    if-ge v0, v1, :cond_2

    iget-object v4, p0, Lcom/liapp/f;->۲ܭׯײٮ:[C

    aget-char v5, v4, v0

    if-eq v5, v3, :cond_2

    aget-char v4, v4, v0

    if-eq v4, v2, :cond_2

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/liapp/f;->ܬڱ״۳ݯ:I

    goto :goto_1

    .line 64
    :cond_2
    const-string v4, "{AHVZJJZCK\u0005KLK\u0001AX\u000fy`\u0000O"

    const/4 v5, 0x0

    if-ge v0, v1, :cond_b

    .line 68
    iput v0, p0, Lcom/liapp/f;->ܳ׭֮׳ٯ:I

    .line 71
    iget-object v1, p0, Lcom/liapp/f;->۲ܭׯײٮ:[C

    aget-char v0, v1, v0

    if-ne v0, v2, :cond_5

    .line 72
    nop

    :goto_2
    iget v0, p0, Lcom/liapp/f;->ܬڱ״۳ݯ:I

    iget v1, p0, Lcom/liapp/f;->جڳڴڮܪ:I

    if-ge v0, v1, :cond_3

    iget-object v6, p0, Lcom/liapp/f;->۲ܭׯײٮ:[C

    aget-char v7, v6, v0

    if-eq v7, v3, :cond_3

    aget-char v6, v6, v0

    if-ne v6, v2, :cond_3

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/liapp/f;->ܬڱ״۳ݯ:I

    goto :goto_2

    .line 74
    :cond_3
    iget-object v6, p0, Lcom/liapp/f;->۲ܭׯײٮ:[C

    aget-char v6, v6, v0

    if-ne v6, v3, :cond_4

    if-eq v0, v1, :cond_4

    goto :goto_3

    .line 75
    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v4}, Lcom/liapp/p;->۱٬ڱܯޫ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v5, v2}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/liapp/f;->ڲحز׳ٯ:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 78
    :cond_5
    :goto_3
    iget v0, p0, Lcom/liapp/f;->ܬڱ״۳ݯ:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/liapp/f;->ܬڱ״۳ݯ:I

    .line 81
    :goto_4
    iget v0, p0, Lcom/liapp/f;->ܬڱ״۳ݯ:I

    iget v1, p0, Lcom/liapp/f;->جڳڴڮܪ:I

    if-ge v0, v1, :cond_6

    iget-object v1, p0, Lcom/liapp/f;->۲ܭׯײٮ:[C

    aget-char v1, v1, v0

    if-ne v1, v2, :cond_6

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/liapp/f;->ܬڱ״۳ݯ:I

    goto :goto_4

    .line 85
    :cond_6
    iget v0, p0, Lcom/liapp/f;->ܳ׭֮׳ٯ:I

    iget v1, p0, Lcom/liapp/f;->ׯڳ׮ڭܩ:I

    sub-int/2addr v0, v1

    const/4 v2, 0x4

    if-le v0, v2, :cond_a

    iget-object v0, p0, Lcom/liapp/f;->۲ܭׯײٮ:[C

    add-int/lit8 v3, v1, 0x3

    aget-char v3, v0, v3

    const/16 v4, 0x2e

    if-ne v3, v4, :cond_a

    aget-char v3, v0, v1

    const/16 v4, 0x4f

    if-eq v3, v4, :cond_7

    aget-char v3, v0, v1

    const/16 v4, 0x6f

    if-ne v3, v4, :cond_a

    :cond_7
    add-int/lit8 v3, v1, 0x1

    aget-char v3, v0, v3

    const/16 v4, 0x49

    if-eq v3, v4, :cond_8

    add-int/lit8 v3, v1, 0x1

    aget-char v3, v0, v3

    const/16 v4, 0x69

    if-ne v3, v4, :cond_a

    :cond_8
    add-int/lit8 v3, v1, 0x2

    aget-char v3, v0, v3

    const/16 v4, 0x44

    if-eq v3, v4, :cond_9

    add-int/lit8 v3, v1, 0x2

    aget-char v0, v0, v3

    const/16 v3, 0x64

    if-ne v0, v3, :cond_a

    .line 89
    :cond_9
    add-int/2addr v1, v2

    iput v1, p0, Lcom/liapp/f;->ׯڳ׮ڭܩ:I

    .line 91
    :cond_a
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/liapp/f;->۲ܭׯײٮ:[C

    iget v2, p0, Lcom/liapp/f;->ׯڳ׮ڭܩ:I

    iget v3, p0, Lcom/liapp/f;->ܳ׭֮׳ٯ:I

    sub-int/2addr v3, v2

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    return-object v0

    .line 65
    :cond_b
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v4}, Lcom/liapp/p;->۱٬ڱܯޫ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v5, v2}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/liapp/f;->ڲحز׳ٯ:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto :goto_6

    :goto_5
    throw v0

    :goto_6
    goto :goto_5

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public ۱٬ڱܯޫ(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    .line 311
    const/4 v0, 0x0

    iput v0, p0, Lcom/liapp/f;->ܬڱ״۳ݯ:I

    .line 312
    iput v0, p0, Lcom/liapp/f;->ׯڳ׮ڭܩ:I

    .line 313
    iput v0, p0, Lcom/liapp/f;->ܳ׭֮׳ٯ:I

    .line 314
    iput v0, p0, Lcom/liapp/f;->گٱܱڬܨ:I

    .line 315
    iget-object v1, p0, Lcom/liapp/f;->ڲحز׳ٯ:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    iput-object v1, p0, Lcom/liapp/f;->۲ܭׯײٮ:[C

    .line 316
    invoke-direct {p0}, Lcom/liapp/f;->ݱزݴڭܩ()Ljava/lang/String;

    move-result-object v1

    .line 317
    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 318
    return-object v2

    .line 321
    :cond_0
    :goto_0
    nop

    .line 322
    iget v3, p0, Lcom/liapp/f;->ܬڱ״۳ݯ:I

    iget v4, p0, Lcom/liapp/f;->جڳڴڮܪ:I

    if-ne v3, v4, :cond_1

    .line 323
    return-object v2

    .line 325
    :cond_1
    iget-object v4, p0, Lcom/liapp/f;->۲ܭׯײٮ:[C

    aget-char v3, v4, v3

    sparse-switch v3, :sswitch_data_0

    .line 338
    invoke-direct {p0}, Lcom/liapp/f;->۴ڴݲٯ۫()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 336
    :sswitch_0
    const-string v3, ""

    goto :goto_1

    .line 330
    :sswitch_1
    invoke-direct {p0}, Lcom/liapp/f;->حٲݭڳܯ()Ljava/lang/String;

    move-result-object v3

    .line 331
    goto :goto_2

    .line 327
    :sswitch_2
    invoke-direct {p0}, Lcom/liapp/f;->۱٬ڱܯޫ()Ljava/lang/String;

    move-result-object v3

    .line 328
    goto :goto_2

    .line 343
    :goto_1
    nop

    :goto_2
    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 344
    return-object v3

    .line 346
    :cond_2
    iget v1, p0, Lcom/liapp/f;->ܬڱ״۳ݯ:I

    iget v3, p0, Lcom/liapp/f;->جڳڴڮܪ:I

    if-lt v1, v3, :cond_3

    .line 347
    return-object v2

    .line 349
    :cond_3
    iget-object v3, p0, Lcom/liapp/f;->۲ܭׯײٮ:[C

    aget-char v4, v3, v1

    const/16 v5, 0x2c

    const-string v6, "cNAHE]DKB\u000fa`\u0018O"

    if-eq v4, v5, :cond_6

    aget-char v4, v3, v1

    const/16 v5, 0x3b

    if-ne v4, v5, :cond_4

    goto :goto_4

    .line 350
    :cond_4
    aget-char v3, v3, v1

    const/16 v4, 0x2b

    if-ne v3, v4, :cond_5

    goto :goto_3

    .line 351
    :cond_5
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v6}, Lcom/liapp/p;->۱٬ڱܯޫ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/liapp/f;->ڲحز׳ٯ:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 353
    :cond_6
    :goto_3
    nop

    :goto_4
    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/liapp/f;->ܬڱ״۳ݯ:I

    .line 354
    invoke-direct {p0}, Lcom/liapp/f;->ݱزݴڭܩ()Ljava/lang/String;

    move-result-object v1

    .line 355
    if-eqz v1, :cond_7

    goto :goto_0

    .line 356
    :cond_7
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v6}, Lcom/liapp/p;->۱٬ڱܯޫ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/liapp/f;->ڲحز׳ٯ:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto :goto_6

    :goto_5
    throw p1

    :goto_6
    goto :goto_5

    nop

    :sswitch_data_0
    .sparse-switch
        0x22 -> :sswitch_2
        0x23 -> :sswitch_1
        0x2b -> :sswitch_0
        0x2c -> :sswitch_0
        0x3b -> :sswitch_0
    .end sparse-switch

    .array-data 1
    .end array-data
.end method
