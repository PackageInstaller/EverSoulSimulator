.class public final Lcom/kakaogame/databinding/KakaoGameSdkShareScreenshotBinding;
.super Ljava/lang/Object;
.source "KakaoGameSdkShareScreenshotBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final kakaoGameSdkBound:Landroid/widget/RelativeLayout;

.field public final kakaoGameSdkBoundBottomnRight:Landroid/view/View;

.field public final kakaoGameSdkBoundTopLeft:Landroid/view/View;

.field public final kakaoGameSdkDialogTopbarClose:Lcom/kakaogame/promotion/share/KGAnimationButton;

.field public final kakaoGameSdkScreenshotCamera:Lcom/kakaogame/promotion/share/KGAnimationButton;

.field public final kakaoGameSdkScreenshotCrop:Lcom/kakaogame/promotion/share/KGAnimationButton;

.field public final kakaoGameSdkScreenshotCropType:Landroid/widget/ImageView;

.field public final kakaoGameSdkScreenshotLayout:Landroid/widget/RelativeLayout;

.field public final kakaoGameSdkScreenshotResultImage:Landroid/widget/ImageView;

.field public final kakaoGameSdkScreenshotWatermark:Landroid/widget/FrameLayout;

.field public final kakaoGameSdkScreenshotWatermarkButton:Landroid/widget/ImageView;

.field public final kakaoGameSdkScreenshotWatermarkCropImage:Landroid/widget/ImageView;

.field public final kakaoGameSdkScreenshotWatermarkImage:Landroid/widget/ImageView;

.field private final rootView:Landroid/widget/RelativeLayout;


# direct methods
.method private constructor <init>(Landroid/widget/RelativeLayout;Landroid/widget/RelativeLayout;Landroid/view/View;Landroid/view/View;Lcom/kakaogame/promotion/share/KGAnimationButton;Lcom/kakaogame/promotion/share/KGAnimationButton;Lcom/kakaogame/promotion/share/KGAnimationButton;Landroid/widget/ImageView;Landroid/widget/RelativeLayout;Landroid/widget/ImageView;Landroid/widget/FrameLayout;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;)V
    .locals 0

    .line 759
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 769
    iput-object p1, p0, Lcom/kakaogame/databinding/KakaoGameSdkShareScreenshotBinding;->rootView:Landroid/widget/RelativeLayout;

    .line 779
    iput-object p2, p0, Lcom/kakaogame/databinding/KakaoGameSdkShareScreenshotBinding;->kakaoGameSdkBound:Landroid/widget/RelativeLayout;

    .line 789
    iput-object p3, p0, Lcom/kakaogame/databinding/KakaoGameSdkShareScreenshotBinding;->kakaoGameSdkBoundBottomnRight:Landroid/view/View;

    .line 799
    iput-object p4, p0, Lcom/kakaogame/databinding/KakaoGameSdkShareScreenshotBinding;->kakaoGameSdkBoundTopLeft:Landroid/view/View;

    .line 809
    iput-object p5, p0, Lcom/kakaogame/databinding/KakaoGameSdkShareScreenshotBinding;->kakaoGameSdkDialogTopbarClose:Lcom/kakaogame/promotion/share/KGAnimationButton;

    .line 819
    iput-object p6, p0, Lcom/kakaogame/databinding/KakaoGameSdkShareScreenshotBinding;->kakaoGameSdkScreenshotCamera:Lcom/kakaogame/promotion/share/KGAnimationButton;

    .line 829
    iput-object p7, p0, Lcom/kakaogame/databinding/KakaoGameSdkShareScreenshotBinding;->kakaoGameSdkScreenshotCrop:Lcom/kakaogame/promotion/share/KGAnimationButton;

    .line 839
    iput-object p8, p0, Lcom/kakaogame/databinding/KakaoGameSdkShareScreenshotBinding;->kakaoGameSdkScreenshotCropType:Landroid/widget/ImageView;

    .line 849
    iput-object p9, p0, Lcom/kakaogame/databinding/KakaoGameSdkShareScreenshotBinding;->kakaoGameSdkScreenshotLayout:Landroid/widget/RelativeLayout;

    .line 859
    iput-object p10, p0, Lcom/kakaogame/databinding/KakaoGameSdkShareScreenshotBinding;->kakaoGameSdkScreenshotResultImage:Landroid/widget/ImageView;

    .line 869
    iput-object p11, p0, Lcom/kakaogame/databinding/KakaoGameSdkShareScreenshotBinding;->kakaoGameSdkScreenshotWatermark:Landroid/widget/FrameLayout;

    .line 879
    iput-object p12, p0, Lcom/kakaogame/databinding/KakaoGameSdkShareScreenshotBinding;->kakaoGameSdkScreenshotWatermarkButton:Landroid/widget/ImageView;

    .line 889
    iput-object p13, p0, Lcom/kakaogame/databinding/KakaoGameSdkShareScreenshotBinding;->kakaoGameSdkScreenshotWatermarkCropImage:Landroid/widget/ImageView;

    .line 899
    iput-object p14, p0, Lcom/kakaogame/databinding/KakaoGameSdkShareScreenshotBinding;->kakaoGameSdkScreenshotWatermarkImage:Landroid/widget/ImageView;

    return-void

    .array-data 1
    .end array-data
