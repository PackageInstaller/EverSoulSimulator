.class public final Lcom/liapp/o;
.super Ljava/lang/Object;
.source "\u06b3\u05ae\u0771\u066d\u06e9.java"


# static fields
.field public static final synthetic ۲ܭׯײٮ:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1192
    const-class v0, Lcom/liapp/x;

    const/4 v0, 0x1

    sput-boolean v0, Lcom/liapp/o;->۲ܭׯײٮ:Z

    return-void

    .array-data 1
    .end array-data
.end method

.method private synthetic constructor <init>()V
    .locals 0

    .line 1192
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void

    .array-data 1
    .end array-data
.end method

.method private static synthetic ۱٬ڱܯޫ(Ljava/lang/ClassLoader;Ljava/util/List;Ljava/io/File;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ClassLoader;",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;",
            "Ljava/io/File;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/NoSuchFieldException;
        }
    .end annotation

    .line 1199
    nop

    .line 1201
    const-string v0, "_OXGgG[\u001b"

    invoke-static {v0}, Lcom/liapp/p;->۱٬ڱܯޫ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/liapp/x;->۱٬ڱܯޫ(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 1202
    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 1203
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1206
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v0, v2, p2, v1, p0}, Lcom/liapp/o;->۱٬ڱܯޫ(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/io/File;Ljava/util/ArrayList;Ljava/lang/ClassLoader;)[Ljava/lang/Object;

    move-result-object p0

    .line 1207
    if-nez p0, :cond_0

    .line 1208
    const/4 p0, -0x1

    return p0

    .line 1211
    :cond_0
    const-string p1, "@@_aL@NABQ\u001c"

    invoke-static {p1}, Lcom/liapp/p;->۱٬ڱܯޫ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1, p0}, Lcom/liapp/x;->۱٬ڱܯޫ(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1212
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result p0

    const/4 p1, 0x0

    if-lez p0, :cond_4

    .line 1213
    sget-boolean p0, Lcom/liapp/o;->۲ܭׯײٮ:Z

    if-nez p0, :cond_2

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 1214
    :cond_2
    :goto_0
    const-string p0, "TTKuXTZUVEHcIAOBEBPU@t_SMA_YC_\u001c"

    invoke-static {p0}, Lcom/liapp/p;->۱٬ڱܯޫ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/liapp/x;->۱٬ڱܯޫ(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p0

    .line 1215
    invoke-virtual {p0, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Ljava/io/IOException;

    check-cast p2, [Ljava/io/IOException;

    .line 1216
    if-nez p2, :cond_3

    .line 1217
    new-array p2, p1, [Ljava/io/IOException;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Ljava/io/IOException;

    goto :goto_1

    .line 1219
    :cond_3
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    array-length v3, p2

    add-int/2addr v2, v3

    new-array v2, v2, [Ljava/io/IOException;

    .line 1220
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 1221
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    array-length v3, p2

    invoke-static {p2, p1, v2, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1222
    nop

    .line 1224
    move-object p2, v2

    :goto_1
    invoke-virtual {p0, v0, p2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1227
    :cond_4
    return p1

    .array-data 1
    .end array-data
.end method

.method private static synthetic ۱٬ڱܯޫ(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/io/File;Ljava/util/ArrayList;Ljava/lang/ClassLoader;)[Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/ArrayList<",
            "Ljava/io/File;",
            ">;",
            "Ljava/io/File;",
            "Ljava/util/ArrayList<",
            "Ljava/io/IOException;",
            ">;",
            "Ljava/lang/ClassLoader;",
            ")[",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1236
    nop

    .line 1239
    :try_start_0
    const-string v0, "M@HE`D_eDDFEBU\u001c"

    invoke-static {v0}, Lcom/liapp/p;->۱٬ڱܯޫ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/liapp/x;->۱٬ڱܯޫ(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 1240
    invoke-static {}, Lcom/liapp/x;->۱٬ڱܯޫ()I

    move-result v1

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x3

    const/4 v6, 0x4

    if-ne v1, v6, :cond_0

    .line 1241
    new-array v1, v6, [Ljava/lang/Object;

    aput-object p1, v1, v4

    aput-object p2, v1, v3

    aput-object p3, v1, v2

    aput-object p4, v1, v5

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/Object;

    check-cast p0, [Ljava/lang/Object;

    goto :goto_0

    .line 1244
    :cond_0
    new-array p4, v5, [Ljava/lang/Object;

    aput-object p1, p4, v4

    aput-object p2, p4, v3

    aput-object p3, p4, v2

    invoke-virtual {v0, p0, p4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/Object;

    check-cast p0, [Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1250
    goto :goto_0

    .line 1247
    :catchall_0
    move-exception p0

    const/4 p0, 0x0

    .line 1252
    :goto_0
    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static synthetic ݱزݴڭܩ(Ljava/lang/ClassLoader;Ljava/util/List;Ljava/io/File;)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/NoSuchFieldException;
        }
    .end annotation

    .line 1192
    invoke-static {p0, p1, p2}, Lcom/liapp/o;->۱٬ڱܯޫ(Ljava/lang/ClassLoader;Ljava/util/List;Ljava/io/File;)I

    move-result p0

    return p0

    nop

    .array-data 1
    .end array-data
.end method
