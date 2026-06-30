.class public final Lcom/kakaogame/auth/view/PunishedUserDialog;
.super Landroid/app/Dialog;
.source "PunishedUserDialog.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kakaogame/auth/view/PunishedUserDialog$Companion;,
        Lcom/kakaogame/auth/view/PunishedUserDialog$ViewType;,
        Lcom/kakaogame/auth/view/PunishedUserDialog$WebViewContainerImpl;,
        Lcom/kakaogame/auth/view/PunishedUserDialog$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPunishedUserDialog.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PunishedUserDialog.kt\ncom/kakaogame/auth/view/PunishedUserDialog\n+ 2 TextView.kt\nandroidx/core/widget/TextViewKt\n*L\n1#1,447:1\n65#2,16:448\n93#2,3:464\n*S KotlinDebug\n*F\n+ 1 PunishedUserDialog.kt\ncom/kakaogame/auth/view/PunishedUserDialog\n*L\n306#1:448,16\n306#1:464,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000X\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0008\n\u0002\u0010\t\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u000f\u0018\u0000 A2\u00020\u0001:\u0003ABCBE\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\u0007\u001a\u00020\u0005\u0012\u0006\u0010\u0008\u001a\u00020\u0005\u0012\u0014\u0010\t\u001a\u0010\u0012\u0006\u0012\u0004\u0018\u00010\u0005\u0012\u0004\u0012\u00020\u000b0\n\u00a2\u0006\u0004\u0008\u000c\u0010\rJ\u0012\u0010+\u001a\u00020\u000b2\u0008\u0010,\u001a\u0004\u0018\u00010\u0005H\u0002J\u0010\u0010-\u001a\u00020\u000b2\u0006\u0010.\u001a\u00020/H\u0002J\u0008\u00100\u001a\u00020\u000bH\u0002J\u0008\u00101\u001a\u00020\u000bH\u0002J\u0010\u00102\u001a\u00020\u000b2\u0006\u00103\u001a\u00020\u0018H\u0002J\u0014\u00104\u001a\u00020\u000b*\u0002052\u0006\u00106\u001a\u00020\u001eH\u0002J\u0008\u00107\u001a\u00020\u000bH\u0002J\u0008\u00108\u001a\u00020\u000bH\u0002J\u0008\u00109\u001a\u00020\u000bH\u0002J\u0008\u0010:\u001a\u00020\u000bH\u0002J\u0008\u0010;\u001a\u00020\u000bH\u0002J\u0008\u0010<\u001a\u00020\u000bH\u0002J\u0010\u0010=\u001a\u00020\u000b2\u0006\u0010>\u001a\u00020&H\u0002J\u000c\u0010?\u001a\u00020\u0018*\u00020\u0018H\u0002J\u000c\u0010@\u001a\u00020\u0018*\u00020\u0018H\u0002R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u000fR\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\u0011R\u0011\u0010\u0006\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0012\u0010\u0011R\u0011\u0010\u0007\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0013\u0010\u0011R\u0011\u0010\u0008\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0014\u0010\u0011R\u001c\u0010\t\u001a\u0010\u0012\u0006\u0012\u0004\u0018\u00010\u0005\u0012\u0004\u0012\u00020\u000b0\nX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0015\u001a\u00020\u0016X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u0017\u001a\u00020\u0018X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0019\u0010\u001a\"\u0004\u0008\u001b\u0010\u001cR\u001a\u0010\u001d\u001a\u00020\u001eX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001f\u0010 \"\u0004\u0008!\u0010\"R\u000e\u0010#\u001a\u00020$X\u0082.\u00a2\u0006\u0002\n\u0000R\u0011\u0010%\u001a\u00020&\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\'\u0010(R\u0011\u0010)\u001a\u00020&\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008*\u0010(\u00a8\u0006D"
    }
    d2 = {
        "Lcom/kakaogame/auth/view/PunishedUserDialog;",
        "Landroid/app/Dialog;",
        "activity",
        "Landroid/app/Activity;",
        "onetimeToken",
        "",
        "userId",
        "message",
        "term",
        "callback",
        "Lkotlin/Function1;",
        "",
        "<init>",
        "(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V",
        "getActivity",
        "()Landroid/app/Activity;",
        "getOnetimeToken",
        "()Ljava/lang/String;",
        "getUserId",
        "getMessage",
        "getTerm",
        "binding",
        "Lcom/kakaogame/databinding/KakaoGameProtectedUserPopupBinding;",
        "currentView",
        "Lcom/kakaogame/auth/view/PunishedUserDialog$ViewType;",
        "getCurrentView",
        "()Lcom/kakaogame/auth/view/PunishedUserDialog$ViewType;",
        "setCurrentView",
        "(Lcom/kakaogame/auth/view/PunishedUserDialog$ViewType;)V",
        "viewSizeChanged",
        "",
        "getViewSizeChanged",
        "()Z",
        "setViewSizeChanged",
        "(Z)V",
        "terminateTimer",
        "Ljava/util/Timer;",
        "normalTextColor",
        "",
        "getNormalTextColor",
        "()I",
        "disableTextColor",
        "getDisableTextColor",
        "callbackResult",
        "result",
        "startTerminateTimer",
        "timeLimit",
        "",
        "stopTerminateTimer",
        "clearView",
        "selectView",
        "viewType",
        "setEnable",
        "Lcom/kakaogame/ui/font/NotoSansButton;",
        "enable",
        "showNotice",
        "showAgreement",
        "showAgreementDetail",
        "showConfirmCode",
        "showUnregisterGuide",
        "requestUnregister",
        "showUnregisterEnd",
        "resultCode",
        "getNextView",
        "getCancelView",
        "Companion",
        "ViewType",
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


# static fields
.field public static final Companion:Lcom/kakaogame/auth/view/PunishedUserDialog$Companion;

.field private static final RESULT_EMAIL:Ljava/lang/String;

.field private static final RESULT_TERMINATE:Ljava/lang/String;

.field private static final RESULT_UNREGISTERED:Ljava/lang/String;


# instance fields
.field private final activity:Landroid/app/Activity;

.field private final binding:Lcom/kakaogame/databinding/KakaoGameProtectedUserPopupBinding;

.field private final callback:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private currentView:Lcom/kakaogame/auth/view/PunishedUserDialog$ViewType;

.field private final disableTextColor:I

.field private final message:Ljava/lang/String;

.field private final normalTextColor:I

.field private final onetimeToken:Ljava/lang/String;

.field private final term:Ljava/lang/String;

.field private terminateTimer:Ljava/util/Timer;

.field private final userId:Ljava/lang/String;

.field private viewSizeChanged:Z


# direct methods
.method public static synthetic $r8$lambda$3EaefefW6DsqsM0MnDawmSSLkgo(Lcom/kakaogame/auth/view/PunishedUserDialog;ILandroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/kakaogame/auth/view/PunishedUserDialog;->showUnregisterEnd$lambda$47$lambda$46(Lcom/kakaogame/auth/view/PunishedUserDialog;ILandroid/view/View;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method public static synthetic $r8$lambda$5CSy0N1OGlyJoyaD0amGa5KhfNc(Lcom/kakaogame/databinding/KakaoGameProtectedUserRestrictGuideBinding;Lcom/kakaogame/auth/view/PunishedUserDialog;Lcom/kakaogame/databinding/KakaoGameProtectedUserPopupBinding;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/kakaogame/auth/view/PunishedUserDialog;->showNotice$lambda$18$lambda$17$lambda$6(Lcom/kakaogame/databinding/KakaoGameProtectedUserRestrictGuideBinding;Lcom/kakaogame/auth/view/PunishedUserDialog;Lcom/kakaogame/databinding/KakaoGameProtectedUserPopupBinding;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method public static synthetic $r8$lambda$7LLzqtZDy5Edo_pkffsaVklr9L4(Lcom/kakaogame/auth/view/PunishedUserDialog;Lcom/kakaogame/ui/font/TextBuilder;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1}, Lcom/kakaogame/auth/view/PunishedUserDialog;->showConfirmCode$lambda$42$lambda$41$lambda$40$lambda$36(Lcom/kakaogame/auth/view/PunishedUserDialog;Lcom/kakaogame/ui/font/TextBuilder;)Lkotlin/Unit;

    move-result-object p0

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static synthetic $r8$lambda$E7xoUBaWQBaA2AM3OzZc19LItfI()[Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/kakaogame/auth/view/PunishedUserDialog;->showNotice$lambda$18$lambda$17$lambda$16$lambda$9$lambda$8()[Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public static synthetic $r8$lambda$IGQEE1g1qc6_bn9ALTYKI5-GLGI(Lcom/kakaogame/databinding/KakaoGameProtectedUserPopupBinding;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/kakaogame/auth/view/PunishedUserDialog;->showAgreementDetail$lambda$28$lambda$25(Lcom/kakaogame/databinding/KakaoGameProtectedUserPopupBinding;Landroid/animation/ValueAnimator;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method public static synthetic $r8$lambda$KFbw3__35_A8gyyPfaITHYUkrhU(Lcom/kakaogame/auth/view/PunishedUserDialog;Lcom/kakaogame/ui/font/TextBuilder;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1}, Lcom/kakaogame/auth/view/PunishedUserDialog;->showConfirmCode$lambda$42$lambda$41$lambda$40$lambda$33(Lcom/kakaogame/auth/view/PunishedUserDialog;Lcom/kakaogame/ui/font/TextBuilder;)Lkotlin/Unit;

    move-result-object p0

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static synthetic $r8$lambda$L662iQNROwF9-RHzDwF4VqGyOuU(Lcom/kakaogame/auth/view/PunishedUserDialog;Lcom/kakaogame/ui/font/TextBuilder;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1}, Lcom/kakaogame/auth/view/PunishedUserDialog;->showNotice$lambda$18$lambda$17$lambda$16$lambda$15(Lcom/kakaogame/auth/view/PunishedUserDialog;Lcom/kakaogame/ui/font/TextBuilder;)Lkotlin/Unit;

    move-result-object p0

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static synthetic $r8$lambda$OadXx-8CfCfi7htN_TR-_VFt7vs()[Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/kakaogame/auth/view/PunishedUserDialog;->showNotice$lambda$18$lambda$17$lambda$16$lambda$15$lambda$14()[Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public static synthetic $r8$lambda$P46QKWFl03w4OxsMWSilB4SgI2g()[Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/kakaogame/auth/view/PunishedUserDialog;->showConfirmCode$lambda$42$lambda$41$lambda$40$lambda$39$lambda$38()[Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public static synthetic $r8$lambda$RCNkZRTq_y51FHm-RFmeh4CaevA(Lcom/kakaogame/auth/view/PunishedUserDialog;Lcom/kakaogame/ui/font/TextBuilder;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1}, Lcom/kakaogame/auth/view/PunishedUserDialog;->showConfirmCode$lambda$42$lambda$41$lambda$40$lambda$39(Lcom/kakaogame/auth/view/PunishedUserDialog;Lcom/kakaogame/ui/font/TextBuilder;)Lkotlin/Unit;

    move-result-object p0

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static synthetic $r8$lambda$SO5RQaBBbdcTHRvwgGytd3t2DVk()[Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/kakaogame/auth/view/PunishedUserDialog;->showConfirmCode$lambda$42$lambda$41$lambda$40$lambda$33$lambda$32()[Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public static synthetic $r8$lambda$VXopFwGdXRFo124jcQ2z5KcSbF4(Lcom/kakaogame/databinding/KakaoGameProtectedUserUnregisterAgreementBinding;Lcom/kakaogame/auth/view/PunishedUserDialog;Lcom/kakaogame/databinding/KakaoGameProtectedUserPopupBinding;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/kakaogame/auth/view/PunishedUserDialog;->showAgreement$lambda$24$lambda$23$lambda$21(Lcom/kakaogame/databinding/KakaoGameProtectedUserUnregisterAgreementBinding;Lcom/kakaogame/auth/view/PunishedUserDialog;Lcom/kakaogame/databinding/KakaoGameProtectedUserPopupBinding;Landroid/view/View;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method public static synthetic $r8$lambda$Ymwe3-75FTYKqJkCHlwafZRl08Y(Lcom/kakaogame/databinding/KakaoGameProtectedUserUnregisterAgreementBinding;Lcom/kakaogame/auth/view/PunishedUserDialog;Lcom/kakaogame/databinding/KakaoGameProtectedUserPopupBinding;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/kakaogame/auth/view/PunishedUserDialog;->showAgreement$lambda$24$lambda$23$lambda$20(Lcom/kakaogame/databinding/KakaoGameProtectedUserUnregisterAgreementBinding;Lcom/kakaogame/auth/view/PunishedUserDialog;Lcom/kakaogame/databinding/KakaoGameProtectedUserPopupBinding;Landroid/view/View;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method public static synthetic $r8$lambda$asT5OzGVySIYjbrw7XgzDq1d49A(Lcom/kakaogame/auth/view/PunishedUserDialog;Lcom/kakaogame/ui/font/StyleTextBuilder;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1}, Lcom/kakaogame/auth/view/PunishedUserDialog;->showConfirmCode$lambda$42$lambda$41$lambda$40(Lcom/kakaogame/auth/view/PunishedUserDialog;Lcom/kakaogame/ui/font/StyleTextBuilder;)Lkotlin/Unit;

    move-result-object p0

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static synthetic $r8$lambda$el_hH9V-FbEV-t8rzwIq4excNa8(Lcom/kakaogame/auth/view/PunishedUserDialog;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/kakaogame/auth/view/PunishedUserDialog;->showNotice$lambda$18$lambda$17$lambda$16$lambda$15$lambda$13(Lcom/kakaogame/auth/view/PunishedUserDialog;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static synthetic $r8$lambda$ep_1tMlaE_rMEwxFchzWhGIrzhk(Lcom/kakaogame/auth/view/PunishedUserDialog;Lcom/kakaogame/ui/font/TextBuilder;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1}, Lcom/kakaogame/auth/view/PunishedUserDialog;->showNotice$lambda$18$lambda$17$lambda$16$lambda$9(Lcom/kakaogame/auth/view/PunishedUserDialog;Lcom/kakaogame/ui/font/TextBuilder;)Lkotlin/Unit;

    move-result-object p0

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static synthetic $r8$lambda$ey0GgeTtBIi4OvRY9t-I-8qLAdk(Lcom/kakaogame/auth/view/PunishedUserDialog;Lcom/kakaogame/ui/font/TextBuilder;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1}, Lcom/kakaogame/auth/view/PunishedUserDialog;->showNotice$lambda$18$lambda$17$lambda$16$lambda$12(Lcom/kakaogame/auth/view/PunishedUserDialog;Lcom/kakaogame/ui/font/TextBuilder;)Lkotlin/Unit;

    move-result-object p0

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static synthetic $r8$lambda$h0ALN35IvdtBbRx5DoD9VQCiF1I(Lcom/kakaogame/auth/view/PunishedUserDialog;Lcom/kakaogame/ui/font/StyleTextBuilder;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1}, Lcom/kakaogame/auth/view/PunishedUserDialog;->showNotice$lambda$18$lambda$17$lambda$16(Lcom/kakaogame/auth/view/PunishedUserDialog;Lcom/kakaogame/ui/font/StyleTextBuilder;)Lkotlin/Unit;

    move-result-object p0

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static synthetic $r8$lambda$lSgoe6-u1rmdn5VgZDs-PjyBcPM()[Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/kakaogame/auth/view/PunishedUserDialog;->showConfirmCode$lambda$42$lambda$41$lambda$40$lambda$36$lambda$35()[Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public static synthetic $r8$lambda$oU7pHrK6U8jvSsmnTQ9sJoWtAVg(Lcom/kakaogame/auth/view/PunishedUserDialog;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/kakaogame/auth/view/PunishedUserDialog;->showAgreementDetail$lambda$28$lambda$27(Lcom/kakaogame/auth/view/PunishedUserDialog;Landroid/view/View;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method public static synthetic $r8$lambda$sZFNMiOaAeSD0lrdLGyLdmX9sw8()[Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/kakaogame/auth/view/PunishedUserDialog;->showNotice$lambda$18$lambda$17$lambda$16$lambda$12$lambda$11()[Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public static synthetic $r8$lambda$tQaBKXxTMjuoLJfdSvV104hTy5Q(Lcom/kakaogame/auth/view/PunishedUserDialog;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/kakaogame/auth/view/PunishedUserDialog;->showConfirmCode$lambda$42$lambda$41$lambda$40$lambda$39$lambda$37(Lcom/kakaogame/auth/view/PunishedUserDialog;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static synthetic $r8$lambda$tf5SeYXWy_ky0a9i0_Teh5RojjA(Lcom/kakaogame/auth/view/PunishedUserDialog;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/kakaogame/auth/view/PunishedUserDialog;->showNotice$lambda$18$lambda$17$lambda$16$lambda$12$lambda$10(Lcom/kakaogame/auth/view/PunishedUserDialog;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static synthetic $r8$lambda$tibsukIV1QQtn8T-q1xOtoE0ZP0(Lcom/kakaogame/auth/view/PunishedUserDialog;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/kakaogame/auth/view/PunishedUserDialog;->showConfirmCode$lambda$42$lambda$41$lambda$40$lambda$36$lambda$34(Lcom/kakaogame/auth/view/PunishedUserDialog;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static synthetic $r8$lambda$tjuJEe6FVTs9GpCf571k5ZPf8lg(Lcom/kakaogame/auth/view/PunishedUserDialog;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/kakaogame/auth/view/PunishedUserDialog;->showConfirmCode$lambda$42$lambda$41$lambda$40$lambda$33$lambda$31(Lcom/kakaogame/auth/view/PunishedUserDialog;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static synthetic $r8$lambda$tqoU00cDiboHkEMrGbxdkAMmOzI(Lcom/kakaogame/databinding/KakaoGameProtectedUserPopupBinding;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/kakaogame/auth/view/PunishedUserDialog;->showAgreement$lambda$24$lambda$19(Lcom/kakaogame/databinding/KakaoGameProtectedUserPopupBinding;Landroid/animation/ValueAnimator;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method public static synthetic $r8$lambda$wLC_KNB7aB4THNx56WHb8KpNQ1w(Lcom/kakaogame/auth/view/PunishedUserDialog;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/kakaogame/auth/view/PunishedUserDialog;->showNotice$lambda$18$lambda$17$lambda$16$lambda$9$lambda$7(Lcom/kakaogame/auth/view/PunishedUserDialog;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static synthetic $r8$lambda$zB-vugmdVNO9ShdUQ8QgJ8H79h4(Lcom/kakaogame/auth/view/PunishedUserDialog;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/kakaogame/auth/view/PunishedUserDialog;->showAgreement$lambda$24$lambda$23$lambda$22(Lcom/kakaogame/auth/view/PunishedUserDialog;Landroid/view/View;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/kakaogame/auth/view/PunishedUserDialog$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/kakaogame/auth/view/PunishedUserDialog$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/kakaogame/auth/view/PunishedUserDialog;->Companion:Lcom/kakaogame/auth/view/PunishedUserDialog$Companion;

    const v0, 0x3363f8eb

    invoke-static {v0}, Lcom/liapp/y;->ׯ״ٲ֬ب(I)Ljava/lang/String;

    move-result-object v0

    .line 499
    sput-object v0, Lcom/kakaogame/auth/view/PunishedUserDialog;->RESULT_EMAIL:Ljava/lang/String;

    const v0, 0x5438ed52

    invoke-static {v0}, Lcom/liapp/y;->׳ֳֳ֬د(I)Ljava/lang/String;

    move-result-object v0

    .line 509
    sput-object v0, Lcom/kakaogame/auth/view/PunishedUserDialog;->RESULT_UNREGISTERED:Ljava/lang/String;

    const v0, 0x6d0cc588

    invoke-static {v0}, Lcom/liapp/y;->ٱڳܴڭܩ(I)Ljava/lang/String;

    move-result-object v0

    .line 519
    sput-object v0, Lcom/kakaogame/auth/view/PunishedUserDialog;->RESULT_TERMINATE:Ljava/lang/String;

    return-void

    .array-data 1
    .end array-data
.end method

.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const v0, 0x543d14da

    invoke-static {v0}, Lcom/liapp/y;->׳ֳֳ֬د(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const v0, 0x5d109647

    invoke-static {v0}, Lcom/liapp/y;->ڴݮگ֮ت(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const v0, -0x4519b78f

    invoke-static {v0}, Lcom/liapp/y;->ڳݬ٬ۮݪ(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const v0, -0x451edd5f

    invoke-static {v0}, Lcom/liapp/y;->ڳݬ٬ۮݪ(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const v0, 0x33627c3b

    invoke-static {v0}, Lcom/liapp/y;->ׯ״ٲ֬ب(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const v0, 0x6d0d7b60

    invoke-static {v0}, Lcom/liapp/y;->ٱڳܴڭܩ(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 479
    move-object v0, p1

    check-cast v0, Landroid/content/Context;

    sget v1, Landroidx/appcompat/R$style;->Base_AlertDialog_AppCompat_Light:I

    invoke-direct {p0, v0, v1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 419
    iput-object p1, p0, Lcom/kakaogame/auth/view/PunishedUserDialog;->activity:Landroid/app/Activity;

    .line 429
    iput-object p2, p0, Lcom/kakaogame/auth/view/PunishedUserDialog;->onetimeToken:Ljava/lang/String;

    .line 439
    iput-object p3, p0, Lcom/kakaogame/auth/view/PunishedUserDialog;->userId:Ljava/lang/String;

    .line 449
    iput-object p4, p0, Lcom/kakaogame/auth/view/PunishedUserDialog;->message:Ljava/lang/String;

    .line 459
    iput-object p5, p0, Lcom/kakaogame/auth/view/PunishedUserDialog;->term:Ljava/lang/String;

    .line 469
    iput-object p6, p0, Lcom/kakaogame/auth/view/PunishedUserDialog;->callback:Lkotlin/jvm/functions/Function1;

    .line 539
    invoke-virtual {p0}, Lcom/kakaogame/auth/view/PunishedUserDialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p2

    invoke-static {p2}, Lcom/kakaogame/databinding/KakaoGameProtectedUserPopupBinding;->inflate(Landroid/view/LayoutInflater;)Lcom/kakaogame/databinding/KakaoGameProtectedUserPopupBinding;

    move-result-object p2

    const-string p3, "inflate(...)"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/kakaogame/auth/view/PunishedUserDialog;->binding:Lcom/kakaogame/databinding/KakaoGameProtectedUserPopupBinding;

    .line 549
    sget-object p3, Lcom/kakaogame/auth/view/PunishedUserDialog$ViewType;->NOTICE:Lcom/kakaogame/auth/view/PunishedUserDialog$ViewType;

    iput-object p3, p0, Lcom/kakaogame/auth/view/PunishedUserDialog;->currentView:Lcom/kakaogame/auth/view/PunishedUserDialog$ViewType;

    const-string p3, "#191919"

    .line 589
    invoke-static {p3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p3

    iput p3, p0, Lcom/kakaogame/auth/view/PunishedUserDialog;->normalTextColor:I

    const-string p3, "#999999"

    .line 599
    invoke-static {p3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p3

    iput p3, p0, Lcom/kakaogame/auth/view/PunishedUserDialog;->disableTextColor:I

    const/4 p3, 0x1

    .line 639
    invoke-virtual {p0, p3}, Lcom/kakaogame/auth/view/PunishedUserDialog;->requestWindowFeature(I)Z

    .line 649
    invoke-virtual {p0}, Lcom/kakaogame/auth/view/PunishedUserDialog;->getWindow()Landroid/view/Window;

    move-result-object p3

    invoke-static {p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    new-instance p4, Landroid/graphics/drawable/ColorDrawable;

    const/4 p5, 0x0

    invoke-direct {p4, p5}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    check-cast p4, Landroid/graphics/drawable/Drawable;

    invoke-virtual {p3, p4}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 659
    invoke-virtual {p0}, Lcom/kakaogame/auth/view/PunishedUserDialog;->getWindow()Landroid/view/Window;

    move-result-object p3

    invoke-static {p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/4 p4, 0x4

    invoke-virtual {p3, p4}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 669
    invoke-virtual {p0}, Lcom/kakaogame/auth/view/PunishedUserDialog;->getWindow()Landroid/view/Window;

    move-result-object p3

    invoke-static {p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p3}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p3

    const p4, 0x1030002

    iput p4, p3, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 679
    invoke-virtual {p0, p5}, Lcom/kakaogame/auth/view/PunishedUserDialog;->setCanceledOnTouchOutside(Z)V

    .line 699
    sget p3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p4, 0x1c

    if-lt p3, p4, :cond_0

    .line 709
    invoke-virtual {p0}, Lcom/kakaogame/auth/view/PunishedUserDialog;->getWindow()Landroid/view/Window;

    move-result-object p3

    invoke-static {p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p3}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p3

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p4

    invoke-virtual {p4}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p4

    iget p4, p4, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    iput p4, p3, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    .line 739
    :cond_0
    invoke-virtual {p2}, Lcom/kakaogame/databinding/KakaoGameProtectedUserPopupBinding;->getRoot()Landroid/widget/RelativeLayout;

    move-result-object p3

    check-cast p3, Landroid/view/View;

    invoke-virtual {p0, p3}, Lcom/kakaogame/auth/view/PunishedUserDialog;->setContentView(Landroid/view/View;)V

    .line 749
    sget-object p3, Lcom/kakaogame/util/DisplayUtil;->INSTANCE:Lcom/kakaogame/util/DisplayUtil;

    invoke-virtual {p0}, Lcom/kakaogame/auth/view/PunishedUserDialog;->getWindow()Landroid/view/Window;

    move-result-object p4

    invoke-static {p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p3, p1, p4}, Lcom/kakaogame/util/DisplayUtil;->setFullScreenView(Landroid/app/Activity;Landroid/view/Window;)V

    .line 759
    invoke-direct {p0}, Lcom/kakaogame/auth/view/PunishedUserDialog;->clearView()V

    .line 789
    iget-object p1, p2, Lcom/kakaogame/databinding/KakaoGameProtectedUserPopupBinding;->kakaoGameProtectedPopupCancel:Lcom/kakaogame/ui/font/NotoSansButton;

    new-instance p3, Lcom/kakaogame/auth/view/PunishedUserDialog$$ExternalSyntheticLambda25;

    invoke-direct {p3, p0}, Lcom/kakaogame/auth/view/PunishedUserDialog$$ExternalSyntheticLambda25;-><init>(Lcom/kakaogame/auth/view/PunishedUserDialog;)V

    invoke-virtual {p1, p3}, Lcom/kakaogame/ui/font/NotoSansButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 829
    iget-object p1, p2, Lcom/kakaogame/databinding/KakaoGameProtectedUserPopupBinding;->kakaoGameProtectedPopupConfirm:Lcom/kakaogame/ui/font/NotoSansButton;

    new-instance p3, Lcom/kakaogame/auth/view/PunishedUserDialog$$ExternalSyntheticLambda26;

    invoke-direct {p3, p0}, Lcom/kakaogame/auth/view/PunishedUserDialog$$ExternalSyntheticLambda26;-><init>(Lcom/kakaogame/auth/view/PunishedUserDialog;)V

    invoke-virtual {p1, p3}, Lcom/kakaogame/ui/font/NotoSansButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 869
    iget-object p1, p2, Lcom/kakaogame/databinding/KakaoGameProtectedUserPopupBinding;->kakaoGameProtectedUserTopbarClose:Landroid/widget/FrameLayout;

    new-instance p2, Lcom/kakaogame/auth/view/PunishedUserDialog$$ExternalSyntheticLambda27;

    invoke-direct {p2, p0}, Lcom/kakaogame/auth/view/PunishedUserDialog$$ExternalSyntheticLambda27;-><init>(Lcom/kakaogame/auth/view/PunishedUserDialog;)V

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 949
    sget-object p1, Lcom/kakaogame/auth/view/PunishedUserDialog$ViewType;->NOTICE:Lcom/kakaogame/auth/view/PunishedUserDialog$ViewType;

    invoke-direct {p0, p1}, Lcom/kakaogame/auth/view/PunishedUserDialog;->selectView(Lcom/kakaogame/auth/view/PunishedUserDialog$ViewType;)V

    .line 959
    invoke-virtual {p0, p5}, Lcom/kakaogame/auth/view/PunishedUserDialog;->setCancelable(Z)V

    const-wide/16 p1, 0x2710

    .line 979
    invoke-direct {p0, p1, p2}, Lcom/kakaogame/auth/view/PunishedUserDialog;->startTerminateTimer(J)V

    return-void

    .array-data 1
    .end array-data
.end method

.method public static final synthetic access$callbackResult(Lcom/kakaogame/auth/view/PunishedUserDialog;Ljava/lang/String;)V
    .locals 0

    .line 409
    invoke-direct {p0, p1}, Lcom/kakaogame/auth/view/PunishedUserDialog;->callbackResult(Ljava/lang/String;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method public static final synthetic access$getRESULT_EMAIL$cp()Ljava/lang/String;
    .locals 1

    .line 409
    sget-object v0, Lcom/kakaogame/auth/view/PunishedUserDialog;->RESULT_EMAIL:Ljava/lang/String;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public static final synthetic access$getRESULT_TERMINATE$cp()Ljava/lang/String;
    .locals 1

    .line 409
    sget-object v0, Lcom/kakaogame/auth/view/PunishedUserDialog;->RESULT_TERMINATE:Ljava/lang/String;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public static final synthetic access$getRESULT_UNREGISTERED$cp()Ljava/lang/String;
    .locals 1

    .line 409
    sget-object v0, Lcom/kakaogame/auth/view/PunishedUserDialog;->RESULT_UNREGISTERED:Ljava/lang/String;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public static final synthetic access$setEnable(Lcom/kakaogame/auth/view/PunishedUserDialog;Lcom/kakaogame/ui/font/NotoSansButton;Z)V
    .locals 0

    .line 409
    invoke-direct {p0, p1, p2}, Lcom/kakaogame/auth/view/PunishedUserDialog;->setEnable(Lcom/kakaogame/ui/font/NotoSansButton;Z)V

    return-void

    .array-data 1
    .end array-data
.end method

.method public static final synthetic access$showUnregisterEnd(Lcom/kakaogame/auth/view/PunishedUserDialog;I)V
    .locals 0

    .line 409
    invoke-direct {p0, p1}, Lcom/kakaogame/auth/view/PunishedUserDialog;->showUnregisterEnd(I)V

    return-void

    .array-data 1
    .end array-data
.end method

.method private final callbackResult(Ljava/lang/String;)V
    .locals 1

    .line 1019
    iget-object v0, p0, Lcom/kakaogame/auth/view/PunishedUserDialog;->callback:Lkotlin/jvm/functions/Function1;

    invoke-interface {v0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1029
    invoke-direct {p0}, Lcom/kakaogame/auth/view/PunishedUserDialog;->stopTerminateTimer()V

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method private final clearView()V
    .locals 3

    .line 1229
    iget-object v0, p0, Lcom/kakaogame/auth/view/PunishedUserDialog;->binding:Lcom/kakaogame/databinding/KakaoGameProtectedUserPopupBinding;

    .line 1239
    iget-object v1, v0, Lcom/kakaogame/databinding/KakaoGameProtectedUserPopupBinding;->restrictGuideView:Lcom/kakaogame/databinding/KakaoGameProtectedUserRestrictGuideBinding;

    invoke-virtual {v1}, Lcom/kakaogame/databinding/KakaoGameProtectedUserRestrictGuideBinding;->getRoot()Landroid/widget/RelativeLayout;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1249
    iget-object v1, v0, Lcom/kakaogame/databinding/KakaoGameProtectedUserPopupBinding;->unregisterAgreementView:Lcom/kakaogame/databinding/KakaoGameProtectedUserUnregisterAgreementBinding;

    invoke-virtual {v1}, Lcom/kakaogame/databinding/KakaoGameProtectedUserUnregisterAgreementBinding;->getRoot()Landroid/widget/RelativeLayout;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1259
    iget-object v1, v0, Lcom/kakaogame/databinding/KakaoGameProtectedUserPopupBinding;->confirmCodeView:Lcom/kakaogame/databinding/KakaoGameProtectedUserConfirmCodeBinding;

    invoke-virtual {v1}, Lcom/kakaogame/databinding/KakaoGameProtectedUserConfirmCodeBinding;->getRoot()Landroid/widget/RelativeLayout;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1269
    iget-object v1, v0, Lcom/kakaogame/databinding/KakaoGameProtectedUserPopupBinding;->unregisterConfirmView:Lcom/kakaogame/databinding/KakaoGameProtectedUserUnregisterConfirmBinding;

    invoke-virtual {v1}, Lcom/kakaogame/databinding/KakaoGameProtectedUserUnregisterConfirmBinding;->getRoot()Landroid/widget/RelativeLayout;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1279
    iget-object v0, v0, Lcom/kakaogame/databinding/KakaoGameProtectedUserPopupBinding;->webView:Lcom/kakaogame/databinding/KakaoGameProtectedUserWebviewBinding;

    invoke-virtual {v0}, Lcom/kakaogame/databinding/KakaoGameProtectedUserWebviewBinding;->getRoot()Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    return-void

    .array-data 1
    .end array-data
.end method

.method private final getCancelView(Lcom/kakaogame/auth/view/PunishedUserDialog$ViewType;)Lcom/kakaogame/auth/view/PunishedUserDialog$ViewType;
    .locals 1

    .line 4119
    sget-object v0, Lcom/kakaogame/auth/view/PunishedUserDialog$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Lcom/kakaogame/auth/view/PunishedUserDialog$ViewType;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    const/4 v0, 0x5

    if-eq p1, v0, :cond_0

    const/4 v0, 0x6

    if-eq p1, v0, :cond_0

    .line 4179
    sget-object p1, Lcom/kakaogame/auth/view/PunishedUserDialog$ViewType;->CLOSE:Lcom/kakaogame/auth/view/PunishedUserDialog$ViewType;

    goto :goto_0

    .line 4159
    :cond_0
    sget-object p1, Lcom/kakaogame/auth/view/PunishedUserDialog$ViewType;->CLOSE:Lcom/kakaogame/auth/view/PunishedUserDialog$ViewType;

    goto :goto_0

    .line 4129
    :cond_1
    sget-object p1, Lcom/kakaogame/auth/view/PunishedUserDialog$ViewType;->EMAIL:Lcom/kakaogame/auth/view/PunishedUserDialog$ViewType;

    goto :goto_0

    .line 4169
    :cond_2
    sget-object p1, Lcom/kakaogame/auth/view/PunishedUserDialog$ViewType;->AGREEMENT:Lcom/kakaogame/auth/view/PunishedUserDialog$ViewType;

    :goto_0
    return-object p1

    nop

    .array-data 1
    .end array-data
.end method

.method private final getNextView(Lcom/kakaogame/auth/view/PunishedUserDialog$ViewType;)Lcom/kakaogame/auth/view/PunishedUserDialog$ViewType;
    .locals 1

    .line 3999
    sget-object v0, Lcom/kakaogame/auth/view/PunishedUserDialog$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Lcom/kakaogame/auth/view/PunishedUserDialog$ViewType;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_5

    const/4 v0, 0x2

    if-eq p1, v0, :cond_4

    const/4 v0, 0x4

    if-eq p1, v0, :cond_3

    const/4 v0, 0x5

    if-eq p1, v0, :cond_2

    const/4 v0, 0x6

    if-eq p1, v0, :cond_1

    const/4 v0, 0x7

    if-eq p1, v0, :cond_0

    .line 4069
    sget-object p1, Lcom/kakaogame/auth/view/PunishedUserDialog$ViewType;->CLOSE:Lcom/kakaogame/auth/view/PunishedUserDialog$ViewType;

    goto :goto_0

    .line 4059
    :cond_0
    sget-object p1, Lcom/kakaogame/auth/view/PunishedUserDialog$ViewType;->CLOSE:Lcom/kakaogame/auth/view/PunishedUserDialog$ViewType;

    goto :goto_0

    .line 4039
    :cond_1
    sget-object p1, Lcom/kakaogame/auth/view/PunishedUserDialog$ViewType;->UNREGISTER_CONFIRM:Lcom/kakaogame/auth/view/PunishedUserDialog$ViewType;

    goto :goto_0

    .line 4029
    :cond_2
    sget-object p1, Lcom/kakaogame/auth/view/PunishedUserDialog$ViewType;->UNREGISTER_GUIDE:Lcom/kakaogame/auth/view/PunishedUserDialog$ViewType;

    goto :goto_0

    .line 4019
    :cond_3
    sget-object p1, Lcom/kakaogame/auth/view/PunishedUserDialog$ViewType;->CONFIRM_CODE:Lcom/kakaogame/auth/view/PunishedUserDialog$ViewType;

    goto :goto_0

    .line 4009
    :cond_4
    sget-object p1, Lcom/kakaogame/auth/view/PunishedUserDialog$ViewType;->AGREEMENT:Lcom/kakaogame/auth/view/PunishedUserDialog$ViewType;

    goto :goto_0

    .line 4049
    :cond_5
    sget-object p1, Lcom/kakaogame/auth/view/PunishedUserDialog$ViewType;->AGREEMENT:Lcom/kakaogame/auth/view/PunishedUserDialog$ViewType;

    :goto_0
    return-object p1

    nop

    .array-data 1
    .end array-data
.end method

.method static final lambda$3$lambda$0(Lcom/kakaogame/auth/view/PunishedUserDialog;Landroid/view/View;)V
    .locals 0

    .line 799
    iget-object p1, p0, Lcom/kakaogame/auth/view/PunishedUserDialog;->currentView:Lcom/kakaogame/auth/view/PunishedUserDialog$ViewType;

    invoke-direct {p0, p1}, Lcom/kakaogame/auth/view/PunishedUserDialog;->getCancelView(Lcom/kakaogame/auth/view/PunishedUserDialog$ViewType;)Lcom/kakaogame/auth/view/PunishedUserDialog$ViewType;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/kakaogame/auth/view/PunishedUserDialog;->selectView(Lcom/kakaogame/auth/view/PunishedUserDialog$ViewType;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method static final lambda$3$lambda$1(Lcom/kakaogame/auth/view/PunishedUserDialog;Landroid/view/View;)V
    .locals 0

    .line 839
    iget-object p1, p0, Lcom/kakaogame/auth/view/PunishedUserDialog;->currentView:Lcom/kakaogame/auth/view/PunishedUserDialog$ViewType;

    invoke-direct {p0, p1}, Lcom/kakaogame/auth/view/PunishedUserDialog;->getNextView(Lcom/kakaogame/auth/view/PunishedUserDialog$ViewType;)Lcom/kakaogame/auth/view/PunishedUserDialog$ViewType;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/kakaogame/auth/view/PunishedUserDialog;->selectView(Lcom/kakaogame/auth/view/PunishedUserDialog$ViewType;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method static final lambda$3$lambda$2(Lcom/kakaogame/auth/view/PunishedUserDialog;Landroid/view/View;)V
    .locals 1

    .line 879
    iget-object p1, p0, Lcom/kakaogame/auth/view/PunishedUserDialog;->currentView:Lcom/kakaogame/auth/view/PunishedUserDialog$ViewType;

    sget-object v0, Lcom/kakaogame/auth/view/PunishedUserDialog$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Lcom/kakaogame/auth/view/PunishedUserDialog$ViewType;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 889
    iget-object p1, p0, Lcom/kakaogame/auth/view/PunishedUserDialog;->currentView:Lcom/kakaogame/auth/view/PunishedUserDialog$ViewType;

    invoke-direct {p0, p1}, Lcom/kakaogame/auth/view/PunishedUserDialog;->getCancelView(Lcom/kakaogame/auth/view/PunishedUserDialog$ViewType;)Lcom/kakaogame/auth/view/PunishedUserDialog$ViewType;

    move-result-object p1

    goto :goto_0

    .line 899
    :cond_0
    sget-object p1, Lcom/kakaogame/auth/view/PunishedUserDialog$ViewType;->CLOSE:Lcom/kakaogame/auth/view/PunishedUserDialog$ViewType;

    .line 879
    :goto_0
    invoke-direct {p0, p1}, Lcom/kakaogame/auth/view/PunishedUserDialog;->selectView(Lcom/kakaogame/auth/view/PunishedUserDialog$ViewType;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method private final requestUnregister()V
    .locals 7

    .line 3579
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    invoke-static {v0}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    new-instance v0, Lcom/kakaogame/auth/view/PunishedUserDialog$requestUnregister$1;

    const/4 v4, 0x0

    invoke-direct {v0, p0, v4}, Lcom/kakaogame/auth/view/PunishedUserDialog$requestUnregister$1;-><init>(Lcom/kakaogame/auth/view/PunishedUserDialog;Lkotlin/coroutines/Continuation;)V

    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v5, 0x3

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method private final selectView(Lcom/kakaogame/auth/view/PunishedUserDialog$ViewType;)V
    .locals 1

    .line 1329
    invoke-direct {p0}, Lcom/kakaogame/auth/view/PunishedUserDialog;->clearView()V

    .line 1339
    iput-object p1, p0, Lcom/kakaogame/auth/view/PunishedUserDialog;->currentView:Lcom/kakaogame/auth/view/PunishedUserDialog$ViewType;

    .line 1359
    sget-object v0, Lcom/kakaogame/auth/view/PunishedUserDialog$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Lcom/kakaogame/auth/view/PunishedUserDialog$ViewType;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_0

    .line 1479
    invoke-virtual {p0}, Lcom/kakaogame/auth/view/PunishedUserDialog;->dismiss()V

    const/4 p1, 0x0

    .line 1489
    invoke-direct {p0, p1}, Lcom/kakaogame/auth/view/PunishedUserDialog;->callbackResult(Ljava/lang/String;)V

    goto :goto_0

    .line 1459
    :pswitch_0
    invoke-direct {p0}, Lcom/kakaogame/auth/view/PunishedUserDialog;->requestUnregister()V

    goto :goto_0

    .line 1449
    :pswitch_1
    invoke-direct {p0}, Lcom/kakaogame/auth/view/PunishedUserDialog;->showUnregisterGuide()V

    goto :goto_0

    .line 1439
    :pswitch_2
    invoke-direct {p0}, Lcom/kakaogame/auth/view/PunishedUserDialog;->showConfirmCode()V

    goto :goto_0

    .line 1419
    :pswitch_3
    invoke-direct {p0}, Lcom/kakaogame/auth/view/PunishedUserDialog;->showAgreement()V

    goto :goto_0

    .line 1389
    :pswitch_4
    invoke-virtual {p0}, Lcom/kakaogame/auth/view/PunishedUserDialog;->dismiss()V

    .line 1399
    sget-object p1, Lcom/kakaogame/auth/view/PunishedUserDialog;->RESULT_EMAIL:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/kakaogame/auth/view/PunishedUserDialog;->callbackResult(Ljava/lang/String;)V

    goto :goto_0

    .line 1369
    :pswitch_5
    invoke-direct {p0}, Lcom/kakaogame/auth/view/PunishedUserDialog;->showNotice()V

    goto :goto_0

    .line 1429
    :pswitch_6
    invoke-direct {p0}, Lcom/kakaogame/auth/view/PunishedUserDialog;->showAgreementDetail()V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .array-data 1
    .end array-data
.end method

.method private final setEnable(Lcom/kakaogame/ui/font/NotoSansButton;Z)V
    .locals 0

    .line 1549
    invoke-virtual {p1, p2}, Lcom/kakaogame/ui/font/NotoSansButton;->setEnabled(Z)V

    if-eqz p2, :cond_0

    .line 1559
    iget p2, p0, Lcom/kakaogame/auth/view/PunishedUserDialog;->normalTextColor:I

    goto :goto_0

    :cond_0
    iget p2, p0, Lcom/kakaogame/auth/view/PunishedUserDialog;->disableTextColor:I

    :goto_0
    invoke-virtual {p1, p2}, Lcom/kakaogame/ui/font/NotoSansButton;->setTextColor(I)V

    return-void

    .array-data 1
    .end array-data
.end method

.method private final showAgreement()V
    .locals 6

    const-wide/32 v0, 0x927c0

    .line 2029
    invoke-direct {p0, v0, v1}, Lcom/kakaogame/auth/view/PunishedUserDialog;->startTerminateTimer(J)V

    .line 2039
    iget-object v0, p0, Lcom/kakaogame/auth/view/PunishedUserDialog;->binding:Lcom/kakaogame/databinding/KakaoGameProtectedUserPopupBinding;

    .line 2049
    iget-object v1, v0, Lcom/kakaogame/databinding/KakaoGameProtectedUserPopupBinding;->kakaoGameProtectedButtonLayout:Landroid/widget/RelativeLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 2059
    iget-object v1, v0, Lcom/kakaogame/databinding/KakaoGameProtectedUserPopupBinding;->kakaoGameProtectedPopupClose:Lcom/kakaogame/ui/font/NotoSansButton;

    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Lcom/kakaogame/ui/font/NotoSansButton;->setVisibility(I)V

    .line 2069
    iget-object v1, v0, Lcom/kakaogame/databinding/KakaoGameProtectedUserPopupBinding;->unregisterAgreementView:Lcom/kakaogame/databinding/KakaoGameProtectedUserUnregisterAgreementBinding;

    invoke-virtual {v1}, Lcom/kakaogame/databinding/KakaoGameProtectedUserUnregisterAgreementBinding;->getRoot()Landroid/widget/RelativeLayout;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 2089
    iget-boolean v1, p0, Lcom/kakaogame/auth/view/PunishedUserDialog;->viewSizeChanged:Z

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    .line 2099
    iput-boolean v2, p0, Lcom/kakaogame/auth/view/PunishedUserDialog;->viewSizeChanged:Z

    .line 2109
    iget-object v1, p0, Lcom/kakaogame/auth/view/PunishedUserDialog;->activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v4, Lcom/kakaogame/R$dimen;->sdk_2nd_protected_user_popup_height:I

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    const/4 v4, 0x2

    new-array v4, v4, [I

    .line 2119
    iget-object v5, v0, Lcom/kakaogame/databinding/KakaoGameProtectedUserPopupBinding;->kakaoGameProtectedPopupViewBack:Landroid/widget/RelativeLayout;

    invoke-virtual {v5}, Landroid/widget/RelativeLayout;->getMeasuredHeight()I

    move-result v5

    aput v5, v4, v2

    aput v1, v4, v3

    invoke-static {v4}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v1

    .line 2129
    new-instance v4, Lcom/kakaogame/auth/view/PunishedUserDialog$$ExternalSyntheticLambda19;

    invoke-direct {v4, v0}, Lcom/kakaogame/auth/view/PunishedUserDialog$$ExternalSyntheticLambda19;-><init>(Lcom/kakaogame/databinding/KakaoGameProtectedUserPopupBinding;)V

    invoke-virtual {v1, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    const-wide/16 v4, 0x1f4

    .line 2189
    invoke-virtual {v1, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 2199
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    .line 2229
    :cond_0
    iget-object v1, v0, Lcom/kakaogame/databinding/KakaoGameProtectedUserPopupBinding;->unregisterAgreementView:Lcom/kakaogame/databinding/KakaoGameProtectedUserUnregisterAgreementBinding;

    invoke-virtual {v1}, Lcom/kakaogame/databinding/KakaoGameProtectedUserUnregisterAgreementBinding;->getRoot()Landroid/widget/RelativeLayout;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-static {v1}, Lcom/kakaogame/databinding/KakaoGameProtectedUserUnregisterAgreementBinding;->bind(Landroid/view/View;)Lcom/kakaogame/databinding/KakaoGameProtectedUserUnregisterAgreementBinding;

    move-result-object v1

    const v4, -0x2242107c

    invoke-static {v4}, Lcom/liapp/y;->״دش۲ݮ(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2249
    iget-object v4, v0, Lcom/kakaogame/databinding/KakaoGameProtectedUserPopupBinding;->kakaoGameProtectedPopupConfirm:Lcom/kakaogame/ui/font/NotoSansButton;

    const v5, 0x6d0cc288

    invoke-static {v5}, Lcom/liapp/y;->ٱڳܴڭܩ(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2259
    iget-object v5, v1, Lcom/kakaogame/databinding/KakaoGameProtectedUserUnregisterAgreementBinding;->kakaoGameProtectedPopupCheckBoxOn:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getVisibility()I

    move-result v5

    if-nez v5, :cond_1

    move v2, v3

    .line 2249
    :cond_1
    invoke-direct {p0, v4, v2}, Lcom/kakaogame/auth/view/PunishedUserDialog;->setEnable(Lcom/kakaogame/ui/font/NotoSansButton;Z)V

    .line 2289
    iget-object v2, v1, Lcom/kakaogame/databinding/KakaoGameProtectedUserUnregisterAgreementBinding;->kakaoGameProtectedPopupCheckBoxOff:Landroid/widget/ImageView;

    new-instance v3, Lcom/kakaogame/auth/view/PunishedUserDialog$$ExternalSyntheticLambda20;

    invoke-direct {v3, v1, p0, v0}, Lcom/kakaogame/auth/view/PunishedUserDialog$$ExternalSyntheticLambda20;-><init>(Lcom/kakaogame/databinding/KakaoGameProtectedUserUnregisterAgreementBinding;Lcom/kakaogame/auth/view/PunishedUserDialog;Lcom/kakaogame/databinding/KakaoGameProtectedUserPopupBinding;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2339
    iget-object v2, v1, Lcom/kakaogame/databinding/KakaoGameProtectedUserUnregisterAgreementBinding;->kakaoGameProtectedPopupCheckBoxOn:Landroid/widget/ImageView;

    new-instance v3, Lcom/kakaogame/auth/view/PunishedUserDialog$$ExternalSyntheticLambda21;

    invoke-direct {v3, v1, p0, v0}, Lcom/kakaogame/auth/view/PunishedUserDialog$$ExternalSyntheticLambda21;-><init>(Lcom/kakaogame/databinding/KakaoGameProtectedUserUnregisterAgreementBinding;Lcom/kakaogame/auth/view/PunishedUserDialog;Lcom/kakaogame/databinding/KakaoGameProtectedUserPopupBinding;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2389
    iget-object v2, v1, Lcom/kakaogame/databinding/KakaoGameProtectedUserUnregisterAgreementBinding;->kakaoSdkProtectedUserPopupAgreementBtn:Landroid/widget/FrameLayout;

    new-instance v3, Lcom/kakaogame/auth/view/PunishedUserDialog$$ExternalSyntheticLambda23;

    invoke-direct {v3, p0}, Lcom/kakaogame/auth/view/PunishedUserDialog$$ExternalSyntheticLambda23;-><init>(Lcom/kakaogame/auth/view/PunishedUserDialog;)V

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2419
    iget-object v1, v1, Lcom/kakaogame/databinding/KakaoGameProtectedUserUnregisterAgreementBinding;->kakaoGameProtectedPopupAgreementTitle:Lcom/kakaogame/ui/font/NotoSansTextView;

    iget-object v2, p0, Lcom/kakaogame/auth/view/PunishedUserDialog;->activity:Landroid/app/Activity;

    check-cast v2, Landroid/content/Context;

    sget v3, Lcom/kakaogame/R$string;->kakao_game_sdk_protected_popup_agreement_title:I

    invoke-static {v2, v3}, Lcom/kakaogame/util/ResourceUtil;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/kakaogame/ui/font/StyleTextKt;->getBoldText(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Lcom/kakaogame/ui/font/NotoSansTextView;->setText(Ljava/lang/CharSequence;)V

    .line 2449
    iget-object v1, v0, Lcom/kakaogame/databinding/KakaoGameProtectedUserPopupBinding;->kakaoGameProtectedPopupTitle:Lcom/kakaogame/ui/font/NotoSansTextView;

    iget-object v2, p0, Lcom/kakaogame/auth/view/PunishedUserDialog;->activity:Landroid/app/Activity;

    check-cast v2, Landroid/content/Context;

    sget v3, Lcom/kakaogame/R$string;->kakao_game_sdk_protected_user_unregister_agreement_title:I

    invoke-static {v2, v3}, Lcom/kakaogame/util/ResourceUtil;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/kakaogame/ui/font/StyleTextKt;->getBoldText(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Lcom/kakaogame/ui/font/NotoSansTextView;->setText(Ljava/lang/CharSequence;)V

    .line 2459
    iget-object v1, v0, Lcom/kakaogame/databinding/KakaoGameProtectedUserPopupBinding;->kakaoGameProtectedPopupCancel:Lcom/kakaogame/ui/font/NotoSansButton;

    iget-object v2, p0, Lcom/kakaogame/auth/view/PunishedUserDialog;->activity:Landroid/app/Activity;

    check-cast v2, Landroid/content/Context;

    sget v3, Lcom/kakaogame/R$string;->kakao_game_sdk_protected_user_unregister_disagree:I

    invoke-static {v2, v3}, Lcom/kakaogame/util/ResourceUtil;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/kakaogame/ui/font/StyleTextKt;->getBoldText(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Lcom/kakaogame/ui/font/NotoSansButton;->setText(Ljava/lang/CharSequence;)V

    .line 2469
    iget-object v0, v0, Lcom/kakaogame/databinding/KakaoGameProtectedUserPopupBinding;->kakaoGameProtectedPopupConfirm:Lcom/kakaogame/ui/font/NotoSansButton;

    iget-object v1, p0, Lcom/kakaogame/auth/view/PunishedUserDialog;->activity:Landroid/app/Activity;

    check-cast v1, Landroid/content/Context;

    sget v2, Lcom/kakaogame/R$string;->kakao_game_sdk_protected_user_unregister_agree:I

    invoke-static {v1, v2}, Lcom/kakaogame/util/ResourceUtil;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/kakaogame/ui/font/StyleTextKt;->getBoldText(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Lcom/kakaogame/ui/font/NotoSansButton;->setText(Ljava/lang/CharSequence;)V

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method private static final showAgreement$lambda$24$lambda$19(Lcom/kakaogame/databinding/KakaoGameProtectedUserPopupBinding;Landroid/animation/ValueAnimator;)V
    .locals 1

    const v0, 0x5d10f027

    invoke-static {v0}, Lcom/liapp/y;->ڴݮگ֮ت(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2139
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    const v0, -0x2244dc24

    invoke-static {v0}, Lcom/liapp/y;->״دش۲ݮ(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 2149
    iget-object v0, p0, Lcom/kakaogame/databinding/KakaoGameProtectedUserPopupBinding;->kakaoGameProtectedPopupViewBack:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 2159
    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 2169
    iget-object p0, p0, Lcom/kakaogame/databinding/KakaoGameProtectedUserPopupBinding;->kakaoGameProtectedPopupViewBack:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method private static final showAgreement$lambda$24$lambda$23$lambda$20(Lcom/kakaogame/databinding/KakaoGameProtectedUserUnregisterAgreementBinding;Lcom/kakaogame/auth/view/PunishedUserDialog;Lcom/kakaogame/databinding/KakaoGameProtectedUserPopupBinding;Landroid/view/View;)V
    .locals 0

    .line 2299
    iget-object p0, p0, Lcom/kakaogame/databinding/KakaoGameProtectedUserUnregisterAgreementBinding;->kakaoGameProtectedPopupCheckBoxOn:Landroid/widget/ImageView;

    const/4 p3, 0x0

    invoke-virtual {p0, p3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2309
    iget-object p0, p2, Lcom/kakaogame/databinding/KakaoGameProtectedUserPopupBinding;->kakaoGameProtectedPopupConfirm:Lcom/kakaogame/ui/font/NotoSansButton;

    const-string p2, "kakaoGameProtectedPopupConfirm"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p2, 0x1

    invoke-direct {p1, p0, p2}, Lcom/kakaogame/auth/view/PunishedUserDialog;->setEnable(Lcom/kakaogame/ui/font/NotoSansButton;Z)V

    return-void

    .array-data 1
    .end array-data
.end method

.method private static final showAgreement$lambda$24$lambda$23$lambda$21(Lcom/kakaogame/databinding/KakaoGameProtectedUserUnregisterAgreementBinding;Lcom/kakaogame/auth/view/PunishedUserDialog;Lcom/kakaogame/databinding/KakaoGameProtectedUserPopupBinding;Landroid/view/View;)V
    .locals 0

    .line 2349
    iget-object p0, p0, Lcom/kakaogame/databinding/KakaoGameProtectedUserUnregisterAgreementBinding;->kakaoGameProtectedPopupCheckBoxOn:Landroid/widget/ImageView;

    const/16 p3, 0x8

    invoke-virtual {p0, p3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2359
    iget-object p0, p2, Lcom/kakaogame/databinding/KakaoGameProtectedUserPopupBinding;->kakaoGameProtectedPopupConfirm:Lcom/kakaogame/ui/font/NotoSansButton;

    const-string p2, "kakaoGameProtectedPopupConfirm"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/kakaogame/auth/view/PunishedUserDialog;->setEnable(Lcom/kakaogame/ui/font/NotoSansButton;Z)V

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method private static final showAgreement$lambda$24$lambda$23$lambda$22(Lcom/kakaogame/auth/view/PunishedUserDialog;Landroid/view/View;)V
    .locals 0

    .line 2399
    sget-object p1, Lcom/kakaogame/auth/view/PunishedUserDialog$ViewType;->AGREEMENT_DETAIL:Lcom/kakaogame/auth/view/PunishedUserDialog$ViewType;

    invoke-direct {p0, p1}, Lcom/kakaogame/auth/view/PunishedUserDialog;->selectView(Lcom/kakaogame/auth/view/PunishedUserDialog$ViewType;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method private final showAgreementDetail()V
    .locals 7

    const/4 v0, 0x1

    .line 2519
    iput-boolean v0, p0, Lcom/kakaogame/auth/view/PunishedUserDialog;->viewSizeChanged:Z

    .line 2529
    iget-object v1, p0, Lcom/kakaogame/auth/view/PunishedUserDialog;->activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/kakaogame/R$dimen;->sdk_2nd_protected_user_popup_web_height:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 2539
    iget-object v2, p0, Lcom/kakaogame/auth/view/PunishedUserDialog;->binding:Lcom/kakaogame/databinding/KakaoGameProtectedUserPopupBinding;

    .line 2549
    iget-object v3, p0, Lcom/kakaogame/auth/view/PunishedUserDialog;->activity:Landroid/app/Activity;

    check-cast v3, Landroid/content/Context;

    invoke-static {v3}, Lcom/kakaogame/util/DisplayUtil;->getDisplayHeight(Landroid/content/Context;)I

    move-result v3

    if-ge v1, v3, :cond_0

    goto :goto_0

    .line 2579
    :cond_0
    iget-object v1, p0, Lcom/kakaogame/auth/view/PunishedUserDialog;->activity:Landroid/app/Activity;

    check-cast v1, Landroid/content/Context;

    invoke-static {v1}, Lcom/kakaogame/util/DisplayUtil;->getDisplayHeight(Landroid/content/Context;)I

    move-result v1

    int-to-double v3, v1

    const-wide v5, 0x3feeb851eb851eb8L    # 0.96

    mul-double/2addr v3, v5

    double-to-int v1, v3

    :goto_0
    const/4 v3, 0x2

    new-array v3, v3, [I

    .line 2599
    iget-object v4, v2, Lcom/kakaogame/databinding/KakaoGameProtectedUserPopupBinding;->kakaoGameProtectedPopupViewBack:Landroid/widget/RelativeLayout;

    invoke-virtual {v4}, Landroid/widget/RelativeLayout;->getMeasuredHeight()I

    move-result v4

    const/4 v5, 0x0

    aput v4, v3, v5

    aput v1, v3, v0

    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v1

    .line 2609
    new-instance v3, Lcom/kakaogame/auth/view/PunishedUserDialog$$ExternalSyntheticLambda12;

    invoke-direct {v3, v2}, Lcom/kakaogame/auth/view/PunishedUserDialog$$ExternalSyntheticLambda12;-><init>(Lcom/kakaogame/databinding/KakaoGameProtectedUserPopupBinding;)V

    invoke-virtual {v1, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    const-wide/16 v3, 0x1f4

    .line 2669
    invoke-virtual {v1, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 2679
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    .line 2699
    iget-object v1, v2, Lcom/kakaogame/databinding/KakaoGameProtectedUserPopupBinding;->kakaoGameProtectedButtonLayout:Landroid/widget/RelativeLayout;

    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 2709
    iget-object v1, v2, Lcom/kakaogame/databinding/KakaoGameProtectedUserPopupBinding;->kakaoGameProtectedPopupClose:Lcom/kakaogame/ui/font/NotoSansButton;

    invoke-virtual {v1, v5}, Lcom/kakaogame/ui/font/NotoSansButton;->setVisibility(I)V

    .line 2719
    iget-object v1, v2, Lcom/kakaogame/databinding/KakaoGameProtectedUserPopupBinding;->webView:Lcom/kakaogame/databinding/KakaoGameProtectedUserWebviewBinding;

    invoke-virtual {v1}, Lcom/kakaogame/databinding/KakaoGameProtectedUserWebviewBinding;->getRoot()Landroid/widget/RelativeLayout;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 2739
    iget-object v1, v2, Lcom/kakaogame/databinding/KakaoGameProtectedUserPopupBinding;->webView:Lcom/kakaogame/databinding/KakaoGameProtectedUserWebviewBinding;

    invoke-virtual {v1}, Lcom/kakaogame/databinding/KakaoGameProtectedUserWebviewBinding;->getRoot()Landroid/widget/RelativeLayout;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-static {v1}, Lcom/kakaogame/databinding/KakaoGameProtectedUserWebviewBinding;->bind(Landroid/view/View;)Lcom/kakaogame/databinding/KakaoGameProtectedUserWebviewBinding;

    move-result-object v1

    const v3, -0x2242107c

    invoke-static {v3}, Lcom/liapp/y;->״دش۲ݮ(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2759
    iget-object v3, v1, Lcom/kakaogame/databinding/KakaoGameProtectedUserWebviewBinding;->webContent:Landroid/webkit/WebView;

    invoke-virtual {v3}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/webkit/WebSettings;->setMixedContentMode(I)V

    .line 2769
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v3

    .line 2779
    invoke-virtual {v3, v0}, Landroid/webkit/CookieManager;->setAcceptCookie(Z)V

    .line 2789
    iget-object v4, v1, Lcom/kakaogame/databinding/KakaoGameProtectedUserWebviewBinding;->webContent:Landroid/webkit/WebView;

    invoke-virtual {v3, v4, v0}, Landroid/webkit/CookieManager;->setAcceptThirdPartyCookies(Landroid/webkit/WebView;Z)V

    .line 2809
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/kakaogame/infodesk/InfodeskHelper;->INSTANCE:Lcom/kakaogame/infodesk/InfodeskHelper;

    invoke-virtual {v3}, Lcom/kakaogame/infodesk/InfodeskHelper;->getUnregisterAgreementUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const v3, -0x4519b6cf

    invoke-static {v3}, Lcom/liapp/y;->ڳݬ٬ۮݪ(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/kakaogame/KGSystem;->getCountryCode()Ljava/lang/String;

    move-result-object v3

    const v4, 0x6d0bd780

    invoke-static {v4}, Lcom/liapp/y;->ٱڳܴڭܩ(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    if-eqz v3, :cond_1

    sget-object v6, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v3, v6}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    move-object v3, v5

    :goto_1
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const v3, -0x4519b567

    invoke-static {v3}, Lcom/liapp/y;->ڳݬ٬ۮݪ(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/kakaogame/KGSystem;->getLanguageCode()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    sget-object v5, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v3, v5}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_2
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2819
    new-instance v3, Lcom/kakaogame/auth/view/PunishedUserDialog$WebViewContainerImpl;

    iget-object v4, p0, Lcom/kakaogame/auth/view/PunishedUserDialog;->activity:Landroid/app/Activity;

    iget-object v5, v1, Lcom/kakaogame/databinding/KakaoGameProtectedUserWebviewBinding;->webContent:Landroid/webkit/WebView;

    const v6, 0x33627e53

    invoke-static {v6}, Lcom/liapp/y;->ׯ״ٲ֬ب(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v3, p0, v4, v5}, Lcom/kakaogame/auth/view/PunishedUserDialog$WebViewContainerImpl;-><init>(Lcom/kakaogame/auth/view/PunishedUserDialog;Landroid/app/Activity;Landroid/webkit/WebView;)V

    .line 2829
    iget-object v4, p0, Lcom/kakaogame/auth/view/PunishedUserDialog;->activity:Landroid/app/Activity;

    check-cast v4, Landroid/content/Context;

    invoke-virtual {v3, v4, v0}, Lcom/kakaogame/auth/view/PunishedUserDialog$WebViewContainerImpl;->initCookies(Landroid/content/Context;Ljava/lang/String;)V

    .line 2849
    iget-object v1, v1, Lcom/kakaogame/databinding/KakaoGameProtectedUserWebviewBinding;->webContent:Landroid/webkit/WebView;

    invoke-virtual {v1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 2879
    iget-object v0, v2, Lcom/kakaogame/databinding/KakaoGameProtectedUserPopupBinding;->kakaoGameProtectedPopupTitle:Lcom/kakaogame/ui/font/NotoSansTextView;

    iget-object v1, p0, Lcom/kakaogame/auth/view/PunishedUserDialog;->activity:Landroid/app/Activity;

    check-cast v1, Landroid/content/Context;

    sget v3, Lcom/kakaogame/R$string;->kakao_game_sdk_protected_user_unregister_agreement_detail_title:I

    invoke-static {v1, v3}, Lcom/kakaogame/util/ResourceUtil;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/kakaogame/ui/font/StyleTextKt;->getBoldText(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Lcom/kakaogame/ui/font/NotoSansTextView;->setText(Ljava/lang/CharSequence;)V

    .line 2889
    iget-object v0, v2, Lcom/kakaogame/databinding/KakaoGameProtectedUserPopupBinding;->kakaoGameProtectedPopupClose:Lcom/kakaogame/ui/font/NotoSansButton;

    iget-object v1, p0, Lcom/kakaogame/auth/view/PunishedUserDialog;->activity:Landroid/app/Activity;

    check-cast v1, Landroid/content/Context;

    sget v3, Lcom/kakaogame/R$string;->kakao_game_sdk_protected_user_unregister_confirm:I

    invoke-static {v1, v3}, Lcom/kakaogame/util/ResourceUtil;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/kakaogame/ui/font/StyleTextKt;->getBoldText(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Lcom/kakaogame/ui/font/NotoSansButton;->setText(Ljava/lang/CharSequence;)V

    .line 2899
    iget-object v0, v2, Lcom/kakaogame/databinding/KakaoGameProtectedUserPopupBinding;->kakaoGameProtectedPopupClose:Lcom/kakaogame/ui/font/NotoSansButton;

    new-instance v1, Lcom/kakaogame/auth/view/PunishedUserDialog$$ExternalSyntheticLambda13;

    invoke-direct {v1, p0}, Lcom/kakaogame/auth/view/PunishedUserDialog$$ExternalSyntheticLambda13;-><init>(Lcom/kakaogame/auth/view/PunishedUserDialog;)V

    invoke-virtual {v0, v1}, Lcom/kakaogame/ui/font/NotoSansButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method private static final showAgreementDetail$lambda$28$lambda$25(Lcom/kakaogame/databinding/KakaoGameProtectedUserPopupBinding;Landroid/animation/ValueAnimator;)V
    .locals 1

    const v0, 0x5d10f027

    invoke-static {v0}, Lcom/liapp/y;->ڴݮگ֮ت(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2619
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    const v0, -0x2244dc24

    invoke-static {v0}, Lcom/liapp/y;->״دش۲ݮ(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 2629
    iget-object v0, p0, Lcom/kakaogame/databinding/KakaoGameProtectedUserPopupBinding;->kakaoGameProtectedPopupViewBack:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 2639
    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 2649
    iget-object p0, p0, Lcom/kakaogame/databinding/KakaoGameProtectedUserPopupBinding;->kakaoGameProtectedPopupViewBack:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method private static final showAgreementDetail$lambda$28$lambda$27(Lcom/kakaogame/auth/view/PunishedUserDialog;Landroid/view/View;)V
    .locals 0

    .line 2909
    iget-object p1, p0, Lcom/kakaogame/auth/view/PunishedUserDialog;->currentView:Lcom/kakaogame/auth/view/PunishedUserDialog$ViewType;

    invoke-direct {p0, p1}, Lcom/kakaogame/auth/view/PunishedUserDialog;->getNextView(Lcom/kakaogame/auth/view/PunishedUserDialog$ViewType;)Lcom/kakaogame/auth/view/PunishedUserDialog$ViewType;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/kakaogame/auth/view/PunishedUserDialog;->selectView(Lcom/kakaogame/auth/view/PunishedUserDialog$ViewType;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method private final showConfirmCode()V
    .locals 5

    .line 2969
    iget-object v0, p0, Lcom/kakaogame/auth/view/PunishedUserDialog;->binding:Lcom/kakaogame/databinding/KakaoGameProtectedUserPopupBinding;

    .line 2979
    iget-object v1, v0, Lcom/kakaogame/databinding/KakaoGameProtectedUserPopupBinding;->kakaoGameProtectedButtonLayout:Landroid/widget/RelativeLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 2989
    iget-object v1, v0, Lcom/kakaogame/databinding/KakaoGameProtectedUserPopupBinding;->kakaoGameProtectedPopupClose:Lcom/kakaogame/ui/font/NotoSansButton;

    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Lcom/kakaogame/ui/font/NotoSansButton;->setVisibility(I)V

    .line 2999
    iget-object v1, v0, Lcom/kakaogame/databinding/KakaoGameProtectedUserPopupBinding;->confirmCodeView:Lcom/kakaogame/databinding/KakaoGameProtectedUserConfirmCodeBinding;

    invoke-virtual {v1}, Lcom/kakaogame/databinding/KakaoGameProtectedUserConfirmCodeBinding;->getRoot()Landroid/widget/RelativeLayout;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 3009
    iget-object v1, v0, Lcom/kakaogame/databinding/KakaoGameProtectedUserPopupBinding;->kakaoGameProtectedPopupConfirm:Lcom/kakaogame/ui/font/NotoSansButton;

    const v3, 0x6d0cc288

    invoke-static {v3}, Lcom/liapp/y;->ٱڳܴڭܩ(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v1, v2}, Lcom/kakaogame/auth/view/PunishedUserDialog;->setEnable(Lcom/kakaogame/ui/font/NotoSansButton;Z)V

    .line 3029
    iget-object v1, p0, Lcom/kakaogame/auth/view/PunishedUserDialog;->activity:Landroid/app/Activity;

    check-cast v1, Landroid/content/Context;

    sget v2, Lcom/kakaogame/R$string;->kakao_game_sdk_protected_user_unregister_confirm_code:I

    invoke-static {v1, v2}, Lcom/kakaogame/util/ResourceUtil;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    .line 3049
    iget-object v2, v0, Lcom/kakaogame/databinding/KakaoGameProtectedUserPopupBinding;->confirmCodeView:Lcom/kakaogame/databinding/KakaoGameProtectedUserConfirmCodeBinding;

    invoke-virtual {v2}, Lcom/kakaogame/databinding/KakaoGameProtectedUserConfirmCodeBinding;->getRoot()Landroid/widget/RelativeLayout;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-static {v2}, Lcom/kakaogame/databinding/KakaoGameProtectedUserConfirmCodeBinding;->bind(Landroid/view/View;)Lcom/kakaogame/databinding/KakaoGameProtectedUserConfirmCodeBinding;

    move-result-object v2

    const v3, -0x2242107c

    invoke-static {v3}, Lcom/liapp/y;->״دش۲ݮ(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3069
    iget-object v3, v2, Lcom/kakaogame/databinding/KakaoGameProtectedUserConfirmCodeBinding;->kakaoGameConfirmCodeInput:Lcom/kakaogame/ui/font/NotoSansEditText;

    const v4, 0x5439d872

    invoke-static {v4}, Lcom/liapp/y;->׳ֳֳ֬د(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Landroid/widget/TextView;

    .line 4639
    new-instance v4, Lcom/kakaogame/auth/view/PunishedUserDialog$showConfirmCode$lambda$42$lambda$41$$inlined$addTextChangedListener$default$1;

    invoke-direct {v4, p0, v0, v1}, Lcom/kakaogame/auth/view/PunishedUserDialog$showConfirmCode$lambda$42$lambda$41$$inlined$addTextChangedListener$default$1;-><init>(Lcom/kakaogame/auth/view/PunishedUserDialog;Lcom/kakaogame/databinding/KakaoGameProtectedUserPopupBinding;Ljava/lang/String;)V

    .line 4649
    check-cast v4, Landroid/text/TextWatcher;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 3129
    iget-object v1, v2, Lcom/kakaogame/databinding/KakaoGameProtectedUserConfirmCodeBinding;->kakaoGameConfirmCodeGuide:Lcom/kakaogame/ui/font/NotoSansTextView;

    new-instance v2, Lcom/kakaogame/auth/view/PunishedUserDialog$$ExternalSyntheticLambda14;

    invoke-direct {v2, p0}, Lcom/kakaogame/auth/view/PunishedUserDialog$$ExternalSyntheticLambda14;-><init>(Lcom/kakaogame/auth/view/PunishedUserDialog;)V

    invoke-static {v2}, Lcom/kakaogame/ui/font/StyleTextKt;->styleText(Lkotlin/jvm/functions/Function1;)Lcom/kakaogame/util/json/JSONArray;

    move-result-object v2

    .line 3259
    invoke-static {v2}, Lcom/kakaogame/ui/font/StyleTextKt;->getString(Lcom/kakaogame/util/json/JSONArray;)Landroid/text/SpannableStringBuilder;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    .line 3129
    invoke-virtual {v1, v2}, Lcom/kakaogame/ui/font/NotoSansTextView;->setText(Ljava/lang/CharSequence;)V

    .line 3289
    iget-object v1, v0, Lcom/kakaogame/databinding/KakaoGameProtectedUserPopupBinding;->kakaoGameProtectedPopupTitle:Lcom/kakaogame/ui/font/NotoSansTextView;

    iget-object v2, p0, Lcom/kakaogame/auth/view/PunishedUserDialog;->activity:Landroid/app/Activity;

    check-cast v2, Landroid/content/Context;

    sget v3, Lcom/kakaogame/R$string;->kakao_game_sdk_protected_user_unregister_title:I

    invoke-static {v2, v3}, Lcom/kakaogame/util/ResourceUtil;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/kakaogame/ui/font/StyleTextKt;->getBoldText(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Lcom/kakaogame/ui/font/NotoSansTextView;->setText(Ljava/lang/CharSequence;)V

    .line 3299
    iget-object v1, v0, Lcom/kakaogame/databinding/KakaoGameProtectedUserPopupBinding;->kakaoGameProtectedPopupCancel:Lcom/kakaogame/ui/font/NotoSansButton;

    iget-object v2, p0, Lcom/kakaogame/auth/view/PunishedUserDialog;->activity:Landroid/app/Activity;

    check-cast v2, Landroid/content/Context;

    sget v3, Lcom/kakaogame/R$string;->kakao_game_sdk_protected_user_unregister_cancel:I

    invoke-static {v2, v3}, Lcom/kakaogame/util/ResourceUtil;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/kakaogame/ui/font/StyleTextKt;->getBoldText(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Lcom/kakaogame/ui/font/NotoSansButton;->setText(Ljava/lang/CharSequence;)V

    .line 3309
    iget-object v0, v0, Lcom/kakaogame/databinding/KakaoGameProtectedUserPopupBinding;->kakaoGameProtectedPopupConfirm:Lcom/kakaogame/ui/font/NotoSansButton;

    iget-object v1, p0, Lcom/kakaogame/auth/view/PunishedUserDialog;->activity:Landroid/app/Activity;

    check-cast v1, Landroid/content/Context;

    sget v2, Lcom/kakaogame/R$string;->kakao_game_sdk_protected_user_unregister_confirm:I

    invoke-static {v1, v2}, Lcom/kakaogame/util/ResourceUtil;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/kakaogame/ui/font/StyleTextKt;->getBoldText(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Lcom/kakaogame/ui/font/NotoSansButton;->setText(Ljava/lang/CharSequence;)V

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method private static final showConfirmCode$lambda$42$lambda$41$lambda$40(Lcom/kakaogame/auth/view/PunishedUserDialog;Lcom/kakaogame/ui/font/StyleTextBuilder;)Lkotlin/Unit;
    .locals 1

    const v0, -0x22422ea4

    invoke-static {v0}, Lcom/liapp/y;->״دش۲ݮ(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3139
    new-instance v0, Lcom/kakaogame/auth/view/PunishedUserDialog$$ExternalSyntheticLambda28;

    invoke-direct {v0, p0}, Lcom/kakaogame/auth/view/PunishedUserDialog$$ExternalSyntheticLambda28;-><init>(Lcom/kakaogame/auth/view/PunishedUserDialog;)V

    invoke-virtual {p1, v0}, Lcom/kakaogame/ui/font/StyleTextBuilder;->string(Lkotlin/jvm/functions/Function1;)Z

    .line 3179
    new-instance v0, Lcom/kakaogame/auth/view/PunishedUserDialog$$ExternalSyntheticLambda29;

    invoke-direct {v0, p0}, Lcom/kakaogame/auth/view/PunishedUserDialog$$ExternalSyntheticLambda29;-><init>(Lcom/kakaogame/auth/view/PunishedUserDialog;)V

    invoke-virtual {p1, v0}, Lcom/kakaogame/ui/font/StyleTextBuilder;->string(Lkotlin/jvm/functions/Function1;)Z

    .line 3219
    new-instance v0, Lcom/kakaogame/auth/view/PunishedUserDialog$$ExternalSyntheticLambda30;

    invoke-direct {v0, p0}, Lcom/kakaogame/auth/view/PunishedUserDialog$$ExternalSyntheticLambda30;-><init>(Lcom/kakaogame/auth/view/PunishedUserDialog;)V

    invoke-virtual {p1, v0}, Lcom/kakaogame/ui/font/StyleTextBuilder;->string(Lkotlin/jvm/functions/Function1;)Z

    .line 3259
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method private static final showConfirmCode$lambda$42$lambda$41$lambda$40$lambda$33(Lcom/kakaogame/auth/view/PunishedUserDialog;Lcom/kakaogame/ui/font/TextBuilder;)Lkotlin/Unit;
    .locals 1

    const v0, 0x5d10c91f

    invoke-static {v0}, Lcom/liapp/y;->ڴݮگ֮ت(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3149
    new-instance v0, Lcom/kakaogame/auth/view/PunishedUserDialog$$ExternalSyntheticLambda22;

    invoke-direct {v0, p0}, Lcom/kakaogame/auth/view/PunishedUserDialog$$ExternalSyntheticLambda22;-><init>(Lcom/kakaogame/auth/view/PunishedUserDialog;)V

    invoke-virtual {p1, v0}, Lcom/kakaogame/ui/font/TextBuilder;->text(Lkotlin/jvm/functions/Function0;)V

    .line 3159
    new-instance p0, Lcom/kakaogame/auth/view/PunishedUserDialog$$ExternalSyntheticLambda24;

    invoke-direct {p0}, Lcom/kakaogame/auth/view/PunishedUserDialog$$ExternalSyntheticLambda24;-><init>()V

    invoke-virtual {p1, p0}, Lcom/kakaogame/ui/font/TextBuilder;->styles(Lkotlin/jvm/functions/Function0;)Z

    .line 3169
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method private static final showConfirmCode$lambda$42$lambda$41$lambda$40$lambda$33$lambda$31(Lcom/kakaogame/auth/view/PunishedUserDialog;)Ljava/lang/String;
    .locals 1

    .line 3149
    iget-object p0, p0, Lcom/kakaogame/auth/view/PunishedUserDialog;->activity:Landroid/app/Activity;

    check-cast p0, Landroid/content/Context;

    sget v0, Lcom/kakaogame/R$string;->kakao_game_sdk_protected_user_confirm_code_guide_pre:I

    invoke-static {p0, v0}, Lcom/kakaogame/util/ResourceUtil;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method private static final showConfirmCode$lambda$42$lambda$41$lambda$40$lambda$33$lambda$32()[Ljava/lang/String;
    .locals 1

    const v0, 0x2255e96e

    invoke-static {v0}, Lcom/liapp/y;->ֲֳگܱޭ(I)Ljava/lang/String;

    move-result-object v0

    .line 3159
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    return-object v0

    .array-data 1
    .end array-data
.end method

.method private static final showConfirmCode$lambda$42$lambda$41$lambda$40$lambda$36(Lcom/kakaogame/auth/view/PunishedUserDialog;Lcom/kakaogame/ui/font/TextBuilder;)Lkotlin/Unit;
    .locals 1

    const v0, 0x5d10c91f

    invoke-static {v0}, Lcom/liapp/y;->ڴݮگ֮ت(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3189
    new-instance v0, Lcom/kakaogame/auth/view/PunishedUserDialog$$ExternalSyntheticLambda17;

    invoke-direct {v0, p0}, Lcom/kakaogame/auth/view/PunishedUserDialog$$ExternalSyntheticLambda17;-><init>(Lcom/kakaogame/auth/view/PunishedUserDialog;)V

    invoke-virtual {p1, v0}, Lcom/kakaogame/ui/font/TextBuilder;->text(Lkotlin/jvm/functions/Function0;)V

    .line 3199
    new-instance p0, Lcom/kakaogame/auth/view/PunishedUserDialog$$ExternalSyntheticLambda18;

    invoke-direct {p0}, Lcom/kakaogame/auth/view/PunishedUserDialog$$ExternalSyntheticLambda18;-><init>()V

    invoke-virtual {p1, p0}, Lcom/kakaogame/ui/font/TextBuilder;->styles(Lkotlin/jvm/functions/Function0;)Z

    .line 3209
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method private static final showConfirmCode$lambda$42$lambda$41$lambda$40$lambda$36$lambda$34(Lcom/kakaogame/auth/view/PunishedUserDialog;)Ljava/lang/String;
    .locals 1

    .line 3189
    iget-object p0, p0, Lcom/kakaogame/auth/view/PunishedUserDialog;->activity:Landroid/app/Activity;

    check-cast p0, Landroid/content/Context;

    sget v0, Lcom/kakaogame/R$string;->kakao_game_sdk_protected_user_unregister_confirm_code_string:I

    invoke-static {p0, v0}, Lcom/kakaogame/util/ResourceUtil;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method private static final showConfirmCode$lambda$42$lambda$41$lambda$40$lambda$36$lambda$35()[Ljava/lang/String;
    .locals 1

    const v0, -0x224212dc

    invoke-static {v0}, Lcom/liapp/y;->״دش۲ݮ(I)Ljava/lang/String;

    move-result-object v0

    .line 3199
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    return-object v0

    .array-data 1
    .end array-data
.end method

.method private static final showConfirmCode$lambda$42$lambda$41$lambda$40$lambda$39(Lcom/kakaogame/auth/view/PunishedUserDialog;Lcom/kakaogame/ui/font/TextBuilder;)Lkotlin/Unit;
    .locals 1

    const v0, 0x5d10c91f

    invoke-static {v0}, Lcom/liapp/y;->ڴݮگ֮ت(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3229
    new-instance v0, Lcom/kakaogame/auth/view/PunishedUserDialog$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0}, Lcom/kakaogame/auth/view/PunishedUserDialog$$ExternalSyntheticLambda4;-><init>(Lcom/kakaogame/auth/view/PunishedUserDialog;)V

    invoke-virtual {p1, v0}, Lcom/kakaogame/ui/font/TextBuilder;->text(Lkotlin/jvm/functions/Function0;)V

    .line 3239
    new-instance p0, Lcom/kakaogame/auth/view/PunishedUserDialog$$ExternalSyntheticLambda5;

    invoke-direct {p0}, Lcom/kakaogame/auth/view/PunishedUserDialog$$ExternalSyntheticLambda5;-><init>()V

    invoke-virtual {p1, p0}, Lcom/kakaogame/ui/font/TextBuilder;->styles(Lkotlin/jvm/functions/Function0;)Z

    .line 3249
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method private static final showConfirmCode$lambda$42$lambda$41$lambda$40$lambda$39$lambda$37(Lcom/kakaogame/auth/view/PunishedUserDialog;)Ljava/lang/String;
    .locals 1

    .line 3229
    iget-object p0, p0, Lcom/kakaogame/auth/view/PunishedUserDialog;->activity:Landroid/app/Activity;

    check-cast p0, Landroid/content/Context;

    sget v0, Lcom/kakaogame/R$string;->kakao_game_sdk_protected_user_confirm_code_guide_post:I

    invoke-static {p0, v0}, Lcom/kakaogame/util/ResourceUtil;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method private static final showConfirmCode$lambda$42$lambda$41$lambda$40$lambda$39$lambda$38()[Ljava/lang/String;
    .locals 1

    const v0, 0x2255e96e

    invoke-static {v0}, Lcom/liapp/y;->ֲֳگܱޭ(I)Ljava/lang/String;

    move-result-object v0

    .line 3239
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    return-object v0

    .array-data 1
    .end array-data
.end method

.method private final showNotice()V
    .locals 4

    .line 1599
    iget-object v0, p0, Lcom/kakaogame/auth/view/PunishedUserDialog;->binding:Lcom/kakaogame/databinding/KakaoGameProtectedUserPopupBinding;

    .line 1609
    iget-object v1, v0, Lcom/kakaogame/databinding/KakaoGameProtectedUserPopupBinding;->kakaoGameProtectedButtonLayout:Landroid/widget/RelativeLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1619
    iget-object v1, v0, Lcom/kakaogame/databinding/KakaoGameProtectedUserPopupBinding;->kakaoGameProtectedPopupClose:Lcom/kakaogame/ui/font/NotoSansButton;

    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Lcom/kakaogame/ui/font/NotoSansButton;->setVisibility(I)V

    .line 1629
    iget-object v1, v0, Lcom/kakaogame/databinding/KakaoGameProtectedUserPopupBinding;->restrictGuideView:Lcom/kakaogame/databinding/KakaoGameProtectedUserRestrictGuideBinding;

    invoke-virtual {v1}, Lcom/kakaogame/databinding/KakaoGameProtectedUserRestrictGuideBinding;->getRoot()Landroid/widget/RelativeLayout;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1649
    iget-object v1, v0, Lcom/kakaogame/databinding/KakaoGameProtectedUserPopupBinding;->restrictGuideView:Lcom/kakaogame/databinding/KakaoGameProtectedUserRestrictGuideBinding;

    invoke-virtual {v1}, Lcom/kakaogame/databinding/KakaoGameProtectedUserRestrictGuideBinding;->getRoot()Landroid/widget/RelativeLayout;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-static {v1}, Lcom/kakaogame/databinding/KakaoGameProtectedUserRestrictGuideBinding;->bind(Landroid/view/View;)Lcom/kakaogame/databinding/KakaoGameProtectedUserRestrictGuideBinding;

    move-result-object v1

    const v2, -0x2242107c

    invoke-static {v2}, Lcom/liapp/y;->״دش۲ݮ(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1669
    iget-object v2, v1, Lcom/kakaogame/databinding/KakaoGameProtectedUserRestrictGuideBinding;->kakaoGameProtectedPopupDetailReasonDump:Lcom/kakaogame/ui/font/NotoSansTextView;

    iget-object v3, p0, Lcom/kakaogame/auth/view/PunishedUserDialog;->message:Ljava/lang/String;

    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Lcom/kakaogame/ui/font/NotoSansTextView;->setText(Ljava/lang/CharSequence;)V

    .line 1689
    iget-object v2, v1, Lcom/kakaogame/databinding/KakaoGameProtectedUserRestrictGuideBinding;->kakaoGameProtectedPopupDetailReasonDump:Lcom/kakaogame/ui/font/NotoSansTextView;

    new-instance v3, Lcom/kakaogame/auth/view/PunishedUserDialog$$ExternalSyntheticLambda15;

    invoke-direct {v3, v1, p0, v0}, Lcom/kakaogame/auth/view/PunishedUserDialog$$ExternalSyntheticLambda15;-><init>(Lcom/kakaogame/databinding/KakaoGameProtectedUserRestrictGuideBinding;Lcom/kakaogame/auth/view/PunishedUserDialog;Lcom/kakaogame/databinding/KakaoGameProtectedUserPopupBinding;)V

    invoke-virtual {v2, v3}, Lcom/kakaogame/ui/font/NotoSansTextView;->post(Ljava/lang/Runnable;)Z

    .line 1789
    iget-object v2, v1, Lcom/kakaogame/databinding/KakaoGameProtectedUserRestrictGuideBinding;->kakaoGameProtectedPopupContent:Lcom/kakaogame/ui/font/NotoSansTextView;

    new-instance v3, Lcom/kakaogame/auth/view/PunishedUserDialog$$ExternalSyntheticLambda16;

    invoke-direct {v3, p0}, Lcom/kakaogame/auth/view/PunishedUserDialog$$ExternalSyntheticLambda16;-><init>(Lcom/kakaogame/auth/view/PunishedUserDialog;)V

    invoke-static {v3}, Lcom/kakaogame/ui/font/StyleTextKt;->styleText(Lkotlin/jvm/functions/Function1;)Lcom/kakaogame/util/json/JSONArray;

    move-result-object v3

    .line 1919
    invoke-static {v3}, Lcom/kakaogame/ui/font/StyleTextKt;->getString(Lcom/kakaogame/util/json/JSONArray;)Landroid/text/SpannableStringBuilder;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    .line 1789
    invoke-virtual {v2, v3}, Lcom/kakaogame/ui/font/NotoSansTextView;->setText(Ljava/lang/CharSequence;)V

    .line 1929
    iget-object v1, v1, Lcom/kakaogame/databinding/KakaoGameProtectedUserRestrictGuideBinding;->kakaoGameProtectedPopupDetailTerm:Lcom/kakaogame/ui/font/NotoSansTextView;

    iget-object v2, p0, Lcom/kakaogame/auth/view/PunishedUserDialog;->term:Ljava/lang/String;

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Lcom/kakaogame/ui/font/NotoSansTextView;->setText(Ljava/lang/CharSequence;)V

    .line 1959
    iget-object v1, v0, Lcom/kakaogame/databinding/KakaoGameProtectedUserPopupBinding;->kakaoGameProtectedPopupTitle:Lcom/kakaogame/ui/font/NotoSansTextView;

    iget-object v2, p0, Lcom/kakaogame/auth/view/PunishedUserDialog;->activity:Landroid/app/Activity;

    check-cast v2, Landroid/content/Context;

    sget v3, Lcom/kakaogame/R$string;->kakao_game_sdk_protected_user_reason_view_title:I

    invoke-static {v2, v3}, Lcom/kakaogame/util/ResourceUtil;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/kakaogame/ui/font/StyleTextKt;->getBoldText(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Lcom/kakaogame/ui/font/NotoSansTextView;->setText(Ljava/lang/CharSequence;)V

    .line 1969
    iget-object v1, v0, Lcom/kakaogame/databinding/KakaoGameProtectedUserPopupBinding;->kakaoGameProtectedPopupCancel:Lcom/kakaogame/ui/font/NotoSansButton;

    iget-object v2, p0, Lcom/kakaogame/auth/view/PunishedUserDialog;->activity:Landroid/app/Activity;

    check-cast v2, Landroid/content/Context;

    sget v3, Lcom/kakaogame/R$string;->kakao_game_sdk_protected_user_reason_view_left_btn:I

    invoke-static {v2, v3}, Lcom/kakaogame/util/ResourceUtil;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/kakaogame/ui/font/StyleTextKt;->getBoldText(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Lcom/kakaogame/ui/font/NotoSansButton;->setText(Ljava/lang/CharSequence;)V

    .line 1979
    iget-object v0, v0, Lcom/kakaogame/databinding/KakaoGameProtectedUserPopupBinding;->kakaoGameProtectedPopupConfirm:Lcom/kakaogame/ui/font/NotoSansButton;

    iget-object v1, p0, Lcom/kakaogame/auth/view/PunishedUserDialog;->activity:Landroid/app/Activity;

    check-cast v1, Landroid/content/Context;

    sget v2, Lcom/kakaogame/R$string;->kakao_game_sdk_protected_user_reason_view_right_btn:I

    invoke-static {v1, v2}, Lcom/kakaogame/util/ResourceUtil;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/kakaogame/ui/font/StyleTextKt;->getBoldText(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Lcom/kakaogame/ui/font/NotoSansButton;->setText(Ljava/lang/CharSequence;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method private static final showNotice$lambda$18$lambda$17$lambda$16(Lcom/kakaogame/auth/view/PunishedUserDialog;Lcom/kakaogame/ui/font/StyleTextBuilder;)Lkotlin/Unit;
    .locals 1

    const v0, -0x22422ea4

    invoke-static {v0}, Lcom/liapp/y;->״دش۲ݮ(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1799
    new-instance v0, Lcom/kakaogame/auth/view/PunishedUserDialog$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/kakaogame/auth/view/PunishedUserDialog$$ExternalSyntheticLambda1;-><init>(Lcom/kakaogame/auth/view/PunishedUserDialog;)V

    invoke-virtual {p1, v0}, Lcom/kakaogame/ui/font/StyleTextBuilder;->string(Lkotlin/jvm/functions/Function1;)Z

    .line 1839
    new-instance v0, Lcom/kakaogame/auth/view/PunishedUserDialog$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcom/kakaogame/auth/view/PunishedUserDialog$$ExternalSyntheticLambda2;-><init>(Lcom/kakaogame/auth/view/PunishedUserDialog;)V

    invoke-virtual {p1, v0}, Lcom/kakaogame/ui/font/StyleTextBuilder;->string(Lkotlin/jvm/functions/Function1;)Z

    .line 1879
    new-instance v0, Lcom/kakaogame/auth/view/PunishedUserDialog$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Lcom/kakaogame/auth/view/PunishedUserDialog$$ExternalSyntheticLambda3;-><init>(Lcom/kakaogame/auth/view/PunishedUserDialog;)V

    invoke-virtual {p1, v0}, Lcom/kakaogame/ui/font/StyleTextBuilder;->string(Lkotlin/jvm/functions/Function1;)Z

    .line 1919
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method private static final showNotice$lambda$18$lambda$17$lambda$16$lambda$12(Lcom/kakaogame/auth/view/PunishedUserDialog;Lcom/kakaogame/ui/font/TextBuilder;)Lkotlin/Unit;
    .locals 1

    const v0, 0x5d10c91f

    invoke-static {v0}, Lcom/liapp/y;->ڴݮگ֮ت(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1849
    new-instance v0, Lcom/kakaogame/auth/view/PunishedUserDialog$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/kakaogame/auth/view/PunishedUserDialog$$ExternalSyntheticLambda0;-><init>(Lcom/kakaogame/auth/view/PunishedUserDialog;)V

    invoke-virtual {p1, v0}, Lcom/kakaogame/ui/font/TextBuilder;->text(Lkotlin/jvm/functions/Function0;)V

    .line 1859
    new-instance p0, Lcom/kakaogame/auth/view/PunishedUserDialog$$ExternalSyntheticLambda11;

    invoke-direct {p0}, Lcom/kakaogame/auth/view/PunishedUserDialog$$ExternalSyntheticLambda11;-><init>()V

    invoke-virtual {p1, p0}, Lcom/kakaogame/ui/font/TextBuilder;->styles(Lkotlin/jvm/functions/Function0;)Z

    .line 1869
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method private static final showNotice$lambda$18$lambda$17$lambda$16$lambda$12$lambda$10(Lcom/kakaogame/auth/view/PunishedUserDialog;)Ljava/lang/String;
    .locals 0

    .line 1849
    iget-object p0, p0, Lcom/kakaogame/auth/view/PunishedUserDialog;->userId:Ljava/lang/String;

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method private static final showNotice$lambda$18$lambda$17$lambda$16$lambda$12$lambda$11()[Ljava/lang/String;
    .locals 2

    const v0, 0x543e44ca

    invoke-static {v0}, Lcom/liapp/y;->׳ֳֳ֬د(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7d70db5d    # 2.0009607E37f

    invoke-static {v1}, Lcom/liapp/y;->حֲݴܳޯ(I)Ljava/lang/String;

    move-result-object v1

    .line 1859
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method private static final showNotice$lambda$18$lambda$17$lambda$16$lambda$15(Lcom/kakaogame/auth/view/PunishedUserDialog;Lcom/kakaogame/ui/font/TextBuilder;)Lkotlin/Unit;
    .locals 1

    const v0, 0x5d10c91f

    invoke-static {v0}, Lcom/liapp/y;->ڴݮگ֮ت(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1889
    new-instance v0, Lcom/kakaogame/auth/view/PunishedUserDialog$$ExternalSyntheticLambda7;

    invoke-direct {v0, p0}, Lcom/kakaogame/auth/view/PunishedUserDialog$$ExternalSyntheticLambda7;-><init>(Lcom/kakaogame/auth/view/PunishedUserDialog;)V

    invoke-virtual {p1, v0}, Lcom/kakaogame/ui/font/TextBuilder;->text(Lkotlin/jvm/functions/Function0;)V

    .line 1899
    new-instance p0, Lcom/kakaogame/auth/view/PunishedUserDialog$$ExternalSyntheticLambda8;

    invoke-direct {p0}, Lcom/kakaogame/auth/view/PunishedUserDialog$$ExternalSyntheticLambda8;-><init>()V

    invoke-virtual {p1, p0}, Lcom/kakaogame/ui/font/TextBuilder;->styles(Lkotlin/jvm/functions/Function0;)Z

    .line 1909
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method private static final showNotice$lambda$18$lambda$17$lambda$16$lambda$15$lambda$13(Lcom/kakaogame/auth/view/PunishedUserDialog;)Ljava/lang/String;
    .locals 1

    .line 1889
    iget-object p0, p0, Lcom/kakaogame/auth/view/PunishedUserDialog;->activity:Landroid/app/Activity;

    check-cast p0, Landroid/content/Context;

    sget v0, Lcom/kakaogame/R$string;->kakao_game_sdk_protected_user_reason_view_content_post:I

    invoke-static {p0, v0}, Lcom/kakaogame/util/ResourceUtil;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method private static final showNotice$lambda$18$lambda$17$lambda$16$lambda$15$lambda$14()[Ljava/lang/String;
    .locals 1

    const v0, 0x7d70db5d    # 2.0009607E37f

    invoke-static {v0}, Lcom/liapp/y;->حֲݴܳޯ(I)Ljava/lang/String;

    move-result-object v0

    .line 1899
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    return-object v0

    .array-data 1
    .end array-data
.end method

.method private static final showNotice$lambda$18$lambda$17$lambda$16$lambda$9(Lcom/kakaogame/auth/view/PunishedUserDialog;Lcom/kakaogame/ui/font/TextBuilder;)Lkotlin/Unit;
    .locals 1

    const v0, 0x5d10c91f

    invoke-static {v0}, Lcom/liapp/y;->ڴݮگ֮ت(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1809
    new-instance v0, Lcom/kakaogame/auth/view/PunishedUserDialog$$ExternalSyntheticLambda9;

    invoke-direct {v0, p0}, Lcom/kakaogame/auth/view/PunishedUserDialog$$ExternalSyntheticLambda9;-><init>(Lcom/kakaogame/auth/view/PunishedUserDialog;)V

    invoke-virtual {p1, v0}, Lcom/kakaogame/ui/font/TextBuilder;->text(Lkotlin/jvm/functions/Function0;)V

    .line 1819
    new-instance p0, Lcom/kakaogame/auth/view/PunishedUserDialog$$ExternalSyntheticLambda10;

    invoke-direct {p0}, Lcom/kakaogame/auth/view/PunishedUserDialog$$ExternalSyntheticLambda10;-><init>()V

    invoke-virtual {p1, p0}, Lcom/kakaogame/ui/font/TextBuilder;->styles(Lkotlin/jvm/functions/Function0;)Z

    .line 1829
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method private static final showNotice$lambda$18$lambda$17$lambda$16$lambda$9$lambda$7(Lcom/kakaogame/auth/view/PunishedUserDialog;)Ljava/lang/String;
    .locals 1

    .line 1809
    iget-object p0, p0, Lcom/kakaogame/auth/view/PunishedUserDialog;->activity:Landroid/app/Activity;

    check-cast p0, Landroid/content/Context;

    sget v0, Lcom/kakaogame/R$string;->kakao_game_sdk_protected_user_reason_view_content_pre:I

    invoke-static {p0, v0}, Lcom/kakaogame/util/ResourceUtil;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method private static final showNotice$lambda$18$lambda$17$lambda$16$lambda$9$lambda$8()[Ljava/lang/String;
    .locals 1

    const v0, 0x7d70db5d    # 2.0009607E37f

    invoke-static {v0}, Lcom/liapp/y;->حֲݴܳޯ(I)Ljava/lang/String;

    move-result-object v0

    .line 1819
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    return-object v0

    .array-data 1
    .end array-data
.end method

.method private static final showNotice$lambda$18$lambda$17$lambda$6(Lcom/kakaogame/databinding/KakaoGameProtectedUserRestrictGuideBinding;Lcom/kakaogame/auth/view/PunishedUserDialog;Lcom/kakaogame/databinding/KakaoGameProtectedUserPopupBinding;)V
    .locals 2

    .line 1699
    iget-object v0, p0, Lcom/kakaogame/databinding/KakaoGameProtectedUserRestrictGuideBinding;->kakaoGameProtectedPopupDetailReasonDump:Lcom/kakaogame/ui/font/NotoSansTextView;

    invoke-virtual {v0}, Lcom/kakaogame/ui/font/NotoSansTextView;->getHeight()I

    move-result v0

    iget-object v1, p0, Lcom/kakaogame/databinding/KakaoGameProtectedUserRestrictGuideBinding;->kakaoGameProtectedPopupDetailReason:Lcom/kakaogame/ui/font/NotoSansTextView;

    invoke-virtual {v1}, Lcom/kakaogame/ui/font/NotoSansTextView;->getHeight()I

    move-result v1

    sub-int/2addr v0, v1

    if-lez v0, :cond_0

    const/4 v1, 0x1

    .line 1719
    iput-boolean v1, p1, Lcom/kakaogame/auth/view/PunishedUserDialog;->viewSizeChanged:Z

    .line 1729
    iget-object p2, p2, Lcom/kakaogame/databinding/KakaoGameProtectedUserPopupBinding;->kakaoGameProtectedPopupViewBack:Landroid/widget/RelativeLayout;

    invoke-virtual {p2}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    iget v1, p2, Landroid/view/ViewGroup$LayoutParams;->height:I

    add-int/2addr v1, v0

    iput v1, p2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1739
    iget-object p2, p0, Lcom/kakaogame/databinding/KakaoGameProtectedUserRestrictGuideBinding;->kakaoGameProtectedPopupDetailReasonDump:Lcom/kakaogame/ui/font/NotoSansTextView;

    const/16 v0, 0x8

    invoke-virtual {p2, v0}, Lcom/kakaogame/ui/font/NotoSansTextView;->setVisibility(I)V

    .line 1759
    :cond_0
    iget-object p0, p0, Lcom/kakaogame/databinding/KakaoGameProtectedUserRestrictGuideBinding;->kakaoGameProtectedPopupDetailReason:Lcom/kakaogame/ui/font/NotoSansTextView;

    iget-object p1, p1, Lcom/kakaogame/auth/view/PunishedUserDialog;->message:Ljava/lang/String;

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {p0, p1}, Lcom/kakaogame/ui/font/NotoSansTextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method private final showUnregisterEnd(I)V
    .locals 7

    .line 3669
    iget-object v0, p0, Lcom/kakaogame/auth/view/PunishedUserDialog;->binding:Lcom/kakaogame/databinding/KakaoGameProtectedUserPopupBinding;

    .line 3679
    iget-object v1, v0, Lcom/kakaogame/databinding/KakaoGameProtectedUserPopupBinding;->kakaoGameProtectedButtonLayout:Landroid/widget/RelativeLayout;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 3689
    iget-object v1, v0, Lcom/kakaogame/databinding/KakaoGameProtectedUserPopupBinding;->kakaoGameProtectedPopupClose:Lcom/kakaogame/ui/font/NotoSansButton;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/kakaogame/ui/font/NotoSansButton;->setVisibility(I)V

    .line 3699
    iget-object v1, v0, Lcom/kakaogame/databinding/KakaoGameProtectedUserPopupBinding;->unregisterConfirmView:Lcom/kakaogame/databinding/KakaoGameProtectedUserUnregisterConfirmBinding;

    invoke-virtual {v1}, Lcom/kakaogame/databinding/KakaoGameProtectedUserUnregisterConfirmBinding;->getRoot()Landroid/widget/RelativeLayout;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 3719
    iget-object v1, v0, Lcom/kakaogame/databinding/KakaoGameProtectedUserPopupBinding;->unregisterConfirmView:Lcom/kakaogame/databinding/KakaoGameProtectedUserUnregisterConfirmBinding;

    invoke-virtual {v1}, Lcom/kakaogame/databinding/KakaoGameProtectedUserUnregisterConfirmBinding;->getRoot()Landroid/widget/RelativeLayout;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-static {v1}, Lcom/kakaogame/databinding/KakaoGameProtectedUserUnregisterConfirmBinding;->bind(Landroid/view/View;)Lcom/kakaogame/databinding/KakaoGameProtectedUserUnregisterConfirmBinding;

    move-result-object v1

    const v3, -0x2242107c

    invoke-static {v3}, Lcom/liapp/y;->״دش۲ݮ(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3739
    iget-object v1, v1, Lcom/kakaogame/databinding/KakaoGameProtectedUserUnregisterConfirmBinding;->kakaoGameUnregisterGuideView:Lcom/kakaogame/ui/font/NotoSansTextView;

    const/16 v3, 0xc8

    if-ne p1, v3, :cond_0

    iget-object v2, p0, Lcom/kakaogame/auth/view/PunishedUserDialog;->activity:Landroid/app/Activity;

    check-cast v2, Landroid/content/Context;

    sget v3, Lcom/kakaogame/R$string;->kakao_game_sdk_protected_user_unregister_done:I

    invoke-static {v2, v3}, Lcom/kakaogame/util/ResourceUtil;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    goto :goto_0

    .line 3749
    :cond_0
    iget-object v3, p0, Lcom/kakaogame/auth/view/PunishedUserDialog;->activity:Landroid/app/Activity;

    check-cast v3, Landroid/content/Context;

    sget v4, Lcom/kakaogame/R$string;->zinny_sdk_error_msg_common:I

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v2

    invoke-static {v3, v4, v5}, Lcom/kakaogame/util/ResourceUtil;->getString(Landroid/content/Context;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    .line 3739
    :goto_0
    invoke-virtual {v1, v2}, Lcom/kakaogame/ui/font/NotoSansTextView;->setText(Ljava/lang/CharSequence;)V

    .line 3779
    iget-object v1, v0, Lcom/kakaogame/databinding/KakaoGameProtectedUserPopupBinding;->kakaoGameProtectedPopupTitle:Lcom/kakaogame/ui/font/NotoSansTextView;

    iget-object v2, p0, Lcom/kakaogame/auth/view/PunishedUserDialog;->activity:Landroid/app/Activity;

    check-cast v2, Landroid/content/Context;

    sget v3, Lcom/kakaogame/R$string;->kakao_game_sdk_protected_user_unregister_title:I

    invoke-static {v2, v3}, Lcom/kakaogame/util/ResourceUtil;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/kakaogame/ui/font/StyleTextKt;->getBoldText(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Lcom/kakaogame/ui/font/NotoSansTextView;->setText(Ljava/lang/CharSequence;)V

    .line 3799
    iget-object v1, v0, Lcom/kakaogame/databinding/KakaoGameProtectedUserPopupBinding;->kakaoGameProtectedPopupClose:Lcom/kakaogame/ui/font/NotoSansButton;

    iget-object v2, p0, Lcom/kakaogame/auth/view/PunishedUserDialog;->activity:Landroid/app/Activity;

    check-cast v2, Landroid/content/Context;

    sget v3, Lcom/kakaogame/R$string;->kakao_game_sdk_protected_user_unregister_confirm:I

    invoke-static {v2, v3}, Lcom/kakaogame/util/ResourceUtil;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/kakaogame/ui/font/StyleTextKt;->getBoldText(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Lcom/kakaogame/ui/font/NotoSansButton;->setText(Ljava/lang/CharSequence;)V

    .line 3809
    iget-object v0, v0, Lcom/kakaogame/databinding/KakaoGameProtectedUserPopupBinding;->kakaoGameProtectedPopupClose:Lcom/kakaogame/ui/font/NotoSansButton;

    new-instance v1, Lcom/kakaogame/auth/view/PunishedUserDialog$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0, p1}, Lcom/kakaogame/auth/view/PunishedUserDialog$$ExternalSyntheticLambda6;-><init>(Lcom/kakaogame/auth/view/PunishedUserDialog;I)V

    invoke-virtual {v0, v1}, Lcom/kakaogame/ui/font/NotoSansButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method private static final showUnregisterEnd$lambda$47$lambda$46(Lcom/kakaogame/auth/view/PunishedUserDialog;ILandroid/view/View;)V
    .locals 0

    .line 3819
    invoke-virtual {p0}, Lcom/kakaogame/auth/view/PunishedUserDialog;->dismiss()V

    const/16 p2, 0xc8

    if-ne p1, p2, :cond_0

    .line 3829
    sget-object p1, Lcom/kakaogame/auth/view/PunishedUserDialog;->RESULT_UNREGISTERED:Ljava/lang/String;

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/kakaogame/auth/view/PunishedUserDialog;->RESULT_TERMINATE:Ljava/lang/String;

    :goto_0
    invoke-direct {p0, p1}, Lcom/kakaogame/auth/view/PunishedUserDialog;->callbackResult(Ljava/lang/String;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method private final showUnregisterGuide()V
    .locals 4

    .line 3359
    iget-object v0, p0, Lcom/kakaogame/auth/view/PunishedUserDialog;->binding:Lcom/kakaogame/databinding/KakaoGameProtectedUserPopupBinding;

    .line 3369
    iget-object v1, v0, Lcom/kakaogame/databinding/KakaoGameProtectedUserPopupBinding;->kakaoGameProtectedButtonLayout:Landroid/widget/RelativeLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 3379
    iget-object v1, v0, Lcom/kakaogame/databinding/KakaoGameProtectedUserPopupBinding;->kakaoGameProtectedPopupClose:Lcom/kakaogame/ui/font/NotoSansButton;

    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Lcom/kakaogame/ui/font/NotoSansButton;->setVisibility(I)V

    .line 3389
    iget-object v1, v0, Lcom/kakaogame/databinding/KakaoGameProtectedUserPopupBinding;->unregisterConfirmView:Lcom/kakaogame/databinding/KakaoGameProtectedUserUnregisterConfirmBinding;

    invoke-virtual {v1}, Lcom/kakaogame/databinding/KakaoGameProtectedUserUnregisterConfirmBinding;->getRoot()Landroid/widget/RelativeLayout;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 3409
    iget-object v1, v0, Lcom/kakaogame/databinding/KakaoGameProtectedUserPopupBinding;->unregisterConfirmView:Lcom/kakaogame/databinding/KakaoGameProtectedUserUnregisterConfirmBinding;

    invoke-virtual {v1}, Lcom/kakaogame/databinding/KakaoGameProtectedUserUnregisterConfirmBinding;->getRoot()Landroid/widget/RelativeLayout;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-static {v1}, Lcom/kakaogame/databinding/KakaoGameProtectedUserUnregisterConfirmBinding;->bind(Landroid/view/View;)Lcom/kakaogame/databinding/KakaoGameProtectedUserUnregisterConfirmBinding;

    move-result-object v1

    const v2, -0x2242107c

    invoke-static {v2}, Lcom/liapp/y;->״دش۲ݮ(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3439
    iget-object v1, v1, Lcom/kakaogame/databinding/KakaoGameProtectedUserUnregisterConfirmBinding;->kakaoGameUnregisterGuideView:Lcom/kakaogame/ui/font/NotoSansTextView;

    .line 3449
    iget-object v2, p0, Lcom/kakaogame/auth/view/PunishedUserDialog;->activity:Landroid/app/Activity;

    check-cast v2, Landroid/content/Context;

    sget v3, Lcom/kakaogame/R$string;->kakao_game_sdk_protected_user_unregister_guide:I

    invoke-static {v2, v3}, Lcom/kakaogame/util/ResourceUtil;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    .line 3439
    invoke-virtual {v1, v2}, Lcom/kakaogame/ui/font/NotoSansTextView;->setText(Ljava/lang/CharSequence;)V

    .line 3479
    iget-object v1, v0, Lcom/kakaogame/databinding/KakaoGameProtectedUserPopupBinding;->kakaoGameProtectedPopupTitle:Lcom/kakaogame/ui/font/NotoSansTextView;

    .line 3489
    iget-object v2, p0, Lcom/kakaogame/auth/view/PunishedUserDialog;->activity:Landroid/app/Activity;

    check-cast v2, Landroid/content/Context;

    sget v3, Lcom/kakaogame/R$string;->kakao_game_sdk_protected_user_unregister_title:I

    invoke-static {v2, v3}, Lcom/kakaogame/util/ResourceUtil;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/kakaogame/ui/font/StyleTextKt;->getBoldText(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    .line 3479
    invoke-virtual {v1, v2}, Lcom/kakaogame/ui/font/NotoSansTextView;->setText(Ljava/lang/CharSequence;)V

    .line 3499
    iget-object v1, v0, Lcom/kakaogame/databinding/KakaoGameProtectedUserPopupBinding;->kakaoGameProtectedPopupCancel:Lcom/kakaogame/ui/font/NotoSansButton;

    .line 3509
    iget-object v2, p0, Lcom/kakaogame/auth/view/PunishedUserDialog;->activity:Landroid/app/Activity;

    check-cast v2, Landroid/content/Context;

    sget v3, Lcom/kakaogame/R$string;->kakao_game_sdk_protected_user_unregister_cancel:I

    invoke-static {v2, v3}, Lcom/kakaogame/util/ResourceUtil;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/kakaogame/ui/font/StyleTextKt;->getBoldText(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    .line 3499
    invoke-virtual {v1, v2}, Lcom/kakaogame/ui/font/NotoSansButton;->setText(Ljava/lang/CharSequence;)V

    .line 3519
    iget-object v0, v0, Lcom/kakaogame/databinding/KakaoGameProtectedUserPopupBinding;->kakaoGameProtectedPopupConfirm:Lcom/kakaogame/ui/font/NotoSansButton;

    .line 3529
    iget-object v1, p0, Lcom/kakaogame/auth/view/PunishedUserDialog;->activity:Landroid/app/Activity;

    check-cast v1, Landroid/content/Context;

    sget v2, Lcom/kakaogame/R$string;->kakao_game_sdk_protected_user_unregister_confirm:I

    invoke-static {v1, v2}, Lcom/kakaogame/util/ResourceUtil;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/kakaogame/ui/font/StyleTextKt;->getBoldText(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    .line 3519
    invoke-virtual {v0, v1}, Lcom/kakaogame/ui/font/NotoSansButton;->setText(Ljava/lang/CharSequence;)V

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method private final startTerminateTimer(J)V
    .locals 2

    .line 1069
    iget-object v0, p0, Lcom/kakaogame/auth/view/PunishedUserDialog;->terminateTimer:Ljava/util/Timer;

    if-eqz v0, :cond_1

    if-nez v0, :cond_0

    const v0, 0x5439d682

    invoke-static {v0}, Lcom/liapp/y;->׳ֳֳ֬د(I)Ljava/lang/String;

    move-result-object v0

    .line 1079
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 1099
    :cond_1
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/kakaogame/auth/view/PunishedUserDialog;->terminateTimer:Ljava/util/Timer;

    .line 1109
    new-instance v1, Lcom/kakaogame/auth/view/PunishedUserDialog$startTerminateTimer$$inlined$schedule$1;

    invoke-direct {v1, p0}, Lcom/kakaogame/auth/view/PunishedUserDialog$startTerminateTimer$$inlined$schedule$1;-><init>(Lcom/kakaogame/auth/view/PunishedUserDialog;)V

    check-cast v1, Ljava/util/TimerTask;

    invoke-virtual {v0, v1, p1, p2}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    return-void

    .array-data 1
    .end array-data
.end method

.method private final stopTerminateTimer()V
    .locals 1

    .line 1169
    iget-object v0, p0, Lcom/kakaogame/auth/view/PunishedUserDialog;->terminateTimer:Ljava/util/Timer;

    if-eqz v0, :cond_1

    if-nez v0, :cond_0

    const v0, 0x5439d682

    invoke-static {v0}, Lcom/liapp/y;->׳ֳֳ֬د(I)Ljava/lang/String;

    move-result-object v0

    .line 1179
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    :cond_1
    return-void

    nop

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public final getActivity()Landroid/app/Activity;
    .locals 1

    .line 419
    iget-object v0, p0, Lcom/kakaogame/auth/view/PunishedUserDialog;->activity:Landroid/app/Activity;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final getCurrentView()Lcom/kakaogame/auth/view/PunishedUserDialog$ViewType;
    .locals 1

    .line 549
    iget-object v0, p0, Lcom/kakaogame/auth/view/PunishedUserDialog;->currentView:Lcom/kakaogame/auth/view/PunishedUserDialog$ViewType;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final getDisableTextColor()I
    .locals 1

    .line 599
    iget v0, p0, Lcom/kakaogame/auth/view/PunishedUserDialog;->disableTextColor:I

    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final getMessage()Ljava/lang/String;
    .locals 1

    .line 449
    iget-object v0, p0, Lcom/kakaogame/auth/view/PunishedUserDialog;->message:Ljava/lang/String;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final getNormalTextColor()I
    .locals 1

    .line 589
    iget v0, p0, Lcom/kakaogame/auth/view/PunishedUserDialog;->normalTextColor:I

    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final getOnetimeToken()Ljava/lang/String;
    .locals 1

    .line 429
    iget-object v0, p0, Lcom/kakaogame/auth/view/PunishedUserDialog;->onetimeToken:Ljava/lang/String;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final getTerm()Ljava/lang/String;
    .locals 1

    .line 459
    iget-object v0, p0, Lcom/kakaogame/auth/view/PunishedUserDialog;->term:Ljava/lang/String;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final getUserId()Ljava/lang/String;
    .locals 1

    .line 439
    iget-object v0, p0, Lcom/kakaogame/auth/view/PunishedUserDialog;->userId:Ljava/lang/String;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final getViewSizeChanged()Z
    .locals 1

    .line 559
    iget-boolean v0, p0, Lcom/kakaogame/auth/view/PunishedUserDialog;->viewSizeChanged:Z

    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final setCurrentView(Lcom/kakaogame/auth/view/PunishedUserDialog$ViewType;)V
    .locals 1

    const v0, 0x3365ef8b

    invoke-static {v0}, Lcom/liapp/y;->ׯ״ٲ֬ب(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 549
    iput-object p1, p0, Lcom/kakaogame/auth/view/PunishedUserDialog;->currentView:Lcom/kakaogame/auth/view/PunishedUserDialog$ViewType;

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public final setViewSizeChanged(Z)V
    .locals 0

    .line 559
    iput-boolean p1, p0, Lcom/kakaogame/auth/view/PunishedUserDialog;->viewSizeChanged:Z

    return-void

    nop

    .array-data 1
    .end array-data
.end method
