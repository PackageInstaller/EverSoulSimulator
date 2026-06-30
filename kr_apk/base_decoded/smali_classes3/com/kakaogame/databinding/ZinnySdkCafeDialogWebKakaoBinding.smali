.class public final Lcom/kakaogame/databinding/ZinnySdkCafeDialogWebKakaoBinding;
.super Ljava/lang/Object;
.source "ZinnySdkCafeDialogWebKakaoBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field private final rootView:Landroid/widget/RelativeLayout;

.field public final zinnySdkDialogCafeLogo:Landroid/widget/ImageView;

.field public final zinnySdkDialogWeb:Landroid/widget/RelativeLayout;

.field public final zinnySdkDialogWebContainer:Landroid/widget/LinearLayout;

.field public final zinnySdkDialogWebContent:Landroid/webkit/WebView;

.field public final zinnySdkDialogWebCustomContainer:Landroid/widget/FrameLayout;

.field public final zinnySdkDialogWebLayout:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

.field public final zinnySdkDialogWebMain:Landroid/widget/RelativeLayout;

.field public final zinnySdkDialogWebTopbar:Landroid/widget/RelativeLayout;

.field public final zinnySdkDialogWebTopbarBack:Landroid/widget/ImageView;

.field public final zinnySdkDialogWebTopbarClose:Landroid/widget/FrameLayout;


# direct methods
.method private constructor <init>(Landroid/widget/RelativeLayout;Landroid/widget/ImageView;Landroid/widget/RelativeLayout;Landroid/widget/LinearLayout;Landroid/webkit/WebView;Landroid/widget/FrameLayout;Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;Landroid/widget/RelativeLayout;Landroid/widget/RelativeLayout;Landroid/widget/ImageView;Landroid/widget/FrameLayout;)V
    .locals 0

    .line 649
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 659
    iput-object p1, p0, Lcom/kakaogame/databinding/ZinnySdkCafeDialogWebKakaoBinding;->rootView:Landroid/widget/RelativeLayout;

    .line 669
    iput-object p2, p0, Lcom/kakaogame/databinding/ZinnySdkCafeDialogWebKakaoBinding;->zinnySdkDialogCafeLogo:Landroid/widget/ImageView;

    .line 679
    iput-object p3, p0, Lcom/kakaogame/databinding/ZinnySdkCafeDialogWebKakaoBinding;->zinnySdkDialogWeb:Landroid/widget/RelativeLayout;

    .line 689
    iput-object p4, p0, Lcom/kakaogame/databinding/ZinnySdkCafeDialogWebKakaoBinding;->zinnySdkDialogWebContainer:Landroid/widget/LinearLayout;

    .line 699
    iput-object p5, p0, Lcom/kakaogame/databinding/ZinnySdkCafeDialogWebKakaoBinding;->zinnySdkDialogWebContent:Landroid/webkit/WebView;

    .line 709
    iput-object p6, p0, Lcom/kakaogame/databinding/ZinnySdkCafeDialogWebKakaoBinding;->zinnySdkDialogWebCustomContainer:Landroid/widget/FrameLayout;

    .line 719
    iput-object p7, p0, Lcom/kakaogame/databinding/ZinnySdkCafeDialogWebKakaoBinding;->zinnySdkDialogWebLayout:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    .line 729
    iput-object p8, p0, Lcom/kakaogame/databinding/ZinnySdkCafeDialogWebKakaoBinding;->zinnySdkDialogWebMain:Landroid/widget/RelativeLayout;

    .line 739
    iput-object p9, p0, Lcom/kakaogame/databinding/ZinnySdkCafeDialogWebKakaoBinding;->zinnySdkDialogWebTopbar:Landroid/widget/RelativeLayout;

    .line 749
    iput-object p10, p0, Lcom/kakaogame/databinding/ZinnySdkCafeDialogWebKakaoBinding;->zinnySdkDialogWebTopbarBack:Landroid/widget/ImageView;

    .line 759
    iput-object p11, p0, Lcom/kakaogame/databinding/ZinnySdkCafeDialogWebKakaoBinding;->zinnySdkDialogWebTopbarClose:Landroid/widget/FrameLayout;

    return-void

    .array-data 1
    .end array-data
.end method

