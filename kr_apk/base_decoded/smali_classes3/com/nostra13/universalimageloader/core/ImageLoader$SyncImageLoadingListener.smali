.class Lcom/nostra13/universalimageloader/core/ImageLoader$SyncImageLoadingListener;
.super Lcom/nostra13/universalimageloader/core/listener/SimpleImageLoadingListener;
.source "ImageLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nostra13/universalimageloader/core/ImageLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SyncImageLoadingListener"
.end annotation


# instance fields
.field private loadedImage:Landroid/graphics/Bitmap;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 8009
    invoke-direct {p0}, Lcom/nostra13/universalimageloader/core/listener/SimpleImageLoadingListener;-><init>()V

    return-void

    .array-data 1
    .end array-data
.end method

.method synthetic constructor <init>(Lcom/nostra13/universalimageloader/core/ImageLoader$1;)V
    .locals 0

    .line 8009
    invoke-direct {p0}, Lcom/nostra13/universalimageloader/core/ImageLoader$SyncImageLoadingListener;-><init>()V

    return-void

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public getLoadedBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .line 8109
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/ImageLoader$SyncImageLoadingListener;->loadedImage:Landroid/graphics/Bitmap;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public onLoadingComplete(Ljava/lang/String;Landroid/view/View;Landroid/graphics/Bitmap;)V
    .locals 0

    .line 8069
    iput-object p3, p0, Lcom/nostra13/universalimageloader/core/ImageLoader$SyncImageLoadingListener;->loadedImage:Landroid/graphics/Bitmap;

    return-void

    nop

    .array-data 1
    .end array-data
.end method
