.class public Lcom/singular/sdk/internal/BatchManagerPersistenceSqlite;
.super Ljava/lang/Object;
.source "BatchManagerPersistenceSqlite.java"

# interfaces
.implements Lcom/singular/sdk/internal/BatchManagerPersistence;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/singular/sdk/internal/BatchManagerPersistenceSqlite$BatchManagerSQLiteHelper;
    }
.end annotation


# static fields
.field private static final logger:Lcom/singular/sdk/internal/SingularLog;


# instance fields
.field private context:Landroid/content/Context;

.field private helper:Lcom/singular/sdk/internal/BatchManagerPersistenceSqlite$BatchManagerSQLiteHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "BatchManagerPersistenceSqlite"

    .line 229
    invoke-static {v0}, Lcom/singular/sdk/internal/SingularLog;->getLogger(Ljava/lang/String;)Lcom/singular/sdk/internal/SingularLog;

    move-result-object v0

    sput-object v0, Lcom/singular/sdk/internal/BatchManagerPersistenceSqlite;->logger:Lcom/singular/sdk/internal/SingularLog;

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 279
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 289
    new-instance v0, Lcom/singular/sdk/internal/BatchManagerPersistenceSqlite$BatchManagerSQLiteHelper;

    invoke-direct {v0, p1}, Lcom/singular/sdk/internal/BatchManagerPersistenceSqlite$BatchManagerSQLiteHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/singular/sdk/internal/BatchManagerPersistenceSqlite;->helper:Lcom/singular/sdk/internal/BatchManagerPersistenceSqlite$BatchManagerSQLiteHelper;

    .line 299
    iput-object p1, p0, Lcom/singular/sdk/internal/BatchManagerPersistenceSqlite;->context:Landroid/content/Context;

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method static synthetic access$000()Lcom/singular/sdk/internal/SingularLog;
    .locals 1

    .line 219
    sget-object v0, Lcom/singular/sdk/internal/BatchManagerPersistenceSqlite;->logger:Lcom/singular/sdk/internal/SingularLog;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public declared-synchronized addEvent(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "addEvent: key: "

    monitor-enter p0

    .line 349
    :try_start_0
    sget-object v1, Lcom/singular/sdk/internal/BatchManagerPersistenceSqlite;->logger:Lcom/singular/sdk/internal/SingularLog;

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

    .line 359
    iget-object v0, p0, Lcom/singular/sdk/internal/BatchManagerPersistenceSqlite;->helper:Lcom/singular/sdk/internal/BatchManagerPersistenceSqlite$BatchManagerSQLiteHelper;

    invoke-virtual {v0, p1, p2}, Lcom/singular/sdk/internal/BatchManagerPersistenceSqlite$BatchManagerSQLiteHelper;->insert(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    .array-data 1
    .end array-data
.end method

.method public declared-synchronized deleteEvent(Ljava/lang/String;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "deleteEvent: key: "

    monitor-enter p0

    .line 549
    :try_start_0
    sget-object v1, Lcom/singular/sdk/internal/BatchManagerPersistenceSqlite;->logger:Lcom/singular/sdk/internal/SingularLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/singular/sdk/internal/SingularLog;->debug(Ljava/lang/String;)I

    .line 559
    iget-object v0, p0, Lcom/singular/sdk/internal/BatchManagerPersistenceSqlite;->helper:Lcom/singular/sdk/internal/BatchManagerPersistenceSqlite$BatchManagerSQLiteHelper;

    invoke-virtual {v0, p1}, Lcom/singular/sdk/internal/BatchManagerPersistenceSqlite$BatchManagerSQLiteHelper;->delete(Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    .array-data 1
    .end array-data
.end method

.method public declared-synchronized getAllEvents()Ljava/util/Set;
    .locals 4
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

    const-string v0, "getAllEvents: returning "

    monitor-enter p0

    .line 469
    :try_start_0
    sget-object v1, Lcom/singular/sdk/internal/BatchManagerPersistenceSqlite;->logger:Lcom/singular/sdk/internal/SingularLog;

    const-string v2, "getAllEvents"

    invoke-virtual {v1, v2}, Lcom/singular/sdk/internal/SingularLog;->debug(Ljava/lang/String;)I

    .line 479
    iget-object v2, p0, Lcom/singular/sdk/internal/BatchManagerPersistenceSqlite;->helper:Lcom/singular/sdk/internal/BatchManagerPersistenceSqlite$BatchManagerSQLiteHelper;

    invoke-virtual {v2}, Lcom/singular/sdk/internal/BatchManagerPersistenceSqlite$BatchManagerSQLiteHelper;->getAll()Ljava/util/Set;

    move-result-object v2

    .line 489
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " events"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/singular/sdk/internal/SingularLog;->debug(Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 499
    monitor-exit p0

    return-object v2

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    nop

    .array-data 1
    .end array-data
.end method

.method public declared-synchronized getSendId()J
    .locals 2

    monitor-enter p0

    .line 2359
    :try_start_0
    iget-object v0, p0, Lcom/singular/sdk/internal/BatchManagerPersistenceSqlite;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/singular/sdk/internal/Utils;->getBatchSendId(Landroid/content/Context;)J

    move-result-wide v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .array-data 1
    .end array-data
.end method

.method public declared-synchronized incSendId()J
    .locals 2

    monitor-enter p0

    .line 2409
    :try_start_0
    iget-object v0, p0, Lcom/singular/sdk/internal/BatchManagerPersistenceSqlite;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/singular/sdk/internal/Utils;->incBatchSendId(Landroid/content/Context;)J

    move-result-wide v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .array-data 1
    .end array-data
.end method

.method public declared-synchronized updateEvent(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string/jumbo v0, "updateEvent: key: "

    monitor-enter p0

    .line 409
    :try_start_0
    sget-object v1, Lcom/singular/sdk/internal/BatchManagerPersistenceSqlite;->logger:Lcom/singular/sdk/internal/SingularLog;

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

    .line 419
    iget-object v0, p0, Lcom/singular/sdk/internal/BatchManagerPersistenceSqlite;->helper:Lcom/singular/sdk/internal/BatchManagerPersistenceSqlite$BatchManagerSQLiteHelper;

    invoke-virtual {v0, p1, p2}, Lcom/singular/sdk/internal/BatchManagerPersistenceSqlite$BatchManagerSQLiteHelper;->update(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    nop

    .array-data 1
    .end array-data
.end method
