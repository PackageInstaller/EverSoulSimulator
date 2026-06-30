.class public final Lcom/kakao/sdk/friend/core/f/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lretrofit2/Callback;


# instance fields
.field public final synthetic a:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Lretrofit2/Call;

.field public final synthetic d:Ljava/util/List;

.field public final synthetic e:Ljava/util/List;

.field public final synthetic f:Lkotlin/jvm/internal/Ref$BooleanRef;

.field public final synthetic g:Lcom/kakao/sdk/friend/core/f/d;

.field public final synthetic h:Lkotlin/jvm/functions/Function1;

.field public final synthetic i:Lkotlin/jvm/internal/Ref$ObjectRef;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/atomic/AtomicInteger;Ljava/lang/String;Lretrofit2/Call;Ljava/util/List;Ljava/util/List;Lkotlin/jvm/internal/Ref$BooleanRef;Lcom/kakao/sdk/friend/core/f/d;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/internal/Ref$ObjectRef;)V
    .locals 0

    .line 19
    iput-object p1, p0, Lcom/kakao/sdk/friend/core/f/c;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    iput-object p2, p0, Lcom/kakao/sdk/friend/core/f/c;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/kakao/sdk/friend/core/f/c;->c:Lretrofit2/Call;

    iput-object p4, p0, Lcom/kakao/sdk/friend/core/f/c;->d:Ljava/util/List;

    iput-object p5, p0, Lcom/kakao/sdk/friend/core/f/c;->e:Ljava/util/List;

    iput-object p6, p0, Lcom/kakao/sdk/friend/core/f/c;->f:Lkotlin/jvm/internal/Ref$BooleanRef;

    iput-object p7, p0, Lcom/kakao/sdk/friend/core/f/c;->g:Lcom/kakao/sdk/friend/core/f/d;

    iput-object p8, p0, Lcom/kakao/sdk/friend/core/f/c;->h:Lkotlin/jvm/functions/Function1;

    iput-object p9, p0, Lcom/kakao/sdk/friend/core/f/c;->i:Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public final onFailure(Lretrofit2/Call;Ljava/lang/Throwable;)V
    .locals 3

    const-string v0, "call"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "t"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/kakao/sdk/friend/core/f/c;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 19
    sget-object p1, Lcom/kakao/sdk/friend/core/f/d;->c:Ljava/util/concurrent/ConcurrentHashMap;

    .line 29
    iget-object v0, p0, Lcom/kakao/sdk/friend/core/f/c;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/kakao/sdk/friend/core/f/c;->f:Lkotlin/jvm/internal/Ref$BooleanRef;

    const/4 v0, 0x1

    iput-boolean v0, p1, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    iget-object p1, p0, Lcom/kakao/sdk/friend/core/f/c;->i:Lkotlin/jvm/internal/Ref$ObjectRef;

    new-instance v0, Lcom/kakao/sdk/friend/core/h/c;

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    iget-object v1, p0, Lcom/kakao/sdk/friend/core/f/c;->h:Lkotlin/jvm/functions/Function1;

    const/4 v2, 0x0

    invoke-direct {v0, v2, p2, v1}, Lcom/kakao/sdk/friend/core/h/c;-><init>(Ljava/util/List;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    iput-object v0, p1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    iget-object p1, p0, Lcom/kakao/sdk/friend/core/f/c;->g:Lcom/kakao/sdk/friend/core/f/d;

    .line 39
    iget-object p1, p1, Lcom/kakao/sdk/friend/core/f/d;->a:Landroid/os/Handler;

    .line 49
    iget-object p2, p0, Lcom/kakao/sdk/friend/core/f/c;->i:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object p2, p2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    const/4 v0, 0x2

    invoke-virtual {p1, v0, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    .array-data 1
    .end array-data
.end method

.method public final onResponse(Lretrofit2/Call;Lretrofit2/Response;)V
    .locals 7

    const-string v0, "call"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "response"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/kakao/sdk/friend/core/f/c;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 19
    sget-object p1, Lcom/kakao/sdk/friend/core/f/d;->c:Ljava/util/concurrent/ConcurrentHashMap;

    .line 29
    iget-object v0, p0, Lcom/kakao/sdk/friend/core/f/c;->b:Ljava/lang/String;

    iget-object v1, p0, Lcom/kakao/sdk/friend/core/f/c;->c:Lretrofit2/Call;

    invoke-virtual {p1, v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    invoke-virtual {p2}, Lretrofit2/Response;->isSuccessful()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lokhttp3/ResponseBody;

    if-eqz p1, :cond_1

    iget-object p2, p0, Lcom/kakao/sdk/friend/core/f/c;->d:Ljava/util/List;

    iget-object v0, p0, Lcom/kakao/sdk/friend/core/f/c;->b:Ljava/lang/String;

    iget-object v1, p0, Lcom/kakao/sdk/friend/core/f/c;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    iget-object v2, p0, Lcom/kakao/sdk/friend/core/f/c;->e:Ljava/util/List;

    iget-object v3, p0, Lcom/kakao/sdk/friend/core/f/c;->f:Lkotlin/jvm/internal/Ref$BooleanRef;

    iget-object v4, p0, Lcom/kakao/sdk/friend/core/f/c;->g:Lcom/kakao/sdk/friend/core/f/d;

    iget-object v5, p0, Lcom/kakao/sdk/friend/core/f/c;->h:Lkotlin/jvm/functions/Function1;

    invoke-virtual {p1}, Lokhttp3/ResponseBody;->byteStream()Ljava/io/InputStream;

    move-result-object p1

    invoke-static {p1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v6, Lcom/kakao/sdk/friend/core/f/h;->d:Ljava/io/File;

    invoke-static {v0}, Lcom/kakao/sdk/friend/core/f/g;->a(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v6

    invoke-static {v6, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    const-string v6, "bitmap"

    invoke-static {p1, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, p1}, Lcom/kakao/sdk/friend/core/f/g;->a(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    :cond_0
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p1

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-ne p1, v0, :cond_1

    iget-boolean p1, v3, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    if-nez p1, :cond_1

    const-string p1, "apiResult"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 49
    new-instance p1, Lcom/kakao/sdk/friend/core/h/c;

    const/4 v0, 0x0

    invoke-direct {p1, p2, v0, v5}, Lcom/kakao/sdk/friend/core/h/c;-><init>(Ljava/util/List;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    iget-object p2, v4, Lcom/kakao/sdk/friend/core/f/d;->a:Landroid/os/Handler;

    const/4 v0, 0x1

    invoke-virtual {p2, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_1
    return-void

    .array-data 1
    .end array-data
.end method
