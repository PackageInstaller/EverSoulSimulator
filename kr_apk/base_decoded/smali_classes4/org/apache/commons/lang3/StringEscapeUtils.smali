.class public Lorg/apache/commons/lang3/StringEscapeUtils;
.super Ljava/lang/Object;
.source "StringEscapeUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/lang3/StringEscapeUtils$CsvUnescaper;,
        Lorg/apache/commons/lang3/StringEscapeUtils$CsvEscaper;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final ESCAPE_CSV:Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;

.field public static final ESCAPE_ECMASCRIPT:Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;

.field public static final ESCAPE_HTML3:Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;

.field public static final ESCAPE_HTML4:Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;

.field public static final ESCAPE_JAVA:Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;

.field public static final ESCAPE_JSON:Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;

.field public static final ESCAPE_XML:Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ESCAPE_XML10:Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;

.field public static final ESCAPE_XML11:Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;

.field public static final UNESCAPE_CSV:Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;

.field public static final UNESCAPE_ECMASCRIPT:Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;

.field public static final UNESCAPE_HTML3:Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;

.field public static final UNESCAPE_HTML4:Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;

.field public static final UNESCAPE_JAVA:Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;

.field public static final UNESCAPE_JSON:Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;

.field public static final UNESCAPE_XML:Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;


# direct methods
.method static constructor <clinit>()V
    .locals 22

    .line 579
    new-instance v0, Lorg/apache/commons/lang3/text/translate/LookupTranslator;

    const/4 v1, 0x2

    new-array v2, v1, [[Ljava/lang/String;

    const v3, 0x2257cdc6

    invoke-static {v3}, Lcom/liapp/y;->ֲֳگܱޭ(I)Ljava/lang/String;

    move-result-object v3

    const v4, 0x54375b2a

    invoke-static {v4}, Lcom/liapp/y;->׳ֳֳ֬د(I)Ljava/lang/String;

    move-result-object v4

    filled-new-array {v3, v4}, [Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v2, v6

    const v5, 0x225c458e

    invoke-static {v5}, Lcom/liapp/y;->ֲֳگܱޭ(I)Ljava/lang/String;

    move-result-object v5

    const v7, -0x224c901c

    invoke-static {v7}, Lcom/liapp/y;->״دش۲ݮ(I)Ljava/lang/String;

    move-result-object v7

    filled-new-array {v5, v7}, [Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    aput-object v8, v2, v9

    invoke-direct {v0, v2}, Lorg/apache/commons/lang3/text/translate/LookupTranslator;-><init>([[Ljava/lang/CharSequence;)V

    new-array v2, v9, [Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;

    new-instance v8, Lorg/apache/commons/lang3/text/translate/LookupTranslator;

    .line 639
    invoke-static {}, Lorg/apache/commons/lang3/text/translate/EntityArrays;->JAVA_CTRL_CHARS_ESCAPE()[[Ljava/lang/String;

    move-result-object v10

    invoke-direct {v8, v10}, Lorg/apache/commons/lang3/text/translate/LookupTranslator;-><init>([[Ljava/lang/CharSequence;)V

    aput-object v8, v2, v6

    .line 629
    invoke-virtual {v0, v2}, Lorg/apache/commons/lang3/text/translate/LookupTranslator;->with([Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;)Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;

    move-result-object v0

    new-array v2, v9, [Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;

    const/16 v8, 0x20

    const/16 v10, 0x7f

    .line 659
    invoke-static {v8, v10}, Lorg/apache/commons/lang3/text/translate/JavaUnicodeEscaper;->outsideOf(II)Lorg/apache/commons/lang3/text/translate/JavaUnicodeEscaper;

    move-result-object v11

    aput-object v11, v2, v6

    .line 649
    invoke-virtual {v0, v2}, Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;->with([Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;)Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/lang3/StringEscapeUtils;->ESCAPE_JAVA:Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;

    .line 779
    new-instance v0, Lorg/apache/commons/lang3/text/translate/AggregateTranslator;

    const/4 v2, 0x3

    new-array v11, v2, [Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;

    new-instance v12, Lorg/apache/commons/lang3/text/translate/LookupTranslator;

    const/4 v13, 0x4

    new-array v14, v13, [[Ljava/lang/String;

    const v15, 0x5d155ed7

    invoke-static {v15}, Lcom/liapp/y;->ڴݮگ֮ت(I)Ljava/lang/String;

    move-result-object v15

    const v13, -0x45102357    # -0.0018300015f

    invoke-static {v13}, Lcom/liapp/y;->ڳݬ٬ۮݪ(I)Ljava/lang/String;

    move-result-object v13

    filled-new-array {v15, v13}, [Ljava/lang/String;

    move-result-object v17

    aput-object v17, v14, v6

    filled-new-array {v3, v4}, [Ljava/lang/String;

    move-result-object v17

    aput-object v17, v14, v9

    filled-new-array {v5, v7}, [Ljava/lang/String;

    move-result-object v17

    aput-object v17, v14, v1

    const v1, 0x543c2032

    invoke-static {v1}, Lcom/liapp/y;->׳ֳֳ֬د(I)Ljava/lang/String;

    move-result-object v1

    const v8, 0x54375b0a

    invoke-static {v8}, Lcom/liapp/y;->׳ֳֳ֬د(I)Ljava/lang/String;

    move-result-object v8

    filled-new-array {v1, v8}, [Ljava/lang/String;

    move-result-object v18

    aput-object v18, v14, v2

    invoke-direct {v12, v14}, Lorg/apache/commons/lang3/text/translate/LookupTranslator;-><init>([[Ljava/lang/CharSequence;)V

    aput-object v12, v11, v6

    new-instance v12, Lorg/apache/commons/lang3/text/translate/LookupTranslator;

    .line 869
    invoke-static {}, Lorg/apache/commons/lang3/text/translate/EntityArrays;->JAVA_CTRL_CHARS_ESCAPE()[[Ljava/lang/String;

    move-result-object v14

    invoke-direct {v12, v14}, Lorg/apache/commons/lang3/text/translate/LookupTranslator;-><init>([[Ljava/lang/CharSequence;)V

    aput-object v12, v11, v9

    const/16 v12, 0x20

    .line 879
    invoke-static {v12, v10}, Lorg/apache/commons/lang3/text/translate/JavaUnicodeEscaper;->outsideOf(II)Lorg/apache/commons/lang3/text/translate/JavaUnicodeEscaper;

    move-result-object v14

    const/4 v12, 0x2

    aput-object v14, v11, v12

    invoke-direct {v0, v11}, Lorg/apache/commons/lang3/text/translate/AggregateTranslator;-><init>([Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;)V

    sput-object v0, Lorg/apache/commons/lang3/StringEscapeUtils;->ESCAPE_ECMASCRIPT:Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;

    .line 999
    new-instance v0, Lorg/apache/commons/lang3/text/translate/AggregateTranslator;

    new-array v11, v2, [Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;

    new-instance v12, Lorg/apache/commons/lang3/text/translate/LookupTranslator;

    new-array v14, v2, [[Ljava/lang/String;

    filled-new-array {v3, v4}, [Ljava/lang/String;

    move-result-object v18

    aput-object v18, v14, v6

    filled-new-array {v5, v7}, [Ljava/lang/String;

    move-result-object v18

    aput-object v18, v14, v9

    filled-new-array {v1, v8}, [Ljava/lang/String;

    move-result-object v1

    const/4 v8, 0x2

    aput-object v1, v14, v8

    invoke-direct {v12, v14}, Lorg/apache/commons/lang3/text/translate/LookupTranslator;-><init>([[Ljava/lang/CharSequence;)V

    aput-object v12, v11, v6

    new-instance v1, Lorg/apache/commons/lang3/text/translate/LookupTranslator;

    .line 1079
    invoke-static {}, Lorg/apache/commons/lang3/text/translate/EntityArrays;->JAVA_CTRL_CHARS_ESCAPE()[[Ljava/lang/String;

    move-result-object v12

    invoke-direct {v1, v12}, Lorg/apache/commons/lang3/text/translate/LookupTranslator;-><init>([[Ljava/lang/CharSequence;)V

    aput-object v1, v11, v9

    const/16 v1, 0x20

    .line 1089
    invoke-static {v1, v10}, Lorg/apache/commons/lang3/text/translate/JavaUnicodeEscaper;->outsideOf(II)Lorg/apache/commons/lang3/text/translate/JavaUnicodeEscaper;

    move-result-object v1

    aput-object v1, v11, v8

    invoke-direct {v0, v11}, Lorg/apache/commons/lang3/text/translate/AggregateTranslator;-><init>([Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;)V

    sput-object v0, Lorg/apache/commons/lang3/StringEscapeUtils;->ESCAPE_JSON:Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;

    .line 1229
    new-instance v0, Lorg/apache/commons/lang3/text/translate/AggregateTranslator;

    new-array v1, v8, [Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;

    new-instance v8, Lorg/apache/commons/lang3/text/translate/LookupTranslator;

    .line 1249
    invoke-static {}, Lorg/apache/commons/lang3/text/translate/EntityArrays;->BASIC_ESCAPE()[[Ljava/lang/String;

    move-result-object v11

    invoke-direct {v8, v11}, Lorg/apache/commons/lang3/text/translate/LookupTranslator;-><init>([[Ljava/lang/CharSequence;)V

    aput-object v8, v1, v6

    new-instance v8, Lorg/apache/commons/lang3/text/translate/LookupTranslator;

    .line 1259
    invoke-static {}, Lorg/apache/commons/lang3/text/translate/EntityArrays;->APOS_ESCAPE()[[Ljava/lang/String;

    move-result-object v11

    invoke-direct {v8, v11}, Lorg/apache/commons/lang3/text/translate/LookupTranslator;-><init>([[Ljava/lang/CharSequence;)V

    aput-object v8, v1, v9

    invoke-direct {v0, v1}, Lorg/apache/commons/lang3/text/translate/AggregateTranslator;-><init>([Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;)V

    sput-object v0, Lorg/apache/commons/lang3/StringEscapeUtils;->ESCAPE_XML:Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;

    .line 1379
    new-instance v0, Lorg/apache/commons/lang3/text/translate/AggregateTranslator;

    const/4 v1, 0x6

    new-array v8, v1, [Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;

    new-instance v11, Lorg/apache/commons/lang3/text/translate/LookupTranslator;

    .line 1399
    invoke-static {}, Lorg/apache/commons/lang3/text/translate/EntityArrays;->BASIC_ESCAPE()[[Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Lorg/apache/commons/lang3/text/translate/LookupTranslator;-><init>([[Ljava/lang/CharSequence;)V

    aput-object v11, v8, v6

    new-instance v11, Lorg/apache/commons/lang3/text/translate/LookupTranslator;

    .line 1409
    invoke-static {}, Lorg/apache/commons/lang3/text/translate/EntityArrays;->APOS_ESCAPE()[[Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Lorg/apache/commons/lang3/text/translate/LookupTranslator;-><init>([[Ljava/lang/CharSequence;)V

    aput-object v11, v8, v9

    new-instance v11, Lorg/apache/commons/lang3/text/translate/LookupTranslator;

    const/16 v12, 0x1f

    new-array v14, v12, [[Ljava/lang/String;

    const-string v12, "\u0000"

    const-string v10, ""

    filled-new-array {v12, v10}, [Ljava/lang/String;

    move-result-object v19

    aput-object v19, v14, v6

    const-string v6, "\u0001"

    filled-new-array {v6, v10}, [Ljava/lang/String;

    move-result-object v6

    aput-object v6, v14, v9

    const-string v6, "\u0002"

    filled-new-array {v6, v10}, [Ljava/lang/String;

    move-result-object v6

    const/16 v17, 0x2

    aput-object v6, v14, v17

    const-string v6, "\u0003"

    filled-new-array {v6, v10}, [Ljava/lang/String;

    move-result-object v6

    aput-object v6, v14, v2

    const-string v6, "\u0004"

    filled-new-array {v6, v10}, [Ljava/lang/String;

    move-result-object v6

    const/16 v16, 0x4

    aput-object v6, v14, v16

    const-string v6, "\u0005"

    filled-new-array {v6, v10}, [Ljava/lang/String;

    move-result-object v6

    const/4 v9, 0x5

    aput-object v6, v14, v9

    const-string v6, "\u0006"

    filled-new-array {v6, v10}, [Ljava/lang/String;

    move-result-object v6

    aput-object v6, v14, v1

    const-string v6, "\u0007"

    filled-new-array {v6, v10}, [Ljava/lang/String;

    move-result-object v6

    const/16 v20, 0x7

    aput-object v6, v14, v20

    const-string v6, "\u0008"

    filled-new-array {v6, v10}, [Ljava/lang/String;

    move-result-object v6

    const/16 v1, 0x8

    aput-object v6, v14, v1

    const-string v6, "\u000b"

    filled-new-array {v6, v10}, [Ljava/lang/String;

    move-result-object v6

    const/16 v21, 0x9

    aput-object v6, v14, v21

    const-string v6, "\u000c"

    filled-new-array {v6, v10}, [Ljava/lang/String;

    move-result-object v6

    const/16 v21, 0xa

    aput-object v6, v14, v21

    const-string v6, "\u000e"

    filled-new-array {v6, v10}, [Ljava/lang/String;

    move-result-object v6

    const/16 v21, 0xb

    aput-object v6, v14, v21

    const-string v6, "\u000f"

    filled-new-array {v6, v10}, [Ljava/lang/String;

    move-result-object v6

    const/16 v21, 0xc

    aput-object v6, v14, v21

    const-string v6, "\u0010"

    filled-new-array {v6, v10}, [Ljava/lang/String;

    move-result-object v6

    const/16 v21, 0xd

    aput-object v6, v14, v21

    const-string v6, "\u0011"

    filled-new-array {v6, v10}, [Ljava/lang/String;

    move-result-object v6

    const/16 v21, 0xe

    aput-object v6, v14, v21

    const-string v6, "\u0012"

    filled-new-array {v6, v10}, [Ljava/lang/String;

    move-result-object v6

    const/16 v21, 0xf

    aput-object v6, v14, v21

    const-string v6, "\u0013"

    filled-new-array {v6, v10}, [Ljava/lang/String;

    move-result-object v6

    const/16 v21, 0x10

    aput-object v6, v14, v21

    const-string v6, "\u0014"

    filled-new-array {v6, v10}, [Ljava/lang/String;

    move-result-object v6

    const/16 v21, 0x11

    aput-object v6, v14, v21

    const-string v6, "\u0015"

    filled-new-array {v6, v10}, [Ljava/lang/String;

    move-result-object v6

    const/16 v21, 0x12

    aput-object v6, v14, v21

    const-string v6, "\u0016"

    filled-new-array {v6, v10}, [Ljava/lang/String;

    move-result-object v6

    const/16 v21, 0x13

    aput-object v6, v14, v21

    const-string v6, "\u0017"

    filled-new-array {v6, v10}, [Ljava/lang/String;

    move-result-object v6

    const/16 v21, 0x14

    aput-object v6, v14, v21

    const-string v6, "\u0018"

    filled-new-array {v6, v10}, [Ljava/lang/String;

    move-result-object v6

    const/16 v21, 0x15

    aput-object v6, v14, v21

    const-string v6, "\u0019"

    filled-new-array {v6, v10}, [Ljava/lang/String;

    move-result-object v6

    const/16 v21, 0x16

    aput-object v6, v14, v21

    const-string v6, "\u001a"

    filled-new-array {v6, v10}, [Ljava/lang/String;

    move-result-object v6

    const/16 v21, 0x17

    aput-object v6, v14, v21

    const-string v6, "\u001b"

    filled-new-array {v6, v10}, [Ljava/lang/String;

    move-result-object v6

    const/16 v21, 0x18

    aput-object v6, v14, v21

    const-string v6, "\u001c"

    filled-new-array {v6, v10}, [Ljava/lang/String;

    move-result-object v6

    const/16 v21, 0x19

    aput-object v6, v14, v21

    const-string v6, "\u001d"

    filled-new-array {v6, v10}, [Ljava/lang/String;

    move-result-object v6

    const/16 v21, 0x1a

    aput-object v6, v14, v21

    const-string v6, "\u001e"

    filled-new-array {v6, v10}, [Ljava/lang/String;

    move-result-object v6

    const/16 v21, 0x1b

    aput-object v6, v14, v21

    const-string v6, "\u001f"

    filled-new-array {v6, v10}, [Ljava/lang/String;

    move-result-object v6

    const/16 v21, 0x1c

    aput-object v6, v14, v21

    const-string v6, "\ufffe"

    filled-new-array {v6, v10}, [Ljava/lang/String;

    move-result-object v6

    const/16 v21, 0x1d

    aput-object v6, v14, v21

    const-string v6, "\uffff"

    filled-new-array {v6, v10}, [Ljava/lang/String;

    move-result-object v6

    const/16 v21, 0x1e

    aput-object v6, v14, v21

    invoke-direct {v11, v14}, Lorg/apache/commons/lang3/text/translate/LookupTranslator;-><init>([[Ljava/lang/CharSequence;)V

    const/4 v6, 0x2

    aput-object v11, v8, v6

    const/16 v6, 0x84

    const/16 v11, 0x7f

    .line 1759
    invoke-static {v11, v6}, Lorg/apache/commons/lang3/text/translate/NumericEntityEscaper;->between(II)Lorg/apache/commons/lang3/text/translate/NumericEntityEscaper;

    move-result-object v6

    aput-object v6, v8, v2

    const/16 v6, 0x86

    const/16 v11, 0x9f

    .line 1769
    invoke-static {v6, v11}, Lorg/apache/commons/lang3/text/translate/NumericEntityEscaper;->between(II)Lorg/apache/commons/lang3/text/translate/NumericEntityEscaper;

    move-result-object v6

    const/4 v11, 0x4

    aput-object v6, v8, v11

    new-instance v6, Lorg/apache/commons/lang3/text/translate/UnicodeUnpairedSurrogateRemover;

    invoke-direct {v6}, Lorg/apache/commons/lang3/text/translate/UnicodeUnpairedSurrogateRemover;-><init>()V

    aput-object v6, v8, v9

    invoke-direct {v0, v8}, Lorg/apache/commons/lang3/text/translate/AggregateTranslator;-><init>([Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;)V

    sput-object v0, Lorg/apache/commons/lang3/StringEscapeUtils;->ESCAPE_XML10:Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;

    .line 1899
    new-instance v0, Lorg/apache/commons/lang3/text/translate/AggregateTranslator;

    new-array v6, v1, [Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;

    new-instance v8, Lorg/apache/commons/lang3/text/translate/LookupTranslator;

    .line 1919
    invoke-static {}, Lorg/apache/commons/lang3/text/translate/EntityArrays;->BASIC_ESCAPE()[[Ljava/lang/String;

    move-result-object v11

    invoke-direct {v8, v11}, Lorg/apache/commons/lang3/text/translate/LookupTranslator;-><init>([[Ljava/lang/CharSequence;)V

    const/4 v11, 0x0

    aput-object v8, v6, v11

    new-instance v8, Lorg/apache/commons/lang3/text/translate/LookupTranslator;

    .line 1929
    invoke-static {}, Lorg/apache/commons/lang3/text/translate/EntityArrays;->APOS_ESCAPE()[[Ljava/lang/String;

    move-result-object v14

    invoke-direct {v8, v14}, Lorg/apache/commons/lang3/text/translate/LookupTranslator;-><init>([[Ljava/lang/CharSequence;)V

    const/4 v14, 0x1

    aput-object v8, v6, v14

    new-instance v8, Lorg/apache/commons/lang3/text/translate/LookupTranslator;

    new-array v1, v9, [[Ljava/lang/String;

    filled-new-array {v12, v10}, [Ljava/lang/String;

    move-result-object v12

    aput-object v12, v1, v11

    const-string v11, "\u000b"

    const v12, 0x54304e02

    invoke-static {v12}, Lcom/liapp/y;->׳ֳֳ֬د(I)Ljava/lang/String;

    move-result-object v12

    filled-new-array {v11, v12}, [Ljava/lang/String;

    move-result-object v11

    aput-object v11, v1, v14

    const-string v11, "\u000c"

    const v12, 0x6d055110

    invoke-static {v12}, Lcom/liapp/y;->ٱڳܴڭܩ(I)Ljava/lang/String;

    move-result-object v12

    filled-new-array {v11, v12}, [Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x2

    aput-object v11, v1, v12

    const-string v11, "\ufffe"

    filled-new-array {v11, v10}, [Ljava/lang/String;

    move-result-object v11

    aput-object v11, v1, v2

    const-string v11, "\uffff"

    filled-new-array {v11, v10}, [Ljava/lang/String;

    move-result-object v11

    const/4 v14, 0x4

    aput-object v11, v1, v14

    invoke-direct {v8, v1}, Lorg/apache/commons/lang3/text/translate/LookupTranslator;-><init>([[Ljava/lang/CharSequence;)V

    aput-object v8, v6, v12

    const/4 v1, 0x1

    const/16 v8, 0x8

    .line 2019
    invoke-static {v1, v8}, Lorg/apache/commons/lang3/text/translate/NumericEntityEscaper;->between(II)Lorg/apache/commons/lang3/text/translate/NumericEntityEscaper;

    move-result-object v8

    aput-object v8, v6, v2

    const/16 v1, 0xe

    const/16 v8, 0x1f

    .line 2029
    invoke-static {v1, v8}, Lorg/apache/commons/lang3/text/translate/NumericEntityEscaper;->between(II)Lorg/apache/commons/lang3/text/translate/NumericEntityEscaper;

    move-result-object v1

    aput-object v1, v6, v14

    const/16 v1, 0x84

    const/16 v8, 0x7f

    .line 2039
    invoke-static {v8, v1}, Lorg/apache/commons/lang3/text/translate/NumericEntityEscaper;->between(II)Lorg/apache/commons/lang3/text/translate/NumericEntityEscaper;

    move-result-object v1

    aput-object v1, v6, v9

    const/16 v1, 0x86

    const/16 v8, 0x9f

    .line 2049
    invoke-static {v1, v8}, Lorg/apache/commons/lang3/text/translate/NumericEntityEscaper;->between(II)Lorg/apache/commons/lang3/text/translate/NumericEntityEscaper;

    move-result-object v1

    const/4 v8, 0x6

    aput-object v1, v6, v8

    new-instance v1, Lorg/apache/commons/lang3/text/translate/UnicodeUnpairedSurrogateRemover;

    invoke-direct {v1}, Lorg/apache/commons/lang3/text/translate/UnicodeUnpairedSurrogateRemover;-><init>()V

    aput-object v1, v6, v20

    invoke-direct {v0, v6}, Lorg/apache/commons/lang3/text/translate/AggregateTranslator;-><init>([Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;)V

    sput-object v0, Lorg/apache/commons/lang3/StringEscapeUtils;->ESCAPE_XML11:Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;

    .line 2179
    new-instance v0, Lorg/apache/commons/lang3/text/translate/AggregateTranslator;

    const/4 v1, 0x2

    new-array v6, v1, [Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;

    new-instance v1, Lorg/apache/commons/lang3/text/translate/LookupTranslator;

    .line 2199
    invoke-static {}, Lorg/apache/commons/lang3/text/translate/EntityArrays;->BASIC_ESCAPE()[[Ljava/lang/String;

    move-result-object v8

    invoke-direct {v1, v8}, Lorg/apache/commons/lang3/text/translate/LookupTranslator;-><init>([[Ljava/lang/CharSequence;)V

    const/4 v8, 0x0

    aput-object v1, v6, v8

    new-instance v1, Lorg/apache/commons/lang3/text/translate/LookupTranslator;

    .line 2209
    invoke-static {}, Lorg/apache/commons/lang3/text/translate/EntityArrays;->ISO8859_1_ESCAPE()[[Ljava/lang/String;

    move-result-object v8

    invoke-direct {v1, v8}, Lorg/apache/commons/lang3/text/translate/LookupTranslator;-><init>([[Ljava/lang/CharSequence;)V

    const/4 v8, 0x1

    aput-object v1, v6, v8

    invoke-direct {v0, v6}, Lorg/apache/commons/lang3/text/translate/AggregateTranslator;-><init>([Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;)V

    sput-object v0, Lorg/apache/commons/lang3/StringEscapeUtils;->ESCAPE_HTML3:Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;

    .line 2329
    new-instance v0, Lorg/apache/commons/lang3/text/translate/AggregateTranslator;

    new-array v1, v2, [Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;

    new-instance v6, Lorg/apache/commons/lang3/text/translate/LookupTranslator;

    .line 2349
    invoke-static {}, Lorg/apache/commons/lang3/text/translate/EntityArrays;->BASIC_ESCAPE()[[Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v8}, Lorg/apache/commons/lang3/text/translate/LookupTranslator;-><init>([[Ljava/lang/CharSequence;)V

    const/4 v8, 0x0

    aput-object v6, v1, v8

    new-instance v6, Lorg/apache/commons/lang3/text/translate/LookupTranslator;

    .line 2359
    invoke-static {}, Lorg/apache/commons/lang3/text/translate/EntityArrays;->ISO8859_1_ESCAPE()[[Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v8}, Lorg/apache/commons/lang3/text/translate/LookupTranslator;-><init>([[Ljava/lang/CharSequence;)V

    const/4 v8, 0x1

    aput-object v6, v1, v8

    new-instance v6, Lorg/apache/commons/lang3/text/translate/LookupTranslator;

    .line 2369
    invoke-static {}, Lorg/apache/commons/lang3/text/translate/EntityArrays;->HTML40_EXTENDED_ESCAPE()[[Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v8}, Lorg/apache/commons/lang3/text/translate/LookupTranslator;-><init>([[Ljava/lang/CharSequence;)V

    const/4 v8, 0x2

    aput-object v6, v1, v8

    invoke-direct {v0, v1}, Lorg/apache/commons/lang3/text/translate/AggregateTranslator;-><init>([Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;)V

    sput-object v0, Lorg/apache/commons/lang3/StringEscapeUtils;->ESCAPE_HTML4:Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;

    .line 2489
    new-instance v0, Lorg/apache/commons/lang3/StringEscapeUtils$CsvEscaper;

    invoke-direct {v0}, Lorg/apache/commons/lang3/StringEscapeUtils$CsvEscaper;-><init>()V

    sput-object v0, Lorg/apache/commons/lang3/StringEscapeUtils;->ESCAPE_CSV:Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;

    .line 2909
    new-instance v0, Lorg/apache/commons/lang3/text/translate/AggregateTranslator;

    const/4 v1, 0x4

    new-array v6, v1, [Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;

    new-instance v1, Lorg/apache/commons/lang3/text/translate/OctalUnescaper;

    invoke-direct {v1}, Lorg/apache/commons/lang3/text/translate/OctalUnescaper;-><init>()V

    const/4 v8, 0x0

    aput-object v1, v6, v8

    new-instance v1, Lorg/apache/commons/lang3/text/translate/UnicodeUnescaper;

    invoke-direct {v1}, Lorg/apache/commons/lang3/text/translate/UnicodeUnescaper;-><init>()V

    const/4 v9, 0x1

    aput-object v1, v6, v9

    new-instance v1, Lorg/apache/commons/lang3/text/translate/LookupTranslator;

    .line 2949
    invoke-static {}, Lorg/apache/commons/lang3/text/translate/EntityArrays;->JAVA_CTRL_CHARS_UNESCAPE()[[Ljava/lang/String;

    move-result-object v11

    invoke-direct {v1, v11}, Lorg/apache/commons/lang3/text/translate/LookupTranslator;-><init>([[Ljava/lang/CharSequence;)V

    const/4 v11, 0x2

    aput-object v1, v6, v11

    new-instance v1, Lorg/apache/commons/lang3/text/translate/LookupTranslator;

    const/4 v12, 0x4

    new-array v14, v12, [[Ljava/lang/String;

    filled-new-array {v7, v5}, [Ljava/lang/String;

    move-result-object v7

    aput-object v7, v14, v8

    filled-new-array {v4, v3}, [Ljava/lang/String;

    move-result-object v3

    aput-object v3, v14, v9

    filled-new-array {v13, v15}, [Ljava/lang/String;

    move-result-object v3

    aput-object v3, v14, v11

    filled-new-array {v5, v10}, [Ljava/lang/String;

    move-result-object v3

    aput-object v3, v14, v2

    invoke-direct {v1, v14}, Lorg/apache/commons/lang3/text/translate/LookupTranslator;-><init>([[Ljava/lang/CharSequence;)V

    aput-object v1, v6, v2

    invoke-direct {v0, v6}, Lorg/apache/commons/lang3/text/translate/AggregateTranslator;-><init>([Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;)V

    sput-object v0, Lorg/apache/commons/lang3/StringEscapeUtils;->UNESCAPE_JAVA:Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;

    .line 3139
    sput-object v0, Lorg/apache/commons/lang3/StringEscapeUtils;->UNESCAPE_ECMASCRIPT:Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;

    .line 3249
    sput-object v0, Lorg/apache/commons/lang3/StringEscapeUtils;->UNESCAPE_JSON:Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;

    .line 3359
    new-instance v0, Lorg/apache/commons/lang3/text/translate/AggregateTranslator;

    new-array v1, v2, [Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;

    new-instance v3, Lorg/apache/commons/lang3/text/translate/LookupTranslator;

    .line 3379
    invoke-static {}, Lorg/apache/commons/lang3/text/translate/EntityArrays;->BASIC_UNESCAPE()[[Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/apache/commons/lang3/text/translate/LookupTranslator;-><init>([[Ljava/lang/CharSequence;)V

    const/4 v4, 0x0

    aput-object v3, v1, v4

    new-instance v3, Lorg/apache/commons/lang3/text/translate/LookupTranslator;

    .line 3389
    invoke-static {}, Lorg/apache/commons/lang3/text/translate/EntityArrays;->ISO8859_1_UNESCAPE()[[Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Lorg/apache/commons/lang3/text/translate/LookupTranslator;-><init>([[Ljava/lang/CharSequence;)V

    const/4 v5, 0x1

    aput-object v3, v1, v5

    new-instance v3, Lorg/apache/commons/lang3/text/translate/NumericEntityUnescaper;

    new-array v5, v4, [Lorg/apache/commons/lang3/text/translate/NumericEntityUnescaper$OPTION;

    invoke-direct {v3, v5}, Lorg/apache/commons/lang3/text/translate/NumericEntityUnescaper;-><init>([Lorg/apache/commons/lang3/text/translate/NumericEntityUnescaper$OPTION;)V

    const/4 v5, 0x2

    aput-object v3, v1, v5

    invoke-direct {v0, v1}, Lorg/apache/commons/lang3/text/translate/AggregateTranslator;-><init>([Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;)V

    sput-object v0, Lorg/apache/commons/lang3/StringEscapeUtils;->UNESCAPE_HTML3:Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;

    .line 3519
    new-instance v0, Lorg/apache/commons/lang3/text/translate/AggregateTranslator;

    const/4 v1, 0x4

    new-array v1, v1, [Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;

    new-instance v3, Lorg/apache/commons/lang3/text/translate/LookupTranslator;

    .line 3539
    invoke-static {}, Lorg/apache/commons/lang3/text/translate/EntityArrays;->BASIC_UNESCAPE()[[Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Lorg/apache/commons/lang3/text/translate/LookupTranslator;-><init>([[Ljava/lang/CharSequence;)V

    aput-object v3, v1, v4

    new-instance v3, Lorg/apache/commons/lang3/text/translate/LookupTranslator;

    .line 3549
    invoke-static {}, Lorg/apache/commons/lang3/text/translate/EntityArrays;->ISO8859_1_UNESCAPE()[[Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Lorg/apache/commons/lang3/text/translate/LookupTranslator;-><init>([[Ljava/lang/CharSequence;)V

    const/4 v5, 0x1

    aput-object v3, v1, v5

    new-instance v3, Lorg/apache/commons/lang3/text/translate/LookupTranslator;

    .line 3559
    invoke-static {}, Lorg/apache/commons/lang3/text/translate/EntityArrays;->HTML40_EXTENDED_UNESCAPE()[[Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Lorg/apache/commons/lang3/text/translate/LookupTranslator;-><init>([[Ljava/lang/CharSequence;)V

    const/4 v5, 0x2

    aput-object v3, v1, v5

    new-instance v3, Lorg/apache/commons/lang3/text/translate/NumericEntityUnescaper;

    new-array v5, v4, [Lorg/apache/commons/lang3/text/translate/NumericEntityUnescaper$OPTION;

    invoke-direct {v3, v5}, Lorg/apache/commons/lang3/text/translate/NumericEntityUnescaper;-><init>([Lorg/apache/commons/lang3/text/translate/NumericEntityUnescaper$OPTION;)V

    aput-object v3, v1, v2

    invoke-direct {v0, v1}, Lorg/apache/commons/lang3/text/translate/AggregateTranslator;-><init>([Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;)V

    sput-object v0, Lorg/apache/commons/lang3/StringEscapeUtils;->UNESCAPE_HTML4:Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;

    .line 3689
    new-instance v0, Lorg/apache/commons/lang3/text/translate/AggregateTranslator;

    new-array v1, v2, [Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;

    new-instance v2, Lorg/apache/commons/lang3/text/translate/LookupTranslator;

    .line 3709
    invoke-static {}, Lorg/apache/commons/lang3/text/translate/EntityArrays;->BASIC_UNESCAPE()[[Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/apache/commons/lang3/text/translate/LookupTranslator;-><init>([[Ljava/lang/CharSequence;)V

    aput-object v2, v1, v4

    new-instance v2, Lorg/apache/commons/lang3/text/translate/LookupTranslator;

    .line 3719
    invoke-static {}, Lorg/apache/commons/lang3/text/translate/EntityArrays;->APOS_UNESCAPE()[[Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/apache/commons/lang3/text/translate/LookupTranslator;-><init>([[Ljava/lang/CharSequence;)V

    const/4 v3, 0x1

    aput-object v2, v1, v3

    new-instance v2, Lorg/apache/commons/lang3/text/translate/NumericEntityUnescaper;

    new-array v3, v4, [Lorg/apache/commons/lang3/text/translate/NumericEntityUnescaper$OPTION;

    invoke-direct {v2, v3}, Lorg/apache/commons/lang3/text/translate/NumericEntityUnescaper;-><init>([Lorg/apache/commons/lang3/text/translate/NumericEntityUnescaper$OPTION;)V

    const/4 v3, 0x2

    aput-object v2, v1, v3

    invoke-direct {v0, v1}, Lorg/apache/commons/lang3/text/translate/AggregateTranslator;-><init>([Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;)V

    sput-object v0, Lorg/apache/commons/lang3/StringEscapeUtils;->UNESCAPE_XML:Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;

    .line 3849
    new-instance v0, Lorg/apache/commons/lang3/StringEscapeUtils$CsvUnescaper;

    invoke-direct {v0}, Lorg/apache/commons/lang3/StringEscapeUtils$CsvUnescaper;-><init>()V

    sput-object v0, Lorg/apache/commons/lang3/StringEscapeUtils;->UNESCAPE_CSV:Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .line 4319
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void

    .array-data 1
    .end array-data
.end method

.method public static final escapeCsv(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 7789
    sget-object v0, Lorg/apache/commons/lang3/StringEscapeUtils;->ESCAPE_CSV:Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;

    invoke-virtual {v0, p0}, Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;->translate(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static final escapeEcmaScript(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 4859
    sget-object v0, Lorg/apache/commons/lang3/StringEscapeUtils;->ESCAPE_ECMASCRIPT:Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;

    invoke-virtual {v0, p0}, Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;->translate(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static final escapeHtml3(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 6069
    sget-object v0, Lorg/apache/commons/lang3/StringEscapeUtils;->ESCAPE_HTML3:Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;

    invoke-virtual {v0, p0}, Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;->translate(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static final escapeHtml4(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 5939
    sget-object v0, Lorg/apache/commons/lang3/StringEscapeUtils;->ESCAPE_HTML4:Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;

    invoke-virtual {v0, p0}, Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;->translate(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static final escapeJava(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 4579
    sget-object v0, Lorg/apache/commons/lang3/StringEscapeUtils;->ESCAPE_JAVA:Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;

    invoke-virtual {v0, p0}, Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;->translate(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static final escapeJson(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 5139
    sget-object v0, Lorg/apache/commons/lang3/StringEscapeUtils;->ESCAPE_JSON:Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;

    invoke-virtual {v0, p0}, Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;->translate(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static final escapeXml(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 6689
    sget-object v0, Lorg/apache/commons/lang3/StringEscapeUtils;->ESCAPE_XML:Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;

    invoke-virtual {v0, p0}, Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;->translate(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static escapeXml10(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 7009
    sget-object v0, Lorg/apache/commons/lang3/StringEscapeUtils;->ESCAPE_XML10:Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;

    invoke-virtual {v0, p0}, Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;->translate(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static escapeXml11(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 7309
    sget-object v0, Lorg/apache/commons/lang3/StringEscapeUtils;->ESCAPE_XML11:Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;

    invoke-virtual {v0, p0}, Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;->translate(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static final unescapeCsv(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 8039
    sget-object v0, Lorg/apache/commons/lang3/StringEscapeUtils;->UNESCAPE_CSV:Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;

    invoke-virtual {v0, p0}, Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;->translate(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static final unescapeEcmaScript(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 5439
    sget-object v0, Lorg/apache/commons/lang3/StringEscapeUtils;->UNESCAPE_ECMASCRIPT:Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;

    invoke-virtual {v0, p0}, Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;->translate(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static final unescapeHtml3(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 6429
    sget-object v0, Lorg/apache/commons/lang3/StringEscapeUtils;->UNESCAPE_HTML3:Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;

    invoke-virtual {v0, p0}, Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;->translate(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static final unescapeHtml4(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 6289
    sget-object v0, Lorg/apache/commons/lang3/StringEscapeUtils;->UNESCAPE_HTML4:Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;

    invoke-virtual {v0, p0}, Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;->translate(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static final unescapeJava(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 5269
    sget-object v0, Lorg/apache/commons/lang3/StringEscapeUtils;->UNESCAPE_JAVA:Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;

    invoke-virtual {v0, p0}, Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;->translate(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static final unescapeJson(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 5609
    sget-object v0, Lorg/apache/commons/lang3/StringEscapeUtils;->UNESCAPE_JSON:Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;

    invoke-virtual {v0, p0}, Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;->translate(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static final unescapeXml(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 7529
    sget-object v0, Lorg/apache/commons/lang3/StringEscapeUtils;->UNESCAPE_XML:Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;

    invoke-virtual {v0, p0}, Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;->translate(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method
