.class public final Lcom/kakaogame/security/databinding/KakaoGame2ndPwSettingDetailViewBinding;
.super Ljava/lang/Object;
.source "KakaoGame2ndPwSettingDetailViewBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final codeInputConfirmDisplayFrameView:Landroid/widget/FrameLayout;

.field public final codeInputConfirmDisplayView:Lcom/kakaogame/secondpw/view/PasswordDisplayView;

.field public final codeInputDisplayView:Lcom/kakaogame/secondpw/view/PasswordDisplayView;

.field public final hasPassiveView:Lcom/kakaogame/security/databinding/KakaoGame2ndPwPassiveViewBinding;

.field public final kakaoGame2ndPwBlockingGuide:Lcom/kakaogame/ui/font/NotoSansTextView;

.field public final noPassiveView:Lcom/kakaogame/security/databinding/KakaoGame2ndPwNoPassiveViewBinding;

.field private final rootView:Landroid/widget/RelativeLayout;


# direct methods
.method private constructor <init>(Landroid/widget/RelativeLayout;Landroid/widget/FrameLayout;Lcom/kakaogame/secondpw/view/PasswordDisplayView;Lcom/kakaogame/secondpw/view/PasswordDisplayView;Lcom/kakaogame/security/databinding/KakaoGame2ndPwPassiveViewBinding;Lcom/kakaogame/ui/font/NotoSansTextView;Lcom/kakaogame/security/databinding/KakaoGame2ndPwNoPassiveViewBinding;)V
    .locals 0

    .line 489
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 499
    iput-object p1, p0, Lcom/kakaogame/security/databinding/KakaoGame2ndPwSettingDetailViewBinding;->rootView:Landroid/widget/RelativeLayout;

    .line 509
    iput-object p2, p0, Lcom/kakaogame/security/databinding/KakaoGame2ndPwSettingDetailViewBinding;->codeInputConfirmDisplayFrameView:Landroid/widget/FrameLayout;

    .line 519
    iput-object p3, p0, Lcom/kakaogame/security/databinding/KakaoGame2ndPwSettingDetailViewBinding;->codeInputConfirmDisplayView:Lcom/kakaogame/secondpw/view/PasswordDisplayView;

    .line 529
    iput-object p4, p0, Lcom/kakaogame/security/databinding/KakaoGame2ndPwSettingDetailViewBinding;->codeInputDisplayView:Lcom/kakaogame/secondpw/view/PasswordDisplayView;

    .line 539
    iput-object p5, p0, Lcom/kakaogame/security/databinding/KakaoGame2ndPwSettingDetailViewBinding;->hasPassiveView:Lcom/kakaogame/security/databinding/KakaoGame2ndPwPassiveViewBinding;

    .line 549
    iput-object p6, p0, Lcom/kakaogame/security/databinding/KakaoGame2ndPwSettingDetailViewBinding;->kakaoGame2ndPwBlockingGuide:Lcom/kakaogame/ui/font/NotoSansTextView;

    .line 559
    iput-object p7, p0, Lcom/kakaogame/security/databinding/KakaoGame2ndPwSettingDetailViewBinding;->noPassiveView:Lcom/kakaogame/security/databinding/KakaoGame2ndPwNoPassiveViewBinding;

    return-void

    .array-data 1
    .end array-data
.end method

.method public static bind(Landroid/view/View;)Lcom/kakaogame/security/databinding/KakaoGame2ndPwSettingDetailViewBinding;
    .locals 10

    .line 859
    sget v0, Lcom/kakaogame/security/R$id;->code_input_confirm_display_frame_view:I

    .line 869
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroid/widget/FrameLayout;

    if-eqz v4, :cond_0

    .line 919
    sget v0, Lcom/kakaogame/security/R$id;->code_input_confirm_display_view:I

    .line 929
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Lcom/kakaogame/secondpw/view/PasswordDisplayView;

    if-eqz v5, :cond_0

    .line 979
    sget v0, Lcom/kakaogame/security/R$id;->code_input_display_view:I

    .line 989
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Lcom/kakaogame/secondpw/view/PasswordDisplayView;

    if-eqz v6, :cond_0

    .line 1039
    sget v0, Lcom/kakaogame/security/R$id;->has_passive_view:I

    .line 1049
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1089
    invoke-static {v1}, Lcom/kakaogame/security/databinding/KakaoGame2ndPwPassiveViewBinding;->bind(Landroid/view/View;)Lcom/kakaogame/security/databinding/KakaoGame2ndPwPassiveViewBinding;

    move-result-object v7

    .line 1109
    sget v0, Lcom/kakaogame/security/R$id;->kakao_game_2nd_pw_blocking_guide:I

    .line 1119
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Lcom/kakaogame/ui/font/NotoSansTextView;

    if-eqz v8, :cond_0

    .line 1169
    sget v0, Lcom/kakaogame/security/R$id;->no_passive_view:I

    .line 1179
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1219
    invoke-static {v1}, Lcom/kakaogame/security/databinding/KakaoGame2ndPwNoPassiveViewBinding;->bind(Landroid/view/View;)Lcom/kakaogame/security/databinding/KakaoGame2ndPwNoPassiveViewBinding;

    move-result-object v9

    .line 1239
    new-instance v0, Lcom/kakaogame/security/databinding/KakaoGame2ndPwSettingDetailViewBinding;

    move-object v3, p0

    check-cast v3, Landroid/widget/RelativeLayout;

    move-object v2, v0

    invoke-direct/range {v2 .. v9}, Lcom/kakaogame/security/databinding/KakaoGame2ndPwSettingDetailViewBinding;-><init>(Landroid/widget/RelativeLayout;Landroid/widget/FrameLayout;Lcom/kakaogame/secondpw/view/PasswordDisplayView;Lcom/kakaogame/secondpw/view/PasswordDisplayView;Lcom/kakaogame/security/databinding/KakaoGame2ndPwPassiveViewBinding;Lcom/kakaogame/ui/font/NotoSansTextView;Lcom/kakaogame/security/databinding/KakaoGame2ndPwNoPassiveViewBinding;)V

    return-object v0

    .line 1279
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    .line 1289
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

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/kakaogame/security/databinding/KakaoGame2ndPwSettingDetailViewBinding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 669
    invoke-static {p0, v0, v1}, Lcom/kakaogame/security/databinding/KakaoGame2ndPwSettingDetailViewBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/kakaogame/security/databinding/KakaoGame2ndPwSettingDetailViewBinding;

    move-result-object p0

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/kakaogame/security/databinding/KakaoGame2ndPwSettingDetailViewBinding;
    .locals 2

    .line 729
    sget v0, Lcom/kakaogame/security/R$layout;->kakao_game_2nd_pw_setting_detail_view:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 749
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 769
    :cond_0
    invoke-static {p0}, Lcom/kakaogame/security/databinding/KakaoGame2ndPwSettingDetailViewBinding;->bind(Landroid/view/View;)Lcom/kakaogame/security/databinding/KakaoGame2ndPwSettingDetailViewBinding;

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
    invoke-virtual {p0}, Lcom/kakaogame/security/databinding/KakaoGame2ndPwSettingDetailViewBinding;->getRoot()Landroid/widget/RelativeLayout;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getRoot()Landroid/widget/RelativeLayout;
    .locals 1

    .line 619
    iget-object v0, p0, Lcom/kakaogame/security/databinding/KakaoGame2ndPwSettingDetailViewBinding;->rootView:Landroid/widget/RelativeLayout;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method
