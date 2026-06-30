.class public final Ltwitter4j/util/CharacterUtil;
.super Ljava/lang/Object;
.source "CharacterUtil.java"


# static fields
.field public static final MAX_TWEET_LENGTH:I = 0x118


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 279
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 289
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    nop

    .array-data 1
    .end array-data
.end method

.method public static count(Ljava/lang/String;)I
    .locals 0

    .line 389
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    return p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static isExceedingLengthLimitation(Ljava/lang/String;)Z
    .locals 1

    .line 489
    invoke-static {p0}, Ltwitter4j/util/CharacterUtil;->count(Ljava/lang/String;)I

    move-result p0

    const/16 v0, 0x118

    if-le p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0

    .array-data 1
    .end array-data
.end method
