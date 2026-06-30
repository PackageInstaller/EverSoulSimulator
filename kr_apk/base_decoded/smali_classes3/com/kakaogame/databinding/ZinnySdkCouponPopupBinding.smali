.class public final Lcom/kakaogame/databinding/ZinnySdkCouponPopupBinding;
.super Ljava/lang/Object;
.source "ZinnySdkCouponPopupBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field private final rootView:Landroid/widget/RelativeLayout;

.field public final zinnySdkCouponInputCancel:Landroid/widget/TextView;

.field public final zinnySdkCouponInputSubmit:Landroid/widget/TextView;

.field public final zinnySdkCouponInputText:Landroid/widget/EditText;


# direct methods
.method private constructor <init>(Landroid/widget/RelativeLayout;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/EditText;)V
    .locals 0

    .line 349
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 359
    iput-object p1, p0, Lcom/kakaogame/databinding/ZinnySdkCouponPopupBinding;->rootView:Landroid/widget/RelativeLayout;

    .line 369
    iput-object p2, p0, Lcom/kakaogame/databinding/ZinnySdkCouponPopupBinding;->zinnySdkCouponInputCancel:Landroid/widget/TextView;

    .line 379
    iput-object p3, p0, Lcom/kakaogame/databinding/ZinnySdkCouponPopupBinding;->zinnySdkCouponInputSubmit:Landroid/widget/TextView;

    .line 389
    iput-object p4, p0, Lcom/kakaogame/databinding/ZinnySdkCouponPopupBinding;->zinnySdkCouponInputText:Landroid/widget/EditText;

    return-void

    .array-data 1
    .end array-data
.end method

.method public static bind(Landroid/view/View;)Lcom/kakaogame/databinding/ZinnySdkCouponPopupBinding;
    .locals 4

    .line 689
    sget v0, Lcom/kakaogame/R$id;->zinny_sdk_coupon_input_cancel:I

    .line 699
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    if-eqz v1, :cond_0

    .line 749
    sget v0, Lcom/kakaogame/R$id;->zinny_sdk_coupon_input_submit:I

    .line 759
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    if-eqz v2, :cond_0

    .line 809
    sget v0, Lcom/kakaogame/R$id;->zinny_sdk_coupon_input_text:I

    .line 819
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    if-eqz v3, :cond_0

    .line 869
    new-instance v0, Lcom/kakaogame/databinding/ZinnySdkCouponPopupBinding;

    check-cast p0, Landroid/widget/RelativeLayout;

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/kakaogame/databinding/ZinnySdkCouponPopupBinding;-><init>(Landroid/widget/RelativeLayout;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/EditText;)V

    return-object v0

    .line 899
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    .line 909
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

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/kakaogame/databinding/ZinnySdkCouponPopupBinding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 499
    invoke-static {p0, v0, v1}, Lcom/kakaogame/databinding/ZinnySdkCouponPopupBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/kakaogame/databinding/ZinnySdkCouponPopupBinding;

    move-result-object p0

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/kakaogame/databinding/ZinnySdkCouponPopupBinding;
    .locals 2

    .line 559
    sget v0, Lcom/kakaogame/R$layout;->zinny_sdk_coupon_popup:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 579
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 599
    :cond_0
    invoke-static {p0}, Lcom/kakaogame/databinding/ZinnySdkCouponPopupBinding;->bind(Landroid/view/View;)Lcom/kakaogame/databinding/ZinnySdkCouponPopupBinding;

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
    invoke-virtual {p0}, Lcom/kakaogame/databinding/ZinnySdkCouponPopupBinding;->getRoot()Landroid/widget/RelativeLayout;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getRoot()Landroid/widget/RelativeLayout;
    .locals 1

    .line 449
    iget-object v0, p0, Lcom/kakaogame/databinding/ZinnySdkCouponPopupBinding;->rootView:Landroid/widget/RelativeLayout;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method
