.class public final Lcom/kakao/sdk/friend/core/view/SquircleImageView;
.super Landroidx/appcompat/widget/AppCompatImageView;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0007\n\u0002\u0008\u0003\u0008\u0000\u0018\u00002\u00020\u0001B\u0011\u0008\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0004\u0010\u0005B\u001b\u0008\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u00a2\u0006\u0004\u0008\u0004\u0010\u0008B#\u0008\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u0012\u0006\u0010\n\u001a\u00020\t\u00a2\u0006\u0004\u0008\u0004\u0010\u000bJ\u0015\u0010\u000e\u001a\u00020\r2\u0006\u0010\u000c\u001a\u00020\t\u00a2\u0006\u0004\u0008\u000e\u0010\u000fJ\u0015\u0010\u0010\u001a\u00020\r2\u0006\u0010\u000c\u001a\u00020\t\u00a2\u0006\u0004\u0008\u0010\u0010\u000fJ\r\u0010\u0012\u001a\u00020\u0011\u00a2\u0006\u0004\u0008\u0012\u0010\u0013\u00a8\u0006\u0014"
    }
    d2 = {
        "Lcom/kakao/sdk/friend/core/view/SquircleImageView;",
        "Landroidx/appcompat/widget/AppCompatImageView;",
        "Landroid/content/Context;",
        "context",
        "<init>",
        "(Landroid/content/Context;)V",
        "Landroid/util/AttributeSet;",
        "attrs",
        "(Landroid/content/Context;Landroid/util/AttributeSet;)V",
        "",
        "defStyleAttr",
        "(Landroid/content/Context;Landroid/util/AttributeSet;I)V",
        "color",
        "",
        "setBorderColor",
        "(I)V",
        "setFillColor",
        "",
        "getDensity",
        "()F",
        "friend-core_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
.end annotation


# instance fields
.field public final a:Landroid/graphics/Paint;

.field public final b:Landroid/graphics/Paint;

.field public final c:Landroid/graphics/Path;

.field public final d:Landroid/graphics/Path;

.field public final e:Landroid/graphics/Path;

.field public final f:F

.field public g:I

.field public final h:Landroid/graphics/Paint;

.field public i:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    .line 19
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/kakao/sdk/friend/core/view/SquircleImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const-string v0, "context"

    .line 29
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/kakao/sdk/friend/core/view/SquircleImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void

    .array-data 1
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/AppCompatImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/kakao/sdk/friend/core/view/SquircleImageView;->a:Landroid/graphics/Paint;

    new-instance p3, Landroid/graphics/Paint;

    invoke-direct {p3}, Landroid/graphics/Paint;-><init>()V

    iput-object p3, p0, Lcom/kakao/sdk/friend/core/view/SquircleImageView;->b:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/kakao/sdk/friend/core/view/SquircleImageView;->c:Landroid/graphics/Path;

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/kakao/sdk/friend/core/view/SquircleImageView;->d:Landroid/graphics/Path;

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/kakao/sdk/friend/core/view/SquircleImageView;->e:Landroid/graphics/Path;

    const/high16 v0, 0x3f000000    # 0.5f

    iput v0, p0, Lcom/kakao/sdk/friend/core/view/SquircleImageView;->f:F

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/kakao/sdk/friend/core/view/SquircleImageView;->h:Landroid/graphics/Paint;

    if-eqz p2, :cond_0

    .line 39
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    sget-object v3, Lcom/kakao/sdk/friend/core/R$styleable;->SquircleBorderImageView:[I

    invoke-virtual {v2, p2, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    const-string v2, "context.obtainStyledAttr\u2026.SquircleBorderImageView)"

    invoke-static {p2, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget v2, Lcom/kakao/sdk/friend/core/R$styleable;->SquircleBorderImageView_squircle_fillColor:I

    const/4 v3, 0x0

    invoke-virtual {p2, v2, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    iput v2, p0, Lcom/kakao/sdk/friend/core/view/SquircleImageView;->g:I

    sget v2, Lcom/kakao/sdk/friend/core/R$styleable;->SquircleBorderImageView_squircle_borderColor:I

    invoke-virtual {p2, v2, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    iput v2, p0, Lcom/kakao/sdk/friend/core/view/SquircleImageView;->i:I

    sget v2, Lcom/kakao/sdk/friend/core/R$styleable;->SquircleBorderImageView_squircle_borderWidth:I

    invoke-virtual {p2, v2, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    iput v0, p0, Lcom/kakao/sdk/friend/core/view/SquircleImageView;->f:F

    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    :cond_0
    iget p2, p0, Lcom/kakao/sdk/friend/core/view/SquircleImageView;->g:I

    const/4 v0, 0x1

    if-eqz p2, :cond_1

    sget-object p2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget p2, p0, Lcom/kakao/sdk/friend/core/view/SquircleImageView;->g:I

    invoke-virtual {v1, p2}, Landroid/graphics/Paint;->setColor(I)V

    :cond_1
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    const/high16 p2, -0x1000000

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    new-instance p2, Landroid/graphics/PorterDuffXfermode;

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1c

    if-ge v1, v2, :cond_2

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->DST_IN:Landroid/graphics/PorterDuff$Mode;

    goto :goto_0

    :cond_2
    sget-object v1, Landroid/graphics/PorterDuff$Mode;->DST_OUT:Landroid/graphics/PorterDuff$Mode;

    :goto_0
    invoke-direct {p2, v1}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    invoke-virtual {p3, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    sget-object p1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p3, p1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget p1, p0, Lcom/kakao/sdk/friend/core/view/SquircleImageView;->i:I

    if-nez p1, :cond_3

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    sget p2, Lcom/kakao/sdk/friend/core/R$color;->daynight_gray150a:I

    invoke-static {p1, p2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    :cond_3
    invoke-virtual {p3, p1}, Landroid/graphics/Paint;->setColor(I)V

    iget p1, p0, Lcom/kakao/sdk/friend/core/view/SquircleImageView;->f:F

    invoke-virtual {p0}, Lcom/kakao/sdk/friend/core/view/SquircleImageView;->getDensity()F

    move-result p2

    mul-float/2addr p2, p1

    invoke-virtual {p3, p2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    return-void

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public final getDensity()F
    .locals 1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final onDraw(Landroid/graphics/Canvas;)V
    .locals 10

    const-string v0, "canvas"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    iget v2, p0, Lcom/kakao/sdk/friend/core/view/SquircleImageView;->g:I

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/kakao/sdk/friend/core/view/SquircleImageView;->d:Landroid/graphics/Path;

    iget-object v3, p0, Lcom/kakao/sdk/friend/core/view/SquircleImageView;->h:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :cond_0
    int-to-float v7, v0

    int-to-float v8, v1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v9, 0x0

    move-object v4, p1

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->saveLayer(FFFFLandroid/graphics/Paint;)I

    move-result v0

    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatImageView;->onDraw(Landroid/graphics/Canvas;)V

    iget-object v1, p0, Lcom/kakao/sdk/friend/core/view/SquircleImageView;->c:Landroid/graphics/Path;

    iget-object v2, p0, Lcom/kakao/sdk/friend/core/view/SquircleImageView;->a:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    iget-object v0, p0, Lcom/kakao/sdk/friend/core/view/SquircleImageView;->e:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/kakao/sdk/friend/core/view/SquircleImageView;->b:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public final onSizeChanged(IIII)V
    .locals 4

    if-eqz p1, :cond_3

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    .line 19
    invoke-static {p3}, Lcom/kakao/sdk/friend/core/l/b0;->a(I)Landroid/graphics/Path;

    move-result-object p3

    iget-object p4, p0, Lcom/kakao/sdk/friend/core/view/SquircleImageView;->c:Landroid/graphics/Path;

    invoke-virtual {p4}, Landroid/graphics/Path;->reset()V

    invoke-virtual {p4, p3}, Landroid/graphics/Path;->set(Landroid/graphics/Path;)V

    iget-object p4, p0, Lcom/kakao/sdk/friend/core/view/SquircleImageView;->e:Landroid/graphics/Path;

    invoke-virtual {p4}, Landroid/graphics/Path;->reset()V

    invoke-virtual {p4, p3}, Landroid/graphics/Path;->set(Landroid/graphics/Path;)V

    iget p4, p0, Lcom/kakao/sdk/friend/core/view/SquircleImageView;->g:I

    if-eqz p4, :cond_1

    iget-object p4, p0, Lcom/kakao/sdk/friend/core/view/SquircleImageView;->d:Landroid/graphics/Path;

    invoke-virtual {p4}, Landroid/graphics/Path;->reset()V

    invoke-virtual {p4, p3}, Landroid/graphics/Path;->set(Landroid/graphics/Path;)V

    :cond_1
    iget-object p3, p0, Lcom/kakao/sdk/friend/core/view/SquircleImageView;->c:Landroid/graphics/Path;

    int-to-float p1, p1

    int-to-float p2, p2

    const/4 p4, 0x0

    invoke-static {p3, p1, p2, p4}, Lcom/kakao/sdk/friend/core/l/b0;->a(Landroid/graphics/Path;FFF)V

    iget p3, p0, Lcom/kakao/sdk/friend/core/view/SquircleImageView;->g:I

    if-eqz p3, :cond_2

    iget-object p3, p0, Lcom/kakao/sdk/friend/core/view/SquircleImageView;->d:Landroid/graphics/Path;

    invoke-static {p3, p1, p2, p4}, Lcom/kakao/sdk/friend/core/l/b0;->a(Landroid/graphics/Path;FFF)V

    :cond_2
    iget p3, p0, Lcom/kakao/sdk/friend/core/view/SquircleImageView;->f:F

    invoke-virtual {p0}, Lcom/kakao/sdk/friend/core/view/SquircleImageView;->getDensity()F

    move-result v0

    mul-float/2addr v0, p3

    iget-object p3, p0, Lcom/kakao/sdk/friend/core/view/SquircleImageView;->e:Landroid/graphics/Path;

    sub-float v1, p1, v0

    sub-float v2, p2, v0

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v0, v3

    invoke-static {p3, v1, v2, v0}, Lcom/kakao/sdk/friend/core/l/b0;->a(Landroid/graphics/Path;FFF)V

    sget p3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1c

    if-lt p3, v0, :cond_3

    iget-object p3, p0, Lcom/kakao/sdk/friend/core/view/SquircleImageView;->c:Landroid/graphics/Path;

    sget-object v0, Landroid/graphics/Path$FillType;->EVEN_ODD:Landroid/graphics/Path$FillType;

    invoke-virtual {p3, v0}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    iget-object p3, p0, Lcom/kakao/sdk/friend/core/view/SquircleImageView;->c:Landroid/graphics/Path;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0, p4, p4, p1, p2}, Landroid/graphics/RectF;-><init>(FFFF)V

    sget-object p1, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {p3, v0, p1}, Landroid/graphics/Path;->addRect(Landroid/graphics/RectF;Landroid/graphics/Path$Direction;)V

    :cond_3
    :goto_0
    return-void

    .array-data 1
    .end array-data
.end method

.method public final setBorderColor(I)V
    .locals 1

    iput p1, p0, Lcom/kakao/sdk/friend/core/view/SquircleImageView;->i:I

    iget-object v0, p0, Lcom/kakao/sdk/friend/core/view/SquircleImageView;->b:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    return-void

    .array-data 1
    .end array-data
.end method

.method public final setFillColor(I)V
    .locals 1

    iput p1, p0, Lcom/kakao/sdk/friend/core/view/SquircleImageView;->g:I

    iget-object v0, p0, Lcom/kakao/sdk/friend/core/view/SquircleImageView;->h:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    return-void

    .array-data 1
    .end array-data
.end method
