.class public final Lcom/kakaogame/auth/agreement/AgreementManager$AgreementDialog;
.super Landroid/app/Dialog;
.source "AgreementManager.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kakaogame/auth/agreement/AgreementManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AgreementDialog"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kakaogame/auth/agreement/AgreementManager$AgreementDialog$AgreementHandler;,
        Lcom/kakaogame/auth/agreement/AgreementManager$AgreementDialog$WebViewContainerImpl;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000^\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\t\u0018\u00002\u00020\u0001:\u0002)*BQ\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0014\u0010\u0006\u001a\u0010\u0012\u0004\u0012\u00020\u0008\u0012\u0006\u0012\u0004\u0018\u00010\t0\u0007\u0012\u0006\u0010\n\u001a\u00020\u000b\u0012\u001a\u0010\u000c\u001a\u0016\u0012\u000c\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010\u00080\u000e\u0012\u0004\u0012\u00020\u000f0\r\u00a2\u0006\u0004\u0008\u0010\u0010\u0011J\u0008\u0010\u001f\u001a\u00020\u000fH\u0002J\u0012\u0010 \u001a\u00020\u000f2\u0008\u0010!\u001a\u0004\u0018\u00010\"H\u0014J\u0008\u0010#\u001a\u00020\u000fH\u0016J\u0010\u0010$\u001a\u00020\u000f2\u0006\u0010%\u001a\u00020\u000bH\u0002J\u0008\u0010&\u001a\u00020\u000fH\u0002J\u0008\u0010\'\u001a\u00020\u000fH\u0002J\u0008\u0010(\u001a\u00020\u000fH\u0002R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001c\u0010\u0006\u001a\u0010\u0012\u0004\u0012\u00020\u0008\u0012\u0006\u0012\u0004\u0018\u00010\t0\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\"\u0010\u000c\u001a\u0016\u0012\u000c\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010\u00080\u000e\u0012\u0004\u0012\u00020\u000f0\rX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0012\u001a\u00020\u0013X\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0014\u001a\u00020\u0015X\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0016\u001a\u00020\u0017X\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0018\u001a\u00020\u0013X\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0019\u001a\u00020\u000bX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001a\u001a\u00020\u001bX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001c\u001a\u00020\u0008X\u0082D\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001d\u001a\u00020\u0008X\u0082D\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001e\u001a\u00020\u0008X\u0082D\u00a2\u0006\u0002\n\u0000\u00a8\u0006+"
    }
    d2 = {
        "Lcom/kakaogame/auth/agreement/AgreementManager$AgreementDialog;",
        "Landroid/app/Dialog;",
        "activity",
        "Landroid/app/Activity;",
        "checkType",
        "Lcom/kakaogame/auth/agreement/AgreementManager$AgreementCheckType;",
        "agreementParams",
        "",
        "",
        "",
        "traceJobId",
        "",
        "callback",
        "Lkotlin/Function1;",
        "Lcom/kakaogame/KGResult;",
        "",
        "<init>",
        "(Landroid/app/Activity;Lcom/kakaogame/auth/agreement/AgreementManager$AgreementCheckType;Ljava/util/Map;ILkotlin/jvm/functions/Function1;)V",
        "mainView",
        "Landroid/view/View;",
        "webView",
        "Landroid/webkit/WebView;",
        "titleView",
        "Landroid/widget/TextView;",
        "backView",
        "displayCutoutMode",
        "viewLoadingFinish",
        "",
        "PLUS_FRIEND_ID_KEY",
        "JOIN_MEMBERSHOP_KEY",
        "AD_AGREEMENT_KEY",
        "setDialogVisibility",
        "onCreate",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "onAttachedToWindow",
        "setMargin",
        "cutoutSize",
        "initTopbar",
        "initWebView",
        "showEndingPopup",
        "AgreementHandler",
        "WebViewContainerImpl",
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


# instance fields
.field private final AD_AGREEMENT_KEY:Ljava/lang/String;

.field private final JOIN_MEMBERSHOP_KEY:Ljava/lang/String;

.field private final PLUS_FRIEND_ID_KEY:Ljava/lang/String;

.field private final activity:Landroid/app/Activity;

.field private final agreementParams:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private backView:Landroid/view/View;

.field private final callback:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Lcom/kakaogame/KGResult<",
            "Ljava/lang/String;",
            ">;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private final checkType:Lcom/kakaogame/auth/agreement/AgreementManager$AgreementCheckType;

.field private displayCutoutMode:I

.field private mainView:Landroid/view/View;

.field private titleView:Landroid/widget/TextView;

.field private final traceJobId:I

.field private viewLoadingFinish:Z

.field private webView:Landroid/webkit/WebView;


# direct methods
.method public static synthetic $r8$lambda$0ZC5_G7kiJovjA7VCXx00tFGQOI(Lcom/kakaogame/auth/agreement/AgreementManager$AgreementDialog;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/kakaogame/auth/agreement/AgreementManager$AgreementDialog;->showEndingPopup$lambda$4(Lcom/kakaogame/auth/agreement/AgreementManager$AgreementDialog;Landroid/content/DialogInterface;I)V

    return-void

    .array-data 1
    .end array-data
.end method

.method public static synthetic $r8$lambda$fVcJx2wTxOYBPPaD4ObdXLYleE8(Lcom/kakaogame/auth/agreement/AgreementManager$AgreementDialog;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/kakaogame/auth/agreement/AgreementManager$AgreementDialog;->initTopbar$lambda$2(Lcom/kakaogame/auth/agreement/AgreementManager$AgreementDialog;Landroid/view/View;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method public static synthetic $r8$lambda$kbcGFHvR_oOf40xuGTi_lj208vE(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/kakaogame/auth/agreement/AgreementManager$AgreementDialog;->showEndingPopup$lambda$5(Landroid/content/DialogInterface;I)V

    return-void

    .array-data 1
    .end array-data
.end method

.method public static synthetic $r8$lambda$wlkfQZbEX8yrsXAURklnLRb-2NU(Lcom/kakaogame/auth/agreement/AgreementManager$AgreementDialog;Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/kakaogame/auth/agreement/AgreementManager$AgreementDialog;->onCreate$lambda$1$lambda$0(Lcom/kakaogame/auth/agreement/AgreementManager$AgreementDialog;Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0

    nop

    .array-data 1
    .end array-data
.end method

.method public constructor <init>(Landroid/app/Activity;Lcom/kakaogame/auth/agreement/AgreementManager$AgreementCheckType;Ljava/util/Map;ILkotlin/jvm/functions/Function1;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lcom/kakaogame/auth/agreement/AgreementManager$AgreementCheckType;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;I",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/kakaogame/KGResult<",
            "Ljava/lang/String;",
            ">;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const v0, 0x543d14da

    invoke-static {v0}, Lcom/liapp/y;->׳ֳֳ֬د(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const v0, -0x4519ec87

    invoke-static {v0}, Lcom/liapp/y;->ڳݬ٬ۮݪ(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const v0, -0x4519ecdf

    invoke-static {v0}, Lcom/liapp/y;->ڳݬ٬ۮݪ(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const v0, 0x6d0d7b60

    invoke-static {v0}, Lcom/liapp/y;->ٱڳܴڭܩ(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3249
    move-object v0, p1

    check-cast v0, Landroid/content/Context;

    const v1, 0x1030007

    invoke-direct {p0, v0, v1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 3199
    iput-object p1, p0, Lcom/kakaogame/auth/agreement/AgreementManager$AgreementDialog;->activity:Landroid/app/Activity;

    .line 3209
    iput-object p2, p0, Lcom/kakaogame/auth/agreement/AgreementManager$AgreementDialog;->checkType:Lcom/kakaogame/auth/agreement/AgreementManager$AgreementCheckType;

    .line 3219
    iput-object p3, p0, Lcom/kakaogame/auth/agreement/AgreementManager$AgreementDialog;->agreementParams:Ljava/util/Map;

    .line 3229
    iput p4, p0, Lcom/kakaogame/auth/agreement/AgreementManager$AgreementDialog;->traceJobId:I

    .line 3239
    iput-object p5, p0, Lcom/kakaogame/auth/agreement/AgreementManager$AgreementDialog;->callback:Lkotlin/jvm/functions/Function1;

    const-string p2, "plusFriendId"

    .line 3319
    iput-object p2, p0, Lcom/kakaogame/auth/agreement/AgreementManager$AgreementDialog;->PLUS_FRIEND_ID_KEY:Ljava/lang/String;

    const-string p2, "joinMemberShip"

    .line 3329
    iput-object p2, p0, Lcom/kakaogame/auth/agreement/AgreementManager$AgreementDialog;->JOIN_MEMBERSHOP_KEY:Ljava/lang/String;

    const-string p2, "setAdAgreement"

    .line 3339
    iput-object p2, p0, Lcom/kakaogame/auth/agreement/AgreementManager$AgreementDialog;->AD_AGREEMENT_KEY:Ljava/lang/String;

    .line 5629
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p3, 0x1c

    if-lt p2, p3, :cond_0

    .line 5639
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    iget p1, p1, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    iput p1, p0, Lcom/kakaogame/auth/agreement/AgreementManager$AgreementDialog;->displayCutoutMode:I

    :cond_0
    return-void

    .array-data 1
    .end array-data
.end method

.method public static final synthetic access$getAD_AGREEMENT_KEY$p(Lcom/kakaogame/auth/agreement/AgreementManager$AgreementDialog;)Ljava/lang/String;
    .locals 0

    .line 3189
    iget-object p0, p0, Lcom/kakaogame/auth/agreement/AgreementManager$AgreementDialog;->AD_AGREEMENT_KEY:Ljava/lang/String;

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static final synthetic access$getBackView$p(Lcom/kakaogame/auth/agreement/AgreementManager$AgreementDialog;)Landroid/view/View;
    .locals 0

    .line 3189
    iget-object p0, p0, Lcom/kakaogame/auth/agreement/AgreementManager$AgreementDialog;->backView:Landroid/view/View;

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static final synthetic access$getCallback$p(Lcom/kakaogame/auth/agreement/AgreementManager$AgreementDialog;)Lkotlin/jvm/functions/Function1;
    .locals 0

    .line 3189
    iget-object p0, p0, Lcom/kakaogame/auth/agreement/AgreementManager$AgreementDialog;->callback:Lkotlin/jvm/functions/Function1;

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static final synthetic access$getJOIN_MEMBERSHOP_KEY$p(Lcom/kakaogame/auth/agreement/AgreementManager$AgreementDialog;)Ljava/lang/String;
    .locals 0

    .line 3189
    iget-object p0, p0, Lcom/kakaogame/auth/agreement/AgreementManager$AgreementDialog;->JOIN_MEMBERSHOP_KEY:Ljava/lang/String;

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static final synthetic access$getPLUS_FRIEND_ID_KEY$p(Lcom/kakaogame/auth/agreement/AgreementManager$AgreementDialog;)Ljava/lang/String;
    .locals 0

    .line 3189
    iget-object p0, p0, Lcom/kakaogame/auth/agreement/AgreementManager$AgreementDialog;->PLUS_FRIEND_ID_KEY:Ljava/lang/String;

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static final synthetic access$getTitleView$p(Lcom/kakaogame/auth/agreement/AgreementManager$AgreementDialog;)Landroid/widget/TextView;
    .locals 0

    .line 3189
    iget-object p0, p0, Lcom/kakaogame/auth/agreement/AgreementManager$AgreementDialog;->titleView:Landroid/widget/TextView;

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static final synthetic access$getTraceJobId$p(Lcom/kakaogame/auth/agreement/AgreementManager$AgreementDialog;)I
    .locals 0

    .line 3189
    iget p0, p0, Lcom/kakaogame/auth/agreement/AgreementManager$AgreementDialog;->traceJobId:I

    return p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static final synthetic access$getViewLoadingFinish$p(Lcom/kakaogame/auth/agreement/AgreementManager$AgreementDialog;)Z
    .locals 0

    .line 3189
    iget-boolean p0, p0, Lcom/kakaogame/auth/agreement/AgreementManager$AgreementDialog;->viewLoadingFinish:Z

    return p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static final synthetic access$setViewLoadingFinish$p(Lcom/kakaogame/auth/agreement/AgreementManager$AgreementDialog;Z)V
    .locals 0

    .line 3189
    iput-boolean p1, p0, Lcom/kakaogame/auth/agreement/AgreementManager$AgreementDialog;->viewLoadingFinish:Z

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method private final initTopbar()V
    .locals 6

    .line 4099
    iget-object v0, p0, Lcom/kakaogame/auth/agreement/AgreementManager$AgreementDialog;->mainView:Landroid/view/View;

    const v1, 0x33623853

    invoke-static {v1}, Lcom/liapp/y;->ׯ״ٲ֬ب(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v2

    :cond_0
    sget v3, Lcom/kakaogame/R$id;->zinny_sdk_agreement_kakao_topbar_title:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/kakaogame/auth/agreement/AgreementManager$AgreementDialog;->titleView:Landroid/widget/TextView;

    .line 4109
    iget-object v0, p0, Lcom/kakaogame/auth/agreement/AgreementManager$AgreementDialog;->mainView:Landroid/view/View;

    if-nez v0, :cond_1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v2

    :cond_1
    sget v3, Lcom/kakaogame/R$id;->zinny_sdk_agreement_kakao_topbar_back:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/kakaogame/auth/agreement/AgreementManager$AgreementDialog;->backView:Landroid/view/View;

    if-nez v0, :cond_2

    const v0, -0x22424814

    invoke-static {v0}, Lcom/liapp/y;->״دش۲ݮ(I)Ljava/lang/String;

    move-result-object v0

    .line 4119
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v2

    :cond_2
    new-instance v3, Lcom/kakaogame/auth/agreement/AgreementManager$AgreementDialog$$ExternalSyntheticLambda1;

    invoke-direct {v3, p0}, Lcom/kakaogame/auth/agreement/AgreementManager$AgreementDialog$$ExternalSyntheticLambda1;-><init>(Lcom/kakaogame/auth/agreement/AgreementManager$AgreementDialog;)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4189
    sget-object v0, Lcom/kakaogame/infodesk/InfodeskHelper;->INSTANCE:Lcom/kakaogame/infodesk/InfodeskHelper;

    invoke-virtual {v0}, Lcom/kakaogame/infodesk/InfodeskHelper;->offWebviewTopBarYellow()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 4199
    sget-object v0, Lcom/kakaogame/infodesk/InfodeskHelper;->INSTANCE:Lcom/kakaogame/infodesk/InfodeskHelper;

    invoke-virtual {v0}, Lcom/kakaogame/infodesk/InfodeskHelper;->webviewTitleBgColor()I

    move-result v0

    .line 4209
    sget-object v3, Lcom/kakaogame/infodesk/InfodeskHelper;->INSTANCE:Lcom/kakaogame/infodesk/InfodeskHelper;

    invoke-virtual {v3}, Lcom/kakaogame/infodesk/InfodeskHelper;->webviewTitleTextColor()I

    move-result v3

    .line 4219
    iget-object v4, p0, Lcom/kakaogame/auth/agreement/AgreementManager$AgreementDialog;->mainView:Landroid/view/View;

    if-nez v4, :cond_3

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v4, v2

    :cond_3
    sget v5, Lcom/kakaogame/R$id;->zinny_sdk_dialog_web_topbar:I

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 4229
    invoke-virtual {v4, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 4239
    iget-object v0, p0, Lcom/kakaogame/auth/agreement/AgreementManager$AgreementDialog;->titleView:Landroid/widget/TextView;

    if-nez v0, :cond_4

    const v0, 0x7d708265

    invoke-static {v0}, Lcom/liapp/y;->حֲݴܳޯ(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v2

    :cond_4
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 4249
    iget-object v0, p0, Lcom/kakaogame/auth/agreement/AgreementManager$AgreementDialog;->mainView:Landroid/view/View;

    if-nez v0, :cond_5

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    move-object v2, v0

    :goto_0
    sget v0, Lcom/kakaogame/R$id;->zinny_sdk_agreement_image_back:I

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x5d10b587

    invoke-static {v1}, Lcom/liapp/y;->ڴݮگ֮ت(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/ImageView;

    .line 4259
    iget-object v1, p0, Lcom/kakaogame/auth/agreement/AgreementManager$AgreementDialog;->activity:Landroid/app/Activity;

    check-cast v1, Landroid/content/Context;

    sget v2, Lcom/kakaogame/R$drawable;->ic_action_previous_item_grey:I

    invoke-static {v1, v2}, Lcom/kakaogame/util/ResourceUtil;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_6
    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method private static final initTopbar$lambda$2(Lcom/kakaogame/auth/agreement/AgreementManager$AgreementDialog;Landroid/view/View;)V
    .locals 2

    .line 4129
    iget-object p1, p0, Lcom/kakaogame/auth/agreement/AgreementManager$AgreementDialog;->webView:Landroid/webkit/WebView;

    const v0, 0x543983ba

    invoke-static {v0}, Lcom/liapp/y;->׳ֳֳ֬د(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-nez p1, :cond_0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v1

    :cond_0
    invoke-virtual {p1}, Landroid/webkit/WebView;->canGoBack()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 4139
    iget-object p0, p0, Lcom/kakaogame/auth/agreement/AgreementManager$AgreementDialog;->webView:Landroid/webkit/WebView;

    if-nez p0, :cond_1

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v1, p0

    :goto_0
    invoke-virtual {v1}, Landroid/webkit/WebView;->goBack()V

    goto :goto_2

    .line 4159
    :cond_2
    iget-object p0, p0, Lcom/kakaogame/auth/agreement/AgreementManager$AgreementDialog;->backView:Landroid/view/View;

    if-nez p0, :cond_3

    const-string p0, "backView"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    move-object v1, p0

    :goto_1
    const/4 p0, 0x4

    invoke-virtual {v1, p0}, Landroid/view/View;->setVisibility(I)V

    :goto_2
    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method private final initWebView()V
    .locals 6

    .line 4309
    new-instance v0, Lcom/kakaogame/auth/agreement/AgreementManager$AgreementDialog$WebViewContainerImpl;

    iget-object v1, p0, Lcom/kakaogame/auth/agreement/AgreementManager$AgreementDialog;->activity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/kakaogame/auth/agreement/AgreementManager$AgreementDialog;->webView:Landroid/webkit/WebView;

    const/4 v3, 0x0

    const v4, 0x543983ba

    invoke-static {v4}, Lcom/liapp/y;->׳ֳֳ֬د(I)Ljava/lang/String;

    move-result-object v4

    if-nez v2, :cond_0

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v2, v3

    :cond_0
    invoke-direct {v0, p0, v1, v2}, Lcom/kakaogame/auth/agreement/AgreementManager$AgreementDialog$WebViewContainerImpl;-><init>(Lcom/kakaogame/auth/agreement/AgreementManager$AgreementDialog;Landroid/app/Activity;Landroid/webkit/WebView;)V

    check-cast v0, Lcom/kakaogame/web/WebViewContainer;

    .line 4319
    new-instance v1, Lcom/kakaogame/auth/agreement/AgreementManager$AgreementDialog$AgreementHandler;

    invoke-direct {v1, p0}, Lcom/kakaogame/auth/agreement/AgreementManager$AgreementDialog$AgreementHandler;-><init>(Lcom/kakaogame/auth/agreement/AgreementManager$AgreementDialog;)V

    .line 4329
    sget-object v1, Lcom/kakaogame/infodesk/InfodeskHelper;->INSTANCE:Lcom/kakaogame/infodesk/InfodeskHelper;

    invoke-virtual {v1}, Lcom/kakaogame/infodesk/InfodeskHelper;->getAgreementUrl()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 4339
    invoke-virtual {p0}, Lcom/kakaogame/auth/agreement/AgreementManager$AgreementDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lcom/kakaogame/web/WebViewContainer;->initCookies(Landroid/content/Context;Ljava/lang/String;)V

    .line 4349
    iget-object v0, p0, Lcom/kakaogame/auth/agreement/AgreementManager$AgreementDialog;->agreementParams:Ljava/util/Map;

    invoke-static {v1, v0}, Lcom/kakaogame/util/StringUtil;->makeRequestUrl(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    .line 4359
    sget-object v1, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    const v5, -0x224257ac

    invoke-static {v5}, Lcom/liapp/y;->״دش۲ݮ(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const v5, 0x3362223b

    invoke-static {v5}, Lcom/liapp/y;->ׯ״ٲ֬ب(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5, v2}, Lcom/kakaogame/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 4369
    iget-object v1, p0, Lcom/kakaogame/auth/agreement/AgreementManager$AgreementDialog;->webView:Landroid/webkit/WebView;

    if-nez v1, :cond_1

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v3, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    :cond_2
    return-void

    .array-data 1
    .end array-data
.end method

.method private static final onCreate$lambda$1$lambda$0(Lcom/kakaogame/auth/agreement/AgreementManager$AgreementDialog;Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 1

    .line 3669
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    const/4 p3, 0x1

    if-ne p1, p3, :cond_3

    const/4 p1, 0x4

    if-ne p2, p1, :cond_3

    .line 3689
    iget-object p1, p0, Lcom/kakaogame/auth/agreement/AgreementManager$AgreementDialog;->webView:Landroid/webkit/WebView;

    const/4 p2, 0x0

    const v0, 0x543983ba

    invoke-static {v0}, Lcom/liapp/y;->׳ֳֳ֬د(I)Ljava/lang/String;

    move-result-object v0

    if-nez p1, :cond_0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, p2

    :cond_0
    invoke-virtual {p1}, Landroid/webkit/WebView;->canGoBack()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 3699
    iget-object p0, p0, Lcom/kakaogame/auth/agreement/AgreementManager$AgreementDialog;->webView:Landroid/webkit/WebView;

    if-nez p0, :cond_1

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object p2, p0

    :goto_0
    invoke-virtual {p2}, Landroid/webkit/WebView;->goBack()V

    goto :goto_1

    .line 3719
    :cond_2
    invoke-direct {p0}, Lcom/kakaogame/auth/agreement/AgreementManager$AgreementDialog;->showEndingPopup()V

    :goto_1
    return p3

    :cond_3
    const/4 p0, 0x0

    return p0

    nop

    .array-data 1
    .end array-data
.end method

.method private final setDialogVisibility()V
    .locals 2

    .line 3369
    invoke-virtual {p0}, Lcom/kakaogame/auth/agreement/AgreementManager$AgreementDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const v1, 0x5d10b607

    invoke-static {v1}, Lcom/liapp/y;->ڴݮگ֮ت(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3419
    iget-object v1, p0, Lcom/kakaogame/auth/agreement/AgreementManager$AgreementDialog;->activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v1

    or-int/lit16 v1, v1, 0x1504

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 3429
    invoke-virtual {p0}, Lcom/kakaogame/auth/agreement/AgreementManager$AgreementDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/kakaogame/auth/agreement/AgreementManager$AgreementDialog;->activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 3439
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_0

    .line 3449
    invoke-virtual {p0}, Lcom/kakaogame/auth/agreement/AgreementManager$AgreementDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v1, p0, Lcom/kakaogame/auth/agreement/AgreementManager$AgreementDialog;->displayCutoutMode:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    :cond_0
    return-void

    .array-data 1
    .end array-data
.end method

.method private final setMargin(I)V
    .locals 5

    .line 3929
    sget v0, Lcom/kakaogame/R$id;->zinny_sdk_agreement_kakao:I

    invoke-virtual {p0, v0}, Lcom/kakaogame/auth/agreement/AgreementManager$AgreementDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 3939
    new-instance v1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 3949
    iget-object v2, p0, Lcom/kakaogame/auth/agreement/AgreementManager$AgreementDialog;->activity:Landroid/app/Activity;

    invoke-static {v2}, Lcom/kakaogame/util/DisplayUtil;->isScreenPortrait(Landroid/app/Activity;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 3969
    invoke-virtual {v1, v3, p1, v3, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    goto :goto_0

    .line 3989
    :cond_0
    iget-object v2, p0, Lcom/kakaogame/auth/agreement/AgreementManager$AgreementDialog;->activity:Landroid/app/Activity;

    invoke-static {v2}, Lcom/kakaogame/util/DisplayUtil;->getLandscapeDirection(Landroid/app/Activity;)I

    move-result v2

    if-nez v2, :cond_1

    .line 3999
    invoke-virtual {v1, p1, v3, v3, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    goto :goto_0

    .line 4009
    :cond_1
    iget-object v2, p0, Lcom/kakaogame/auth/agreement/AgreementManager$AgreementDialog;->activity:Landroid/app/Activity;

    invoke-static {v2}, Lcom/kakaogame/util/DisplayUtil;->getLandscapeDirection(Landroid/app/Activity;)I

    move-result v2

    const/4 v4, 0x1

    if-ne v2, v4, :cond_2

    .line 4019
    invoke-virtual {v1, v3, v3, p1, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 4049
    :cond_2
    :goto_0
    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {p1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    .line 4059
    check-cast p1, Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method private final showEndingPopup()V
    .locals 18

    move-object/from16 v0, p0

    .line 4419
    iget-object v1, v0, Lcom/kakaogame/auth/agreement/AgreementManager$AgreementDialog;->checkType:Lcom/kakaogame/auth/agreement/AgreementManager$AgreementCheckType;

    sget-object v2, Lcom/kakaogame/auth/agreement/AgreementManager$AgreementCheckType;->CONNECT:Lcom/kakaogame/auth/agreement/AgreementManager$AgreementCheckType;

    if-ne v1, v2, :cond_0

    .line 4429
    iget-object v1, v0, Lcom/kakaogame/auth/agreement/AgreementManager$AgreementDialog;->activity:Landroid/app/Activity;

    check-cast v1, Landroid/content/Context;

    sget v2, Lcom/kakaogame/R$string;->kakao_game_sdk_connect_agreement_cancel:I

    invoke-static {v1, v2}, Lcom/kakaogame/util/ResourceUtil;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 4449
    :cond_0
    iget-object v1, v0, Lcom/kakaogame/auth/agreement/AgreementManager$AgreementDialog;->activity:Landroid/app/Activity;

    check-cast v1, Landroid/content/Context;

    sget v2, Lcom/kakaogame/R$string;->zinny_sdk_app_finish:I

    invoke-static {v1, v2}, Lcom/kakaogame/util/ResourceUtil;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    :goto_0
    move-object v5, v1

    .line 4479
    new-instance v1, Lcom/kakaogame/ui/DialogManager$Settings;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x1

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x1efb

    const/16 v17, 0x0

    move-object v2, v1

    invoke-direct/range {v2 .. v17}, Lcom/kakaogame/ui/DialogManager$Settings;-><init>(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;ZLandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnCancelListener;Ljava/lang/Integer;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 4489
    sget v2, Lcom/kakaogame/R$string;->zinny_sdk_common_button_ok:I

    new-instance v3, Lcom/kakaogame/auth/agreement/AgreementManager$AgreementDialog$$ExternalSyntheticLambda2;

    invoke-direct {v3, v0}, Lcom/kakaogame/auth/agreement/AgreementManager$AgreementDialog$$ExternalSyntheticLambda2;-><init>(Lcom/kakaogame/auth/agreement/AgreementManager$AgreementDialog;)V

    invoke-virtual {v1, v2, v3}, Lcom/kakaogame/ui/DialogManager$Settings;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)V

    .line 4639
    sget v2, Lcom/kakaogame/R$string;->zinny_sdk_common_button_cancel:I

    new-instance v3, Lcom/kakaogame/auth/agreement/AgreementManager$AgreementDialog$$ExternalSyntheticLambda3;

    invoke-direct {v3}, Lcom/kakaogame/auth/agreement/AgreementManager$AgreementDialog$$ExternalSyntheticLambda3;-><init>()V

    invoke-virtual {v1, v2, v3}, Lcom/kakaogame/ui/DialogManager$Settings;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)V

    .line 4649
    sget-object v2, Lcom/kakaogame/ui/DialogManager;->INSTANCE:Lcom/kakaogame/ui/DialogManager;

    iget-object v3, v0, Lcom/kakaogame/auth/agreement/AgreementManager$AgreementDialog;->activity:Landroid/app/Activity;

    invoke-virtual {v2, v3, v1}, Lcom/kakaogame/ui/DialogManager;->showAlertDialog(Landroid/app/Activity;Lcom/kakaogame/ui/DialogManager$Settings;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method private static final showEndingPopup$lambda$4(Lcom/kakaogame/auth/agreement/AgreementManager$AgreementDialog;Landroid/content/DialogInterface;I)V
    .locals 5

    .line 4499
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 4509
    iget-object p1, p0, Lcom/kakaogame/auth/agreement/AgreementManager$AgreementDialog;->checkType:Lcom/kakaogame/auth/agreement/AgreementManager$AgreementCheckType;

    sget-object p2, Lcom/kakaogame/auth/agreement/AgreementManager$AgreementCheckType;->CONNECT:Lcom/kakaogame/auth/agreement/AgreementManager$AgreementCheckType;

    if-ne p1, p2, :cond_0

    .line 4519
    sget-object p1, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    const/16 p2, 0x2329

    invoke-virtual {p1, p2}, Lcom/kakaogame/KGResult$Companion;->getResult(I)Lcom/kakaogame/KGResult;

    move-result-object p1

    goto :goto_0

    .line 4539
    :cond_0
    sget-object p1, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    const/16 p2, 0x26ac

    invoke-virtual {p1, p2}, Lcom/kakaogame/KGResult$Companion;->getResult(I)Lcom/kakaogame/KGResult;

    move-result-object p1

    .line 4559
    :goto_0
    sget-object p2, Lcom/kakaogame/log/tracer/Tracer;->INSTANCE:Lcom/kakaogame/log/tracer/Tracer;

    iget v0, p0, Lcom/kakaogame/auth/agreement/AgreementManager$AgreementDialog;->traceJobId:I

    .line 4569
    sget-object v1, Lcom/kakaogame/log/tracer/TraceLoginActionCode;->SDK_AGREEMENT_WEB_CLOSE:Lcom/kakaogame/log/tracer/TraceLoginActionCode;

    .line 4579
    sget-object v2, Lcom/kakaogame/log/tracer/Tracer;->INSTANCE:Lcom/kakaogame/log/tracer/Tracer;

    iget v3, p0, Lcom/kakaogame/auth/agreement/AgreementManager$AgreementDialog;->traceJobId:I

    const/16 v4, 0x259

    invoke-virtual {v2, v3, v4}, Lcom/kakaogame/log/tracer/Tracer;->makeCustomErrorCode(II)I

    move-result v2

    const v3, 0x7d709f55    # 1.9990126E37f

    invoke-static {v3}, Lcom/liapp/y;->حֲݴܳޯ(I)Ljava/lang/String;

    move-result-object v3

    .line 4559
    invoke-virtual {p2, v0, v1, v2, v3}, Lcom/kakaogame/log/tracer/Tracer;->finishAction(ILcom/kakaogame/log/tracer/TraceLoginActionCode;ILjava/lang/String;)V

    .line 4609
    iget-object p2, p0, Lcom/kakaogame/auth/agreement/AgreementManager$AgreementDialog;->callback:Lkotlin/jvm/functions/Function1;

    invoke-interface {p2, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4619
    invoke-virtual {p0}, Lcom/kakaogame/auth/agreement/AgreementManager$AgreementDialog;->dismiss()V

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method private static final showEndingPopup$lambda$5(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 4639
    invoke-interface {p0}, Landroid/content/DialogInterface;->dismiss()V

    return-void

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public onAttachedToWindow()V
    .locals 1

    .line 3879
    iget-object v0, p0, Lcom/kakaogame/auth/agreement/AgreementManager$AgreementDialog;->activity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/kakaogame/util/DisplayUtil;->checkCutout(Landroid/app/Activity;)I

    move-result v0

    .line 3889
    invoke-direct {p0, v0}, Lcom/kakaogame/auth/agreement/AgreementManager$AgreementDialog;->setMargin(I)V

    return-void

    .array-data 1
    .end array-data
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    .line 3499
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 3509
    sget-object p1, Lcom/kakaogame/log/tracer/Tracer;->INSTANCE:Lcom/kakaogame/log/tracer/Tracer;

    iget v0, p0, Lcom/kakaogame/auth/agreement/AgreementManager$AgreementDialog;->traceJobId:I

    sget-object v1, Lcom/kakaogame/log/tracer/TraceLoginActionCode;->SDK_SHOW_AGREEMENT:Lcom/kakaogame/log/tracer/TraceLoginActionCode;

    invoke-virtual {p1, v0, v1}, Lcom/kakaogame/log/tracer/Tracer;->startAction(ILcom/kakaogame/log/tracer/TraceLoginActionCode;)V

    .line 3519
    iget-object p1, p0, Lcom/kakaogame/auth/agreement/AgreementManager$AgreementDialog;->activity:Landroid/app/Activity;

    check-cast p1, Landroid/content/Context;

    sget v0, Lcom/kakaogame/R$layout;->zinny_sdk_agreement_kakao:I

    invoke-static {p1, v0}, Lcom/kakaogame/util/ResourceUtil;->getLayout(Landroid/content/Context;I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_7

    .line 3529
    iput-object p1, p0, Lcom/kakaogame/auth/agreement/AgreementManager$AgreementDialog;->mainView:Landroid/view/View;

    .line 3549
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1c

    const/high16 v1, -0x1000000

    const v2, 0x33623853

    invoke-static {v2}, Lcom/liapp/y;->ׯ״ٲ֬ب(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    if-lt p1, v0, :cond_1

    .line 3559
    iget-object p1, p0, Lcom/kakaogame/auth/agreement/AgreementManager$AgreementDialog;->mainView:Landroid/view/View;

    if-nez p1, :cond_0

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v3

    :cond_0
    invoke-virtual {p1, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 3579
    :cond_1
    iget-object p1, p0, Lcom/kakaogame/auth/agreement/AgreementManager$AgreementDialog;->mainView:Landroid/view/View;

    if-nez p1, :cond_2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v3

    :cond_2
    invoke-virtual {p0, p1}, Lcom/kakaogame/auth/agreement/AgreementManager$AgreementDialog;->setContentView(Landroid/view/View;)V

    .line 3599
    iget-object p1, p0, Lcom/kakaogame/auth/agreement/AgreementManager$AgreementDialog;->mainView:Landroid/view/View;

    if-nez p1, :cond_3

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v3

    :cond_3
    sget v0, Lcom/kakaogame/R$id;->zinny_sdk_agreement_kakao_webview:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const v0, -0x4519f7d7

    invoke-static {v0}, Lcom/liapp/y;->ڳݬ٬ۮݪ(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/webkit/WebView;

    iput-object p1, p0, Lcom/kakaogame/auth/agreement/AgreementManager$AgreementDialog;->webView:Landroid/webkit/WebView;

    const v0, 0x543983ba

    invoke-static {v0}, Lcom/liapp/y;->׳ֳֳ֬د(I)Ljava/lang/String;

    move-result-object v0

    if-nez p1, :cond_4

    .line 3609
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v3

    :cond_4
    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Landroid/webkit/WebSettings;->setMixedContentMode(I)V

    .line 3619
    iget-object p1, p0, Lcom/kakaogame/auth/agreement/AgreementManager$AgreementDialog;->webView:Landroid/webkit/WebView;

    if-nez p1, :cond_5

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v3

    :cond_5
    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    const/16 v2, 0x64

    invoke-virtual {p1, v2}, Landroid/webkit/WebSettings;->setTextZoom(I)V

    .line 3629
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object p1

    const/4 v2, 0x1

    .line 3639
    invoke-virtual {p1, v2}, Landroid/webkit/CookieManager;->setAcceptCookie(Z)V

    .line 3649
    iget-object v4, p0, Lcom/kakaogame/auth/agreement/AgreementManager$AgreementDialog;->webView:Landroid/webkit/WebView;

    if-nez v4, :cond_6

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_6
    move-object v3, v4

    :goto_0
    invoke-virtual {p1, v3, v2}, Landroid/webkit/CookieManager;->setAcceptThirdPartyCookies(Landroid/webkit/WebView;Z)V

    .line 3659
    new-instance p1, Lcom/kakaogame/auth/agreement/AgreementManager$AgreementDialog$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/kakaogame/auth/agreement/AgreementManager$AgreementDialog$$ExternalSyntheticLambda0;-><init>(Lcom/kakaogame/auth/agreement/AgreementManager$AgreementDialog;)V

    invoke-virtual {p0, p1}, Lcom/kakaogame/auth/agreement/AgreementManager$AgreementDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 3789
    invoke-direct {p0}, Lcom/kakaogame/auth/agreement/AgreementManager$AgreementDialog;->initTopbar()V

    .line 3799
    invoke-direct {p0}, Lcom/kakaogame/auth/agreement/AgreementManager$AgreementDialog;->initWebView()V

    .line 3809
    invoke-direct {p0}, Lcom/kakaogame/auth/agreement/AgreementManager$AgreementDialog;->setDialogVisibility()V

    .line 3829
    invoke-virtual {p0}, Lcom/kakaogame/auth/agreement/AgreementManager$AgreementDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    if-eqz p1, :cond_7

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_7

    invoke-virtual {p1, v1}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_7
    return-void

    nop

    .array-data 1
    .end array-data
.end method
