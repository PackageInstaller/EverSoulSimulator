.class public final Lcom/kakaogame/auth/view/LoginUIManager;
.super Ljava/lang/Object;
.source "LoginUIManager.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kakaogame/auth/view/LoginUIManager$RequestType;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0082\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\t\n\u0002\u0008\u0010\u0008\u00c6\u0002\u0018\u00002\u00020\u0001:\u0001GB\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J(\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\t2\u0006\u0010\u000b\u001a\u00020\t2\u0006\u0010\u000c\u001a\u00020\tH\u0002J4\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u000c\u001a\u00020\t2\u001a\u0010\u0011\u001a\u0016\u0012\u000c\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010\u00070\u0013\u0012\u0004\u0012\u00020\u000e0\u0012H\u0002J&\u0010\u0014\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00070\u00132\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u000c\u001a\u00020\tH\u0087@\u00a2\u0006\u0002\u0010\u0015J&\u0010\u0016\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00170\u00132\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u000c\u001a\u00020\tH\u0087@\u00a2\u0006\u0002\u0010\u0015J&\u0010\u0018\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00170\u00132\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0019\u001a\u00020\u001aH\u0087@\u00a2\u0006\u0002\u0010\u001bJ8\u0010\u001c\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0019\u001a\u00020\u00052\u0006\u0010\u001d\u001a\u00020\u001e2\u0006\u0010\u001f\u001a\u00020\t2\u000e\u0010\u0011\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00170 H\u0002JY\u0010!\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u00102\u000c\u0010\"\u001a\u0008\u0012\u0004\u0012\u00020\u00050#2\u0006\u0010\u001d\u001a\u00020\u001e2\u0006\u0010\u001f\u001a\u00020\t2)\u0010\u0011\u001a%\u0012\u001b\u0012\u0019\u0012\u0006\u0012\u0004\u0018\u00010\u00170\u0013\u00a2\u0006\u000c\u0008$\u0012\u0008\u0008%\u0012\u0004\u0008\u0008(&\u0012\u0004\u0012\u00020\u000e0\u0012H\u0002J<\u0010\'\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00170\u00132\u0006\u0010\u000f\u001a\u00020\u00102\u000c\u0010\"\u001a\u0008\u0012\u0004\u0012\u00020\u00050#2\u0006\u0010\u001d\u001a\u00020\u001e2\u0006\u0010\u001f\u001a\u00020\tH\u0087@\u00a2\u0006\u0002\u0010(J8\u0010)\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0019\u001a\u00020\u00052\u0006\u0010\u001d\u001a\u00020\u001e2\u0006\u0010\u001f\u001a\u00020\t2\u000e\u0010\u0011\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00170 H\u0002J\u0018\u0010*\u001a\u00020\u00052\u0008\u0010+\u001a\u0004\u0018\u00010,2\u0006\u0010-\u001a\u00020\tJ\u001a\u0010.\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u00102\u0008\u0010/\u001a\u0004\u0018\u000100H\u0002J6\u00101\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00170\u00132\u0006\u0010\u000f\u001a\u00020\u00102\u0008\u0010/\u001a\u0004\u0018\u0001002\u0008\u00102\u001a\u0004\u0018\u0001032\u0008\u0008\u0002\u00104\u001a\u00020\u0007H\u0007JR\u00105\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00170\u00132\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u00106\u001a\u00020\t2\u0006\u00107\u001a\u0002082\u0006\u00109\u001a\u00020\u00052\u0008\u0010:\u001a\u0004\u0018\u00010\u00052\u0006\u0010;\u001a\u00020\u00052\u0006\u0010<\u001a\u00020\u00052\u0006\u0010=\u001a\u00020\u0005H\u0002JJ\u0010>\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00170\u00132\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u00106\u001a\u00020\t2\u0006\u00107\u001a\u0002082\u0008\u0010:\u001a\u0004\u0018\u00010\u00052\u0006\u0010?\u001a\u00020\u00052\u0006\u0010=\u001a\u00020\u00052\u0006\u0010@\u001a\u00020\u0007H\u0002J\"\u0010A\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010<\u001a\u00020\u00052\u0008\u0010B\u001a\u0004\u0018\u00010\u0005H\u0003J\u0018\u0010C\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00170\u00132\u0006\u0010\u000f\u001a\u00020\u0010H\u0007J&\u0010D\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00170\u00132\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u00102\u001a\u000203H\u0087@\u00a2\u0006\u0002\u0010EJ\"\u0010F\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00170\u00132\u0006\u0010\u000f\u001a\u00020\u00102\u0008\u00102\u001a\u0004\u0018\u000103H\u0007R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082T\u00a2\u0006\u0002\n\u0000\u00a8\u0006H"
    }
    d2 = {
        "Lcom/kakaogame/auth/view/LoginUIManager;",
        "",
        "<init>",
        "()V",
        "TAG",
        "",
        "isUpAge",
        "",
        "year",
        "",
        "month",
        "day",
        "limitAge",
        "showCOPPADialog",
        "",
        "activity",
        "Landroid/app/Activity;",
        "callback",
        "Lkotlin/Function1;",
        "Lcom/kakaogame/KGResult;",
        "showCOPPA",
        "(Landroid/app/Activity;ILkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "showAgeLimitErrorPopup",
        "Ljava/lang/Void;",
        "showConnectCheckPopup",
        "idpCode",
        "Lcom/kakaogame/KGIdpProfile$KGIdpCode;",
        "(Landroid/app/Activity;Lcom/kakaogame/KGIdpProfile$KGIdpCode;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "onSelectIdpCode",
        "requestType",
        "Lcom/kakaogame/auth/view/LoginUIManager$RequestType;",
        "traceJobId",
        "Lcom/kakaogame/KGResultCallback;",
        "showLoginDialog",
        "idpCodes",
        "",
        "Lkotlin/ParameterName;",
        "name",
        "result",
        "showLoginPopup",
        "(Landroid/app/Activity;Ljava/util/List;Lcom/kakaogame/auth/view/LoginUIManager$RequestType;ILkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "loginImpl",
        "getErrorMessage",
        "context",
        "Landroid/content/Context;",
        "code",
        "terminateAppAfterLogout",
        "idpAccount",
        "Lcom/kakaogame/idp/IdpAccount;",
        "showPunishment",
        "loginData",
        "Lcom/kakaogame/auth/LoginData;",
        "saveAccount",
        "showUnregisterView",
        "restrDay",
        "restrEndTime",
        "",
        "restrMessage",
        "restrReason",
        "onetimeToken",
        "playerId",
        "emailAddress",
        "showDefaultView",
        "userId",
        "isRejoin",
        "sendToMail",
        "sendEmailAddress",
        "showRestrictAdolescent",
        "showUnregister",
        "(Landroid/app/Activity;Lcom/kakaogame/auth/LoginData;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "showProtection",
        "RequestType",
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
.field public static final INSTANCE:Lcom/kakaogame/auth/view/LoginUIManager;

.field private static final TAG:Ljava/lang/String; = "LoginUIManager"


# direct methods
.method public static synthetic $r8$lambda$0Dcckzuw1IQu75CyuelbRGmYvC4()V
    .locals 0

    invoke-static {}, Lcom/kakaogame/auth/view/LoginUIManager;->showRestrictAdolescent$lambda$20$lambda$19()V

    return-void

    .array-data 1
    .end array-data
.end method

.method public static synthetic $r8$lambda$2HdLGIpIyIvIAcH28IDbwoaMSO8(ILandroid/app/Activity;Ljava/lang/String;Lcom/kakaogame/auth/view/LoginUIManager$RequestType;Lcom/kakaogame/KGResultCallback;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static/range {p0 .. p6}, Lcom/kakaogame/auth/view/LoginUIManager;->onSelectIdpCode$lambda$4(ILandroid/app/Activity;Ljava/lang/String;Lcom/kakaogame/auth/view/LoginUIManager$RequestType;Lcom/kakaogame/KGResultCallback;Landroid/content/DialogInterface;I)V

    return-void

    .array-data 1
    .end array-data
.end method

.method public static synthetic $r8$lambda$2HrLWQblD9EV14JYZafdvIGGKIo(Lcom/kakaogame/util/MutexLock;Ljava/lang/String;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/kakaogame/auth/view/LoginUIManager;->showDefaultView$lambda$15(Lcom/kakaogame/util/MutexLock;Ljava/lang/String;Landroid/content/DialogInterface;I)V

    return-void

    .array-data 1
    .end array-data
.end method

.method public static synthetic $r8$lambda$71NQgbirm-SD5Pph28Cjqxlbfa4()V
    .locals 0

    invoke-static {}, Lcom/kakaogame/auth/view/LoginUIManager;->showRestrictAdolescent$lambda$20()V

    return-void

    .array-data 1
    .end array-data
.end method

.method public static synthetic $r8$lambda$7KkHOx9x_FXXEW8yiBU6N452khs(Lcom/kakaogame/util/MutexLock;)V
    .locals 0

    invoke-static {p0}, Lcom/kakaogame/auth/view/LoginUIManager;->showDefaultView$lambda$18(Lcom/kakaogame/util/MutexLock;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method public static synthetic $r8$lambda$9NRSZAxla-rXYA6v2Qu8KF5EvWE(Lcom/kakaogame/KGResultCallback;Landroid/content/DialogInterface;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/kakaogame/auth/view/LoginUIManager;->onSelectIdpCode$lambda$3(Lcom/kakaogame/KGResultCallback;Landroid/content/DialogInterface;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method public static synthetic $r8$lambda$G92RLCGV-W_eZf9bHbK2qpH_KVY()V
    .locals 0

    invoke-static {}, Lcom/kakaogame/auth/view/LoginUIManager;->showProtection$lambda$26()V

    return-void

    .array-data 1
    .end array-data
.end method

.method public static synthetic $r8$lambda$IVAAK_y_JFYiQrErE0A6e3MxiEA(Landroid/app/Activity;IILkotlin/jvm/functions/Function1;Lcom/kakaogame/auth/view/LoginUIManager$RequestType;Ljava/util/List;Ljava/lang/String;)Lkotlin/Unit;
    .locals 0

    invoke-static/range {p0 .. p6}, Lcom/kakaogame/auth/view/LoginUIManager;->showLoginDialog$lambda$6(Landroid/app/Activity;IILkotlin/jvm/functions/Function1;Lcom/kakaogame/auth/view/LoginUIManager$RequestType;Ljava/util/List;Ljava/lang/String;)Lkotlin/Unit;

    move-result-object p0

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static synthetic $r8$lambda$KA8O98QcI1_7UkUtYOKqp4svhUg(Lcom/kakaogame/util/MutexLock;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/kakaogame/auth/view/LoginUIManager;->showRestrictAdolescent$lambda$21(Lcom/kakaogame/util/MutexLock;Landroid/content/DialogInterface;I)V

    return-void

    .array-data 1
    .end array-data
.end method

.method public static synthetic $r8$lambda$N4fFvjz2N8YMvJSowWi8Rc4CorA(Lcom/kakaogame/util/MutexLock;)V
    .locals 0

    invoke-static {p0}, Lcom/kakaogame/auth/view/LoginUIManager;->showDefaultView$lambda$18$lambda$17(Lcom/kakaogame/util/MutexLock;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method public static synthetic $r8$lambda$Nve5gQ7Rm4hJtR0BsA37STZRV74()V
    .locals 0

    invoke-static {}, Lcom/kakaogame/auth/view/LoginUIManager;->showDefaultView$lambda$12()V

    return-void

    .array-data 1
    .end array-data
.end method

.method public static synthetic $r8$lambda$O-P4sotfczCyrxOrhvMQykiuDU8(Lcom/kakaogame/util/MutexLock;)V
    .locals 0

    invoke-static {p0}, Lcom/kakaogame/auth/view/LoginUIManager;->showRestrictAdolescent$lambda$23$lambda$22(Lcom/kakaogame/util/MutexLock;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method public static synthetic $r8$lambda$Q9oMfkPhHYKkvFZ24VyIqEpet14(Lcom/kakaogame/util/MutexLock;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/kakaogame/auth/view/LoginUIManager;->showDefaultView$lambda$13(Lcom/kakaogame/util/MutexLock;Landroid/content/DialogInterface;I)V

    return-void

    .array-data 1
    .end array-data
.end method

.method public static synthetic $r8$lambda$ReXezOew5lk90I0yDgDK-chBmNY(Lcom/kakaogame/util/MutexLock;Ljava/lang/String;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/kakaogame/auth/view/LoginUIManager;->showDefaultView$lambda$14(Lcom/kakaogame/util/MutexLock;Ljava/lang/String;Landroid/content/DialogInterface;I)V

    return-void

    .array-data 1
    .end array-data
.end method

.method public static synthetic $r8$lambda$XMZMgGGu8VfmuV4sIV-lwZo9xhM(Lcom/kakaogame/util/MutexLock;)V
    .locals 0

    invoke-static {p0}, Lcom/kakaogame/auth/view/LoginUIManager;->showProtection$lambda$29(Lcom/kakaogame/util/MutexLock;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method public static synthetic $r8$lambda$XqJLBm3YnW3dx2D69voqkas6dI0(Lcom/kakaogame/util/MutexLock;)V
    .locals 0

    invoke-static {p0}, Lcom/kakaogame/auth/view/LoginUIManager;->showProtection$lambda$29$lambda$28(Lcom/kakaogame/util/MutexLock;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method public static synthetic $r8$lambda$_U-jtgh4_16Fdd_-3-R2AmuFm88(Lcom/kakaogame/util/MutexLock;Ljava/lang/String;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1}, Lcom/kakaogame/auth/view/LoginUIManager;->showUnregisterView$lambda$10$lambda$9(Lcom/kakaogame/util/MutexLock;Ljava/lang/String;)Lkotlin/Unit;

    move-result-object p0

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static synthetic $r8$lambda$hExSEARIAdkZ-TSf2DtqdgUsWSE(Lcom/kakaogame/util/MutexLock;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/kakaogame/auth/view/LoginUIManager;->showProtection$lambda$27(Lcom/kakaogame/util/MutexLock;Landroid/content/DialogInterface;I)V

    return-void

    .array-data 1
    .end array-data
.end method

.method public static synthetic $r8$lambda$hVXElSZY8UOTLf29rh1XiVxsz3E(ILcom/kakaogame/KGResultCallback;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/kakaogame/auth/view/LoginUIManager;->onSelectIdpCode$lambda$5(ILcom/kakaogame/KGResultCallback;Landroid/content/DialogInterface;I)V

    return-void

    .array-data 1
    .end array-data
.end method

.method public static synthetic $r8$lambda$ooMZRimKwO-tQWL9nSznEkhxzAU(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/kakaogame/util/MutexLock;)V
    .locals 0

    invoke-static/range {p0 .. p6}, Lcom/kakaogame/auth/view/LoginUIManager;->showUnregisterView$lambda$10(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/kakaogame/util/MutexLock;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method public static synthetic $r8$lambda$qZ5HgiB_IMBBTSyykXosOVyIifM(Lcom/kakaogame/util/MutexLock;)V
    .locals 0

    invoke-static {p0}, Lcom/kakaogame/auth/view/LoginUIManager;->showRestrictAdolescent$lambda$23(Lcom/kakaogame/util/MutexLock;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method public static synthetic $r8$lambda$sh-vjMB1t8-O-rIANRSPTgy9caw()V
    .locals 0

    invoke-static {}, Lcom/kakaogame/auth/view/LoginUIManager;->showDefaultView$lambda$12$lambda$11()V

    return-void

    .array-data 1
    .end array-data
.end method

.method public static synthetic $r8$lambda$tbFLj64_HN3nU-HspfLkBDI4Uu0()V
    .locals 0

    invoke-static {}, Lcom/kakaogame/auth/view/LoginUIManager;->showProtection$lambda$26$lambda$25()V

    return-void

    .array-data 1
    .end array-data
.end method

.method public static synthetic $r8$lambda$uUlgEOHKilw8SJ4KG1pB7CDcs24(Lcom/kakaogame/util/MutexLock;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/kakaogame/auth/view/LoginUIManager;->showDefaultView$lambda$16(Lcom/kakaogame/util/MutexLock;Landroid/content/DialogInterface;I)V

    return-void

    .array-data 1
    .end array-data
.end method

.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/kakaogame/auth/view/LoginUIManager;

    invoke-direct {v0}, Lcom/kakaogame/auth/view/LoginUIManager;-><init>()V

    sput-object v0, Lcom/kakaogame/auth/view/LoginUIManager;->INSTANCE:Lcom/kakaogame/auth/view/LoginUIManager;

    return-void

    .array-data 1
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .line 449
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void

    .array-data 1
    .end array-data
.end method

.method public static final synthetic access$isUpAge(Lcom/kakaogame/auth/view/LoginUIManager;IIII)Z
    .locals 0

    .line 449
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/kakaogame/auth/view/LoginUIManager;->isUpAge(IIII)Z

    move-result p0

    return p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static final synthetic access$showCOPPADialog(Lcom/kakaogame/auth/view/LoginUIManager;Landroid/app/Activity;ILkotlin/jvm/functions/Function1;)V
    .locals 0

    .line 449
    invoke-direct {p0, p1, p2, p3}, Lcom/kakaogame/auth/view/LoginUIManager;->showCOPPADialog(Landroid/app/Activity;ILkotlin/jvm/functions/Function1;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method public static final synthetic access$showLoginDialog(Lcom/kakaogame/auth/view/LoginUIManager;Landroid/app/Activity;Ljava/util/List;Lcom/kakaogame/auth/view/LoginUIManager$RequestType;ILkotlin/jvm/functions/Function1;)V
    .locals 0

    .line 449
    invoke-direct/range {p0 .. p5}, Lcom/kakaogame/auth/view/LoginUIManager;->showLoginDialog(Landroid/app/Activity;Ljava/util/List;Lcom/kakaogame/auth/view/LoginUIManager$RequestType;ILkotlin/jvm/functions/Function1;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method private final isUpAge(IIII)Z
    .locals 9

    .line 479
    new-instance v0, Ljava/lang/StringBuilder;

    const v1, 0x6d0cff50

    invoke-static {v1}, Lcom/liapp/y;->ٱڳܴڭܩ(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const v2, -0x45198def

    invoke-static {v2}, Lcom/liapp/y;->ڳݬ٬ۮݪ(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const v3, -0x45198c3f

    invoke-static {v3}, Lcom/liapp/y;->ڳݬ٬ۮݪ(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const v4, 0x7d70cccd    # 2.0004882E37f

    invoke-static {v4}, Lcom/liapp/y;->حֲݴܳޯ(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 489
    sget-object v0, Lcom/kakaogame/core/CoreManager;->Companion:Lcom/kakaogame/core/CoreManager$Companion;

    invoke-virtual {v0}, Lcom/kakaogame/core/CoreManager$Companion;->getInstance()Lcom/kakaogame/core/CoreManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kakaogame/core/CoreManager;->getInfodesk()Lcom/kakaogame/infodesk/InfodeskData;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 499
    invoke-virtual {v0}, Lcom/kakaogame/infodesk/InfodeskData;->getServerCalendarOnPST()Ljava/util/Calendar;

    move-result-object v0

    const/4 v5, 0x1

    .line 509
    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v6

    const/4 v7, 0x2

    .line 519
    invoke-virtual {v0, v7}, Ljava/util/Calendar;->get(I)I

    move-result v7

    const/4 v8, 0x5

    .line 529
    invoke-virtual {v0, v8}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 539
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sub-int/2addr v6, p1

    if-le v6, p4, :cond_0

    return v5

    :cond_0
    if-ne v6, p4, :cond_2

    if-le v7, p2, :cond_1

    return v5

    :cond_1
    if-ne v7, p2, :cond_2

    if-lt v0, p3, :cond_2

    return v5

    :cond_2
    const/4 p1, 0x0

    return p1

    .array-data 1
    .end array-data
.end method

.method private final loginImpl(Landroid/app/Activity;Ljava/lang/String;Lcom/kakaogame/auth/view/LoginUIManager$RequestType;ILcom/kakaogame/KGResultCallback;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/lang/String;",
            "Lcom/kakaogame/auth/view/LoginUIManager$RequestType;",
            "I",
            "Lcom/kakaogame/KGResultCallback<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .line 3059
    sget-object v0, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const v2, 0x5439ce62

    invoke-static {v2}, Lcom/liapp/y;->׳ֳֳ֬د(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v2, p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const v3, 0x7d70cccd    # 2.0004882E37f

    invoke-static {v3}, Lcom/liapp/y;->حֲݴܳޯ(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3, v1}, Lcom/kakaogame/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3079
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    invoke-static {v0}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v1

    const/4 v0, 0x0

    const/4 v10, 0x0

    new-instance v11, Lcom/kakaogame/auth/view/LoginUIManager$loginImpl$1;

    const/4 v9, 0x0

    move-object v3, v11

    move-object v4, p3

    move-object v5, p1

    move-object v6, p2

    move/from16 v7, p4

    move-object/from16 v8, p5

    invoke-direct/range {v3 .. v9}, Lcom/kakaogame/auth/view/LoginUIManager$loginImpl$1;-><init>(Lcom/kakaogame/auth/view/LoginUIManager$RequestType;Landroid/app/Activity;Ljava/lang/String;ILcom/kakaogame/KGResultCallback;Lkotlin/coroutines/Continuation;)V

    move-object v4, v11

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v5, 0x3

    const/4 v6, 0x0

    move-object v2, v0

    move-object v3, v10

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void

    .array-data 1
    .end array-data
.end method

.method private final onSelectIdpCode(Landroid/app/Activity;Ljava/lang/String;Lcom/kakaogame/auth/view/LoginUIManager$RequestType;ILcom/kakaogame/KGResultCallback;)V
    .locals 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/lang/String;",
            "Lcom/kakaogame/auth/view/LoginUIManager$RequestType;",
            "I",
            "Lcom/kakaogame/KGResultCallback<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v3, p2

    move/from16 v6, p4

    move-object/from16 v7, p5

    .line 1599
    sget-object v0, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const v2, 0x5439cfca

    invoke-static {v2}, Lcom/liapp/y;->׳ֳֳ֬د(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7d70cccd    # 2.0004882E37f

    invoke-static {v2}, Lcom/liapp/y;->حֲݴܳޯ(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lcom/kakaogame/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1619
    sget-object v0, Lcom/kakaogame/KGIdpProfile$KGIdpCode;->Guest:Lcom/kakaogame/KGIdpProfile$KGIdpCode;

    invoke-virtual {v0}, Lcom/kakaogame/KGIdpProfile$KGIdpCode;->getCode()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v3, v1}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1639
    sget-object v0, Lcom/kakaogame/log/tracer/Tracer;->INSTANCE:Lcom/kakaogame/log/tracer/Tracer;

    sget-object v1, Lcom/kakaogame/log/tracer/TraceLoginActionCode;->SDK_GUEST_POPUP:Lcom/kakaogame/log/tracer/TraceLoginActionCode;

    invoke-virtual {v0, v6, v1}, Lcom/kakaogame/log/tracer/Tracer;->startAction(ILcom/kakaogame/log/tracer/TraceLoginActionCode;)V

    .line 1649
    new-instance v5, Lcom/kakaogame/ui/DialogManager$Settings;

    const/4 v9, 0x0

    sget v0, Lcom/kakaogame/R$string;->kakao_game_sdk_login_idp_guest_check_title:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/4 v11, 0x0

    .line 1659
    sget v0, Lcom/kakaogame/R$string;->kakao_game_sdk_login_idp_guest_check_desc:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x1

    const/16 v18, 0x0

    const/16 v19, 0x0

    .line 1649
    new-instance v0, Lcom/kakaogame/auth/view/LoginUIManager$$ExternalSyntheticLambda21;

    invoke-direct {v0, v7}, Lcom/kakaogame/auth/view/LoginUIManager$$ExternalSyntheticLambda21;-><init>(Lcom/kakaogame/KGResultCallback;)V

    const/16 v21, 0x0

    const/16 v22, 0x16f5

    const/16 v23, 0x0

    move-object v8, v5

    move-object/from16 v20, v0

    invoke-direct/range {v8 .. v23}, Lcom/kakaogame/ui/DialogManager$Settings;-><init>(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;ZLandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnCancelListener;Ljava/lang/Integer;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 1719
    sget v8, Lcom/kakaogame/R$string;->zinny_sdk_common_button_ok:I

    new-instance v9, Lcom/kakaogame/auth/view/LoginUIManager$$ExternalSyntheticLambda22;

    move-object v0, v9

    move/from16 v1, p4

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object v10, v5

    move-object/from16 v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/kakaogame/auth/view/LoginUIManager$$ExternalSyntheticLambda22;-><init>(ILandroid/app/Activity;Ljava/lang/String;Lcom/kakaogame/auth/view/LoginUIManager$RequestType;Lcom/kakaogame/KGResultCallback;)V

    invoke-virtual {v10, v8, v9}, Lcom/kakaogame/ui/DialogManager$Settings;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)V

    .line 1799
    sget v0, Lcom/kakaogame/R$string;->zinny_sdk_common_button_cancel:I

    new-instance v1, Lcom/kakaogame/auth/view/LoginUIManager$$ExternalSyntheticLambda23;

    invoke-direct {v1, v6, v7}, Lcom/kakaogame/auth/view/LoginUIManager$$ExternalSyntheticLambda23;-><init>(ILcom/kakaogame/KGResultCallback;)V

    invoke-virtual {v10, v0, v1}, Lcom/kakaogame/ui/DialogManager$Settings;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)V

    .line 1889
    sget-object v0, Lcom/kakaogame/ui/DialogManager;->INSTANCE:Lcom/kakaogame/ui/DialogManager;

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v10}, Lcom/kakaogame/ui/DialogManager;->showAlertDialog(Landroid/app/Activity;Lcom/kakaogame/ui/DialogManager$Settings;)V

    goto :goto_0

    :cond_0
    move-object/from16 v1, p1

    .line 1909
    invoke-direct/range {p0 .. p5}, Lcom/kakaogame/auth/view/LoginUIManager;->loginImpl(Landroid/app/Activity;Ljava/lang/String;Lcom/kakaogame/auth/view/LoginUIManager$RequestType;ILcom/kakaogame/KGResultCallback;)V

    :goto_0
    return-void

    .array-data 1
    .end array-data
.end method

.method private static final onSelectIdpCode$lambda$3(Lcom/kakaogame/KGResultCallback;Landroid/content/DialogInterface;)V
    .locals 1

    .line 1689
    sget-object p1, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    const/16 v0, 0x2329

    invoke-virtual {p1, v0}, Lcom/kakaogame/KGResult$Companion;->getResult(I)Lcom/kakaogame/KGResult;

    move-result-object p1

    .line 1699
    invoke-interface {p0, p1}, Lcom/kakaogame/KGResultCallback;->onResult(Lcom/kakaogame/KGResult;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method private static final onSelectIdpCode$lambda$4(ILandroid/app/Activity;Ljava/lang/String;Lcom/kakaogame/auth/view/LoginUIManager$RequestType;Lcom/kakaogame/KGResultCallback;Landroid/content/DialogInterface;I)V
    .locals 9

    .line 1729
    sget-object p6, Lcom/kakaogame/log/tracer/Tracer;->INSTANCE:Lcom/kakaogame/log/tracer/Tracer;

    .line 1739
    sget-object v0, Lcom/kakaogame/log/tracer/TraceLoginActionCode;->SDK_GUEST_POPUP:Lcom/kakaogame/log/tracer/TraceLoginActionCode;

    const/16 v1, 0xc8

    const v2, -0x2243743c

    invoke-static {v2}, Lcom/liapp/y;->״دش۲ݮ(I)Ljava/lang/String;

    move-result-object v2

    .line 1729
    invoke-virtual {p6, p0, v0, v1, v2}, Lcom/kakaogame/log/tracer/Tracer;->finishAction(ILcom/kakaogame/log/tracer/TraceLoginActionCode;ILjava/lang/String;)V

    .line 1769
    sget-object v3, Lcom/kakaogame/auth/view/LoginUIManager;->INSTANCE:Lcom/kakaogame/auth/view/LoginUIManager;

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move v7, p0

    move-object v8, p4

    invoke-direct/range {v3 .. v8}, Lcom/kakaogame/auth/view/LoginUIManager;->loginImpl(Landroid/app/Activity;Ljava/lang/String;Lcom/kakaogame/auth/view/LoginUIManager$RequestType;ILcom/kakaogame/KGResultCallback;)V

    .line 1779
    invoke-interface {p5}, Landroid/content/DialogInterface;->dismiss()V

    return-void

    .array-data 1
    .end array-data
.end method

.method private static final onSelectIdpCode$lambda$5(ILcom/kakaogame/KGResultCallback;Landroid/content/DialogInterface;I)V
    .locals 4

    .line 1809
    sget-object p3, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    const/16 v0, 0x2329

    invoke-virtual {p3, v0}, Lcom/kakaogame/KGResult$Companion;->getResult(I)Lcom/kakaogame/KGResult;

    move-result-object p3

    .line 1819
    sget-object v0, Lcom/kakaogame/log/tracer/Tracer;->INSTANCE:Lcom/kakaogame/log/tracer/Tracer;

    .line 1829
    sget-object v1, Lcom/kakaogame/log/tracer/TraceLoginActionCode;->SDK_GUEST_POPUP:Lcom/kakaogame/log/tracer/TraceLoginActionCode;

    .line 1839
    invoke-virtual {p3}, Lcom/kakaogame/KGResult;->getCode()I

    move-result v2

    invoke-virtual {p3}, Lcom/kakaogame/KGResult;->getDescription()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_0

    invoke-virtual {p3}, Lcom/kakaogame/KGResult;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1819
    :cond_0
    invoke-virtual {v0, p0, v1, v2, v3}, Lcom/kakaogame/log/tracer/Tracer;->finishAction(ILcom/kakaogame/log/tracer/TraceLoginActionCode;ILjava/lang/String;)V

    .line 1859
    invoke-interface {p1, p3}, Lcom/kakaogame/KGResultCallback;->onResult(Lcom/kakaogame/KGResult;)V

    .line 1869
    invoke-interface {p2}, Landroid/content/DialogInterface;->dismiss()V

    return-void

    .array-data 1
    .end array-data
.end method

.method private final sendToMail(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    if-eqz p3, :cond_0

    .line 6219
    new-instance v0, Landroid/content/Intent;

    const v1, 0x7d70cead    # 2.000549E37f

    invoke-static {v1}, Lcom/liapp/y;->حֲݴܳޯ(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 6229
    move-object v1, p1

    check-cast v1, Landroid/content/Context;

    sget v2, Lcom/kakaogame/R$string;->zinny_sdk_email_title:I

    invoke-static {v1, v2}, Lcom/kakaogame/util/ResourceUtil;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    .line 6239
    sget v3, Lcom/kakaogame/R$string;->zinny_sdk_email_content_format:I

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p2, v4, v5

    invoke-static {v1, v3, v4}, Lcom/kakaogame/util/ResourceUtil;->getString(Landroid/content/Context;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 6249
    new-instance v1, Ljava/lang/StringBuilder;

    const v3, 0x33626bd3

    invoke-static {v3}, Lcom/liapp/y;->ׯ״ٲ֬ب(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    const v1, -0x2242062c

    invoke-static {v1}, Lcom/liapp/y;->״دش۲ݮ(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    .line 6259
    invoke-static {v2}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 6249
    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    const v1, 0x2255c676

    invoke-static {v1}, Lcom/liapp/y;->ֲֳگܱޭ(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    .line 6269
    invoke-static {p2}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 6249
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 6279
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    .line 6289
    invoke-virtual {v0, p2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 6299
    invoke-virtual {p1}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 6309
    invoke-virtual {p1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    :cond_0
    return-void

    .array-data 1
    .end array-data
.end method

.method public static final showAgeLimitErrorPopup(Landroid/app/Activity;ILkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "I",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/kakaogame/KGResult<",
            "Ljava/lang/Void;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    move-object/from16 v0, p0

    .line 1109
    new-instance v1, Lkotlin/coroutines/SafeContinuation;

    invoke-static/range {p2 .. p2}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->intercepted(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v2

    invoke-direct {v1, v2}, Lkotlin/coroutines/SafeContinuation;-><init>(Lkotlin/coroutines/Continuation;)V

    move-object v2, v1

    check-cast v2, Lkotlin/coroutines/Continuation;

    .line 1119
    sget-object v3, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    const v4, 0x7d70cccd    # 2.0004882E37f

    invoke-static {v4}, Lcom/liapp/y;->حֲݴܳޯ(I)Ljava/lang/String;

    move-result-object v4

    const v5, 0x7d70cf5d    # 2.0005713E37f

    invoke-static {v5}, Lcom/liapp/y;->حֲݴܳޯ(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/kakaogame/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1129
    new-instance v3, Lcom/kakaogame/ui/DialogManager$Settings;

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v4, v0

    check-cast v4, Landroid/content/Context;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static/range {p1 .. p1}, Lkotlin/coroutines/jvm/internal/Boxing;->boxInt(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v5, v6

    const v6, -0x2242011c

    invoke-static {v6}, Lcom/liapp/y;->״دش۲ݮ(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6, v5}, Lcom/kakaogame/util/ResourceUtil;->getString(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x1ffb

    const/16 v21, 0x0

    move-object v6, v3

    invoke-direct/range {v6 .. v21}, Lcom/kakaogame/ui/DialogManager$Settings;-><init>(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;ZLandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnCancelListener;Ljava/lang/Integer;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 1139
    sget v4, Lcom/kakaogame/R$string;->zinny_sdk_common_button_ok:I

    new-instance v5, Lcom/kakaogame/auth/view/LoginUIManager$showAgeLimitErrorPopup$2$1;

    invoke-direct {v5, v2, v0}, Lcom/kakaogame/auth/view/LoginUIManager$showAgeLimitErrorPopup$2$1;-><init>(Lkotlin/coroutines/Continuation;Landroid/app/Activity;)V

    check-cast v5, Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v3, v4, v5}, Lcom/kakaogame/ui/DialogManager$Settings;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)V

    .line 1199
    sget-object v2, Lcom/kakaogame/ui/DialogManager;->INSTANCE:Lcom/kakaogame/ui/DialogManager;

    invoke-virtual {v2, v0, v3}, Lcom/kakaogame/ui/DialogManager;->showAlertDialog(Landroid/app/Activity;Lcom/kakaogame/ui/DialogManager$Settings;)V

    .line 1109
    invoke-virtual {v1}, Lkotlin/coroutines/SafeContinuation;->getOrThrow()Ljava/lang/Object;

    move-result-object v0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    if-ne v0, v1, :cond_0

    invoke-static/range {p2 .. p2}, Lkotlin/coroutines/jvm/internal/DebugProbesKt;->probeCoroutineSuspended(Lkotlin/coroutines/Continuation;)V

    :cond_0
    return-object v0

    .array-data 1
    .end array-data
.end method

.method public static final showCOPPA(Landroid/app/Activity;ILkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "I",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/kakaogame/KGResult<",
            "Ljava/lang/Boolean;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 1019
    new-instance v0, Lkotlin/coroutines/SafeContinuation;

    invoke-static {p2}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->intercepted(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v1

    invoke-direct {v0, v1}, Lkotlin/coroutines/SafeContinuation;-><init>(Lkotlin/coroutines/Continuation;)V

    move-object v1, v0

    check-cast v1, Lkotlin/coroutines/Continuation;

    .line 1029
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getMain()Lkotlinx/coroutines/MainCoroutineDispatcher;

    move-result-object v2

    check-cast v2, Lkotlin/coroutines/CoroutineContext;

    invoke-static {v2}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    new-instance v2, Lcom/kakaogame/auth/view/LoginUIManager$showCOPPA$2$1;

    const/4 v6, 0x0

    invoke-direct {v2, p0, p1, v1, v6}, Lcom/kakaogame/auth/view/LoginUIManager$showCOPPA$2$1;-><init>(Landroid/app/Activity;ILkotlin/coroutines/Continuation;Lkotlin/coroutines/Continuation;)V

    move-object v6, v2

    check-cast v6, Lkotlin/jvm/functions/Function2;

    const/4 v7, 0x3

    const/4 v8, 0x0

    invoke-static/range {v3 .. v8}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 1019
    invoke-virtual {v0}, Lkotlin/coroutines/SafeContinuation;->getOrThrow()Ljava/lang/Object;

    move-result-object p0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object p1

    if-ne p0, p1, :cond_0

    invoke-static {p2}, Lkotlin/coroutines/jvm/internal/DebugProbesKt;->probeCoroutineSuspended(Lkotlin/coroutines/Continuation;)V

    :cond_0
    return-object p0

    .array-data 1
    .end array-data
.end method

.method private final showCOPPADialog(Landroid/app/Activity;ILkotlin/jvm/functions/Function1;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "I",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/kakaogame/KGResult<",
            "Ljava/lang/Boolean;",
            ">;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 749
    :try_start_0
    new-instance v0, Lcom/kakaogame/auth/view/LoginUIManager$showCOPPADialog$listener$1;

    invoke-direct {v0, p2, p3}, Lcom/kakaogame/auth/view/LoginUIManager$showCOPPADialog$listener$1;-><init>(ILkotlin/jvm/functions/Function1;)V

    check-cast v0, Lcom/kakaogame/auth/view/DatePickerDialog$DatePickerListener;

    .line 909
    new-instance v1, Lcom/kakaogame/auth/view/DatePickerDialog;

    invoke-direct {v1, p1, v0, p2}, Lcom/kakaogame/auth/view/DatePickerDialog;-><init>(Landroid/app/Activity;Lcom/kakaogame/auth/view/DatePickerDialog$DatePickerListener;I)V

    .line 919
    invoke-virtual {v1}, Lcom/kakaogame/auth/view/DatePickerDialog;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 939
    sget-object p2, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    new-instance v0, Ljava/lang/StringBuilder;

    const v1, -0x4518082f

    invoke-static {v1}, Lcom/liapp/y;->ڳݬ٬ۮݪ(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v1, p1

    check-cast v1, Ljava/lang/Throwable;

    const v2, 0x7d70cccd    # 2.0004882E37f

    invoke-static {v2}, Lcom/liapp/y;->حֲݴܳޯ(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2, v0, v1}, Lcom/kakaogame/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 959
    sget-object p2, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    const/16 v0, 0xfa1

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, v0, p1}, Lcom/kakaogame/KGResult$Companion;->getResult(ILjava/lang/String;)Lcom/kakaogame/KGResult;

    move-result-object p1

    .line 969
    invoke-interface {p3, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void

    .array-data 1
    .end array-data
.end method

.method public static final showConnectCheckPopup(Landroid/app/Activity;Lcom/kakaogame/KGIdpProfile$KGIdpCode;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lcom/kakaogame/KGIdpProfile$KGIdpCode;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/kakaogame/KGResult<",
            "Ljava/lang/Void;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    move-object/from16 v0, p1

    .line 1269
    new-instance v1, Lkotlin/coroutines/SafeContinuation;

    invoke-static/range {p2 .. p2}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->intercepted(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v2

    invoke-direct {v1, v2}, Lkotlin/coroutines/SafeContinuation;-><init>(Lkotlin/coroutines/Continuation;)V

    move-object v2, v1

    check-cast v2, Lkotlin/coroutines/Continuation;

    .line 1279
    sget-object v3, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    const v5, -0x224200f4

    invoke-static {v5}, Lcom/liapp/y;->״دش۲ݮ(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const v5, 0x7d70cccd    # 2.0004882E37f

    invoke-static {v5}, Lcom/liapp/y;->حֲݴܳޯ(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5, v4}, Lcom/kakaogame/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1289
    sget-object v3, Lcom/kakaogame/KGIdpProfile$KGIdpCode;->Google:Lcom/kakaogame/KGIdpProfile$KGIdpCode;

    if-eq v0, v3, :cond_0

    .line 1299
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    sget-object v0, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    invoke-virtual {v0}, Lcom/kakaogame/KGResult$Companion;->getSuccessResult()Lcom/kakaogame/KGResult;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v2, v0}, Lkotlin/coroutines/Continuation;->resumeWith(Ljava/lang/Object;)V

    goto :goto_0

    .line 1319
    :cond_0
    new-instance v0, Lcom/kakaogame/ui/DialogManager$Settings;

    const/4 v4, 0x0

    sget v3, Lcom/kakaogame/R$string;->kakao_game_sdk_connect_popup_title:I

    invoke-static {v3}, Lkotlin/coroutines/jvm/internal/Boxing;->boxInt(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x0

    .line 1329
    sget v3, Lcom/kakaogame/R$string;->kakao_game_sdk_connect_popup_from_google:I

    invoke-static {v3}, Lkotlin/coroutines/jvm/internal/Boxing;->boxInt(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x1

    const/4 v13, 0x0

    const/4 v14, 0x0

    .line 1319
    new-instance v3, Lcom/kakaogame/auth/view/LoginUIManager$showConnectCheckPopup$2$settings$1;

    invoke-direct {v3, v2}, Lcom/kakaogame/auth/view/LoginUIManager$showConnectCheckPopup$2$settings$1;-><init>(Lkotlin/coroutines/Continuation;)V

    move-object v15, v3

    check-cast v15, Landroid/content/DialogInterface$OnCancelListener;

    const/16 v16, 0x0

    const/16 v17, 0x16f5

    const/16 v18, 0x0

    move-object v3, v0

    invoke-direct/range {v3 .. v18}, Lcom/kakaogame/ui/DialogManager$Settings;-><init>(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;ZLandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnCancelListener;Ljava/lang/Integer;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 1389
    sget v3, Lcom/kakaogame/R$string;->zinny_sdk_common_button_ok:I

    new-instance v4, Lcom/kakaogame/auth/view/LoginUIManager$showConnectCheckPopup$2$1;

    invoke-direct {v4, v2}, Lcom/kakaogame/auth/view/LoginUIManager$showConnectCheckPopup$2$1;-><init>(Lkotlin/coroutines/Continuation;)V

    check-cast v4, Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v3, v4}, Lcom/kakaogame/ui/DialogManager$Settings;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)V

    .line 1439
    sget v3, Lcom/kakaogame/R$string;->zinny_sdk_common_button_cancel:I

    new-instance v4, Lcom/kakaogame/auth/view/LoginUIManager$showConnectCheckPopup$2$2;

    invoke-direct {v4, v2}, Lcom/kakaogame/auth/view/LoginUIManager$showConnectCheckPopup$2$2;-><init>(Lkotlin/coroutines/Continuation;)V

    check-cast v4, Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v3, v4}, Lcom/kakaogame/ui/DialogManager$Settings;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)V

    .line 1489
    sget-object v2, Lcom/kakaogame/ui/DialogManager;->INSTANCE:Lcom/kakaogame/ui/DialogManager;

    move-object/from16 v3, p0

    invoke-virtual {v2, v3, v0}, Lcom/kakaogame/ui/DialogManager;->showAlertDialog(Landroid/app/Activity;Lcom/kakaogame/ui/DialogManager$Settings;)V

    .line 1269
    :goto_0
    invoke-virtual {v1}, Lkotlin/coroutines/SafeContinuation;->getOrThrow()Ljava/lang/Object;

    move-result-object v0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    if-ne v0, v1, :cond_1

    invoke-static/range {p2 .. p2}, Lkotlin/coroutines/jvm/internal/DebugProbesKt;->probeCoroutineSuspended(Lkotlin/coroutines/Continuation;)V

    :cond_1
    return-object v0

    .array-data 1
    .end array-data
.end method

.method private final showDefaultView(Landroid/app/Activity;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/kakaogame/KGResult;
    .locals 27
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "IJ",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z)",
            "Lcom/kakaogame/KGResult<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p6

    move-object/from16 v4, p7

    .line 5079
    move-object v5, v1

    check-cast v5, Landroid/content/Context;

    if-eqz p8, :cond_0

    .line 5089
    sget v6, Lcom/kakaogame/R$string;->zinny_sdk_player_rejoin_punishment_title:I

    goto :goto_0

    :cond_0
    sget v6, Lcom/kakaogame/R$string;->zinny_sdk_player_punishment_title:I

    .line 5069
    :goto_0
    invoke-static {v5, v6}, Lcom/kakaogame/util/ResourceUtil;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x2

    const/4 v8, 0x0

    const/4 v15, 0x1

    if-ltz v2, :cond_2

    .line 5139
    sget v2, Lcom/kakaogame/R$string;->zinny_sdk_player_punishment_date_format:I

    invoke-static {v5, v2}, Lcom/kakaogame/util/ResourceUtil;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    .line 5149
    new-instance v9, Ljava/text/SimpleDateFormat;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v10

    invoke-direct {v9, v2, v10}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 5159
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v2

    invoke-virtual {v9, v2}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 5169
    new-instance v2, Ljava/util/Date;

    move-wide/from16 v10, p3

    invoke-direct {v2, v10, v11}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v9, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    if-eqz p8, :cond_1

    .line 5209
    sget v9, Lcom/kakaogame/R$string;->zinny_sdk_player_rejoin_punishment:I

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v3, v7, v8

    aput-object v2, v7, v15

    .line 5189
    invoke-static {v5, v9, v7}, Lcom/kakaogame/util/ResourceUtil;->getString(Landroid/content/Context;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 5279
    :cond_1
    sget v9, Lcom/kakaogame/R$string;->zinny_sdk_player_punishment:I

    const/4 v10, 0x3

    new-array v10, v10, [Ljava/lang/Object;

    aput-object v3, v10, v8

    aput-object p5, v10, v15

    aput-object v2, v10, v7

    .line 5259
    invoke-static {v5, v9, v10}, Lcom/kakaogame/util/ResourceUtil;->getString(Landroid/content/Context;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    :goto_1
    move-object v10, v2

    goto :goto_4

    :cond_2
    const/4 v9, -0x2

    if-ne v2, v9, :cond_4

    if-eqz p8, :cond_3

    .line 5349
    sget v2, Lcom/kakaogame/R$string;->zinny_sdk_player_rejoin_punishment_temporary:I

    goto :goto_2

    :cond_3
    sget v2, Lcom/kakaogame/R$string;->zinny_sdk_player_punishment_temporary:I

    :goto_2
    new-array v7, v7, [Ljava/lang/Object;

    aput-object v3, v7, v8

    aput-object p5, v7, v15

    .line 5339
    invoke-static {v5, v2, v7}, Lcom/kakaogame/util/ResourceUtil;->getString(Landroid/content/Context;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_4
    if-eqz p8, :cond_5

    .line 5399
    sget v2, Lcom/kakaogame/R$string;->zinny_sdk_player_rejoin_punishment_forever:I

    goto :goto_3

    :cond_5
    sget v2, Lcom/kakaogame/R$string;->zinny_sdk_player_punishment_forever:I

    :goto_3
    new-array v7, v7, [Ljava/lang/Object;

    aput-object v3, v7, v8

    aput-object p5, v7, v15

    .line 5389
    invoke-static {v5, v2, v7}, Lcom/kakaogame/util/ResourceUtil;->getString(Landroid/content/Context;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :goto_4
    if-eqz p8, :cond_6

    .line 5479
    sget v2, Lcom/kakaogame/R$string;->zinny_sdk_rejoin_punishment_ok_button:I

    goto :goto_5

    :cond_6
    sget v2, Lcom/kakaogame/R$string;->zinny_sdk_common_button_close:I

    .line 5459
    :goto_5
    invoke-static {v5, v2}, Lcom/kakaogame/util/ResourceUtil;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    if-eqz p8, :cond_7

    .line 5519
    sget v7, Lcom/kakaogame/R$string;->zinny_sdk_rejoin_punishment_inquire_button:I

    goto :goto_6

    :cond_7
    sget v7, Lcom/kakaogame/R$string;->zinny_sdk_email_inquire_button:I

    .line 5499
    :goto_6
    invoke-static {v5, v7}, Lcom/kakaogame/util/ResourceUtil;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v5

    .line 5539
    sget-object v7, Lcom/kakaogame/core/CoreManager;->Companion:Lcom/kakaogame/core/CoreManager$Companion;

    invoke-virtual {v7}, Lcom/kakaogame/core/CoreManager$Companion;->getInstance()Lcom/kakaogame/core/CoreManager;

    move-result-object v7

    sget-object v8, Lcom/kakaogame/KGCustomUI$KGCustomAlertType;->NOTICE:Lcom/kakaogame/KGCustomUI$KGCustomAlertType;

    invoke-virtual {v7, v8}, Lcom/kakaogame/core/CoreManager;->hasCustomAlertHandler(Lcom/kakaogame/KGCustomUI$KGCustomAlertType;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 5549
    new-instance v7, Lcom/kakaogame/auth/view/LoginUIManager$$ExternalSyntheticLambda6;

    invoke-direct {v7}, Lcom/kakaogame/auth/view/LoginUIManager$$ExternalSyntheticLambda6;-><init>()V

    invoke-virtual {v1, v7}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 5639
    sget-object v7, Lcom/kakaogame/core/CoreManager;->Companion:Lcom/kakaogame/core/CoreManager$Companion;

    invoke-virtual {v7}, Lcom/kakaogame/core/CoreManager$Companion;->getInstance()Lcom/kakaogame/core/CoreManager;

    move-result-object v15

    .line 5659
    sget-object v7, Lcom/kakaogame/KGCustomUI$KGCustomAlert;->Companion:Lcom/kakaogame/KGCustomUI$KGCustomAlert$Companion;

    .line 5669
    sget-object v8, Lcom/kakaogame/KGCustomUI$KGCustomAlertType;->NOTICE:Lcom/kakaogame/KGCustomUI$KGCustomAlertType;

    const v12, 0x7d70cead    # 2.000549E37f

    invoke-static {v12}, Lcom/liapp/y;->حֲݴܳޯ(I)Ljava/lang/String;

    move-result-object v12

    const v14, 0x3364e3ab

    invoke-static {v14}, Lcom/liapp/y;->ׯ״ٲ֬ب(I)Ljava/lang/String;

    move-result-object v14

    move-object v9, v6

    move-object v11, v5

    move-object v13, v2

    .line 5659
    invoke-virtual/range {v7 .. v14}, Lcom/kakaogame/KGCustomUI$KGCustomAlert$Companion;->makeAlert(Lcom/kakaogame/KGCustomUI$KGCustomAlertType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/kakaogame/KGCustomUI$KGCustomAlert;

    move-result-object v2

    .line 5639
    invoke-virtual {v15, v1, v2}, Lcom/kakaogame/core/CoreManager;->showCustomUI(Landroid/app/Activity;Lcom/kakaogame/KGCustomUI$KGCustomAlert;)Ljava/lang/String;

    move-result-object v2

    const v5, 0x7d70cead    # 2.000549E37f

    invoke-static {v5}, Lcom/liapp/y;->حֲݴܳޯ(I)Ljava/lang/String;

    move-result-object v5

    if-ne v2, v5, :cond_a

    .line 5769
    invoke-direct {v0, v1, v3, v4}, Lcom/kakaogame/auth/view/LoginUIManager;->sendToMail(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_8

    .line 5799
    :cond_8
    sget-object v7, Lcom/kakaogame/util/MutexLock;->Companion:Lcom/kakaogame/util/MutexLock$Companion;

    invoke-virtual {v7}, Lcom/kakaogame/util/MutexLock$Companion;->createLock()Lcom/kakaogame/util/MutexLock;

    move-result-object v14

    .line 5809
    new-instance v13, Lcom/kakaogame/ui/DialogManager$Settings;

    const/4 v9, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x1ffa

    const/16 v25, 0x0

    move-object v7, v13

    move-object v8, v6

    move-object v6, v13

    move-object/from16 v13, v16

    move-object/from16 v26, v14

    move-object/from16 v14, v17

    move-object/from16 v15, v18

    move/from16 v16, v19

    move-object/from16 v17, v20

    move-object/from16 v18, v21

    move-object/from16 v19, v22

    move-object/from16 v20, v23

    move/from16 v21, v24

    move-object/from16 v22, v25

    invoke-direct/range {v7 .. v22}, Lcom/kakaogame/ui/DialogManager$Settings;-><init>(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;ZLandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnCancelListener;Ljava/lang/Integer;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    if-eqz p8, :cond_9

    .line 5829
    new-instance v7, Lcom/kakaogame/auth/view/LoginUIManager$$ExternalSyntheticLambda7;

    move-object/from16 v8, v26

    invoke-direct {v7, v8}, Lcom/kakaogame/auth/view/LoginUIManager$$ExternalSyntheticLambda7;-><init>(Lcom/kakaogame/util/MutexLock;)V

    invoke-virtual {v6, v2, v7}, Lcom/kakaogame/ui/DialogManager$Settings;->setPositiveButton(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    .line 5869
    new-instance v2, Lcom/kakaogame/auth/view/LoginUIManager$$ExternalSyntheticLambda8;

    invoke-direct {v2, v8, v4}, Lcom/kakaogame/auth/view/LoginUIManager$$ExternalSyntheticLambda8;-><init>(Lcom/kakaogame/util/MutexLock;Ljava/lang/String;)V

    invoke-virtual {v6, v5, v2}, Lcom/kakaogame/ui/DialogManager$Settings;->setNegativeButton(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    goto :goto_7

    :cond_9
    move-object/from16 v8, v26

    .line 5929
    new-instance v7, Lcom/kakaogame/auth/view/LoginUIManager$$ExternalSyntheticLambda9;

    invoke-direct {v7, v8, v4}, Lcom/kakaogame/auth/view/LoginUIManager$$ExternalSyntheticLambda9;-><init>(Lcom/kakaogame/util/MutexLock;Ljava/lang/String;)V

    invoke-virtual {v6, v5, v7}, Lcom/kakaogame/ui/DialogManager$Settings;->setPositiveButton(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    .line 5979
    new-instance v4, Lcom/kakaogame/auth/view/LoginUIManager$$ExternalSyntheticLambda10;

    invoke-direct {v4, v8}, Lcom/kakaogame/auth/view/LoginUIManager$$ExternalSyntheticLambda10;-><init>(Lcom/kakaogame/util/MutexLock;)V

    invoke-virtual {v6, v2, v4}, Lcom/kakaogame/ui/DialogManager$Settings;->setNegativeButton(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    .line 6039
    :goto_7
    sget-object v2, Lcom/kakaogame/ui/DialogManager;->INSTANCE:Lcom/kakaogame/ui/DialogManager;

    invoke-virtual {v2, v1, v6}, Lcom/kakaogame/ui/DialogManager;->showAlertDialog(Landroid/app/Activity;Lcom/kakaogame/ui/DialogManager$Settings;)V

    .line 6059
    new-instance v2, Lcom/kakaogame/auth/view/LoginUIManager$$ExternalSyntheticLambda12;

    invoke-direct {v2, v8}, Lcom/kakaogame/auth/view/LoginUIManager$$ExternalSyntheticLambda12;-><init>(Lcom/kakaogame/util/MutexLock;)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    const-wide/16 v4, 0x0

    const/4 v2, 0x0

    const/4 v6, 0x1

    .line 6129
    invoke-static {v8, v4, v5, v6, v2}, Lcom/kakaogame/util/MutexLock;->lock$default(Lcom/kakaogame/util/MutexLock;JILjava/lang/Object;)V

    .line 6139
    invoke-virtual {v8}, Lcom/kakaogame/util/MutexLock;->getContent()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {v0, v1, v3, v2}, Lcom/kakaogame/auth/view/LoginUIManager;->sendToMail(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    .line 6159
    :cond_a
    :goto_8
    sget-object v1, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    const/16 v2, 0x26ac

    invoke-virtual {v1, v2}, Lcom/kakaogame/KGResult$Companion;->getResult(I)Lcom/kakaogame/KGResult;

    move-result-object v1

    return-object v1

    .array-data 1
    .end array-data
.end method

.method private static final showDefaultView$lambda$12()V
    .locals 4

    .line 5569
    :try_start_0
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/kakaogame/auth/view/LoginUIManager$$ExternalSyntheticLambda16;

    invoke-direct {v1}, Lcom/kakaogame/auth/view/LoginUIManager$$ExternalSyntheticLambda16;-><init>()V

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 5609
    sget-object v1, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    check-cast v0, Ljava/lang/Throwable;

    const v3, 0x7d70cccd    # 2.0004882E37f

    invoke-static {v3}, Lcom/liapp/y;->حֲݴܳޯ(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3, v2, v0}, Lcom/kakaogame/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void

    .array-data 1
    .end array-data
.end method

.method private static final showDefaultView$lambda$12$lambda$11()V
    .locals 2

    .line 5579
    sget-object v0, Lcom/kakaogame/core/CoreManager;->Companion:Lcom/kakaogame/core/CoreManager$Companion;

    invoke-virtual {v0}, Lcom/kakaogame/core/CoreManager$Companion;->getInstance()Lcom/kakaogame/core/CoreManager;

    move-result-object v0

    const v1, 0x3364e3ab

    invoke-static {v1}, Lcom/liapp/y;->ׯ״ٲ֬ب(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kakaogame/core/CoreManager;->onCustomUICallback(Ljava/lang/String;)V

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method private static final showDefaultView$lambda$13(Lcom/kakaogame/util/MutexLock;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 5839
    invoke-virtual {p0}, Lcom/kakaogame/util/MutexLock;->unlock()V

    .line 5849
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method private static final showDefaultView$lambda$14(Lcom/kakaogame/util/MutexLock;Ljava/lang/String;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 5879
    invoke-virtual {p0, p1}, Lcom/kakaogame/util/MutexLock;->setContent(Ljava/lang/Object;)V

    .line 5889
    invoke-virtual {p0}, Lcom/kakaogame/util/MutexLock;->unlock()V

    .line 5899
    invoke-interface {p2}, Landroid/content/DialogInterface;->dismiss()V

    return-void

    .array-data 1
    .end array-data
.end method

.method private static final showDefaultView$lambda$15(Lcom/kakaogame/util/MutexLock;Ljava/lang/String;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 5939
    invoke-virtual {p0, p1}, Lcom/kakaogame/util/MutexLock;->setContent(Ljava/lang/Object;)V

    .line 5949
    invoke-virtual {p0}, Lcom/kakaogame/util/MutexLock;->unlock()V

    .line 5959
    invoke-interface {p2}, Landroid/content/DialogInterface;->dismiss()V

    return-void

    .array-data 1
    .end array-data
.end method

.method private static final showDefaultView$lambda$16(Lcom/kakaogame/util/MutexLock;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 5989
    invoke-virtual {p0}, Lcom/kakaogame/util/MutexLock;->unlock()V

    .line 5999
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method private static final showDefaultView$lambda$18(Lcom/kakaogame/util/MutexLock;)V
    .locals 4

    .line 6079
    :try_start_0
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/kakaogame/auth/view/LoginUIManager$$ExternalSyntheticLambda14;

    invoke-direct {v1, p0}, Lcom/kakaogame/auth/view/LoginUIManager$$ExternalSyntheticLambda14;-><init>(Lcom/kakaogame/util/MutexLock;)V

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 6099
    sget-object v0, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    check-cast p0, Ljava/lang/Throwable;

    const v2, 0x7d70cccd    # 2.0004882E37f

    invoke-static {v2}, Lcom/liapp/y;->حֲݴܳޯ(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1, p0}, Lcom/kakaogame/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void

    .array-data 1
    .end array-data
.end method

.method private static final showDefaultView$lambda$18$lambda$17(Lcom/kakaogame/util/MutexLock;)V
    .locals 0

    .line 6079
    invoke-virtual {p0}, Lcom/kakaogame/util/MutexLock;->unlock()V

    return-void

    .array-data 1
    .end array-data
.end method

.method private final showLoginDialog(Landroid/app/Activity;Ljava/util/List;Lcom/kakaogame/auth/view/LoginUIManager$RequestType;ILkotlin/jvm/functions/Function1;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/kakaogame/auth/view/LoginUIManager$RequestType;",
            "I",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/kakaogame/KGResult<",
            "Ljava/lang/Void;",
            ">;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 2029
    :try_start_0
    invoke-virtual {p1}, Landroid/app/Activity;->getRequestedOrientation()I

    move-result v2

    .line 2039
    invoke-static {p1}, Lcom/kakaogame/util/DisplayUtil;->isScreenPortrait(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2069
    sget-object v0, Lcom/kakaogame/util/DisplayUtil;->INSTANCE:Lcom/kakaogame/util/DisplayUtil;

    move-object v1, p1

    check-cast v1, Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/kakaogame/util/DisplayUtil;->isZFlipSubScreenPortrait(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x7

    .line 2079
    invoke-virtual {p1, v0}, Landroid/app/Activity;->setRequestedOrientation(I)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x6

    .line 2099
    invoke-virtual {p1, v0}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 2129
    :cond_1
    :goto_0
    sget-object v0, Lcom/kakaogame/log/tracer/Tracer;->INSTANCE:Lcom/kakaogame/log/tracer/Tracer;

    sget-object v1, Lcom/kakaogame/log/tracer/TraceLoginActionCode;->SDK_IDP_LIST_POPUP:Lcom/kakaogame/log/tracer/TraceLoginActionCode;

    invoke-virtual {v0, p4, v1}, Lcom/kakaogame/log/tracer/Tracer;->startAction(ILcom/kakaogame/log/tracer/TraceLoginActionCode;)V

    .line 2139
    new-instance v7, Lcom/kakaogame/auth/view/LoginIDPListDialog;

    new-instance v8, Lcom/kakaogame/auth/view/LoginUIManager$$ExternalSyntheticLambda15;

    move-object v0, v8

    move-object v1, p1

    move v3, p4

    move-object v4, p5

    move-object v5, p3

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/kakaogame/auth/view/LoginUIManager$$ExternalSyntheticLambda15;-><init>(Landroid/app/Activity;IILkotlin/jvm/functions/Function1;Lcom/kakaogame/auth/view/LoginUIManager$RequestType;Ljava/util/List;)V

    invoke-direct {v7, p1, p2, p3, v8}, Lcom/kakaogame/auth/view/LoginIDPListDialog;-><init>(Landroid/app/Activity;Ljava/util/List;Lcom/kakaogame/auth/view/LoginUIManager$RequestType;Lkotlin/jvm/functions/Function1;)V

    .line 2619
    invoke-virtual {v7}, Lcom/kakaogame/auth/view/LoginIDPListDialog;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 2639
    sget-object p2, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    new-instance p3, Ljava/lang/StringBuilder;

    const v0, -0x4519a57f

    invoke-static {v0}, Lcom/liapp/y;->ڳݬ٬ۮݪ(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    move-object v0, p1

    check-cast v0, Ljava/lang/Throwable;

    const v1, 0x7d70cccd    # 2.0004882E37f

    invoke-static {v1}, Lcom/liapp/y;->حֲݴܳޯ(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1, p3, v0}, Lcom/kakaogame/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2649
    sget-object p2, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    const/16 p3, 0x2329

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p3, p1}, Lcom/kakaogame/KGResult$Companion;->getResult(ILjava/lang/String;)Lcom/kakaogame/KGResult;

    move-result-object p1

    .line 2659
    sget-object p2, Lcom/kakaogame/log/tracer/Tracer;->INSTANCE:Lcom/kakaogame/log/tracer/Tracer;

    .line 2669
    sget-object p3, Lcom/kakaogame/log/tracer/TraceLoginActionCode;->SDK_IDP_LIST_POPUP:Lcom/kakaogame/log/tracer/TraceLoginActionCode;

    .line 2679
    sget-object v0, Lcom/kakaogame/log/tracer/Tracer;->INSTANCE:Lcom/kakaogame/log/tracer/Tracer;

    const/16 v1, 0x329

    invoke-virtual {v0, p4, v1}, Lcom/kakaogame/log/tracer/Tracer;->makeCustomErrorCode(II)I

    move-result v0

    const v1, 0x33626f8b

    invoke-static {v1}, Lcom/liapp/y;->ׯ״ٲ֬ب(I)Ljava/lang/String;

    move-result-object v1

    .line 2659
    invoke-virtual {p2, p4, p3, v0, v1}, Lcom/kakaogame/log/tracer/Tracer;->finishAction(ILcom/kakaogame/log/tracer/TraceLoginActionCode;ILjava/lang/String;)V

    .line 2709
    invoke-interface {p5, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method private static final showLoginDialog$lambda$6(Landroid/app/Activity;IILkotlin/jvm/functions/Function1;Lcom/kakaogame/auth/view/LoginUIManager$RequestType;Ljava/util/List;Ljava/lang/String;)Lkotlin/Unit;
    .locals 8

    .line 2149
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 2159
    move-object v0, p6

    check-cast v0, Ljava/lang/CharSequence;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_3

    .line 2169
    sget-object v0, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    const/16 v1, 0x2329

    invoke-virtual {v0, v1}, Lcom/kakaogame/KGResult$Companion;->getResult(I)Lcom/kakaogame/KGResult;

    move-result-object v0

    .line 2179
    sget-object v1, Lcom/kakaogame/log/tracer/Tracer;->INSTANCE:Lcom/kakaogame/log/tracer/Tracer;

    .line 2189
    sget-object v2, Lcom/kakaogame/log/tracer/TraceLoginActionCode;->SDK_IDP_LIST_POPUP:Lcom/kakaogame/log/tracer/TraceLoginActionCode;

    .line 2199
    invoke-virtual {v0}, Lcom/kakaogame/KGResult;->getCode()I

    move-result v3

    .line 2209
    invoke-virtual {v0}, Lcom/kakaogame/KGResult;->getDescription()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_2

    invoke-virtual {v0}, Lcom/kakaogame/KGResult;->toString()Ljava/lang/String;

    move-result-object v4

    .line 2179
    :cond_2
    invoke-virtual {v1, p2, v2, v3, v4}, Lcom/kakaogame/log/tracer/Tracer;->finishAction(ILcom/kakaogame/log/tracer/TraceLoginActionCode;ILjava/lang/String;)V

    .line 2229
    invoke-interface {p3, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 2249
    :cond_3
    sget-object v0, Lcom/kakaogame/log/tracer/Tracer;->INSTANCE:Lcom/kakaogame/log/tracer/Tracer;

    .line 2259
    sget-object v2, Lcom/kakaogame/log/tracer/TraceLoginActionCode;->SDK_IDP_LIST_POPUP:Lcom/kakaogame/log/tracer/TraceLoginActionCode;

    const/16 v3, 0xc8

    const v4, -0x2243743c

    invoke-static {v4}, Lcom/liapp/y;->״دش۲ݮ(I)Ljava/lang/String;

    move-result-object v4

    .line 2249
    invoke-virtual {v0, p2, v2, v3, v4}, Lcom/kakaogame/log/tracer/Tracer;->finishAction(ILcom/kakaogame/log/tracer/TraceLoginActionCode;ILjava/lang/String;)V

    .line 2299
    sget-object v6, Lcom/kakaogame/auth/view/LoginUIManager;->INSTANCE:Lcom/kakaogame/auth/view/LoginUIManager;

    new-instance v7, Lcom/kakaogame/auth/view/LoginUIManager$showLoginDialog$loginIDPListDialog$1$1;

    move-object v0, v7

    move-object v1, p3

    move-object v2, p0

    move-object v3, p5

    move-object v4, p4

    move v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/kakaogame/auth/view/LoginUIManager$showLoginDialog$loginIDPListDialog$1$1;-><init>(Lkotlin/jvm/functions/Function1;Landroid/app/Activity;Ljava/util/List;Lcom/kakaogame/auth/view/LoginUIManager$RequestType;I)V

    move-object v5, v7

    check-cast v5, Lcom/kakaogame/KGResultCallback;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p6

    move-object v3, p4

    move v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/kakaogame/auth/view/LoginUIManager;->onSelectIdpCode(Landroid/app/Activity;Ljava/lang/String;Lcom/kakaogame/auth/view/LoginUIManager$RequestType;ILcom/kakaogame/KGResultCallback;)V

    .line 2609
    :goto_2
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    .array-data 1
    .end array-data
.end method

.method public static final showLoginPopup(Landroid/app/Activity;Ljava/util/List;Lcom/kakaogame/auth/view/LoginUIManager$RequestType;ILkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/kakaogame/auth/view/LoginUIManager$RequestType;",
            "I",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/kakaogame/KGResult<",
            "Ljava/lang/Void;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 2809
    new-instance v1, Lkotlin/coroutines/SafeContinuation;

    invoke-static/range {p4 .. p4}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->intercepted(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v0

    invoke-direct {v1, v0}, Lkotlin/coroutines/SafeContinuation;-><init>(Lkotlin/coroutines/Continuation;)V

    move-object v9, v1

    check-cast v9, Lkotlin/coroutines/Continuation;

    .line 2819
    sget-object v0, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    const v3, 0x5439c6ca

    invoke-static {v3}, Lcom/liapp/y;->׳ֳֳ֬د(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v4, p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const v3, 0x7d70cccd    # 2.0004882E37f

    invoke-static {v3}, Lcom/liapp/y;->حֲݴܳޯ(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3, v2}, Lcom/kakaogame/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2839
    :try_start_0
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getMain()Lkotlinx/coroutines/MainCoroutineDispatcher;

    move-result-object v0

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    invoke-static {v0}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v0

    const/4 v10, 0x0

    const/4 v11, 0x0

    new-instance v12, Lcom/kakaogame/auth/view/LoginUIManager$showLoginPopup$2$1;

    const/4 v8, 0x0

    move-object v2, v12

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move/from16 v6, p3

    move-object v7, v9

    invoke-direct/range {v2 .. v8}, Lcom/kakaogame/auth/view/LoginUIManager$showLoginPopup$2$1;-><init>(Landroid/app/Activity;Ljava/util/List;Lcom/kakaogame/auth/view/LoginUIManager$RequestType;ILkotlin/coroutines/Continuation;Lkotlin/coroutines/Continuation;)V

    move-object v5, v12

    check-cast v5, Lkotlin/jvm/functions/Function2;

    const/4 v6, 0x3

    const/4 v7, 0x0

    move-object v2, v0

    move-object v3, v10

    move-object v4, v11

    invoke-static/range {v2 .. v7}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 2949
    sget-object v2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    sget-object v2, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    const/16 v3, 0xfa1

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Lcom/kakaogame/KGResult$Companion;->getResult(ILjava/lang/String;)Lcom/kakaogame/KGResult;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v9, v0}, Lkotlin/coroutines/Continuation;->resumeWith(Ljava/lang/Object;)V

    .line 2809
    :goto_0
    invoke-virtual {v1}, Lkotlin/coroutines/SafeContinuation;->getOrThrow()Ljava/lang/Object;

    move-result-object v0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    if-ne v0, v1, :cond_0

    invoke-static/range {p4 .. p4}, Lkotlin/coroutines/jvm/internal/DebugProbesKt;->probeCoroutineSuspended(Lkotlin/coroutines/Continuation;)V

    :cond_0
    return-object v0

    .array-data 1
    .end array-data
.end method

.method public static final showProtection(Landroid/app/Activity;Lcom/kakaogame/auth/LoginData;)Lcom/kakaogame/KGResult;
    .locals 27
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lcom/kakaogame/auth/LoginData;",
            ")",
            "Lcom/kakaogame/KGResult<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const v2, 0x543d14da

    invoke-static {v2}, Lcom/liapp/y;->׳ֳֳ֬د(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7229
    sget-object v2, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    const v4, 0x5d10edbf

    invoke-static {v4}, Lcom/liapp/y;->ڴݮگ֮ت(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const v4, 0x7d70cccd    # 2.0004882E37f

    invoke-static {v4}, Lcom/liapp/y;->حֲݴܳޯ(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4, v3}, Lcom/kakaogame/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v1, :cond_0

    .line 7259
    :try_start_0
    sget-object v0, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    const-string v1, "login data is null"

    const/16 v2, 0xfa0

    invoke-virtual {v0, v2, v1}, Lcom/kakaogame/KGResult$Companion;->getResult(ILjava/lang/String;)Lcom/kakaogame/KGResult;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v2, "message"

    .line 7309
    invoke-virtual {v1, v2}, Lcom/kakaogame/auth/LoginData;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Ljava/lang/String;

    const-string v2, "buttonName"

    .line 7319
    invoke-virtual {v1, v2}, Lcom/kakaogame/auth/LoginData;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "certificationUrl"

    .line 7329
    invoke-virtual {v1, v3}, Lcom/kakaogame/auth/LoginData;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v3, ""

    if-nez v1, :cond_1

    move-object v1, v3

    .line 7369
    :cond_1
    :try_start_1
    sget-object v5, Lcom/kakaogame/core/CoreManager;->Companion:Lcom/kakaogame/core/CoreManager$Companion;

    invoke-virtual {v5}, Lcom/kakaogame/core/CoreManager$Companion;->getInstance()Lcom/kakaogame/core/CoreManager;

    move-result-object v5

    sget-object v6, Lcom/kakaogame/KGCustomUI$KGCustomAlertType;->NOTICE:Lcom/kakaogame/KGCustomUI$KGCustomAlertType;

    invoke-virtual {v5, v6}, Lcom/kakaogame/core/CoreManager;->hasCustomAlertHandler(Lcom/kakaogame/KGCustomUI$KGCustomAlertType;)Z

    move-result v5
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const v15, -0x2247e3e4

    invoke-static {v15}, Lcom/liapp/y;->״دش۲ݮ(I)Ljava/lang/String;

    move-result-object v15

    if-eqz v5, :cond_2

    .line 7379
    :try_start_2
    new-instance v3, Lcom/kakaogame/auth/view/LoginUIManager$$ExternalSyntheticLambda18;

    invoke-direct {v3}, Lcom/kakaogame/auth/view/LoginUIManager$$ExternalSyntheticLambda18;-><init>()V

    invoke-virtual {v0, v3}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 7469
    sget-object v3, Lcom/kakaogame/core/CoreManager;->Companion:Lcom/kakaogame/core/CoreManager$Companion;

    invoke-virtual {v3}, Lcom/kakaogame/core/CoreManager$Companion;->getInstance()Lcom/kakaogame/core/CoreManager;

    move-result-object v3

    .line 7489
    sget-object v5, Lcom/kakaogame/KGCustomUI$KGCustomAlert;->Companion:Lcom/kakaogame/KGCustomUI$KGCustomAlert$Companion;

    .line 7499
    sget-object v6, Lcom/kakaogame/KGCustomUI$KGCustomAlertType;->NOTICE:Lcom/kakaogame/KGCustomUI$KGCustomAlertType;

    const/4 v7, 0x0

    const-string v10, "android.intent.action.VIEW"

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v9, v2

    .line 7489
    invoke-virtual/range {v5 .. v12}, Lcom/kakaogame/KGCustomUI$KGCustomAlert$Companion;->makeAlert(Lcom/kakaogame/KGCustomUI$KGCustomAlertType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/kakaogame/KGCustomUI$KGCustomAlert;

    move-result-object v2

    .line 7469
    invoke-virtual {v3, v0, v2}, Lcom/kakaogame/core/CoreManager;->showCustomUI(Landroid/app/Activity;Lcom/kakaogame/KGCustomUI$KGCustomAlert;)Ljava/lang/String;

    move-result-object v2

    if-ne v2, v15, :cond_4

    .line 7599
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, v15}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 7609
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 7619
    invoke-virtual {v2, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 7629
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 7639
    invoke-virtual {v0, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 7679
    :cond_2
    sget-object v5, Lcom/kakaogame/util/MutexLock;->Companion:Lcom/kakaogame/util/MutexLock$Companion;

    invoke-virtual {v5}, Lcom/kakaogame/util/MutexLock$Companion;->createLock()Lcom/kakaogame/util/MutexLock;

    move-result-object v14

    .line 7689
    new-instance v13, Lcom/kakaogame/ui/DialogManager$Settings;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x1ffb

    const/16 v23, 0x0

    move-object v5, v13

    move-object/from16 v24, v13

    move-object/from16 v13, v16

    move-object/from16 v25, v14

    move/from16 v14, v17

    move-object/from16 v26, v15

    move-object/from16 v15, v18

    move-object/from16 v16, v19

    move-object/from16 v17, v20

    move-object/from16 v18, v21

    move/from16 v19, v22

    move-object/from16 v20, v23

    invoke-direct/range {v5 .. v20}, Lcom/kakaogame/ui/DialogManager$Settings;-><init>(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;ZLandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnCancelListener;Ljava/lang/Integer;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    if-nez v2, :cond_3

    move-object v2, v3

    .line 7699
    :cond_3
    new-instance v3, Lcom/kakaogame/auth/view/LoginUIManager$$ExternalSyntheticLambda19;

    move-object/from16 v5, v25

    invoke-direct {v3, v5}, Lcom/kakaogame/auth/view/LoginUIManager$$ExternalSyntheticLambda19;-><init>(Lcom/kakaogame/util/MutexLock;)V

    move-object/from16 v6, v24

    invoke-virtual {v6, v2, v3}, Lcom/kakaogame/ui/DialogManager$Settings;->setPositiveButton(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    .line 7759
    sget-object v2, Lcom/kakaogame/ui/DialogManager;->INSTANCE:Lcom/kakaogame/ui/DialogManager;

    invoke-virtual {v2, v0, v6}, Lcom/kakaogame/ui/DialogManager;->showAlertDialog(Landroid/app/Activity;Lcom/kakaogame/ui/DialogManager$Settings;)V

    .line 7769
    new-instance v2, Lcom/kakaogame/auth/view/LoginUIManager$$ExternalSyntheticLambda20;

    invoke-direct {v2, v5}, Lcom/kakaogame/auth/view/LoginUIManager$$ExternalSyntheticLambda20;-><init>(Lcom/kakaogame/util/MutexLock;)V

    invoke-virtual {v0, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    const-wide/16 v6, 0x0

    .line 7889
    invoke-static {v5, v6, v7, v2, v3}, Lcom/kakaogame/util/MutexLock;->lock$default(Lcom/kakaogame/util/MutexLock;JILjava/lang/Object;)V

    .line 7899
    invoke-virtual {v5}, Lcom/kakaogame/util/MutexLock;->getContent()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v2, Lcom/kakaogame/KGResult;

    .line 7909
    invoke-virtual {v2}, Lcom/kakaogame/KGResult;->isSuccess()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 7919
    new-instance v2, Landroid/content/Intent;

    move-object/from16 v3, v26

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 7929
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 7939
    invoke-virtual {v2, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 7949
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 7959
    invoke-virtual {v0, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 7999
    :cond_4
    :goto_0
    invoke-static/range {p0 .. p0}, Lcom/kakaogame/util/AppUtil;->terminateApp(Landroid/app/Activity;)V

    .line 8009
    invoke-static {}, Lcom/kakaogame/util/AppUtil;->killAppProcess()V

    .line 8019
    sget-object v0, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    invoke-virtual {v0}, Lcom/kakaogame/KGResult$Companion;->getSuccessResult()Lcom/kakaogame/KGResult;

    move-result-object v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 8039
    sget-object v1, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v3, v0

    check-cast v3, Ljava/lang/Throwable;

    invoke-virtual {v1, v4, v2, v3}, Lcom/kakaogame/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 8049
    sget-object v1, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    const/16 v2, 0xfa1

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/kakaogame/KGResult$Companion;->getResult(ILjava/lang/String;)Lcom/kakaogame/KGResult;

    move-result-object v0

    :goto_1
    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method private static final showProtection$lambda$26()V
    .locals 4

    .line 7399
    :try_start_0
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/kakaogame/auth/view/LoginUIManager$$ExternalSyntheticLambda5;

    invoke-direct {v1}, Lcom/kakaogame/auth/view/LoginUIManager$$ExternalSyntheticLambda5;-><init>()V

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 7439
    sget-object v1, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    check-cast v0, Ljava/lang/Throwable;

    const v3, 0x7d70cccd    # 2.0004882E37f

    invoke-static {v3}, Lcom/liapp/y;->حֲݴܳޯ(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3, v2, v0}, Lcom/kakaogame/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void

    .array-data 1
    .end array-data
.end method

.method private static final showProtection$lambda$26$lambda$25()V
    .locals 2

    .line 7409
    sget-object v0, Lcom/kakaogame/core/CoreManager;->Companion:Lcom/kakaogame/core/CoreManager$Companion;

    invoke-virtual {v0}, Lcom/kakaogame/core/CoreManager$Companion;->getInstance()Lcom/kakaogame/core/CoreManager;

    move-result-object v0

    const v1, 0x3364e3ab

    invoke-static {v1}, Lcom/liapp/y;->ׯ״ٲ֬ب(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kakaogame/core/CoreManager;->onCustomUICallback(Ljava/lang/String;)V

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method private static final showProtection$lambda$27(Lcom/kakaogame/util/MutexLock;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 7709
    sget-object p2, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    invoke-virtual {p2}, Lcom/kakaogame/KGResult$Companion;->getSuccessResult()Lcom/kakaogame/KGResult;

    move-result-object p2

    .line 7719
    invoke-virtual {p0, p2}, Lcom/kakaogame/util/MutexLock;->setContent(Ljava/lang/Object;)V

    .line 7729
    invoke-virtual {p0}, Lcom/kakaogame/util/MutexLock;->unlock()V

    .line 7739
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void

    .array-data 1
    .end array-data
.end method

.method private static final showProtection$lambda$29(Lcom/kakaogame/util/MutexLock;)V
    .locals 4

    .line 7789
    :try_start_0
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/kakaogame/auth/view/LoginUIManager$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/kakaogame/auth/view/LoginUIManager$$ExternalSyntheticLambda1;-><init>(Lcom/kakaogame/util/MutexLock;)V

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 7859
    sget-object v0, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    check-cast p0, Ljava/lang/Throwable;

    const v2, 0x7d70cccd    # 2.0004882E37f

    invoke-static {v2}, Lcom/liapp/y;->حֲݴܳޯ(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1, p0}, Lcom/kakaogame/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void

    .array-data 1
    .end array-data
.end method

.method private static final showProtection$lambda$29$lambda$28(Lcom/kakaogame/util/MutexLock;)V
    .locals 2

    .line 7809
    sget-object v0, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    const/16 v1, 0x2329

    invoke-virtual {v0, v1}, Lcom/kakaogame/KGResult$Companion;->getResult(I)Lcom/kakaogame/KGResult;

    move-result-object v0

    .line 7819
    invoke-virtual {p0, v0}, Lcom/kakaogame/util/MutexLock;->setContent(Ljava/lang/Object;)V

    .line 7829
    invoke-virtual {p0}, Lcom/kakaogame/util/MutexLock;->unlock()V

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public static final showPunishment(Landroid/app/Activity;Lcom/kakaogame/idp/IdpAccount;Lcom/kakaogame/auth/LoginData;Z)Lcom/kakaogame/KGResult;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lcom/kakaogame/idp/IdpAccount;",
            "Lcom/kakaogame/auth/LoginData;",
            "Z)",
            "Lcom/kakaogame/KGResult<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v11, p1

    move-object/from16 v1, p2

    const v12, -0x4519119f

    invoke-static {v12}, Lcom/liapp/y;->ڳݬ٬ۮݪ(I)Ljava/lang/String;

    move-result-object v12

    const v13, -0x4519aa5f

    invoke-static {v13}, Lcom/liapp/y;->ڳݬ٬ۮݪ(I)Ljava/lang/String;

    move-result-object v13

    const v2, 0x543d14da

    invoke-static {v2}, Lcom/liapp/y;->׳ֳֳ֬د(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3579
    sget-object v2, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    const v4, 0x2255cfce

    invoke-static {v4}, Lcom/liapp/y;->ֲֳگܱޭ(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const v14, 0x7d70cccd    # 2.0004882E37f

    invoke-static {v14}, Lcom/liapp/y;->حֲݴܳޯ(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v2, v14, v3}, Lcom/kakaogame/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v1, :cond_0

    .line 3609
    :try_start_0
    sget-object v0, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    const-string v1, "login data is null"

    const/16 v2, 0xfa0

    invoke-virtual {v0, v2, v1}, Lcom/kakaogame/KGResult$Companion;->getResult(ILjava/lang/String;)Lcom/kakaogame/KGResult;

    move-result-object v0

    return-object v0

    .line 3669
    :cond_0
    invoke-virtual/range {p2 .. p2}, Lcom/kakaogame/auth/LoginData;->getPlayerId()Ljava/lang/String;

    move-result-object v15

    .line 3679
    invoke-virtual/range {p2 .. p2}, Lcom/kakaogame/auth/LoginData;->getOnetimeToken()Ljava/lang/String;

    move-result-object v8

    const-string v2, "restrReason"

    .line 3689
    invoke-virtual {v1, v2}, Lcom/kakaogame/auth/LoginData;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Ljava/lang/String;

    const-string v2, "restrMessage"

    .line 3699
    invoke-virtual {v1, v2}, Lcom/kakaogame/auth/LoginData;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v3, ""

    if-nez v2, :cond_1

    move-object v6, v3

    goto :goto_0

    :cond_1
    move-object v6, v2

    :goto_0
    :try_start_1
    const-string v2, "csEmail"

    .line 3709
    invoke-virtual {v1, v2}, Lcom/kakaogame/auth/LoginData;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-nez v2, :cond_2

    move-object v10, v3

    goto :goto_1

    :cond_2
    move-object v10, v2

    :goto_1
    const-string v2, "restrEndTime"

    .line 3729
    invoke-virtual {v1, v2}, Lcom/kakaogame/auth/LoginData;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    goto :goto_2

    :cond_3
    const-wide/16 v2, 0x0

    :goto_2
    move-wide v4, v2

    const-string v2, "restrDay"

    .line 3739
    invoke-virtual {v1, v2}, Lcom/kakaogame/auth/LoginData;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    goto :goto_3

    :cond_4
    const/4 v2, -0x2

    :goto_3
    move v3, v2

    const-string v2, "restrTag"

    .line 3749
    invoke-virtual {v1, v2}, Lcom/kakaogame/auth/LoginData;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const/16 v16, 0x0

    if-eqz v11, :cond_5

    .line 3769
    invoke-virtual/range {p1 .. p1}, Lcom/kakaogame/idp/IdpAccount;->getIdpCode()Ljava/lang/String;

    move-result-object v9

    goto :goto_4

    :cond_5
    move-object/from16 v9, v16

    :goto_4
    sget-object v17, Lcom/kakaogame/KGIdpProfile$KGIdpCode;->SigninWithApple:Lcom/kakaogame/KGIdpProfile$KGIdpCode;

    invoke-virtual/range {v17 .. v17}, Lcom/kakaogame/KGIdpProfile$KGIdpCode;->getCode()Ljava/lang/String;

    move-result-object v1

    invoke-static {v9, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 3779
    invoke-virtual/range {p1 .. p1}, Lcom/kakaogame/idp/IdpAccount;->getIdpRefreshToken()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_6

    const-string v1, "refreshToken"

    .line 3789
    invoke-virtual/range {p2 .. p2}, Lcom/kakaogame/auth/LoginData;->getSiwaRefreshToken()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v11, v1, v9}, Lcom/kakaogame/idp/IdpAccount;->put(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_6
    const-string v1, "normalBlock"

    .line 3839
    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 3849
    sget-object v1, Lcom/kakaogame/auth/view/LoginUIManager;->INSTANCE:Lcom/kakaogame/auth/view/LoginUIManager;

    move-object/from16 v2, p0

    move-object v9, v15

    invoke-direct/range {v1 .. v10}, Lcom/kakaogame/auth/view/LoginUIManager;->showUnregisterView(Landroid/app/Activity;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/kakaogame/KGResult;

    move-result-object v1

    goto :goto_5

    :cond_7
    const-string v1, "blockPlayerRejoin"

    .line 3959
    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 3969
    sget-object v1, Lcom/kakaogame/auth/view/LoginUIManager;->INSTANCE:Lcom/kakaogame/auth/view/LoginUIManager;

    .line 4019
    invoke-virtual/range {p2 .. p2}, Lcom/kakaogame/auth/LoginData;->getIdpId()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    move-object/from16 v2, p0

    move-object v6, v7

    move-object v7, v8

    move-object v8, v10

    .line 3969
    invoke-direct/range {v1 .. v9}, Lcom/kakaogame/auth/view/LoginUIManager;->showDefaultView(Landroid/app/Activity;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/kakaogame/KGResult;

    move-result-object v1

    goto :goto_5

    .line 4079
    :cond_8
    sget-object v1, Lcom/kakaogame/auth/view/LoginUIManager;->INSTANCE:Lcom/kakaogame/auth/view/LoginUIManager;

    const/4 v9, 0x0

    move-object/from16 v2, p0

    move-object v6, v7

    move-object v7, v15

    move-object v8, v10

    invoke-direct/range {v1 .. v9}, Lcom/kakaogame/auth/view/LoginUIManager;->showDefaultView(Landroid/app/Activity;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/kakaogame/KGResult;

    move-result-object v1

    .line 4189
    :goto_5
    invoke-virtual {v1}, Lcom/kakaogame/KGResult;->getCode()I

    move-result v2

    const/16 v3, 0x1cf

    if-ne v2, v3, :cond_c

    if-eqz v11, :cond_9

    .line 4199
    invoke-virtual/range {p1 .. p1}, Lcom/kakaogame/idp/IdpAccount;->getIdpCode()Ljava/lang/String;

    move-result-object v16

    :cond_9
    move-object/from16 v2, v16

    sget-object v3, Lcom/kakaogame/KGIdpProfile$KGIdpCode;->SigninWithApple:Lcom/kakaogame/KGIdpProfile$KGIdpCode;

    invoke-virtual {v3}, Lcom/kakaogame/KGIdpProfile$KGIdpCode;->getCode()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 4209
    invoke-virtual/range {p1 .. p1}, Lcom/kakaogame/idp/IdpAccount;->getIdpRefreshToken()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_a

    .line 4219
    sget-object v3, Lcom/kakaogame/auth/AuthService;->INSTANCE:Lcom/kakaogame/auth/AuthService;

    invoke-virtual {v3, v15, v2}, Lcom/kakaogame/auth/AuthService;->revokeSIWA(Ljava/lang/String;Ljava/lang/String;)Lcom/kakaogame/KGResult;

    .line 4239
    :cond_a
    sget-object v2, Lcom/kakaogame/core/CoreManager;->Companion:Lcom/kakaogame/core/CoreManager$Companion;

    invoke-virtual {v2}, Lcom/kakaogame/core/CoreManager$Companion;->getInstance()Lcom/kakaogame/core/CoreManager;

    move-result-object v2

    invoke-virtual {v2, v11}, Lcom/kakaogame/core/CoreManager;->idpLogout(Lcom/kakaogame/idp/IdpAccount;)Lcom/kakaogame/KGResult;

    move-result-object v2

    .line 4249
    sget-object v3, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v14, v2}, Lcom/kakaogame/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    .line 4269
    :cond_b
    sget-object v2, Lcom/kakaogame/core/CoreManager;->Companion:Lcom/kakaogame/core/CoreManager$Companion;

    invoke-virtual {v2}, Lcom/kakaogame/core/CoreManager$Companion;->getInstance()Lcom/kakaogame/core/CoreManager;

    move-result-object v2

    invoke-virtual {v2, v11}, Lcom/kakaogame/core/CoreManager;->unregister(Lcom/kakaogame/idp/IdpAccount;)Lcom/kakaogame/KGResult;

    move-result-object v2

    .line 4279
    sget-object v3, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v14, v2}, Lcom/kakaogame/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_6
    if-nez p3, :cond_d

    .line 4319
    sget-object v2, Lcom/kakaogame/auth/view/LoginUIManager;->INSTANCE:Lcom/kakaogame/auth/view/LoginUIManager;

    invoke-direct {v2, v0, v11}, Lcom/kakaogame/auth/view/LoginUIManager;->terminateAppAfterLogout(Landroid/app/Activity;Lcom/kakaogame/idp/IdpAccount;)V

    goto :goto_7

    .line 4329
    :cond_c
    invoke-virtual {v1}, Lcom/kakaogame/KGResult;->getCode()I

    move-result v2

    const/16 v3, 0x26ac

    if-ne v2, v3, :cond_d

    .line 4339
    sget-object v2, Lcom/kakaogame/auth/view/LoginUIManager;->INSTANCE:Lcom/kakaogame/auth/view/LoginUIManager;

    invoke-direct {v2, v0, v11}, Lcom/kakaogame/auth/view/LoginUIManager;->terminateAppAfterLogout(Landroid/app/Activity;Lcom/kakaogame/idp/IdpAccount;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_7

    :catch_0
    move-exception v0

    .line 4379
    sget-object v1, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v3, v0

    check-cast v3, Ljava/lang/Throwable;

    invoke-virtual {v1, v14, v2, v3}, Lcom/kakaogame/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 4389
    sget-object v1, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    const/16 v2, 0xfa1

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/kakaogame/KGResult$Companion;->getResult(ILjava/lang/String;)Lcom/kakaogame/KGResult;

    move-result-object v1

    :cond_d
    :goto_7
    return-object v1

    .array-data 1
    .end array-data
.end method

.method public static synthetic showPunishment$default(Landroid/app/Activity;Lcom/kakaogame/idp/IdpAccount;Lcom/kakaogame/auth/LoginData;ZILjava/lang/Object;)Lcom/kakaogame/KGResult;
    .locals 0

    and-int/lit8 p4, p4, 0x8

    if-eqz p4, :cond_0

    const/4 p3, 0x1

    .line 3509
    :cond_0
    invoke-static {p0, p1, p2, p3}, Lcom/kakaogame/auth/view/LoginUIManager;->showPunishment(Landroid/app/Activity;Lcom/kakaogame/idp/IdpAccount;Lcom/kakaogame/auth/LoginData;Z)Lcom/kakaogame/KGResult;

    move-result-object p0

    return-object p0

    .array-data 1
    .end array-data
.end method

.method public static final showRestrictAdolescent(Landroid/app/Activity;)Lcom/kakaogame/KGResult;
    .locals 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            ")",
            "Lcom/kakaogame/KGResult<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    move-object/from16 v0, p0

    const v1, 0x543d14da

    invoke-static {v1}, Lcom/liapp/y;->׳ֳֳ֬د(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6379
    sget-object v1, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    const v2, 0x2255cf7e

    invoke-static {v2}, Lcom/liapp/y;->ֲֳگܱޭ(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7d70cccd    # 2.0004882E37f

    invoke-static {v3}, Lcom/liapp/y;->حֲݴܳޯ(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3, v2}, Lcom/kakaogame/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6399
    :try_start_0
    move-object v1, v0

    check-cast v1, Landroid/content/Context;

    sget v2, Lcom/kakaogame/R$string;->kakao_game_sdk_restrict_adolescent:I

    invoke-static {v1, v2}, Lcom/kakaogame/util/ResourceUtil;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v7

    .line 6409
    move-object v1, v0

    check-cast v1, Landroid/content/Context;

    sget v2, Lcom/kakaogame/R$string;->zinny_sdk_common_button_ok:I

    invoke-static {v1, v2}, Lcom/kakaogame/util/ResourceUtil;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    .line 6419
    sget-object v2, Lcom/kakaogame/core/CoreManager;->Companion:Lcom/kakaogame/core/CoreManager$Companion;

    invoke-virtual {v2}, Lcom/kakaogame/core/CoreManager$Companion;->getInstance()Lcom/kakaogame/core/CoreManager;

    move-result-object v2

    .line 6429
    sget-object v4, Lcom/kakaogame/KGCustomUI$KGCustomAlertType;->NOTICE:Lcom/kakaogame/KGCustomUI$KGCustomAlertType;

    invoke-virtual {v2, v4}, Lcom/kakaogame/core/CoreManager;->hasCustomAlertHandler(Lcom/kakaogame/KGCustomUI$KGCustomAlertType;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 6449
    new-instance v2, Lcom/kakaogame/auth/view/LoginUIManager$$ExternalSyntheticLambda2;

    invoke-direct {v2}, Lcom/kakaogame/auth/view/LoginUIManager$$ExternalSyntheticLambda2;-><init>()V

    invoke-virtual {v0, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 6539
    sget-object v2, Lcom/kakaogame/core/CoreManager;->Companion:Lcom/kakaogame/core/CoreManager$Companion;

    invoke-virtual {v2}, Lcom/kakaogame/core/CoreManager$Companion;->getInstance()Lcom/kakaogame/core/CoreManager;

    move-result-object v2

    .line 6559
    sget-object v4, Lcom/kakaogame/KGCustomUI$KGCustomAlert;->Companion:Lcom/kakaogame/KGCustomUI$KGCustomAlert$Companion;

    .line 6569
    sget-object v5, Lcom/kakaogame/KGCustomUI$KGCustomAlertType;->NOTICE:Lcom/kakaogame/KGCustomUI$KGCustomAlertType;

    const-string v6, ""

    const-string v8, ""

    const-string v9, ""

    const-string v11, "customUI_close"

    move-object v10, v1

    .line 6559
    invoke-virtual/range {v4 .. v11}, Lcom/kakaogame/KGCustomUI$KGCustomAlert$Companion;->makeAlert(Lcom/kakaogame/KGCustomUI$KGCustomAlertType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/kakaogame/KGCustomUI$KGCustomAlert;

    move-result-object v1

    .line 6539
    invoke-virtual {v2, v0, v1}, Lcom/kakaogame/core/CoreManager;->showCustomUI(Landroid/app/Activity;Lcom/kakaogame/KGCustomUI$KGCustomAlert;)Ljava/lang/String;

    goto :goto_0

    .line 6669
    :cond_0
    sget-object v2, Lcom/kakaogame/util/MutexLock;->Companion:Lcom/kakaogame/util/MutexLock$Companion;

    invoke-virtual {v2}, Lcom/kakaogame/util/MutexLock$Companion;->createLock()Lcom/kakaogame/util/MutexLock;

    move-result-object v2

    .line 6679
    new-instance v15, Lcom/kakaogame/ui/DialogManager$Settings;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x1ffb

    const/16 v20, 0x0

    move-object v4, v15

    move-object/from16 v21, v15

    move-object/from16 v15, v16

    move-object/from16 v16, v17

    move-object/from16 v17, v18

    move/from16 v18, v19

    move-object/from16 v19, v20

    invoke-direct/range {v4 .. v19}, Lcom/kakaogame/ui/DialogManager$Settings;-><init>(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;ZLandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnCancelListener;Ljava/lang/Integer;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 6689
    new-instance v4, Lcom/kakaogame/auth/view/LoginUIManager$$ExternalSyntheticLambda3;

    invoke-direct {v4, v2}, Lcom/kakaogame/auth/view/LoginUIManager$$ExternalSyntheticLambda3;-><init>(Lcom/kakaogame/util/MutexLock;)V

    move-object/from16 v5, v21

    invoke-virtual {v5, v1, v4}, Lcom/kakaogame/ui/DialogManager$Settings;->setPositiveButton(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    .line 6729
    sget-object v1, Lcom/kakaogame/ui/DialogManager;->INSTANCE:Lcom/kakaogame/ui/DialogManager;

    invoke-virtual {v1, v0, v5}, Lcom/kakaogame/ui/DialogManager;->showAlertDialog(Landroid/app/Activity;Lcom/kakaogame/ui/DialogManager$Settings;)V

    .line 6739
    new-instance v1, Lcom/kakaogame/auth/view/LoginUIManager$$ExternalSyntheticLambda4;

    invoke-direct {v1, v2}, Lcom/kakaogame/auth/view/LoginUIManager$$ExternalSyntheticLambda4;-><init>(Lcom/kakaogame/util/MutexLock;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    const/4 v1, 0x1

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    .line 6809
    invoke-static {v2, v5, v6, v1, v4}, Lcom/kakaogame/util/MutexLock;->lock$default(Lcom/kakaogame/util/MutexLock;JILjava/lang/Object;)V

    .line 6829
    :goto_0
    invoke-static/range {p0 .. p0}, Lcom/kakaogame/util/AppUtil;->terminateApp(Landroid/app/Activity;)V

    .line 6839
    invoke-static {}, Lcom/kakaogame/util/AppUtil;->killAppProcess()V

    .line 6849
    sget-object v0, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    invoke-virtual {v0}, Lcom/kakaogame/KGResult$Companion;->getSuccessResult()Lcom/kakaogame/KGResult;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 6869
    sget-object v1, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v4, v0

    check-cast v4, Ljava/lang/Throwable;

    invoke-virtual {v1, v3, v2, v4}, Lcom/kakaogame/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 6879
    sget-object v1, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    const/16 v2, 0xfa1

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/kakaogame/KGResult$Companion;->getResult(ILjava/lang/String;)Lcom/kakaogame/KGResult;

    move-result-object v0

    :goto_1
    return-object v0

    .array-data 1
    .end array-data
.end method

.method private static final showRestrictAdolescent$lambda$20()V
    .locals 4

    .line 6469
    :try_start_0
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/kakaogame/auth/view/LoginUIManager$$ExternalSyntheticLambda17;

    invoke-direct {v1}, Lcom/kakaogame/auth/view/LoginUIManager$$ExternalSyntheticLambda17;-><init>()V

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 6509
    sget-object v1, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    check-cast v0, Ljava/lang/Throwable;

    const v3, 0x7d70cccd    # 2.0004882E37f

    invoke-static {v3}, Lcom/liapp/y;->حֲݴܳޯ(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3, v2, v0}, Lcom/kakaogame/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void

    .array-data 1
    .end array-data
.end method

.method private static final showRestrictAdolescent$lambda$20$lambda$19()V
    .locals 2

    .line 6479
    sget-object v0, Lcom/kakaogame/core/CoreManager;->Companion:Lcom/kakaogame/core/CoreManager$Companion;

    invoke-virtual {v0}, Lcom/kakaogame/core/CoreManager$Companion;->getInstance()Lcom/kakaogame/core/CoreManager;

    move-result-object v0

    const v1, 0x3364e3ab

    invoke-static {v1}, Lcom/liapp/y;->ׯ״ٲ֬ب(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kakaogame/core/CoreManager;->onCustomUICallback(Ljava/lang/String;)V

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method private static final showRestrictAdolescent$lambda$21(Lcom/kakaogame/util/MutexLock;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 6699
    invoke-virtual {p0}, Lcom/kakaogame/util/MutexLock;->unlock()V

    .line 6709
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method private static final showRestrictAdolescent$lambda$23(Lcom/kakaogame/util/MutexLock;)V
    .locals 4

    .line 6759
    :try_start_0
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/kakaogame/auth/view/LoginUIManager$$ExternalSyntheticLambda13;

    invoke-direct {v1, p0}, Lcom/kakaogame/auth/view/LoginUIManager$$ExternalSyntheticLambda13;-><init>(Lcom/kakaogame/util/MutexLock;)V

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 6779
    sget-object v0, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    check-cast p0, Ljava/lang/Throwable;

    const v2, 0x7d70cccd    # 2.0004882E37f

    invoke-static {v2}, Lcom/liapp/y;->حֲݴܳޯ(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1, p0}, Lcom/kakaogame/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void

    .array-data 1
    .end array-data
.end method

.method private static final showRestrictAdolescent$lambda$23$lambda$22(Lcom/kakaogame/util/MutexLock;)V
    .locals 0

    .line 6759
    invoke-virtual {p0}, Lcom/kakaogame/util/MutexLock;->unlock()V

    return-void

    .array-data 1
    .end array-data
.end method

.method public static final showUnregister(Landroid/app/Activity;Lcom/kakaogame/auth/LoginData;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lcom/kakaogame/auth/LoginData;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/kakaogame/KGResult<",
            "Ljava/lang/Void;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 6959
    new-instance v1, Lkotlin/coroutines/SafeContinuation;

    invoke-static/range {p2 .. p2}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->intercepted(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v0

    invoke-direct {v1, v0}, Lkotlin/coroutines/SafeContinuation;-><init>(Lkotlin/coroutines/Continuation;)V

    move-object v2, v1

    check-cast v2, Lkotlin/coroutines/Continuation;

    .line 6969
    sget-object v0, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    const v4, 0x5d10ee3f

    invoke-static {v4}, Lcom/liapp/y;->ڴݮگ֮ت(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v4, p1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const v4, 0x7d70cccd    # 2.0004882E37f

    invoke-static {v4}, Lcom/liapp/y;->حֲݴܳޯ(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4, v3}, Lcom/kakaogame/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6989
    :try_start_0
    new-instance v0, Lcom/kakaogame/ui/DialogManager$Settings;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    sget v3, Lcom/kakaogame/R$string;->zinny_sdk_player_unregister:I

    invoke-static {v3}, Lkotlin/coroutines/jvm/internal/Boxing;->boxInt(I)Ljava/lang/Integer;

    move-result-object v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x1ff7

    const/16 v20, 0x0

    move-object v5, v0

    invoke-direct/range {v5 .. v20}, Lcom/kakaogame/ui/DialogManager$Settings;-><init>(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;ZLandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnCancelListener;Ljava/lang/Integer;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 6999
    sget v3, Lcom/kakaogame/R$string;->zinny_sdk_player_unregister_restore:I

    new-instance v5, Lcom/kakaogame/auth/view/LoginUIManager$showUnregister$2$1;

    invoke-direct {v5, v2}, Lcom/kakaogame/auth/view/LoginUIManager$showUnregister$2$1;-><init>(Lkotlin/coroutines/Continuation;)V

    check-cast v5, Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v3, v5}, Lcom/kakaogame/ui/DialogManager$Settings;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)V

    .line 7049
    sget v3, Lcom/kakaogame/R$string;->zinny_sdk_player_unregister_no:I

    new-instance v5, Lcom/kakaogame/auth/view/LoginUIManager$showUnregister$2$2;

    invoke-direct {v5, v2}, Lcom/kakaogame/auth/view/LoginUIManager$showUnregister$2$2;-><init>(Lkotlin/coroutines/Continuation;)V

    check-cast v5, Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v3, v5}, Lcom/kakaogame/ui/DialogManager$Settings;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)V

    .line 7099
    sget-object v3, Lcom/kakaogame/ui/DialogManager;->INSTANCE:Lcom/kakaogame/ui/DialogManager;

    move-object/from16 v5, p0

    invoke-virtual {v3, v5, v0}, Lcom/kakaogame/ui/DialogManager;->showAlertDialog(Landroid/app/Activity;Lcom/kakaogame/ui/DialogManager$Settings;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 7119
    sget-object v3, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v6, v0

    check-cast v6, Ljava/lang/Throwable;

    invoke-virtual {v3, v4, v5, v6}, Lcom/kakaogame/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 7129
    sget-object v3, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    sget-object v3, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    const/16 v4, 0xfa1

    .line 7149
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    .line 7129
    invoke-virtual {v3, v4, v0}, Lcom/kakaogame/KGResult$Companion;->getResult(ILjava/lang/String;)Lcom/kakaogame/KGResult;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v2, v0}, Lkotlin/coroutines/Continuation;->resumeWith(Ljava/lang/Object;)V

    .line 6959
    :goto_0
    invoke-virtual {v1}, Lkotlin/coroutines/SafeContinuation;->getOrThrow()Ljava/lang/Object;

    move-result-object v0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    if-ne v0, v1, :cond_0

    invoke-static/range {p2 .. p2}, Lkotlin/coroutines/jvm/internal/DebugProbesKt;->probeCoroutineSuspended(Lkotlin/coroutines/Continuation;)V

    :cond_0
    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method private final showUnregisterView(Landroid/app/Activity;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/kakaogame/KGResult;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "IJ",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/kakaogame/KGResult<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    move-object v8, p1

    move v0, p2

    move-object/from16 v9, p8

    const/4 v10, 0x1

    if-ltz v0, :cond_0

    .line 4559
    move-object v0, v8

    check-cast v0, Landroid/content/Context;

    sget v1, Lcom/kakaogame/R$string;->zinny_sdk_player_punishment_date_format:I

    invoke-static {v0, v1}, Lcom/kakaogame/util/ResourceUtil;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    .line 4569
    new-instance v1, Ljava/text/SimpleDateFormat;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 4579
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 4589
    new-instance v0, Ljava/util/Date;

    move-wide/from16 v2, p3

    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 4539
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    :goto_0
    move-object v6, v0

    goto :goto_1

    :cond_0
    const/4 v1, -0x2

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-ne v0, v1, :cond_1

    .line 4609
    move-object v0, v8

    check-cast v0, Landroid/content/Context;

    .line 4619
    sget v1, Lcom/kakaogame/R$string;->zinny_sdk_player_punishment_term_temporary:I

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v9, v3, v2

    aput-object p6, v3, v10

    .line 4609
    invoke-static {v0, v1, v3}, Lcom/kakaogame/util/ResourceUtil;->getString(Landroid/content/Context;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 4659
    :cond_1
    move-object v0, v8

    check-cast v0, Landroid/content/Context;

    .line 4669
    sget v1, Lcom/kakaogame/R$string;->zinny_sdk_player_punishment_term_forever:I

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v9, v3, v2

    aput-object p6, v3, v10

    .line 4659
    invoke-static {v0, v1, v3}, Lcom/kakaogame/util/ResourceUtil;->getString(Landroid/content/Context;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 4729
    :goto_1
    sget-object v0, Lcom/kakaogame/util/MutexLock;->Companion:Lcom/kakaogame/util/MutexLock$Companion;

    invoke-virtual {v0}, Lcom/kakaogame/util/MutexLock$Companion;->createLock()Lcom/kakaogame/util/MutexLock;

    move-result-object v11

    .line 4739
    new-instance v12, Lcom/kakaogame/auth/view/LoginUIManager$$ExternalSyntheticLambda0;

    move-object v0, v12

    move-object v1, p1

    move-object/from16 v2, p7

    move-object/from16 v3, p8

    move-object/from16 v4, p6

    move-object/from16 v5, p5

    move-object v7, v11

    invoke-direct/range {v0 .. v7}, Lcom/kakaogame/auth/view/LoginUIManager$$ExternalSyntheticLambda0;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/kakaogame/util/MutexLock;)V

    invoke-virtual {p1, v12}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    .line 4869
    invoke-static {v11, v0, v1, v10, v2}, Lcom/kakaogame/util/MutexLock;->lock$default(Lcom/kakaogame/util/MutexLock;JILjava/lang/Object;)V

    .line 4879
    invoke-virtual {v11}, Lcom/kakaogame/util/MutexLock;->getContent()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 4889
    sget-object v1, Lcom/kakaogame/auth/view/PunishedUserDialog;->Companion:Lcom/kakaogame/auth/view/PunishedUserDialog$Companion;

    invoke-virtual {v1}, Lcom/kakaogame/auth/view/PunishedUserDialog$Companion;->getRESULT_EMAIL()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    const/16 v2, 0x26ac

    if-eqz v1, :cond_2

    move-object v1, p0

    move-object/from16 v3, p9

    .line 4899
    invoke-direct {p0, p1, v9, v3}, Lcom/kakaogame/auth/view/LoginUIManager;->sendToMail(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    .line 4909
    sget-object v0, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    invoke-virtual {v0, v2}, Lcom/kakaogame/KGResult$Companion;->getResult(I)Lcom/kakaogame/KGResult;

    move-result-object v0

    goto :goto_2

    :cond_2
    move-object v1, p0

    .line 4929
    sget-object v3, Lcom/kakaogame/auth/view/PunishedUserDialog;->Companion:Lcom/kakaogame/auth/view/PunishedUserDialog$Companion;

    invoke-virtual {v3}, Lcom/kakaogame/auth/view/PunishedUserDialog$Companion;->getRESULT_UNREGISTERED()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    const/16 v2, 0x1cf

    invoke-virtual {v0, v2}, Lcom/kakaogame/KGResult$Companion;->getResult(I)Lcom/kakaogame/KGResult;

    move-result-object v0

    goto :goto_2

    .line 4939
    :cond_3
    sget-object v0, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    invoke-virtual {v0, v2}, Lcom/kakaogame/KGResult$Companion;->getResult(I)Lcom/kakaogame/KGResult;

    move-result-object v0

    :goto_2
    return-object v0

    .array-data 1
    .end array-data
.end method

.method private static final showUnregisterView$lambda$10(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/kakaogame/util/MutexLock;)V
    .locals 8

    .line 4749
    new-instance v7, Lcom/kakaogame/auth/view/PunishedUserDialog;

    if-nez p3, :cond_0

    move-object v4, p4

    goto :goto_0

    :cond_0
    move-object v4, p3

    :goto_0
    new-instance v6, Lcom/kakaogame/auth/view/LoginUIManager$$ExternalSyntheticLambda11;

    invoke-direct {v6, p6}, Lcom/kakaogame/auth/view/LoginUIManager$$ExternalSyntheticLambda11;-><init>(Lcom/kakaogame/util/MutexLock;)V

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/kakaogame/auth/view/PunishedUserDialog;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    .line 4849
    invoke-virtual {v7}, Lcom/kakaogame/auth/view/PunishedUserDialog;->show()V

    return-void

    .array-data 1
    .end array-data
.end method

.method private static final showUnregisterView$lambda$10$lambda$9(Lcom/kakaogame/util/MutexLock;Ljava/lang/String;)Lkotlin/Unit;
    .locals 0

    .line 4819
    invoke-virtual {p0, p1}, Lcom/kakaogame/util/MutexLock;->setContent(Ljava/lang/Object;)V

    .line 4829
    invoke-virtual {p0}, Lcom/kakaogame/util/MutexLock;->unlock()V

    .line 4839
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method private final terminateAppAfterLogout(Landroid/app/Activity;Lcom/kakaogame/idp/IdpAccount;)V
    .locals 1

    .line 3449
    sget-object v0, Lcom/kakaogame/core/CoreManager;->Companion:Lcom/kakaogame/core/CoreManager$Companion;

    invoke-virtual {v0}, Lcom/kakaogame/core/CoreManager$Companion;->getInstance()Lcom/kakaogame/core/CoreManager;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/kakaogame/core/CoreManager;->idpLogout(Lcom/kakaogame/idp/IdpAccount;)Lcom/kakaogame/KGResult;

    .line 3469
    invoke-static {p1}, Lcom/kakaogame/util/AppUtil;->terminateApp(Landroid/app/Activity;)V

    .line 3479
    invoke-static {}, Lcom/kakaogame/util/AppUtil;->killAppProcess()V

    return-void

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public final getErrorMessage(Landroid/content/Context;I)Ljava/lang/String;
    .locals 3

    const/16 v0, 0x193

    if-ne p2, v0, :cond_0

    .line 3379
    sget p2, Lcom/kakaogame/R$string;->zinny_sdk_error_msg_login_forbidden:I

    .line 3359
    invoke-static {p1, p2}, Lcom/kakaogame/util/ResourceUtil;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 3399
    :cond_0
    sget v0, Lcom/kakaogame/R$string;->zinny_sdk_error_msg_common:I

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v1, v2

    invoke-static {p1, v0, v1}, Lcom/kakaogame/util/ResourceUtil;->getString(Landroid/content/Context;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    :goto_0
    return-object p1

    .array-data 1
    .end array-data
.end method
