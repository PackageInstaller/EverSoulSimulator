.class public final Lcom/kakao/sdk/friend/core/c/b;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic a:Lcom/kakao/sdk/friend/core/e/i;

.field public final synthetic b:Lcom/kakao/sdk/friend/core/c/c;

.field public final synthetic c:Lcom/kakao/sdk/friend/core/i/a;


# direct methods
.method public constructor <init>(Lcom/kakao/sdk/friend/core/e/i;Lcom/kakao/sdk/friend/core/c/c;Lcom/kakao/sdk/friend/core/i/a;)V
    .locals 0

    .line 19
    iput-object p1, p0, Lcom/kakao/sdk/friend/core/c/b;->a:Lcom/kakao/sdk/friend/core/e/i;

    iput-object p2, p0, Lcom/kakao/sdk/friend/core/c/b;->b:Lcom/kakao/sdk/friend/core/c/c;

    iput-object p3, p0, Lcom/kakao/sdk/friend/core/c/b;->c:Lcom/kakao/sdk/friend/core/i/a;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void

    nop

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    check-cast p1, Ljava/util/List;

    const/4 v0, 0x0

    const-string v1, "root.context"

    if-eqz p1, :cond_2

    .line 19
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lcom/kakao/sdk/friend/core/c/b;->b:Lcom/kakao/sdk/friend/core/c/c;

    iget-object v4, p0, Lcom/kakao/sdk/friend/core/c/b;->c:Lcom/kakao/sdk/friend/core/i/a;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    .line 29
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v4, p1}, Lcom/kakao/sdk/friend/core/c/c;->a(Lcom/kakao/sdk/friend/core/i/a;I)I

    move-result p1

    .line 39
    iget-object v3, p0, Lcom/kakao/sdk/friend/core/c/b;->b:Lcom/kakao/sdk/friend/core/c/c;

    iget-object v4, p0, Lcom/kakao/sdk/friend/core/c/b;->a:Lcom/kakao/sdk/friend/core/e/i;

    :goto_0
    if-ge v0, p1, :cond_1

    .line 49
    iget-object v5, v4, Lcom/kakao/sdk/friend/core/e/i;->a:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 59
    invoke-virtual {v5}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 69
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v5}, Lcom/kakao/sdk/friend/core/c/c;->a(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 79
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    sget-object p1, Lcom/kakao/sdk/friend/core/k/a;->a:Landroid/graphics/Paint;

    iget-object p1, p0, Lcom/kakao/sdk/friend/core/c/b;->a:Lcom/kakao/sdk/friend/core/e/i;

    .line 89
    iget-object p1, p1, Lcom/kakao/sdk/friend/core/e/i;->a:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 99
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/kakao/sdk/friend/core/c/b;->c:Lcom/kakao/sdk/friend/core/i/a;

    .line 109
    iget-wide v0, v0, Lcom/kakao/sdk/friend/core/i/a;->a:J

    .line 119
    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v2

    invoke-static {p1, v0, v1, v2}, Lcom/kakao/sdk/friend/core/k/a;->a(Landroid/content/Context;JLjava/util/List;)Landroid/graphics/Bitmap;

    move-result-object p1

    iget-object v0, p0, Lcom/kakao/sdk/friend/core/c/b;->a:Lcom/kakao/sdk/friend/core/e/i;

    iget-object v0, v0, Lcom/kakao/sdk/friend/core/e/i;->e:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_3

    :cond_2
    :goto_1
    iget-object p1, p0, Lcom/kakao/sdk/friend/core/c/b;->a:Lcom/kakao/sdk/friend/core/e/i;

    iget-object v2, p1, Lcom/kakao/sdk/friend/core/e/i;->e:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/kakao/sdk/friend/core/c/b;->b:Lcom/kakao/sdk/friend/core/c/c;

    .line 129
    iget-object p1, p1, Lcom/kakao/sdk/friend/core/e/i;->a:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 139
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/kakao/sdk/friend/core/c/b;->c:Lcom/kakao/sdk/friend/core/i/a;

    .line 149
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1, v0}, Lcom/kakao/sdk/friend/core/c/c;->a(Lcom/kakao/sdk/friend/core/i/a;I)I

    move-result v1

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    :goto_2
    if-ge v0, v1, :cond_3

    invoke-static {p1}, Lcom/kakao/sdk/friend/core/c/c;->a(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 159
    :cond_3
    invoke-static {p1, v3}, Lcom/kakao/sdk/friend/core/k/a;->a(Landroid/content/Context;Ljava/util/List;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 169
    invoke-virtual {v2, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 179
    :goto_3
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    nop

    .array-data 1
    .end array-data
.end method
