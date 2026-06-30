.class public Lcom/bumptech/glide/request/RequestOptions;
.super Lcom/bumptech/glide/request/BaseRequestOptions;
.source "RequestOptions.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/bumptech/glide/request/BaseRequestOptions<",
        "Lcom/bumptech/glide/request/RequestOptions;",
        ">;"
    }
.end annotation


# static fields
.field private static centerCropOptions:Lcom/bumptech/glide/request/RequestOptions;

.field private static centerInsideOptions:Lcom/bumptech/glide/request/RequestOptions;

.field private static circleCropOptions:Lcom/bumptech/glide/request/RequestOptions;

.field private static fitCenterOptions:Lcom/bumptech/glide/request/RequestOptions;

.field private static noAnimationOptions:Lcom/bumptech/glide/request/RequestOptions;

.field private static noTransformOptions:Lcom/bumptech/glide/request/RequestOptions;

.field private static skipMemoryCacheFalseOptions:Lcom/bumptech/glide/request/RequestOptions;

.field private static skipMemoryCacheTrueOptions:Lcom/bumptech/glide/request/RequestOptions;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 269
    invoke-direct {p0}, Lcom/bumptech/glide/request/BaseRequestOptions;-><init>()V

    return-void

    .array-data 1
    .end array-data
.end method

.method public static bitmapTransform(Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/request/RequestOptions;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/Transformation<",
            "Landroid/graphics/Bitmap;",
            ">;)",
            "Lcom/bumptech/glide/request/RequestOptions;"
        }
    .end annotation

    .line 1859
    new-instance v0, Lcom/bumptech/glide/request/RequestOptions;

    invoke-direct {v0}, Lcom/bumptech/glide/request/RequestOptions;-><init>()V

    invoke-virtual {v0, p0}, Lcom/bumptech/glide/request/RequestOptions;->transform(Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p0

    check-cast p0, Lcom/bumptech/glide/request/RequestOptions;

    return-object p0

    .array-data 1
    .end array-data
.end method

.method public static centerCropTransform()Lcom/bumptech/glide/request/RequestOptions;
    .locals 1

    .line 1639
    sget-object v0, Lcom/bumptech/glide/request/RequestOptions;->centerCropOptions:Lcom/bumptech/glide/request/RequestOptions;

    if-nez v0, :cond_0

    .line 1649
    new-instance v0, Lcom/bumptech/glide/request/RequestOptions;

    invoke-direct {v0}, Lcom/bumptech/glide/request/RequestOptions;-><init>()V

    invoke-virtual {v0}, Lcom/bumptech/glide/request/RequestOptions;->centerCrop()Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/request/RequestOptions;

    invoke-virtual {v0}, Lcom/bumptech/glide/request/RequestOptions;->autoClone()Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/request/RequestOptions;

    sput-object v0, Lcom/bumptech/glide/request/RequestOptions;->centerCropOptions:Lcom/bumptech/glide/request/RequestOptions;

    .line 1669
    :cond_0
    sget-object v0, Lcom/bumptech/glide/request/RequestOptions;->centerCropOptions:Lcom/bumptech/glide/request/RequestOptions;

    return-object v0

    .array-data 1
    .end array-data
.end method

.method public static centerInsideTransform()Lcom/bumptech/glide/request/RequestOptions;
    .locals 1

    .line 1529
    sget-object v0, Lcom/bumptech/glide/request/RequestOptions;->centerInsideOptions:Lcom/bumptech/glide/request/RequestOptions;

    if-nez v0, :cond_0

    .line 1539
    new-instance v0, Lcom/bumptech/glide/request/RequestOptions;

    invoke-direct {v0}, Lcom/bumptech/glide/request/RequestOptions;-><init>()V

    invoke-virtual {v0}, Lcom/bumptech/glide/request/RequestOptions;->centerInside()Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/request/RequestOptions;

    invoke-virtual {v0}, Lcom/bumptech/glide/request/RequestOptions;->autoClone()Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/request/RequestOptions;

    sput-object v0, Lcom/bumptech/glide/request/RequestOptions;->centerInsideOptions:Lcom/bumptech/glide/request/RequestOptions;

    .line 1559
    :cond_0
    sget-object v0, Lcom/bumptech/glide/request/RequestOptions;->centerInsideOptions:Lcom/bumptech/glide/request/RequestOptions;

    return-object v0

    .array-data 1
    .end array-data
.end method

.method public static circleCropTransform()Lcom/bumptech/glide/request/RequestOptions;
    .locals 1

    .line 1749
    sget-object v0, Lcom/bumptech/glide/request/RequestOptions;->circleCropOptions:Lcom/bumptech/glide/request/RequestOptions;

    if-nez v0, :cond_0

    .line 1759
    new-instance v0, Lcom/bumptech/glide/request/RequestOptions;

    invoke-direct {v0}, Lcom/bumptech/glide/request/RequestOptions;-><init>()V

    invoke-virtual {v0}, Lcom/bumptech/glide/request/RequestOptions;->circleCrop()Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/request/RequestOptions;

    invoke-virtual {v0}, Lcom/bumptech/glide/request/RequestOptions;->autoClone()Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/request/RequestOptions;

    sput-object v0, Lcom/bumptech/glide/request/RequestOptions;->circleCropOptions:Lcom/bumptech/glide/request/RequestOptions;

    .line 1779
    :cond_0
    sget-object v0, Lcom/bumptech/glide/request/RequestOptions;->circleCropOptions:Lcom/bumptech/glide/request/RequestOptions;

    return-object v0

    .array-data 1
    .end array-data
.end method

.method public static decodeTypeOf(Ljava/lang/Class;)Lcom/bumptech/glide/request/RequestOptions;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/bumptech/glide/request/RequestOptions;"
        }
    .end annotation

    .line 2139
    new-instance v0, Lcom/bumptech/glide/request/RequestOptions;

    invoke-direct {v0}, Lcom/bumptech/glide/request/RequestOptions;-><init>()V

    invoke-virtual {v0, p0}, Lcom/bumptech/glide/request/RequestOptions;->decode(Ljava/lang/Class;)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p0

    check-cast p0, Lcom/bumptech/glide/request/RequestOptions;

    return-object p0

    .array-data 1
    .end array-data
