.class interface abstract Lorg/apache/commons/lang3/time/FastDatePrinter$Rule;
.super Ljava/lang/Object;
.source "FastDatePrinter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/lang3/time/FastDatePrinter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x60a
    name = "Rule"
.end annotation


# virtual methods
.method public abstract appendTo(Ljava/lang/Appendable;Ljava/util/Calendar;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract estimateLength()I
.end method
