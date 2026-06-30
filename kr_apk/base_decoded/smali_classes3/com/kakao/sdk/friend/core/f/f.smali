.class public final Lcom/kakao/sdk/friend/core/f/f;
.super Landroid/os/Handler;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/os/Looper;)V
    .locals 0

    .line 19
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 5

    const-string v0, "msg"

    .line 19
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto/16 :goto_0

    :cond_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v0, p1, Lcom/kakao/sdk/friend/core/h/b;

    const-string v1, "Image Loading failed: "

    if-eqz v0, :cond_1

    sget-object v0, Lcom/kakao/sdk/common/util/SdkLog;->Companion:Lcom/kakao/sdk/common/util/SdkLog$Companion;

    check-cast p1, Lcom/kakao/sdk/friend/core/h/b;

    invoke-virtual {p1}, Lcom/kakao/sdk/friend/core/h/b;->b()Ljava/lang/String;

    move-result-object p1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/kakao/sdk/common/util/SdkLog$Companion;->e(Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_1
    instance-of v0, p1, Lcom/kakao/sdk/friend/core/h/a;

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/kakao/sdk/common/util/SdkLog;->Companion:Lcom/kakao/sdk/common/util/SdkLog$Companion;

    check-cast p1, Lcom/kakao/sdk/friend/core/h/a;

    invoke-virtual {p1}, Lcom/kakao/sdk/friend/core/h/a;->c()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kakao/sdk/common/util/SdkLog$Companion;->e(Ljava/lang/Object;)V

    sget-object v0, Lcom/kakao/sdk/friend/core/f/h;->d:Ljava/io/File;

    invoke-virtual {p1}, Lcom/kakao/sdk/friend/core/h/a;->b()Lkotlin/jvm/functions/Function1;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/kakao/sdk/friend/core/f/g;->a(Landroid/graphics/Bitmap;Lkotlin/jvm/functions/Function1;)V

    goto :goto_0

    :cond_2
    instance-of v0, p1, Lcom/kakao/sdk/friend/core/h/c;

    if-eqz v0, :cond_6

    sget-object v0, Lcom/kakao/sdk/common/util/SdkLog;->Companion:Lcom/kakao/sdk/common/util/SdkLog$Companion;

    check-cast p1, Lcom/kakao/sdk/friend/core/h/c;

    invoke-virtual {p1}, Lcom/kakao/sdk/friend/core/h/c;->c()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kakao/sdk/common/util/SdkLog$Companion;->e(Ljava/lang/Object;)V

    sget-object v0, Lcom/kakao/sdk/friend/core/f/h;->d:Ljava/io/File;

    invoke-virtual {p1}, Lcom/kakao/sdk/friend/core/h/c;->b()Lkotlin/jvm/functions/Function1;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/kakao/sdk/friend/core/f/g;->a(Ljava/util/List;Lkotlin/jvm/functions/Function1;)V

    goto :goto_0

    :cond_3
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v0, p1, Lcom/kakao/sdk/friend/core/h/b;

    if-eqz v0, :cond_4

    sget-object v0, Lcom/kakao/sdk/friend/core/f/h;->d:Ljava/io/File;

    check-cast p1, Lcom/kakao/sdk/friend/core/h/b;

    invoke-virtual {p1}, Lcom/kakao/sdk/friend/core/h/b;->c()Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {p1}, Lcom/kakao/sdk/friend/core/h/b;->a()Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/kakao/sdk/friend/core/f/g;->a(Landroid/widget/ImageView;Landroid/graphics/Bitmap;)V

    goto :goto_0

    :cond_4
    instance-of v0, p1, Lcom/kakao/sdk/friend/core/h/a;

    if-eqz v0, :cond_5

    sget-object v0, Lcom/kakao/sdk/friend/core/f/h;->d:Ljava/io/File;

    check-cast p1, Lcom/kakao/sdk/friend/core/h/a;

    invoke-virtual {p1}, Lcom/kakao/sdk/friend/core/h/a;->a()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p1}, Lcom/kakao/sdk/friend/core/h/a;->b()Lkotlin/jvm/functions/Function1;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/kakao/sdk/friend/core/f/g;->a(Landroid/graphics/Bitmap;Lkotlin/jvm/functions/Function1;)V

    goto :goto_0

    :cond_5
    instance-of v0, p1, Lcom/kakao/sdk/friend/core/h/c;

    if-eqz v0, :cond_6

    sget-object v0, Lcom/kakao/sdk/friend/core/f/h;->d:Ljava/io/File;

    check-cast p1, Lcom/kakao/sdk/friend/core/h/c;

    invoke-virtual {p1}, Lcom/kakao/sdk/friend/core/h/c;->a()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1}, Lcom/kakao/sdk/friend/core/h/c;->b()Lkotlin/jvm/functions/Function1;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/kakao/sdk/friend/core/f/g;->a(Ljava/util/List;Lkotlin/jvm/functions/Function1;)V

    :cond_6
    :goto_0
    return-void

    .array-data 1
    .end array-data
.end method
