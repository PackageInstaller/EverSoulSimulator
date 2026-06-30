.class public final Lcom/kakao/sdk/friend/core/g/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final a:Landroid/widget/ImageView;

.field public final b:Ljava/lang/String;

.field public final c:Lcom/kakao/sdk/friend/core/f/d;


# direct methods
.method public constructor <init>(Lcom/kakao/sdk/friend/core/view/SquircleImageView;Ljava/lang/String;Lcom/kakao/sdk/friend/core/f/d;)V
    .locals 1

    const-string v0, "target"

    .line 19
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "imageUrl"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "downloader"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/kakao/sdk/friend/core/g/d;->a:Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/kakao/sdk/friend/core/g/d;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/kakao/sdk/friend/core/g/d;->c:Lcom/kakao/sdk/friend/core/f/d;

    return-void

    nop

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget-object v0, p0, Lcom/kakao/sdk/friend/core/g/d;->c:Lcom/kakao/sdk/friend/core/f/d;

    iget-object v1, p0, Lcom/kakao/sdk/friend/core/g/d;->a:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/kakao/sdk/friend/core/g/d;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v3, "target"

    .line 19
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "imageUrl"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v3, v0, Lcom/kakao/sdk/friend/core/f/d;->b:Lcom/kakao/sdk/friend/core/g/c;

    invoke-interface {v3, v2}, Lcom/kakao/sdk/friend/core/g/c;->a(Ljava/lang/String;)Lretrofit2/Call;

    move-result-object v3

    sget-object v4, Lcom/kakao/sdk/friend/core/f/d;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v3}, Lretrofit2/Call;->execute()Lretrofit2/Response;

    move-result-object v3

    invoke-virtual {v4, v2}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v3}, Lretrofit2/Response;->isSuccessful()Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_1

    invoke-virtual {v3}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lokhttp3/ResponseBody;

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Lokhttp3/ResponseBody;->byteStream()Ljava/io/InputStream;

    move-result-object v3

    invoke-static {v3}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v3

    new-instance v4, Lcom/kakao/sdk/friend/core/h/b;

    invoke-direct {v4, v3, v5, v1}, Lcom/kakao/sdk/friend/core/h/b;-><init>(Landroid/graphics/Bitmap;Ljava/lang/String;Landroid/widget/ImageView;)V

    sget-object v1, Lcom/kakao/sdk/friend/core/f/h;->d:Ljava/io/File;

    invoke-static {v2}, Lcom/kakao/sdk/friend/core/f/g;->a(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "bitmap"

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2, v3}, Lcom/kakao/sdk/friend/core/f/g;->a(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    :cond_0
    iget-object v0, v0, Lcom/kakao/sdk/friend/core/f/d;->a:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v4}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    goto :goto_0

    :cond_1
    new-instance v2, Lcom/kakao/sdk/friend/core/h/b;

    invoke-virtual {v3}, Lretrofit2/Response;->message()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v5, v3, v1}, Lcom/kakao/sdk/friend/core/h/b;-><init>(Landroid/graphics/Bitmap;Ljava/lang/String;Landroid/widget/ImageView;)V

    iget-object v0, v0, Lcom/kakao/sdk/friend/core/f/d;->a:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_2
    return-void

    nop

    .array-data 1
    .end array-data
.end method
