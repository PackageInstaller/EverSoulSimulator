.class public final Lcom/kakaogame/databinding/ZinnySdkPromotionEndingPopupBinding;
.super Ljava/lang/Object;
.source "ZinnySdkPromotionEndingPopupBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field private final rootView:Landroid/widget/RelativeLayout;

.field public final zinnySdkPromotionEndingPopupCancel:Landroid/widget/TextView;

.field public final zinnySdkPromotionEndingPopupContent:Landroid/widget/RelativeLayout;

.field public final zinnySdkPromotionEndingPopupImage:Landroid/widget/ImageView;

.field public final zinnySdkPromotionEndingPopupOk:Landroid/widget/TextView;

.field public final zinnySdkPromotionEndingPopupProgress:Landroid/widget/ImageView;


# direct methods
.method private constructor <init>(Landroid/widget/RelativeLayout;Landroid/widget/TextView;Landroid/widget/RelativeLayout;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/ImageView;)V
    .locals 0

    .line 439
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 449
    iput-object p1, p0, Lcom/kakaogame/databinding/ZinnySdkPromotionEndingPopupBinding;->rootView:Landroid/widget/RelativeLayout;

    .line 459
    iput-object p2, p0, Lcom/kakaogame/databinding/ZinnySdkPromotionEndingPopupBinding;->zinnySdkPromotionEndingPopupCancel:Landroid/widget/TextView;

    .line 469
    iput-object p3, p0, Lcom/kakaogame/databinding/ZinnySdkPromotionEndingPopupBinding;->zinnySdkPromotionEndingPopupContent:Landroid/widget/RelativeLayout;

    .line 479
    iput-object p4, p0, Lcom/kakaogame/databinding/ZinnySdkPromotionEndingPopupBinding;->zinnySdkPromotionEndingPopupImage:Landroid/widget/ImageView;

    .line 489
    iput-object p5, p0, Lcom/kakaogame/databinding/ZinnySdkPromotionEndingPopupBinding;->zinnySdkPromotionEndingPopupOk:Landroid/widget/TextView;

    .line 499
    iput-object p6, p0, Lcom/kakaogame/databinding/ZinnySdkPromotionEndingPopupBinding;->zinnySdkPromotionEndingPopupProgress:Landroid/widget/ImageView;

    return-void

    .array-data 1
    .end array-data
.end method

.method public static bind(Landroid/view/View;)Lcom/kakaogame/databinding/ZinnySdkPromotionEndingPopupBinding;
    .locals 9

    .line 799
    sget v0, Lcom/kakaogame/R$id;->zinny_sdk_promotion_ending_popup_cancel:I

    .line 809
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroid/widget/TextView;

    if-eqz v4, :cond_0

    .line 859
    sget v0, Lcom/kakaogame/R$id;->zinny_sdk_promotion_ending_popup_content:I

    .line 869
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroid/widget/RelativeLayout;

    if-eqz v5, :cond_0

    .line 919
    sget v0, Lcom/kakaogame/R$id;->zinny_sdk_promotion_ending_popup_image:I

    .line 929
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Landroid/widget/ImageView;

    if-eqz v6, :cond_0

    .line 979
    sget v0, Lcom/kakaogame/R$id;->zinny_sdk_promotion_ending_popup_ok:I

    .line 989
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Landroid/widget/TextView;

    if-eqz v7, :cond_0

    .line 1039
    sget v0, Lcom/kakaogame/R$id;->zinny_sdk_promotion_ending_popup_progress:I

    .line 1049
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Landroid/widget/ImageView;

    if-eqz v8, :cond_0

    .line 1099
    new-instance v0, Lcom/kakaogame/databinding/ZinnySdkPromotionEndingPopupBinding;

    move-object v3, p0

    check-cast v3, Landroid/widget/RelativeLayout;

    move-object v2, v0

    invoke-direct/range {v2 .. v8}, Lcom/kakaogame/databinding/ZinnySdkPromotionEndingPopupBinding;-><init>(Landroid/widget/RelativeLayout;Landroid/widget/TextView;Landroid/widget/RelativeLayout;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/ImageView;)V

    return-object v0

    .line 1149
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    .line 1159
    new-instance v0, Ljava/lang/NullPointerException;

    const v1, 0x3362bed3

    invoke-static {v1}, Lcom/liapp/y;->ׯ״ٲ֬ب(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .array-data 1
    .end array-data
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/kakaogame/databinding/ZinnySdkPromotionEndingPopupBinding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 609
    invoke-static {p0, v0, v1}, Lcom/kakaogame/databinding/ZinnySdkPromotionEndingPopupBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/kakaogame/databinding/ZinnySdkPromotionEndingPopupBinding;

    move-result-object p0

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/kakaogame/databinding/ZinnySdkPromotionEndingPopupBinding;
    .locals 2

    .line 669
    sget v0, Lcom/kakaogame/R$layout;->zinny_sdk_promotion_ending_popup:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 689
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 709
    :cond_0
    invoke-static {p0}, Lcom/kakaogame/databinding/ZinnySdkPromotionEndingPopupBinding;->bind(Landroid/view/View;)Lcom/kakaogame/databinding/ZinnySdkPromotionEndingPopupBinding;

    move-result-object p0

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 199
    invoke-virtual {p0}, Lcom/kakaogame/databinding/ZinnySdkPromotionEndingPopupBinding;->getRoot()Landroid/widget/RelativeLayout;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getRoot()Landroid/widget/RelativeLayout;
    .locals 1

    .line 559
    iget-object v0, p0, Lcom/kakaogame/databinding/ZinnySdkPromotionEndingPopupBinding;->rootView:Landroid/widget/RelativeLayout;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method
