.class public interface abstract Lorg/apache/commons/lang3/time/DatePrinter;
.super Ljava/lang/Object;
.source "DatePrinter.java"


# virtual methods
.method public abstract format(JLjava/lang/Appendable;)Ljava/lang/Appendable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B::",
            "Ljava/lang/Appendable;",
            ">(JTB;)TB;"
        }
    .end annotation
.end method

.method public abstract format(Ljava/util/Calendar;Ljava/lang/Appendable;)Ljava/lang/Appendable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B::",
            "Ljava/lang/Appendable;",
            ">(",
            "Ljava/util/Calendar;",
            "TB;)TB;"
        }
    .end annotation
.end method

.method public abstract format(Ljava/util/Date;Ljava/lang/Appendable;)Ljava/lang/Appendable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B::",
            "Ljava/lang/Appendable;",
            ">(",
            "Ljava/util/Date;",
            "TB;)TB;"
        }
    .end annotation
.end method

.method public abstract format(J)Ljava/lang/String;
.end method

.method public abstract format(Ljava/util/Calendar;)Ljava/lang/String;
.end method

.method public abstract format(Ljava/util/Date;)Ljava/lang/String;
.end method

.method public abstract format(JLjava/lang/StringBuffer;)Ljava/lang/StringBuffer;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract format(Ljava/lang/Object;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
.end method

.method public abstract format(Ljava/util/Calendar;Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract format(Ljava/util/Date;Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract getLocale()Ljava/util/Locale;
.end method

.method public abstract getPattern()Ljava/lang/String;
.end method

.method public abstract getTimeZone()Ljava/util/TimeZone;
.end method
