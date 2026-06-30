.class public final Lcom/kakaogame/databinding/ZinnySdkDialogWebKakaoBinding;
.super Ljava/lang/Object;
.source "ZinnySdkDialogWebKakaoBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field private final rootView:Landroid/widget/RelativeLayout;

.field public final zinnySdkDialogWeb:Landroid/widget/RelativeLayout;

.field public final zinnySdkDialogWebContainer:Landroid/widget/LinearLayout;

.field public final zinnySdkDialogWebContent:Landroid/webkit/WebView;

.field public final zinnySdkDialogWebCustomContainer:Landroid/widget/FrameLayout;

.field public final zinnySdkDialogWebLayout:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

.field public final zinnySdkDialogWebMain:Landroid/widget/RelativeLayout;

.field public final zinnySdkDialogWebTopbar:Landroid/widget/RelativeLayout;

.field public final zinnySdkDialogWebTopbarBack:Landroid/widget/FrameLayout;

.field public final zinnySdkDialogWebTopbarClose:Landroid/widget/FrameLayout;

.field public final zinnySdkDialogWebTopbarCloseImage:Landroid/widget/ImageView;

.field public final zinnySdkDialogWebTopbarPreviousImage:Landroid/widget/ImageView;

.field public final zinnySdkDialogWebTopbarTitle:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Landroid/widget/RelativeLayout;Landroid/widget/RelativeLayout;Landroid/widget/LinearLayout;Landroid/webkit/WebView;Landroid/widget/FrameLayout;Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;Landroid/widget/RelativeLayout;Landroid/widget/RelativeLayout;Landroid/widget/FrameLayout;Landroid/widget/FrameLayout;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/TextView;)V
    .locals 0

    .line 749
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 759
    iput-object p1, p0, Lcom/kakaogame/databinding/ZinnySdkDialogWebKakaoBinding;->rootView:Landroid/widget/RelativeLayout;

    .line 769
    iput-object p2, p0, Lcom/kakaogame/databinding/ZinnySdkDialogWebKakaoBinding;->zinnySdkDialogWeb:Landroid/widget/RelativeLayout;

    .line 779
    iput-object p3, p0, Lcom/kakaogame/databinding/ZinnySdkDialogWebKakaoBinding;->zinnySdkDialogWebContainer:Landroid/widget/LinearLayout;

    .line 789
    iput-object p4, p0, Lcom/kakaogame/databinding/ZinnySdkDialogWebKakaoBinding;->zinnySdkDialogWebContent:Landroid/webkit/WebView;

    .line 799
    iput-object p5, p0, Lcom/kakaogame/databinding/ZinnySdkDialogWebKakaoBinding;->zinnySdkDialogWebCustomContainer:Landroid/widget/FrameLayout;

    .line 809
    iput-object p6, p0, Lcom/kakaogame/databinding/ZinnySdkDialogWebKakaoBinding;->zinnySdkDialogWebLayout:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    .line 819
    iput-object p7, p0, Lcom/kakaogame/databinding/ZinnySdkDialogWebKakaoBinding;->zinnySdkDialogWebMain:Landroid/widget/RelativeLayout;

    .line 829
    iput-object p8, p0, Lcom/kakaogame/databinding/ZinnySdkDialogWebKakaoBinding;->zinnySdkDialogWebTopbar:Landroid/widget/RelativeLayout;

    .line 839
    iput-object p9, p0, Lcom/kakaogame/databinding/ZinnySdkDialogWebKakaoBinding;->zinnySdkDialogWebTopbarBack:Landroid/widget/FrameLayout;

    .line 849
    iput-object p10, p0, Lcom/kakaogame/databinding/ZinnySdkDialogWebKakaoBinding;->zinnySdkDialogWebTopbarClose:Landroid/widget/FrameLayout;

    .line 859
    iput-object p11, p0, Lcom/kakaogame/databinding/ZinnySdkDialogWebKakaoBinding;->zinnySdkDialogWebTopbarCloseImage:Landroid/widget/ImageView;

    .line 869
    iput-object p12, p0, Lcom/kakaogame/databinding/ZinnySdkDialogWebKakaoBinding;->zinnySdkDialogWebTopbarPreviousImage:Landroid/widget/ImageView;

    .line 879
    iput-object p13, p0, Lcom/kakaogame/databinding/ZinnySdkDialogWebKakaoBinding;->zinnySdkDialogWebTopbarTitle:Landroid/widget/TextView;

    return-void

    .array-data 1
    .end array-data
.end method

