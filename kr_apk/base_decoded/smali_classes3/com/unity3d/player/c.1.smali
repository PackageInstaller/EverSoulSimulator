.class abstract Lcom/unity3d/player/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:[I

.field private static b:Landroid/widget/ProgressBar; = null

.field private static c:Landroid/view/View; = null

.field private static d:I = -0x1


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/unity3d/player/c;->a:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x101007a
        0x1010289
        0x1010079
        0x1010288
    .end array-data

    .array-data 1
    .end array-data
.end method

.method public static a()V
    .locals 2

    sget-object v0, Lcom/unity3d/player/c;->b:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_1

    return-void

    :cond_1
    if-eqz v0, :cond_3

    sget-object v1, Lcom/unity3d/player/c;->c:Landroid/view/View;

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_2

    sget-object v1, Lcom/unity3d/player/c;->b:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    sget-object v1, Lcom/unity3d/player/c;->c:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_2
    const/4 v0, 0x0

    sput-object v0, Lcom/unity3d/player/c;->b:Landroid/widget/ProgressBar;

    sput-object v0, Lcom/unity3d/player/c;->c:Landroid/view/View;

    :cond_3
    const/4 v0, -0x1

    sput v0, Lcom/unity3d/player/c;->d:I

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public static a(Landroid/app/Activity;Lcom/unity3d/player/UnityPlayer;I)V
    .locals 4

    if-ltz p2, :cond_7

    sget-object v0, Lcom/unity3d/player/c;->a:[I

    const/4 v1, 0x4

    if-lt p2, v1, :cond_0

    goto/16 :goto_2

    :cond_0
    if-eqz p1, :cond_6

    if-eqz p0, :cond_5

    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_5

    invoke-virtual {p0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    sget-object v1, Lcom/unity3d/player/c;->b:Landroid/widget/ProgressBar;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    move v1, v3

    :goto_0
    if-eqz v1, :cond_4

    sget v1, Lcom/unity3d/player/c;->d:I

    if-ne v1, p2, :cond_3

    return-void

    :cond_3
    invoke-static {}, Lcom/unity3d/player/c;->a()V

    :cond_4
    sput p2, Lcom/unity3d/player/c;->d:I

    new-instance v1, Landroid/widget/ProgressBar;

    aget p2, v0, p2

    const/4 v0, 0x0

    invoke-direct {v1, p0, v0, p2}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance p2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v0, -0x2

    invoke-direct {p2, v0, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v0, 0x11

    iput v0, p2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    invoke-virtual {v1, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance p2, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {p2, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v1, p2}, Landroid/widget/ProgressBar;->setBackground(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    sput-object v1, Lcom/unity3d/player/c;->b:Landroid/widget/ProgressBar;

    new-instance p2, Landroid/view/View;

    invoke-direct {p2, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    new-instance p0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v0, -0x1

    invoke-direct {p0, v0, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p2, p0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p2, v3}, Landroid/view/View;->setBackgroundColor(I)V

    invoke-virtual {p2, v2}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    invoke-virtual {p2}, Landroid/view/View;->requestFocus()Z

    new-instance p0, Lcom/unity3d/player/a;

    invoke-direct {p0}, Lcom/unity3d/player/a;-><init>()V

    invoke-virtual {p2, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    new-instance p0, Lcom/unity3d/player/b;

    invoke-direct {p0}, Lcom/unity3d/player/b;-><init>()V

    invoke-virtual {p2, p0}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    sput-object p2, Lcom/unity3d/player/c;->c:Landroid/view/View;

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    sget-object p0, Lcom/unity3d/player/c;->b:Landroid/widget/ProgressBar;

    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_5
    :goto_1
    return-void

    :cond_6
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "ViewGroup cannot be null."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_7
    :goto_2
    return-void

    .array-data 1
    .end array-data
.end method
