.class Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeStrategy$KeyPool;
.super Lcom/bumptech/glide/load/engine/bitmap_recycle/BaseKeyPool;
.source "SizeStrategy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeStrategy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "KeyPool"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/bumptech/glide/load/engine/bitmap_recycle/BaseKeyPool<",
        "Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeStrategy$Key;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1129
    invoke-direct {p0}, Lcom/bumptech/glide/load/engine/bitmap_recycle/BaseKeyPool;-><init>()V

    return-void

    .array-data 1
    .end array-data
.end method


# virtual methods
.method protected bridge synthetic create()Lcom/bumptech/glide/load/engine/bitmap_recycle/Poolable;
    .locals 1

    .line 1119
    invoke-virtual {p0}, Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeStrategy$KeyPool;->create()Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeStrategy$Key;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method protected create()Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeStrategy$Key;
    .locals 1

    .line 1229
    new-instance v0, Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeStrategy$Key;

    invoke-direct {v0, p0}, Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeStrategy$Key;-><init>(Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeStrategy$KeyPool;)V

    return-object v0

    .array-data 1
    .end array-data
.end method

.method public get(I)Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeStrategy$Key;
    .locals 1

    .line 1159
    invoke-super {p0}, Lcom/bumptech/glide/load/engine/bitmap_recycle/BaseKeyPool;->get()Lcom/bumptech/glide/load/engine/bitmap_recycle/Poolable;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeStrategy$Key;

    .line 1169
    invoke-virtual {v0, p1}, Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeStrategy$Key;->init(I)V

    return-object v0

    .array-data 1
    .end array-data
.end method
