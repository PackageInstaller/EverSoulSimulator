.class public abstract Lcom/kakao/sdk/friend/core/k/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Landroid/graphics/Paint;

.field public static final b:Landroid/graphics/Paint;

.field public static final c:Landroid/graphics/Paint;

.field public static d:Landroid/util/LruCache;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 19
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    sput-object v0, Lcom/kakao/sdk/friend/core/k/a;->a:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    sput-object v1, Lcom/kakao/sdk/friend/core/k/a;->b:Landroid/graphics/Paint;

    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    sput-object v2, Lcom/kakao/sdk/friend/core/k/a;->c:Landroid/graphics/Paint;

    const-string v3, "#4a000000"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    const-string v0, "#0c000000"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    return-void

    .array-data 1
    .end array-data
.end method

.method public static a(Landroid/content/Context;J)Landroid/graphics/Bitmap;
    .locals 6

    const-string v0, "context"

    .line 29
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Lcom/kakao/sdk/friend/core/k/a;->d:Landroid/util/LruCache;

    if-nez v1, :cond_1

    new-instance v1, Landroid/util/LruCache;

    .line 39
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-class v0, Landroid/app/ActivityManager;

    invoke-static {p0, v0}, Landroidx/core/content/ContextCompat;->getSystemService(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    iget p0, p0, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v2, 0x100000

    and-int/2addr p0, v2

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    if-eqz p0, :cond_0

    invoke-virtual {v0}, Landroid/app/ActivityManager;->getLargeMemoryClass()I

    move-result p0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getMemoryClass()I

    move-result p0

    :goto_0
    int-to-long v2, p0

    const-wide/32 v4, 0x100000

    mul-long/2addr v2, v4

    const/4 p0, 0x7

    int-to-long v4, p0

    div-long/2addr v2, v4

    long-to-int p0, v2

    .line 49
    invoke-direct {v1, p0}, Landroid/util/LruCache;-><init>(I)V

    sput-object v1, Lcom/kakao/sdk/friend/core/k/a;->d:Landroid/util/LruCache;

    :cond_1
    sget-object p0, Lcom/kakao/sdk/friend/core/k/a;->d:Landroid/util/LruCache;

    if-nez p0, :cond_2

    const-string p0, "memoryCache"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_2
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/graphics/Bitmap;

    return-object p0

    .array-data 1
    .end array-data
.end method

.method public static a(Landroid/content/Context;JLjava/util/List;)Landroid/graphics/Bitmap;
    .locals 1

    const-string v0, "context"

    .line 59
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "profileImages"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, p3}, Lcom/kakao/sdk/friend/core/k/a;->a(Landroid/content/Context;Ljava/util/List;)Landroid/graphics/Bitmap;

    move-result-object p0

    sget-object p3, Lcom/kakao/sdk/friend/core/k/a;->d:Landroid/util/LruCache;

    if-nez p3, :cond_0

    const-string p3, "memoryCache"

    invoke-static {p3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p3, 0x0

    :cond_0
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p3, p1, p0}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0

    .array-data 1
    .end array-data
.end method