.method public static bind(Landroid/view/View;)Lcom/kakaogame/databinding/ZinnySdkDialogWebKakaoBinding;
    .locals 17

    move-object/from16 v0, p0

    .line 1179
    sget v1, Lcom/kakaogame/R$id;->zinny_sdk_dialog_web:I

    .line 1189
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Landroid/widget/RelativeLayout;

    if-eqz v5, :cond_0

    .line 1239
    sget v1, Lcom/kakaogame/R$id;->zinny_sdk_dialog_web_container:I

    .line 1249
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Landroid/widget/LinearLayout;

    if-eqz v6, :cond_0

    .line 1299
    sget v1, Lcom/kakaogame/R$id;->zinny_sdk_dialog_web_content:I

    .line 1309
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Landroid/webkit/WebView;

    if-eqz v7, :cond_0

    .line 1359
    sget v1, Lcom/kakaogame/R$id;->zinny_sdk_dialog_web_custom_container:I

    .line 1369
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Landroid/widget/FrameLayout;

    if-eqz v8, :cond_0

    .line 1419
    sget v1, Lcom/kakaogame/R$id;->zinny_sdk_dialog_web_layout:I

    .line 1429
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    if-eqz v9, :cond_0

    .line 1479
    move-object v10, v0

    check-cast v10, Landroid/widget/RelativeLayout;

    .line 1499
    sget v1, Lcom/kakaogame/R$id;->zinny_sdk_dialog_web_topbar:I

    .line 1509
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v11, v2

    check-cast v11, Landroid/widget/RelativeLayout;

    if-eqz v11, :cond_0

    .line 1559
    sget v1, Lcom/kakaogame/R$id;->zinny_sdk_dialog_web_topbar_back:I

    .line 1569
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v12, v2

    check-cast v12, Landroid/widget/FrameLayout;

    if-eqz v12, :cond_0

    .line 1619
    sget v1, Lcom/kakaogame/R$id;->zinny_sdk_dialog_web_topbar_close:I

    .line 1629
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v13, v2

    check-cast v13, Landroid/widget/FrameLayout;

    if-eqz v13, :cond_0

    .line 1679
    sget v1, Lcom/kakaogame/R$id;->zinny_sdk_dialog_web_topbar_close_image:I

    .line 1689
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v14, v2

    check-cast v14, Landroid/widget/ImageView;

    if-eqz v14, :cond_0

    .line 1739
    sget v1, Lcom/kakaogame/R$id;->zinny_sdk_dialog_web_topbar_previous_image:I

    .line 1749
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v15, v2

    check-cast v15, Landroid/widget/ImageView;

    if-eqz v15, :cond_0

    .line 1799
    sget v1, Lcom/kakaogame/R$id;->zinny_sdk_dialog_web_topbar_title:I

    .line 1809
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v16, v2

    check-cast v16, Landroid/widget/TextView;

    if-eqz v16, :cond_0

    .line 1859
    new-instance v0, Lcom/kakaogame/databinding/ZinnySdkDialogWebKakaoBinding;

    move-object v3, v0

    move-object v4, v10

    invoke-direct/range {v3 .. v16}, Lcom/kakaogame/databinding/ZinnySdkDialogWebKakaoBinding;-><init>(Landroid/widget/RelativeLayout;Landroid/widget/RelativeLayout;Landroid/widget/LinearLayout;Landroid/webkit/WebView;Landroid/widget/FrameLayout;Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;Landroid/widget/RelativeLayout;Landroid/widget/RelativeLayout;Landroid/widget/FrameLayout;Landroid/widget/FrameLayout;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/TextView;)V

    return-object v0

    .line 1929
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    .line 1939
    new-instance v1, Ljava/lang/NullPointerException;

    const v2, 0x3362bed3

    invoke-static {v2}, Lcom/liapp/y;->ׯ״ٲ֬ب(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .array-data 1
    .end array-data
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/kakaogame/databinding/ZinnySdkDialogWebKakaoBinding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 989
    invoke-static {p0, v0, v1}, Lcom/kakaogame/databinding/ZinnySdkDialogWebKakaoBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/kakaogame/databinding/ZinnySdkDialogWebKakaoBinding;

    move-result-object p0

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/kakaogame/databinding/ZinnySdkDialogWebKakaoBinding;
    .locals 2

    .line 1049
    sget v0, Lcom/kakaogame/R$layout;->zinny_sdk_dialog_web_kakao:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 1069
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 1089
    :cond_0
    invoke-static {p0}, Lcom/kakaogame/databinding/ZinnySdkDialogWebKakaoBinding;->bind(Landroid/view/View;)Lcom/kakaogame/databinding/ZinnySdkDialogWebKakaoBinding;

    move-result-object p0

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 239
    invoke-virtual {p0}, Lcom/kakaogame/databinding/ZinnySdkDialogWebKakaoBinding;->getRoot()Landroid/widget/RelativeLayout;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getRoot()Landroid/widget/RelativeLayout;
    .locals 1

    .line 939
    iget-object v0, p0, Lcom/kakaogame/databinding/ZinnySdkDialogWebKakaoBinding;->rootView:Landroid/widget/RelativeLayout;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method
