.class public final Lcom/kakaogame/security/ProtectionManager;
.super Ljava/lang/Object;
.source "ProtectionManager.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kakaogame/security/ProtectionManager$CertificationPrefManager;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nProtectionManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ProtectionManager.kt\ncom/kakaogame/security/ProtectionManager\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,720:1\n1#2:721\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000R\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\r\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0008\n\u0002\u0008\n\u0008\u00c6\u0002\u0018\u00002\u00020\u0001:\u00018B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0006\u0010\n\u001a\u00020\tJ\u0016\u0010\u000e\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\t0\u000c2\u0006\u0010\u000f\u001a\u00020\u0010J \u0010\u0012\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00050\u000c2\u0006\u0010\u000f\u001a\u00020\u00102\u0008\u0008\u0002\u0010\u0013\u001a\u00020\tJ\"\u0010\u0014\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00150\u000c2\u0006\u0010\u000f\u001a\u00020\u00102\u0008\u0008\u0002\u0010\u0013\u001a\u00020\tH\u0002J\u001e\u0010\u0016\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00170\u000c2\u0006\u0010\u000f\u001a\u00020\u0010H\u0086@\u00a2\u0006\u0002\u0010\u0018J.\u0010\u0019\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00170\u000c2\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u001a\u001a\u00020\u00052\u0006\u0010\u001b\u001a\u00020\u0005H\u0086@\u00a2\u0006\u0002\u0010\u001cJ\u0018\u0010\u001d\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00050\u000c2\u0006\u0010\u000f\u001a\u00020\u0010H\u0002J\"\u0010\"\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00050\u000c2\u0006\u0010\u000f\u001a\u00020\u00102\u0008\u0008\u0002\u0010#\u001a\u00020\u0005H\u0002J\u0016\u0010$\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010%0\u000c2\u0006\u0010\u000f\u001a\u00020\u0010J \u0010&\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010%0\u000c2\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\'\u001a\u00020\u0005H\u0002J.\u0010(\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00050\u000c2\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\'\u001a\u00020\u00052\u0006\u0010)\u001a\u00020*H\u0082@\u00a2\u0006\u0002\u0010+J\u001e\u0010,\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00050\u000c2\u0006\u0010\u000f\u001a\u00020\u0010H\u0082@\u00a2\u0006\u0002\u0010\u0018J.\u0010-\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00050\u000c2\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010.\u001a\u00020/2\u0006\u00100\u001a\u00020/H\u0082@\u00a2\u0006\u0002\u00101J\u001e\u00102\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00170\u000c2\u0006\u0010\u000f\u001a\u00020\u0010H\u0086@\u00a2\u0006\u0002\u0010\u0018J\u0016\u00103\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010%0\u000c2\u0006\u0010\u000f\u001a\u00020\u0010J\u0018\u00104\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010%0\u000c2\u0006\u0010\u000f\u001a\u00020\u0010H\u0002J\u000e\u00105\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00050\u000cJ\u0016\u00106\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010%0\u000c2\u0006\u00107\u001a\u00020\u0005R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0005X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\tX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0019\u0010\u000b\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\t0\u000c8F\u00a2\u0006\u0006\u001a\u0004\u0008\u000b\u0010\rR\u0019\u0010\u0011\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\t0\u000c8F\u00a2\u0006\u0006\u001a\u0004\u0008\u0011\u0010\rR\u0014\u0010\u001e\u001a\u00020\t8BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u001e\u0010\u001fR\u000e\u0010 \u001a\u00020\u0005X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010!\u001a\u00020\u0005X\u0082T\u00a2\u0006\u0002\n\u0000\u00a8\u00069"
    }
    d2 = {
        "Lcom/kakaogame/security/ProtectionManager;",
        "",
        "<init>",
        "()V",
        "TAG",
        "",
        "CLASS_NAME_KEY",
        "regex",
        "isCompletedDeviceSecurity",
        "",
        "checkDeviceSecurityCompleted",
        "isRegisteredDeviceSecurity",
        "Lcom/kakaogame/KGResult;",
        "()Lcom/kakaogame/KGResult;",
        "isCertificatedDevice",
        "activity",
        "Landroid/app/Activity;",
        "isRegistered2ndPassword",
        "isAllowedAccess",
        "isEngineUI",
        "check2ndPW",
        "Lcom/kakaogame/security/UserState;",
        "isAllowedAccessOnEngine",
        "Lcom/kakaogame/secondpw/viewdata/Base2ndPWViewData;",
        "(Landroid/app/Activity;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "actionForEngineUI",
        "action",
        "content",
        "(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "checkDeviceSecurity",
        "isNewUser",
        "()Z",
        "PROCESS_IS_ALLOWED_ACESS",
        "CHECK_ONLY",
        "checkDeviceCertification",
        "process",
        "showDeviceRegistrationView",
        "Ljava/lang/Void;",
        "showDeviceRegistrationDialog",
        "url",
        "showInAppWebView",
        "settings",
        "Lcom/kakaogame/web/WebDialog$Settings;",
        "(Landroid/app/Activity;Ljava/lang/String;Lcom/kakaogame/web/WebDialog$Settings;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "showPasswordInputDialog",
        "showAccessRestrictViewDialog",
        "min",
        "",
        "second",
        "(Landroid/app/Activity;IILkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "register2ndPasswordOnEngine",
        "register2ndPassword",
        "showPasswordSettingDialog",
        "check2StepVerificationEmail",
        "register2StepVerificationEmail",
        "email",
        "CertificationPrefManager",
        "security_release"
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
.field private static final CHECK_ONLY:Ljava/lang/String; = "check_only"

.field private static final CLASS_NAME_KEY:Ljava/lang/String; = "KGProtection"

.field public static final INSTANCE:Lcom/kakaogame/security/ProtectionManager;

.field private static final PROCESS_IS_ALLOWED_ACESS:Ljava/lang/String; = "is_allowed_access"

.field private static final TAG:Ljava/lang/String; = "ProtectionManager"

.field private static isCompletedDeviceSecurity:Z = false

.field public static final regex:Ljava/lang/String; = "^[a-zA-Z0-9_!#$%&\'*+/=?`{|}~^.-]+@[a-zA-Z0-9.-]+$"


# direct methods
.method public static synthetic $r8$lambda$_5iBbLXDmr5mBPNltqZ2KnpscSI(Landroid/app/Activity;Lcom/kakaogame/util/MutexLock;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/kakaogame/security/ProtectionManager;->showPasswordSettingDialog$lambda$6(Landroid/app/Activity;Lcom/kakaogame/util/MutexLock;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/kakaogame/security/ProtectionManager;

    invoke-direct {v0}, Lcom/kakaogame/security/ProtectionManager;-><init>()V

    sput-object v0, Lcom/kakaogame/security/ProtectionManager;->INSTANCE:Lcom/kakaogame/security/ProtectionManager;

    return-void

    .array-data 1
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .line 469
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void

    .array-data 1
    .end array-data
.end method

.method public static final synthetic access$showAccessRestrictViewDialog(Lcom/kakaogame/security/ProtectionManager;Landroid/app/Activity;IILkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 469
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/kakaogame/security/ProtectionManager;->showAccessRestrictViewDialog(Landroid/app/Activity;IILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static final synthetic access$showInAppWebView(Lcom/kakaogame/security/ProtectionManager;Landroid/app/Activity;Ljava/lang/String;Lcom/kakaogame/web/WebDialog$Settings;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 469
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/kakaogame/security/ProtectionManager;->showInAppWebView(Landroid/app/Activity;Ljava/lang/String;Lcom/kakaogame/web/WebDialog$Settings;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static final synthetic access$showPasswordInputDialog(Lcom/kakaogame/security/ProtectionManager;Landroid/app/Activity;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 469
    invoke-direct {p0, p1, p2}, Lcom/kakaogame/security/ProtectionManager;->showPasswordInputDialog(Landroid/app/Activity;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method private final check2ndPW(Landroid/app/Activity;Z)Lcom/kakaogame/KGResult;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Z)",
            "Lcom/kakaogame/KGResult<",
            "Lcom/kakaogame/security/UserState;",
            ">;"
        }
    .end annotation

    .line 1849
    sget-object v0, Lcom/kakaogame/infodesk/InfodeskHelper;->INSTANCE:Lcom/kakaogame/infodesk/InfodeskHelper;

    invoke-virtual {v0}, Lcom/kakaogame/infodesk/InfodeskHelper;->isEnable2ndPWSecurity()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1859
    sget-object p1, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    invoke-virtual {p1}, Lcom/kakaogame/KGResult$Companion;->getSuccessResult()Lcom/kakaogame/KGResult;

    move-result-object p1

    goto/16 :goto_0

    .line 1879
    :cond_0
    sget-object v0, Lcom/kakaogame/security/SecondaryPWService;->INSTANCE:Lcom/kakaogame/security/SecondaryPWService;

    invoke-virtual {v0}, Lcom/kakaogame/security/SecondaryPWService;->getUserState()Lcom/kakaogame/KGResult;

    move-result-object v0

    .line 1909
    invoke-virtual {v0}, Lcom/kakaogame/KGResult;->isNotSuccess()Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object p1, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    check-cast v0, Ljava/util/Map;

    invoke-virtual {p1, v0}, Lcom/kakaogame/KGResult$Companion;->getResult(Ljava/util/Map;)Lcom/kakaogame/KGResult;

    move-result-object p1

    goto/16 :goto_0

    .line 1919
    :cond_1
    invoke-virtual {v0}, Lcom/kakaogame/KGResult;->getContent()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v1, Lcom/kakaogame/security/UserState;

    invoke-virtual {v1}, Lcom/kakaogame/security/UserState;->isRegistered()Z

    move-result v1

    if-nez v1, :cond_3

    .line 1929
    sget-object p1, Lcom/kakaogame/infodesk/InfodeskHelper;->INSTANCE:Lcom/kakaogame/infodesk/InfodeskHelper;

    invoke-virtual {p1}, Lcom/kakaogame/infodesk/InfodeskHelper;->getSecondaryPasswordOptionType()Lcom/kakaogame/infodesk/InfodeskHelper$SecondaryPWSettingType;

    move-result-object p1

    sget-object p2, Lcom/kakaogame/infodesk/InfodeskHelper$SecondaryPWSettingType;->MANDATORY:Lcom/kakaogame/infodesk/InfodeskHelper$SecondaryPWSettingType;

    if-ne p1, p2, :cond_2

    .line 1939
    sget-object p1, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    const/16 p2, 0xfac

    invoke-virtual {p1, p2}, Lcom/kakaogame/KGResult$Companion;->getResult(I)Lcom/kakaogame/KGResult;

    move-result-object p1

    goto :goto_0

    .line 1949
    :cond_2
    sget-object p1, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    invoke-virtual {p1}, Lcom/kakaogame/KGResult$Companion;->getSuccessResult()Lcom/kakaogame/KGResult;

    move-result-object p1

    goto :goto_0

    .line 1969
    :cond_3
    invoke-virtual {v0}, Lcom/kakaogame/KGResult;->getContent()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v1, Lcom/kakaogame/security/UserState;

    invoke-virtual {v1}, Lcom/kakaogame/security/UserState;->isBlocked()Z

    move-result v1

    const/16 v2, 0x2711

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v1, :cond_5

    .line 1979
    invoke-virtual {v0}, Lcom/kakaogame/KGResult;->getContent()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v0, Lcom/kakaogame/security/UserState;

    if-eqz p2, :cond_4

    .line 1999
    sget-object p1, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    const-string p2, ""

    invoke-virtual {p1, v2, p2, v0}, Lcom/kakaogame/KGResult$Companion;->getResult(ILjava/lang/String;Ljava/lang/Object;)Lcom/kakaogame/KGResult;

    move-result-object p1

    goto :goto_0

    .line 2019
    :cond_4
    new-instance p2, Lcom/kakaogame/security/ProtectionManager$check2ndPW$1;

    invoke-direct {p2, p1, v0, v4}, Lcom/kakaogame/security/ProtectionManager$check2ndPW$1;-><init>(Landroid/app/Activity;Lcom/kakaogame/security/UserState;Lkotlin/coroutines/Continuation;)V

    check-cast p2, Lkotlin/jvm/functions/Function2;

    invoke-static {v4, p2, v3, v4}, Lkotlinx/coroutines/BuildersKt;->runBlocking$default(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/kakaogame/KGResult;

    goto :goto_0

    .line 2069
    :cond_5
    sget-boolean v0, Lcom/kakaogame/security/ProtectionManager;->isCompletedDeviceSecurity:Z

    if-eqz v0, :cond_6

    sget-object v0, Lcom/kakaogame/infodesk/InfodeskHelper;->INSTANCE:Lcom/kakaogame/infodesk/InfodeskHelper;

    invoke-virtual {v0}, Lcom/kakaogame/infodesk/InfodeskHelper;->getSkip2ndPassword()Z

    move-result v0

    if-eqz v0, :cond_6

    sget-object p1, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    invoke-virtual {p1}, Lcom/kakaogame/KGResult$Companion;->getSuccessResult()Lcom/kakaogame/KGResult;

    move-result-object p1

    goto :goto_0

    :cond_6
    if-eqz p2, :cond_7

    .line 2099
    sget-object p1, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    invoke-virtual {p1, v2}, Lcom/kakaogame/KGResult$Companion;->getResult(I)Lcom/kakaogame/KGResult;

    move-result-object p1

    goto :goto_0

    .line 2119
    :cond_7
    new-instance p2, Lcom/kakaogame/security/ProtectionManager$check2ndPW$2;

    invoke-direct {p2, p1, v4}, Lcom/kakaogame/security/ProtectionManager$check2ndPW$2;-><init>(Landroid/app/Activity;Lkotlin/coroutines/Continuation;)V

    check-cast p2, Lkotlin/jvm/functions/Function2;

    invoke-static {v4, p2, v3, v4}, Lkotlinx/coroutines/BuildersKt;->runBlocking$default(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/kakaogame/KGResult;

    :goto_0
    return-object p1

    .array-data 1
    .end array-data
.end method

.method static synthetic check2ndPW$default(Lcom/kakaogame/security/ProtectionManager;Landroid/app/Activity;ZILjava/lang/Object;)Lcom/kakaogame/KGResult;
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 1839
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/kakaogame/security/ProtectionManager;->check2ndPW(Landroid/app/Activity;Z)Lcom/kakaogame/KGResult;

    move-result-object p0

    return-object p0

    .array-data 1
    .end array-data
.end method

.method private final checkDeviceCertification(Landroid/app/Activity;Ljava/lang/String;)Lcom/kakaogame/KGResult;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/lang/String;",
            ")",
            "Lcom/kakaogame/KGResult<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 3529
    sget-object v0, Lcom/kakaogame/KGLocalPlayer;->Companion:Lcom/kakaogame/KGLocalPlayer$Companion;

    invoke-virtual {v0}, Lcom/kakaogame/KGLocalPlayer$Companion;->getCurrentPlayer()Lcom/kakaogame/KGLocalPlayer;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/kakaogame/KGLocalPlayer;->getPlayerId()Ljava/lang/String;

    move-result-object v0

    .line 3539
    sget-object v1, Lcom/kakaogame/core/CoreManager;->Companion:Lcom/kakaogame/core/CoreManager$Companion;

    invoke-virtual {v1}, Lcom/kakaogame/core/CoreManager$Companion;->getInstance()Lcom/kakaogame/core/CoreManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/kakaogame/core/CoreManager;->getConfiguration()Lcom/kakaogame/config/Configuration;

    move-result-object v1

    invoke-virtual {v1}, Lcom/kakaogame/config/Configuration;->getAppId()Ljava/lang/String;

    move-result-object v1

    .line 3549
    sget-object v2, Lcom/kakaogame/security/ProtectionManager$CertificationPrefManager;->INSTANCE:Lcom/kakaogame/security/ProtectionManager$CertificationPrefManager;

    move-object v3, p1

    check-cast v3, Landroid/content/Context;

    invoke-virtual {v2, v3, v1, v0}, Lcom/kakaogame/security/ProtectionManager$CertificationPrefManager;->getCertification(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 3559
    move-object v3, v2

    check-cast v3, Ljava/lang/CharSequence;

    const/4 v4, 0x1

    if-eqz v3, :cond_1

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    move v3, v4

    :goto_1
    const v5, 0x7d7f3e9d

    invoke-static {v5}, Lcom/liapp/y;->حֲݴܳޯ(I)Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0xfab

    if-eqz v3, :cond_2

    .line 3569
    sget-object p1, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    invoke-virtual {p1, v6, v5}, Lcom/kakaogame/KGResult$Companion;->getResult(ILjava/lang/String;)Lcom/kakaogame/KGResult;

    move-result-object p1

    goto :goto_2

    .line 3589
    :cond_2
    :try_start_0
    invoke-static {}, Lcom/kakaogame/KGSystem;->getDeviceId()Ljava/lang/String;

    move-result-object v3

    .line 3599
    sget-object v7, Lcom/kakaogame/security/DeviceProtectionService;->INSTANCE:Lcom/kakaogame/security/DeviceProtectionService;

    invoke-virtual {v7, v3, v2}, Lcom/kakaogame/security/DeviceProtectionService;->checkRegisteredDevice(Ljava/lang/String;Ljava/lang/String;)Lcom/kakaogame/KGResult;

    move-result-object v2

    .line 3619
    invoke-virtual {v2}, Lcom/kakaogame/KGResult;->isNotSuccess()Z

    move-result v7

    if-eqz v7, :cond_3

    sget-object p1, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    check-cast v2, Ljava/util/Map;

    invoke-virtual {p1, v2}, Lcom/kakaogame/KGResult$Companion;->getResult(Ljava/util/Map;)Lcom/kakaogame/KGResult;

    move-result-object p1

    goto :goto_2

    .line 3629
    :cond_3
    invoke-virtual {v2}, Lcom/kakaogame/KGResult;->getContent()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_5

    const-string p1, "is_allowed_access"

    .line 3639
    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    sput-boolean v4, Lcom/kakaogame/security/ProtectionManager;->isCompletedDeviceSecurity:Z

    .line 3649
    :cond_4
    sget-object p1, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    invoke-virtual {p1, v3}, Lcom/kakaogame/KGResult$Companion;->getSuccessResult(Ljava/lang/Object;)Lcom/kakaogame/KGResult;

    move-result-object p1

    goto :goto_2

    .line 3689
    :cond_5
    check-cast p1, Landroid/content/Context;

    invoke-static {p1, v1, v0}, Lcom/kakaogame/security/ProtectionManager$CertificationPrefManager;->removeCertification(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 3699
    sget-object p1, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    invoke-virtual {p1, v6, v5}, Lcom/kakaogame/KGResult$Companion;->getResult(ILjava/lang/String;)Lcom/kakaogame/KGResult;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 3769
    sget-object p2, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v1, p1

    check-cast v1, Ljava/lang/Throwable;

    const v2, 0x5d1f14df

    invoke-static {v2}, Lcom/liapp/y;->ڴݮگ֮ت(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2, v0, v1}, Lcom/kakaogame/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3779
    sget-object p2, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    const/16 v0, 0xfa1

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, v0, p1}, Lcom/kakaogame/KGResult$Companion;->getResult(ILjava/lang/String;)Lcom/kakaogame/KGResult;

    move-result-object p1

    :goto_2
    return-object p1

    .array-data 1
    .end array-data
.end method

.method static synthetic checkDeviceCertification$default(Lcom/kakaogame/security/ProtectionManager;Landroid/app/Activity;Ljava/lang/String;ILjava/lang/Object;)Lcom/kakaogame/KGResult;
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const-string p2, "check_only"

    .line 3519
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/kakaogame/security/ProtectionManager;->checkDeviceCertification(Landroid/app/Activity;Ljava/lang/String;)Lcom/kakaogame/KGResult;

    move-result-object p0

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method private final checkDeviceSecurity(Landroid/app/Activity;)Lcom/kakaogame/KGResult;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            ")",
            "Lcom/kakaogame/KGResult<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 3019
    :try_start_0
    sget-object v0, Lcom/kakaogame/infodesk/InfodeskHelper;->INSTANCE:Lcom/kakaogame/infodesk/InfodeskHelper;

    invoke-virtual {v0}, Lcom/kakaogame/infodesk/InfodeskHelper;->getDeviceSecurityOptionType()Lcom/kakaogame/infodesk/InfodeskHelper$DeviceSecuritySettingType;

    move-result-object v0

    sget-object v1, Lcom/kakaogame/infodesk/InfodeskHelper$DeviceSecuritySettingType;->OPTIONAL:Lcom/kakaogame/infodesk/InfodeskHelper$DeviceSecuritySettingType;

    if-ne v0, v1, :cond_2

    .line 3029
    sget-object v0, Lcom/kakaogame/security/DeviceProtectionService;->INSTANCE:Lcom/kakaogame/security/DeviceProtectionService;

    invoke-virtual {v0}, Lcom/kakaogame/security/DeviceProtectionService;->isRegisteredUser()Lcom/kakaogame/KGResult;

    move-result-object v0

    .line 3039
    invoke-virtual {v0}, Lcom/kakaogame/KGResult;->isNotSuccess()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3049
    sget-object p1, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    check-cast v0, Ljava/util/Map;

    invoke-virtual {p1, v0}, Lcom/kakaogame/KGResult$Companion;->getResult(Ljava/util/Map;)Lcom/kakaogame/KGResult;

    move-result-object p1

    return-object p1

    .line 3069
    :cond_0
    invoke-virtual {v0}, Lcom/kakaogame/KGResult;->getContent()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_2

    .line 3109
    sget-object v0, Lcom/kakaogame/infodesk/InfodeskHelper;->INSTANCE:Lcom/kakaogame/infodesk/InfodeskHelper;

    invoke-virtual {v0}, Lcom/kakaogame/infodesk/InfodeskHelper;->isCheckNewUser()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v1, ""

    if-eqz v0, :cond_1

    .line 3129
    :try_start_1
    invoke-direct {p0}, Lcom/kakaogame/security/ProtectionManager;->isNewUser()Z

    move-result v0

    if-nez v0, :cond_2

    .line 3149
    sget-object p1, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    invoke-virtual {p1, v1}, Lcom/kakaogame/KGResult$Companion;->getSuccessResult(Ljava/lang/Object;)Lcom/kakaogame/KGResult;

    move-result-object p1

    return-object p1

    .line 3189
    :cond_1
    sget-object p1, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    invoke-virtual {p1, v1}, Lcom/kakaogame/KGResult$Companion;->getSuccessResult(Ljava/lang/Object;)Lcom/kakaogame/KGResult;

    move-result-object p1

    return-object p1

    :cond_2
    const-string v0, "is_allowed_access"

    .line 3229
    invoke-direct {p0, p1, v0}, Lcom/kakaogame/security/ProtectionManager;->checkDeviceCertification(Landroid/app/Activity;Ljava/lang/String;)Lcom/kakaogame/KGResult;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 3249
    sget-object v0, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v2, p1

    check-cast v2, Ljava/lang/Throwable;

    const v3, 0x5d1f14df

    invoke-static {v3}, Lcom/liapp/y;->ڴݮگ֮ت(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3, v1, v2}, Lcom/kakaogame/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3259
    sget-object v0, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    const/16 v1, 0xfa1

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/kakaogame/KGResult$Companion;->getResult(ILjava/lang/String;)Lcom/kakaogame/KGResult;

    move-result-object p1

    :goto_0
    return-object p1

    .array-data 1
    .end array-data
.end method

.method public static synthetic isAllowedAccess$default(Lcom/kakaogame/security/ProtectionManager;Landroid/app/Activity;ZILjava/lang/Object;)Lcom/kakaogame/KGResult;
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 1459
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/kakaogame/security/ProtectionManager;->isAllowedAccess(Landroid/app/Activity;Z)Lcom/kakaogame/KGResult;

    move-result-object p0

    return-object p0

    .array-data 1
    .end array-data
.end method

.method private final isNewUser()Z
    .locals 8

    .line 3359
    sget-object v0, Lcom/kakaogame/KGLocalPlayer;->Companion:Lcom/kakaogame/KGLocalPlayer$Companion;

    invoke-virtual {v0}, Lcom/kakaogame/KGLocalPlayer$Companion;->getCurrentPlayer()Lcom/kakaogame/KGLocalPlayer;

    move-result-object v0

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/kakaogame/KGLocalPlayer;->getRegistTime()J

    move-result-wide v3

    goto :goto_0

    :cond_0
    move-wide v3, v1

    .line 3369
    :goto_0
    sget-object v0, Lcom/kakaogame/infodesk/InfodeskHelper;->INSTANCE:Lcom/kakaogame/infodesk/InfodeskHelper;

    invoke-virtual {v0}, Lcom/kakaogame/infodesk/InfodeskHelper;->getFirstLoginBaseTime()J

    move-result-wide v5

    cmp-long v0, v3, v1

    const/4 v7, 0x1

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    cmp-long v0, v5, v1

    const/4 v1, 0x0

    if-gez v0, :cond_3

    :cond_2
    move v7, v1

    goto :goto_1

    :cond_3
    cmp-long v0, v3, v5

    if-lez v0, :cond_2

    :goto_1
    return v7

    .array-data 1
    .end array-data
.end method

.method private final showAccessRestrictViewDialog(Landroid/app/Activity;IILkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "II",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/kakaogame/KGResult<",
            "Ljava/lang/String;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 5259
    new-instance v0, Lkotlin/coroutines/SafeContinuation;

    invoke-static {p4}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->intercepted(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v1

    invoke-direct {v0, v1}, Lkotlin/coroutines/SafeContinuation;-><init>(Lkotlin/coroutines/Continuation;)V

    move-object v1, v0

    check-cast v1, Lkotlin/coroutines/Continuation;

    .line 5269
    new-instance v2, Lcom/kakaogame/security/ProtectionManager$showAccessRestrictViewDialog$2$1;

    invoke-direct {v2, p1, p2, p3, v1}, Lcom/kakaogame/security/ProtectionManager$showAccessRestrictViewDialog$2$1;-><init>(Landroid/app/Activity;IILkotlin/coroutines/Continuation;)V

    check-cast v2, Ljava/lang/Runnable;

    invoke-virtual {p1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 5259
    invoke-virtual {v0}, Lkotlin/coroutines/SafeContinuation;->getOrThrow()Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object p2

    if-ne p1, p2, :cond_0

    invoke-static {p4}, Lkotlin/coroutines/jvm/internal/DebugProbesKt;->probeCoroutineSuspended(Lkotlin/coroutines/Continuation;)V

    :cond_0
    return-object p1

    .array-data 1
    .end array-data
.end method

.method private final showDeviceRegistrationDialog(Landroid/app/Activity;Ljava/lang/String;)Lcom/kakaogame/KGResult;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/lang/String;",
            ")",
            "Lcom/kakaogame/KGResult<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p1

    const v1, 0x7d7f3f85

    invoke-static {v1}, Lcom/liapp/y;->حֲݴܳޯ(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x22550abe

    invoke-static {v2}, Lcom/liapp/y;->ֲֳگܱޭ(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7d77c365

    invoke-static {v3}, Lcom/liapp/y;->حֲݴܳޯ(I)Ljava/lang/String;

    move-result-object v3

    .line 3999
    sget-object v4, Lcom/kakaogame/core/CoreManager;->Companion:Lcom/kakaogame/core/CoreManager$Companion;

    invoke-virtual {v4}, Lcom/kakaogame/core/CoreManager$Companion;->getInstance()Lcom/kakaogame/core/CoreManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/kakaogame/core/CoreManager;->getConfiguration()Lcom/kakaogame/config/Configuration;

    move-result-object v4

    invoke-virtual {v4}, Lcom/kakaogame/config/Configuration;->getAppId()Ljava/lang/String;

    move-result-object v4

    .line 4009
    sget-object v5, Lcom/kakaogame/KGLocalPlayer;->Companion:Lcom/kakaogame/KGLocalPlayer$Companion;

    invoke-virtual {v5}, Lcom/kakaogame/KGLocalPlayer$Companion;->getCurrentPlayer()Lcom/kakaogame/KGLocalPlayer;

    move-result-object v5

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v5}, Lcom/kakaogame/KGLocalPlayer;->getPlayerId()Ljava/lang/String;

    move-result-object v5

    .line 4019
    sget-object v6, Lcom/kakaogame/log/FirebaseEvent;->Companion:Lcom/kakaogame/log/FirebaseEvent$Companion;

    const v7, 0x7d7142ed

    invoke-static {v7}, Lcom/liapp/y;->حֲݴܳޯ(I)Ljava/lang/String;

    move-result-object v7

    const v8, 0x225a36be

    invoke-static {v8}, Lcom/liapp/y;->ֲֳگܱޭ(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/kakaogame/log/FirebaseEvent$Companion;->getFirebaseEvent(Ljava/lang/String;Ljava/lang/String;)Lcom/kakaogame/log/FirebaseEvent;

    move-result-object v6

    const/4 v7, 0x2

    const/4 v8, 0x0

    move-object/from16 v9, p0

    .line 4049
    invoke-static {v9, v0, v8, v7, v8}, Lcom/kakaogame/security/ProtectionManager;->checkDeviceCertification$default(Lcom/kakaogame/security/ProtectionManager;Landroid/app/Activity;Ljava/lang/String;ILjava/lang/Object;)Lcom/kakaogame/KGResult;

    move-result-object v7

    .line 4059
    invoke-virtual {v7}, Lcom/kakaogame/KGResult;->isSuccess()Z

    move-result v10

    if-nez v10, :cond_0

    .line 4069
    invoke-virtual {v7}, Lcom/kakaogame/KGResult;->getCode()I

    move-result v10

    const/16 v11, 0xfab

    if-eq v10, v11, :cond_0

    .line 4089
    sget-object v0, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    check-cast v7, Ljava/util/Map;

    invoke-virtual {v0, v7}, Lcom/kakaogame/KGResult$Companion;->getResult(Ljava/util/Map;)Lcom/kakaogame/KGResult;

    move-result-object v0

    return-object v0

    .line 4109
    :cond_0
    sget-object v7, Lcom/kakaogame/util/Stopwatch;->Companion:Lcom/kakaogame/util/Stopwatch$Companion;

    const v10, -0x224df12c

    invoke-static {v10}, Lcom/liapp/y;->״دش۲ݮ(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Lcom/kakaogame/util/Stopwatch$Companion;->start(Ljava/lang/String;)Lcom/kakaogame/util/Stopwatch;

    move-result-object v7

    .line 4139
    invoke-virtual/range {p1 .. p1}, Landroid/app/Activity;->getRequestedOrientation()I

    move-result v10

    .line 4149
    sget-object v11, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    new-instance v12, Ljava/lang/StringBuilder;

    const v13, 0x5d1c7f9f

    invoke-static {v13}, Lcom/liapp/y;->ڴݮگ֮ت(I)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const v13, 0x5d1f14df

    invoke-static {v13}, Lcom/liapp/y;->ڴݮگ֮ت(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v13, v12}, Lcom/kakaogame/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4159
    invoke-static/range {p1 .. p1}, Lcom/kakaogame/util/DisplayUtil;->isScreenPortrait(Landroid/app/Activity;)Z

    move-result v11

    if-eqz v11, :cond_1

    const/4 v11, 0x7

    .line 4179
    invoke-virtual {v0, v11}, Landroid/app/Activity;->setRequestedOrientation(I)V

    goto :goto_0

    :cond_1
    const/4 v11, 0x6

    .line 4199
    invoke-virtual {v0, v11}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 4229
    :goto_0
    :try_start_0
    move-object v11, v0

    check-cast v11, Landroid/content/Context;

    const-string v12, "sdk_device_registration_portrait_width"

    invoke-static {v11, v12, v3}, Lcom/kakaogame/util/ResourceUtil;->getResourceId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v11

    .line 4239
    move-object v12, v0

    check-cast v12, Landroid/content/Context;

    const-string v14, "sdk_device_registration_portrait_height"

    invoke-static {v12, v14, v3}, Lcom/kakaogame/util/ResourceUtil;->getResourceId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v12

    .line 4249
    move-object v14, v0

    check-cast v14, Landroid/content/Context;

    const-string v15, "sdk_device_registration_landscape_width"

    invoke-static {v14, v15, v3}, Lcom/kakaogame/util/ResourceUtil;->getResourceId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v14

    .line 4259
    move-object v15, v0

    check-cast v15, Landroid/content/Context;

    const-string v8, "sdk_device_registration_landscape_height"

    invoke-static {v15, v8, v3}, Lcom/kakaogame/util/ResourceUtil;->getResourceId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 4279
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    check-cast v8, Ljava/util/Map;

    const-string v15, "deviceId"

    .line 4289
    invoke-static {}, Lcom/kakaogame/KGSystem;->getDeviceId()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v15, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v9, "guid"

    .line 4299
    invoke-static {}, Lcom/kakaogame/KGSystem;->getDeviceId()Ljava/lang/String;

    move-result-object v15

    invoke-interface {v8, v9, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v9, "deviceNickname"

    .line 4309
    invoke-static {}, Lcom/kakaogame/KGSystem;->getDeviceModel()Ljava/lang/String;

    move-result-object v15

    invoke-interface {v8, v9, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v9, "isRegistered"

    .line 4319
    sget-object v15, Lcom/kakaogame/security/ProtectionManager$CertificationPrefManager;->INSTANCE:Lcom/kakaogame/security/ProtectionManager$CertificationPrefManager;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-object/from16 v16, v6

    :try_start_1
    move-object v6, v0

    check-cast v6, Landroid/content/Context;

    invoke-virtual {v15, v6, v4, v5}, Lcom/kakaogame/security/ProtectionManager$CertificationPrefManager;->checkCertification(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v8, v9, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4329
    invoke-static {}, Lcom/kakaogame/KGSession;->getAccessToken()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v8, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4339
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    check-cast v4, Ljava/util/Map;

    .line 4349
    invoke-static {}, Lcom/kakaogame/KGSession;->getAccessToken()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4369
    new-instance v2, Lcom/kakaogame/web/WebDialog$Settings$Builder;

    invoke-direct {v2}, Lcom/kakaogame/web/WebDialog$Settings$Builder;-><init>()V

    .line 4379
    invoke-virtual {v2, v11, v12}, Lcom/kakaogame/web/WebDialog$Settings$Builder;->setPortSize(II)Lcom/kakaogame/web/WebDialog$Settings$Builder;

    move-result-object v2

    .line 4389
    invoke-virtual {v2, v14, v3}, Lcom/kakaogame/web/WebDialog$Settings$Builder;->setLandSize(II)Lcom/kakaogame/web/WebDialog$Settings$Builder;

    move-result-object v2

    const/4 v3, 0x0

    .line 4399
    invoke-virtual {v2, v3}, Lcom/kakaogame/web/WebDialog$Settings$Builder;->setPulltoRefresh(Z)Lcom/kakaogame/web/WebDialog$Settings$Builder;

    move-result-object v2

    .line 4409
    invoke-virtual {v2, v4}, Lcom/kakaogame/web/WebDialog$Settings$Builder;->setRequestHeaders(Ljava/util/Map;)Lcom/kakaogame/web/WebDialog$Settings$Builder;

    move-result-object v2

    .line 4419
    invoke-virtual {v2, v8}, Lcom/kakaogame/web/WebDialog$Settings$Builder;->setCustomCookie(Ljava/util/Map;)Lcom/kakaogame/web/WebDialog$Settings$Builder;

    move-result-object v2

    const/16 v3, 0x11

    .line 4429
    invoke-virtual {v2, v3}, Lcom/kakaogame/web/WebDialog$Settings$Builder;->setCookieExcludeOption(I)Lcom/kakaogame/web/WebDialog$Settings$Builder;

    move-result-object v2

    const/4 v3, 0x1

    .line 4439
    invoke-virtual {v2, v3}, Lcom/kakaogame/web/WebDialog$Settings$Builder;->setFixedFontSize(Z)Lcom/kakaogame/web/WebDialog$Settings$Builder;

    move-result-object v2

    .line 4459
    sget-object v4, Lcom/kakaogame/infodesk/InfodeskHelper;->INSTANCE:Lcom/kakaogame/infodesk/InfodeskHelper;

    invoke-virtual {v4}, Lcom/kakaogame/infodesk/InfodeskHelper;->offWebviewTopBarYellow()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 4469
    sget-object v4, Lcom/kakaogame/infodesk/InfodeskHelper;->INSTANCE:Lcom/kakaogame/infodesk/InfodeskHelper;

    invoke-virtual {v4}, Lcom/kakaogame/infodesk/InfodeskHelper;->webviewTitleBgColor()I

    move-result v4

    .line 4479
    sget-object v5, Lcom/kakaogame/infodesk/InfodeskHelper;->INSTANCE:Lcom/kakaogame/infodesk/InfodeskHelper;

    invoke-virtual {v5}, Lcom/kakaogame/infodesk/InfodeskHelper;->webviewTitleTextColor()I

    move-result v5

    .line 4489
    invoke-virtual {v2, v4}, Lcom/kakaogame/web/WebDialog$Settings$Builder;->setTitleBackgroundColor(I)Lcom/kakaogame/web/WebDialog$Settings$Builder;

    move-result-object v4

    .line 4499
    invoke-virtual {v4, v5}, Lcom/kakaogame/web/WebDialog$Settings$Builder;->setTitleTextColor(I)Lcom/kakaogame/web/WebDialog$Settings$Builder;

    move-result-object v4

    .line 4509
    invoke-virtual {v4, v1}, Lcom/kakaogame/web/WebDialog$Settings$Builder;->setCloseButtonColor(Ljava/lang/String;)Lcom/kakaogame/web/WebDialog$Settings$Builder;

    move-result-object v4

    .line 4519
    invoke-virtual {v4, v1}, Lcom/kakaogame/web/WebDialog$Settings$Builder;->setPreviousButtonColor(Ljava/lang/String;)Lcom/kakaogame/web/WebDialog$Settings$Builder;

    .line 4539
    :cond_2
    new-instance v1, Lcom/kakaogame/security/ProtectionManager$showDeviceRegistrationDialog$result$result$1;

    move-object/from16 v4, p2

    const/4 v5, 0x0

    invoke-direct {v1, v0, v4, v2, v5}, Lcom/kakaogame/security/ProtectionManager$showDeviceRegistrationDialog$result$result$1;-><init>(Landroid/app/Activity;Ljava/lang/String;Lcom/kakaogame/web/WebDialog$Settings$Builder;Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    invoke-static {v5, v1, v3, v5}, Lkotlinx/coroutines/BuildersKt;->runBlocking$default(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/kakaogame/KGResult;

    .line 4599
    invoke-virtual {v0, v10}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 4609
    sget-object v0, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    check-cast v1, Ljava/util/Map;

    invoke-virtual {v0, v1}, Lcom/kakaogame/KGResult$Companion;->getResult(Ljava/util/Map;)Lcom/kakaogame/KGResult;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    move-object/from16 v16, v6

    .line 4629
    :goto_1
    sget-object v1, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v3, v0

    check-cast v3, Ljava/lang/Throwable;

    invoke-virtual {v1, v13, v2, v3}, Lcom/kakaogame/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 4639
    sget-object v1, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    const/16 v2, 0xfa1

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/kakaogame/KGResult$Companion;->getResult(ILjava/lang/String;)Lcom/kakaogame/KGResult;

    move-result-object v0

    .line 4659
    :goto_2
    invoke-virtual {v7}, Lcom/kakaogame/util/Stopwatch;->stop()V

    .line 4669
    invoke-virtual {v7}, Lcom/kakaogame/util/Stopwatch;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7}, Lcom/kakaogame/util/Stopwatch;->getDurationMs()J

    move-result-wide v2

    invoke-static {v1, v0, v2, v3}, Lcom/kakaogame/core/KGResultUtil;->writeClientApiCall(Ljava/lang/String;Lcom/kakaogame/KGResult;J)V

    move-object/from16 v1, v16

    .line 4679
    invoke-virtual {v1, v0}, Lcom/kakaogame/log/FirebaseEvent;->setResult(Lcom/kakaogame/KGResult;)V

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method private final showInAppWebView(Landroid/app/Activity;Ljava/lang/String;Lcom/kakaogame/web/WebDialog$Settings;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/lang/String;",
            "Lcom/kakaogame/web/WebDialog$Settings;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/kakaogame/KGResult<",
            "Ljava/lang/String;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 4759
    new-instance v0, Lkotlin/coroutines/SafeContinuation;

    invoke-static {p4}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->intercepted(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v1

    invoke-direct {v0, v1}, Lkotlin/coroutines/SafeContinuation;-><init>(Lkotlin/coroutines/Continuation;)V

    move-object v1, v0

    check-cast v1, Lkotlin/coroutines/Continuation;

    .line 4769
    sget-object v2, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    const v4, 0x7d7020fd

    invoke-static {v4}, Lcom/liapp/y;->حֲݴܳޯ(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const v4, 0x5d1f14df

    invoke-static {v4}, Lcom/liapp/y;->ڴݮگ֮ت(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4, v3}, Lcom/kakaogame/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4779
    new-instance v2, Lcom/kakaogame/security/ProtectionManager$showInAppWebView$2$1;

    invoke-direct {v2, p1, p2, p3, v1}, Lcom/kakaogame/security/ProtectionManager$showInAppWebView$2$1;-><init>(Landroid/app/Activity;Ljava/lang/String;Lcom/kakaogame/web/WebDialog$Settings;Lkotlin/coroutines/Continuation;)V

    check-cast v2, Ljava/lang/Runnable;

    invoke-virtual {p1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 4759
    invoke-virtual {v0}, Lkotlin/coroutines/SafeContinuation;->getOrThrow()Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object p2

    if-ne p1, p2, :cond_0

    invoke-static {p4}, Lkotlin/coroutines/jvm/internal/DebugProbesKt;->probeCoroutineSuspended(Lkotlin/coroutines/Continuation;)V

    :cond_0
    return-object p1

    .array-data 1
    .end array-data
.end method

.method private final showPasswordInputDialog(Landroid/app/Activity;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/kakaogame/KGResult<",
            "Ljava/lang/String;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 4959
    new-instance v0, Lkotlin/coroutines/SafeContinuation;

    invoke-static {p2}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->intercepted(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v1

    invoke-direct {v0, v1}, Lkotlin/coroutines/SafeContinuation;-><init>(Lkotlin/coroutines/Continuation;)V

    move-object v1, v0

    check-cast v1, Lkotlin/coroutines/Continuation;

    .line 4969
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v2

    check-cast v2, Lkotlin/coroutines/CoroutineContext;

    invoke-static {v2}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    new-instance v2, Lcom/kakaogame/security/ProtectionManager$showPasswordInputDialog$2$1;

    const/4 v6, 0x0

    invoke-direct {v2, p1, v1, v6}, Lcom/kakaogame/security/ProtectionManager$showPasswordInputDialog$2$1;-><init>(Landroid/app/Activity;Lkotlin/coroutines/Continuation;Lkotlin/coroutines/Continuation;)V

    move-object v6, v2

    check-cast v6, Lkotlin/jvm/functions/Function2;

    const/4 v7, 0x3

    const/4 v8, 0x0

    invoke-static/range {v3 .. v8}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 4959
    invoke-virtual {v0}, Lkotlin/coroutines/SafeContinuation;->getOrThrow()Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    if-ne p1, v0, :cond_0

    invoke-static {p2}, Lkotlin/coroutines/jvm/internal/DebugProbesKt;->probeCoroutineSuspended(Lkotlin/coroutines/Continuation;)V

    :cond_0
    return-object p1

    .array-data 1
    .end array-data
.end method

.method private final showPasswordSettingDialog(Landroid/app/Activity;)Lcom/kakaogame/KGResult;
    .locals 6
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

    .line 5959
    sget-object v0, Lcom/kakaogame/util/MutexLock;->Companion:Lcom/kakaogame/util/MutexLock$Companion;

    invoke-virtual {v0}, Lcom/kakaogame/util/MutexLock$Companion;->createLock()Lcom/kakaogame/util/MutexLock;

    move-result-object v0

    .line 5969
    invoke-virtual {p1}, Landroid/app/Activity;->getRequestedOrientation()I

    move-result v1

    const/4 v2, 0x6

    .line 5979
    invoke-virtual {p1, v2}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 5989
    new-instance v2, Lcom/kakaogame/security/ProtectionManager$$ExternalSyntheticLambda0;

    invoke-direct {v2, p1, v0}, Lcom/kakaogame/security/ProtectionManager$$ExternalSyntheticLambda0;-><init>(Landroid/app/Activity;Lcom/kakaogame/util/MutexLock;)V

    invoke-virtual {p1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    .line 6179
    invoke-static {v0, v4, v5, v2, v3}, Lcom/kakaogame/util/MutexLock;->lock$default(Lcom/kakaogame/util/MutexLock;JILjava/lang/Object;)V

    .line 6189
    invoke-virtual {p1, v1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 6199
    invoke-virtual {v0}, Lcom/kakaogame/util/MutexLock;->getContent()Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast p1, Lcom/kakaogame/KGResult;

    return-object p1

    .array-data 1
    .end array-data
.end method

.method private static final showPasswordSettingDialog$lambda$6(Landroid/app/Activity;Lcom/kakaogame/util/MutexLock;)V
    .locals 4

    .line 6009
    :try_start_0
    new-instance v0, Lcom/kakaogame/secondpw/SecondPWViewDialog;

    .line 6029
    sget-object v1, Lcom/kakaogame/secondpw/ActionType;->ENTER_SHOW_PASSWORD_SETTING_VIEW:Lcom/kakaogame/secondpw/ActionType;

    .line 6039
    new-instance v2, Lcom/kakaogame/security/ProtectionManager$showPasswordSettingDialog$1$dialog$1;

    invoke-direct {v2, p1}, Lcom/kakaogame/security/ProtectionManager$showPasswordSettingDialog$1$dialog$1;-><init>(Lcom/kakaogame/util/MutexLock;)V

    check-cast v2, Lcom/kakaogame/KGResultCallback;

    .line 6009
    invoke-direct {v0, p0, v1, v2}, Lcom/kakaogame/secondpw/SecondPWViewDialog;-><init>(Landroid/app/Activity;Lcom/kakaogame/secondpw/ActionType;Lcom/kakaogame/KGResultCallback;)V

    .line 6099
    invoke-virtual {v0}, Lcom/kakaogame/secondpw/SecondPWViewDialog;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 6119
    sget-object v0, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v2, p0

    check-cast v2, Ljava/lang/Throwable;

    const v3, 0x5d1f14df

    invoke-static {v3}, Lcom/liapp/y;->ڴݮگ֮ت(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3, v1, v2}, Lcom/kakaogame/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 6129
    sget-object v0, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    const/16 v1, 0xfa1

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Lcom/kakaogame/KGResult$Companion;->getResult(ILjava/lang/String;)Lcom/kakaogame/KGResult;

    move-result-object p0

    .line 6139
    sget-object v0, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    check-cast p0, Ljava/util/Map;

    invoke-virtual {v0, p0}, Lcom/kakaogame/KGResult$Companion;->getResult(Ljava/util/Map;)Lcom/kakaogame/KGResult;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/kakaogame/util/MutexLock;->setContent(Ljava/lang/Object;)V

    .line 6149
    invoke-virtual {p1}, Lcom/kakaogame/util/MutexLock;->unlock()V

    :goto_0
    return-void

    nop

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public final actionForEngineUI(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/kakaogame/KGResult<",
            "Lcom/kakaogame/secondpw/viewdata/Base2ndPWViewData;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 2899
    new-instance v0, Lkotlin/coroutines/SafeContinuation;

    invoke-static {p4}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->intercepted(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v1

    invoke-direct {v0, v1}, Lkotlin/coroutines/SafeContinuation;-><init>(Lkotlin/coroutines/Continuation;)V

    move-object v1, v0

    check-cast v1, Lkotlin/coroutines/Continuation;

    .line 2909
    sget-object v2, Lcom/kakaogame/secondpw/SecondPWViewManager;->INSTANCE:Lcom/kakaogame/secondpw/SecondPWViewManager;

    invoke-static {p2}, Lcom/kakaogame/secondpw/ActionTypeKt;->getActionType(Ljava/lang/String;)Lcom/kakaogame/secondpw/ActionType;

    move-result-object p2

    new-instance v3, Lcom/kakaogame/security/ProtectionManager$actionForEngineUI$2$1;

    invoke-direct {v3, v1}, Lcom/kakaogame/security/ProtectionManager$actionForEngineUI$2$1;-><init>(Lkotlin/coroutines/Continuation;)V

    check-cast v3, Lkotlin/jvm/functions/Function1;

    invoke-virtual {v2, p1, p2, p3, v3}, Lcom/kakaogame/secondpw/SecondPWViewManager;->getUIData(Landroid/app/Activity;Lcom/kakaogame/secondpw/ActionType;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    .line 2899
    invoke-virtual {v0}, Lkotlin/coroutines/SafeContinuation;->getOrThrow()Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object p2

    if-ne p1, p2, :cond_0

    invoke-static {p4}, Lkotlin/coroutines/jvm/internal/DebugProbesKt;->probeCoroutineSuspended(Lkotlin/coroutines/Continuation;)V

    :cond_0
    return-object p1

    .array-data 1
    .end array-data
.end method

.method public final check2StepVerificationEmail()Lcom/kakaogame/KGResult;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/kakaogame/KGResult<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 6239
    sget-object v0, Lcom/kakaogame/log/FirebaseEvent;->Companion:Lcom/kakaogame/log/FirebaseEvent$Companion;

    const v1, 0x7d7142ed

    invoke-static {v1}, Lcom/liapp/y;->حֲݴܳޯ(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x336d9de3

    invoke-static {v2}, Lcom/liapp/y;->ׯ״ٲ֬ب(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/kakaogame/log/FirebaseEvent$Companion;->getFirebaseEvent(Ljava/lang/String;Ljava/lang/String;)Lcom/kakaogame/log/FirebaseEvent;

    move-result-object v0

    .line 6249
    sget-object v1, Lcom/kakaogame/core/CoreManager;->Companion:Lcom/kakaogame/core/CoreManager$Companion;

    invoke-virtual {v1}, Lcom/kakaogame/core/CoreManager$Companion;->getInstance()Lcom/kakaogame/core/CoreManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/kakaogame/core/CoreManager;->isNotAuthorized()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 6259
    sget-object v0, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    const/16 v1, 0xbba

    invoke-virtual {v0, v1}, Lcom/kakaogame/KGResult$Companion;->getResult(I)Lcom/kakaogame/KGResult;

    move-result-object v0

    return-object v0

    .line 6289
    :cond_0
    sget-object v1, Lcom/kakaogame/util/Stopwatch;->Companion:Lcom/kakaogame/util/Stopwatch$Companion;

    const v2, -0x224df37c

    invoke-static {v2}, Lcom/liapp/y;->״دش۲ݮ(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/kakaogame/util/Stopwatch$Companion;->start(Ljava/lang/String;)Lcom/kakaogame/util/Stopwatch;

    move-result-object v1

    .line 6309
    :try_start_0
    sget-object v2, Lcom/kakaogame/security/DeviceProtectionService;->INSTANCE:Lcom/kakaogame/security/DeviceProtectionService;

    invoke-virtual {v2}, Lcom/kakaogame/security/DeviceProtectionService;->check2StepVerificationEmail()Lcom/kakaogame/KGResult;

    move-result-object v2

    .line 6319
    invoke-virtual {v2}, Lcom/kakaogame/KGResult;->isNotSuccess()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 6329
    sget-object v3, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    check-cast v2, Ljava/util/Map;

    invoke-virtual {v3, v2}, Lcom/kakaogame/KGResult$Companion;->getResult(Ljava/util/Map;)Lcom/kakaogame/KGResult;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6389
    :cond_1
    invoke-virtual {v1}, Lcom/kakaogame/util/Stopwatch;->stop()V

    .line 6399
    invoke-virtual {v1}, Lcom/kakaogame/util/Stopwatch;->getName()Ljava/lang/String;

    move-result-object v3

    :goto_0
    invoke-virtual {v1}, Lcom/kakaogame/util/Stopwatch;->getDurationMs()J

    move-result-wide v4

    invoke-static {v3, v2, v4, v5}, Lcom/kakaogame/core/KGResultUtil;->writeClientApiCall(Ljava/lang/String;Lcom/kakaogame/KGResult;J)V

    .line 6409
    invoke-virtual {v0, v2}, Lcom/kakaogame/log/FirebaseEvent;->setResult(Lcom/kakaogame/KGResult;)V

    goto :goto_1

    :catchall_0
    move-exception v2

    goto :goto_2

    :catch_0
    move-exception v2

    .line 6359
    :try_start_1
    sget-object v3, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    const-string v4, "ProtectionManager"

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v6, v2

    check-cast v6, Ljava/lang/Throwable;

    invoke-virtual {v3, v4, v5, v6}, Lcom/kakaogame/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 6369
    sget-object v3, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    const/16 v4, 0xfa1

    invoke-virtual {v3, v4, v2}, Lcom/kakaogame/KGResult$Companion;->getResult(ILjava/lang/String;)Lcom/kakaogame/KGResult;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 6389
    invoke-virtual {v1}, Lcom/kakaogame/util/Stopwatch;->stop()V

    .line 6399
    invoke-virtual {v1}, Lcom/kakaogame/util/Stopwatch;->getName()Ljava/lang/String;

    move-result-object v3

    move-object v4, v2

    check-cast v4, Lcom/kakaogame/KGResult;

    goto :goto_0

    :goto_1
    return-object v2

    .line 6389
    :goto_2
    invoke-virtual {v1}, Lcom/kakaogame/util/Stopwatch;->stop()V

    .line 6399
    invoke-virtual {v1}, Lcom/kakaogame/util/Stopwatch;->getName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    move-object v5, v4

    check-cast v5, Lcom/kakaogame/KGResult;

    invoke-virtual {v1}, Lcom/kakaogame/util/Stopwatch;->getDurationMs()J

    move-result-wide v5

    invoke-static {v3, v4, v5, v6}, Lcom/kakaogame/core/KGResultUtil;->writeClientApiCall(Ljava/lang/String;Lcom/kakaogame/KGResult;J)V

    .line 6409
    invoke-virtual {v0, v4}, Lcom/kakaogame/log/FirebaseEvent;->setResult(Lcom/kakaogame/KGResult;)V

    throw v2

    nop

    .array-data 1
    .end array-data
.end method

.method public final checkDeviceSecurityCompleted()Z
    .locals 1

    .line 549
    sget-boolean v0, Lcom/kakaogame/security/ProtectionManager;->isCompletedDeviceSecurity:Z

    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final isAllowedAccess(Landroid/app/Activity;Z)Lcom/kakaogame/KGResult;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Z)",
            "Lcom/kakaogame/KGResult<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const v0, 0x543d14da

    invoke-static {v0}, Lcom/liapp/y;->׳ֳֳ֬د(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1469
    sget-object v0, Lcom/kakaogame/log/FirebaseEvent;->Companion:Lcom/kakaogame/log/FirebaseEvent$Companion;

    const v1, 0x7d7142ed

    invoke-static {v1}, Lcom/liapp/y;->حֲݴܳޯ(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x22544b16

    invoke-static {v2}, Lcom/liapp/y;->ֲֳگܱޭ(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/kakaogame/log/FirebaseEvent$Companion;->getFirebaseEvent(Ljava/lang/String;Ljava/lang/String;)Lcom/kakaogame/log/FirebaseEvent;

    move-result-object v0

    .line 1489
    sget-object v1, Lcom/kakaogame/core/CoreManager;->Companion:Lcom/kakaogame/core/CoreManager$Companion;

    invoke-virtual {v1}, Lcom/kakaogame/core/CoreManager$Companion;->getInstance()Lcom/kakaogame/core/CoreManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/kakaogame/core/CoreManager;->isNotAuthorized()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object p1, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    const/16 v1, 0xbba

    invoke-virtual {p1, v1}, Lcom/kakaogame/KGResult$Companion;->getResult(I)Lcom/kakaogame/KGResult;

    move-result-object p1

    goto/16 :goto_1

    .line 1499
    :cond_0
    sget-object v1, Lcom/kakaogame/KGIdpProfile$KGIdpCode;->Guest:Lcom/kakaogame/KGIdpProfile$KGIdpCode;

    sget-object v2, Lcom/kakaogame/KGLocalPlayer;->Companion:Lcom/kakaogame/KGLocalPlayer$Companion;

    invoke-virtual {v2}, Lcom/kakaogame/KGLocalPlayer$Companion;->getCurrentPlayer()Lcom/kakaogame/KGLocalPlayer;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/kakaogame/KGLocalPlayer;->getIdpProfile()Lcom/kakaogame/KGIdpProfile;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/kakaogame/KGIdpProfile;->getIdpCode()Lcom/kakaogame/KGIdpProfile$KGIdpCode;

    move-result-object v2

    goto :goto_0

    :cond_1
    move-object v2, v3

    :goto_0
    const-string v4, ""

    if-ne v1, v2, :cond_2

    .line 1509
    sget-object p1, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    invoke-virtual {p1, v4}, Lcom/kakaogame/KGResult$Companion;->getSuccessResult(Ljava/lang/Object;)Lcom/kakaogame/KGResult;

    move-result-object p1

    goto :goto_1

    .line 1529
    :cond_2
    sget-object v1, Lcom/kakaogame/infodesk/InfodeskHelper;->INSTANCE:Lcom/kakaogame/infodesk/InfodeskHelper;

    invoke-virtual {v1}, Lcom/kakaogame/infodesk/InfodeskHelper;->isEnableDeviceSecurity()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    .line 1539
    sput-boolean v2, Lcom/kakaogame/security/ProtectionManager;->isCompletedDeviceSecurity:Z

    .line 1549
    invoke-direct {p0, p1}, Lcom/kakaogame/security/ProtectionManager;->checkDeviceSecurity(Landroid/app/Activity;)Lcom/kakaogame/KGResult;

    move-result-object v1

    .line 1569
    invoke-virtual {v1}, Lcom/kakaogame/KGResult;->isNotSuccess()Z

    move-result v5

    if-eqz v5, :cond_3

    return-object v1

    :cond_3
    if-eqz p2, :cond_4

    .line 1629
    sget-object p1, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    const/16 p2, 0x2711

    invoke-virtual {p1, p2}, Lcom/kakaogame/KGResult$Companion;->getResult(I)Lcom/kakaogame/KGResult;

    move-result-object p1

    return-object p1

    :cond_4
    const/4 v1, 0x2

    .line 1659
    invoke-static {p0, p1, v2, v1, v3}, Lcom/kakaogame/security/ProtectionManager;->check2ndPW$default(Lcom/kakaogame/security/ProtectionManager;Landroid/app/Activity;ZILjava/lang/Object;)Lcom/kakaogame/KGResult;

    move-result-object p1

    .line 1679
    invoke-virtual {p1}, Lcom/kakaogame/KGResult;->isNotSuccess()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1689
    sget-object p2, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    check-cast p1, Ljava/util/Map;

    invoke-virtual {p2, p1}, Lcom/kakaogame/KGResult$Companion;->getResult(Ljava/util/Map;)Lcom/kakaogame/KGResult;

    move-result-object p1

    return-object p1

    .line 1719
    :cond_5
    invoke-virtual {p0}, Lcom/kakaogame/security/ProtectionManager;->checkDeviceSecurityCompleted()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 1729
    sget-object p1, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    invoke-static {}, Lcom/kakaogame/KGSystem;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/kakaogame/KGResult$Companion;->getSuccessResult(Ljava/lang/Object;)Lcom/kakaogame/KGResult;

    move-result-object p1

    goto :goto_1

    .line 1749
    :cond_6
    sget-object p1, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    invoke-virtual {p1, v4}, Lcom/kakaogame/KGResult$Companion;->getSuccessResult(Ljava/lang/Object;)Lcom/kakaogame/KGResult;

    move-result-object p1

    :goto_1
    if-nez p2, :cond_7

    .line 1799
    invoke-virtual {v0, p1}, Lcom/kakaogame/log/FirebaseEvent;->setResult(Lcom/kakaogame/KGResult;)V

    :cond_7
    return-object p1

    .array-data 1
    .end array-data
.end method

.method public final isAllowedAccessOnEngine(Landroid/app/Activity;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/kakaogame/KGResult<",
            "Lcom/kakaogame/secondpw/viewdata/Base2ndPWViewData;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 2239
    new-instance v0, Lkotlin/coroutines/SafeContinuation;

    invoke-static {p2}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->intercepted(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v1

    invoke-direct {v0, v1}, Lkotlin/coroutines/SafeContinuation;-><init>(Lkotlin/coroutines/Continuation;)V

    move-object v1, v0

    check-cast v1, Lkotlin/coroutines/Continuation;

    .line 2259
    sget-object v2, Lcom/kakaogame/security/ProtectionManager;->INSTANCE:Lcom/kakaogame/security/ProtectionManager;

    const/4 v3, 0x1

    invoke-virtual {v2, p1, v3}, Lcom/kakaogame/security/ProtectionManager;->isAllowedAccess(Landroid/app/Activity;Z)Lcom/kakaogame/KGResult;

    move-result-object v4

    .line 2289
    invoke-virtual {v4}, Lcom/kakaogame/KGResult;->isSuccess()Z

    move-result v5

    const/16 v6, 0xc8

    if-eqz v5, :cond_0

    sget-object p1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    sget-object p1, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    new-instance v2, Lcom/kakaogame/secondpw/viewdata/ResultData;

    invoke-virtual {v4}, Lcom/kakaogame/KGResult;->getContent()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-direct {v2, v6, v3}, Lcom/kakaogame/secondpw/viewdata/ResultData;-><init>(ILjava/lang/String;)V

    invoke-virtual {p1, v2}, Lcom/kakaogame/KGResult$Companion;->getSuccessResult(Ljava/lang/Object;)Lcom/kakaogame/KGResult;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v1, p1}, Lkotlin/coroutines/Continuation;->resumeWith(Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 2299
    :cond_0
    invoke-virtual {v4}, Lcom/kakaogame/KGResult;->getCode()I

    move-result v5

    const/16 v7, 0x2711

    if-eq v5, v7, :cond_1

    sget-object p1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    sget-object p1, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    check-cast v4, Ljava/util/Map;

    invoke-virtual {p1, v4}, Lcom/kakaogame/KGResult$Companion;->getResult(Ljava/util/Map;)Lcom/kakaogame/KGResult;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v1, p1}, Lkotlin/coroutines/Continuation;->resumeWith(Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 2329
    :cond_1
    invoke-direct {v2, p1, v3}, Lcom/kakaogame/security/ProtectionManager;->check2ndPW(Landroid/app/Activity;Z)Lcom/kakaogame/KGResult;

    move-result-object v3

    .line 2359
    invoke-virtual {v3}, Lcom/kakaogame/KGResult;->isSuccess()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 2369
    invoke-virtual {v2}, Lcom/kakaogame/security/ProtectionManager;->checkDeviceSecurityCompleted()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 2379
    new-instance p1, Lcom/kakaogame/secondpw/viewdata/ResultData;

    invoke-static {}, Lcom/kakaogame/KGSystem;->getDeviceId()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p1, v6, v2}, Lcom/kakaogame/secondpw/viewdata/ResultData;-><init>(ILjava/lang/String;)V

    goto :goto_0

    .line 2399
    :cond_2
    new-instance p1, Lcom/kakaogame/secondpw/viewdata/ResultData;

    const-string v2, ""

    invoke-direct {p1, v6, v2}, Lcom/kakaogame/secondpw/viewdata/ResultData;-><init>(ILjava/lang/String;)V

    .line 2409
    :goto_0
    sget-object v2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    sget-object v2, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    invoke-virtual {v2, p1}, Lcom/kakaogame/KGResult$Companion;->getSuccessResult(Ljava/lang/Object;)Lcom/kakaogame/KGResult;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v1, p1}, Lkotlin/coroutines/Continuation;->resumeWith(Ljava/lang/Object;)V

    goto :goto_1

    .line 2429
    :cond_3
    invoke-virtual {v3}, Lcom/kakaogame/KGResult;->getCode()I

    move-result v2

    const/16 v4, 0xfac

    if-ne v2, v4, :cond_4

    .line 2439
    sget-object p1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    sget-object p1, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    invoke-virtual {p1, v4}, Lcom/kakaogame/KGResult$Companion;->getResult(I)Lcom/kakaogame/KGResult;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v1, p1}, Lkotlin/coroutines/Continuation;->resumeWith(Ljava/lang/Object;)V

    goto :goto_1

    .line 2459
    :cond_4
    invoke-virtual {v3}, Lcom/kakaogame/KGResult;->getContent()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_5

    .line 2469
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v2

    check-cast v2, Lkotlin/coroutines/CoroutineContext;

    invoke-static {v2}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    new-instance v2, Lcom/kakaogame/security/ProtectionManager$isAllowedAccessOnEngine$2$1;

    const/4 v6, 0x0

    invoke-direct {v2, p1, v1, v6}, Lcom/kakaogame/security/ProtectionManager$isAllowedAccessOnEngine$2$1;-><init>(Landroid/app/Activity;Lkotlin/coroutines/Continuation;Lkotlin/coroutines/Continuation;)V

    move-object v6, v2

    check-cast v6, Lkotlin/jvm/functions/Function2;

    const/4 v7, 0x3

    const/4 v8, 0x0

    invoke-static/range {v3 .. v8}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    goto :goto_1

    .line 2649
    :cond_5
    invoke-virtual {v3}, Lcom/kakaogame/KGResult;->getContent()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v2, Lcom/kakaogame/security/UserState;

    .line 2659
    sget-object v3, Lcom/kakaogame/infodesk/InfodeskHelper;->INSTANCE:Lcom/kakaogame/infodesk/InfodeskHelper;

    invoke-virtual {v3}, Lcom/kakaogame/infodesk/InfodeskHelper;->getPinFailLimitCount()I

    move-result v3

    .line 2669
    sget-object v4, Lcom/kakaogame/infodesk/InfodeskHelper;->INSTANCE:Lcom/kakaogame/infodesk/InfodeskHelper;

    invoke-virtual {v4}, Lcom/kakaogame/infodesk/InfodeskHelper;->getPinFailBlockTime()I

    move-result v4

    .line 2679
    invoke-virtual {v2}, Lcom/kakaogame/security/UserState;->getBlockMin()I

    move-result v5

    mul-int/lit8 v5, v5, 0x3c

    invoke-virtual {v2}, Lcom/kakaogame/security/UserState;->getBlockSec()I

    move-result v2

    add-int/2addr v5, v2

    .line 2689
    sget-object v2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    sget-object v2, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    .line 2699
    new-instance v6, Lcom/kakaogame/secondpw/viewdata/RestrictPopupViewData;

    invoke-direct {v6, p1, v3, v4, v5}, Lcom/kakaogame/secondpw/viewdata/RestrictPopupViewData;-><init>(Landroid/app/Activity;III)V

    .line 2689
    invoke-virtual {v2, v6}, Lcom/kakaogame/KGResult$Companion;->getSuccessResult(Ljava/lang/Object;)Lcom/kakaogame/KGResult;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v1, p1}, Lkotlin/coroutines/Continuation;->resumeWith(Ljava/lang/Object;)V

    .line 2239
    :goto_1
    invoke-virtual {v0}, Lkotlin/coroutines/SafeContinuation;->getOrThrow()Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    if-ne p1, v0, :cond_6

    invoke-static {p2}, Lkotlin/coroutines/jvm/internal/DebugProbesKt;->probeCoroutineSuspended(Lkotlin/coroutines/Continuation;)V

    :cond_6
    return-object p1

    .array-data 1
    .end array-data
.end method

.method public final isCertificatedDevice(Landroid/app/Activity;)Lcom/kakaogame/KGResult;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            ")",
            "Lcom/kakaogame/KGResult<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    const v0, 0x543d14da

    invoke-static {v0}, Lcom/liapp/y;->׳ֳֳ֬د(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 979
    sget-object v0, Lcom/kakaogame/infodesk/InfodeskHelper;->INSTANCE:Lcom/kakaogame/infodesk/InfodeskHelper;

    invoke-virtual {v0}, Lcom/kakaogame/infodesk/InfodeskHelper;->isEnableDeviceSecurity()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object p1, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    const/16 v0, 0x1389

    invoke-virtual {p1, v0}, Lcom/kakaogame/KGResult$Companion;->getResult(I)Lcom/kakaogame/KGResult;

    move-result-object p1

    goto/16 :goto_1

    .line 989
    :cond_0
    sget-object v0, Lcom/kakaogame/core/CoreManager;->Companion:Lcom/kakaogame/core/CoreManager$Companion;

    invoke-virtual {v0}, Lcom/kakaogame/core/CoreManager$Companion;->getInstance()Lcom/kakaogame/core/CoreManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kakaogame/core/CoreManager;->isNotAuthorized()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object p1, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    const/16 v0, 0xbba

    invoke-virtual {p1, v0}, Lcom/kakaogame/KGResult$Companion;->getResult(I)Lcom/kakaogame/KGResult;

    move-result-object p1

    goto :goto_1

    .line 999
    :cond_1
    sget-object v0, Lcom/kakaogame/KGIdpProfile$KGIdpCode;->Guest:Lcom/kakaogame/KGIdpProfile$KGIdpCode;

    sget-object v1, Lcom/kakaogame/KGLocalPlayer;->Companion:Lcom/kakaogame/KGLocalPlayer$Companion;

    invoke-virtual {v1}, Lcom/kakaogame/KGLocalPlayer$Companion;->getCurrentPlayer()Lcom/kakaogame/KGLocalPlayer;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/kakaogame/KGLocalPlayer;->getIdpProfile()Lcom/kakaogame/KGIdpProfile;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/kakaogame/KGIdpProfile;->getIdpCode()Lcom/kakaogame/KGIdpProfile$KGIdpCode;

    move-result-object v1

    goto :goto_0

    :cond_2
    move-object v1, v2

    :goto_0
    const/4 v3, 0x0

    if-ne v0, v1, :cond_3

    sget-object p1, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/kakaogame/KGResult$Companion;->getSuccessResult(Ljava/lang/Object;)Lcom/kakaogame/KGResult;

    move-result-object p1

    goto :goto_1

    :cond_3
    const/4 v0, 0x2

    .line 1019
    invoke-static {p0, p1, v2, v0, v2}, Lcom/kakaogame/security/ProtectionManager;->checkDeviceCertification$default(Lcom/kakaogame/security/ProtectionManager;Landroid/app/Activity;Ljava/lang/String;ILjava/lang/Object;)Lcom/kakaogame/KGResult;

    move-result-object p1

    .line 1039
    invoke-virtual {p1}, Lcom/kakaogame/KGResult;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object p1, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/kakaogame/KGResult$Companion;->getSuccessResult(Ljava/lang/Object;)Lcom/kakaogame/KGResult;

    move-result-object p1

    goto :goto_1

    .line 1049
    :cond_4
    invoke-virtual {p1}, Lcom/kakaogame/KGResult;->getCode()I

    move-result v0

    const/16 v1, 0xfab

    if-ne v0, v1, :cond_5

    sget-object p1, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/kakaogame/KGResult$Companion;->getSuccessResult(Ljava/lang/Object;)Lcom/kakaogame/KGResult;

    move-result-object p1

    goto :goto_1

    .line 1059
    :cond_5
    sget-object v0, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    check-cast p1, Ljava/util/Map;

    invoke-virtual {v0, p1}, Lcom/kakaogame/KGResult$Companion;->getResult(Ljava/util/Map;)Lcom/kakaogame/KGResult;

    move-result-object p1

    :goto_1
    return-object p1

    nop

    .array-data 1
    .end array-data
.end method

.method public final isRegistered2ndPassword()Lcom/kakaogame/KGResult;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/kakaogame/KGResult<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 1179
    sget-object v0, Lcom/kakaogame/core/CoreManager;->Companion:Lcom/kakaogame/core/CoreManager$Companion;

    invoke-virtual {v0}, Lcom/kakaogame/core/CoreManager$Companion;->getInstance()Lcom/kakaogame/core/CoreManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kakaogame/core/CoreManager;->isNotAuthorized()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1189
    sget-object v0, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    const/16 v1, 0xbba

    invoke-virtual {v0, v1}, Lcom/kakaogame/KGResult$Companion;->getResult(I)Lcom/kakaogame/KGResult;

    move-result-object v0

    goto/16 :goto_2

    .line 1199
    :cond_0
    sget-object v0, Lcom/kakaogame/KGLocalPlayer;->Companion:Lcom/kakaogame/KGLocalPlayer$Companion;

    invoke-virtual {v0}, Lcom/kakaogame/KGLocalPlayer$Companion;->getCurrentPlayer()Lcom/kakaogame/KGLocalPlayer;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/kakaogame/KGLocalPlayer;->getIdpProfile()Lcom/kakaogame/KGIdpProfile;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/kakaogame/KGIdpProfile;->getIdpCode()Lcom/kakaogame/KGIdpProfile$KGIdpCode;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    sget-object v1, Lcom/kakaogame/KGIdpProfile$KGIdpCode;->Guest:Lcom/kakaogame/KGIdpProfile$KGIdpCode;

    if-ne v0, v1, :cond_2

    .line 1209
    sget-object v0, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kakaogame/KGResult$Companion;->getSuccessResult(Ljava/lang/Object;)Lcom/kakaogame/KGResult;

    move-result-object v0

    goto/16 :goto_2

    .line 1229
    :cond_2
    sget-object v0, Lcom/kakaogame/log/FirebaseEvent;->Companion:Lcom/kakaogame/log/FirebaseEvent$Companion;

    const v1, 0x7d7142ed

    invoke-static {v1}, Lcom/liapp/y;->حֲݴܳޯ(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x225a32be

    invoke-static {v2}, Lcom/liapp/y;->ֲֳگܱޭ(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/kakaogame/log/FirebaseEvent$Companion;->getFirebaseEvent(Ljava/lang/String;Ljava/lang/String;)Lcom/kakaogame/log/FirebaseEvent;

    move-result-object v0

    .line 1239
    sget-object v1, Lcom/kakaogame/util/Stopwatch;->Companion:Lcom/kakaogame/util/Stopwatch$Companion;

    const v2, 0x6d0329e8

    invoke-static {v2}, Lcom/liapp/y;->ٱڳܴڭܩ(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/kakaogame/util/Stopwatch$Companion;->start(Ljava/lang/String;)Lcom/kakaogame/util/Stopwatch;

    move-result-object v1

    .line 1259
    :try_start_0
    sget-object v2, Lcom/kakaogame/security/SecondaryPWService;->INSTANCE:Lcom/kakaogame/security/SecondaryPWService;

    invoke-virtual {v2}, Lcom/kakaogame/security/SecondaryPWService;->getUserState()Lcom/kakaogame/KGResult;

    move-result-object v2

    .line 1269
    invoke-virtual {v2}, Lcom/kakaogame/KGResult;->isSuccess()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1279
    invoke-virtual {v2}, Lcom/kakaogame/KGResult;->getContent()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v2, Lcom/kakaogame/security/UserState;

    invoke-virtual {v2}, Lcom/kakaogame/security/UserState;->isRegistered()Z

    move-result v2

    .line 1289
    sget-object v3, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/kakaogame/KGResult$Companion;->getSuccessResult(Ljava/lang/Object;)Lcom/kakaogame/KGResult;

    move-result-object v2

    goto :goto_1

    .line 1299
    :cond_3
    sget-object v3, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    check-cast v2, Ljava/util/Map;

    invoke-virtual {v3, v2}, Lcom/kakaogame/KGResult$Companion;->getResult(Ljava/util/Map;)Lcom/kakaogame/KGResult;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    .line 1319
    sget-object v3, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v5, v2

    check-cast v5, Ljava/lang/Throwable;

    const v6, 0x5d1f14df

    invoke-static {v6}, Lcom/liapp/y;->ڴݮگ֮ت(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6, v4, v5}, Lcom/kakaogame/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1329
    sget-object v3, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    const/16 v4, 0xfa1

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v4, v2}, Lcom/kakaogame/KGResult$Companion;->getResult(ILjava/lang/String;)Lcom/kakaogame/KGResult;

    move-result-object v2

    .line 1349
    :goto_1
    invoke-virtual {v1}, Lcom/kakaogame/util/Stopwatch;->stop()V

    .line 1359
    invoke-virtual {v1}, Lcom/kakaogame/util/Stopwatch;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lcom/kakaogame/util/Stopwatch;->getDurationMs()J

    move-result-wide v4

    invoke-static {v3, v2, v4, v5}, Lcom/kakaogame/core/KGResultUtil;->writeClientApiCall(Ljava/lang/String;Lcom/kakaogame/KGResult;J)V

    .line 1369
    invoke-virtual {v0, v2}, Lcom/kakaogame/log/FirebaseEvent;->setResult(Lcom/kakaogame/KGResult;)V

    move-object v0, v2

    :goto_2
    return-object v0

    .array-data 1
    .end array-data
.end method

.method public final isRegisteredDeviceSecurity()Lcom/kakaogame/KGResult;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/kakaogame/KGResult<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 639
    sget-object v0, Lcom/kakaogame/infodesk/InfodeskHelper;->INSTANCE:Lcom/kakaogame/infodesk/InfodeskHelper;

    invoke-virtual {v0}, Lcom/kakaogame/infodesk/InfodeskHelper;->isEnableDeviceSecurity()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    const/16 v1, 0x1389

    const v2, 0x5d1f1c37

    invoke-static {v2}, Lcom/liapp/y;->ڴݮگ֮ت(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/kakaogame/KGResult$Companion;->getResult(ILjava/lang/String;)Lcom/kakaogame/KGResult;

    move-result-object v0

    goto/16 :goto_2

    .line 679
    :cond_0
    sget-object v0, Lcom/kakaogame/core/CoreManager;->Companion:Lcom/kakaogame/core/CoreManager$Companion;

    invoke-virtual {v0}, Lcom/kakaogame/core/CoreManager$Companion;->getInstance()Lcom/kakaogame/core/CoreManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kakaogame/core/CoreManager;->isNotAuthorized()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 689
    sget-object v0, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    const/16 v1, 0xbba

    invoke-virtual {v0, v1}, Lcom/kakaogame/KGResult$Companion;->getResult(I)Lcom/kakaogame/KGResult;

    move-result-object v0

    goto/16 :goto_2

    .line 699
    :cond_1
    sget-object v0, Lcom/kakaogame/KGLocalPlayer;->Companion:Lcom/kakaogame/KGLocalPlayer$Companion;

    invoke-virtual {v0}, Lcom/kakaogame/KGLocalPlayer$Companion;->getCurrentPlayer()Lcom/kakaogame/KGLocalPlayer;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/kakaogame/KGLocalPlayer;->getIdpProfile()Lcom/kakaogame/KGIdpProfile;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/kakaogame/KGIdpProfile;->getIdpCode()Lcom/kakaogame/KGIdpProfile$KGIdpCode;

    move-result-object v0

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    sget-object v1, Lcom/kakaogame/KGIdpProfile$KGIdpCode;->Guest:Lcom/kakaogame/KGIdpProfile$KGIdpCode;

    if-ne v0, v1, :cond_3

    .line 709
    sget-object v0, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kakaogame/KGResult$Companion;->getSuccessResult(Ljava/lang/Object;)Lcom/kakaogame/KGResult;

    move-result-object v0

    goto :goto_2

    .line 729
    :cond_3
    sget-object v0, Lcom/kakaogame/log/FirebaseEvent;->Companion:Lcom/kakaogame/log/FirebaseEvent$Companion;

    const v1, 0x7d7142ed

    invoke-static {v1}, Lcom/liapp/y;->حֲݴܳޯ(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x225a3ece

    invoke-static {v2}, Lcom/liapp/y;->ֲֳگܱޭ(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/kakaogame/log/FirebaseEvent$Companion;->getFirebaseEvent(Ljava/lang/String;Ljava/lang/String;)Lcom/kakaogame/log/FirebaseEvent;

    move-result-object v0

    .line 739
    sget-object v1, Lcom/kakaogame/util/Stopwatch;->Companion:Lcom/kakaogame/util/Stopwatch$Companion;

    const v2, 0x225a3e2e

    invoke-static {v2}, Lcom/liapp/y;->ֲֳگܱޭ(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/kakaogame/util/Stopwatch$Companion;->start(Ljava/lang/String;)Lcom/kakaogame/util/Stopwatch;

    move-result-object v1

    .line 759
    :try_start_0
    sget-object v2, Lcom/kakaogame/security/DeviceProtectionService;->INSTANCE:Lcom/kakaogame/security/DeviceProtectionService;

    invoke-virtual {v2}, Lcom/kakaogame/security/DeviceProtectionService;->isRegisteredUser()Lcom/kakaogame/KGResult;

    move-result-object v2

    .line 769
    invoke-virtual {v2}, Lcom/kakaogame/KGResult;->isSuccess()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 779
    invoke-virtual {v2}, Lcom/kakaogame/KGResult;->getContent()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    .line 789
    sget-object v3, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    invoke-virtual {v3, v2}, Lcom/kakaogame/KGResult$Companion;->getSuccessResult(Ljava/lang/Object;)Lcom/kakaogame/KGResult;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    .line 819
    sget-object v3, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v5, v2

    check-cast v5, Ljava/lang/Throwable;

    const v6, 0x5d1f14df

    invoke-static {v6}, Lcom/liapp/y;->ڴݮگ֮ت(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6, v4, v5}, Lcom/kakaogame/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 829
    sget-object v3, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    const/16 v4, 0xfa1

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v4, v2}, Lcom/kakaogame/KGResult$Companion;->getResult(ILjava/lang/String;)Lcom/kakaogame/KGResult;

    move-result-object v2

    .line 849
    :cond_4
    :goto_1
    invoke-virtual {v1}, Lcom/kakaogame/util/Stopwatch;->stop()V

    .line 859
    invoke-virtual {v1}, Lcom/kakaogame/util/Stopwatch;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lcom/kakaogame/util/Stopwatch;->getDurationMs()J

    move-result-wide v4

    invoke-static {v3, v2, v4, v5}, Lcom/kakaogame/core/KGResultUtil;->writeClientApiCall(Ljava/lang/String;Lcom/kakaogame/KGResult;J)V

    .line 869
    invoke-virtual {v0, v2}, Lcom/kakaogame/log/FirebaseEvent;->setResult(Lcom/kakaogame/KGResult;)V

    move-object v0, v2

    :goto_2
    return-object v0

    .array-data 1
    .end array-data
.end method

.method public final register2StepVerificationEmail(Ljava/lang/String;)Lcom/kakaogame/KGResult;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/kakaogame/KGResult<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    const v0, 0x3363f8eb

    invoke-static {v0}, Lcom/liapp/y;->ׯ״ٲ֬ب(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6459
    sget-object v0, Lcom/kakaogame/log/FirebaseEvent;->Companion:Lcom/kakaogame/log/FirebaseEvent$Companion;

    const v1, 0x7d7142ed

    invoke-static {v1}, Lcom/liapp/y;->حֲݴܳޯ(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x336d9593

    invoke-static {v2}, Lcom/liapp/y;->ׯ״ٲ֬ب(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/kakaogame/log/FirebaseEvent$Companion;->getFirebaseEvent(Ljava/lang/String;Ljava/lang/String;)Lcom/kakaogame/log/FirebaseEvent;

    move-result-object v0

    .line 6469
    sget-object v1, Lcom/kakaogame/core/CoreManager;->Companion:Lcom/kakaogame/core/CoreManager$Companion;

    invoke-virtual {v1}, Lcom/kakaogame/core/CoreManager$Companion;->getInstance()Lcom/kakaogame/core/CoreManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/kakaogame/core/CoreManager;->isNotAuthorized()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 6479
    sget-object p1, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    const/16 v0, 0xbba

    invoke-virtual {p1, v0}, Lcom/kakaogame/KGResult$Companion;->getResult(I)Lcom/kakaogame/KGResult;

    move-result-object p1

    return-object p1

    .line 6499
    :cond_0
    sget-object v1, Lcom/kakaogame/infodesk/InfodeskHelper;->INSTANCE:Lcom/kakaogame/infodesk/InfodeskHelper;

    invoke-virtual {v1}, Lcom/kakaogame/infodesk/InfodeskHelper;->getEmailPublicKey()Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    if-eqz v1, :cond_2

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v1, 0x1

    :goto_1
    if-eqz v1, :cond_3

    .line 6509
    sget-object p1, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    const/16 v0, 0x1389

    const v1, 0x225a3b96

    invoke-static {v1}, Lcom/liapp/y;->ֲֳگܱޭ(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/kakaogame/KGResult$Companion;->getResult(ILjava/lang/String;)Lcom/kakaogame/KGResult;

    move-result-object p1

    return-object p1

    :cond_3
    const v1, 0x6d00dcf8

    invoke-static {v1}, Lcom/liapp/y;->ٱڳܴڭܩ(I)Ljava/lang/String;

    move-result-object v1

    .line 6559
    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 6569
    move-object v2, p1

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 6579
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-nez v1, :cond_4

    .line 6589
    sget-object p1, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    const/16 v0, 0xfa0

    const v1, 0x54363172

    invoke-static {v1}, Lcom/liapp/y;->׳ֳֳ֬د(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/kakaogame/KGResult$Companion;->getResult(ILjava/lang/String;)Lcom/kakaogame/KGResult;

    move-result-object p1

    return-object p1

    .line 6619
    :cond_4
    sget-object v1, Lcom/kakaogame/util/Stopwatch;->Companion:Lcom/kakaogame/util/Stopwatch$Companion;

    const v2, 0x6d0311a0

    invoke-static {v2}, Lcom/liapp/y;->ٱڳܴڭܩ(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/kakaogame/util/Stopwatch$Companion;->start(Ljava/lang/String;)Lcom/kakaogame/util/Stopwatch;

    move-result-object v1

    .line 6639
    :try_start_0
    sget-object v2, Lcom/kakaogame/security/DeviceProtectionService;->INSTANCE:Lcom/kakaogame/security/DeviceProtectionService;

    invoke-virtual {v2, p1}, Lcom/kakaogame/security/DeviceProtectionService;->register2StepVerificationEmail(Ljava/lang/String;)Lcom/kakaogame/KGResult;

    move-result-object p1

    .line 6649
    invoke-virtual {p1}, Lcom/kakaogame/KGResult;->isNotSuccess()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 6659
    sget-object v2, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    check-cast p1, Ljava/util/Map;

    invoke-virtual {v2, p1}, Lcom/kakaogame/KGResult$Companion;->getResult(Ljava/util/Map;)Lcom/kakaogame/KGResult;

    move-result-object p1

    goto :goto_2

    .line 6669
    :cond_5
    sget-object p1, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    invoke-virtual {p1}, Lcom/kakaogame/KGResult$Companion;->getSuccessResult()Lcom/kakaogame/KGResult;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6719
    :goto_2
    invoke-virtual {v1}, Lcom/kakaogame/util/Stopwatch;->stop()V

    .line 6729
    invoke-virtual {v1}, Lcom/kakaogame/util/Stopwatch;->getName()Ljava/lang/String;

    move-result-object v2

    :goto_3
    invoke-virtual {v1}, Lcom/kakaogame/util/Stopwatch;->getDurationMs()J

    move-result-wide v3

    invoke-static {v2, p1, v3, v4}, Lcom/kakaogame/core/KGResultUtil;->writeClientApiCall(Ljava/lang/String;Lcom/kakaogame/KGResult;J)V

    .line 6739
    invoke-virtual {v0, p1}, Lcom/kakaogame/log/FirebaseEvent;->setResult(Lcom/kakaogame/KGResult;)V

    goto :goto_4

    :catchall_0
    move-exception p1

    goto :goto_5

    :catch_0
    move-exception p1

    .line 6689
    :try_start_1
    sget-object v2, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    const-string v3, "ProtectionManager"

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v5, p1

    check-cast v5, Ljava/lang/Throwable;

    invoke-virtual {v2, v3, v4, v5}, Lcom/kakaogame/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 6699
    sget-object v2, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    const/16 v3, 0xfa1

    invoke-virtual {v2, v3, p1}, Lcom/kakaogame/KGResult$Companion;->getResult(ILjava/lang/String;)Lcom/kakaogame/KGResult;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 6719
    invoke-virtual {v1}, Lcom/kakaogame/util/Stopwatch;->stop()V

    .line 6729
    invoke-virtual {v1}, Lcom/kakaogame/util/Stopwatch;->getName()Ljava/lang/String;

    move-result-object v2

    move-object v3, p1

    check-cast v3, Lcom/kakaogame/KGResult;

    goto :goto_3

    :goto_4
    return-object p1

    .line 6719
    :goto_5
    invoke-virtual {v1}, Lcom/kakaogame/util/Stopwatch;->stop()V

    .line 6729
    invoke-virtual {v1}, Lcom/kakaogame/util/Stopwatch;->getName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    move-object v4, v3

    check-cast v4, Lcom/kakaogame/KGResult;

    invoke-virtual {v1}, Lcom/kakaogame/util/Stopwatch;->getDurationMs()J

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Lcom/kakaogame/core/KGResultUtil;->writeClientApiCall(Ljava/lang/String;Lcom/kakaogame/KGResult;J)V

    .line 6739
    invoke-virtual {v0, v3}, Lcom/kakaogame/log/FirebaseEvent;->setResult(Lcom/kakaogame/KGResult;)V

    throw p1

    .array-data 1
    .end array-data
.end method

.method public final register2ndPassword(Landroid/app/Activity;)Lcom/kakaogame/KGResult;
    .locals 3
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

    const v0, 0x543d14da

    invoke-static {v0}, Lcom/liapp/y;->׳ֳֳ֬د(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5769
    sget-object v0, Lcom/kakaogame/infodesk/InfodeskHelper;->INSTANCE:Lcom/kakaogame/infodesk/InfodeskHelper;

    invoke-virtual {v0}, Lcom/kakaogame/infodesk/InfodeskHelper;->isEnable2ndPWSecurity()Z

    move-result v0

    const/16 v1, 0x1389

    if-nez v0, :cond_0

    sget-object p1, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    const v0, 0x5d1f1c37

    invoke-static {v0}, Lcom/liapp/y;->ڴݮگ֮ت(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/kakaogame/KGResult$Companion;->getResult(ILjava/lang/String;)Lcom/kakaogame/KGResult;

    move-result-object p1

    goto :goto_1

    .line 5809
    :cond_0
    sget-object v0, Lcom/kakaogame/core/CoreManager;->Companion:Lcom/kakaogame/core/CoreManager$Companion;

    invoke-virtual {v0}, Lcom/kakaogame/core/CoreManager$Companion;->getInstance()Lcom/kakaogame/core/CoreManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kakaogame/core/CoreManager;->isNotAuthorized()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object p1, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    const/16 v0, 0xbba

    invoke-virtual {p1, v0}, Lcom/kakaogame/KGResult$Companion;->getResult(I)Lcom/kakaogame/KGResult;

    move-result-object p1

    goto :goto_1

    .line 5819
    :cond_1
    sget-object v0, Lcom/kakaogame/KGIdpProfile$KGIdpCode;->Guest:Lcom/kakaogame/KGIdpProfile$KGIdpCode;

    sget-object v2, Lcom/kakaogame/KGLocalPlayer;->Companion:Lcom/kakaogame/KGLocalPlayer$Companion;

    invoke-virtual {v2}, Lcom/kakaogame/KGLocalPlayer$Companion;->getCurrentPlayer()Lcom/kakaogame/KGLocalPlayer;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/kakaogame/KGLocalPlayer;->getIdpProfile()Lcom/kakaogame/KGIdpProfile;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/kakaogame/KGIdpProfile;->getIdpCode()Lcom/kakaogame/KGIdpProfile$KGIdpCode;

    move-result-object v2

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    :goto_0
    if-ne v0, v2, :cond_3

    .line 5829
    sget-object p1, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    const v0, 0x7d7f0d5d

    invoke-static {v0}, Lcom/liapp/y;->حֲݴܳޯ(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/kakaogame/KGResult$Companion;->getResult(ILjava/lang/String;)Lcom/kakaogame/KGResult;

    move-result-object p1

    goto :goto_1

    .line 5849
    :cond_3
    invoke-virtual {p0}, Lcom/kakaogame/security/ProtectionManager;->isRegistered2ndPassword()Lcom/kakaogame/KGResult;

    move-result-object v0

    .line 5869
    invoke-virtual {v0}, Lcom/kakaogame/KGResult;->isNotSuccess()Z

    move-result v1

    if-eqz v1, :cond_4

    sget-object p1, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    check-cast v0, Ljava/util/Map;

    invoke-virtual {p1, v0}, Lcom/kakaogame/KGResult$Companion;->getResult(Ljava/util/Map;)Lcom/kakaogame/KGResult;

    move-result-object p1

    goto :goto_1

    .line 5879
    :cond_4
    invoke-virtual {v0}, Lcom/kakaogame/KGResult;->getContent()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_5

    sget-object p1, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    invoke-virtual {p1}, Lcom/kakaogame/KGResult$Companion;->getSuccessResult()Lcom/kakaogame/KGResult;

    move-result-object p1

    goto :goto_1

    .line 5889
    :cond_5
    invoke-direct {p0, p1}, Lcom/kakaogame/security/ProtectionManager;->showPasswordSettingDialog(Landroid/app/Activity;)Lcom/kakaogame/KGResult;

    move-result-object p1

    :goto_1
    return-object p1

    nop

    .array-data 1
    .end array-data
.end method

.method public final register2ndPasswordOnEngine(Landroid/app/Activity;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/kakaogame/KGResult<",
            "Lcom/kakaogame/secondpw/viewdata/Base2ndPWViewData;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 5479
    new-instance v0, Lkotlin/coroutines/SafeContinuation;

    invoke-static {p2}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->intercepted(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v1

    invoke-direct {v0, v1}, Lkotlin/coroutines/SafeContinuation;-><init>(Lkotlin/coroutines/Continuation;)V

    move-object v1, v0

    check-cast v1, Lkotlin/coroutines/Continuation;

    .line 5499
    sget-object v2, Lcom/kakaogame/infodesk/InfodeskHelper;->INSTANCE:Lcom/kakaogame/infodesk/InfodeskHelper;

    invoke-virtual {v2}, Lcom/kakaogame/infodesk/InfodeskHelper;->isEnable2ndPWSecurity()Z

    move-result v2

    const/16 v3, 0x1389

    if-nez v2, :cond_0

    sget-object p1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    sget-object p1, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    const v2, 0x5d1f1c37

    invoke-static {v2}, Lcom/liapp/y;->ڴݮگ֮ت(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v3, v2}, Lcom/kakaogame/KGResult$Companion;->getResult(ILjava/lang/String;)Lcom/kakaogame/KGResult;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v1, p1}, Lkotlin/coroutines/Continuation;->resumeWith(Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 5539
    :cond_0
    sget-object v2, Lcom/kakaogame/core/CoreManager;->Companion:Lcom/kakaogame/core/CoreManager$Companion;

    invoke-virtual {v2}, Lcom/kakaogame/core/CoreManager$Companion;->getInstance()Lcom/kakaogame/core/CoreManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/kakaogame/core/CoreManager;->isNotAuthorized()Z

    move-result v2

    if-eqz v2, :cond_1

    sget-object p1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    sget-object p1, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    const/16 v2, 0xbba

    invoke-virtual {p1, v2}, Lcom/kakaogame/KGResult$Companion;->getResult(I)Lcom/kakaogame/KGResult;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v1, p1}, Lkotlin/coroutines/Continuation;->resumeWith(Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 5549
    :cond_1
    sget-object v2, Lcom/kakaogame/KGIdpProfile$KGIdpCode;->Guest:Lcom/kakaogame/KGIdpProfile$KGIdpCode;

    sget-object v4, Lcom/kakaogame/KGLocalPlayer;->Companion:Lcom/kakaogame/KGLocalPlayer$Companion;

    invoke-virtual {v4}, Lcom/kakaogame/KGLocalPlayer$Companion;->getCurrentPlayer()Lcom/kakaogame/KGLocalPlayer;

    move-result-object v4

    const/4 v5, 0x0

    if-eqz v4, :cond_2

    invoke-virtual {v4}, Lcom/kakaogame/KGLocalPlayer;->getIdpProfile()Lcom/kakaogame/KGIdpProfile;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-virtual {v4}, Lcom/kakaogame/KGIdpProfile;->getIdpCode()Lcom/kakaogame/KGIdpProfile$KGIdpCode;

    move-result-object v4

    goto :goto_0

    :cond_2
    move-object v4, v5

    :goto_0
    if-ne v2, v4, :cond_3

    .line 5559
    sget-object p1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    sget-object p1, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    const v2, 0x7d7f0d5d

    invoke-static {v2}, Lcom/liapp/y;->حֲݴܳޯ(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v3, v2}, Lcom/kakaogame/KGResult$Companion;->getResult(ILjava/lang/String;)Lcom/kakaogame/KGResult;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v1, p1}, Lkotlin/coroutines/Continuation;->resumeWith(Ljava/lang/Object;)V

    goto :goto_1

    .line 5579
    :cond_3
    sget-object v2, Lcom/kakaogame/security/ProtectionManager;->INSTANCE:Lcom/kakaogame/security/ProtectionManager;

    invoke-virtual {v2}, Lcom/kakaogame/security/ProtectionManager;->isRegistered2ndPassword()Lcom/kakaogame/KGResult;

    move-result-object v2

    .line 5599
    invoke-virtual {v2}, Lcom/kakaogame/KGResult;->isNotSuccess()Z

    move-result v3

    if-eqz v3, :cond_4

    sget-object p1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    sget-object p1, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    check-cast v2, Ljava/util/Map;

    invoke-virtual {p1, v2}, Lcom/kakaogame/KGResult$Companion;->getResult(Ljava/util/Map;)Lcom/kakaogame/KGResult;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v1, p1}, Lkotlin/coroutines/Continuation;->resumeWith(Ljava/lang/Object;)V

    goto :goto_1

    .line 5609
    :cond_4
    invoke-virtual {v2}, Lcom/kakaogame/KGResult;->getContent()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_5

    sget-object p1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    sget-object p1, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    new-instance v2, Lcom/kakaogame/secondpw/viewdata/ResultData;

    const/16 v3, 0xc8

    const/4 v4, 0x2

    invoke-direct {v2, v3, v5, v4, v5}, Lcom/kakaogame/secondpw/viewdata/ResultData;-><init>(ILjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {p1, v2}, Lcom/kakaogame/KGResult$Companion;->getSuccessResult(Ljava/lang/Object;)Lcom/kakaogame/KGResult;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v1, p1}, Lkotlin/coroutines/Continuation;->resumeWith(Ljava/lang/Object;)V

    goto :goto_1

    .line 5629
    :cond_5
    sget-object v2, Lcom/kakaogame/secondpw/SecondPWViewManager;->INSTANCE:Lcom/kakaogame/secondpw/SecondPWViewManager;

    sget-object v4, Lcom/kakaogame/secondpw/ActionType;->ENTER_SHOW_PASSWORD_SETTING_VIEW:Lcom/kakaogame/secondpw/ActionType;

    const/4 v5, 0x0

    new-instance v3, Lcom/kakaogame/security/ProtectionManager$register2ndPasswordOnEngine$2$1;

    invoke-direct {v3, v1}, Lcom/kakaogame/security/ProtectionManager$register2ndPasswordOnEngine$2$1;-><init>(Lkotlin/coroutines/Continuation;)V

    move-object v6, v3

    check-cast v6, Lkotlin/jvm/functions/Function1;

    const/4 v7, 0x4

    const/4 v8, 0x0

    move-object v3, p1

    invoke-static/range {v2 .. v8}, Lcom/kakaogame/secondpw/SecondPWViewManager;->getUIData$default(Lcom/kakaogame/secondpw/SecondPWViewManager;Landroid/app/Activity;Lcom/kakaogame/secondpw/ActionType;Ljava/lang/String;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    .line 5479
    :goto_1
    invoke-virtual {v0}, Lkotlin/coroutines/SafeContinuation;->getOrThrow()Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    if-ne p1, v0, :cond_6

    invoke-static {p2}, Lkotlin/coroutines/jvm/internal/DebugProbesKt;->probeCoroutineSuspended(Lkotlin/coroutines/Continuation;)V

    :cond_6
    return-object p1

    nop

    .array-data 1
    .end array-data
.end method

.method public final showDeviceRegistrationView(Landroid/app/Activity;)Lcom/kakaogame/KGResult;
    .locals 3
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

    const v0, 0x543d14da

    invoke-static {v0}, Lcom/liapp/y;->׳ֳֳ֬د(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3839
    sget-object v0, Lcom/kakaogame/infodesk/InfodeskHelper;->INSTANCE:Lcom/kakaogame/infodesk/InfodeskHelper;

    invoke-virtual {v0}, Lcom/kakaogame/infodesk/InfodeskHelper;->isEnableDeviceSecurity()Z

    move-result v0

    const/16 v1, 0x1389

    if-nez v0, :cond_0

    sget-object p1, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    const v0, 0x5d1f1c37

    invoke-static {v0}, Lcom/liapp/y;->ڴݮگ֮ت(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/kakaogame/KGResult$Companion;->getResult(ILjava/lang/String;)Lcom/kakaogame/KGResult;

    move-result-object p1

    goto :goto_3

    .line 3879
    :cond_0
    sget-object v0, Lcom/kakaogame/core/CoreManager;->Companion:Lcom/kakaogame/core/CoreManager$Companion;

    invoke-virtual {v0}, Lcom/kakaogame/core/CoreManager$Companion;->getInstance()Lcom/kakaogame/core/CoreManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kakaogame/core/CoreManager;->isNotAuthorized()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object p1, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    const/16 v0, 0xbba

    invoke-virtual {p1, v0}, Lcom/kakaogame/KGResult$Companion;->getResult(I)Lcom/kakaogame/KGResult;

    move-result-object p1

    goto :goto_3

    .line 3889
    :cond_1
    sget-object v0, Lcom/kakaogame/KGIdpProfile$KGIdpCode;->Guest:Lcom/kakaogame/KGIdpProfile$KGIdpCode;

    sget-object v2, Lcom/kakaogame/KGLocalPlayer;->Companion:Lcom/kakaogame/KGLocalPlayer$Companion;

    invoke-virtual {v2}, Lcom/kakaogame/KGLocalPlayer$Companion;->getCurrentPlayer()Lcom/kakaogame/KGLocalPlayer;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/kakaogame/KGLocalPlayer;->getIdpProfile()Lcom/kakaogame/KGIdpProfile;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/kakaogame/KGIdpProfile;->getIdpCode()Lcom/kakaogame/KGIdpProfile$KGIdpCode;

    move-result-object v2

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    :goto_0
    if-ne v0, v2, :cond_3

    .line 3899
    sget-object p1, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    const v0, 0x7d7f0d5d

    invoke-static {v0}, Lcom/liapp/y;->حֲݴܳޯ(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/kakaogame/KGResult$Companion;->getResult(ILjava/lang/String;)Lcom/kakaogame/KGResult;

    move-result-object p1

    goto :goto_3

    .line 3909
    :cond_3
    sget-object v0, Lcom/kakaogame/infodesk/InfodeskHelper;->INSTANCE:Lcom/kakaogame/infodesk/InfodeskHelper;

    invoke-virtual {v0}, Lcom/kakaogame/infodesk/InfodeskHelper;->getRegisterDeviceUrl()Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    if-eqz v0, :cond_5

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_4

    goto :goto_1

    :cond_4
    const/4 v0, 0x0

    goto :goto_2

    :cond_5
    :goto_1
    const/4 v0, 0x1

    :goto_2
    if-eqz v0, :cond_6

    sget-object p1, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    const v0, 0x7d7f0ec5

    invoke-static {v0}, Lcom/liapp/y;->حֲݴܳޯ(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/kakaogame/KGResult$Companion;->getResult(ILjava/lang/String;)Lcom/kakaogame/KGResult;

    move-result-object p1

    goto :goto_3

    .line 3949
    :cond_6
    sget-object v0, Lcom/kakaogame/infodesk/InfodeskHelper;->INSTANCE:Lcom/kakaogame/infodesk/InfodeskHelper;

    invoke-virtual {v0}, Lcom/kakaogame/infodesk/InfodeskHelper;->getRegisterDeviceUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {p0, p1, v0}, Lcom/kakaogame/security/ProtectionManager;->showDeviceRegistrationDialog(Landroid/app/Activity;Ljava/lang/String;)Lcom/kakaogame/KGResult;

    move-result-object p1

    :goto_3
    return-object p1

    nop

    .array-data 1
    .end array-data
.end method