.method public static a(Landroid/content/Context;Ljava/util/List;)Landroid/graphics/Bitmap;
    .locals 14

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "profileImages"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/16 v1, 0x6e

    invoke-static {v1, v1, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    const-string v2, "createBitmap(110, 110, Bitmap.Config.ARGB_8888)"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    new-instance v3, Landroid/graphics/Path;

    invoke-direct {v3}, Landroid/graphics/Path;-><init>()V

    sget-object v4, Lcom/kakao/sdk/friend/core/k/a;->b:Landroid/graphics/Paint;

    .line 69
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v5, v5, Landroid/util/DisplayMetrics;->density:F

    const/high16 v6, 0x3f000000    # 0.5f

    mul-float/2addr v5, v6

    float-to-int v5, v5

    int-to-float v5, v5

    .line 79
    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x0

    move v6, v5

    :goto_0
    if-ge v6, v4, :cond_12

    invoke-virtual {v2}, Landroid/graphics/Canvas;->save()I

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v7

    const/4 v8, 0x4

    const/high16 v9, 0x42400000    # 48.0f

    const/4 v10, 0x3

    const/4 v11, 0x2

    if-eq v7, v11, :cond_2

    if-eq v7, v10, :cond_1

    if-eq v7, v8, :cond_0

    .line 89
    invoke-static {v1, v1}, Ljava/lang/Math;->min(II)I

    move-result v9

    goto :goto_2

    :cond_0
    invoke-static {v1, v1}, Ljava/lang/Math;->min(II)I

    move-result v12

    int-to-float v12, v12

    const/high16 v13, 0x41b80000    # 23.0f

    goto :goto_1

    :cond_1
    invoke-static {v1, v1}, Ljava/lang/Math;->min(II)I

    move-result v12

    int-to-float v12, v12

    const/high16 v13, 0x41c80000    # 25.0f

    goto :goto_1

    :cond_2
    invoke-static {v1, v1}, Ljava/lang/Math;->min(II)I

    move-result v12

    int-to-float v12, v12

    const/high16 v13, 0x41f00000    # 30.0f

    :goto_1
    mul-float/2addr v12, v13

    div-float/2addr v12, v9

    float-to-int v9, v12

    :goto_2
    const/4 v12, 0x1

    if-eq v7, v12, :cond_c

    if-eq v7, v11, :cond_a

    if-eq v7, v10, :cond_7

    if-eq v7, v8, :cond_3

    .line 99
    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    goto :goto_4

    :cond_3
    if-eqz v6, :cond_6

    new-instance v7, Landroid/graphics/Rect;

    rsub-int/lit8 v8, v9, 0x6e

    if-eq v6, v12, :cond_5

    if-eq v6, v11, :cond_4

    invoke-direct {v7, v8, v8, v1, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    goto :goto_4

    :cond_4
    invoke-direct {v7, v5, v8, v9, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    goto :goto_4

    :cond_5
    invoke-direct {v7, v8, v5, v1, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    goto :goto_4

    :cond_6
    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7, v5, v5, v9, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    goto :goto_4

    :cond_7
    rsub-int/lit8 v7, v9, 0x6e

    div-int/lit8 v8, v7, 0x2

    if-eqz v6, :cond_9

    new-instance v8, Landroid/graphics/Rect;

    if-eq v6, v12, :cond_8

    invoke-direct {v8, v7, v7, v1, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    goto :goto_3

    :cond_8
    invoke-direct {v8, v5, v7, v9, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    :goto_3
    move-object v7, v8

    goto :goto_4

    :cond_9
    new-instance v7, Landroid/graphics/Rect;

    add-int v13, v8, v9

    invoke-direct {v7, v8, v5, v13, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    goto :goto_4

    :cond_a
    new-instance v7, Landroid/graphics/Rect;

    if-nez v6, :cond_b

    invoke-direct {v7, v5, v5, v9, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    goto :goto_4

    :cond_b
    rsub-int/lit8 v8, v9, 0x6e

    invoke-direct {v7, v8, v8, v1, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    goto :goto_4

    :cond_c
    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7, v5, v5, v1, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 109
    :goto_4
    iget v8, v7, Landroid/graphics/Rect;->left:I

    add-int/2addr v8, v12

    int-to-float v8, v8

    iget v9, v7, Landroid/graphics/Rect;->top:I

    add-int/2addr v9, v12

    int-to-float v9, v9

    invoke-virtual {v2, v8, v9}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v8

    if-eq v8, v11, :cond_f

    if-eq v8, v10, :cond_d

    goto :goto_5

    :cond_d
    if-eqz v6, :cond_10

    if-eq v6, v12, :cond_e

    goto :goto_6

    :cond_e
    move v10, v11

    goto :goto_6

    :cond_f
    if-nez v6, :cond_10

    move v10, v12

    goto :goto_6

    :cond_10
    :goto_5
    move v10, v5

    :goto_6
    invoke-static {v10}, Lcom/kakao/sdk/friend/core/l/b0;->a(I)Landroid/graphics/Path;

    move-result-object v8

    invoke-virtual {v3, v8}, Landroid/graphics/Path;->set(Landroid/graphics/Path;)V

    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v8

    int-to-float v8, v8

    .line 119
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v9

    iget v9, v9, Landroid/util/DisplayMetrics;->density:F

    const/4 v10, 0x0

    mul-float/2addr v9, v10

    sub-float/2addr v8, v9

    int-to-float v9, v11

    sub-float/2addr v8, v9

    .line 129
    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v11

    int-to-float v11, v11

    .line 139
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v12

    iget v12, v12, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v12, v10

    sub-float/2addr v11, v12

    sub-float/2addr v11, v9

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v9

    iget v9, v9, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v9, v10

    .line 149
    invoke-static {v3, v8, v11, v9}, Lcom/kakao/sdk/friend/core/l/b0;->a(Landroid/graphics/Path;FFF)V

    invoke-virtual {v2}, Landroid/graphics/Canvas;->save()I

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-virtual {v2, v10, v8}, Landroid/graphics/Canvas;->translate(FF)V

    sget-object v8, Lcom/kakao/sdk/friend/core/k/a;->a:Landroid/graphics/Paint;

    invoke-virtual {v2, v3, v8}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    invoke-virtual {v2}, Landroid/graphics/Canvas;->restore()V

    new-instance v8, Landroid/graphics/Matrix;

    invoke-direct {v8}, Landroid/graphics/Matrix;-><init>()V

    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v9

    int-to-float v9, v9

    const/high16 v10, 0x42dc0000    # 110.0f

    div-float/2addr v9, v10

    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v7, v10

    invoke-virtual {v8, v9, v7}, Landroid/graphics/Matrix;->postScale(FF)Z

    invoke-interface {p1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/graphics/Bitmap;

    if-eqz v7, :cond_11

    new-instance v9, Landroid/graphics/BitmapShader;

    sget-object v10, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {v9, v7, v10, v10}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    invoke-virtual {v9, v8}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    sget-object v7, Lcom/kakao/sdk/friend/core/k/a;->c:Landroid/graphics/Paint;

    invoke-virtual {v7, v9}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    invoke-virtual {v2, v3, v7}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    sget-object v7, Lcom/kakao/sdk/friend/core/k/a;->b:Landroid/graphics/Paint;

    invoke-virtual {v2, v3, v7}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    invoke-virtual {v2}, Landroid/graphics/Canvas;->restore()V

    :cond_11
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0

    :cond_12
    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public static a()V
    .locals 1

    .line 19
    sget-object v0, Lcom/kakao/sdk/friend/core/k/a;->d:Landroid/util/LruCache;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/util/LruCache;->evictAll()V

    :cond_0
    return-void

    .array-data 1
    .end array-data
.end method
