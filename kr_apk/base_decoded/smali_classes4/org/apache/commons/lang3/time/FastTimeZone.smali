.class public Lorg/apache/commons/lang3/time/FastTimeZone;
.super Ljava/lang/Object;
.source "FastTimeZone.java"


# static fields
.field private static final GMT_PATTERN:Ljava/util/regex/Pattern;

.field private static final GREENWICH:Ljava/util/TimeZone;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const v0, 0x225d5a4e    # 2.9998892E-18f

    invoke-static {v0}, Lcom/liapp/y;->ֲֳگܱޭ(I)Ljava/lang/String;

    move-result-object v0

    .line 309
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/lang3/time/FastTimeZone;->GMT_PATTERN:Ljava/util/regex/Pattern;

    .line 329
    new-instance v0, Lorg/apache/commons/lang3/time/GmtTimeZone;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, v1}, Lorg/apache/commons/lang3/time/GmtTimeZone;-><init>(ZII)V

    sput-object v0, Lorg/apache/commons/lang3/time/FastTimeZone;->GREENWICH:Ljava/util/TimeZone;

    return-void

    .array-data 1
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .line 929
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void

    .array-data 1
    .end array-data
.end method

.method public static getGmtTimeZone()Ljava/util/TimeZone;
    .locals 1

    .line 399
    sget-object v0, Lorg/apache/commons/lang3/time/FastTimeZone;->GREENWICH:Ljava/util/TimeZone;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public static getGmtTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;
    .locals 4

    const v0, 0x336cb8a3

    invoke-static {v0}, Lcom/liapp/y;->ׯ״ٲ֬ب(I)Ljava/lang/String;

    move-result-object v0

    .line 509
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const v0, 0x6d04b128

    invoke-static {v0}, Lcom/liapp/y;->ٱڳܴڭܩ(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 549
    :cond_0
    sget-object v0, Lorg/apache/commons/lang3/time/FastTimeZone;->GMT_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    .line 559
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x2

    .line 569
    invoke-virtual {p0, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/lang3/time/FastTimeZone;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x4

    .line 579
    invoke-virtual {p0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/commons/lang3/time/FastTimeZone;->parseInt(Ljava/lang/String;)I

    move-result v1

    if-nez v0, :cond_1

    if-nez v1, :cond_1

    .line 599
    sget-object p0, Lorg/apache/commons/lang3/time/FastTimeZone;->GREENWICH:Ljava/util/TimeZone;

    return-object p0

    .line 619
    :cond_1
    new-instance v2, Lorg/apache/commons/lang3/time/GmtTimeZone;

    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/apache/commons/lang3/time/FastTimeZone;->parseSign(Ljava/lang/String;)Z

    move-result p0

    invoke-direct {v2, p0, v0, v1}, Lorg/apache/commons/lang3/time/GmtTimeZone;-><init>(ZII)V

    return-object v2

    :cond_2
    const/4 p0, 0x0

    return-object p0

    .line 519
    :cond_3
    :goto_0
    sget-object p0, Lorg/apache/commons/lang3/time/FastTimeZone;->GREENWICH:Ljava/util/TimeZone;

    return-object p0

    .array-data 1
    .end array-data
.end method

.method public static getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;
    .locals 1

    .line 769
    invoke-static {p0}, Lorg/apache/commons/lang3/time/FastTimeZone;->getGmtTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 809
    :cond_0
    invoke-static {p0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object p0

    return-object p0

    .array-data 1
    .end array-data
.end method

.method private static parseInt(Ljava/lang/String;)I
    .locals 0

    if-eqz p0, :cond_0

    .line 849
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0

    nop

    .array-data 1
    .end array-data
.end method

.method private static parseSign(Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    .line 889
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result p0

    const/16 v1, 0x2d

    if-ne p0, v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0

    nop

    .array-data 1
    .end array-data
.end method
