.class final Lcom/unity3d/player/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/tasks/OnCompleteListener;


# instance fields
.field private a:Lcom/unity3d/player/IAssetPackManagerStatusQueryCallback;

.field private b:Landroid/os/Looper;

.field private c:[Ljava/lang/String;


# direct methods
.method public constructor <init>([Ljava/lang/String;Lcom/unity3d/player/IAssetPackManagerStatusQueryCallback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/unity3d/player/m;->a:Lcom/unity3d/player/IAssetPackManagerStatusQueryCallback;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p2

    iput-object p2, p0, Lcom/unity3d/player/m;->b:Landroid/os/Looper;

    iput-object p1, p0, Lcom/unity3d/player/m;->c:[Ljava/lang/String;

    return-void

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public final onComplete(Lcom/google/android/gms/tasks/Task;)V
    .locals 18

    move-object/from16 v1, p0

    iget-object v0, v1, Lcom/unity3d/player/m;->a:Lcom/unity3d/player/IAssetPackManagerStatusQueryCallback;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v2, 0x1

    const/4 v3, 0x0

    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/tasks/Task;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/play/core/assetpacks/AssetPackStates;
    :try_end_0
    .catch Lcom/google/android/gms/tasks/RuntimeExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {v0}, Lcom/google/android/play/core/assetpacks/AssetPackStates;->packStates()Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Map;->size()I

    move-result v5

    new-array v10, v5, [Ljava/lang/String;

    new-array v11, v5, [I

    new-array v12, v5, [I

    invoke-interface {v4}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/play/core/assetpacks/AssetPackState;

    invoke-virtual {v5}, Lcom/google/android/play/core/assetpacks/AssetPackState;->name()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v10, v3

    invoke-virtual {v5}, Lcom/google/android/play/core/assetpacks/AssetPackState;->status()I

    move-result v6

    aput v6, v11, v3

    invoke-virtual {v5}, Lcom/google/android/play/core/assetpacks/AssetPackState;->errorCode()I

    move-result v5

    aput v5, v12, v3

    add-int/2addr v3, v2

    goto :goto_0

    :cond_1
    new-instance v2, Landroid/os/Handler;

    iget-object v3, v1, Lcom/unity3d/player/m;->b:Landroid/os/Looper;

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v3, Lcom/unity3d/player/l;

    iget-object v7, v1, Lcom/unity3d/player/m;->a:Lcom/unity3d/player/IAssetPackManagerStatusQueryCallback;

    invoke-virtual {v0}, Lcom/google/android/play/core/assetpacks/AssetPackStates;->totalBytes()J

    move-result-wide v8

    move-object v6, v3

    invoke-direct/range {v6 .. v12}, Lcom/unity3d/player/l;-><init>(Lcom/unity3d/player/IAssetPackManagerStatusQueryCallback;J[Ljava/lang/String;[I[I)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    iget-object v5, v1, Lcom/unity3d/player/m;->c:[Ljava/lang/String;

    array-length v6, v5

    move v7, v3

    :goto_1
    const/16 v8, -0x64

    if-ge v7, v6, :cond_5

    aget-object v9, v5, v7

    invoke-virtual {v4, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_4

    new-instance v10, Landroid/os/Handler;

    iget-object v4, v1, Lcom/unity3d/player/m;->b:Landroid/os/Looper;

    invoke-direct {v10, v4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v4, Lcom/unity3d/player/l;

    iget-object v12, v1, Lcom/unity3d/player/m;->a:Lcom/unity3d/player/IAssetPackManagerStatusQueryCallback;

    new-array v15, v2, [Ljava/lang/String;

    aput-object v9, v15, v3

    new-array v9, v2, [I

    aput v3, v9, v3

    new-array v2, v2, [I

    :cond_2
    instance-of v5, v0, Lcom/google/android/play/core/assetpacks/AssetPackException;

    if-eqz v5, :cond_3

    check-cast v0, Lcom/google/android/play/core/assetpacks/AssetPackException;

    invoke-virtual {v0}, Lcom/google/android/play/core/assetpacks/AssetPackException;->getErrorCode()I

    move-result v8

    goto :goto_2

    :cond_3
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    if-nez v0, :cond_2

    :goto_2
    aput v8, v2, v3

    const-wide/16 v13, 0x0

    move-object v11, v4

    move-object/from16 v16, v9

    move-object/from16 v17, v2

    invoke-direct/range {v11 .. v17}, Lcom/unity3d/player/l;-><init>(Lcom/unity3d/player/IAssetPackManagerStatusQueryCallback;J[Ljava/lang/String;[I[I)V

    invoke-virtual {v10, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_5
    iget-object v2, v1, Lcom/unity3d/player/m;->c:[Ljava/lang/String;

    array-length v4, v2

    new-array v14, v4, [I

    array-length v2, v2

    new-array v15, v2, [I

    move v2, v3

    :goto_3
    iget-object v4, v1, Lcom/unity3d/player/m;->c:[Ljava/lang/String;

    array-length v4, v4

    if-ge v2, v4, :cond_8

    aput v3, v14, v2

    move-object v4, v0

    :cond_6
    instance-of v5, v4, Lcom/google/android/play/core/assetpacks/AssetPackException;

    if-eqz v5, :cond_7

    check-cast v4, Lcom/google/android/play/core/assetpacks/AssetPackException;

    invoke-virtual {v4}, Lcom/google/android/play/core/assetpacks/AssetPackException;->getErrorCode()I

    move-result v4

    goto :goto_4

    :cond_7
    invoke-virtual {v4}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v4

    if-nez v4, :cond_6

    move v4, v8

    :goto_4
    aput v4, v15, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_8
    new-instance v0, Landroid/os/Handler;

    iget-object v2, v1, Lcom/unity3d/player/m;->b:Landroid/os/Looper;

    invoke-direct {v0, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v2, Lcom/unity3d/player/l;

    iget-object v10, v1, Lcom/unity3d/player/m;->a:Lcom/unity3d/player/IAssetPackManagerStatusQueryCallback;

    iget-object v13, v1, Lcom/unity3d/player/m;->c:[Ljava/lang/String;

    const-wide/16 v11, 0x0

    move-object v9, v2

    invoke-direct/range {v9 .. v15}, Lcom/unity3d/player/l;-><init>(Lcom/unity3d/player/IAssetPackManagerStatusQueryCallback;J[Ljava/lang/String;[I[I)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    nop

    .array-data 1
    .end array-data
.end method
