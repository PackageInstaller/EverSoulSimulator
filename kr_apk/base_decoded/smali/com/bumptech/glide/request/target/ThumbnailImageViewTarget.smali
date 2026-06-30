.class public abstract Lcom/bumptech/glide/request/target/ThumbnailImageViewTarget;
.super Lcom/bumptech/glide/request/target/ImageViewTarget;
.source "ThumbnailImageViewTarget.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/bumptech/glide/request/target/ImageViewTarget<",
        "TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/widget/ImageView;)V
    .locals 0

    .line 279
    invoke-direct {p0, p1}, Lcom/bumptech/glide/request/target/ImageViewTarget;-><init>(Landroid/widget/ImageView;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method public constructor <init>(Landroid/widget/ImageView;Z)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 349
    invoke-direct {p0, p1, p2}, Lcom/bumptech/glide/request/target/ImageViewTarget;-><init>(Landroid/widget/ImageView;Z)V

    return-void

    .array-data 1
    .end array-data
.end method


# virtual methods
.method protected abstract getDrawable(Ljava/lang/Object;)Landroid/graphics/drawable/Drawable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Landroid/graphics/drawable/Drawable;"
        }
    .end annotation
.end method

.method protected setResource(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 399
    iget-object v0, p0, Lcom/bumptech/glide/request/target/ThumbnailImageViewTarget;->view:Landroid/view/View;

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 409
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/request/target/ThumbnailImageViewTarget;->getDrawable(Ljava/lang/Object;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-eqz v0, :cond_0

    .line 419
    iget v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-lez v1, :cond_0

    iget v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-lez v1, :cond_0

    .line 429
    new-instance v1, Lcom/bumptech/glide/request/target/FixedSizeDrawable;

    iget v2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-direct {v1, p1, v2, v0}, Lcom/bumptech/glide/request/target/FixedSizeDrawable;-><init>(Landroid/graphics/drawable/Drawable;II)V

    move-object p1, v1

    .line 459
    :cond_0
    iget-object v0, p0, Lcom/bumptech/glide/request/target/ThumbnailImageViewTarget;->view:Landroid/view/View;

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void

    .array-data 1
    .end array-data
.end method
