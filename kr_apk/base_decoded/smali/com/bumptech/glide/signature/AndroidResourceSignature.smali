.class public final Lcom/bumptech/glide/signature/AndroidResourceSignature;
.super Ljava/lang/Object;
.source "AndroidResourceSignature.java"

# interfaces
.implements Lcom/bumptech/glide/load/Key;


# instance fields
.field private final applicationVersion:Lcom/bumptech/glide/load/Key;

.field private final nightMode:I


# direct methods
.method private constructor <init>(ILcom/bumptech/glide/load/Key;)V
    .locals 0

    .line 259
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 269
    iput p1, p0, Lcom/bumptech/glide/signature/AndroidResourceSignature;->nightMode:I

    .line 279
    iput-object p2, p0, Lcom/bumptech/glide/signature/AndroidResourceSignature;->applicationVersion:Lcom/bumptech/glide/load/Key;

    return-void

    .array-data 1
    .end array-data
.end method

.method public static obtain(Landroid/content/Context;)Lcom/bumptech/glide/load/Key;
    .locals 2

    .line 199
    invoke-static {p0}, Lcom/bumptech/glide/signature/ApplicationVersionSignature;->obtain(Landroid/content/Context;)Lcom/bumptech/glide/load/Key;

    move-result-object v0

    .line 219
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget p0, p0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 p0, p0, 0x30

    .line 229
    new-instance v1, Lcom/bumptech/glide/signature/AndroidResourceSignature;

    invoke-direct {v1, p0, v0}, Lcom/bumptech/glide/signature/AndroidResourceSignature;-><init>(ILcom/bumptech/glide/load/Key;)V

    return-object v1

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 329
    instance-of v0, p1, Lcom/bumptech/glide/signature/AndroidResourceSignature;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 339
    check-cast p1, Lcom/bumptech/glide/signature/AndroidResourceSignature;

    .line 349
    iget v0, p0, Lcom/bumptech/glide/signature/AndroidResourceSignature;->nightMode:I

    iget v2, p1, Lcom/bumptech/glide/signature/AndroidResourceSignature;->nightMode:I

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/bumptech/glide/signature/AndroidResourceSignature;->applicationVersion:Lcom/bumptech/glide/load/Key;

    iget-object p1, p1, Lcom/bumptech/glide/signature/AndroidResourceSignature;->applicationVersion:Lcom/bumptech/glide/load/Key;

    invoke-interface {v0, p1}, Lcom/bumptech/glide/load/Key;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    nop

    .array-data 1
    .end array-data
.end method

.method public hashCode()I
    .locals 2

    .line 419
    iget-object v0, p0, Lcom/bumptech/glide/signature/AndroidResourceSignature;->applicationVersion:Lcom/bumptech/glide/load/Key;

    iget v1, p0, Lcom/bumptech/glide/signature/AndroidResourceSignature;->nightMode:I

    invoke-static {v0, v1}, Lcom/bumptech/glide/util/Util;->hashCode(Ljava/lang/Object;I)I

    move-result v0

    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public updateDiskCacheKey(Ljava/security/MessageDigest;)V
    .locals 2

    .line 469
    iget-object v0, p0, Lcom/bumptech/glide/signature/AndroidResourceSignature;->applicationVersion:Lcom/bumptech/glide/load/Key;

    invoke-interface {v0, p1}, Lcom/bumptech/glide/load/Key;->updateDiskCacheKey(Ljava/security/MessageDigest;)V

    const/4 v0, 0x4

    .line 479
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iget v1, p0, Lcom/bumptech/glide/signature/AndroidResourceSignature;->nightMode:I

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    .line 489
    invoke-virtual {p1, v0}, Ljava/security/MessageDigest;->update([B)V

    return-void

    .array-data 1
    .end array-data
.end method
