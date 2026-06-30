.class public final Lcom/kakao/sdk/friend/core/c/a;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic a:Lcom/kakao/sdk/friend/core/e/i;

.field public final synthetic b:Lcom/kakao/sdk/friend/core/i/a;


# direct methods
.method public constructor <init>(Lcom/kakao/sdk/friend/core/e/i;Lcom/kakao/sdk/friend/core/i/a;)V
    .locals 0

    .line 19
    iput-object p1, p0, Lcom/kakao/sdk/friend/core/c/a;->a:Lcom/kakao/sdk/friend/core/e/i;

    iput-object p2, p0, Lcom/kakao/sdk/friend/core/c/a;->b:Lcom/kakao/sdk/friend/core/i/a;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void

    nop

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    check-cast p1, Landroid/graphics/Bitmap;

    const/4 v0, 0x1

    new-array v0, v0, [Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 19
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->mutableListOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    sget-object v0, Lcom/kakao/sdk/friend/core/k/a;->a:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/kakao/sdk/friend/core/c/a;->a:Lcom/kakao/sdk/friend/core/e/i;

    .line 29
    iget-object v0, v0, Lcom/kakao/sdk/friend/core/e/i;->a:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 39
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "root.context"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/kakao/sdk/friend/core/c/a;->b:Lcom/kakao/sdk/friend/core/i/a;

    .line 49
    iget-wide v1, v1, Lcom/kakao/sdk/friend/core/i/a;->a:J

    .line 59
    invoke-static {v0, v1, v2, p1}, Lcom/kakao/sdk/friend/core/k/a;->a(Landroid/content/Context;JLjava/util/List;)Landroid/graphics/Bitmap;

    move-result-object p1

    iget-object v0, p0, Lcom/kakao/sdk/friend/core/c/a;->a:Lcom/kakao/sdk/friend/core/e/i;

    iget-object v0, v0, Lcom/kakao/sdk/friend/core/e/i;->e:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 69
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    nop

    .array-data 1
    .end array-data
.end method