.method public static bind(Landroid/view/View;)Lcom/kakaogame/databinding/ZinnySdkCafeDialogWebKakaoBinding;
    .locals 14

    .line 1059
    sget v0, Lcom/kakaogame/R$id;->zinny_sdk_dialog_cafe_logo:I

    .line 1069
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroid/widget/ImageView;

    if-eqz v4, :cond_0

    .line 1119
    sget v0, Lcom/kakaogame/R$id;->zinny_sdk_dialog_web:I

    .line 1129
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroid/widget/RelativeLayout;

    if-eqz v5, :cond_0

    .line 1179
    sget v0, Lcom/kakaogame/R$id;->zinny_sdk_dialog_web_container:I

    .line 1189
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Landroid/widget/LinearLayout;

    if-eqz v6, :cond_0

    .line 1239
    sget v0, Lcom/kakaogame/R$id;->zinny_sdk_dialog_web_content:I

    .line 1249
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Landroid/webkit/WebView;

    if-eqz v7, :cond_0

    .line 1299
    sget v0, Lcom/kakaogame/R$id;->zinny_sdk_dialog_web_custom_container:I

    .line 1309
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Landroid/widget/FrameLayout;

    if-eqz v8, :cond_0

    .line 1359
    sget v0, Lcom/kakaogame/R$id;->zinny_sdk_dialog_web_layout:I

    .line 1369
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    if-eqz v9, :cond_0

    .line 1419
    move-object v10, p0

    check-cast v10, Landroid/widget/RelativeLayout;

    .line 1439
    sget v0, Lcom/kakaogame/R$id;->zinny_sdk_dialog_web_topbar:I

    .line 1449
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v11, v1

    check-cast v11, Landroid/widget/RelativeLayout;

    if-eqz v11, :cond_0

    .line 1499
    sget v0, Lcom/kakaogame/R$id;->zinny_sdk_dialog_web_topbar_back:I

    .line 1509
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v12, v1

    check-cast v12, Landroid/widget/ImageView;

    if-eqz v12, :cond_0

    .line 1559
    sget v0, Lcom/kakaogame/R$id;->zinny_sdk_dialog_web_topbar_close:I

    .line 1569
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v13, v1

    check-cast v13, Landroid/widget/FrameLayout;

    if-eqz v13, :cond_0

    .line 1619
    new-instance p0, Lcom/kakaogame/databinding/ZinnySdkCafeDialogWebKakaoBinding;

    move-object v2, p0

    move-object v3, v10

    invoke-direct/range {v2 .. v13}, Lcom/kakaogame/databinding/ZinnySdkCafeDialogWebKakaoBinding;-><init>(Landroid/widget/RelativeLayout;Landroid/widget/ImageView;Landroid/widget/RelativeLayout;Landroid/widget/LinearLayout;Landroid/webkit/WebView;Landroid/widget/FrameLayout;Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;Landroid/widget/RelativeLayout;Landroid/widget/RelativeLayout;Landroid/widget/ImageView;Landroid/widget/FrameLayout;)V

    return-object p0

    .line 1679
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    .line 1689
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

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/kakaogame/databinding/ZinnySdkCafeDialogWebKakaoBinding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 869
    invoke-static {p0, v0, v1}, Lcom/kakaogame/databinding/ZinnySdkCafeDialogWebKakaoBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/kakaogame/databinding/ZinnySdkCafeDialogWebKakaoBinding;

    move-result-object p0

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/kakaogame/databinding/ZinnySdkCafeDialogWebKakaoBinding;
    .locals 2

    .line 929
    sget v0, Lcom/kakaogame/R$layout;->zinny_sdk_cafe_dialog_web_kakao:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 949
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 969
    :cond_0
    invoke-static {p0}, Lcom/kakaogame/databinding/ZinnySdkCafeDialogWebKakaoBinding;->bind(Landroid/view/View;)Lcom/kakaogame/databinding/ZinnySdkCafeDialogWebKakaoBinding;

    move-result-object p0

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 229
    invoke-virtual {p0}, Lcom/kakaogame/databinding/ZinnySdkCafeDialogWebKakaoBinding;->getRoot()Landroid/widget/RelativeLayout;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getRoot()Landroid/widget/RelativeLayout;
    .locals 1

    .line 819
    iget-object v0, p0, Lcom/kakaogame/databinding/ZinnySdkCafeDialogWebKakaoBinding;->rootView:Landroid/widget/RelativeLayout;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method
