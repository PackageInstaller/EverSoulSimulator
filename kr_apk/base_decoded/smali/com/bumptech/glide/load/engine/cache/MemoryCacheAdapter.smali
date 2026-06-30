.class public Lcom/bumptech/glide/load/engine/cache/MemoryCacheAdapter;
.super Ljava/lang/Object;
.source "MemoryCacheAdapter.java"

# interfaces
.implements Lcom/bumptech/glide/load/engine/cache/MemoryCache;


# instance fields
.field private listener:Lcom/bumptech/glide/load/engine/cache/MemoryCache$ResourceRemovedListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public clearMemory()V
    .locals 0

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public getCurrentSize()J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getMaxSize()J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0

    nop

    .array-data 1
    .end array-data
.end method

.method public put(Lcom/bumptech/glide/load/Key;Lcom/bumptech/glide/load/engine/Resource;)Lcom/bumptech/glide/load/engine/Resource;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/Key;",
            "Lcom/bumptech/glide/load/engine/Resource<",
            "*>;)",
            "Lcom/bumptech/glide/load/engine/Resource<",
            "*>;"
        }
    .end annotation

    if-eqz p2, :cond_0

    .line 389
    iget-object p1, p0, Lcom/bumptech/glide/load/engine/cache/MemoryCacheAdapter;->listener:Lcom/bumptech/glide/load/engine/cache/MemoryCache$ResourceRemovedListener;

    invoke-interface {p1, p2}, Lcom/bumptech/glide/load/engine/cache/MemoryCache$ResourceRemovedListener;->onResourceRemoved(Lcom/bumptech/glide/load/engine/Resource;)V

    :cond_0
    const/4 p1, 0x0

    return-object p1

    nop

    .array-data 1
    .end array-data
.end method

.method public remove(Lcom/bumptech/glide/load/Key;)Lcom/bumptech/glide/load/engine/Resource;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/Key;",
            ")",
            "Lcom/bumptech/glide/load/engine/Resource<",
            "*>;"
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1

    .array-data 1
    .end array-data
.end method

.method public setResourceRemovedListener(Lcom/bumptech/glide/load/engine/cache/MemoryCache$ResourceRemovedListener;)V
    .locals 0

    .line 459
    iput-object p1, p0, Lcom/bumptech/glide/load/engine/cache/MemoryCacheAdapter;->listener:Lcom/bumptech/glide/load/engine/cache/MemoryCache$ResourceRemovedListener;

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public setSizeMultiplier(F)V
    .locals 0

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public trimMemory(I)V
    .locals 0

    return-void

    nop

    .array-data 1
    .end array-data
.end method
