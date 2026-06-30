.class final Lorg/apache/commons/lang3/time/FastDateParser$4;
.super Lorg/apache/commons/lang3/time/FastDateParser$NumberStrategy;
.source "FastDateParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/lang3/time/FastDateParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>(I)V
    .locals 0

    .line 9729
    invoke-direct {p0, p1}, Lorg/apache/commons/lang3/time/FastDateParser$NumberStrategy;-><init>(I)V

    return-void

    .array-data 1
    .end array-data
.end method


# virtual methods
.method modify(Lorg/apache/commons/lang3/time/FastDateParser;I)I
    .locals 1

    const/4 p1, 0x7

    const/4 v0, 0x1

    if-ne p2, p1, :cond_0

    goto :goto_0

    :cond_0
    add-int/2addr v0, p2

    :goto_0
    return v0

    nop

    .array-data 1
    .end array-data
.end method