.end method

.method public static diskCacheStrategyOf(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/request/RequestOptions;
    .locals 1

    .line 529
    new-instance v0, Lcom/bumptech/glide/request/RequestOptions;

    invoke-direct {v0}, Lcom/bumptech/glide/request/RequestOptions;-><init>()V

    invoke-virtual {v0, p0}, Lcom/bumptech/glide/request/RequestOptions;->diskCacheStrategy(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p0

    check-cast p0, Lcom/bumptech/glide/request/RequestOptions;

    return-object p0

    .array-data 1
    .end array-data
.end method

.method public static downsampleOf(Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;)Lcom/bumptech/glide/request/RequestOptions;
    .locals 1

    .line 2379
    new-instance v0, Lcom/bumptech/glide/request/RequestOptions;

    invoke-direct {v0}, Lcom/bumptech/glide/request/RequestOptions;-><init>()V

    invoke-virtual {v0, p0}, Lcom/bumptech/glide/request/RequestOptions;->downsample(Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p0

    check-cast p0, Lcom/bumptech/glide/request/RequestOptions;

    return-object p0

    .array-data 1
    .end array-data
.end method

.method public static encodeFormatOf(Landroid/graphics/Bitmap$CompressFormat;)Lcom/bumptech/glide/request/RequestOptions;
    .locals 1

    .line 2669
    new-instance v0, Lcom/bumptech/glide/request/RequestOptions;

    invoke-direct {v0}, Lcom/bumptech/glide/request/RequestOptions;-><init>()V

    invoke-virtual {v0, p0}, Lcom/bumptech/glide/request/RequestOptions;->encodeFormat(Landroid/graphics/Bitmap$CompressFormat;)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p0

    check-cast p0, Lcom/bumptech/glide/request/RequestOptions;

    return-object p0

    .array-data 1
    .end array-data
.end method

.method public static encodeQualityOf(I)Lcom/bumptech/glide/request/RequestOptions;
    .locals 1

    .line 2559
    new-instance v0, Lcom/bumptech/glide/request/RequestOptions;

    invoke-direct {v0}, Lcom/bumptech/glide/request/RequestOptions;-><init>()V

    invoke-virtual {v0, p0}, Lcom/bumptech/glide/request/RequestOptions;->encodeQuality(I)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p0

    check-cast p0, Lcom/bumptech/glide/request/RequestOptions;

    return-object p0

    .array-data 1
    .end array-data
.end method

.method public static errorOf(I)Lcom/bumptech/glide/request/RequestOptions;
    .locals 1

    .line 919
    new-instance v0, Lcom/bumptech/glide/request/RequestOptions;

    invoke-direct {v0}, Lcom/bumptech/glide/request/RequestOptions;-><init>()V

    invoke-virtual {v0, p0}, Lcom/bumptech/glide/request/RequestOptions;->error(I)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p0

    check-cast p0, Lcom/bumptech/glide/request/RequestOptions;

    return-object p0

    .array-data 1
    .end array-data
.end method

.method public static errorOf(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/request/RequestOptions;
    .locals 1

    .line 849
    new-instance v0, Lcom/bumptech/glide/request/RequestOptions;

    invoke-direct {v0}, Lcom/bumptech/glide/request/RequestOptions;-><init>()V

    invoke-virtual {v0, p0}, Lcom/bumptech/glide/request/RequestOptions;->error(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p0

    check-cast p0, Lcom/bumptech/glide/request/RequestOptions;

    return-object p0

    .array-data 1
    .end array-data
.end method

.method public static fitCenterTransform()Lcom/bumptech/glide/request/RequestOptions;
    .locals 1

    .line 1419
    sget-object v0, Lcom/bumptech/glide/request/RequestOptions;->fitCenterOptions:Lcom/bumptech/glide/request/RequestOptions;

    if-nez v0, :cond_0

    .line 1429
    new-instance v0, Lcom/bumptech/glide/request/RequestOptions;

    invoke-direct {v0}, Lcom/bumptech/glide/request/RequestOptions;-><init>()V

    invoke-virtual {v0}, Lcom/bumptech/glide/request/RequestOptions;->fitCenter()Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/request/RequestOptions;

    invoke-virtual {v0}, Lcom/bumptech/glide/request/RequestOptions;->autoClone()Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/request/RequestOptions;

    sput-object v0, Lcom/bumptech/glide/request/RequestOptions;->fitCenterOptions:Lcom/bumptech/glide/request/RequestOptions;

    .line 1449
    :cond_0
    sget-object v0, Lcom/bumptech/glide/request/RequestOptions;->fitCenterOptions:Lcom/bumptech/glide/request/RequestOptions;

    return-object v0

    .array-data 1
    .end array-data
.end method

.method public static formatOf(Lcom/bumptech/glide/load/DecodeFormat;)Lcom/bumptech/glide/request/RequestOptions;
    .locals 1

    .line 2219
    new-instance v0, Lcom/bumptech/glide/request/RequestOptions;

    invoke-direct {v0}, Lcom/bumptech/glide/request/RequestOptions;-><init>()V

    invoke-virtual {v0, p0}, Lcom/bumptech/glide/request/RequestOptions;->format(Lcom/bumptech/glide/load/DecodeFormat;)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p0

    check-cast p0, Lcom/bumptech/glide/request/RequestOptions;

    return-object p0

    .array-data 1
    .end array-data
.end method

.method public static frameOf(J)Lcom/bumptech/glide/request/RequestOptions;
    .locals 1

    .line 2299
    new-instance v0, Lcom/bumptech/glide/request/RequestOptions;

    invoke-direct {v0}, Lcom/bumptech/glide/request/RequestOptions;-><init>()V

    invoke-virtual {v0, p0, p1}, Lcom/bumptech/glide/request/RequestOptions;->frame(J)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p0

    check-cast p0, Lcom/bumptech/glide/request/RequestOptions;

    return-object p0

    .array-data 1
    .end array-data
.end method

.method public static noAnimation()Lcom/bumptech/glide/request/RequestOptions;
    .locals 1

    .line 2779
    sget-object v0, Lcom/bumptech/glide/request/RequestOptions;->noAnimationOptions:Lcom/bumptech/glide/request/RequestOptions;

    if-nez v0, :cond_0

    .line 2789
    new-instance v0, Lcom/bumptech/glide/request/RequestOptions;

    invoke-direct {v0}, Lcom/bumptech/glide/request/RequestOptions;-><init>()V

    invoke-virtual {v0}, Lcom/bumptech/glide/request/RequestOptions;->dontAnimate()Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/request/RequestOptions;

    invoke-virtual {v0}, Lcom/bumptech/glide/request/RequestOptions;->autoClone()Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/request/RequestOptions;

    sput-object v0, Lcom/bumptech/glide/request/RequestOptions;->noAnimationOptions:Lcom/bumptech/glide/request/RequestOptions;

    .line 2809
    :cond_0
    sget-object v0, Lcom/bumptech/glide/request/RequestOptions;->noAnimationOptions:Lcom/bumptech/glide/request/RequestOptions;

    return-object v0

    .array-data 1
    .end array-data
.end method

.method public static noTransformation()Lcom/bumptech/glide/request/RequestOptions;
    .locals 1

    .line 1939
    sget-object v0, Lcom/bumptech/glide/request/RequestOptions;->noTransformOptions:Lcom/bumptech/glide/request/RequestOptions;

    if-nez v0, :cond_0

    .line 1949
    new-instance v0, Lcom/bumptech/glide/request/RequestOptions;

    invoke-direct {v0}, Lcom/bumptech/glide/request/RequestOptions;-><init>()V

    invoke-virtual {v0}, Lcom/bumptech/glide/request/RequestOptions;->dontTransform()Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/request/RequestOptions;

    invoke-virtual {v0}, Lcom/bumptech/glide/request/RequestOptions;->autoClone()Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/request/RequestOptions;

    sput-object v0, Lcom/bumptech/glide/request/RequestOptions;->noTransformOptions:Lcom/bumptech/glide/request/RequestOptions;

    .line 1969
    :cond_0
    sget-object v0, Lcom/bumptech/glide/request/RequestOptions;->noTransformOptions:Lcom/bumptech/glide/request/RequestOptions;

    return-object v0

    .array-data 1
    .end array-data
.end method

.method public static option(Lcom/bumptech/glide/load/Option;Ljava/lang/Object;)Lcom/bumptech/glide/request/RequestOptions;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/bumptech/glide/load/Option<",
            "TT;>;TT;)",
            "Lcom/bumptech/glide/request/RequestOptions;"
        }
    .end annotation

    .line 2069
    new-instance v0, Lcom/bumptech/glide/request/RequestOptions;

    invoke-direct {v0}, Lcom/bumptech/glide/request/RequestOptions;-><init>()V

    invoke-virtual {v0, p0, p1}, Lcom/bumptech/glide/request/RequestOptions;->set(Lcom/bumptech/glide/load/Option;Ljava/lang/Object;)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p0

    check-cast p0, Lcom/bumptech/glide/request/RequestOptions;

    return-object p0

    .array-data 1
    .end array-data
.end method

.method public static overrideOf(I)Lcom/bumptech/glide/request/RequestOptions;
    .locals 0

    .line 1279
    invoke-static {p0, p0}, Lcom/bumptech/glide/request/RequestOptions;->overrideOf(II)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object p0

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static overrideOf(II)Lcom/bumptech/glide/request/RequestOptions;
    .locals 1

    .line 1169
    new-instance v0, Lcom/bumptech/glide/request/RequestOptions;

    invoke-direct {v0}, Lcom/bumptech/glide/request/RequestOptions;-><init>()V

    invoke-virtual {v0, p0, p1}, Lcom/bumptech/glide/request/RequestOptions;->override(II)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p0

    check-cast p0, Lcom/bumptech/glide/request/RequestOptions;

    return-object p0

    .array-data 1
    .end array-data
.end method

.method public static placeholderOf(I)Lcom/bumptech/glide/request/RequestOptions;
    .locals 1

    .line 779
    new-instance v0, Lcom/bumptech/glide/request/RequestOptions;

    invoke-direct {v0}, Lcom/bumptech/glide/request/RequestOptions;-><init>()V

    invoke-virtual {v0, p0}, Lcom/bumptech/glide/request/RequestOptions;->placeholder(I)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p0

    check-cast p0, Lcom/bumptech/glide/request/RequestOptions;

    return-object p0

    .array-data 1
    .end array-data
.end method

.method public static placeholderOf(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/request/RequestOptions;
    .locals 1

    .line 709
    new-instance v0, Lcom/bumptech/glide/request/RequestOptions;

    invoke-direct {v0}, Lcom/bumptech/glide/request/RequestOptions;-><init>()V

    invoke-virtual {v0, p0}, Lcom/bumptech/glide/request/RequestOptions;->placeholder(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p0

    check-cast p0, Lcom/bumptech/glide/request/RequestOptions;

    return-object p0

    .array-data 1
    .end array-data
.end method

.method public static priorityOf(Lcom/bumptech/glide/Priority;)Lcom/bumptech/glide/request/RequestOptions;
    .locals 1

    .line 639
    new-instance v0, Lcom/bumptech/glide/request/RequestOptions;

    invoke-direct {v0}, Lcom/bumptech/glide/request/RequestOptions;-><init>()V

    invoke-virtual {v0, p0}, Lcom/bumptech/glide/request/RequestOptions;->priority(Lcom/bumptech/glide/Priority;)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p0

    check-cast p0, Lcom/bumptech/glide/request/RequestOptions;

    return-object p0

    .array-data 1
    .end array-data
.end method

.method public static signatureOf(Lcom/bumptech/glide/load/Key;)Lcom/bumptech/glide/request/RequestOptions;
    .locals 1

    .line 1349
    new-instance v0, Lcom/bumptech/glide/request/RequestOptions;

    invoke-direct {v0}, Lcom/bumptech/glide/request/RequestOptions;-><init>()V

    invoke-virtual {v0, p0}, Lcom/bumptech/glide/request/RequestOptions;->signature(Lcom/bumptech/glide/load/Key;)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p0

    check-cast p0, Lcom/bumptech/glide/request/RequestOptions;

    return-object p0

    .array-data 1
    .end array-data
.end method

.method public static sizeMultiplierOf(F)Lcom/bumptech/glide/request/RequestOptions;
    .locals 1

    .line 439
    new-instance v0, Lcom/bumptech/glide/request/RequestOptions;

    invoke-direct {v0}, Lcom/bumptech/glide/request/RequestOptions;-><init>()V

    invoke-virtual {v0, p0}, Lcom/bumptech/glide/request/RequestOptions;->sizeMultiplier(F)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p0

    check-cast p0, Lcom/bumptech/glide/request/RequestOptions;

    return-object p0

    .array-data 1
    .end array-data
.end method

.method public static skipMemoryCacheOf(Z)Lcom/bumptech/glide/request/RequestOptions;
    .locals 1

    if-eqz p0, :cond_1

    .line 999
    sget-object p0, Lcom/bumptech/glide/request/RequestOptions;->skipMemoryCacheTrueOptions:Lcom/bumptech/glide/request/RequestOptions;

    if-nez p0, :cond_0

    .line 1009
    new-instance p0, Lcom/bumptech/glide/request/RequestOptions;

    invoke-direct {p0}, Lcom/bumptech/glide/request/RequestOptions;-><init>()V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/bumptech/glide/request/RequestOptions;->skipMemoryCache(Z)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p0

    check-cast p0, Lcom/bumptech/glide/request/RequestOptions;

    invoke-virtual {p0}, Lcom/bumptech/glide/request/RequestOptions;->autoClone()Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p0

    check-cast p0, Lcom/bumptech/glide/request/RequestOptions;

    sput-object p0, Lcom/bumptech/glide/request/RequestOptions;->skipMemoryCacheTrueOptions:Lcom/bumptech/glide/request/RequestOptions;

    .line 1029
    :cond_0
    sget-object p0, Lcom/bumptech/glide/request/RequestOptions;->skipMemoryCacheTrueOptions:Lcom/bumptech/glide/request/RequestOptions;

    return-object p0

    .line 1049
    :cond_1
    sget-object p0, Lcom/bumptech/glide/request/RequestOptions;->skipMemoryCacheFalseOptions:Lcom/bumptech/glide/request/RequestOptions;

    if-nez p0, :cond_2

    .line 1059
    new-instance p0, Lcom/bumptech/glide/request/RequestOptions;

    invoke-direct {p0}, Lcom/bumptech/glide/request/RequestOptions;-><init>()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/bumptech/glide/request/RequestOptions;->skipMemoryCache(Z)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p0

    check-cast p0, Lcom/bumptech/glide/request/RequestOptions;

    invoke-virtual {p0}, Lcom/bumptech/glide/request/RequestOptions;->autoClone()Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p0

    check-cast p0, Lcom/bumptech/glide/request/RequestOptions;

    sput-object p0, Lcom/bumptech/glide/request/RequestOptions;->skipMemoryCacheFalseOptions:Lcom/bumptech/glide/request/RequestOptions;

    .line 1079
    :cond_2
    sget-object p0, Lcom/bumptech/glide/request/RequestOptions;->skipMemoryCacheFalseOptions:Lcom/bumptech/glide/request/RequestOptions;

    return-object p0

    .array-data 1
    .end array-data
.end method

.method public static timeoutOf(I)Lcom/bumptech/glide/request/RequestOptions;
    .locals 1

    .line 2449
    new-instance v0, Lcom/bumptech/glide/request/RequestOptions;

    invoke-direct {v0}, Lcom/bumptech/glide/request/RequestOptions;-><init>()V

    invoke-virtual {v0, p0}, Lcom/bumptech/glide/request/RequestOptions;->timeout(I)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p0

    check-cast p0, Lcom/bumptech/glide/request/RequestOptions;

    return-object p0

    .array-data 1
    .end array-data
.end method
