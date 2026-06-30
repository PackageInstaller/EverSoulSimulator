.class public final Lcom/kakao/sdk/friend/core/f/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/kakao/sdk/friend/core/f/h;

.field public final b:Ljava/util/List;

.field public final c:Lcom/kakao/sdk/friend/core/f/d;

.field public d:I


# direct methods
.method public constructor <init>(Lcom/kakao/sdk/friend/core/f/h;Ljava/util/List;Lcom/kakao/sdk/friend/core/f/d;)V
    .locals 1

    const-string v0, "loader"

    .line 19
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "imageUrls"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "downloader"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/kakao/sdk/friend/core/f/a;->a:Lcom/kakao/sdk/friend/core/f/h;

    iput-object p2, p0, Lcom/kakao/sdk/friend/core/f/a;->b:Ljava/util/List;

    iput-object p3, p0, Lcom/kakao/sdk/friend/core/f/a;->c:Lcom/kakao/sdk/friend/core/f/d;

    return-void

    nop

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public final a(Lcom/kakao/sdk/friend/core/view/SquircleImageView;)V
    .locals 4

    const-string v0, "target"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/kakao/sdk/friend/core/f/a;->d:I

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Lcom/kakao/sdk/friend/core/f/a;->d:I

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    iget-object v0, p0, Lcom/kakao/sdk/friend/core/f/a;->b:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_2

    sget-object v1, Lcom/kakao/sdk/friend/core/f/h;->d:Ljava/io/File;

    invoke-static {v0}, Lcom/kakao/sdk/friend/core/f/g;->a(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-static {p1, v1}, Lcom/kakao/sdk/friend/core/f/g;->a(Landroid/widget/ImageView;Landroid/graphics/Bitmap;)V

    return-void

    :cond_1
    iget-object v1, p0, Lcom/kakao/sdk/friend/core/f/a;->a:Lcom/kakao/sdk/friend/core/f/h;

    new-instance v2, Lcom/kakao/sdk/friend/core/g/d;

    iget-object v3, p0, Lcom/kakao/sdk/friend/core/f/a;->c:Lcom/kakao/sdk/friend/core/f/d;

    invoke-direct {v2, p1, v0, v3}, Lcom/kakao/sdk/friend/core/g/d;-><init>(Lcom/kakao/sdk/friend/core/view/SquircleImageView;Ljava/lang/String;Lcom/kakao/sdk/friend/core/f/d;)V

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p1, "action"

    .line 19
    invoke-static {v2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/kakao/sdk/friend/core/f/h;->a()V

    iget-object p1, v1, Lcom/kakao/sdk/friend/core/f/h;->c:Ljava/util/LinkedHashMap;

    .line 29
    iget-object v1, v1, Lcom/kakao/sdk/friend/core/f/h;->a:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v1

    const-string v2, "service.submit(action)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-void

    .line 39
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Method call should happen from the main thread."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .array-data 1
    .end array-data
.end method
