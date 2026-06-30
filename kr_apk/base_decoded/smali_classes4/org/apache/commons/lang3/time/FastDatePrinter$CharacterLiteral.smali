.class Lorg/apache/commons/lang3/time/FastDatePrinter$CharacterLiteral;
.super Ljava/lang/Object;
.source "FastDatePrinter.java"

# interfaces
.implements Lorg/apache/commons/lang3/time/FastDatePrinter$Rule;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/lang3/time/FastDatePrinter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CharacterLiteral"
.end annotation


# instance fields
.field private final mValue:C


# direct methods
.method constructor <init>(C)V
    .locals 0

    .line 8089
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8099
    iput-char p1, p0, Lorg/apache/commons/lang3/time/FastDatePrinter$CharacterLiteral;->mValue:C

    return-void

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public appendTo(Ljava/lang/Appendable;Ljava/util/Calendar;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 8259
    iget-char p2, p0, Lorg/apache/commons/lang3/time/FastDatePrinter$CharacterLiteral;->mValue:C

    invoke-interface {p1, p2}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    return-void

    .array-data 1
    .end array-data
.end method

.method public estimateLength()I
    .locals 1

    const/4 v0, 0x1

    return v0

    .array-data 1
    .end array-data
.end method
