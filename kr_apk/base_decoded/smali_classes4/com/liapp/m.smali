.class public final Lcom/liapp/m;
.super Ljava/lang/Object;
.source "\u05b1\u05b2\u0771\u06af\u072b.java"


# direct methods
.method private synthetic constructor <init>()V
    .locals 0

    .line 1256
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void

    .array-data 1
    .end array-data
.end method

.method private static synthetic ۱٬ڱܯޫ(Ljava/lang/ClassLoader;Ljava/util/List;Ljava/io/File;)I
    .locals 1
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
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1263
    nop

    .line 1265
    const-string v0, "_OXGgG[\u001b"

    invoke-static {v0}, Lcom/liapp/p;->۱٬ڱܯޫ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/liapp/x;->۱٬ڱܯޫ(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 1266
    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 1269
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {p0, v0, p2}, Lcom/liapp/m;->۱٬ڱܯޫ(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/io/File;)[Ljava/lang/Object;

    move-result-object p1

    .line 1270
    if-nez p1, :cond_0

    .line 1271
    const/4 p0, -0x1

    return p0

    .line 1274
    :cond_0
    const-string p2, "@@_aL@NABQ\u001c"

    invoke-static {p2}, Lcom/liapp/p;->۱٬ڱܯޫ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p2, p1}, Lcom/liapp/x;->۱٬ڱܯޫ(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1276
    const/4 p0, 0x0

    return p0

    nop

    .array-data 1
    .end array-data
.end method

.method private static synthetic ۱٬ڱܯޫ(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/io/File;)[Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/ArrayList<",
            "Ljava/io/File;",
            ">;",
            "Ljava/io/File;",
            ")[",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1283
    nop

    .line 1285
    :try_start_0
    const-string v0, "M@HE`D_eDDFEBU\u001c"

    invoke-static {v0}, Lcom/liapp/p;->۱٬ڱܯޫ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/liapp/x;->۱٬ڱܯޫ(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 1286
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 p1, 0x1

    aput-object p2, v1, p1

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/Object;

    check-cast p0, [Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1290
    return-object p0

    .line 1288
    :catchall_0
    move-exception p0

    .line 1292
    const/4 p0, 0x0

    return-object p0

    .array-data 1
    .end array-data
.end method

.method public static synthetic ݱزݴڭܩ(Ljava/lang/ClassLoader;Ljava/util/List;Ljava/io/File;)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1256
    invoke-static {p0, p1, p2}, Lcom/liapp/m;->۱٬ڱܯޫ(Ljava/lang/ClassLoader;Ljava/util/List;Ljava/io/File;)I

    move-result p0

    return p0

    nop

    .array-data 1
    .end array-data
.end method
