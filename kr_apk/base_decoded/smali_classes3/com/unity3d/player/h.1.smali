.class final Lcom/unity3d/player/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/play/core/assetpacks/AssetPackStateUpdateListener;


# instance fields
.field private a:Ljava/util/HashSet;

.field private b:Landroid/os/Looper;

.field final synthetic c:Lcom/unity3d/player/n;


# direct methods
.method public constructor <init>(Lcom/unity3d/player/n;Lcom/unity3d/player/IAssetPackManagerDownloadStatusCallback;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/unity3d/player/h;->c:Lcom/unity3d/player/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/unity3d/player/h;->a:Ljava/util/HashSet;

    invoke-virtual {p1, p2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iput-object p3, p0, Lcom/unity3d/player/h;->b:Landroid/os/Looper;

    return-void

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public final declared-synchronized a(Lcom/unity3d/player/IAssetPackManagerDownloadStatusCallback;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/unity3d/player/h;->a:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    nop

    .array-data 1
    .end array-data
.end method

.method public final onStateUpdate(Ljava/lang/Object;)V
    .locals 12

    check-cast p1, Lcom/google/android/play/core/assetpacks/AssetPackState;

    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Lcom/google/android/play/core/assetpacks/AssetPackState;->status()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/google/android/play/core/assetpacks/AssetPackState;->status()I

    move-result v0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/google/android/play/core/assetpacks/AssetPackState;->status()I

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    invoke-static {}, Lcom/unity3d/player/n;->-$$Nest$sfgetd()Lcom/unity3d/player/n;

    move-result-object v0

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v1, p0, Lcom/unity3d/player/h;->c:Lcom/unity3d/player/n;

    invoke-static {v1}, Lcom/unity3d/player/n;->-$$Nest$fgetb(Lcom/unity3d/player/n;)Ljava/util/HashSet;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/play/core/assetpacks/AssetPackState;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/unity3d/player/h;->c:Lcom/unity3d/player/n;

    invoke-static {v1}, Lcom/unity3d/player/n;->-$$Nest$fgetb(Lcom/unity3d/player/n;)Ljava/util/HashSet;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/HashSet;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/unity3d/player/h;->c:Lcom/unity3d/player/n;

    invoke-static {v1}, Lcom/unity3d/player/n;->-$$Nest$fgetc(Lcom/unity3d/player/n;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/unity3d/player/n;->a(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/unity3d/player/h;->c:Lcom/unity3d/player/n;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/unity3d/player/n;->-$$Nest$fputc(Lcom/unity3d/player/n;Ljava/lang/Object;)V

    :cond_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_2
    :try_start_2
    iget-object v0, p0, Lcom/unity3d/player/h;->a:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-nez v0, :cond_3

    :goto_0
    monitor-exit p0

    goto :goto_1

    :cond_3
    :try_start_3
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/unity3d/player/h;->b:Landroid/os/Looper;

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/unity3d/player/g;

    iget-object v2, p0, Lcom/unity3d/player/h;->a:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->clone()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Ljava/util/Set;

    invoke-virtual {p1}, Lcom/google/android/play/core/assetpacks/AssetPackState;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/google/android/play/core/assetpacks/AssetPackState;->status()I

    move-result v5

    invoke-virtual {p1}, Lcom/google/android/play/core/assetpacks/AssetPackState;->totalBytesToDownload()J

    move-result-wide v6

    invoke-virtual {p1}, Lcom/google/android/play/core/assetpacks/AssetPackState;->bytesDownloaded()J

    move-result-wide v8

    invoke-virtual {p1}, Lcom/google/android/play/core/assetpacks/AssetPackState;->transferProgressPercentage()I

    move-result v10

    invoke-virtual {p1}, Lcom/google/android/play/core/assetpacks/AssetPackState;->errorCode()I

    move-result v11

    move-object v2, v1

    invoke-direct/range {v2 .. v11}, Lcom/unity3d/player/g;-><init>(Ljava/util/Set;Ljava/lang/String;IJJII)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :goto_1
    return-void

    :catchall_0
    move-exception p1

    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1

    .array-data 1
    .end array-data
.end method
