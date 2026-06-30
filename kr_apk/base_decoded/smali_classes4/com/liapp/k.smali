.class public final Lcom/liapp/k;
.super Ljava/lang/Object;
.source "\u05ad\u0773\u076e\u05b4\u0630.java"


# direct methods
.method private synthetic constructor <init>()V
    .locals 0

    .line 1296
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void

    .array-data 1
    .end array-data
.end method

.method public static synthetic ۱٬ڱܯޫ(Ljava/lang/ClassLoader;Ljava/util/List;)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 1296
    invoke-static {p0, p1}, Lcom/liapp/k;->ݱزݴڭܩ(Ljava/lang/ClassLoader;Ljava/util/List;)I

    move-result p0

    return p0

    nop

    .array-data 1
    .end array-data
.end method

.method private static synthetic ݱزݴڭܩ(Ljava/lang/ClassLoader;Ljava/util/List;)I
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ClassLoader;",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;)I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 1302
    nop

    .line 1308
    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 1309
    const-string v1, "_OX\u0007"

    invoke-static {v1}, Lcom/liapp/p;->۱٬ڱܯޫ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/liapp/x;->۱٬ڱܯޫ(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 1311
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1312
    new-array v3, v0, [Ljava/lang/String;

    .line 1313
    new-array v4, v0, [Ljava/io/File;

    .line 1314
    new-array v5, v0, [Ljava/util/zip/ZipFile;

    .line 1315
    new-array v0, v0, [Ldalvik/system/DexFile;

    .line 1317
    invoke-interface {p1}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/ListIterator;->hasNext()Z

    move-result v6

    const/4 v7, 0x0

    if-eqz v6, :cond_0

    .line 1318
    invoke-interface {p1}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/io/File;

    .line 1319
    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    .line 1320
    const/16 v9, 0x3a

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1321
    invoke-interface {p1}, Ljava/util/ListIterator;->previousIndex()I

    move-result v9

    .line 1322
    aput-object v8, v3, v9

    .line 1323
    aput-object v6, v4, v9

    .line 1324
    new-instance v10, Ljava/util/zip/ZipFile;

    invoke-direct {v10, v6}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;)V

    aput-object v10, v5, v9

    .line 1325
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v10, "\u0001JI\u0017"

    invoke-static {v10}, Lcom/liapp/p;->۱٬ڱܯޫ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v8, v6, v7}, Ldalvik/system/DexFile;->loadDex(Ljava/lang/String;Ljava/lang/String;I)Ldalvik/system/DexFile;

    move-result-object v6

    aput-object v6, v0, v9

    .line 1326
    goto :goto_0

    .line 1328
    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p0, p1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1330
    const-string p1, "FnMS\u001c"

    const-string v1, "FpA[\u001c"

    const-string v2, "CiDBO\u001c"

    const-string v6, "C\u007fLZB\u001c"

    invoke-static {v6}, Lcom/liapp/p;->۱٬ڱܯޫ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {p0, v6, v3}, Lcom/liapp/x;->۱٬ڱܯޫ(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1331
    invoke-static {v2}, Lcom/liapp/p;->۱٬ڱܯޫ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2, v4}, Lcom/liapp/x;->۱٬ڱܯޫ(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1332
    invoke-static {v1}, Lcom/liapp/p;->۱٬ڱܯޫ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1, v5}, Lcom/liapp/x;->۱٬ڱܯޫ(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1333
    invoke-static {p1}, Lcom/liapp/p;->۱٬ڱܯޫ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, v0}, Lcom/liapp/x;->۱٬ڱܯޫ(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1337
    return v7

    .line 1335
    :catchall_0
    move-exception p0

    .line 1336
    const/4 p0, -0x1

    .line 1339
    return p0

    .array-data 1
    .end array-data
.end method
