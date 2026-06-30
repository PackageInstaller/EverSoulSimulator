.class Lcom/singular/sdk/internal/BatchManagerPersistenceSqlite$BatchManagerSQLiteHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "BatchManagerPersistenceSqlite.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/singular/sdk/internal/BatchManagerPersistenceSqlite;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BatchManagerSQLiteHelper"
.end annotation


# static fields
.field private static final COLUMN_NAME_KEY:Ljava/lang/String; = "eventKey"

.field private static final COLUMN_NAME_VALUE:Ljava/lang/String; = "value"

.field private static final COMMA_SEP:Ljava/lang/String; = ","

.field private static final DATABASE_NAME:Ljava/lang/String; = "singular-batch-managerx-1.db"

.field private static final DATABASE_VERSION:I = 0x1

.field private static final SQL_CREATE_ENTRIES:Ljava/lang/String; = "CREATE TABLE events (eventKey  TEXT PRIMARY KEY NOT NULL,value TEXT )"

.field private static final TABLE_NAME:Ljava/lang/String; = "events"

.field private static final TEXT_TYPE:Ljava/lang/String; = " TEXT"


# instance fields
.field private db:Landroid/database/sqlite/SQLiteDatabase;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    const-string v2, "singular-batch-managerx-1.db"

    .line 769
    invoke-direct {p0, p1, v2, v0, v1}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    return-void

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public declared-synchronized delete(Ljava/lang/String;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "SQLiteHelper.delete key: "

    monitor-enter p0

    .line 1789
    :try_start_0
    invoke-static {}, Lcom/singular/sdk/internal/BatchManagerPersistenceSqlite;->access$000()Lcom/singular/sdk/internal/SingularLog;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/singular/sdk/internal/SingularLog;->debug(Ljava/lang/String;)I

    .line 1799
    invoke-virtual {p0, p1}, Lcom/singular/sdk/internal/BatchManagerPersistenceSqlite$BatchManagerSQLiteHelper;->keyExists(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1809
    invoke-static {}, Lcom/singular/sdk/internal/BatchManagerPersistenceSqlite;->access$000()Lcom/singular/sdk/internal/SingularLog;

    move-result-object p1

    const-string v0, "SQLiteHelper.delete key does not exist - returning false "

    invoke-virtual {p1, v0}, Lcom/singular/sdk/internal/SingularLog;->debug(Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1819
    monitor-exit p0

    return v1

    .line 1849
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lcom/singular/sdk/internal/BatchManagerPersistenceSqlite$BatchManagerSQLiteHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/singular/sdk/internal/BatchManagerPersistenceSqlite$BatchManagerSQLiteHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "events"

    const-string v3, "eventKey =?"

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/String;

    aput-object p1, v5, v1

    .line 1859
    invoke-virtual {v0, v2, v3, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    if-eq p1, v4, :cond_2

    .line 1879
    invoke-static {}, Lcom/singular/sdk/internal/BatchManagerPersistenceSqlite;->access$000()Lcom/singular/sdk/internal/SingularLog;

    move-result-object p1

    const-string v0, "SQLiteHelper.delete failed "

    invoke-virtual {p1, v0}, Lcom/singular/sdk/internal/SingularLog;->debug(Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1959
    :try_start_2
    iget-object p1, p0, Lcom/singular/sdk/internal/BatchManagerPersistenceSqlite$BatchManagerSQLiteHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz p1, :cond_1

    .line 1969
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1889
    :cond_1
    monitor-exit p0

    return v1

    .line 1909
    :cond_2
    :try_start_3
    invoke-static {}, Lcom/singular/sdk/internal/BatchManagerPersistenceSqlite;->access$000()Lcom/singular/sdk/internal/SingularLog;

    move-result-object p1

    const-string v0, "SQLiteHelper.delete - success "

    invoke-virtual {p1, v0}, Lcom/singular/sdk/internal/SingularLog;->debug(Ljava/lang/String;)I
    :try_end_3
    .catch Landroid/database/SQLException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1959
    :try_start_4
    iget-object p1, p0, Lcom/singular/sdk/internal/BatchManagerPersistenceSqlite$BatchManagerSQLiteHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz p1, :cond_3

    .line 1969
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 1919
    :cond_3
    monitor-exit p0

    return v4

    :catchall_0
    move-exception p1

    goto :goto_0

    .line 1939
    :catch_0
    :try_start_5
    new-instance p1, Ljava/io/IOException;

    invoke-direct {p1}, Ljava/io/IOException;-><init>()V

    throw p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1959
    :goto_0
    :try_start_6
    iget-object v0, p0, Lcom/singular/sdk/internal/BatchManagerPersistenceSqlite$BatchManagerSQLiteHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_4

    .line 1969
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 1989
    :cond_4
    throw p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1

    nop

    .array-data 1
    .end array-data
.end method

.method public declared-synchronized getAll()Ljava/util/Set;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    monitor-enter p0

    .line 2029
    :try_start_0
    invoke-static {}, Lcom/singular/sdk/internal/BatchManagerPersistenceSqlite;->access$000()Lcom/singular/sdk/internal/SingularLog;

    move-result-object v0

    const-string v1, "SQLiteHelper.getAll"

    invoke-virtual {v0, v1}, Lcom/singular/sdk/internal/SingularLog;->debug(Ljava/lang/String;)I

    .line 2039
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    const/4 v1, 0x0

    .line 2069
    :try_start_1
    invoke-virtual {p0}, Lcom/singular/sdk/internal/BatchManagerPersistenceSqlite$BatchManagerSQLiteHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    iput-object v2, p0, Lcom/singular/sdk/internal/BatchManagerPersistenceSqlite$BatchManagerSQLiteHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "SELECT * FROM events"

    .line 2079
    invoke-virtual {v2, v3, v1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 2089
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-eqz v2, :cond_1

    .line 2099
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    :cond_0
    const-string v2, "eventKey"

    .line 2119
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "value"

    .line 2129
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 2139
    new-instance v4, Ljava/util/AbstractMap$SimpleEntry;

    invoke-direct {v4, v2, v3}, Ljava/util/AbstractMap$SimpleEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2149
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v2, :cond_0

    :cond_1
    if-eqz v1, :cond_2

    .line 2219
    :try_start_2
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 2239
    :cond_2
    iget-object v1, p0, Lcom/singular/sdk/internal/BatchManagerPersistenceSqlite$BatchManagerSQLiteHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v1, :cond_4

    .line 2249
    :goto_0
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_1

    :catchall_0
    move-exception v2

    .line 2179
    :try_start_3
    invoke-static {}, Lcom/singular/sdk/internal/BatchManagerPersistenceSqlite;->access$000()Lcom/singular/sdk/internal/SingularLog;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SQLiteHelper.getAll exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/singular/sdk/internal/SingularLog;->error(Ljava/lang/String;)I

    .line 2189
    invoke-static {}, Lcom/singular/sdk/internal/BatchManagerPersistenceSqlite;->access$000()Lcom/singular/sdk/internal/SingularLog;

    move-result-object v3

    invoke-static {v2}, Lcom/singular/sdk/internal/Utils;->formatException(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/singular/sdk/internal/SingularLog;->error(Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v1, :cond_3

    .line 2219
    :try_start_4
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 2239
    :cond_3
    iget-object v1, p0, Lcom/singular/sdk/internal/BatchManagerPersistenceSqlite$BatchManagerSQLiteHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v1, :cond_4

    goto :goto_0

    .line 2289
    :cond_4
    :goto_1
    invoke-static {}, Lcom/singular/sdk/internal/BatchManagerPersistenceSqlite;->access$000()Lcom/singular/sdk/internal/SingularLog;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SQLiteHelper.getAll returning: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " entries"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/singular/sdk/internal/SingularLog;->debug(Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 2299
    monitor-exit p0

    return-object v0

    :catchall_1
    move-exception v0

    if-eqz v1, :cond_5

    .line 2219
    :try_start_5
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 2239
    :cond_5
    iget-object v1, p0, Lcom/singular/sdk/internal/BatchManagerPersistenceSqlite$BatchManagerSQLiteHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v1, :cond_6

    .line 2249
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 2269
    :cond_6
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :catchall_2
    move-exception v0

    monitor-exit p0

    throw v0

    .array-data 1
    .end array-data
.end method

.method public declared-synchronized insert(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "SQLiteHelper.insert key: "

    monitor-enter p0

    .line 1219
    :try_start_0
    invoke-static {}, Lcom/singular/sdk/internal/BatchManagerPersistenceSqlite;->access$000()Lcom/singular/sdk/internal/SingularLog;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " value: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/singular/sdk/internal/SingularLog;->debug(Ljava/lang/String;)I

    .line 1229
    invoke-virtual {p0, p1}, Lcom/singular/sdk/internal/BatchManagerPersistenceSqlite$BatchManagerSQLiteHelper;->keyExists(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1239
    invoke-static {}, Lcom/singular/sdk/internal/BatchManagerPersistenceSqlite;->access$000()Lcom/singular/sdk/internal/SingularLog;

    move-result-object p1

    const-string p2, "SQLiteHelper.insert key already exists - returning false "

    invoke-virtual {p1, p2}, Lcom/singular/sdk/internal/SingularLog;->debug(Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 1249
    monitor-exit p0

    return v1

    :cond_0
    const/4 v0, 0x0

    .line 1289
    :try_start_1
    invoke-virtual {p0}, Lcom/singular/sdk/internal/BatchManagerPersistenceSqlite$BatchManagerSQLiteHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2
    :try_end_1
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1299
    :try_start_2
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    const-string v4, "eventKey"

    .line 1309
    invoke-virtual {v3, v4, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo p1, "value"

    .line 1319
    invoke-virtual {v3, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "events"

    .line 1329
    invoke-virtual {v2, p1, v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide p1

    const-wide/16 v3, -0x1

    cmp-long p1, p1, v3

    if-eqz p1, :cond_2

    .line 1349
    invoke-static {}, Lcom/singular/sdk/internal/BatchManagerPersistenceSqlite;->access$000()Lcom/singular/sdk/internal/SingularLog;

    move-result-object p1

    const-string p2, "SQLiteHelper.insert success "

    invoke-virtual {p1, p2}, Lcom/singular/sdk/internal/SingularLog;->debug(Ljava/lang/String;)I
    :try_end_2
    .catch Landroid/database/SQLException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v2, :cond_1

    .line 1439
    :try_start_3
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 1359
    :cond_1
    monitor-exit p0

    const/4 p1, 0x1

    return p1

    .line 1379
    :cond_2
    :try_start_4
    invoke-static {}, Lcom/singular/sdk/internal/BatchManagerPersistenceSqlite;->access$000()Lcom/singular/sdk/internal/SingularLog;

    move-result-object p1

    const-string p2, "SQLiteHelper.insert false "

    invoke-virtual {p1, p2}, Lcom/singular/sdk/internal/SingularLog;->debug(Ljava/lang/String;)I
    :try_end_4
    .catch Landroid/database/SQLException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v2, :cond_3

    .line 1439
    :try_start_5
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 1389
    :cond_3
    monitor-exit p0

    return v1

    :catchall_0
    move-exception p1

    move-object v0, v2

    goto :goto_1

    :catch_0
    move-exception p1

    move-object v0, v2

    goto :goto_0

    :catchall_1
    move-exception p1

    goto :goto_1

    :catch_1
    move-exception p1

    .line 1409
    :goto_0
    :try_start_6
    new-instance p2, Ljava/io/IOException;

    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw p2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :goto_1
    if-eqz v0, :cond_4

    .line 1439
    :try_start_7
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 1459
    :cond_4
    throw p1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :catchall_2
    move-exception p1

    monitor-exit p0

    throw p1

    nop

    .array-data 1
    .end array-data
.end method

.method public declared-synchronized keyExists(Ljava/lang/String;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "SQLiteHelper.keyExists: key: "

    monitor-enter p0

    .line 919
    :try_start_0
    invoke-static {}, Lcom/singular/sdk/internal/BatchManagerPersistenceSqlite;->access$000()Lcom/singular/sdk/internal/SingularLog;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/singular/sdk/internal/SingularLog;->debug(Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v0, 0x0

    .line 959
    :try_start_1
    invoke-virtual {p0}, Lcom/singular/sdk/internal/BatchManagerPersistenceSqlite$BatchManagerSQLiteHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    iput-object v1, p0, Lcom/singular/sdk/internal/BatchManagerPersistenceSqlite$BatchManagerSQLiteHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "SELECT * FROM events WHERE eventKey= ?"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    .line 969
    invoke-virtual {v1, v2, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 989
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result p1

    if-eqz p1, :cond_2

    .line 999
    invoke-static {}, Lcom/singular/sdk/internal/BatchManagerPersistenceSqlite;->access$000()Lcom/singular/sdk/internal/SingularLog;

    move-result-object p1

    const-string v1, "SQLiteHelper.keyExists: returning true "

    invoke-virtual {p1, v1}, Lcom/singular/sdk/internal/SingularLog;->debug(Ljava/lang/String;)I

    .line 1009
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_0

    .line 1119
    :try_start_2
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1149
    :cond_0
    iget-object p1, p0, Lcom/singular/sdk/internal/BatchManagerPersistenceSqlite$BatchManagerSQLiteHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz p1, :cond_1

    .line 1159
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1019
    :cond_1
    monitor-exit p0

    return v3

    .line 1049
    :cond_2
    :try_start_3
    invoke-static {}, Lcom/singular/sdk/internal/BatchManagerPersistenceSqlite;->access$000()Lcom/singular/sdk/internal/SingularLog;

    move-result-object p1

    const-string v1, "SQLiteHelper.keyExists: returning false "

    invoke-virtual {p1, v1}, Lcom/singular/sdk/internal/SingularLog;->debug(Ljava/lang/String;)I
    :try_end_3
    .catch Landroid/database/SQLException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v0, :cond_3

    .line 1119
    :try_start_4
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1149
    :cond_3
    iget-object p1, p0, Lcom/singular/sdk/internal/BatchManagerPersistenceSqlite$BatchManagerSQLiteHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz p1, :cond_4

    .line 1159
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 1059
    :cond_4
    monitor-exit p0

    return v5

    :catchall_0
    move-exception p1

    goto :goto_0

    .line 1089
    :catch_0
    :try_start_5
    new-instance p1, Ljava/io/IOException;

    invoke-direct {p1}, Ljava/io/IOException;-><init>()V

    throw p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :goto_0
    if-eqz v0, :cond_5

    .line 1119
    :try_start_6
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1149
    :cond_5
    iget-object v0, p0, Lcom/singular/sdk/internal/BatchManagerPersistenceSqlite$BatchManagerSQLiteHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_6

    .line 1159
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 1179
    :cond_6
    throw p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1

    nop

    .array-data 1
    .end array-data
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    const-string v0, "CREATE TABLE events (eventKey  TEXT PRIMARY KEY NOT NULL,value TEXT )"

    .line 829
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public declared-synchronized update(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "SQLiteHelper.update key: "

    monitor-enter p0

    .line 1499
    :try_start_0
    invoke-static {}, Lcom/singular/sdk/internal/BatchManagerPersistenceSqlite;->access$000()Lcom/singular/sdk/internal/SingularLog;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " value: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/singular/sdk/internal/SingularLog;->debug(Ljava/lang/String;)I

    .line 1509
    invoke-virtual {p0, p1}, Lcom/singular/sdk/internal/BatchManagerPersistenceSqlite$BatchManagerSQLiteHelper;->keyExists(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1519
    invoke-static {}, Lcom/singular/sdk/internal/BatchManagerPersistenceSqlite;->access$000()Lcom/singular/sdk/internal/SingularLog;

    move-result-object p1

    const-string p2, "SQLiteHelper.update: key does not exist - returning false "

    invoke-virtual {p1, p2}, Lcom/singular/sdk/internal/SingularLog;->debug(Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1529
    monitor-exit p0

    return v1

    .line 1559
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lcom/singular/sdk/internal/BatchManagerPersistenceSqlite$BatchManagerSQLiteHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/singular/sdk/internal/BatchManagerPersistenceSqlite$BatchManagerSQLiteHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    .line 1569
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v2, "eventKey"

    .line 1579
    invoke-virtual {v0, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo p1, "value"

    .line 1589
    invoke-virtual {v0, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1599
    iget-object p1, p0, Lcom/singular/sdk/internal/BatchManagerPersistenceSqlite$BatchManagerSQLiteHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string p2, "events"

    const/4 v2, 0x0

    invoke-virtual {p1, p2, v2, v0}, Landroid/database/sqlite/SQLiteDatabase;->replace(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide p1

    const-wide/16 v2, -0x1

    cmp-long p1, p1, v2

    if-eqz p1, :cond_2

    .line 1619
    invoke-static {}, Lcom/singular/sdk/internal/BatchManagerPersistenceSqlite;->access$000()Lcom/singular/sdk/internal/SingularLog;

    move-result-object p1

    const-string p2, "SQLiteHelper.update - success"

    invoke-virtual {p1, p2}, Lcom/singular/sdk/internal/SingularLog;->debug(Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1719
    :try_start_2
    iget-object p1, p0, Lcom/singular/sdk/internal/BatchManagerPersistenceSqlite$BatchManagerSQLiteHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz p1, :cond_1

    .line 1729
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1629
    :cond_1
    monitor-exit p0

    const/4 p1, 0x1

    return p1

    .line 1659
    :cond_2
    :try_start_3
    invoke-static {}, Lcom/singular/sdk/internal/BatchManagerPersistenceSqlite;->access$000()Lcom/singular/sdk/internal/SingularLog;

    move-result-object p1

    const-string p2, "SQLiteHelper.update - failed"

    invoke-virtual {p1, p2}, Lcom/singular/sdk/internal/SingularLog;->debug(Ljava/lang/String;)I
    :try_end_3
    .catch Landroid/database/SQLException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1719
    :try_start_4
    iget-object p1, p0, Lcom/singular/sdk/internal/BatchManagerPersistenceSqlite$BatchManagerSQLiteHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz p1, :cond_3

    .line 1729
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 1669
    :cond_3
    monitor-exit p0

    return v1

    :catchall_0
    move-exception p1

    goto :goto_0

    .line 1699
    :catch_0
    :try_start_5
    new-instance p1, Ljava/io/IOException;

    invoke-direct {p1}, Ljava/io/IOException;-><init>()V

    throw p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1719
    :goto_0
    :try_start_6
    iget-object p2, p0, Lcom/singular/sdk/internal/BatchManagerPersistenceSqlite$BatchManagerSQLiteHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz p2, :cond_4

    .line 1729
    invoke-virtual {p2}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 1749
    :cond_4
    throw p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1

    .array-data 1
    .end array-data
.end method
