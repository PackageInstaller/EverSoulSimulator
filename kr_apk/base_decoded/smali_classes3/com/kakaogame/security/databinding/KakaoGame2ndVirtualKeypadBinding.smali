.class public final Lcom/kakaogame/security/databinding/KakaoGame2ndVirtualKeypadBinding;
.super Ljava/lang/Object;
.source "KakaoGame2ndVirtualKeypadBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final digitCode0:Landroid/widget/Button;

.field public final digitCode1:Landroid/widget/Button;

.field public final digitCode2:Landroid/widget/Button;

.field public final digitCode3:Landroid/widget/Button;

.field public final digitCode4:Landroid/widget/Button;

.field public final digitCode5:Landroid/widget/Button;

.field public final digitCode6:Landroid/widget/Button;

.field public final digitCode7:Landroid/widget/Button;

.field public final digitCode8:Landroid/widget/Button;

.field public final digitCode9:Landroid/widget/Button;

.field public final digitCodeClear:Lcom/kakaogame/ui/font/NotoSansButton;

.field public final digitCodeDelete:Landroid/widget/Button;

.field public final kakaoGameVirtualKeypadImage:Landroid/widget/ImageView;

.field private final rootView:Landroid/widget/RelativeLayout;


# direct methods
.method private constructor <init>(Landroid/widget/RelativeLayout;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/Button;Lcom/kakaogame/ui/font/NotoSansButton;Landroid/widget/Button;Landroid/widget/ImageView;)V
    .locals 0

    .line 689
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 699
    iput-object p1, p0, Lcom/kakaogame/security/databinding/KakaoGame2ndVirtualKeypadBinding;->rootView:Landroid/widget/RelativeLayout;

    .line 709
    iput-object p2, p0, Lcom/kakaogame/security/databinding/KakaoGame2ndVirtualKeypadBinding;->digitCode0:Landroid/widget/Button;

    .line 719
    iput-object p3, p0, Lcom/kakaogame/security/databinding/KakaoGame2ndVirtualKeypadBinding;->digitCode1:Landroid/widget/Button;

    .line 729
    iput-object p4, p0, Lcom/kakaogame/security/databinding/KakaoGame2ndVirtualKeypadBinding;->digitCode2:Landroid/widget/Button;

    .line 739
    iput-object p5, p0, Lcom/kakaogame/security/databinding/KakaoGame2ndVirtualKeypadBinding;->digitCode3:Landroid/widget/Button;

    .line 749
    iput-object p6, p0, Lcom/kakaogame/security/databinding/KakaoGame2ndVirtualKeypadBinding;->digitCode4:Landroid/widget/Button;

    .line 759
    iput-object p7, p0, Lcom/kakaogame/security/databinding/KakaoGame2ndVirtualKeypadBinding;->digitCode5:Landroid/widget/Button;

    .line 769
    iput-object p8, p0, Lcom/kakaogame/security/databinding/KakaoGame2ndVirtualKeypadBinding;->digitCode6:Landroid/widget/Button;

    .line 779
    iput-object p9, p0, Lcom/kakaogame/security/databinding/KakaoGame2ndVirtualKeypadBinding;->digitCode7:Landroid/widget/Button;

    .line 789
    iput-object p10, p0, Lcom/kakaogame/security/databinding/KakaoGame2ndVirtualKeypadBinding;->digitCode8:Landroid/widget/Button;

    .line 799
    iput-object p11, p0, Lcom/kakaogame/security/databinding/KakaoGame2ndVirtualKeypadBinding;->digitCode9:Landroid/widget/Button;

    .line 809
    iput-object p12, p0, Lcom/kakaogame/security/databinding/KakaoGame2ndVirtualKeypadBinding;->digitCodeClear:Lcom/kakaogame/ui/font/NotoSansButton;

    .line 819
    iput-object p13, p0, Lcom/kakaogame/security/databinding/KakaoGame2ndVirtualKeypadBinding;->digitCodeDelete:Landroid/widget/Button;

    .line 829
    iput-object p14, p0, Lcom/kakaogame/security/databinding/KakaoGame2ndVirtualKeypadBinding;->kakaoGameVirtualKeypadImage:Landroid/widget/ImageView;

    return-void

    .array-data 1
    .end array-data
.end method

