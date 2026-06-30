.class public final Lcom/kakaogame/util/json/JSONValue;
.super Ljava/lang/Object;
.source "JSONValue.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0010\u0010\u0004\u001a\u00020\u00012\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0006J\u0012\u0010\u0004\u001a\u00020\u00012\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0008H\u0007J\u0012\u0010\t\u001a\u00020\u00082\u0008\u0010\n\u001a\u0004\u0018\u00010\u0001H\u0007J\u0012\u0010\u000b\u001a\u00020\u00082\u0008\u0010\n\u001a\u0004\u0018\u00010\u0001H\u0007J\u0014\u0010\u000c\u001a\u0004\u0018\u00010\u00082\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0008H\u0007J\u0018\u0010\u000c\u001a\u00020\r2\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010\u000e\u001a\u00020\u000fH\u0007\u00a8\u0006\u0010"
    }
    d2 = {
        "Lcom/kakaogame/util/json/JSONValue;",
        "",
        "<init>",
        "()V",
        "parse",
        "reader",
        "Ljava/io/Reader;",
        "s",
        "",
        "writeJSONString",
        "value",
        "toJSONString",
        "escape",
        "",
        "sb",
        "Ljava/lang/StringBuffer;",
        "common-kakaogames_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final INSTANCE:Lcom/kakaogame/util/json/JSONValue;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/kakaogame/util/json/JSONValue;

    invoke-direct {v0}, Lcom/kakaogame/util/json/JSONValue;-><init>()V

    sput-object v0, Lcom/kakaogame/util/json/JSONValue;->INSTANCE:Lcom/kakaogame/util/json/JSONValue;

    return-void

    .array-data 1
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .line 199
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void

    .array-data 1
    .end array-data
.end method

.method public static final escape(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1359
    :cond_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 1369
    invoke-static {p0, v0}, Lcom/kakaogame/util/json/JSONValue;->escape(Ljava/lang/String;Ljava/lang/StringBuffer;)V

    .line 1379
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static final escape(Ljava/lang/String;Ljava/lang/StringBuffer;)V
    .locals 6
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const v0, 0x6d034898

    invoke-static {v0}, Lcom/liapp/y;->ٱڳܴڭܩ(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const v0, 0x5d1e718f

    invoke-static {v0}, Lcom/liapp/y;->ڴݮگ֮ت(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1469
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_b

    .line 1489
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0xc

    if-eq v3, v4, :cond_a

    const/16 v4, 0xd

    if-eq v3, v4, :cond_9

    const/16 v4, 0x22

    if-eq v3, v4, :cond_8

    const/16 v4, 0x2f

    if-eq v3, v4, :cond_7

    const/16 v4, 0x5c

    if-eq v3, v4, :cond_6

    packed-switch v3, :pswitch_data_0

    const/4 v4, 0x1

    if-ltz v3, :cond_0

    const/16 v5, 0x20

    if-ge v3, v5, :cond_0

    move v5, v4

    goto :goto_1

    :cond_0
    move v5, v1

    :goto_1
    if-nez v5, :cond_4

    const/16 v5, 0x7f

    if-gt v5, v3, :cond_1

    const/16 v5, 0xa0

    if-ge v3, v5, :cond_1

    move v5, v4

    goto :goto_2

    :cond_1
    move v5, v1

    :goto_2
    if-nez v5, :cond_4

    const/16 v5, 0x2000

    if-gt v5, v3, :cond_2

    const/16 v5, 0x2100

    if-ge v3, v5, :cond_2

    goto :goto_3

    :cond_2
    move v4, v1

    :goto_3
    if-eqz v4, :cond_3

    goto :goto_4

    .line 1699
    :cond_3
    invoke-virtual {p1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto/16 :goto_6

    .line 1609
    :cond_4
    :goto_4
    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    const v4, 0x54375a6a

    invoke-static {v4}, Lcom/liapp/y;->׳ֳֳ֬د(I)Ljava/lang/String;

    move-result-object v4

    .line 1619
    invoke-virtual {p1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move v4, v1

    .line 1639
    :goto_5
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    rsub-int/lit8 v5, v5, 0x4

    if-ge v4, v5, :cond_5

    const/16 v5, 0x30

    .line 1649
    invoke-virtual {p1, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    .line 1679
    :cond_5
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    sget-object v4, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v3, v4}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    const v4, 0x543764da

    invoke-static {v4}, Lcom/liapp/y;->׳ֳֳ֬د(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_6

    :pswitch_0
    const v3, 0x5d1e704f

    invoke-static {v3}, Lcom/liapp/y;->ڴݮگ֮ت(I)Ljava/lang/String;

    move-result-object v3

    .line 1539
    invoke-virtual {p1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_6

    :pswitch_1
    const v3, -0x224c905c

    invoke-static {v3}, Lcom/liapp/y;->״دش۲ݮ(I)Ljava/lang/String;

    move-result-object v3

    .line 1559
    invoke-virtual {p1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_6

    :pswitch_2
    const v3, 0x225b508e

    invoke-static {v3}, Lcom/liapp/y;->ֲֳگܱޭ(I)Ljava/lang/String;

    move-result-object v3

    .line 1519
    invoke-virtual {p1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_6

    :cond_6
    const v3, -0x224c901c

    invoke-static {v3}, Lcom/liapp/y;->״دش۲ݮ(I)Ljava/lang/String;

    move-result-object v3

    .line 1509
    invoke-virtual {p1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_6

    :cond_7
    const v3, 0x54375b0a

    invoke-static {v3}, Lcom/liapp/y;->׳ֳֳ֬د(I)Ljava/lang/String;

    move-result-object v3

    .line 1569
    invoke-virtual {p1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_6

    :cond_8
    const v3, 0x54375b2a

    invoke-static {v3}, Lcom/liapp/y;->׳ֳֳ֬د(I)Ljava/lang/String;

    move-result-object v3

    .line 1499
    invoke-virtual {p1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_6

    :cond_9
    const v3, 0x336cfd0b

    invoke-static {v3}, Lcom/liapp/y;->ׯ״ٲ֬ب(I)Ljava/lang/String;

    move-result-object v3

    .line 1549
    invoke-virtual {p1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_6

    :cond_a
    const v3, 0x7d7e5945

    invoke-static {v3}, Lcom/liapp/y;->حֲݴܳޯ(I)Ljava/lang/String;

    move-result-object v3

    .line 1529
    invoke-virtual {p1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_6
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_b
    return-void

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .array-data 1
    .end array-data
.end method

.method public static final parse(Ljava/lang/String;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/kakaogame/util/json/parser/ParseException;
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 419
    new-instance v0, Lcom/kakaogame/util/json/parser/JSONParser;

    invoke-direct {v0}, Lcom/kakaogame/util/json/parser/JSONParser;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x2

    .line 429
    invoke-static {v0, p0, v1, v2, v1}, Lcom/kakaogame/util/json/parser/JSONParser;->parse$default(Lcom/kakaogame/util/json/parser/JSONParser;Ljava/lang/String;Lcom/kakaogame/util/json/parser/ContainerFactory;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .array-data 1
    .end array-data
.end method

.method public static final toJSONString(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 1189
    :try_start_0
    invoke-static {p0}, Lcom/kakaogame/util/json/JSONValue;->writeJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 1219
    new-instance v0, Ljava/lang/RuntimeException;

    check-cast p0, Ljava/lang/Throwable;

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .array-data 1
    .end array-data
.end method

.method public static final writeJSONString(Ljava/lang/Object;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 669
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    const v1, 0x7d76b075

    invoke-static {v1}, Lcom/liapp/y;->حֲݴܳޯ(I)Ljava/lang/String;

    move-result-object v1

    if-nez p0, :cond_0

    .line 689
    invoke-virtual {v0, v1}, Ljava/io/StringWriter;->write(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 699
    :cond_0
    instance-of v2, p0, Ljava/lang/String;

    if-eqz v2, :cond_1

    const/16 v1, 0x22

    .line 709
    invoke-virtual {v0, v1}, Ljava/io/StringWriter;->write(I)V

    .line 719
    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Lcom/kakaogame/util/json/JSONValue;->escape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/io/StringWriter;->write(Ljava/lang/String;)V

    .line 729
    invoke-virtual {v0, v1}, Ljava/io/StringWriter;->write(I)V

    goto/16 :goto_2

    .line 749
    :cond_1
    instance-of v2, p0, Ljava/lang/Double;

    if-eqz v2, :cond_4

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {p0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/io/StringWriter;->write(Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_3
    :goto_0
    invoke-virtual {v0, v1}, Ljava/io/StringWriter;->write(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 759
    :cond_4
    instance-of v2, p0, Ljava/lang/Float;

    if-eqz v2, :cond_7

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->floatValue()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->isInfinite(F)Z

    move-result v2

    if-nez v2, :cond_6

    invoke-virtual {p0}, Ljava/lang/Number;->floatValue()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    if-eqz v2, :cond_5

    goto :goto_1

    :cond_5
    invoke-virtual {p0}, Ljava/lang/Number;->floatValue()F

    move-result p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/io/StringWriter;->write(Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_6
    :goto_1
    invoke-virtual {v0, v1}, Ljava/io/StringWriter;->write(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 769
    :cond_7
    instance-of v1, p0, Ljava/lang/Number;

    if-eqz v1, :cond_8

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/io/StringWriter;->write(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 779
    :cond_8
    instance-of v1, p0, Ljava/lang/Boolean;

    if-eqz v1, :cond_9

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/io/StringWriter;->write(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 789
    :cond_9
    instance-of v1, p0, Ljava/util/Map;

    if-eqz v1, :cond_a

    sget-object v1, Lcom/kakaogame/util/json/JSONObject;->Companion:Lcom/kakaogame/util/json/JSONObject$Companion;

    check-cast p0, Ljava/util/Map;

    invoke-virtual {v1, p0}, Lcom/kakaogame/util/json/JSONObject$Companion;->writeJSONString(Ljava/util/Map;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/io/StringWriter;->write(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 799
    :cond_a
    instance-of v1, p0, Ljava/util/Collection;

    if-eqz v1, :cond_b

    sget-object v1, Lcom/kakaogame/util/json/JSONArray;->Companion:Lcom/kakaogame/util/json/JSONArray$Companion;

    check-cast p0, Ljava/util/Collection;

    invoke-virtual {v1, p0}, Lcom/kakaogame/util/json/JSONArray$Companion;->writeJSONString(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/io/StringWriter;->write(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 809
    :cond_b
    instance-of v1, p0, [B

    if-eqz v1, :cond_c

    sget-object v1, Lcom/kakaogame/util/json/JSONArray;->Companion:Lcom/kakaogame/util/json/JSONArray$Companion;

    check-cast p0, [B

    invoke-virtual {v1, p0}, Lcom/kakaogame/util/json/JSONArray$Companion;->writeJSONString([B)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/io/StringWriter;->write(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 819
    :cond_c
    instance-of v1, p0, [S

    if-eqz v1, :cond_d

    sget-object v1, Lcom/kakaogame/util/json/JSONArray;->Companion:Lcom/kakaogame/util/json/JSONArray$Companion;

    check-cast p0, [S

    invoke-virtual {v1, p0}, Lcom/kakaogame/util/json/JSONArray$Companion;->writeJSONString([S)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/io/StringWriter;->write(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 829
    :cond_d
    instance-of v1, p0, [I

    if-eqz v1, :cond_e

    sget-object v1, Lcom/kakaogame/util/json/JSONArray;->Companion:Lcom/kakaogame/util/json/JSONArray$Companion;

    check-cast p0, [I

    invoke-virtual {v1, p0}, Lcom/kakaogame/util/json/JSONArray$Companion;->writeJSONString([I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/io/StringWriter;->write(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 839
    :cond_e
    instance-of v1, p0, [J

    if-eqz v1, :cond_f

    sget-object v1, Lcom/kakaogame/util/json/JSONArray;->Companion:Lcom/kakaogame/util/json/JSONArray$Companion;

    check-cast p0, [J

    invoke-virtual {v1, p0}, Lcom/kakaogame/util/json/JSONArray$Companion;->writeJSONString([J)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/io/StringWriter;->write(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 849
    :cond_f
    instance-of v1, p0, [F

    if-eqz v1, :cond_10

    sget-object v1, Lcom/kakaogame/util/json/JSONArray;->Companion:Lcom/kakaogame/util/json/JSONArray$Companion;

    check-cast p0, [F

    invoke-virtual {v1, p0}, Lcom/kakaogame/util/json/JSONArray$Companion;->writeJSONString([F)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/io/StringWriter;->write(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 859
    :cond_10
    instance-of v1, p0, [D

    if-eqz v1, :cond_11

    sget-object v1, Lcom/kakaogame/util/json/JSONArray;->Companion:Lcom/kakaogame/util/json/JSONArray$Companion;

    check-cast p0, [D

    invoke-virtual {v1, p0}, Lcom/kakaogame/util/json/JSONArray$Companion;->writeJSONString([D)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/io/StringWriter;->write(Ljava/lang/String;)V

    goto :goto_2

    .line 869
    :cond_11
    instance-of v1, p0, [Z

    if-eqz v1, :cond_12

    sget-object v1, Lcom/kakaogame/util/json/JSONArray;->Companion:Lcom/kakaogame/util/json/JSONArray$Companion;

    check-cast p0, [Z

    invoke-virtual {v1, p0}, Lcom/kakaogame/util/json/JSONArray$Companion;->writeJSONString([Z)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/io/StringWriter;->write(Ljava/lang/String;)V

    goto :goto_2

    .line 879
    :cond_12
    instance-of v1, p0, [C

    if-eqz v1, :cond_13

    sget-object v1, Lcom/kakaogame/util/json/JSONArray;->Companion:Lcom/kakaogame/util/json/JSONArray$Companion;

    check-cast p0, [C

    invoke-virtual {v1, p0}, Lcom/kakaogame/util/json/JSONArray$Companion;->writeJSONString([C)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/io/StringWriter;->write(Ljava/lang/String;)V

    goto :goto_2

    .line 889
    :cond_13
    instance-of v1, p0, [Ljava/lang/Object;

    if-eqz v1, :cond_14

    sget-object v1, Lcom/kakaogame/util/json/JSONArray;->Companion:Lcom/kakaogame/util/json/JSONArray$Companion;

    check-cast p0, [Ljava/lang/Object;

    invoke-virtual {v1, p0}, Lcom/kakaogame/util/json/JSONArray$Companion;->writeJSONString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/io/StringWriter;->write(Ljava/lang/String;)V

    goto :goto_2

    .line 899
    :cond_14
    instance-of v1, p0, Lcom/kakaogame/util/json/JSONStreamAware;

    if-eqz v1, :cond_15

    check-cast p0, Lcom/kakaogame/util/json/JSONStreamAware;

    invoke-interface {p0}, Lcom/kakaogame/util/json/JSONStreamAware;->writeJSONString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/io/StringWriter;->write(Ljava/lang/String;)V

    goto :goto_2

    .line 909
    :cond_15
    instance-of v1, p0, Lcom/kakaogame/util/json/JSONAware;

    if-eqz v1, :cond_16

    check-cast p0, Lcom/kakaogame/util/json/JSONAware;

    invoke-interface {p0}, Lcom/kakaogame/util/json/JSONAware;->toJSONString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/io/StringWriter;->write(Ljava/lang/String;)V

    goto :goto_2

    .line 919
    :cond_16
    instance-of v1, p0, Ljava/lang/Enum;

    if-eqz v1, :cond_17

    check-cast p0, Ljava/lang/Enum;

    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/io/StringWriter;->write(Ljava/lang/String;)V

    goto :goto_2

    .line 929
    :cond_17
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/io/StringWriter;->write(Ljava/lang/String;)V

    .line 949
    :goto_2
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object p0

    const v0, -0x451e20f7

    invoke-static {v0}, Lcom/liapp/y;->ڳݬ٬ۮݪ(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public final parse(Ljava/io/Reader;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/kakaogame/util/json/parser/ParseException;
        }
    .end annotation

    .line 349
    new-instance v0, Lcom/kakaogame/util/json/parser/JSONParser;

    invoke-direct {v0}, Lcom/kakaogame/util/json/parser/JSONParser;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x2

    .line 359
    invoke-static {v0, p1, v1, v2, v1}, Lcom/kakaogame/util/json/parser/JSONParser;->parse$default(Lcom/kakaogame/util/json/parser/JSONParser;Ljava/io/Reader;Lcom/kakaogame/util/json/parser/ContainerFactory;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .array-data 1
    .end array-data
.end method
