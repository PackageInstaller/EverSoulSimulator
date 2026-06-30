.class public final Lcom/kakao/sdk/friend/core/g/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final a:Ljava/util/List;

.field public final b:Lcom/kakao/sdk/friend/core/f/d;

.field public final c:Lkotlin/jvm/functions/Function1;


# direct methods
.method public constructor <init>(JLjava/util/List;Lcom/kakao/sdk/friend/core/f/d;Lcom/kakao/sdk/friend/core/c/b;)V
    .locals 0

    const-string p1, "imageUrls"

    .line 19
    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "downloader"

    invoke-static {p4, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "callback"

    invoke-static {p5, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Lcom/kakao/sdk/friend/core/g/b;->a:Ljava/util/List;

    iput-object p4, p0, Lcom/kakao/sdk/friend/core/g/b;->b:Lcom/kakao/sdk/friend/core/f/d;

    iput-object p5, p0, Lcom/kakao/sdk/friend/core/g/b;->c:Lkotlin/jvm/functions/Function1;

    return-void

    nop

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public final run()V
    .locals 20

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/kakao/sdk/friend/core/g/b;->b:Lcom/kakao/sdk/friend/core/f/d;

    iget-object v12, v0, Lcom/kakao/sdk/friend/core/g/b;->a:Ljava/util/List;

    iget-object v13, v0, Lcom/kakao/sdk/friend/core/g/b;->c:Lkotlin/jvm/functions/Function1;

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "imageUrls"

    .line 19
    invoke-static {v12, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "callback"

    invoke-static {v13, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v14, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v14}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    new-instance v15, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v15, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    new-instance v16, Lkotlin/jvm/internal/Ref$BooleanRef;

    invoke-direct/range {v16 .. v16}, Lkotlin/jvm/internal/Ref$BooleanRef;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v1}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v10

    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :cond_0
    :goto_0
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Ljava/lang/String;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-string v4, "apiResult"

    if-nez v3, :cond_1

    invoke-virtual {v15}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    invoke-virtual {v15}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v5

    if-ne v3, v5, :cond_0

    invoke-static {v10, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    new-instance v3, Lcom/kakao/sdk/friend/core/h/c;

    invoke-direct {v3, v10, v2, v13}, Lcom/kakao/sdk/friend/core/h/c;-><init>(Ljava/util/List;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    iget-object v2, v11, Lcom/kakao/sdk/friend/core/f/d;->a:Landroid/os/Handler;

    invoke-virtual {v2, v1, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 39
    :cond_1
    sget-object v5, Lcom/kakao/sdk/friend/core/f/h;->d:Ljava/io/File;

    invoke-static {v3}, Lcom/kakao/sdk/friend/core/f/g;->a(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v5

    if-eqz v5, :cond_2

    invoke-virtual {v15}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    invoke-static {v3}, Lcom/kakao/sdk/friend/core/f/g;->a(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-interface {v10, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v15}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v5

    if-ne v3, v5, :cond_0

    invoke-static {v10, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    new-instance v3, Lcom/kakao/sdk/friend/core/h/c;

    invoke-direct {v3, v10, v2, v13}, Lcom/kakao/sdk/friend/core/h/c;-><init>(Ljava/util/List;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    iget-object v2, v11, Lcom/kakao/sdk/friend/core/f/d;->a:Landroid/os/Handler;

    invoke-virtual {v2, v1, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 59
    :cond_2
    iget-object v1, v11, Lcom/kakao/sdk/friend/core/f/d;->b:Lcom/kakao/sdk/friend/core/g/c;

    invoke-interface {v1, v3}, Lcom/kakao/sdk/friend/core/g/c;->a(Ljava/lang/String;)Lretrofit2/Call;

    move-result-object v9

    sget-object v1, Lcom/kakao/sdk/friend/core/f/d;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, v3, v9}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v8, Lcom/kakao/sdk/friend/core/f/c;

    move-object v1, v8

    move-object v2, v15

    move-object v4, v9

    move-object v5, v10

    move-object v6, v12

    move-object/from16 v7, v16

    move-object v0, v8

    move-object v8, v11

    move-object/from16 v18, v11

    move-object v11, v9

    move-object v9, v13

    move-object/from16 v19, v10

    move-object v10, v14

    invoke-direct/range {v1 .. v10}, Lcom/kakao/sdk/friend/core/f/c;-><init>(Ljava/util/concurrent/atomic/AtomicInteger;Ljava/lang/String;Lretrofit2/Call;Ljava/util/List;Ljava/util/List;Lkotlin/jvm/internal/Ref$BooleanRef;Lcom/kakao/sdk/friend/core/f/d;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/internal/Ref$ObjectRef;)V

    invoke-interface {v11, v0}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    move-object/from16 v0, p0

    move-object/from16 v11, v18

    move-object/from16 v10, v19

    goto/16 :goto_0

    :cond_3
    return-void

    .array-data 1
    .end array-data
.end method
