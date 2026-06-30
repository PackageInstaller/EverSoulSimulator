.class public final Lcom/kakaogame/databinding/ZinnySdkPromotionStartPopupBinding;
.super Ljava/lang/Object;
.source "ZinnySdkPromotionStartPopupBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field private final rootView:Landroid/widget/RelativeLayout;

.field public final zinnySdkPromotionImageView:Landroid/widget/RelativeLayout;

.field public final zinnySdkPromotionStartPopupBottom:Landroid/widget/RelativeLayout;

.field public final zinnySdkPromotionStartPopupCheck:Landroid/widget/LinearLayout;

.field public final zinnySdkPromotionStartPopupCheckImage:Landroid/widget/ImageView;

.field public final zinnySdkPromotionStartPopupClose:Landroid/widget/FrameLayout;

.field public final zinnySdkPromotionStartPopupImage:Landroid/widget/ImageView;

.field public final zinnySdkPromotionStartPopupProgress:Landroid/widget/ImageView;

.field public final zinnySdkPromotionView:Landroid/widget/RelativeLayout;


# direct methods
.method private constructor <init>(Landroid/widget/RelativeLayout;Landroid/widget/RelativeLayout;Landroid/widget/RelativeLayout;Landroid/widget/LinearLayout;Landroid/widget/ImageView;Landroid/widget/FrameLayout;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/RelativeLayout;)V
    .locals 0

    .line 569
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 579
    iput-object p1, p0, Lcom/kakaogame/databinding/ZinnySdkPromotionStartPopupBinding;->rootView:Landroid/widget/RelativeLayout;

    .line 589
    iput-object p2, p0, Lcom/kakaogame/databinding/ZinnySdkPromotionStartPopupBinding;->zinnySdkPromotionImageView:Landroid/widget/RelativeLayout;

    .line 599
    iput-object p3, p0, Lcom/kakaogame/databinding/ZinnySdkPromotionStartPopupBinding;->zinnySdkPromotionStartPopupBottom:Landroid/widget/RelativeLayout;

    .line 609
    iput-object p4, p0, Lcom/kakaogame/databinding/ZinnySdkPromotionStartPopupBinding;->zinnySdkPromotionStartPopupCheck:Landroid/widget/LinearLayout;

    .line 619
    iput-object p5, p0, Lcom/kakaogame/databinding/ZinnySdkPromotionStartPopupBinding;->zinnySdkPromotionStartPopupCheckImage:Landroid/widget/ImageView;

    .line 629
    iput-object p6, p0, Lcom/kakaogame/databinding/ZinnySdkPromotionStartPopupBinding;->zinnySdkPromotionStartPopupClose:Landroid/widget/FrameLayout;

    .line 639
    iput-object p7, p0, Lcom/kakaogame/databinding/ZinnySdkPromotionStartPopupBinding;->zinnySdkPromotionStartPopupImage:Landroid/widget/ImageView;

    .line 649
    iput-object p8, p0, Lcom/kakaogame/databinding/ZinnySdkPromotionStartPopupBinding;->zinnySdkPromotionStartPopupProgress:Landroid/widget/ImageView;

    .line 659
    iput-object p9, p0, Lcom/kakaogame/databinding/ZinnySdkPromotionStartPopupBinding;->zinnySdkPromotionView:Landroid/widget/RelativeLayout;

    return-void

    .array-data 1
    .end array-data
.end method

.method public static bind(Landroid/view/View;)Lcom/kakaogame/databinding/ZinnySdkPromotionStartPopupBinding;
    .locals 12

    .line 959
    sget v0, Lcom/kakaogame/R$id;->zinny_sdk_promotion_image_view:I

    .line 969
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroid/widget/RelativeLayout;

    if-eqz v4, :cond_0

    .line 1019
    sget v0, Lcom/kakaogame/R$id;->zinny_sdk_promotion_start_popup_bottom:I

    .line 1029
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroid/widget/RelativeLayout;

    if-eqz v5, :cond_0

    .line 1079
    sget v0, Lcom/kakaogame/R$id;->zinny_sdk_promotion_start_popup_check:I

    .line 1089
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Landroid/widget/LinearLayout;

    if-eqz v6, :cond_0

    .line 1139
    sget v0, Lcom/kakaogame/R$id;->zinny_sdk_promotion_start_popup_check_image:I

    .line 1149
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Landroid/widget/ImageView;

    if-eqz v7, :cond_0

    .line 1199
    sget v0, Lcom/kakaogame/R$id;->zinny_sdk_promotion_start_popup_close:I

    .line 1209
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Landroid/widget/FrameLayout;

    if-eqz v8, :cond_0

    .line 1259
    sget v0, Lcom/kakaogame/R$id;->zinny_sdk_promotion_start_popup_image:I

    .line 1269
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Landroid/widget/ImageView;

    if-eqz v9, :cond_0

    .line 1319
    sget v0, Lcom/kakaogame/R$id;->zinny_sdk_promotion_start_popup_progress:I

    .line 1329
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Landroid/widget/ImageView;

    if-eqz v10, :cond_0

    .line 1379
    sget v0, Lcom/kakaogame/R$id;->zinny_sdk_promotion_view:I

    .line 1389
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v11, v1

    check-cast v11, Landroid/widget/RelativeLayout;

    if-eqz v11, :cond_0

    .line 1439
    new-instance v0, Lcom/kakaogame/databinding/ZinnySdkPromotionStartPopupBinding;

    move-object v3, p0

    check-cast v3, Landroid/widget/RelativeLayout;

    move-object v2, v0

    invoke-direct/range {v2 .. v11}, Lcom/kakaogame/databinding/ZinnySdkPromotionStartPopupBinding;-><init>(Landroid/widget/RelativeLayout;Landroid/widget/RelativeLayout;Landroid/widget/RelativeLayout;Landroid/widget/LinearLayout;Landroid/widget/ImageView;Landroid/widget/FrameLayout;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/RelativeLayout;)V

    return-object v0

    .line 1499
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    .line 1509
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

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/kakaogame/databinding/ZinnySdkPromotionStartPopupBinding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 769
    invoke-static {p0, v0, v1}, Lcom/kakaogame/databinding/ZinnySdkPromotionStartPopupBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/kakaogame/databinding/ZinnySdkPromotionStartPopupBinding;

    move-result-object p0

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/kakaogame/databinding/ZinnySdkPromotionStartPopupBinding;
    .locals 2

    .line 829
    sget v0, Lcom/kakaogame/R$layout;->zinny_sdk_promotion_start_popup:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 849
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 869
    :cond_0
    invoke-static {p0}, Lcom/kakaogame/databinding/ZinnySdkPromotionStartPopupBinding;->bind(Landroid/view/View;)Lcom/kakaogame/databinding/ZinnySdkPromotionStartPopupBinding;

    move-result-object p0

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 209
    invoke-virtual {p0}, Lcom/kakaogame/databinding/ZinnySdkPromotionStartPopupBinding;->getRoot()Landroid/widget/RelativeLayout;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getRoot()Landroid/widget/RelativeLayout;
    .locals 1

    .line 719
    iget-object v0, p0, Lcom/kakaogame/databinding/ZinnySdkPromotionStartPopupBinding;->rootView:Landroid/widget/RelativeLayout;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method
