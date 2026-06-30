.class public final Lcom/kakaogame/databinding/ZinnySdkProgressBinding;
.super Ljava/lang/Object;
.source "ZinnySdkProgressBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field private final rootView:Landroid/widget/RelativeLayout;

.field public final zinnySdkProgressView:Landroid/widget/ImageView;


# direct methods
.method private constructor <init>(Landroid/widget/RelativeLayout;Landroid/widget/ImageView;)V
    .locals 0

    .line 269
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 279
    iput-object p1, p0, Lcom/kakaogame/databinding/ZinnySdkProgressBinding;->rootView:Landroid/widget/RelativeLayout;

    .line 289
    iput-object p2, p0, Lcom/kakaogame/databinding/ZinnySdkProgressBinding;->zinnySdkProgressView:Landroid/widget/ImageView;

    return-void

    .array-data 1
    .end array-data
.end method

.method public static bind(Landroid/view/View;)Lcom/kakaogame/databinding/ZinnySdkProgressBinding;
    .locals 2

    .line 589
    sget v0, Lcom/kakaogame/R$id;->zinny_sdk_progress_view:I

    .line 599
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    .line 649
    new-instance v0, Lcom/kakaogame/databinding/ZinnySdkProgressBinding;

    check-cast p0, Landroid/widget/RelativeLayout;

    invoke-direct {v0, p0, v1}, Lcom/kakaogame/databinding/ZinnySdkProgressBinding;-><init>(Landroid/widget/RelativeLayout;Landroid/widget/ImageView;)V

    return-object v0

    .line 669
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    .line 679
    new-instance v0, Ljava/lang/NullPointerException;

    const v1, 0x3362bed3

    invoke-static {v1}, Lcom/liapp/y;->ׯ״ٲ֬ب(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    .array-data 1
    .end array-data
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/kakaogame/databinding/ZinnySdkProgressBinding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 399
    invoke-static {p0, v0, v1}, Lcom/kakaogame/databinding/ZinnySdkProgressBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/kakaogame/databinding/ZinnySdkProgressBinding;

    move-result-object p0

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/kakaogame/databinding/ZinnySdkProgressBinding;
    .locals 2

    .line 459
    sget v0, Lcom/kakaogame/R$layout;->zinny_sdk_progress:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 479
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 499
    :cond_0
    invoke-static {p0}, Lcom/kakaogame/databinding/ZinnySdkProgressBinding;->bind(Landroid/view/View;)Lcom/kakaogame/databinding/ZinnySdkProgressBinding;

    move-result-object p0

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 189
    invoke-virtual {p0}, Lcom/kakaogame/databinding/ZinnySdkProgressBinding;->getRoot()Landroid/widget/RelativeLayout;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getRoot()Landroid/widget/RelativeLayout;
    .locals 1

    .line 349
    iget-object v0, p0, Lcom/kakaogame/databinding/ZinnySdkProgressBinding;->rootView:Landroid/widget/RelativeLayout;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method
