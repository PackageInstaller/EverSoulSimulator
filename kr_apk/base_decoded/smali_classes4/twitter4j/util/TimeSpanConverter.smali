.class public final Ltwitter4j/util/TimeSpanConverter;
.super Ljava/lang/Object;
.source "TimeSpanConverter.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final AN_HOUR_AGO:I = 0x4

.field private static final A_MINUTE_AGO:I = 0x2

.field private static final NOW:I = 0x0

.field private static final N_HOURS_AGO:I = 0x5

.field private static final N_MINUTES_AGO:I = 0x3

.field private static final N_SECONDS_AGO:I = 0x1

.field private static final ONE_DAY_IN_SECONDS:I = 0x15180

.field private static final ONE_HOUR_IN_SECONDS:I = 0xe10

.field private static final ONE_MONTH_IN_SECONDS:I = 0x278d00

.field private static final serialVersionUID:J = 0x78404ff789f3c16cL


# instance fields
.field private final dateMonth:Ljava/text/SimpleDateFormat;

.field private final dateMonthYear:Ljava/text/SimpleDateFormat;

.field private final formats:[Ljava/text/MessageFormat;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 509
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-direct {p0, v0}, Ltwitter4j/util/TimeSpanConverter;-><init>(Ljava/util/Locale;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method public constructor <init>(Ljava/util/Locale;)V
    .locals 12

    .line 589
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x6

    new-array v0, v0, [Ljava/text/MessageFormat;

    .line 359
    iput-object v0, p0, Ltwitter4j/util/TimeSpanConverter;->formats:[Ljava/text/MessageFormat;

    .line 599
    invoke-virtual {p1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    const v2, 0x5439984a

    invoke-static {v2}, Lcom/liapp/y;->׳ֳֳ֬د(I)Ljava/lang/String;

    move-result-object v2

    .line 609
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const v3, -0x22579774

    invoke-static {v3}, Lcom/liapp/y;->״دش۲ݮ(I)Ljava/lang/String;

    move-result-object v3

    const v4, 0x6d1943a8

    invoke-static {v4}, Lcom/liapp/y;->ٱڳܴڭܩ(I)Ljava/lang/String;

    move-result-object v4

    const v5, -0x225797a4

    invoke-static {v5}, Lcom/liapp/y;->״دش۲ݮ(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x5

    const/4 v7, 0x4

    const/4 v8, 0x3

    const/4 v9, 0x2

    const/4 v10, 0x1

    const/4 v11, 0x0

    if-eqz v2, :cond_0

    .line 619
    new-instance v1, Ljava/text/MessageFormat;

    const v2, 0x2240572e

    invoke-static {v2}, Lcom/liapp/y;->ֲֳگܱޭ(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/text/MessageFormat;-><init>(Ljava/lang/String;)V

    aput-object v1, v0, v11

    .line 629
    new-instance v1, Ljava/text/MessageFormat;

    const v2, 0x7d655f9d

    invoke-static {v2}, Lcom/liapp/y;->حֲݴܳޯ(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/text/MessageFormat;-><init>(Ljava/lang/String;)V

    aput-object v1, v0, v10

    .line 639
    new-instance v1, Ljava/text/MessageFormat;

    const v2, 0x7d655f1d

    invoke-static {v2}, Lcom/liapp/y;->حֲݴܳޯ(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/text/MessageFormat;-><init>(Ljava/lang/String;)V

    aput-object v1, v0, v9

    .line 649
    new-instance v1, Ljava/text/MessageFormat;

    const v2, 0x224051de

    invoke-static {v2}, Lcom/liapp/y;->ֲֳگܱޭ(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/text/MessageFormat;-><init>(Ljava/lang/String;)V

    aput-object v1, v0, v8

    .line 659
    new-instance v1, Ljava/text/MessageFormat;

    const v2, 0x3377fc53

    invoke-static {v2}, Lcom/liapp/y;->ׯ״ٲ֬ب(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/text/MessageFormat;-><init>(Ljava/lang/String;)V

    aput-object v1, v0, v7

    .line 669
    new-instance v1, Ljava/text/MessageFormat;

    invoke-direct {v1, v3}, Ljava/text/MessageFormat;-><init>(Ljava/lang/String;)V

    aput-object v1, v0, v6

    .line 679
    new-instance v0, Ljava/text/SimpleDateFormat;

    invoke-direct {v0, v5, p1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object v0, p0, Ltwitter4j/util/TimeSpanConverter;->dateMonth:Ljava/text/SimpleDateFormat;

    .line 689
    new-instance v0, Ljava/text/SimpleDateFormat;

    invoke-direct {v0, v4, p1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object v0, p0, Ltwitter4j/util/TimeSpanConverter;->dateMonthYear:Ljava/text/SimpleDateFormat;

    goto/16 :goto_0

    :cond_0
    const v2, 0x22568406

    invoke-static {v2}, Lcom/liapp/y;->ֲֳگܱޭ(I)Ljava/lang/String;

    move-result-object v2

    .line 699
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 709
    new-instance v1, Ljava/text/MessageFormat;

    const-string v2, "\uc9c0\uae08"

    invoke-direct {v1, v2}, Ljava/text/MessageFormat;-><init>(Ljava/lang/String;)V

    aput-object v1, v0, v11

    .line 719
    new-instance v1, Ljava/text/MessageFormat;

    const-string v2, "{0}\ucd08 \uc804"

    invoke-direct {v1, v2}, Ljava/text/MessageFormat;-><init>(Ljava/lang/String;)V

    aput-object v1, v0, v10

    .line 729
    new-instance v1, Ljava/text/MessageFormat;

    const-string v2, "1\ubd84 \uc804"

    invoke-direct {v1, v2}, Ljava/text/MessageFormat;-><init>(Ljava/lang/String;)V

    aput-object v1, v0, v9

    .line 739
    new-instance v1, Ljava/text/MessageFormat;

    const-string v2, "{0}\ubd84 \uc804"

    invoke-direct {v1, v2}, Ljava/text/MessageFormat;-><init>(Ljava/lang/String;)V

    aput-object v1, v0, v8

    .line 749
    new-instance v1, Ljava/text/MessageFormat;

    const-string v2, "1\uc2dc\uac04 \uc804"

    invoke-direct {v1, v2}, Ljava/text/MessageFormat;-><init>(Ljava/lang/String;)V

    aput-object v1, v0, v7

    .line 759
    new-instance v1, Ljava/text/MessageFormat;

    invoke-direct {v1, v3}, Ljava/text/MessageFormat;-><init>(Ljava/lang/String;)V

    aput-object v1, v0, v6

    .line 769
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "M\uc6d4 d\uc77c"

    invoke-direct {v0, v1, p1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object v0, p0, Ltwitter4j/util/TimeSpanConverter;->dateMonth:Ljava/text/SimpleDateFormat;

    .line 779
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yy\ub144 M\uc6d4 d\uc77c"

    invoke-direct {v0, v1, p1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object v0, p0, Ltwitter4j/util/TimeSpanConverter;->dateMonthYear:Ljava/text/SimpleDateFormat;

    goto/16 :goto_0

    :cond_1
    const v2, 0x3377fc03

    invoke-static {v2}, Lcom/liapp/y;->ׯ״ٲ֬ب(I)Ljava/lang/String;

    move-result-object v2

    .line 789
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 799
    new-instance v1, Ljava/text/MessageFormat;

    const v2, 0x6d194528

    invoke-static {v2}, Lcom/liapp/y;->ٱڳܴڭܩ(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/text/MessageFormat;-><init>(Ljava/lang/String;)V

    aput-object v1, v0, v11

    .line 809
    new-instance v1, Ljava/text/MessageFormat;

    const v2, 0x7d655995

    invoke-static {v2}, Lcom/liapp/y;->حֲݴܳޯ(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/text/MessageFormat;-><init>(Ljava/lang/String;)V

    aput-object v1, v0, v10

    .line 819
    new-instance v1, Ljava/text/MessageFormat;

    const v2, 0x6d194418

    invoke-static {v2}, Lcom/liapp/y;->ٱڳܴڭܩ(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/text/MessageFormat;-><init>(Ljava/lang/String;)V

    aput-object v1, v0, v9

    .line 829
    new-instance v1, Ljava/text/MessageFormat;

    const v2, -0x450c351f

    invoke-static {v2}, Lcom/liapp/y;->ڳݬ٬ۮݪ(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/text/MessageFormat;-><init>(Ljava/lang/String;)V

    aput-object v1, v0, v8

    .line 839
    new-instance v1, Ljava/text/MessageFormat;

    const v2, 0x2240531e

    invoke-static {v2}, Lcom/liapp/y;->ֲֳگܱޭ(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/text/MessageFormat;-><init>(Ljava/lang/String;)V

    aput-object v1, v0, v7

    .line 849
    new-instance v1, Ljava/text/MessageFormat;

    const v2, 0x7d655b8d

    invoke-static {v2}, Lcom/liapp/y;->حֲݴܳޯ(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/text/MessageFormat;-><init>(Ljava/lang/String;)V

    aput-object v1, v0, v6

    .line 859
    new-instance v0, Ljava/text/SimpleDateFormat;

    invoke-direct {v0, v5, p1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object v0, p0, Ltwitter4j/util/TimeSpanConverter;->dateMonth:Ljava/text/SimpleDateFormat;

    .line 869
    new-instance v0, Ljava/text/SimpleDateFormat;

    invoke-direct {v0, v4, p1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object v0, p0, Ltwitter4j/util/TimeSpanConverter;->dateMonthYear:Ljava/text/SimpleDateFormat;

    goto/16 :goto_0

    :cond_2
    const v2, 0x5d0572e7    # 6.010001E17f

    invoke-static {v2}, Lcom/liapp/y;->ڴݮگ֮ت(I)Ljava/lang/String;

    move-result-object v2

    .line 879
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 889
    new-instance v1, Ljava/text/MessageFormat;

    const v2, -0x225792b4

    invoke-static {v2}, Lcom/liapp/y;->״دش۲ݮ(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/text/MessageFormat;-><init>(Ljava/lang/String;)V

    aput-object v1, v0, v11

    .line 899
    new-instance v1, Ljava/text/MessageFormat;

    const v2, 0x3377f0e3

    invoke-static {v2}, Lcom/liapp/y;->ׯ״ٲ֬ب(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/text/MessageFormat;-><init>(Ljava/lang/String;)V

    aput-object v1, v0, v10

    .line 909
    new-instance v1, Ljava/text/MessageFormat;

    const v2, 0x7d655465

    invoke-static {v2}, Lcom/liapp/y;->حֲݴܳޯ(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/text/MessageFormat;-><init>(Ljava/lang/String;)V

    aput-object v1, v0, v9

    .line 919
    new-instance v1, Ljava/text/MessageFormat;

    const v2, 0x7d6555dd

    invoke-static {v2}, Lcom/liapp/y;->حֲݴܳޯ(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/text/MessageFormat;-><init>(Ljava/lang/String;)V

    aput-object v1, v0, v8

    .line 929
    new-instance v1, Ljava/text/MessageFormat;

    const v2, -0x450c3927

    invoke-static {v2}, Lcom/liapp/y;->ڳݬ٬ۮݪ(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/text/MessageFormat;-><init>(Ljava/lang/String;)V

    aput-object v1, v0, v7

    .line 939
    new-instance v1, Ljava/text/MessageFormat;

    const v2, -0x22579fe4

    invoke-static {v2}, Lcom/liapp/y;->״دش۲ݮ(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/text/MessageFormat;-><init>(Ljava/lang/String;)V

    aput-object v1, v0, v6

    .line 949
    new-instance v0, Ljava/text/SimpleDateFormat;

    invoke-direct {v0, v5, p1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object v0, p0, Ltwitter4j/util/TimeSpanConverter;->dateMonth:Ljava/text/SimpleDateFormat;

    .line 959
    new-instance v0, Ljava/text/SimpleDateFormat;

    invoke-direct {v0, v4, p1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object v0, p0, Ltwitter4j/util/TimeSpanConverter;->dateMonthYear:Ljava/text/SimpleDateFormat;

    goto/16 :goto_0

    :cond_3
    const v2, 0x6d194ac0

    invoke-static {v2}, Lcom/liapp/y;->ٱڳܴڭܩ(I)Ljava/lang/String;

    move-result-object v2

    .line 969
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 979
    new-instance v1, Ljava/text/MessageFormat;

    const v2, 0x542c55aa

    invoke-static {v2}, Lcom/liapp/y;->׳ֳֳ֬د(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/text/MessageFormat;-><init>(Ljava/lang/String;)V

    aput-object v1, v0, v11

    .line 989
    new-instance v1, Ljava/text/MessageFormat;

    const v2, -0x450c3857

    invoke-static {v2}, Lcom/liapp/y;->ڳݬ٬ۮݪ(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/text/MessageFormat;-><init>(Ljava/lang/String;)V

    aput-object v1, v0, v10

    .line 999
    new-instance v1, Ljava/text/MessageFormat;

    const v2, 0x542c5292

    invoke-static {v2}, Lcom/liapp/y;->׳ֳֳ֬د(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/text/MessageFormat;-><init>(Ljava/lang/String;)V

    aput-object v1, v0, v9

    .line 1009
    new-instance v1, Ljava/text/MessageFormat;

    const v2, -0x22579914

    invoke-static {v2}, Lcom/liapp/y;->״دش۲ݮ(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/text/MessageFormat;-><init>(Ljava/lang/String;)V

    aput-object v1, v0, v8

    .line 1019
    new-instance v1, Ljava/text/MessageFormat;

    const v2, 0x5d0579af

    invoke-static {v2}, Lcom/liapp/y;->ڴݮگ֮ت(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/text/MessageFormat;-><init>(Ljava/lang/String;)V

    aput-object v1, v0, v7

    .line 1029
    new-instance v1, Ljava/text/MessageFormat;

    const v2, -0x450c3e4f

    invoke-static {v2}, Lcom/liapp/y;->ڳݬ٬ۮݪ(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/text/MessageFormat;-><init>(Ljava/lang/String;)V

    aput-object v1, v0, v6

    .line 1039
    new-instance v0, Ljava/text/SimpleDateFormat;

    invoke-direct {v0, v5, p1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object v0, p0, Ltwitter4j/util/TimeSpanConverter;->dateMonth:Ljava/text/SimpleDateFormat;

    .line 1049
    new-instance v0, Ljava/text/SimpleDateFormat;

    invoke-direct {v0, v4, p1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object v0, p0, Ltwitter4j/util/TimeSpanConverter;->dateMonthYear:Ljava/text/SimpleDateFormat;

    goto/16 :goto_0

    :cond_4
    const v2, 0x5d1cead7

    invoke-static {v2}, Lcom/liapp/y;->ڴݮگ֮ت(I)Ljava/lang/String;

    move-result-object v2

    .line 1059
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1069
    new-instance v1, Ljava/text/MessageFormat;

    const-string v2, "\u4eca"

    invoke-direct {v1, v2}, Ljava/text/MessageFormat;-><init>(Ljava/lang/String;)V

    aput-object v1, v0, v11

    .line 1079
    new-instance v1, Ljava/text/MessageFormat;

    const-string v2, "{0}\u79d2\u524d"

    invoke-direct {v1, v2}, Ljava/text/MessageFormat;-><init>(Ljava/lang/String;)V

    aput-object v1, v0, v10

    .line 1089
    new-instance v1, Ljava/text/MessageFormat;

    const-string v2, "1\u5206\u524d"

    invoke-direct {v1, v2}, Ljava/text/MessageFormat;-><init>(Ljava/lang/String;)V

    aput-object v1, v0, v9

    .line 1099
    new-instance v1, Ljava/text/MessageFormat;

    const-string v2, "{0}\u5206\u524d"

    invoke-direct {v1, v2}, Ljava/text/MessageFormat;-><init>(Ljava/lang/String;)V

    aput-object v1, v0, v8

    .line 1109
    new-instance v1, Ljava/text/MessageFormat;

    const-string v2, "1\u6642\u9593\u524d"

    invoke-direct {v1, v2}, Ljava/text/MessageFormat;-><init>(Ljava/lang/String;)V

    aput-object v1, v0, v7

    .line 1119
    new-instance v1, Ljava/text/MessageFormat;

    const-string v2, "{0}\u6642\u9593\u524d"

    invoke-direct {v1, v2}, Ljava/text/MessageFormat;-><init>(Ljava/lang/String;)V

    aput-object v1, v0, v6

    .line 1129
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "M\u6708d\u65e5"

    invoke-direct {v0, v1, p1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object v0, p0, Ltwitter4j/util/TimeSpanConverter;->dateMonth:Ljava/text/SimpleDateFormat;

    .line 1139
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yy\u5e74M\u6708d\u65e5"

    invoke-direct {v0, v1, p1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object v0, p0, Ltwitter4j/util/TimeSpanConverter;->dateMonthYear:Ljava/text/SimpleDateFormat;

    goto :goto_0

    .line 1159
    :cond_5
    new-instance p1, Ljava/text/MessageFormat;

    const v1, 0x542c5362

    invoke-static {v1}, Lcom/liapp/y;->׳ֳֳ֬د(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v1}, Ljava/text/MessageFormat;-><init>(Ljava/lang/String;)V

    aput-object p1, v0, v11

    .line 1169
    new-instance p1, Ljava/text/MessageFormat;

    const v1, 0x22405bce

    invoke-static {v1}, Lcom/liapp/y;->ֲֳگܱޭ(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v1}, Ljava/text/MessageFormat;-><init>(Ljava/lang/String;)V

    aput-object p1, v0, v10

    .line 1179
    new-instance p1, Ljava/text/MessageFormat;

    const v1, 0x7d65521d

    invoke-static {v1}, Lcom/liapp/y;->حֲݴܳޯ(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v1}, Ljava/text/MessageFormat;-><init>(Ljava/lang/String;)V

    aput-object p1, v0, v9

    .line 1189
    new-instance p1, Ljava/text/MessageFormat;

    const v1, 0x3377f7c3

    invoke-static {v1}, Lcom/liapp/y;->ׯ״ٲ֬ب(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v1}, Ljava/text/MessageFormat;-><init>(Ljava/lang/String;)V

    aput-object p1, v0, v8

    .line 1199
    new-instance p1, Ljava/text/MessageFormat;

    const v1, 0x3377f74b

    invoke-static {v1}, Lcom/liapp/y;->ׯ״ٲ֬ب(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v1}, Ljava/text/MessageFormat;-><init>(Ljava/lang/String;)V

    aput-object p1, v0, v7

    .line 1209
    new-instance p1, Ljava/text/MessageFormat;

    const v1, -0x22579a9c

    invoke-static {v1}, Lcom/liapp/y;->״دش۲ݮ(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v1}, Ljava/text/MessageFormat;-><init>(Ljava/lang/String;)V

    aput-object p1, v0, v6

    .line 1219
    new-instance p1, Ljava/text/SimpleDateFormat;

    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-direct {p1, v5, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object p1, p0, Ltwitter4j/util/TimeSpanConverter;->dateMonth:Ljava/text/SimpleDateFormat;

    .line 1229
    new-instance p1, Ljava/text/SimpleDateFormat;

    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-direct {p1, v4, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object p1, p0, Ltwitter4j/util/TimeSpanConverter;->dateMonthYear:Ljava/text/SimpleDateFormat;

    :goto_0
    return-void

    .array-data 1
    .end array-data
.end method

.method private toTimeSpanString(I)Ljava/lang/String;
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-gt p1, v2, :cond_0

    .line 1449
    iget-object p1, p0, Ltwitter4j/util/TimeSpanConverter;->formats:[Ljava/text/MessageFormat;

    aget-object p1, p1, v1

    invoke-virtual {p1, v0}, Ljava/text/MessageFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const/16 v3, 0x3c

    if-ge p1, v3, :cond_1

    .line 1469
    iget-object v0, p0, Ltwitter4j/util/TimeSpanConverter;->formats:[Ljava/text/MessageFormat;

    aget-object v0, v0, v2

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v1

    invoke-virtual {v0, v2}, Ljava/text/MessageFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    const/16 v4, 0xa8c

    if-ge p1, v4, :cond_3

    .line 1509
    div-int/2addr p1, v3

    if-ne p1, v2, :cond_2

    .line 1529
    iget-object p1, p0, Ltwitter4j/util/TimeSpanConverter;->formats:[Ljava/text/MessageFormat;

    const/4 v1, 0x2

    aget-object p1, p1, v1

    invoke-virtual {p1, v0}, Ljava/text/MessageFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 1549
    :cond_2
    iget-object v0, p0, Ltwitter4j/util/TimeSpanConverter;->formats:[Ljava/text/MessageFormat;

    const/4 v3, 0x3

    aget-object v0, v0, v3

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v1

    invoke-virtual {v0, v2}, Ljava/text/MessageFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_3
    const/16 v3, 0x189c

    if-ge p1, v3, :cond_4

    .line 1589
    iget-object p1, p0, Ltwitter4j/util/TimeSpanConverter;->formats:[Ljava/text/MessageFormat;

    const/4 v1, 0x4

    aget-object p1, p1, v1

    invoke-virtual {p1, v0}, Ljava/text/MessageFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_4
    add-int/lit16 p1, p1, 0x384

    .line 1609
    div-int/lit16 p1, p1, 0xe10

    .line 1619
    iget-object v0, p0, Ltwitter4j/util/TimeSpanConverter;->formats:[Ljava/text/MessageFormat;

    const/4 v3, 0x5

    aget-object v0, v0, v3

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v1

    invoke-virtual {v0, v2}, Ljava/text/MessageFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public toTimeSpanString(J)Ljava/lang/String;
    .locals 4

    .line 1319
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long/2addr v0, p1

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    long-to-int v0, v0

    const v1, 0x15180

    if-lt v0, v1, :cond_1

    const v1, 0x278d00

    if-lt v0, v1, :cond_0

    .line 1349
    iget-object v0, p0, Ltwitter4j/util/TimeSpanConverter;->dateMonthYear:Ljava/text/SimpleDateFormat;

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, p1, p2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 1369
    :cond_0
    iget-object v0, p0, Ltwitter4j/util/TimeSpanConverter;->dateMonth:Ljava/text/SimpleDateFormat;

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, p1, p2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 1399
    :cond_1
    invoke-direct {p0, v0}, Ltwitter4j/util/TimeSpanConverter;->toTimeSpanString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .array-data 1
    .end array-data
.end method

.method public toTimeSpanString(Ljava/util/Date;)Ljava/lang/String;
    .locals 2

    .line 1279
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Ltwitter4j/util/TimeSpanConverter;->toTimeSpanString(J)Ljava/lang/String;

    move-result-object p1

    return-object p1

    nop

    .array-data 1
    .end array-data
.end method
