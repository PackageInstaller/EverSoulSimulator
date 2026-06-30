.class public final Lcom/kakaogame/ui/DialogManager$CustomAlertDialog;
.super Landroid/app/Dialog;
.source "DialogManager.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kakaogame/ui/DialogManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CustomAlertDialog"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u0008\u0010\u0008\u001a\u00020\tH\u0002\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/kakaogame/ui/DialogManager$CustomAlertDialog;",
        "Landroid/app/Dialog;",
        "context",
        "Landroid/content/Context;",
        "settings",
        "Lcom/kakaogame/ui/DialogManager$Settings;",
        "<init>",
        "(Landroid/content/Context;Lcom/kakaogame/ui/DialogManager$Settings;)V",
        "dismissDialog",
        "",
        "gamesdk_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static synthetic $r8$lambda$-vmUXZk6HUTEcN7Z1dwkXRFReAM(Lcom/kakaogame/ui/DialogManager$CustomAlertDialog;Lcom/kakaogame/ui/DialogManager$Settings;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/kakaogame/ui/DialogManager$CustomAlertDialog;->_init_$lambda$4(Lcom/kakaogame/ui/DialogManager$CustomAlertDialog;Lcom/kakaogame/ui/DialogManager$Settings;Landroid/view/View;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method public static synthetic $r8$lambda$b_oxUXtkYD3mGnKxeqP34YlPVcA(Lcom/kakaogame/ui/DialogManager$Settings;Lcom/kakaogame/ui/DialogManager$CustomAlertDialog;Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/kakaogame/ui/DialogManager$CustomAlertDialog;->_init_$lambda$5(Lcom/kakaogame/ui/DialogManager$Settings;Lcom/kakaogame/ui/DialogManager$CustomAlertDialog;Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static synthetic $r8$lambda$dKQZuEpgl7YfltguvIDhwxQ14R8(Lcom/kakaogame/ui/DialogManager$CustomAlertDialog;Lcom/kakaogame/ui/DialogManager$Settings;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/kakaogame/ui/DialogManager$CustomAlertDialog;->_init_$lambda$3(Lcom/kakaogame/ui/DialogManager$CustomAlertDialog;Lcom/kakaogame/ui/DialogManager$Settings;Landroid/view/View;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/kakaogame/ui/DialogManager$Settings;)V
    .locals 8

    const v0, -0x451e0c57

    invoke-static {v0}, Lcom/liapp/y;->ڳݬ٬ۮݪ(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const v0, 0x5d10a28f

    invoke-static {v0}, Lcom/liapp/y;->ڴݮگ֮ت(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1579
    sget v0, Landroidx/appcompat/R$style;->AlertDialog_AppCompat:I

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 1599
    invoke-virtual {p0}, Lcom/kakaogame/ui/DialogManager$CustomAlertDialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-static {v0}, Lcom/kakaogame/databinding/KakaoGameSdkAlertDialogBinding;->inflate(Landroid/view/LayoutInflater;)Lcom/kakaogame/databinding/KakaoGameSdkAlertDialogBinding;

    move-result-object v0

    const v1, 0x6d0cf638

    invoke-static {v1}, Lcom/liapp/y;->ٱڳܴڭܩ(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1639
    invoke-virtual {p2}, Lcom/kakaogame/ui/DialogManager$Settings;->getTitle()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x8

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/kakaogame/databinding/KakaoGameSdkAlertDialogBinding;->alertDialogTitle:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/kakaogame/ui/DialogManager$Settings;->getTitle()Ljava/lang/String;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1649
    :cond_0
    invoke-virtual {p2}, Lcom/kakaogame/ui/DialogManager$Settings;->getTitleId()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, v0, Lcom/kakaogame/databinding/KakaoGameSdkAlertDialogBinding;->alertDialogTitle:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/kakaogame/ui/DialogManager$Settings;->getTitleId()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {p1, v3}, Lcom/kakaogame/util/ResourceUtil;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1659
    :cond_1
    iget-object v1, v0, Lcom/kakaogame/databinding/KakaoGameSdkAlertDialogBinding;->alertDialogTitle:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1699
    :goto_0
    invoke-virtual {p2}, Lcom/kakaogame/ui/DialogManager$Settings;->getMessage()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, v0, Lcom/kakaogame/databinding/KakaoGameSdkAlertDialogBinding;->alertDialogMessage:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/kakaogame/ui/DialogManager$Settings;->getMessage()Ljava/lang/String;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 1709
    :cond_2
    invoke-virtual {p2}, Lcom/kakaogame/ui/DialogManager$Settings;->getMessageId()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v1, v0, Lcom/kakaogame/databinding/KakaoGameSdkAlertDialogBinding;->alertDialogMessage:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/kakaogame/ui/DialogManager$Settings;->getMessageId()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {p1, v3}, Lcom/kakaogame/util/ResourceUtil;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1739
    :cond_3
    :goto_1
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v1, v1, 0x30

    .line 1749
    invoke-virtual {p2}, Lcom/kakaogame/ui/DialogManager$Settings;->getTextColor()Ljava/lang/Integer;

    move-result-object v3

    const/16 v4, 0x20

    const/16 v5, 0x10

    if-eqz v3, :cond_4

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v6

    .line 1759
    iget-object v7, v0, Lcom/kakaogame/databinding/KakaoGameSdkAlertDialogBinding;->alertDialogTitle:Landroid/widget/TextView;

    invoke-virtual {v7, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1769
    iget-object v7, v0, Lcom/kakaogame/databinding/KakaoGameSdkAlertDialogBinding;->alertDialogMessage:Landroid/widget/TextView;

    invoke-virtual {v7, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1779
    iget-object v7, v0, Lcom/kakaogame/databinding/KakaoGameSdkAlertDialogBinding;->alertDialogOk:Landroid/widget/TextView;

    invoke-virtual {v7, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1789
    iget-object v7, v0, Lcom/kakaogame/databinding/KakaoGameSdkAlertDialogBinding;->alertDialogCancel:Landroid/widget/TextView;

    invoke-virtual {v7, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1749
    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    goto :goto_2

    :cond_4
    const v3, -0xbbbbbc

    if-eqz v1, :cond_6

    if-eq v1, v5, :cond_6

    if-eq v1, v4, :cond_5

    goto :goto_2

    .line 1829
    :cond_5
    iget-object v6, v0, Lcom/kakaogame/databinding/KakaoGameSdkAlertDialogBinding;->alertDialog:Landroid/widget/LinearLayout;

    .line 1839
    sget v7, Lcom/kakaogame/R$drawable;->kakao_game_sdk_alert_dialog_bg_dark:I

    invoke-static {p1, v7}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .line 1829
    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1849
    iget-object v6, v0, Lcom/kakaogame/databinding/KakaoGameSdkAlertDialogBinding;->alertDialogTitle:Landroid/widget/TextView;

    const/4 v7, -0x1

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1859
    iget-object v6, v0, Lcom/kakaogame/databinding/KakaoGameSdkAlertDialogBinding;->alertDialogMessage:Landroid/widget/TextView;

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1869
    iget-object v6, v0, Lcom/kakaogame/databinding/KakaoGameSdkAlertDialogBinding;->alertDialogOk:Landroid/widget/TextView;

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1879
    iget-object v6, v0, Lcom/kakaogame/databinding/KakaoGameSdkAlertDialogBinding;->alertDialogCancel:Landroid/widget/TextView;

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1889
    iget-object v6, v0, Lcom/kakaogame/databinding/KakaoGameSdkAlertDialogBinding;->actionDivider:Landroid/view/View;

    invoke-virtual {v6, v3}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_2

    .line 1919
    :cond_6
    iget-object v6, v0, Lcom/kakaogame/databinding/KakaoGameSdkAlertDialogBinding;->alertDialog:Landroid/widget/LinearLayout;

    .line 1929
    sget v7, Lcom/kakaogame/R$drawable;->kakao_game_sdk_alert_dialog_bg_white:I

    invoke-static {p1, v7}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .line 1919
    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1939
    iget-object v6, v0, Lcom/kakaogame/databinding/KakaoGameSdkAlertDialogBinding;->alertDialogTitle:Landroid/widget/TextView;

    const/high16 v7, -0x1000000

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1949
    iget-object v6, v0, Lcom/kakaogame/databinding/KakaoGameSdkAlertDialogBinding;->alertDialogMessage:Landroid/widget/TextView;

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1959
    iget-object v6, v0, Lcom/kakaogame/databinding/KakaoGameSdkAlertDialogBinding;->alertDialogOk:Landroid/widget/TextView;

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1969
    iget-object v6, v0, Lcom/kakaogame/databinding/KakaoGameSdkAlertDialogBinding;->alertDialogCancel:Landroid/widget/TextView;

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1979
    iget-object v6, v0, Lcom/kakaogame/databinding/KakaoGameSdkAlertDialogBinding;->actionDivider:Landroid/view/View;

    invoke-virtual {v6, v3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 2019
    :goto_2
    invoke-virtual {p0}, Lcom/kakaogame/ui/DialogManager$CustomAlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 2029
    new-instance v6, Landroid/graphics/drawable/ColorDrawable;

    const/4 v7, 0x0

    invoke-direct {v6, v7}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    check-cast v6, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v6}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2039
    invoke-virtual {v3}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v6

    if-eqz v1, :cond_8

    if-eq v1, v5, :cond_8

    if-eq v1, v4, :cond_7

    goto :goto_3

    :cond_7
    const v1, 0x3f0ccccd    # 0.55f

    .line 2069
    iput v1, v6, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 2079
    iget v1, v6, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit8 v1, v1, 0x2

    iput v1, v6, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 2089
    invoke-virtual {v3, v6}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    goto :goto_3

    :cond_8
    const v1, 0x3ea8f5c3    # 0.33f

    .line 2119
    iput v1, v6, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 2129
    iget v1, v6, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit8 v1, v1, 0x2

    iput v1, v6, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 2139
    invoke-virtual {v3, v6}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 2179
    :goto_3
    invoke-virtual {p2}, Lcom/kakaogame/ui/DialogManager$Settings;->getNegativeButtonTitle()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_9

    .line 2189
    invoke-virtual {p2}, Lcom/kakaogame/ui/DialogManager$Settings;->getNegativeButtonTitleId()Ljava/lang/Integer;

    move-result-object v1

    if-nez v1, :cond_9

    .line 2199
    iget-object v1, v0, Lcom/kakaogame/databinding/KakaoGameSdkAlertDialogBinding;->alertDialogCancel:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2209
    iget-object v1, v0, Lcom/kakaogame/databinding/KakaoGameSdkAlertDialogBinding;->actionDivider:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 2259
    :cond_9
    invoke-virtual {p2}, Lcom/kakaogame/ui/DialogManager$Settings;->getPositiveButtonTitle()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_a

    iget-object v1, v0, Lcom/kakaogame/databinding/KakaoGameSdkAlertDialogBinding;->alertDialogOk:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/kakaogame/ui/DialogManager$Settings;->getPositiveButtonTitle()Ljava/lang/String;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4

    .line 2269
    :cond_a
    invoke-virtual {p2}, Lcom/kakaogame/ui/DialogManager$Settings;->getPositiveButtonTitleId()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_b

    iget-object v1, v0, Lcom/kakaogame/databinding/KakaoGameSdkAlertDialogBinding;->alertDialogOk:Landroid/widget/TextView;

    .line 2279
    invoke-virtual {p2}, Lcom/kakaogame/ui/DialogManager$Settings;->getPositiveButtonTitleId()Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 2269
    invoke-static {p1, v2}, Lcom/kakaogame/util/ResourceUtil;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2319
    :cond_b
    :goto_4
    iget-object v1, v0, Lcom/kakaogame/databinding/KakaoGameSdkAlertDialogBinding;->alertDialogOk:Landroid/widget/TextView;

    new-instance v2, Lcom/kakaogame/ui/DialogManager$CustomAlertDialog$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, p2}, Lcom/kakaogame/ui/DialogManager$CustomAlertDialog$$ExternalSyntheticLambda0;-><init>(Lcom/kakaogame/ui/DialogManager$CustomAlertDialog;Lcom/kakaogame/ui/DialogManager$Settings;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2399
    invoke-virtual {p2}, Lcom/kakaogame/ui/DialogManager$Settings;->getNegativeButtonTitle()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_c

    .line 2409
    invoke-virtual {p2}, Lcom/kakaogame/ui/DialogManager$Settings;->getNegativeButtonTitleId()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_f

    .line 2429
    :cond_c
    invoke-virtual {p2}, Lcom/kakaogame/ui/DialogManager$Settings;->getNegativeButtonTitle()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_d

    iget-object p1, v0, Lcom/kakaogame/databinding/KakaoGameSdkAlertDialogBinding;->alertDialogCancel:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/kakaogame/ui/DialogManager$Settings;->getNegativeButtonTitle()Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_5

    .line 2439
    :cond_d
    invoke-virtual {p2}, Lcom/kakaogame/ui/DialogManager$Settings;->getNegativeButtonTitleId()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_e

    .line 2449
    iget-object v1, v0, Lcom/kakaogame/databinding/KakaoGameSdkAlertDialogBinding;->alertDialogCancel:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/kakaogame/ui/DialogManager$Settings;->getNegativeButtonTitleId()Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {p1, v2}, Lcom/kakaogame/util/ResourceUtil;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2469
    :cond_e
    :goto_5
    iget-object p1, v0, Lcom/kakaogame/databinding/KakaoGameSdkAlertDialogBinding;->alertDialogCancel:Landroid/widget/TextView;

    new-instance v1, Lcom/kakaogame/ui/DialogManager$CustomAlertDialog$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p2}, Lcom/kakaogame/ui/DialogManager$CustomAlertDialog$$ExternalSyntheticLambda1;-><init>(Lcom/kakaogame/ui/DialogManager$CustomAlertDialog;Lcom/kakaogame/ui/DialogManager$Settings;)V

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2559
    :cond_f
    new-instance p1, Lcom/kakaogame/ui/DialogManager$CustomAlertDialog$$ExternalSyntheticLambda2;

    invoke-direct {p1, p2, p0}, Lcom/kakaogame/ui/DialogManager$CustomAlertDialog$$ExternalSyntheticLambda2;-><init>(Lcom/kakaogame/ui/DialogManager$Settings;Lcom/kakaogame/ui/DialogManager$CustomAlertDialog;)V

    invoke-virtual {p0, p1}, Lcom/kakaogame/ui/DialogManager$CustomAlertDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 2699
    invoke-virtual {p0, v7}, Lcom/kakaogame/ui/DialogManager$CustomAlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 2709
    invoke-virtual {v0}, Lcom/kakaogame/databinding/KakaoGameSdkAlertDialogBinding;->getRoot()Landroid/widget/RelativeLayout;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1}, Lcom/kakaogame/ui/DialogManager$CustomAlertDialog;->setContentView(Landroid/view/View;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method private static final _init_$lambda$3(Lcom/kakaogame/ui/DialogManager$CustomAlertDialog;Lcom/kakaogame/ui/DialogManager$Settings;Landroid/view/View;)V
    .locals 0

    .line 2329
    invoke-direct {p0}, Lcom/kakaogame/ui/DialogManager$CustomAlertDialog;->dismissDialog()V

    .line 2339
    invoke-virtual {p1}, Lcom/kakaogame/ui/DialogManager$Settings;->getPositiveListener()Landroid/content/DialogInterface$OnClickListener;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 2349
    check-cast p0, Landroid/content/DialogInterface;

    const/4 p2, 0x0

    .line 2339
    invoke-interface {p1, p0, p2}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method private static final _init_$lambda$4(Lcom/kakaogame/ui/DialogManager$CustomAlertDialog;Lcom/kakaogame/ui/DialogManager$Settings;Landroid/view/View;)V
    .locals 0

    .line 2479
    invoke-direct {p0}, Lcom/kakaogame/ui/DialogManager$CustomAlertDialog;->dismissDialog()V

    .line 2489
    invoke-virtual {p1}, Lcom/kakaogame/ui/DialogManager$Settings;->getNegativeListener()Landroid/content/DialogInterface$OnClickListener;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 2499
    check-cast p0, Landroid/content/DialogInterface;

    const/4 p2, 0x1

    .line 2489
    invoke-interface {p1, p0, p2}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method private static final _init_$lambda$5(Lcom/kakaogame/ui/DialogManager$Settings;Lcom/kakaogame/ui/DialogManager$CustomAlertDialog;Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 0

    const-string p2, "event"

    invoke-static {p4, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2569
    invoke-virtual {p4}, Landroid/view/KeyEvent;->getAction()I

    move-result p2

    const/4 p4, 0x1

    if-ne p2, p4, :cond_1

    const/4 p2, 0x4

    if-ne p3, p2, :cond_1

    .line 2589
    invoke-virtual {p0}, Lcom/kakaogame/ui/DialogManager$Settings;->isCancelable()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 2599
    invoke-direct {p1}, Lcom/kakaogame/ui/DialogManager$CustomAlertDialog;->dismissDialog()V

    .line 2609
    invoke-virtual {p0}, Lcom/kakaogame/ui/DialogManager$Settings;->getCancelListener()Landroid/content/DialogInterface$OnCancelListener;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 2619
    invoke-virtual {p0}, Lcom/kakaogame/ui/DialogManager$Settings;->getCancelListener()Landroid/content/DialogInterface$OnCancelListener;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast p1, Landroid/content/DialogInterface;

    invoke-interface {p0, p1}, Landroid/content/DialogInterface$OnCancelListener;->onCancel(Landroid/content/DialogInterface;)V

    :cond_0
    return p4

    :cond_1
    const/4 p0, 0x0

    return p0

    nop

    .array-data 1
    .end array-data
.end method

.method private final dismissDialog()V
    .locals 0

    .line 2749
    invoke-virtual {p0}, Lcom/kakaogame/ui/DialogManager$CustomAlertDialog;->dismiss()V

    return-void

    .array-data 1
    .end array-data
.end method
