.class public Lcom/bumptech/glide/load/resource/bitmap/Rotate;
.super Lcom/bumptech/glide/load/resource/bitmap/BitmapTransformation;
.source "Rotate.java"


# static fields
.field private static final ID:Ljava/lang/String; = "com.bumptech.glide.load.resource.bitmap.Rotate"

.field private static final ID_BYTES:[B


# instance fields
.field private final degreesToRotate:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const v0, 0x6d089fc8

    invoke-static {v0}, Lcom/liapp/y;->ٱڳܴڭܩ(I)Ljava/lang/String;

    move-result-object v0

    .line 139
    sget-object v1, Lcom/bumptech/glide/load/resource/bitmap/Rotate;->CHARSET:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    sput-object v0, Lcom/bumptech/glide/load/resource/bitmap/Rotate;->ID_BYTES:[B

    return-void

    .array-data 1
    .end array-data
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 219
    invoke-direct {p0}, Lcom/bumptech/glide/load/resource/bitmap/BitmapTransformation;-><init>()V

    .line 229
    iput p1, p0, Lcom/bumptech/glide/load/resource/bitmap/Rotate;->degreesToRotate:I

    return-void

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .line 339
    instance-of v0, p1, Lcom/bumptech/glide/load/resource/bitmap/Rotate;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 349
    check-cast p1, Lcom/bumptech/glide/load/resource/bitmap/Rotate;

    .line 359
    iget v0, p0, Lcom/bumptech/glide/load/resource/bitmap/Rotate;->degreesToRotate:I

    iget p1, p1, Lcom/bumptech/glide/load/resource/bitmap/Rotate;->degreesToRotate:I

    if-ne v0, p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    nop

    .array-data 1
    .end array-data
.end method

.method public hashCode()I
    .locals 2

    .line 429
    iget v0, p0, Lcom/bumptech/glide/load/resource/bitmap/Rotate;->degreesToRotate:I

    invoke-static {v0}, Lcom/bumptech/glide/util/Util;->hashCode(I)I

    move-result v0

    const v1, -0x38a7c59c

    invoke-static {v1, v0}, Lcom/bumptech/glide/util/Util;->hashCode(II)I

    move-result v0

    return v0

    .array-data 1
    .end array-data
.end method

.method protected transform(Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 0

    .line 289
    iget p1, p0, Lcom/bumptech/glide/load/resource/bitmap/Rotate;->degreesToRotate:I

    invoke-static {p2, p1}, Lcom/bumptech/glide/load/resource/bitmap/TransformationUtils;->rotateImage(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1

    nop

    .array-data 1
    .end array-data
.end method

.method public updateDiskCacheKey(Ljava/security/MessageDigest;)V
    .locals 2

    .line 479
    sget-object v0, Lcom/bumptech/glide/load/resource/bitmap/Rotate;->ID_BYTES:[B

    invoke-virtual {p1, v0}, Ljava/security/MessageDigest;->update([B)V

    const/4 v0, 0x4

    .line 499
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iget v1, p0, Lcom/bumptech/glide/load/resource/bitmap/Rotate;->degreesToRotate:I

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    .line 509
    invoke-virtual {p1, v0}, Ljava/security/MessageDigest;->update([B)V

    return-void

    .array-data 1
    .end array-data
.end method
