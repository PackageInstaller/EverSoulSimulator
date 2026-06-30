.class public final Lcom/kakao/sdk/friend/core/h/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/graphics/Bitmap;

.field public final b:Ljava/lang/String;

.field public final c:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;Ljava/lang/String;Landroid/widget/ImageView;)V
    .locals 1

    const-string v0, "target"

    .line 19
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/kakao/sdk/friend/core/h/b;->a:Landroid/graphics/Bitmap;

    iput-object p2, p0, Lcom/kakao/sdk/friend/core/h/b;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/kakao/sdk/friend/core/h/b;->c:Landroid/widget/ImageView;

    return-void

    nop

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public final a()Landroid/graphics/Bitmap;
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/kakao/sdk/friend/core/h/b;->a:Landroid/graphics/Bitmap;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/kakao/sdk/friend/core/h/b;->b:Ljava/lang/String;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final c()Landroid/widget/ImageView;
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/kakao/sdk/friend/core/h/b;->c:Landroid/widget/ImageView;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 19
    :cond_0
    instance-of v1, p1, Lcom/kakao/sdk/friend/core/h/b;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/kakao/sdk/friend/core/h/b;

    iget-object v1, p0, Lcom/kakao/sdk/friend/core/h/b;->a:Landroid/graphics/Bitmap;

    iget-object v3, p1, Lcom/kakao/sdk/friend/core/h/b;->a:Landroid/graphics/Bitmap;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/kakao/sdk/friend/core/h/b;->b:Ljava/lang/String;

    iget-object v3, p1, Lcom/kakao/sdk/friend/core/h/b;->b:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/kakao/sdk/friend/core/h/b;->c:Landroid/widget/ImageView;

    iget-object p1, p1, Lcom/kakao/sdk/friend/core/h/b;->c:Landroid/widget/ImageView;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    return v2

    :cond_4
    return v0

    .array-data 1
    .end array-data
.end method

.method public final hashCode()I
    .locals 3

    .line 19
    iget-object v0, p0, Lcom/kakao/sdk/friend/core/h/b;->a:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/kakao/sdk/friend/core/h/b;->b:Ljava/lang/String;

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/kakao/sdk/friend/core/h/b;->c:Landroid/widget/ImageView;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    return v1

    nop

    .array-data 1
    .end array-data
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    .line 19
    iget-object v0, p0, Lcom/kakao/sdk/friend/core/h/b;->a:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/kakao/sdk/friend/core/h/b;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/kakao/sdk/friend/core/h/b;->c:Landroid/widget/ImageView;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "DownloadResult(bitmap="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ", error="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", target="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .array-data 1
    .end array-data
.end method
