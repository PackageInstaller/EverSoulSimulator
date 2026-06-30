.class Lcom/singular/sdk/internal/SQLitePersistentQueue$SQLiteManager;
.super Ljava/lang/Object;
.source "SQLitePersistentQueue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/singular/sdk/internal/SQLitePersistentQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SQLiteManager"
.end annotation


# instance fields
.field private final helper:Lcom/singular/sdk/internal/SQLitePersistentQueue$SQLiteHelper;


# direct methods
.method constructor <init>(Lcom/singular/sdk/internal/SQLitePersistentQueue$SQLiteHelper;)V
    .locals 0

    .line 639
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 649
    iput-object p1, p0, Lcom/singular/sdk/internal/SQLitePersistentQueue$SQLiteManager;->helper:Lcom/singular/sdk/internal/SQLitePersistentQueue$SQLiteHelper;

    return-void

    .array-data 1
    .end array-data
.end method

.method private getCount(Landroid/database/sqlite/SQLiteDatabase;)J
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "SELECT COUNT(_id) FROM events"

    const/4 v1, 0x0

    .line 2379
    :try_start_0
    invoke-virtual {p1, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 2399
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    const/4 p1, 0x0

    .line 2419
    invoke-interface {v1, p1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 2429
    invoke-static {}, Lcom/singular/sdk/internal/SQLitePersistentQueue;->access$000()Lcom/singular/sdk/internal/SingularLog;

    move-result-object v0

    const-string v4, "getCount() = %d"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v5, p1

    invoke-virtual {v0, v4, v5}, Lcom/singular/sdk/internal/SingularLog;->debug(Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 2529
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_0
    return-wide v2

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 2479
    :try_start_1
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    if-eqz v1, :cond_1

    .line 2529
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 2549
    :cond_1
    throw p1

    .array-data 1
    .end array-data
.end method

.method private getMinId(Landroid/database/sqlite/SQLiteDatabase;)J
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "SELECT MIN(_id) FROM events"

    const/4 v1, 0x0

    .line 2119
    :try_start_0
    invoke-virtual {p1, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 2139
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    const/4 p1, 0x0

    .line 2159
    invoke-interface {v1, p1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 2169
    invoke-static {}, Lcom/singular/sdk/internal/SQLitePersistentQueue;->access$000()Lcom/singular/sdk/internal/SingularLog;

    move-result-object v0

    const-string v4, "getMinId() id = %d"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v5, p1

    invoke-virtual {v0, v4, v5}, Lcom/singular/sdk/internal/SingularLog;->debug(Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 2269
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_0
    return-wide v2

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 2219
    :try_start_1
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    if-eqz v1, :cond_1

    .line 2269
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 2289
    :cond_1
    throw p1

    .array-data 1
    .end array-data
.end method

.method private removeHead(Landroid/database/sqlite/SQLiteDatabase;)Ljava/lang/String;
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string/jumbo v0, "value"

    const/4 v1, 0x0

    .line 1659
    :try_start_0
    invoke-direct/range {p0 .. p1}, Lcom/singular/sdk/internal/SQLitePersistentQueue$SQLiteManager;->getMinId(Landroid/database/sqlite/SQLiteDatabase;)J

    move-result-wide v2

    .line 1679
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v6

    const-string v12, "_id = ?"

    const/4 v13, 0x1

    new-array v14, v13, [Ljava/lang/String;

    .line 1769
    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    const/4 v15, 0x0

    aput-object v4, v14, v15

    const-string v5, "events"

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v4, p1

    move-object v7, v12

    move-object v8, v14

    .line 1809
    invoke-virtual/range {v4 .. v11}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1829
    :try_start_1
    invoke-interface {v4}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1849
    invoke-interface {v4}, Landroid/database/Cursor;->getCount()I

    move-result v5
    :try_end_1
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v5, :cond_1

    if-eqz v4, :cond_0

    .line 2019
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    :cond_0
    return-object v1

    .line 1889
    :cond_1
    :try_start_2
    invoke-interface {v4, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "events"

    move-object/from16 v5, p1

    .line 1909
    invoke-virtual {v5, v1, v12, v14}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1919
    invoke-static {}, Lcom/singular/sdk/internal/SQLitePersistentQueue;->access$000()Lcom/singular/sdk/internal/SingularLog;

    move-result-object v1

    const-string v5, "removeHead() _id = %d"

    new-array v6, v13, [Ljava/lang/Object;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v6, v15

    invoke-virtual {v1, v5, v6}, Lcom/singular/sdk/internal/SingularLog;->debug(Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_2
    .catch Landroid/database/SQLException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v4, :cond_2

    .line 2019
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    :cond_2
    return-object v0

    :catchall_0
    move-exception v0

    move-object v1, v4

    goto :goto_1

    :catch_0
    move-exception v0

    move-object v1, v4

    goto :goto_0

    :catchall_1
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    .line 1969
    :goto_0
    :try_start_3
    new-instance v2, Ljava/io/IOException;

    invoke-direct {v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :goto_1
    if-eqz v1, :cond_3

    .line 2019
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 2039
    :cond_3
    throw v0

    nop

    .array-data 1
    .end array-data
.end method


# virtual methods
.method getHead()Ljava/lang/String;
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1059
    :try_start_0
    iget-object v1, p0, Lcom/singular/sdk/internal/SQLitePersistentQueue$SQLiteManager;->helper:Lcom/singular/sdk/internal/SQLitePersistentQueue$SQLiteHelper;

    invoke-virtual {v1}, Lcom/singular/sdk/internal/SQLitePersistentQueue$SQLiteHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1079
    :try_start_1
    invoke-direct {p0, v1}, Lcom/singular/sdk/internal/SQLitePersistentQueue$SQLiteManager;->getMinId(Landroid/database/sqlite/SQLiteDatabase;)J

    move-result-wide v10

    const-string/jumbo v2, "value"

    .line 1099
    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v4

    const-string v5, "_id = ?"

    const/4 v12, 0x1

    new-array v6, v12, [Ljava/lang/String;

    .line 1169
    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    const/4 v13, 0x0

    aput-object v2, v6, v13

    const-string v3, "events"

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v2, v1

    .line 1209
    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2
    :try_end_1
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1229
    :try_start_2
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1249
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v2, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1269
    :goto_0
    invoke-static {}, Lcom/singular/sdk/internal/SQLitePersistentQueue;->access$000()Lcom/singular/sdk/internal/SingularLog;

    move-result-object v3

    const-string v4, "getHead() _id = %d, value = %s"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v5, v13

    aput-object v0, v5, v12

    invoke-virtual {v3, v4, v5}, Lcom/singular/sdk/internal/SingularLog;->debug(Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_2
    .catch Landroid/database/SQLException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-eqz v2, :cond_1

    .line 1379
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_1
    if-eqz v1, :cond_2

    .line 1409
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_2
    return-object v0

    :catch_0
    move-exception v0

    goto :goto_1

    :catchall_0
    move-exception v2

    move-object v14, v2

    move-object v2, v0

    move-object v0, v14

    goto :goto_2

    :catch_1
    move-exception v2

    move-object v14, v2

    move-object v2, v0

    move-object v0, v14

    goto :goto_1

    :catchall_1
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    move-object v1, v2

    goto :goto_2

    :catch_2
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    move-object v1, v2

    .line 1329
    :goto_1
    :try_start_3
    new-instance v3, Ljava/io/IOException;

    invoke-direct {v3, v0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :catchall_2
    move-exception v0

    :goto_2
    if-eqz v2, :cond_3

    .line 1379
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_3
    if-eqz v1, :cond_4

    .line 1409
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 1429
    :cond_4
    throw v0

    .array-data 1
    .end array-data
.end method

.method insert(Ljava/lang/String;)J
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "insert() row = "

    .line 699
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v2, "value"

    .line 709
    invoke-virtual {v1, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 749
    :try_start_0
    iget-object v2, p0, Lcom/singular/sdk/internal/SQLitePersistentQueue$SQLiteManager;->helper:Lcom/singular/sdk/internal/SQLitePersistentQueue$SQLiteHelper;

    invoke-virtual {v2}, Lcom/singular/sdk/internal/SQLitePersistentQueue$SQLiteHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    const-string v3, "events"

    .line 759
    invoke-virtual {v2, v3, p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v3

    .line 769
    invoke-static {}, Lcom/singular/sdk/internal/SQLitePersistentQueue;->access$000()Lcom/singular/sdk/internal/SingularLog;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/singular/sdk/internal/SingularLog;->debug(Ljava/lang/String;)I

    .line 789
    invoke-direct {p0, v2}, Lcom/singular/sdk/internal/SQLitePersistentQueue$SQLiteManager;->getCount(Landroid/database/sqlite/SQLiteDatabase;)J

    move-result-wide v0

    const-wide/16 v5, 0x2710

    cmp-long p1, v0, v5

    if-lez p1, :cond_0

    .line 809
    invoke-static {}, Lcom/singular/sdk/internal/SQLitePersistentQueue;->access$000()Lcom/singular/sdk/internal/SingularLog;

    move-result-object p1

    const-string v5, "Pruning Queue; current size = %d; max size = %d"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const/4 v1, 0x0

    aput-object v0, v6, v1

    const/16 v0, 0x2710

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x1

    aput-object v0, v6, v1

    invoke-virtual {p1, v5, v6}, Lcom/singular/sdk/internal/SingularLog;->debug(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 829
    invoke-direct {p0, v2}, Lcom/singular/sdk/internal/SQLitePersistentQueue$SQLiteManager;->removeHead(Landroid/database/sqlite/SQLiteDatabase;)Ljava/lang/String;
    :try_end_1
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :cond_0
    if-eqz v2, :cond_1

    .line 949
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_1
    return-wide v3

    :catch_0
    move-exception p1

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v2, p1

    move-object p1, v0

    goto :goto_1

    :catch_1
    move-exception v0

    move-object v2, p1

    move-object p1, v0

    .line 899
    :goto_0
    :try_start_2
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception p1

    :goto_1
    if-eqz v2, :cond_2

    .line 949
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 969
    :cond_2
    throw p1

    nop

    .array-data 1
    .end array-data
.end method

.method removeHead()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1509
    :try_start_0
    iget-object v1, p0, Lcom/singular/sdk/internal/SQLitePersistentQueue$SQLiteManager;->helper:Lcom/singular/sdk/internal/SQLitePersistentQueue$SQLiteHelper;

    invoke-virtual {v1}, Lcom/singular/sdk/internal/SQLitePersistentQueue$SQLiteHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 1519
    invoke-direct {p0, v0}, Lcom/singular/sdk/internal/SQLitePersistentQueue$SQLiteManager;->removeHead(Landroid/database/sqlite/SQLiteDatabase;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 1569
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_0
    return-object v1

    :catchall_0
    move-exception v1

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 1589
    :cond_1
    throw v1

    .array-data 1
    .end array-data
.end method
