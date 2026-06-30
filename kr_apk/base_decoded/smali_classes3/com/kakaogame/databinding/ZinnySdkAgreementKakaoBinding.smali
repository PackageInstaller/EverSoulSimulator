.class public final Lcom/kakaogame/databinding/ZinnySdkAgreementKakaoBinding;
.super Ljava/lang/Object;
.source "ZinnySdkAgreementKakaoBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field private final rootView:Landroid/widget/RelativeLayout;

.field public final zinnySdkAgreementImageBack:Landroid/widget/ImageView;

.field public final zinnySdkAgreementKakao:Landroid/widget/RelativeLayout;

.field public final zinnySdkAgreementKakaoTopbarBack:Landroid/widget/FrameLayout;

.field public final zinnySdkAgreementKakaoTopbarTitle:Landroid/widget/TextView;

.field public final zinnySdkAgreementKakaoWebview:Landroid/webkit/WebView;

.field public final zinnySdkDialogWebTopbar:Landroid/widget/RelativeLayout;


# direct methods
.method private constructor <init>(Landroid/widget/RelativeLayout;Landroid/widget/ImageView;Landroid/widget/RelativeLayout;Landroid/widget/FrameLayout;Landroid/widget/TextView;Landroid/webkit/WebView;Landroid/widget/RelativeLayout;)V
    .locals 0

    .line 489
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 499
    iput-object p1, p0, Lcom/kakaogame/databinding/ZinnySdkAgreementKakaoBinding;->rootView:Landroid/widget/RelativeLayout;

    .line 509
    iput-object p2, p0, Lcom/kakaogame/databinding/ZinnySdkAgreementKakaoBinding;->zinnySdkAgreementImageBack:Landroid/widget/ImageView;

    .line 519
    iput-object p3, p0, Lcom/kakaogame/databinding/ZinnySdkAgreementKakaoBinding;->zinnySdkAgreementKakao:Landroid/widget/RelativeLayout;

    .line 529
    iput-object p4, p0, Lcom/kakaogame/databinding/ZinnySdkAgreementKakaoBinding;->zinnySdkAgreementKakaoTopbarBack:Landroid/widget/FrameLayout;

    .line 539
    iput-object p5, p0, Lcom/kakaogame/databinding/ZinnySdkAgreementKakaoBinding;->zinnySdkAgreementKakaoTopbarTitle:Landroid/widget/TextView;

    .line 549
    iput-object p6, p0, Lcom/kakaogame/databinding/ZinnySdkAgreementKakaoBinding;->zinnySdkAgreementKakaoWebview:Landroid/webkit/WebView;

    .line 559
    iput-object p7, p0, Lcom/kakaogame/databinding/ZinnySdkAgreementKakaoBinding;->zinnySdkDialogWebTopbar:Landroid/widget/RelativeLayout;

    return-void

    .array-data 1
    .end array-data
.end method

.method public static bind(Landroid/view/View;)Lcom/kakaogame/databinding/ZinnySdkAgreementKakaoBinding;
    .locals 10

    .line 859
    sget v0, Lcom/kakaogame/R$id;->zinny_sdk_agreement_image_back:I

    .line 869
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroid/widget/ImageView;

    if-eqz v4, :cond_0

    .line 919
    move-object v5, p0

    check-cast v5, Landroid/widget/RelativeLayout;

    .line 939
    sget v0, Lcom/kakaogame/R$id;->zinny_sdk_agreement_kakao_topbar_back:I

    .line 949
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Landroid/widget/FrameLayout;

    if-eqz v6, :cond_0

    .line 999
    sget v0, Lcom/kakaogame/R$id;->zinny_sdk_agreement_kakao_topbar_title:I

    .line 1009
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Landroid/widget/TextView;

    if-eqz v7, :cond_0

    .line 1059
    sget v0, Lcom/kakaogame/R$id;->zinny_sdk_agreement_kakao_webview:I

    .line 1069
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Landroid/webkit/WebView;

    if-eqz v8, :cond_0

    .line 1119
    sget v0, Lcom/kakaogame/R$id;->zinny_sdk_dialog_web_topbar:I

    .line 1129
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Landroid/widget/RelativeLayout;

    if-eqz v9, :cond_0

    .line 1179
    new-instance p0, Lcom/kakaogame/databinding/ZinnySdkAgreementKakaoBinding;

    move-object v2, p0

    move-object v3, v5

    invoke-direct/range {v2 .. v9}, Lcom/kakaogame/databinding/ZinnySdkAgreementKakaoBinding;-><init>(Landroid/widget/RelativeLayout;Landroid/widget/ImageView;Landroid/widget/RelativeLayout;Landroid/widget/FrameLayout;Landroid/widget/TextView;Landroid/webkit/WebView;Landroid/widget/RelativeLayout;)V

    return-object p0

    .line 1229
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    .line 1239
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

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/kakaogame/databinding/ZinnySdkAgreementKakaoBinding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 669
    invoke-static {p0, v0, v1}, Lcom/kakaogame/databinding/ZinnySdkAgreementKakaoBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/kakaogame/databinding/ZinnySdkAgreementKakaoBinding;

    move-result-object p0

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/kakaogame/databinding/ZinnySdkAgreementKakaoBinding;
    .locals 2

    .line 729
    sget v0, Lcom/kakaogame/R$layout;->zinny_sdk_agreement_kakao:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 749
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 769
    :cond_0
    invoke-static {p0}, Lcom/kakaogame/databinding/ZinnySdkAgreementKakaoBinding;->bind(Landroid/view/View;)Lcom/kakaogame/databinding/ZinnySdkAgreementKakaoBinding;

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
    invoke-virtual {p0}, Lcom/kakaogame/databinding/ZinnySdkAgreementKakaoBinding;->getRoot()Landroid/widget/RelativeLayout;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getRoot()Landroid/widget/RelativeLayout;
    .locals 1

    .line 619
    iget-object v0, p0, Lcom/kakaogame/databinding/ZinnySdkAgreementKakaoBinding;->rootView:Landroid/widget/RelativeLayout;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method