.method public static bind(Landroid/view/View;)Lcom/kakaogame/security/databinding/KakaoGame2ndVirtualKeypadBinding;
    .locals 18

    move-object/from16 v0, p0

    .line 1129
    sget v1, Lcom/kakaogame/security/R$id;->digit_code_0:I

    .line 1139
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Landroid/widget/Button;

    if-eqz v5, :cond_0

    .line 1189
    sget v1, Lcom/kakaogame/security/R$id;->digit_code_1:I

    .line 1199
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Landroid/widget/Button;

    if-eqz v6, :cond_0

    .line 1249
    sget v1, Lcom/kakaogame/security/R$id;->digit_code_2:I

    .line 1259
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Landroid/widget/Button;

    if-eqz v7, :cond_0

    .line 1309
    sget v1, Lcom/kakaogame/security/R$id;->digit_code_3:I

    .line 1319
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Landroid/widget/Button;

    if-eqz v8, :cond_0

    .line 1369
    sget v1, Lcom/kakaogame/security/R$id;->digit_code_4:I

    .line 1379
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Landroid/widget/Button;

    if-eqz v9, :cond_0

    .line 1429
    sget v1, Lcom/kakaogame/security/R$id;->digit_code_5:I

    .line 1439
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Landroid/widget/Button;

    if-eqz v10, :cond_0

    .line 1489
    sget v1, Lcom/kakaogame/security/R$id;->digit_code_6:I

    .line 1499
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v11, v2

    check-cast v11, Landroid/widget/Button;

    if-eqz v11, :cond_0

    .line 1549
    sget v1, Lcom/kakaogame/security/R$id;->digit_code_7:I

    .line 1559
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v12, v2

    check-cast v12, Landroid/widget/Button;

    if-eqz v12, :cond_0

    .line 1609
    sget v1, Lcom/kakaogame/security/R$id;->digit_code_8:I

    .line 1619
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v13, v2

    check-cast v13, Landroid/widget/Button;

    if-eqz v13, :cond_0

    .line 1669
    sget v1, Lcom/kakaogame/security/R$id;->digit_code_9:I

    .line 1679
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v14, v2

    check-cast v14, Landroid/widget/Button;

    if-eqz v14, :cond_0

    .line 1729
    sget v1, Lcom/kakaogame/security/R$id;->digit_code_clear:I

    .line 1739
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v15, v2

    check-cast v15, Lcom/kakaogame/ui/font/NotoSansButton;

    if-eqz v15, :cond_0

    .line 1789
    sget v1, Lcom/kakaogame/security/R$id;->digit_code_delete:I

    .line 1799
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v16, v2

    check-cast v16, Landroid/widget/Button;

    if-eqz v16, :cond_0

    .line 1849
    sget v1, Lcom/kakaogame/security/R$id;->kakao_game_virtual_keypad_image:I

    .line 1859
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v17, v2

    check-cast v17, Landroid/widget/ImageView;

    if-eqz v17, :cond_0

    .line 1909
    new-instance v1, Lcom/kakaogame/security/databinding/KakaoGame2ndVirtualKeypadBinding;

    move-object v4, v0

    check-cast v4, Landroid/widget/RelativeLayout;

    move-object v3, v1

    invoke-direct/range {v3 .. v17}, Lcom/kakaogame/security/databinding/KakaoGame2ndVirtualKeypadBinding;-><init>(Landroid/widget/RelativeLayout;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/Button;Lcom/kakaogame/ui/font/NotoSansButton;Landroid/widget/Button;Landroid/widget/ImageView;)V

    return-object v1

    .line 1949
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    .line 1959
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

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/kakaogame/security/databinding/KakaoGame2ndVirtualKeypadBinding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 939
    invoke-static {p0, v0, v1}, Lcom/kakaogame/security/databinding/KakaoGame2ndVirtualKeypadBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/kakaogame/security/databinding/KakaoGame2ndVirtualKeypadBinding;

    move-result-object p0

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/kakaogame/security/databinding/KakaoGame2ndVirtualKeypadBinding;
    .locals 2

    .line 999
    sget v0, Lcom/kakaogame/security/R$layout;->kakao_game_2nd_virtual_keypad:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 1019
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 1039
    :cond_0
    invoke-static {p0}, Lcom/kakaogame/security/databinding/KakaoGame2ndVirtualKeypadBinding;->bind(Landroid/view/View;)Lcom/kakaogame/security/databinding/KakaoGame2ndVirtualKeypadBinding;

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
    invoke-virtual {p0}, Lcom/kakaogame/security/databinding/KakaoGame2ndVirtualKeypadBinding;->getRoot()Landroid/widget/RelativeLayout;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getRoot()Landroid/widget/RelativeLayout;
    .locals 1

    .line 889
    iget-object v0, p0, Lcom/kakaogame/security/databinding/KakaoGame2ndVirtualKeypadBinding;->rootView:Landroid/widget/RelativeLayout;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method
