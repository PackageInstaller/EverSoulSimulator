.class final Lcom/unity3d/player/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/tasks/OnCompleteListener;


# instance fields
.field private a:Lcom/unity3d/player/IAssetPackManagerDownloadStatusCallback;

.field private b:Landroid/os/Looper;

.field private c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/unity3d/player/IAssetPackManagerDownloadStatusCallback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/unity3d/player/k;->a:Lcom/unity3d/player/IAssetPackManagerDownloadStatusCallback;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p2

    iput-object p2, p0, Lcom/unity3d/player/k;->b:Landroid/os/Looper;

    iput-object p1, p0, Lcom/unity3d/player/k;->c:Ljava/lang/String;

    return-void

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public final onComplete(Lcom/google/android/gms/tasks/Task;)V
    .locals 18

    move-object/from16 v1, p0

    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/tasks/Task;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/play/core/assetpacks/AssetPackStates;
    :try_end_0
    .catch Lcom/google/android/gms/tasks/RuntimeExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {v0}, Lcom/google/android/play/core/assetpacks/AssetPackStates;->packStates()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v3

    if-nez v3, :cond_0

    return-void

    :cond_0
    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/play/core/assetpacks/AssetPackState;

    invoke-virtual {v3}, Lcom/google/android/play/core/assetpacks/AssetPackState;->errorCode()I

    move-result v4

    const/4 v5, 0x4

    if-nez v4, :cond_3

    invoke-virtual {v3}, Lcom/google/android/play/core/assetpacks/AssetPackState;->status()I

    move-result v4

    if-eq v4, v5, :cond_3

    invoke-virtual {v3}, Lcom/google/android/play/core/assetpacks/AssetPackState;->status()I

    move-result v4

    const/4 v6, 0x5

    if-eq v4, v6, :cond_3

    invoke-virtual {v3}, Lcom/google/android/play/core/assetpacks/AssetPackState;->status()I

    move-result v4

    if-nez v4, :cond_1

    goto :goto_2

    :cond_1
    invoke-static {}, Lcom/unity3d/player/n;->-$$Nest$sfgetd()Lcom/unity3d/player/n;

    move-result-object v4

    invoke-virtual {v3}, Lcom/google/android/play/core/assetpacks/AssetPackState;->name()Ljava/lang/String;

    move-result-object v3

    iget-object v5, v1, Lcom/unity3d/player/k;->a:Lcom/unity3d/player/IAssetPackManagerDownloadStatusCallback;

    iget-object v6, v1, Lcom/unity3d/player/k;->b:Landroid/os/Looper;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/unity3d/player/n;->-$$Nest$sfgetd()Lcom/unity3d/player/n;

    move-result-object v7

    monitor-enter v7

    :try_start_1
    invoke-static {v4}, Lcom/unity3d/player/n;->-$$Nest$fgetc(Lcom/unity3d/player/n;)Ljava/lang/Object;

    move-result-object v8

    if-nez v8, :cond_2

    new-instance v8, Lcom/unity3d/player/h;

    invoke-direct {v8, v4, v5, v6}, Lcom/unity3d/player/h;-><init>(Lcom/unity3d/player/n;Lcom/unity3d/player/IAssetPackManagerDownloadStatusCallback;Landroid/os/Looper;)V

    invoke-static {v4}, Lcom/unity3d/player/n;->-$$Nest$fgeta(Lcom/unity3d/player/n;)Lcom/google/android/play/core/assetpacks/AssetPackManager;

    move-result-object v5

    invoke-interface {v5, v8}, Lcom/google/android/play/core/assetpacks/AssetPackManager;->registerListener(Lcom/google/android/play/core/assetpacks/AssetPackStateUpdateListener;)V

    invoke-static {v4, v8}, Lcom/unity3d/player/n;->-$$Nest$fputc(Lcom/unity3d/player/n;Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    check-cast v8, Lcom/unity3d/player/h;

    invoke-virtual {v8, v5}, Lcom/unity3d/player/h;->a(Lcom/unity3d/player/IAssetPackManagerDownloadStatusCallback;)V

    :goto_1
    invoke-static {v4}, Lcom/unity3d/player/n;->-$$Nest$fgetb(Lcom/unity3d/player/n;)Ljava/util/HashSet;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    invoke-static {v4}, Lcom/unity3d/player/n;->-$$Nest$fgeta(Lcom/unity3d/player/n;)Lcom/google/android/play/core/assetpacks/AssetPackManager;

    move-result-object v4

    invoke-static {v3}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v4, v3}, Lcom/google/android/play/core/assetpacks/AssetPackManager;->fetch(Ljava/util/List;)Lcom/google/android/gms/tasks/Task;

    monitor-exit v7

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_3
    :goto_2
    invoke-virtual {v3}, Lcom/google/android/play/core/assetpacks/AssetPackState;->name()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3}, Lcom/google/android/play/core/assetpacks/AssetPackState;->status()I

    move-result v11

    invoke-virtual {v3}, Lcom/google/android/play/core/assetpacks/AssetPackState;->errorCode()I

    move-result v17

    invoke-virtual {v0}, Lcom/google/android/play/core/assetpacks/AssetPackStates;->totalBytes()J

    move-result-wide v12

    if-ne v11, v5, :cond_4

    move-wide v14, v12

    goto :goto_3

    :cond_4
    const-wide/16 v3, 0x0

    move-wide v14, v3

    :goto_3
    new-instance v3, Landroid/os/Handler;

    iget-object v4, v1, Lcom/unity3d/player/k;->b:Landroid/os/Looper;

    invoke-direct {v3, v4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v4, Lcom/unity3d/player/g;

    iget-object v5, v1, Lcom/unity3d/player/k;->a:Lcom/unity3d/player/IAssetPackManagerDownloadStatusCallback;

    invoke-static {v5}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v9

    const/16 v16, 0x0

    move-object v8, v4

    invoke-direct/range {v8 .. v17}, Lcom/unity3d/player/g;-><init>(Ljava/util/Set;Ljava/lang/String;IJJII)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    :cond_5
    return-void

    :catch_0
    move-exception v0

    iget-object v4, v1, Lcom/unity3d/player/k;->c:Ljava/lang/String;

    :cond_6
    instance-of v2, v0, Lcom/google/android/play/core/assetpacks/AssetPackException;

    if-eqz v2, :cond_7

    check-cast v0, Lcom/google/android/play/core/assetpacks/AssetPackException;

    invoke-virtual {v0}, Lcom/google/android/play/core/assetpacks/AssetPackException;->getErrorCode()I

    move-result v0

    :goto_4
    move v11, v0

    goto :goto_5

    :cond_7
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    if-nez v0, :cond_6

    const/16 v0, -0x64

    goto :goto_4

    :goto_5
    const-wide/16 v6, 0x0

    new-instance v0, Landroid/os/Handler;

    iget-object v2, v1, Lcom/unity3d/player/k;->b:Landroid/os/Looper;

    invoke-direct {v0, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v12, Lcom/unity3d/player/g;

    iget-object v2, v1, Lcom/unity3d/player/k;->a:Lcom/unity3d/player/IAssetPackManagerDownloadStatusCallback;

    invoke-static {v2}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v3

    const/4 v5, 0x0

    const-wide/16 v8, 0x0

    const/4 v10, 0x0

    move-object v2, v12

    invoke-direct/range {v2 .. v11}, Lcom/unity3d/player/g;-><init>(Ljava/util/Set;Ljava/lang/String;IJJII)V

    invoke-virtual {v0, v12}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    nop

    .array-data 1
    .end array-data
.end method
