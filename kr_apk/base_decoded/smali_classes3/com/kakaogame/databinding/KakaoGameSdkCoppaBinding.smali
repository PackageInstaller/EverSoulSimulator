.class public final Lcom/kakaogame/databinding/KakaoGameSdkCoppaBinding;
.super Ljava/lang/Object;
.source "KakaoGameSdkCoppaBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final kakaoGameCoppaButton:Landroid/widget/Button;

.field public final kakaoGameCoppaDatePicker:Landroid/widget/DatePicker;

.field public final kakaoGameCoppaDesc:Landroid/widget/TextView;

.field public final kakaoGameCoppaTitle:Landroid/widget/TextView;

.field private final rootView:Landroid/widget/RelativeLayout;


# direct methods
.method private constructor <init>(Landroid/widget/RelativeLayout;Landroid/widget/Button;Landroid/widget/DatePicker;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 0

    .line 389
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 399
    iput-object p1, p0, Lcom/kakaogame/databinding/KakaoGameSdkCoppaBinding;->rootView:Landroid/widget/RelativeLayout;

    .line 409
    iput-object p2, p0, Lcom/kakaogame/databinding/KakaoGameSdkCoppaBinding;->kakaoGameCoppaButton:Landroid/widget/Button;

    .line 419
    iput-object p3, p0, Lcom/kakaogame/databinding/KakaoGameSdkCoppaBinding;->kakaoGameCoppaDatePicker:Landroid/widget/DatePicker;

    .line 429
    iput-object p4, p0, Lcom/kakaogame/databinding/KakaoGameSdkCoppaBinding;->kakaoGameCoppaDesc:Landroid/widget/TextView;

    .line 439
    iput-object p5, p0, Lcom/kakaogame/databinding/KakaoGameSdkCoppaBinding;->kakaoGameCoppaTitle:Landroid/widget/TextView;

    return-void

    .array-data 1
    .end array-data
.end method

.method public static bind(Landroid/view/View;)Lcom/kakaogame/databinding/KakaoGameSdkCoppaBinding;
    .locals 8

    .line 739
    sget v0, Lcom/kakaogame/R$id;->kakao_game_coppa_button:I

    .line 749
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroid/widget/Button;

    if-eqz v4, :cond_0

    .line 799
    sget v0, Lcom/kakaogame/R$id;->kakao_game_coppa_datePicker:I

    .line 809
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroid/widget/DatePicker;

    if-eqz v5, :cond_0

    .line 859
    sget v0, Lcom/kakaogame/R$id;->kakao_game_coppa_desc:I

    .line 869
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Landroid/widget/TextView;

    if-eqz v6, :cond_0

    .line 919
    sget v0, Lcom/kakaogame/R$id;->kakao_game_coppa_title:I

    .line 929
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Landroid/widget/TextView;

    if-eqz v7, :cond_0

    .line 979
    new-instance v0, Lcom/kakaogame/databinding/KakaoGameSdkCoppaBinding;

    move-object v3, p0

    check-cast v3, Landroid/widget/RelativeLayout;

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lcom/kakaogame/databinding/KakaoGameSdkCoppaBinding;-><init>(Landroid/widget/RelativeLayout;Landroid/widget/Button;Landroid/widget/DatePicker;Landroid/widget/TextView;Landroid/widget/TextView;)V

    return-object v0

    .line 1009
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    .line 1019
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

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/kakaogame/databinding/KakaoGameSdkCoppaBinding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 549
    invoke-static {p0, v0, v1}, Lcom/kakaogame/databinding/KakaoGameSdkCoppaBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/kakaogame/databinding/KakaoGameSdkCoppaBinding;

    move-result-object p0

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/kakaogame/databinding/KakaoGameSdkCoppaBinding;
    .locals 2

    .line 609
    sget v0, Lcom/kakaogame/R$layout;->kakao_game_sdk_coppa:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 629
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 649
    :cond_0
    invoke-static {p0}, Lcom/kakaogame/databinding/KakaoGameSdkCoppaBinding;->bind(Landroid/view/View;)Lcom/kakaogame/databinding/KakaoGameSdkCoppaBinding;

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
    invoke-virtual {p0}, Lcom/kakaogame/databinding/KakaoGameSdkCoppaBinding;->getRoot()Landroid/widget/RelativeLayout;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getRoot()Landroid/widget/RelativeLayout;
    .locals 1

    .line 499
    iget-object v0, p0, Lcom/kakaogame/databinding/KakaoGameSdkCoppaBinding;->rootView:Landroid/widget/RelativeLayout;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method
