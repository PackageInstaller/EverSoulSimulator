.class Lorg/apache/commons/lang3/time/DateUtils$DateIterator;
.super Ljava/lang/Object;
.source "DateUtils.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/lang3/time/DateUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "DateIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Ljava/util/Calendar;",
        ">;"
    }
.end annotation


# instance fields
.field private final endFinal:Ljava/util/Calendar;

.field private final spot:Ljava/util/Calendar;


# direct methods
.method constructor <init>(Ljava/util/Calendar;Ljava/util/Calendar;)V
    .locals 1

    .line 18039
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18049
    iput-object p2, p0, Lorg/apache/commons/lang3/time/DateUtils$DateIterator;->endFinal:Ljava/util/Calendar;

    .line 18059
    iput-object p1, p0, Lorg/apache/commons/lang3/time/DateUtils$DateIterator;->spot:Ljava/util/Calendar;

    const/4 p2, 0x5

    const/4 v0, -0x1

    .line 18069
    invoke-virtual {p1, p2, v0}, Ljava/util/Calendar;->add(II)V

    return-void

    nop

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public hasNext()Z
    .locals 2

    .line 18169
    iget-object v0, p0, Lorg/apache/commons/lang3/time/DateUtils$DateIterator;->spot:Ljava/util/Calendar;

    iget-object v1, p0, Lorg/apache/commons/lang3/time/DateUtils$DateIterator;->endFinal:Ljava/util/Calendar;

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result v0

    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .line 17929
    invoke-virtual {p0}, Lorg/apache/commons/lang3/time/DateUtils$DateIterator;->next()Ljava/util/Calendar;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public next()Ljava/util/Calendar;
    .locals 3

    .line 18269
    iget-object v0, p0, Lorg/apache/commons/lang3/time/DateUtils$DateIterator;->spot:Ljava/util/Calendar;

    iget-object v1, p0, Lorg/apache/commons/lang3/time/DateUtils$DateIterator;->endFinal:Ljava/util/Calendar;

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 18299
    iget-object v0, p0, Lorg/apache/commons/lang3/time/DateUtils$DateIterator;->spot:Ljava/util/Calendar;

    const/4 v1, 0x5

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->add(II)V

    .line 18309
    iget-object v0, p0, Lorg/apache/commons/lang3/time/DateUtils$DateIterator;->spot:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Calendar;

    return-object v0

    .line 18279
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .array-data 1
    .end array-data
.end method

.method public remove()V
    .locals 1

    .line 18419
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .array-data 1
    .end array-data
.end method
