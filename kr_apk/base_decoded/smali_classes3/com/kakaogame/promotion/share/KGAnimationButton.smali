.class public final Lcom/kakaogame/promotion/share/KGAnimationButton;
.super Landroid/widget/FrameLayout;
.source "KGAnimationButton.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u001b\u0012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u0010\u0010\u000b\u001a\u00020\u000c2\u0008\u0010\r\u001a\u0004\u0018\u00010\u000eR\u000e\u0010\u0008\u001a\u00020\tX\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\tX\u0082.\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcom/kakaogame/promotion/share/KGAnimationButton;",
        "Landroid/widget/FrameLayout;",
        "context",
        "Landroid/content/Context;",
        "attr",
        "Landroid/util/AttributeSet;",
        "<init>",
        "(Landroid/content/Context;Landroid/util/AttributeSet;)V",
        "scaleAnim",
        "Landroid/view/animation/Animation;",
        "scaleReverseAnim",
        "initialize",
        "",
        "activity",
        "Landroid/app/Activity;",
        "gamesdk_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private scaleAnim:Landroid/view/animation/Animation;

.field private scaleReverseAnim:Landroid/view/animation/Animation;


# direct methods
.method public static synthetic $r8$lambda$eqUbDBU_MykEea_Lv3Uxo5hyhWY(Lcom/kakaogame/promotion/share/KGAnimationButton;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/kakaogame/promotion/share/KGAnimationButton;->initialize$lambda$0(Lcom/kakaogame/promotion/share/KGAnimationButton;Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0

    nop

    .array-data 1
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 179
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method private static final initialize$lambda$0(Lcom/kakaogame/promotion/share/KGAnimationButton;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    .line 249
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const v0, 0x2259ad0e

    invoke-static {v0}, Lcom/liapp/y;->ֲֳگܱޭ(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-nez p1, :cond_2

    const-string p1, "Touch down"

    .line 259
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    iget-object p1, p0, Lcom/kakaogame/promotion/share/KGAnimationButton;->scaleAnim:Landroid/view/animation/Animation;

    const-string p2, "scaleAnim"

    if-nez p1, :cond_0

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v1

    :cond_0
    invoke-virtual {p0, p1}, Lcom/kakaogame/promotion/share/KGAnimationButton;->startAnimation(Landroid/view/animation/Animation;)V

    .line 279
    iget-object p1, p0, Lcom/kakaogame/promotion/share/KGAnimationButton;->scaleAnim:Landroid/view/animation/Animation;

    if-nez p1, :cond_1

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v1, p1

    :goto_0
    new-instance p1, Lcom/kakaogame/promotion/share/KGAnimationButton$initialize$1$1;

    invoke-direct {p1, p0}, Lcom/kakaogame/promotion/share/KGAnimationButton$initialize$1$1;-><init>(Lcom/kakaogame/promotion/share/KGAnimationButton;)V

    check-cast p1, Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v1, p1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    goto :goto_2

    .line 369
    :cond_2
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_5

    const-string p1, "Touch up"

    .line 379
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 389
    iget-object p1, p0, Lcom/kakaogame/promotion/share/KGAnimationButton;->scaleReverseAnim:Landroid/view/animation/Animation;

    const-string p2, "scaleReverseAnim"

    if-nez p1, :cond_3

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v1

    :cond_3
    invoke-virtual {p0, p1}, Lcom/kakaogame/promotion/share/KGAnimationButton;->startAnimation(Landroid/view/animation/Animation;)V

    .line 399
    iget-object p1, p0, Lcom/kakaogame/promotion/share/KGAnimationButton;->scaleReverseAnim:Landroid/view/animation/Animation;

    if-nez p1, :cond_4

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    move-object v1, p1

    :goto_1
    new-instance p1, Lcom/kakaogame/promotion/share/KGAnimationButton$initialize$1$2;

    invoke-direct {p1, p0}, Lcom/kakaogame/promotion/share/KGAnimationButton$initialize$1$2;-><init>(Lcom/kakaogame/promotion/share/KGAnimationButton;)V

    check-cast p1, Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v1, p1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    :cond_5
    :goto_2
    const/4 p0, 0x0

    return p0

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public final initialize(Landroid/app/Activity;)V
    .locals 1

    .line 219
    check-cast p1, Landroid/content/Context;

    sget v0, Lcom/kakaogame/R$anim;->zinny_sdk_scale_anim:I

    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/kakaogame/promotion/share/KGAnimationButton;->scaleAnim:Landroid/view/animation/Animation;

    .line 229
    sget v0, Lcom/kakaogame/R$anim;->zinny_sdk_scale_reverse_anim:I

    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p1

    iput-object p1, p0, Lcom/kakaogame/promotion/share/KGAnimationButton;->scaleReverseAnim:Landroid/view/animation/Animation;

    .line 239
    new-instance p1, Lcom/kakaogame/promotion/share/KGAnimationButton$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/kakaogame/promotion/share/KGAnimationButton$$ExternalSyntheticLambda0;-><init>(Lcom/kakaogame/promotion/share/KGAnimationButton;)V

    invoke-virtual {p0, p1}, Lcom/kakaogame/promotion/share/KGAnimationButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void

    nop

    .array-data 1
    .end array-data
.end method