.end method

.method public static bind(Landroid/view/View;)Lcom/kakaogame/databinding/KakaoGameSdkShareScreenshotBinding;
    .locals 18

    move-object/from16 v0, p0

    .line 1199
    sget v1, Lcom/kakaogame/R$id;->kakao_game_sdk_bound:I

    .line 1209
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Landroid/widget/RelativeLayout;

    if-eqz v5, :cond_0

    .line 1259
    sget v1, Lcom/kakaogame/R$id;->kakao_game_sdk_bound_bottomn_right:I

    .line 1269
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 1319
    sget v1, Lcom/kakaogame/R$id;->kakao_game_sdk_bound_top_left:I

    .line 1329
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v7

    if-eqz v7, :cond_0

    .line 1379
    sget v1, Lcom/kakaogame/R$id;->kakao_game_sdk_dialog_topbar_close:I

    .line 1389
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Lcom/kakaogame/promotion/share/KGAnimationButton;

    if-eqz v8, :cond_0

    .line 1439
    sget v1, Lcom/kakaogame/R$id;->kakao_game_sdk_screenshot_camera:I

    .line 1449
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Lcom/kakaogame/promotion/share/KGAnimationButton;

    if-eqz v9, :cond_0

    .line 1499
    sget v1, Lcom/kakaogame/R$id;->kakao_game_sdk_screenshot_crop:I

    .line 1509
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Lcom/kakaogame/promotion/share/KGAnimationButton;

    if-eqz v10, :cond_0

    .line 1559
    sget v1, Lcom/kakaogame/R$id;->kakao_game_sdk_screenshot_crop_type:I

    .line 1569
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v11, v2

    check-cast v11, Landroid/widget/ImageView;

    if-eqz v11, :cond_0

    .line 1619
    move-object v12, v0

    check-cast v12, Landroid/widget/RelativeLayout;

    .line 1639
    sget v1, Lcom/kakaogame/R$id;->kakao_game_sdk_screenshot_result_image:I

    .line 1649
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v13, v2

    check-cast v13, Landroid/widget/ImageView;

    if-eqz v13, :cond_0

    .line 1699
    sget v1, Lcom/kakaogame/R$id;->kakao_game_sdk_screenshot_watermark:I

    .line 1709
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v14, v2

    check-cast v14, Landroid/widget/FrameLayout;

    if-eqz v14, :cond_0

    .line 1759
    sget v1, Lcom/kakaogame/R$id;->kakao_game_sdk_screenshot_watermark_button:I

    .line 1769
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v15, v2

    check-cast v15, Landroid/widget/ImageView;

    if-eqz v15, :cond_0

    .line 1819
    sget v1, Lcom/kakaogame/R$id;->kakao_game_sdk_screenshot_watermark_crop_image:I

    .line 1829
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v16, v2

    check-cast v16, Landroid/widget/ImageView;

    if-eqz v16, :cond_0

    .line 1879
    sget v1, Lcom/kakaogame/R$id;->kakao_game_sdk_screenshot_watermark_image:I

    .line 1889
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v17, v2

    check-cast v17, Landroid/widget/ImageView;

    if-eqz v17, :cond_0

    .line 1939
    new-instance v0, Lcom/kakaogame/databinding/KakaoGameSdkShareScreenshotBinding;

    move-object v3, v0

    move-object v4, v12

    invoke-direct/range {v3 .. v17}, Lcom/kakaogame/databinding/KakaoGameSdkShareScreenshotBinding;-><init>(Landroid/widget/RelativeLayout;Landroid/widget/RelativeLayout;Landroid/view/View;Landroid/view/View;Lcom/kakaogame/promotion/share/KGAnimationButton;Lcom/kakaogame/promotion/share/KGAnimationButton;Lcom/kakaogame/promotion/share/KGAnimationButton;Landroid/widget/ImageView;Landroid/widget/RelativeLayout;Landroid/widget/ImageView;Landroid/widget/FrameLayout;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;)V

    return-object v0

    .line 2009
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    .line 2019
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

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/kakaogame/databinding/KakaoGameSdkShareScreenshotBinding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1009
    invoke-static {p0, v0, v1}, Lcom/kakaogame/databinding/KakaoGameSdkShareScreenshotBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/kakaogame/databinding/KakaoGameSdkShareScreenshotBinding;

    move-result-object p0

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/kakaogame/databinding/KakaoGameSdkShareScreenshotBinding;
    .locals 2

    .line 1069
    sget v0, Lcom/kakaogame/R$layout;->kakao_game_sdk_share_screenshot:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 1089
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 1109
    :cond_0
    invoke-static {p0}, Lcom/kakaogame/databinding/KakaoGameSdkShareScreenshotBinding;->bind(Landroid/view/View;)Lcom/kakaogame/databinding/KakaoGameSdkShareScreenshotBinding;

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
    invoke-virtual {p0}, Lcom/kakaogame/databinding/KakaoGameSdkShareScreenshotBinding;->getRoot()Landroid/widget/RelativeLayout;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getRoot()Landroid/widget/RelativeLayout;
    .locals 1

    .line 959
    iget-object v0, p0, Lcom/kakaogame/databinding/KakaoGameSdkShareScreenshotBinding;->rootView:Landroid/widget/RelativeLayout;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method
