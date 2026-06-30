.class public final Lcom/kakaogame/apple/databinding/KakaoSdkSiwaDialogBinding;
.super Ljava/lang/Object;
.source "KakaoSdkSiwaDialogBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field private final rootView:Landroid/widget/RelativeLayout;

.field public final zinnySdkDialogWeb:Landroid/widget/RelativeLayout;

.field public final zinnySdkDialogWebContainer:Landroid/view/View;

.field public final zinnySdkDialogWebContent:Landroid/webkit/WebView;

.field public final zinnySdkDialogWebCustomContainer:Landroid/widget/FrameLayout;

.field public final zinnySdkDialogWebLayout:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

.field public final zinnySdkDialogWebMain:Landroid/widget/RelativeLayout;

.field public final zinnySdkDialogWebTopbar:Landroid/widget/RelativeLayout;

.field public final zinnySdkDialogWebTopbarBack:Landroid/widget/ImageView;

.field public final zinnySdkDialogWebTopbarClose:Landroid/widget/FrameLayout;


# direct methods
.method private constructor <init>(Landroid/widget/RelativeLayout;Landroid/widget/RelativeLayout;Landroid/view/View;Landroid/webkit/WebView;Landroid/widget/FrameLayout;Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;Landroid/widget/RelativeLayout;Landroid/widget/RelativeLayout;Landroid/widget/ImageView;Landroid/widget/FrameLayout;)V
    .locals 0

    .line 869
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 879
    iput-object p1, p0, Lcom/kakaogame/apple/databinding/KakaoSdkSiwaDialogBinding;->rootView:Landroid/widget/RelativeLayout;

    .line 889
    iput-object p2, p0, Lcom/kakaogame/apple/databinding/KakaoSdkSiwaDialogBinding;->zinnySdkDialogWeb:Landroid/widget/RelativeLayout;

    .line 899
    iput-object p3, p0, Lcom/kakaogame/apple/databinding/KakaoSdkSiwaDialogBinding;->zinnySdkDialogWebContainer:Landroid/view/View;

    .line 909
    iput-object p4, p0, Lcom/kakaogame/apple/databinding/KakaoSdkSiwaDialogBinding;->zinnySdkDialogWebContent:Landroid/webkit/WebView;

    .line 919
    iput-object p5, p0, Lcom/kakaogame/apple/databinding/KakaoSdkSiwaDialogBinding;->zinnySdkDialogWebCustomContainer:Landroid/widget/FrameLayout;

    .line 929
    iput-object p6, p0, Lcom/kakaogame/apple/databinding/KakaoSdkSiwaDialogBinding;->zinnySdkDialogWebLayout:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    .line 939
    iput-object p7, p0, Lcom/kakaogame/apple/databinding/KakaoSdkSiwaDialogBinding;->zinnySdkDialogWebMain:Landroid/widget/RelativeLayout;

    .line 949
    iput-object p8, p0, Lcom/kakaogame/apple/databinding/KakaoSdkSiwaDialogBinding;->zinnySdkDialogWebTopbar:Landroid/widget/RelativeLayout;

    .line 959
    iput-object p9, p0, Lcom/kakaogame/apple/databinding/KakaoSdkSiwaDialogBinding;->zinnySdkDialogWebTopbarBack:Landroid/widget/ImageView;

    .line 969
    iput-object p10, p0, Lcom/kakaogame/apple/databinding/KakaoSdkSiwaDialogBinding;->zinnySdkDialogWebTopbarClose:Landroid/widget/FrameLayout;

    return-void

    .array-data 1
    .end array-data
.end method

.method public static bind(Landroid/view/View;)Lcom/kakaogame/apple/databinding/KakaoSdkSiwaDialogBinding;
    .locals 13

    .line 1269
    sget v0, Lcom/kakaogame/apple/R$id;->zinny_sdk_dialog_web:I

    .line 1279
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroid/widget/RelativeLayout;

    if-eqz v4, :cond_0

    .line 1329
    sget v0, Lcom/kakaogame/apple/R$id;->zinny_sdk_dialog_web_container:I

    .line 1339
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 1389
    sget v0, Lcom/kakaogame/apple/R$id;->zinny_sdk_dialog_web_content:I

    .line 1399
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Landroid/webkit/WebView;

    if-eqz v6, :cond_0

    .line 1449
    sget v0, Lcom/kakaogame/apple/R$id;->zinny_sdk_dialog_web_custom_container:I

    .line 1459
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Landroid/widget/FrameLayout;

    if-eqz v7, :cond_0

    .line 1509
    sget v0, Lcom/kakaogame/apple/R$id;->zinny_sdk_dialog_web_layout:I

    .line 1519
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    if-eqz v8, :cond_0

    .line 1569
    move-object v9, p0

    check-cast v9, Landroid/widget/RelativeLayout;

    .line 1589
    sget v0, Lcom/kakaogame/apple/R$id;->zinny_sdk_dialog_web_topbar:I

    .line 1599
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Landroid/widget/RelativeLayout;

    .line 1619
    sget v0, Lcom/kakaogame/apple/R$id;->zinny_sdk_dialog_web_topbar_back:I

    .line 1629
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Landroid/widget/ImageView;

    .line 1649
    sget v0, Lcom/kakaogame/apple/R$id;->zinny_sdk_dialog_web_topbar_close:I

    .line 1659
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v12, v1

    check-cast v12, Landroid/widget/FrameLayout;

    if-eqz v12, :cond_0

    .line 1709
    new-instance p0, Lcom/kakaogame/apple/databinding/KakaoSdkSiwaDialogBinding;

    move-object v2, p0

    move-object v3, v9

    invoke-direct/range {v2 .. v12}, Lcom/kakaogame/apple/databinding/KakaoSdkSiwaDialogBinding;-><init>(Landroid/widget/RelativeLayout;Landroid/widget/RelativeLayout;Landroid/view/View;Landroid/webkit/WebView;Landroid/widget/FrameLayout;Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;Landroid/widget/RelativeLayout;Landroid/widget/RelativeLayout;Landroid/widget/ImageView;Landroid/widget/FrameLayout;)V

    return-object p0

    .line 1759
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    .line 1769
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

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/kakaogame/apple/databinding/KakaoSdkSiwaDialogBinding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1079
    invoke-static {p0, v0, v1}, Lcom/kakaogame/apple/databinding/KakaoSdkSiwaDialogBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/kakaogame/apple/databinding/KakaoSdkSiwaDialogBinding;

    move-result-object p0

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/kakaogame/apple/databinding/KakaoSdkSiwaDialogBinding;
    .locals 2

    .line 1139
    sget v0, Lcom/kakaogame/apple/R$layout;->kakao_sdk_siwa_dialog:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 1159
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 1179
    :cond_0
    invoke-static {p0}, Lcom/kakaogame/apple/databinding/KakaoSdkSiwaDialogBinding;->bind(Landroid/view/View;)Lcom/kakaogame/apple/databinding/KakaoSdkSiwaDialogBinding;

    move-result-object p0

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 219
    invoke-virtual {p0}, Lcom/kakaogame/apple/databinding/KakaoSdkSiwaDialogBinding;->getRoot()Landroid/widget/RelativeLayout;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getRoot()Landroid/widget/RelativeLayout;
    .locals 1

    .line 1029
    iget-object v0, p0, Lcom/kakaogame/apple/databinding/KakaoSdkSiwaDialogBinding;->rootView:Landroid/widget/RelativeLayout;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method
