.class public final Lcom/kakao/sdk/friend/core/f/h;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static d:Ljava/io/File;

.field public static e:Landroid/util/LruCache;

.field public static final f:Lkotlin/Lazy;

.field public static final g:Lcom/kakao/sdk/friend/core/f/f;


# instance fields
.field public final a:Ljava/util/concurrent/ExecutorService;

.field public final b:Lcom/kakao/sdk/friend/core/f/d;

.field public final c:Ljava/util/LinkedHashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 19
    sget-object v0, Lcom/kakao/sdk/friend/core/f/e;->a:Lcom/kakao/sdk/friend/core/f/e;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/kakao/sdk/friend/core/f/h;->f:Lkotlin/Lazy;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    new-instance v1, Lcom/kakao/sdk/friend/core/f/f;

    invoke-direct {v1, v0}, Lcom/kakao/sdk/friend/core/f/f;-><init>(Landroid/os/Looper;)V

    sput-object v1, Lcom/kakao/sdk/friend/core/f/h;->g:Lcom/kakao/sdk/friend/core/f/f;

    return-void

    .array-data 1
    .end array-data
.end method

.method public constructor <init>()V
    .locals 2

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    const-string v1, "newCachedThreadPool()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/kakao/sdk/friend/core/f/h;->a:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lcom/kakao/sdk/friend/core/f/d;

    sget-object v1, Lcom/kakao/sdk/friend/core/f/h;->g:Lcom/kakao/sdk/friend/core/f/f;

    invoke-direct {v0, v1}, Lcom/kakao/sdk/friend/core/f/d;-><init>(Lcom/kakao/sdk/friend/core/f/f;)V

    iput-object v0, p0, Lcom/kakao/sdk/friend/core/f/h;->b:Lcom/kakao/sdk/friend/core/f/d;

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/kakao/sdk/friend/core/f/h;->c:Ljava/util/LinkedHashMap;

    return-void

    nop

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 59
    iget-object v0, p0, Lcom/kakao/sdk/friend/core/f/h;->c:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/Future;

    invoke-interface {v1}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_1
    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public final a(Ljava/lang/String;)V
    .locals 3

    const-string v0, "imageUrl"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    sget-object v1, Lcom/kakao/sdk/friend/core/f/d;->c:Ljava/util/concurrent/ConcurrentHashMap;

    .line 19
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    sget-object v0, Lcom/kakao/sdk/friend/core/f/d;->c:Ljava/util/concurrent/ConcurrentHashMap;

    .line 39
    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lretrofit2/Call;

    if-eqz v1, :cond_2

    invoke-interface {v1}, Lretrofit2/Call;->isCanceled()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-interface {v1}, Lretrofit2/Call;->isExecuted()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Lretrofit2/Call;->cancel()V

    :cond_1
    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lretrofit2/Call;

    .line 49
    :cond_2
    iget-object v0, p0, Lcom/kakao/sdk/friend/core/f/h;->c:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/kakao/sdk/friend/core/f/h;->c:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Future;

    if-eqz v0, :cond_4

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    :cond_4
    iget-object v0, p0, Lcom/kakao/sdk/friend/core/f/h;->c:Ljava/util/LinkedHashMap;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/kakao/sdk/friend/core/f/h;->a()V

    :goto_0
    return-void

    .array-data 1
    .end array-data
.end method
