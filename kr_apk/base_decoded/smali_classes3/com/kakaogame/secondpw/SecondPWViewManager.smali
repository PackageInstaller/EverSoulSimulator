.class public final Lcom/kakaogame/secondpw/SecondPWViewManager;
.super Ljava/lang/Object;
.source "SecondPWViewManager.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kakaogame/secondpw/SecondPWViewManager$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSecondPWViewManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SecondPWViewManager.kt\ncom/kakaogame/secondpw/SecondPWViewManager\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 Mutex.kt\nkotlinx/coroutines/sync/MutexKt\n*L\n1#1,531:1\n1863#2,2:532\n1863#2,2:542\n774#2:546\n865#2,2:547\n107#3,8:534\n116#3:544\n115#3:545\n*S KotlinDebug\n*F\n+ 1 SecondPWViewManager.kt\ncom/kakaogame/secondpw/SecondPWViewManager\n*L\n37#1:532,2\n397#1:542,2\n504#1:546\n504#1:547,2\n388#1:534,8\n388#1:544\n388#1:545\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000^\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u000f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\t\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0008\u0010\u000c\u001a\u00020\rH\u0002J4\u0010\u000e\u001a\u00020\r2\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00122\u0008\u0008\u0002\u0010\u0013\u001a\u00020\u00052\u0012\u0010\u0014\u001a\u000e\u0012\u0004\u0012\u00020\u0016\u0012\u0004\u0012\u00020\r0\u0015J\u0010\u0010\u0017\u001a\u00020\u00162\u0006\u0010\u000f\u001a\u00020\u0010H\u0002J\u0010\u0010\u0018\u001a\u00020\u00162\u0006\u0010\u000f\u001a\u00020\u0010H\u0002J\u0018\u0010\u0019\u001a\u00020\u00162\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u001a\u001a\u00020\u0005H\u0002J\u0018\u0010\u001b\u001a\u00020\u00162\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u001c\u001a\u00020\u0005H\u0002J&\u0010\u001d\u001a\u00020\u00162\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u001e\u001a\u00020\u00052\u0006\u0010\u0011\u001a\u00020\u0012H\u0082@\u00a2\u0006\u0002\u0010\u001fJ\u001e\u0010 \u001a\u00020\u00162\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u001e\u001a\u00020\u0005H\u0082@\u00a2\u0006\u0002\u0010!J\u0018\u0010\"\u001a\u00020\u00162\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u001e\u001a\u00020\u0005H\u0002J\u0010\u0010#\u001a\u00020\u00162\u0006\u0010\u000f\u001a\u00020\u0010H\u0002J\u0010\u0010$\u001a\u00020\u00162\u0006\u0010\u000f\u001a\u00020\u0010H\u0002J(\u0010%\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\'0&2\u0006\u0010(\u001a\u00020)2\u0008\u0008\u0002\u0010*\u001a\u00020+H\u0086@\u00a2\u0006\u0002\u0010,J\u0018\u0010-\u001a\u00020\u00162\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010.\u001a\u00020\u0005H\u0002J(\u0010/\u001a\u00020\u00162\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u00100\u001a\u00020\u00122\u0006\u0010.\u001a\u00020\u00052\u0006\u00101\u001a\u00020\u0005H\u0002J \u00102\u001a\u00020\u00162\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u00100\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u0005H\u0002J\u0010\u00103\u001a\u00020\u00162\u0006\u0010\u000f\u001a\u00020\u0010H\u0002R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\t0\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u00064"
    }
    d2 = {
        "Lcom/kakaogame/secondpw/SecondPWViewManager;",
        "",
        "<init>",
        "()V",
        "TAG",
        "",
        "publicKey",
        "keypads",
        "",
        "Lcom/kakaogame/secondpw/Keypad;",
        "mutex",
        "Lkotlinx/coroutines/sync/Mutex;",
        "removeFile",
        "",
        "getUIData",
        "activity",
        "Landroid/app/Activity;",
        "action",
        "Lcom/kakaogame/secondpw/ActionType;",
        "content",
        "callback",
        "Lkotlin/Function1;",
        "Lcom/kakaogame/secondpw/viewdata/Base2ndPWViewData;",
        "sendAuthCode",
        "sendAuthCodeTalk",
        "sendAuthCodeSMS",
        "phoneNumber",
        "sendAuthCodeEmail",
        "email",
        "verifyAuthCode",
        "code",
        "(Landroid/app/Activity;Ljava/lang/String;Lcom/kakaogame/secondpw/ActionType;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "verifyExistAuthCodeForReset",
        "(Landroid/app/Activity;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "verifyExistAuthCodeForRemove",
        "requestReset",
        "requestRemove",
        "getKeypadData",
        "Lcom/kakaogame/KGResult;",
        "Ljava/lang/Void;",
        "context",
        "Landroid/content/Context;",
        "count",
        "",
        "(Landroid/content/Context;ILkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "matchPassword",
        "password",
        "setPassword",
        "actionType",
        "confirm",
        "checkSettingPassword",
        "check2ndPWOptionType",
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
.field public static final INSTANCE:Lcom/kakaogame/secondpw/SecondPWViewManager;

.field private static final TAG:Ljava/lang/String; = "SecondPWViewManager"

.field private static keypads:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/kakaogame/secondpw/Keypad;",
            ">;"
        }
    .end annotation
.end field

.field private static final mutex:Lkotlinx/coroutines/sync/Mutex;

.field private static publicKey:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/kakaogame/secondpw/SecondPWViewManager;

    invoke-direct {v0}, Lcom/kakaogame/secondpw/SecondPWViewManager;-><init>()V

    sput-object v0, Lcom/kakaogame/secondpw/SecondPWViewManager;->INSTANCE:Lcom/kakaogame/secondpw/SecondPWViewManager;

    const-string v0, ""

    .line 329
    sput-object v0, Lcom/kakaogame/secondpw/SecondPWViewManager;->publicKey:Ljava/lang/String;

    .line 339
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    sput-object v0, Lcom/kakaogame/secondpw/SecondPWViewManager;->keypads:Ljava/util/List;

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 349
    invoke-static {v2, v0, v1}, Lkotlinx/coroutines/sync/MutexKt;->Mutex$default(ZILjava/lang/Object;)Lkotlinx/coroutines/sync/Mutex;

    move-result-object v0

    sput-object v0, Lcom/kakaogame/secondpw/SecondPWViewManager;->mutex:Lkotlinx/coroutines/sync/Mutex;

    return-void

    .array-data 1
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .line 309
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void

    .array-data 1
    .end array-data
.end method

.method public static final synthetic access$check2ndPWOptionType(Lcom/kakaogame/secondpw/SecondPWViewManager;Landroid/app/Activity;)Lcom/kakaogame/secondpw/viewdata/Base2ndPWViewData;
    .locals 0

    .line 309
    invoke-direct {p0, p1}, Lcom/kakaogame/secondpw/SecondPWViewManager;->check2ndPWOptionType(Landroid/app/Activity;)Lcom/kakaogame/secondpw/viewdata/Base2ndPWViewData;

    move-result-object p0

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static final synthetic access$checkSettingPassword(Lcom/kakaogame/secondpw/SecondPWViewManager;Landroid/app/Activity;Lcom/kakaogame/secondpw/ActionType;Ljava/lang/String;)Lcom/kakaogame/secondpw/viewdata/Base2ndPWViewData;
    .locals 0

    .line 309
    invoke-direct {p0, p1, p2, p3}, Lcom/kakaogame/secondpw/SecondPWViewManager;->checkSettingPassword(Landroid/app/Activity;Lcom/kakaogame/secondpw/ActionType;Ljava/lang/String;)Lcom/kakaogame/secondpw/viewdata/Base2ndPWViewData;

    move-result-object p0

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static final synthetic access$getKeypads$p()Ljava/util/List;
    .locals 1

    .line 309
    sget-object v0, Lcom/kakaogame/secondpw/SecondPWViewManager;->keypads:Ljava/util/List;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public static final synthetic access$matchPassword(Lcom/kakaogame/secondpw/SecondPWViewManager;Landroid/app/Activity;Ljava/lang/String;)Lcom/kakaogame/secondpw/viewdata/Base2ndPWViewData;
    .locals 0

    .line 309
    invoke-direct {p0, p1, p2}, Lcom/kakaogame/secondpw/SecondPWViewManager;->matchPassword(Landroid/app/Activity;Ljava/lang/String;)Lcom/kakaogame/secondpw/viewdata/Base2ndPWViewData;

    move-result-object p0

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static final synthetic access$removeFile(Lcom/kakaogame/secondpw/SecondPWViewManager;)V
    .locals 0

    .line 309
    invoke-direct {p0}, Lcom/kakaogame/secondpw/SecondPWViewManager;->removeFile()V

    return-void

    .array-data 1
    .end array-data
.end method

.method public static final synthetic access$requestRemove(Lcom/kakaogame/secondpw/SecondPWViewManager;Landroid/app/Activity;)Lcom/kakaogame/secondpw/viewdata/Base2ndPWViewData;
    .locals 0

    .line 309
    invoke-direct {p0, p1}, Lcom/kakaogame/secondpw/SecondPWViewManager;->requestRemove(Landroid/app/Activity;)Lcom/kakaogame/secondpw/viewdata/Base2ndPWViewData;

    move-result-object p0

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static final synthetic access$requestReset(Lcom/kakaogame/secondpw/SecondPWViewManager;Landroid/app/Activity;)Lcom/kakaogame/secondpw/viewdata/Base2ndPWViewData;
    .locals 0

    .line 309
    invoke-direct {p0, p1}, Lcom/kakaogame/secondpw/SecondPWViewManager;->requestReset(Landroid/app/Activity;)Lcom/kakaogame/secondpw/viewdata/Base2ndPWViewData;

    move-result-object p0

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static final synthetic access$sendAuthCode(Lcom/kakaogame/secondpw/SecondPWViewManager;Landroid/app/Activity;)Lcom/kakaogame/secondpw/viewdata/Base2ndPWViewData;
    .locals 0

    .line 309
    invoke-direct {p0, p1}, Lcom/kakaogame/secondpw/SecondPWViewManager;->sendAuthCode(Landroid/app/Activity;)Lcom/kakaogame/secondpw/viewdata/Base2ndPWViewData;

    move-result-object p0

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static final synthetic access$sendAuthCodeEmail(Lcom/kakaogame/secondpw/SecondPWViewManager;Landroid/app/Activity;Ljava/lang/String;)Lcom/kakaogame/secondpw/viewdata/Base2ndPWViewData;
    .locals 0

    .line 309
    invoke-direct {p0, p1, p2}, Lcom/kakaogame/secondpw/SecondPWViewManager;->sendAuthCodeEmail(Landroid/app/Activity;Ljava/lang/String;)Lcom/kakaogame/secondpw/viewdata/Base2ndPWViewData;

    move-result-object p0

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static final synthetic access$sendAuthCodeSMS(Lcom/kakaogame/secondpw/SecondPWViewManager;Landroid/app/Activity;Ljava/lang/String;)Lcom/kakaogame/secondpw/viewdata/Base2ndPWViewData;
    .locals 0

    .line 309
    invoke-direct {p0, p1, p2}, Lcom/kakaogame/secondpw/SecondPWViewManager;->sendAuthCodeSMS(Landroid/app/Activity;Ljava/lang/String;)Lcom/kakaogame/secondpw/viewdata/Base2ndPWViewData;

    move-result-object p0

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static final synthetic access$verifyAuthCode(Lcom/kakaogame/secondpw/SecondPWViewManager;Landroid/app/Activity;Ljava/lang/String;Lcom/kakaogame/secondpw/ActionType;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 309
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/kakaogame/secondpw/SecondPWViewManager;->verifyAuthCode(Landroid/app/Activity;Ljava/lang/String;Lcom/kakaogame/secondpw/ActionType;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static final synthetic access$verifyExistAuthCodeForRemove(Lcom/kakaogame/secondpw/SecondPWViewManager;Landroid/app/Activity;Ljava/lang/String;)Lcom/kakaogame/secondpw/viewdata/Base2ndPWViewData;
    .locals 0

    .line 309
    invoke-direct {p0, p1, p2}, Lcom/kakaogame/secondpw/SecondPWViewManager;->verifyExistAuthCodeForRemove(Landroid/app/Activity;Ljava/lang/String;)Lcom/kakaogame/secondpw/viewdata/Base2ndPWViewData;

    move-result-object p0

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static final synthetic access$verifyExistAuthCodeForReset(Lcom/kakaogame/secondpw/SecondPWViewManager;Landroid/app/Activity;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 309
    invoke-direct {p0, p1, p2, p3}, Lcom/kakaogame/secondpw/SecondPWViewManager;->verifyExistAuthCodeForReset(Landroid/app/Activity;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method private final check2ndPWOptionType(Landroid/app/Activity;)Lcom/kakaogame/secondpw/viewdata/Base2ndPWViewData;
    .locals 2

    .line 5209
    sget-object v0, Lcom/kakaogame/infodesk/InfodeskHelper;->INSTANCE:Lcom/kakaogame/infodesk/InfodeskHelper;

    invoke-virtual {v0}, Lcom/kakaogame/infodesk/InfodeskHelper;->getSecondaryPasswordOptionType()Lcom/kakaogame/infodesk/InfodeskHelper$SecondaryPWSettingType;

    move-result-object v0

    sget-object v1, Lcom/kakaogame/infodesk/InfodeskHelper$SecondaryPWSettingType;->MANDATORY:Lcom/kakaogame/infodesk/InfodeskHelper$SecondaryPWSettingType;

    if-ne v0, v1, :cond_0

    new-instance v0, Lcom/kakaogame/secondpw/viewdata/RemoveWarningViewData;

    invoke-direct {v0, p1}, Lcom/kakaogame/secondpw/viewdata/RemoveWarningViewData;-><init>(Landroid/app/Activity;)V

    check-cast v0, Lcom/kakaogame/secondpw/viewdata/Base2ndPWViewData;

    goto :goto_0

    .line 5219
    :cond_0
    new-instance v0, Lcom/kakaogame/secondpw/viewdata/RemoveGuideViewData;

    .line 5239
    sget-object v1, Lcom/kakaogame/infodesk/InfodeskHelper;->INSTANCE:Lcom/kakaogame/infodesk/InfodeskHelper;

    invoke-virtual {v1}, Lcom/kakaogame/infodesk/InfodeskHelper;->getSecondaryPasswordAuthType()Lcom/kakaogame/infodesk/InfodeskHelper$SecondaryPWAuthType;

    move-result-object v1

    .line 5219
    invoke-direct {v0, p1, v1}, Lcom/kakaogame/secondpw/viewdata/RemoveGuideViewData;-><init>(Landroid/app/Activity;Lcom/kakaogame/infodesk/InfodeskHelper$SecondaryPWAuthType;)V

    check-cast v0, Lcom/kakaogame/secondpw/viewdata/Base2ndPWViewData;

    :goto_0
    return-object v0

    .array-data 1
    .end array-data
.end method

.method private final checkSettingPassword(Landroid/app/Activity;Lcom/kakaogame/secondpw/ActionType;Ljava/lang/String;)Lcom/kakaogame/secondpw/viewdata/Base2ndPWViewData;
    .locals 12

    .line 5049
    check-cast p3, Ljava/lang/CharSequence;

    new-instance v0, Lkotlin/text/Regex;

    const v1, -0x224e09bc

    invoke-static {v1}, Lcom/liapp/y;->״دش۲ݮ(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {v0, p3, v1}, Lkotlin/text/Regex;->split(Ljava/lang/CharSequence;I)Ljava/util/List;

    move-result-object p3

    check-cast p3, Ljava/lang/Iterable;

    .line 5469
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/Collection;

    .line 5479
    invoke-interface {p3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_0
    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Ljava/lang/String;

    .line 5049
    check-cast v4, Ljava/lang/CharSequence;

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-lez v4, :cond_1

    goto :goto_1

    :cond_1
    move v3, v1

    :goto_1
    if-eqz v3, :cond_0

    .line 5479
    invoke-interface {v0, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 5489
    :cond_2
    check-cast v0, Ljava/util/List;

    .line 5069
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result p3

    if-eqz p3, :cond_3

    new-instance p2, Lcom/kakaogame/secondpw/viewdata/PopupViewData;

    sget-object v6, Lcom/kakaogame/secondpw/viewdata/PopupType;->SET_PASSWORD_INVALID:Lcom/kakaogame/secondpw/viewdata/PopupType;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v10, 0x1c

    const/4 v11, 0x0

    move-object v4, p2

    move-object v5, p1

    invoke-direct/range {v4 .. v11}, Lcom/kakaogame/secondpw/viewdata/PopupViewData;-><init>(Landroid/app/Activity;Lcom/kakaogame/secondpw/viewdata/PopupType;IIIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    check-cast p2, Lcom/kakaogame/secondpw/viewdata/Base2ndPWViewData;

    goto :goto_2

    .line 5079
    :cond_3
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p3

    const/4 v2, 0x6

    if-eq p3, v2, :cond_4

    new-instance p2, Lcom/kakaogame/secondpw/viewdata/PopupViewData;

    sget-object v6, Lcom/kakaogame/secondpw/viewdata/PopupType;->SET_PASSWORD_INVALID:Lcom/kakaogame/secondpw/viewdata/PopupType;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v10, 0x1c

    const/4 v11, 0x0

    move-object v4, p2

    move-object v5, p1

    invoke-direct/range {v4 .. v11}, Lcom/kakaogame/secondpw/viewdata/PopupViewData;-><init>(Landroid/app/Activity;Lcom/kakaogame/secondpw/viewdata/PopupType;IIIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    check-cast p2, Lcom/kakaogame/secondpw/viewdata/Base2ndPWViewData;

    goto :goto_2

    .line 5089
    :cond_4
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p3

    if-ne p3, v3, :cond_5

    new-instance p2, Lcom/kakaogame/secondpw/viewdata/PopupViewData;

    sget-object v6, Lcom/kakaogame/secondpw/viewdata/PopupType;->CONFIRM_PASSWORD_INVALID:Lcom/kakaogame/secondpw/viewdata/PopupType;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v10, 0x1c

    const/4 v11, 0x0

    move-object v4, p2

    move-object v5, p1

    invoke-direct/range {v4 .. v11}, Lcom/kakaogame/secondpw/viewdata/PopupViewData;-><init>(Landroid/app/Activity;Lcom/kakaogame/secondpw/viewdata/PopupType;IIIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    check-cast p2, Lcom/kakaogame/secondpw/viewdata/Base2ndPWViewData;

    goto :goto_2

    .line 5099
    :cond_5
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p3

    if-eq p3, v2, :cond_6

    new-instance p2, Lcom/kakaogame/secondpw/viewdata/PopupViewData;

    sget-object v6, Lcom/kakaogame/secondpw/viewdata/PopupType;->CONFIRM_PASSWORD_INVALID:Lcom/kakaogame/secondpw/viewdata/PopupType;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v10, 0x1c

    const/4 v11, 0x0

    move-object v4, p2

    move-object v5, p1

    invoke-direct/range {v4 .. v11}, Lcom/kakaogame/secondpw/viewdata/PopupViewData;-><init>(Landroid/app/Activity;Lcom/kakaogame/secondpw/viewdata/PopupType;IIIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    check-cast p2, Lcom/kakaogame/secondpw/viewdata/Base2ndPWViewData;

    goto :goto_2

    .line 5139
    :cond_6
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    .line 5149
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 5109
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/kakaogame/secondpw/SecondPWViewManager;->setPassword(Landroid/app/Activity;Lcom/kakaogame/secondpw/ActionType;Ljava/lang/String;Ljava/lang/String;)Lcom/kakaogame/secondpw/viewdata/Base2ndPWViewData;

    move-result-object p2

    :goto_2
    return-object p2

    .array-data 1
    .end array-data
.end method

.method public static synthetic getKeypadData$default(Lcom/kakaogame/secondpw/SecondPWViewManager;Landroid/content/Context;ILkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 0

    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_0

    const/4 p2, 0x1

    .line 3879
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/kakaogame/secondpw/SecondPWViewManager;->getKeypadData(Landroid/content/Context;ILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .array-data 1
    .end array-data
.end method

.method public static synthetic getUIData$default(Lcom/kakaogame/secondpw/SecondPWViewManager;Landroid/app/Activity;Lcom/kakaogame/secondpw/ActionType;Ljava/lang/String;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p5, p5, 0x4

    if-eqz p5, :cond_0

    const-string p3, ""

    .line 449
    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/kakaogame/secondpw/SecondPWViewManager;->getUIData(Landroid/app/Activity;Lcom/kakaogame/secondpw/ActionType;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method private final matchPassword(Landroid/app/Activity;Ljava/lang/String;)Lcom/kakaogame/secondpw/viewdata/Base2ndPWViewData;
    .locals 10

    .line 4329
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x6

    if-eq v0, v1, :cond_0

    .line 4339
    new-instance p2, Lcom/kakaogame/secondpw/viewdata/PopupViewData;

    sget-object v4, Lcom/kakaogame/secondpw/viewdata/PopupType;->INPUT_PASSWORD_PLEASE:Lcom/kakaogame/secondpw/viewdata/PopupType;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, 0x1c

    const/4 v9, 0x0

    move-object v2, p2

    move-object v3, p1

    invoke-direct/range {v2 .. v9}, Lcom/kakaogame/secondpw/viewdata/PopupViewData;-><init>(Landroid/app/Activity;Lcom/kakaogame/secondpw/viewdata/PopupType;IIIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    check-cast p2, Lcom/kakaogame/secondpw/viewdata/Base2ndPWViewData;

    return-object p2

    .line 4369
    :cond_0
    sget-object v0, Lcom/kakaogame/security/SecondaryPWService;->INSTANCE:Lcom/kakaogame/security/SecondaryPWService;

    sget-object v1, Lcom/kakaogame/secondpw/SecondPWViewManager;->publicKey:Ljava/lang/String;

    invoke-virtual {v0, p2, v1}, Lcom/kakaogame/security/SecondaryPWService;->matchPassword(Ljava/lang/String;Ljava/lang/String;)Lcom/kakaogame/KGResult;

    move-result-object p2

    .line 4389
    invoke-virtual {p2}, Lcom/kakaogame/KGResult;->getCode()I

    move-result v0

    const/16 v1, 0xc8

    if-eq v0, v1, :cond_6

    const/16 v1, 0x1d5

    if-eq v0, v1, :cond_5

    const/16 v1, 0x233

    if-eq v0, v1, :cond_2

    const/16 p2, 0x235

    if-eq v0, p2, :cond_1

    .line 4749
    new-instance p2, Lcom/kakaogame/secondpw/viewdata/PopupViewData;

    sget-object v3, Lcom/kakaogame/secondpw/viewdata/PopupType;->DEFAULT_ERROR:Lcom/kakaogame/secondpw/viewdata/PopupType;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x1c

    const/4 v8, 0x0

    move-object v1, p2

    move-object v2, p1

    invoke-direct/range {v1 .. v8}, Lcom/kakaogame/secondpw/viewdata/PopupViewData;-><init>(Landroid/app/Activity;Lcom/kakaogame/secondpw/viewdata/PopupType;IIIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    check-cast p2, Lcom/kakaogame/secondpw/viewdata/Base2ndPWViewData;

    goto/16 :goto_2

    .line 4459
    :cond_1
    new-instance p2, Lcom/kakaogame/secondpw/viewdata/RestrictPopupViewData;

    .line 4479
    sget-object v0, Lcom/kakaogame/infodesk/InfodeskHelper;->INSTANCE:Lcom/kakaogame/infodesk/InfodeskHelper;

    invoke-virtual {v0}, Lcom/kakaogame/infodesk/InfodeskHelper;->getPinFailLimitCount()I

    move-result v0

    .line 4489
    sget-object v1, Lcom/kakaogame/infodesk/InfodeskHelper;->INSTANCE:Lcom/kakaogame/infodesk/InfodeskHelper;

    invoke-virtual {v1}, Lcom/kakaogame/infodesk/InfodeskHelper;->getPinFailBlockTime()I

    move-result v1

    .line 4499
    sget-object v2, Lcom/kakaogame/infodesk/InfodeskHelper;->INSTANCE:Lcom/kakaogame/infodesk/InfodeskHelper;

    invoke-virtual {v2}, Lcom/kakaogame/infodesk/InfodeskHelper;->getPinFailBlockTime()I

    move-result v2

    mul-int/lit8 v2, v2, 0x3c

    .line 4459
    invoke-direct {p2, p1, v0, v1, v2}, Lcom/kakaogame/secondpw/viewdata/RestrictPopupViewData;-><init>(Landroid/app/Activity;III)V

    check-cast p2, Lcom/kakaogame/secondpw/viewdata/Base2ndPWViewData;

    goto/16 :goto_2

    .line 4579
    :cond_2
    invoke-virtual {p2}, Lcom/kakaogame/KGResult;->getContent()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0

    :cond_3
    const/4 v0, 0x1

    .line 4589
    :goto_0
    sget-object v1, Lcom/kakaogame/infodesk/InfodeskHelper;->INSTANCE:Lcom/kakaogame/infodesk/InfodeskHelper;

    invoke-virtual {v1}, Lcom/kakaogame/infodesk/InfodeskHelper;->getPinFailLimitCount()I

    move-result v1

    if-ne v0, v1, :cond_4

    .line 4599
    new-instance p2, Lcom/kakaogame/secondpw/viewdata/RestrictPopupViewData;

    .line 4619
    sget-object v0, Lcom/kakaogame/infodesk/InfodeskHelper;->INSTANCE:Lcom/kakaogame/infodesk/InfodeskHelper;

    invoke-virtual {v0}, Lcom/kakaogame/infodesk/InfodeskHelper;->getPinFailLimitCount()I

    move-result v0

    .line 4629
    sget-object v1, Lcom/kakaogame/infodesk/InfodeskHelper;->INSTANCE:Lcom/kakaogame/infodesk/InfodeskHelper;

    invoke-virtual {v1}, Lcom/kakaogame/infodesk/InfodeskHelper;->getPinFailBlockTime()I

    move-result v1

    .line 4639
    sget-object v2, Lcom/kakaogame/infodesk/InfodeskHelper;->INSTANCE:Lcom/kakaogame/infodesk/InfodeskHelper;

    invoke-virtual {v2}, Lcom/kakaogame/infodesk/InfodeskHelper;->getPinFailBlockTime()I

    move-result v2

    mul-int/lit8 v2, v2, 0x3c

    .line 4599
    invoke-direct {p2, p1, v0, v1, v2}, Lcom/kakaogame/secondpw/viewdata/RestrictPopupViewData;-><init>(Landroid/app/Activity;III)V

    check-cast p2, Lcom/kakaogame/secondpw/viewdata/Base2ndPWViewData;

    goto :goto_2

    .line 4669
    :cond_4
    new-instance v8, Lcom/kakaogame/secondpw/viewdata/PopupViewData;

    .line 4689
    sget-object v2, Lcom/kakaogame/secondpw/viewdata/PopupType;->INPUT_PASSWORD_NOT_MATCHED:Lcom/kakaogame/secondpw/viewdata/PopupType;

    const/4 v3, 0x0

    .line 4699
    invoke-virtual {p2}, Lcom/kakaogame/KGResult;->getContent()Ljava/lang/Object;

    move-result-object p2

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result v4

    .line 4709
    sget-object p2, Lcom/kakaogame/infodesk/InfodeskHelper;->INSTANCE:Lcom/kakaogame/infodesk/InfodeskHelper;

    invoke-virtual {p2}, Lcom/kakaogame/infodesk/InfodeskHelper;->getPinFailLimitCount()I

    move-result v5

    const/4 v6, 0x4

    const/4 v7, 0x0

    move-object v0, v8

    move-object v1, p1

    .line 4669
    invoke-direct/range {v0 .. v7}, Lcom/kakaogame/secondpw/viewdata/PopupViewData;-><init>(Landroid/app/Activity;Lcom/kakaogame/secondpw/viewdata/PopupType;IIIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object p2, v8

    check-cast p2, Lcom/kakaogame/secondpw/viewdata/Base2ndPWViewData;

    goto :goto_2

    .line 4519
    :cond_5
    new-instance p2, Lcom/kakaogame/secondpw/viewdata/PopupViewData;

    .line 4539
    sget-object v2, Lcom/kakaogame/secondpw/viewdata/PopupType;->KEYPAD_TIME_LIMIT:Lcom/kakaogame/secondpw/viewdata/PopupType;

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0x18

    const/4 v7, 0x0

    move-object v0, p2

    move-object v1, p1

    .line 4519
    invoke-direct/range {v0 .. v7}, Lcom/kakaogame/secondpw/viewdata/PopupViewData;-><init>(Landroid/app/Activity;Lcom/kakaogame/secondpw/viewdata/PopupType;IIIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    check-cast p2, Lcom/kakaogame/secondpw/viewdata/Base2ndPWViewData;

    goto :goto_2

    .line 4409
    :cond_6
    sget-object p2, Lcom/kakaogame/security/ProtectionManager;->INSTANCE:Lcom/kakaogame/security/ProtectionManager;

    invoke-virtual {p2}, Lcom/kakaogame/security/ProtectionManager;->checkDeviceSecurityCompleted()Z

    move-result p2

    if-eqz p2, :cond_7

    .line 4419
    new-instance p2, Lcom/kakaogame/secondpw/viewdata/ResultData;

    check-cast p1, Landroid/content/Context;

    invoke-static {p1}, Lcom/kakaogame/util/DeviceUtil;->getDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, v1, p1}, Lcom/kakaogame/secondpw/viewdata/ResultData;-><init>(ILjava/lang/String;)V

    goto :goto_1

    .line 4439
    :cond_7
    new-instance p2, Lcom/kakaogame/secondpw/viewdata/ResultData;

    const-string p1, ""

    invoke-direct {p2, v1, p1}, Lcom/kakaogame/secondpw/viewdata/ResultData;-><init>(ILjava/lang/String;)V

    :goto_1
    check-cast p2, Lcom/kakaogame/secondpw/viewdata/Base2ndPWViewData;

    :goto_2
    return-object p2

    .array-data 1
    .end array-data
.end method

.method private final removeFile()V
    .locals 3

    .line 379
    sget-object v0, Lcom/kakaogame/secondpw/SecondPWViewManager;->keypads:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    .line 5329
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/kakaogame/secondpw/Keypad;

    .line 389
    new-instance v2, Ljava/io/File;

    invoke-virtual {v1}, Lcom/kakaogame/secondpw/Keypad;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 399
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    goto :goto_0

    .line 419
    :cond_0
    sget-object v0, Lcom/kakaogame/secondpw/SecondPWViewManager;->keypads:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method private final requestRemove(Landroid/app/Activity;)Lcom/kakaogame/secondpw/viewdata/Base2ndPWViewData;
    .locals 11

    .line 3659
    sget-object v0, Lcom/kakaogame/security/SecondaryPWService;->INSTANCE:Lcom/kakaogame/security/SecondaryPWService;

    invoke-virtual {v0}, Lcom/kakaogame/security/SecondaryPWService;->sendCodeWithExistType()Lcom/kakaogame/KGResult;

    move-result-object v0

    .line 3689
    invoke-virtual {v0}, Lcom/kakaogame/KGResult;->getCode()I

    move-result v1

    const/16 v2, 0x1d3

    if-ne v1, v2, :cond_0

    new-instance v0, Lcom/kakaogame/secondpw/viewdata/PopupViewData;

    sget-object v5, Lcom/kakaogame/secondpw/viewdata/PopupType;->AUTH_CODE_TIME_ERROR:Lcom/kakaogame/secondpw/viewdata/PopupType;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0x1c

    const/4 v10, 0x0

    move-object v3, v0

    move-object v4, p1

    invoke-direct/range {v3 .. v10}, Lcom/kakaogame/secondpw/viewdata/PopupViewData;-><init>(Landroid/app/Activity;Lcom/kakaogame/secondpw/viewdata/PopupType;IIIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    check-cast v0, Lcom/kakaogame/secondpw/viewdata/Base2ndPWViewData;

    goto/16 :goto_0

    .line 3699
    :cond_0
    invoke-virtual {v0}, Lcom/kakaogame/KGResult;->getCode()I

    move-result v1

    const/16 v2, 0x1ce

    if-ne v1, v2, :cond_1

    new-instance v0, Lcom/kakaogame/secondpw/viewdata/PopupViewData;

    sget-object v5, Lcom/kakaogame/secondpw/viewdata/PopupType;->EXIT_PROCESS_ERROR:Lcom/kakaogame/secondpw/viewdata/PopupType;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0x1c

    const/4 v10, 0x0

    move-object v3, v0

    move-object v4, p1

    invoke-direct/range {v3 .. v10}, Lcom/kakaogame/secondpw/viewdata/PopupViewData;-><init>(Landroid/app/Activity;Lcom/kakaogame/secondpw/viewdata/PopupType;IIIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    check-cast v0, Lcom/kakaogame/secondpw/viewdata/Base2ndPWViewData;

    goto/16 :goto_0

    .line 3709
    :cond_1
    invoke-virtual {v0}, Lcom/kakaogame/KGResult;->isNotSuccess()Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v0, Lcom/kakaogame/secondpw/viewdata/PopupViewData;

    sget-object v4, Lcom/kakaogame/secondpw/viewdata/PopupType;->DEFAULT_ERROR:Lcom/kakaogame/secondpw/viewdata/PopupType;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, 0x1c

    const/4 v9, 0x0

    move-object v2, v0

    move-object v3, p1

    invoke-direct/range {v2 .. v9}, Lcom/kakaogame/secondpw/viewdata/PopupViewData;-><init>(Landroid/app/Activity;Lcom/kakaogame/secondpw/viewdata/PopupType;IIIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    check-cast v0, Lcom/kakaogame/secondpw/viewdata/Base2ndPWViewData;

    goto :goto_0

    .line 3719
    :cond_2
    invoke-virtual {v0}, Lcom/kakaogame/KGResult;->getContent()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_3

    new-instance v0, Lcom/kakaogame/secondpw/viewdata/PopupViewData;

    sget-object v4, Lcom/kakaogame/secondpw/viewdata/PopupType;->DEFAULT_ERROR:Lcom/kakaogame/secondpw/viewdata/PopupType;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, 0x1c

    const/4 v9, 0x0

    move-object v2, v0

    move-object v3, p1

    invoke-direct/range {v2 .. v9}, Lcom/kakaogame/secondpw/viewdata/PopupViewData;-><init>(Landroid/app/Activity;Lcom/kakaogame/secondpw/viewdata/PopupType;IIIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    check-cast v0, Lcom/kakaogame/secondpw/viewdata/Base2ndPWViewData;

    goto :goto_0

    .line 3729
    :cond_3
    invoke-virtual {v0}, Lcom/kakaogame/KGResult;->getContent()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v1, Lcom/kakaogame/security/SendAuthCodeResult;

    invoke-virtual {v1}, Lcom/kakaogame/security/SendAuthCodeResult;->getAuthType()Lcom/kakaogame/security/SendAuthType;

    move-result-object v1

    sget-object v2, Lcom/kakaogame/security/SendAuthType;->TALK:Lcom/kakaogame/security/SendAuthType;

    if-ne v1, v2, :cond_4

    new-instance v0, Lcom/kakaogame/secondpw/viewdata/ResetInputTalkCodeViewData;

    .line 3749
    sget-object v1, Lcom/kakaogame/infodesk/InfodeskHelper;->INSTANCE:Lcom/kakaogame/infodesk/InfodeskHelper;

    invoke-virtual {v1}, Lcom/kakaogame/infodesk/InfodeskHelper;->getAuthCodeValidTime()I

    move-result v1

    const/4 v2, 0x1

    .line 3729
    invoke-direct {v0, p1, v1, v2}, Lcom/kakaogame/secondpw/viewdata/ResetInputTalkCodeViewData;-><init>(Landroid/app/Activity;IZ)V

    check-cast v0, Lcom/kakaogame/secondpw/viewdata/Base2ndPWViewData;

    goto :goto_0

    .line 3779
    :cond_4
    new-instance v7, Lcom/kakaogame/secondpw/viewdata/ResetInputSMSCodeViewData;

    .line 3799
    invoke-virtual {v0}, Lcom/kakaogame/KGResult;->getContent()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v0, Lcom/kakaogame/security/SendAuthCodeResult;

    invoke-virtual {v0}, Lcom/kakaogame/security/SendAuthCodeResult;->getAuthKey()Ljava/lang/String;

    move-result-object v3

    .line 3809
    sget-object v0, Lcom/kakaogame/infodesk/InfodeskHelper;->INSTANCE:Lcom/kakaogame/infodesk/InfodeskHelper;

    invoke-virtual {v0}, Lcom/kakaogame/infodesk/InfodeskHelper;->getAuthCodeValidTime()I

    move-result v4

    const/4 v5, 0x1

    .line 3829
    sget-object v0, Lcom/kakaogame/infodesk/InfodeskHelper;->INSTANCE:Lcom/kakaogame/infodesk/InfodeskHelper;

    invoke-virtual {v0}, Lcom/kakaogame/infodesk/InfodeskHelper;->getSecondaryPasswordAuthType()Lcom/kakaogame/infodesk/InfodeskHelper$SecondaryPWAuthType;

    move-result-object v6

    move-object v1, v7

    move-object v2, p1

    .line 3779
    invoke-direct/range {v1 .. v6}, Lcom/kakaogame/secondpw/viewdata/ResetInputSMSCodeViewData;-><init>(Landroid/app/Activity;Ljava/lang/String;IZLcom/kakaogame/infodesk/InfodeskHelper$SecondaryPWAuthType;)V

    move-object v0, v7

    check-cast v0, Lcom/kakaogame/secondpw/viewdata/Base2ndPWViewData;

    :goto_0
    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method private final requestReset(Landroid/app/Activity;)Lcom/kakaogame/secondpw/viewdata/Base2ndPWViewData;
    .locals 11

    .line 3449
    sget-object v0, Lcom/kakaogame/security/SecondaryPWService;->INSTANCE:Lcom/kakaogame/security/SecondaryPWService;

    invoke-virtual {v0}, Lcom/kakaogame/security/SecondaryPWService;->sendCodeWithExistType()Lcom/kakaogame/KGResult;

    move-result-object v0

    .line 3479
    invoke-virtual {v0}, Lcom/kakaogame/KGResult;->getCode()I

    move-result v1

    const/16 v2, 0x1d3

    if-ne v1, v2, :cond_0

    new-instance v0, Lcom/kakaogame/secondpw/viewdata/PopupViewData;

    sget-object v5, Lcom/kakaogame/secondpw/viewdata/PopupType;->AUTH_CODE_TIME_ERROR:Lcom/kakaogame/secondpw/viewdata/PopupType;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0x1c

    const/4 v10, 0x0

    move-object v3, v0

    move-object v4, p1

    invoke-direct/range {v3 .. v10}, Lcom/kakaogame/secondpw/viewdata/PopupViewData;-><init>(Landroid/app/Activity;Lcom/kakaogame/secondpw/viewdata/PopupType;IIIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    check-cast v0, Lcom/kakaogame/secondpw/viewdata/Base2ndPWViewData;

    goto/16 :goto_0

    .line 3489
    :cond_0
    invoke-virtual {v0}, Lcom/kakaogame/KGResult;->getCode()I

    move-result v1

    const/16 v2, 0x1ce

    if-ne v1, v2, :cond_1

    new-instance v0, Lcom/kakaogame/secondpw/viewdata/PopupViewData;

    sget-object v5, Lcom/kakaogame/secondpw/viewdata/PopupType;->EXIT_PROCESS_ERROR:Lcom/kakaogame/secondpw/viewdata/PopupType;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0x1c

    const/4 v10, 0x0

    move-object v3, v0

    move-object v4, p1

    invoke-direct/range {v3 .. v10}, Lcom/kakaogame/secondpw/viewdata/PopupViewData;-><init>(Landroid/app/Activity;Lcom/kakaogame/secondpw/viewdata/PopupType;IIIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    check-cast v0, Lcom/kakaogame/secondpw/viewdata/Base2ndPWViewData;

    goto/16 :goto_0

    .line 3499
    :cond_1
    invoke-virtual {v0}, Lcom/kakaogame/KGResult;->isNotSuccess()Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v0, Lcom/kakaogame/secondpw/viewdata/PopupViewData;

    sget-object v4, Lcom/kakaogame/secondpw/viewdata/PopupType;->DEFAULT_ERROR:Lcom/kakaogame/secondpw/viewdata/PopupType;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, 0x1c

    const/4 v9, 0x0

    move-object v2, v0

    move-object v3, p1

    invoke-direct/range {v2 .. v9}, Lcom/kakaogame/secondpw/viewdata/PopupViewData;-><init>(Landroid/app/Activity;Lcom/kakaogame/secondpw/viewdata/PopupType;IIIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    check-cast v0, Lcom/kakaogame/secondpw/viewdata/Base2ndPWViewData;

    goto :goto_0

    .line 3509
    :cond_2
    invoke-virtual {v0}, Lcom/kakaogame/KGResult;->getContent()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_3

    new-instance v0, Lcom/kakaogame/secondpw/viewdata/PopupViewData;

    sget-object v4, Lcom/kakaogame/secondpw/viewdata/PopupType;->DEFAULT_ERROR:Lcom/kakaogame/secondpw/viewdata/PopupType;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, 0x1c

    const/4 v9, 0x0

    move-object v2, v0

    move-object v3, p1

    invoke-direct/range {v2 .. v9}, Lcom/kakaogame/secondpw/viewdata/PopupViewData;-><init>(Landroid/app/Activity;Lcom/kakaogame/secondpw/viewdata/PopupType;IIIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    check-cast v0, Lcom/kakaogame/secondpw/viewdata/Base2ndPWViewData;

    goto :goto_0

    .line 3519
    :cond_3
    invoke-virtual {v0}, Lcom/kakaogame/KGResult;->getContent()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v1, Lcom/kakaogame/security/SendAuthCodeResult;

    invoke-virtual {v1}, Lcom/kakaogame/security/SendAuthCodeResult;->getAuthType()Lcom/kakaogame/security/SendAuthType;

    move-result-object v1

    sget-object v2, Lcom/kakaogame/security/SendAuthType;->TALK:Lcom/kakaogame/security/SendAuthType;

    if-ne v1, v2, :cond_4

    new-instance v0, Lcom/kakaogame/secondpw/viewdata/ResetInputTalkCodeViewData;

    .line 3539
    sget-object v1, Lcom/kakaogame/infodesk/InfodeskHelper;->INSTANCE:Lcom/kakaogame/infodesk/InfodeskHelper;

    invoke-virtual {v1}, Lcom/kakaogame/infodesk/InfodeskHelper;->getAuthCodeValidTime()I

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x4

    const/4 v8, 0x0

    move-object v3, v0

    move-object v4, p1

    .line 3519
    invoke-direct/range {v3 .. v8}, Lcom/kakaogame/secondpw/viewdata/ResetInputTalkCodeViewData;-><init>(Landroid/app/Activity;IZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    check-cast v0, Lcom/kakaogame/secondpw/viewdata/Base2ndPWViewData;

    goto :goto_0

    .line 3559
    :cond_4
    new-instance v9, Lcom/kakaogame/secondpw/viewdata/ResetInputSMSCodeViewData;

    .line 3579
    invoke-virtual {v0}, Lcom/kakaogame/KGResult;->getContent()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v0, Lcom/kakaogame/security/SendAuthCodeResult;

    invoke-virtual {v0}, Lcom/kakaogame/security/SendAuthCodeResult;->getAuthKey()Ljava/lang/String;

    move-result-object v3

    .line 3589
    sget-object v0, Lcom/kakaogame/infodesk/InfodeskHelper;->INSTANCE:Lcom/kakaogame/infodesk/InfodeskHelper;

    invoke-virtual {v0}, Lcom/kakaogame/infodesk/InfodeskHelper;->getAuthCodeValidTime()I

    move-result v4

    const/4 v5, 0x0

    .line 3599
    sget-object v0, Lcom/kakaogame/infodesk/InfodeskHelper;->INSTANCE:Lcom/kakaogame/infodesk/InfodeskHelper;

    invoke-virtual {v0}, Lcom/kakaogame/infodesk/InfodeskHelper;->getSecondaryPasswordAuthType()Lcom/kakaogame/infodesk/InfodeskHelper$SecondaryPWAuthType;

    move-result-object v6

    const/16 v7, 0x8

    const/4 v8, 0x0

    move-object v1, v9

    move-object v2, p1

    .line 3559
    invoke-direct/range {v1 .. v8}, Lcom/kakaogame/secondpw/viewdata/ResetInputSMSCodeViewData;-><init>(Landroid/app/Activity;Ljava/lang/String;IZLcom/kakaogame/infodesk/InfodeskHelper$SecondaryPWAuthType;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object v0, v9

    check-cast v0, Lcom/kakaogame/secondpw/viewdata/Base2ndPWViewData;

    :goto_0
    return-object v0

    .array-data 1
    .end array-data
.end method

.method private final sendAuthCode(Landroid/app/Activity;)Lcom/kakaogame/secondpw/viewdata/Base2ndPWViewData;
    .locals 2

    .line 1739
    sget-object v0, Lcom/kakaogame/infodesk/InfodeskHelper;->INSTANCE:Lcom/kakaogame/infodesk/InfodeskHelper;

    invoke-virtual {v0}, Lcom/kakaogame/infodesk/InfodeskHelper;->getSecondaryPasswordAuthType()Lcom/kakaogame/infodesk/InfodeskHelper$SecondaryPWAuthType;

    move-result-object v0

    sget-object v1, Lcom/kakaogame/infodesk/InfodeskHelper$SecondaryPWAuthType;->EMAIL:Lcom/kakaogame/infodesk/InfodeskHelper$SecondaryPWAuthType;

    if-ne v0, v1, :cond_0

    new-instance v0, Lcom/kakaogame/secondpw/viewdata/SetInputEmailViewData;

    invoke-direct {v0, p1}, Lcom/kakaogame/secondpw/viewdata/SetInputEmailViewData;-><init>(Landroid/app/Activity;)V

    check-cast v0, Lcom/kakaogame/secondpw/viewdata/Base2ndPWViewData;

    goto :goto_1

    .line 1749
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
    sget-object v1, Lcom/kakaogame/KGIdpProfile$KGIdpCode;->Kakao:Lcom/kakaogame/KGIdpProfile$KGIdpCode;

    if-ne v0, v1, :cond_2

    invoke-direct {p0, p1}, Lcom/kakaogame/secondpw/SecondPWViewManager;->sendAuthCodeTalk(Landroid/app/Activity;)Lcom/kakaogame/secondpw/viewdata/Base2ndPWViewData;

    move-result-object v0

    goto :goto_1

    .line 1759
    :cond_2
    new-instance v0, Lcom/kakaogame/secondpw/viewdata/SetInputPhoneNumberViewData;

    invoke-direct {v0, p1}, Lcom/kakaogame/secondpw/viewdata/SetInputPhoneNumberViewData;-><init>(Landroid/app/Activity;)V

    check-cast v0, Lcom/kakaogame/secondpw/viewdata/Base2ndPWViewData;

    :goto_1
    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method private final sendAuthCodeEmail(Landroid/app/Activity;Ljava/lang/String;)Lcom/kakaogame/secondpw/viewdata/Base2ndPWViewData;
    .locals 10

    const v0, 0x6d00dcf8

    invoke-static {v0}, Lcom/liapp/y;->ٱڳܴڭܩ(I)Ljava/lang/String;

    move-result-object v0

    .line 2329
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 2339
    move-object v1, p2

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 2349
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance p2, Lcom/kakaogame/secondpw/viewdata/PopupViewData;

    sget-object v3, Lcom/kakaogame/secondpw/viewdata/PopupType;->INVALID_EMAIL_ERROR:Lcom/kakaogame/secondpw/viewdata/PopupType;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x1c

    const/4 v8, 0x0

    move-object v1, p2

    move-object v2, p1

    invoke-direct/range {v1 .. v8}, Lcom/kakaogame/secondpw/viewdata/PopupViewData;-><init>(Landroid/app/Activity;Lcom/kakaogame/secondpw/viewdata/PopupType;IIIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    check-cast p2, Lcom/kakaogame/secondpw/viewdata/Base2ndPWViewData;

    goto/16 :goto_0

    .line 2369
    :cond_0
    sget-object v0, Lcom/kakaogame/security/SecondaryPWService;->INSTANCE:Lcom/kakaogame/security/SecondaryPWService;

    invoke-virtual {v0, p2}, Lcom/kakaogame/security/SecondaryPWService;->sendCodeWithEmail(Ljava/lang/String;)Lcom/kakaogame/KGResult;

    move-result-object v0

    .line 2389
    invoke-virtual {v0}, Lcom/kakaogame/KGResult;->getCode()I

    move-result v1

    const/16 v2, 0xc8

    if-eq v1, v2, :cond_4

    const/16 p2, 0x1ce

    if-eq v1, p2, :cond_3

    const/16 p2, 0x1d3

    if-eq v1, p2, :cond_2

    const/16 p2, 0x1d8

    if-eq v1, p2, :cond_1

    .line 2539
    new-instance p2, Lcom/kakaogame/secondpw/viewdata/PopupViewData;

    sget-object v4, Lcom/kakaogame/secondpw/viewdata/PopupType;->DEFAULT_ERROR:Lcom/kakaogame/secondpw/viewdata/PopupType;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, 0x1c

    const/4 v9, 0x0

    move-object v2, p2

    move-object v3, p1

    invoke-direct/range {v2 .. v9}, Lcom/kakaogame/secondpw/viewdata/PopupViewData;-><init>(Landroid/app/Activity;Lcom/kakaogame/secondpw/viewdata/PopupType;IIIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    check-cast p2, Lcom/kakaogame/secondpw/viewdata/Base2ndPWViewData;

    goto :goto_0

    .line 2509
    :cond_1
    new-instance p2, Lcom/kakaogame/secondpw/viewdata/PopupViewData;

    sget-object v2, Lcom/kakaogame/secondpw/viewdata/PopupType;->INVALID_EMAIL_ERROR:Lcom/kakaogame/secondpw/viewdata/PopupType;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0x1c

    const/4 v7, 0x0

    move-object v0, p2

    move-object v1, p1

    invoke-direct/range {v0 .. v7}, Lcom/kakaogame/secondpw/viewdata/PopupViewData;-><init>(Landroid/app/Activity;Lcom/kakaogame/secondpw/viewdata/PopupType;IIIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    check-cast p2, Lcom/kakaogame/secondpw/viewdata/Base2ndPWViewData;

    goto :goto_0

    .line 2519
    :cond_2
    new-instance p2, Lcom/kakaogame/secondpw/viewdata/PopupViewData;

    sget-object v2, Lcom/kakaogame/secondpw/viewdata/PopupType;->AUTH_CODE_TIME_ERROR:Lcom/kakaogame/secondpw/viewdata/PopupType;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0x1c

    const/4 v7, 0x0

    move-object v0, p2

    move-object v1, p1

    invoke-direct/range {v0 .. v7}, Lcom/kakaogame/secondpw/viewdata/PopupViewData;-><init>(Landroid/app/Activity;Lcom/kakaogame/secondpw/viewdata/PopupType;IIIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    check-cast p2, Lcom/kakaogame/secondpw/viewdata/Base2ndPWViewData;

    goto :goto_0

    .line 2529
    :cond_3
    new-instance p2, Lcom/kakaogame/secondpw/viewdata/PopupViewData;

    sget-object v2, Lcom/kakaogame/secondpw/viewdata/PopupType;->EXIT_PROCESS_ERROR:Lcom/kakaogame/secondpw/viewdata/PopupType;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0x1c

    const/4 v7, 0x0

    move-object v0, p2

    move-object v1, p1

    invoke-direct/range {v0 .. v7}, Lcom/kakaogame/secondpw/viewdata/PopupViewData;-><init>(Landroid/app/Activity;Lcom/kakaogame/secondpw/viewdata/PopupType;IIIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    check-cast p2, Lcom/kakaogame/secondpw/viewdata/Base2ndPWViewData;

    goto :goto_0

    .line 2409
    :cond_4
    invoke-virtual {v0}, Lcom/kakaogame/KGResult;->getContent()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v0, Lcom/kakaogame/security/SendAuthCodeResult;

    .line 2419
    invoke-virtual {v0}, Lcom/kakaogame/security/SendAuthCodeResult;->getAuthKey()Ljava/lang/String;

    move-result-object v0

    .line 2439
    new-instance v1, Lcom/kakaogame/secondpw/viewdata/SetInputEmailCodeViewData;

    .line 2479
    sget-object v2, Lcom/kakaogame/infodesk/InfodeskHelper;->INSTANCE:Lcom/kakaogame/infodesk/InfodeskHelper;

    invoke-virtual {v2}, Lcom/kakaogame/infodesk/InfodeskHelper;->getAuthCodeValidTime()I

    move-result v2

    .line 2439
    invoke-direct {v1, p1, p2, v0, v2}, Lcom/kakaogame/secondpw/viewdata/SetInputEmailCodeViewData;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;I)V

    move-object p2, v1

    check-cast p2, Lcom/kakaogame/secondpw/viewdata/Base2ndPWViewData;

    :goto_0
    return-object p2

    nop

    .array-data 1
    .end array-data
.end method

.method private final sendAuthCodeSMS(Landroid/app/Activity;Ljava/lang/String;)Lcom/kakaogame/secondpw/viewdata/Base2ndPWViewData;
    .locals 10

    .line 2079
    move-object v0, p2

    check-cast v0, Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    new-instance p2, Lcom/kakaogame/secondpw/viewdata/PopupViewData;

    sget-object v3, Lcom/kakaogame/secondpw/viewdata/PopupType;->INVALID_PHONE_NUMBER_ERROR:Lcom/kakaogame/secondpw/viewdata/PopupType;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x1c

    const/4 v8, 0x0

    move-object v1, p2

    move-object v2, p1

    invoke-direct/range {v1 .. v8}, Lcom/kakaogame/secondpw/viewdata/PopupViewData;-><init>(Landroid/app/Activity;Lcom/kakaogame/secondpw/viewdata/PopupType;IIIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    check-cast p2, Lcom/kakaogame/secondpw/viewdata/Base2ndPWViewData;

    goto/16 :goto_1

    .line 2099
    :cond_1
    sget-object v0, Lcom/kakaogame/security/SecondaryPWService;->INSTANCE:Lcom/kakaogame/security/SecondaryPWService;

    invoke-virtual {v0, p2}, Lcom/kakaogame/security/SecondaryPWService;->sendCodeWithSMS(Ljava/lang/String;)Lcom/kakaogame/KGResult;

    move-result-object v0

    .line 2119
    invoke-virtual {v0}, Lcom/kakaogame/KGResult;->getCode()I

    move-result v1

    const/16 v2, 0xc8

    if-eq v1, v2, :cond_5

    const/16 p2, 0x1ce

    if-eq v1, p2, :cond_4

    const/16 p2, 0x1d3

    if-eq v1, p2, :cond_3

    const/16 p2, 0x1de

    if-eq v1, p2, :cond_2

    .line 2269
    new-instance p2, Lcom/kakaogame/secondpw/viewdata/PopupViewData;

    sget-object v4, Lcom/kakaogame/secondpw/viewdata/PopupType;->DEFAULT_ERROR:Lcom/kakaogame/secondpw/viewdata/PopupType;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, 0x1c

    const/4 v9, 0x0

    move-object v2, p2

    move-object v3, p1

    invoke-direct/range {v2 .. v9}, Lcom/kakaogame/secondpw/viewdata/PopupViewData;-><init>(Landroid/app/Activity;Lcom/kakaogame/secondpw/viewdata/PopupType;IIIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    check-cast p2, Lcom/kakaogame/secondpw/viewdata/Base2ndPWViewData;

    goto :goto_1

    .line 2239
    :cond_2
    new-instance p2, Lcom/kakaogame/secondpw/viewdata/PopupViewData;

    sget-object v2, Lcom/kakaogame/secondpw/viewdata/PopupType;->INVALID_PHONE_NUMBER_ERROR:Lcom/kakaogame/secondpw/viewdata/PopupType;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0x1c

    const/4 v7, 0x0

    move-object v0, p2

    move-object v1, p1

    invoke-direct/range {v0 .. v7}, Lcom/kakaogame/secondpw/viewdata/PopupViewData;-><init>(Landroid/app/Activity;Lcom/kakaogame/secondpw/viewdata/PopupType;IIIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    check-cast p2, Lcom/kakaogame/secondpw/viewdata/Base2ndPWViewData;

    goto :goto_1

    .line 2249
    :cond_3
    new-instance p2, Lcom/kakaogame/secondpw/viewdata/PopupViewData;

    sget-object v2, Lcom/kakaogame/secondpw/viewdata/PopupType;->AUTH_CODE_TIME_ERROR:Lcom/kakaogame/secondpw/viewdata/PopupType;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0x1c

    const/4 v7, 0x0

    move-object v0, p2

    move-object v1, p1

    invoke-direct/range {v0 .. v7}, Lcom/kakaogame/secondpw/viewdata/PopupViewData;-><init>(Landroid/app/Activity;Lcom/kakaogame/secondpw/viewdata/PopupType;IIIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    check-cast p2, Lcom/kakaogame/secondpw/viewdata/Base2ndPWViewData;

    goto :goto_1

    .line 2259
    :cond_4
    new-instance p2, Lcom/kakaogame/secondpw/viewdata/PopupViewData;

    sget-object v2, Lcom/kakaogame/secondpw/viewdata/PopupType;->EXIT_PROCESS_ERROR:Lcom/kakaogame/secondpw/viewdata/PopupType;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0x1c

    const/4 v7, 0x0

    move-object v0, p2

    move-object v1, p1

    invoke-direct/range {v0 .. v7}, Lcom/kakaogame/secondpw/viewdata/PopupViewData;-><init>(Landroid/app/Activity;Lcom/kakaogame/secondpw/viewdata/PopupType;IIIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    check-cast p2, Lcom/kakaogame/secondpw/viewdata/Base2ndPWViewData;

    goto :goto_1

    .line 2139
    :cond_5
    invoke-virtual {v0}, Lcom/kakaogame/KGResult;->getContent()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v0, Lcom/kakaogame/security/SendAuthCodeResult;

    .line 2149
    invoke-virtual {v0}, Lcom/kakaogame/security/SendAuthCodeResult;->getAuthKey()Ljava/lang/String;

    move-result-object v4

    .line 2169
    new-instance v0, Lcom/kakaogame/secondpw/viewdata/SetInputSMSCodeViewData;

    .line 2209
    sget-object v1, Lcom/kakaogame/infodesk/InfodeskHelper;->INSTANCE:Lcom/kakaogame/infodesk/InfodeskHelper;

    invoke-virtual {v1}, Lcom/kakaogame/infodesk/InfodeskHelper;->getAuthCodeValidTime()I

    move-result v5

    const/4 v6, 0x0

    const/16 v7, 0x10

    const/4 v8, 0x0

    move-object v1, v0

    move-object v2, p1

    move-object v3, p2

    .line 2169
    invoke-direct/range {v1 .. v8}, Lcom/kakaogame/secondpw/viewdata/SetInputSMSCodeViewData;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;ILcom/kakaogame/secondpw/ActionType;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object p2, v0

    check-cast p2, Lcom/kakaogame/secondpw/viewdata/Base2ndPWViewData;

    :goto_1
    return-object p2

    .array-data 1
    .end array-data
.end method

.method private final sendAuthCodeTalk(Landroid/app/Activity;)Lcom/kakaogame/secondpw/viewdata/Base2ndPWViewData;
    .locals 9

    .line 1809
    sget-object v0, Lcom/kakaogame/security/SecondaryPWService;->INSTANCE:Lcom/kakaogame/security/SecondaryPWService;

    invoke-virtual {v0}, Lcom/kakaogame/security/SecondaryPWService;->sendCodeWithKakaoTalk()Lcom/kakaogame/KGResult;

    move-result-object v0

    .line 1829
    invoke-virtual {v0}, Lcom/kakaogame/KGResult;->isSuccess()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1839
    invoke-virtual {v0}, Lcom/kakaogame/KGResult;->getContent()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v0, Lcom/kakaogame/security/SendAuthCodeResult;

    .line 1849
    invoke-virtual {v0}, Lcom/kakaogame/security/SendAuthCodeResult;->isSend()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1859
    invoke-virtual {v0}, Lcom/kakaogame/security/SendAuthCodeResult;->getAuthType()Lcom/kakaogame/security/SendAuthType;

    move-result-object v2

    sget-object v3, Lcom/kakaogame/secondpw/SecondPWViewManager$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v2}, Lcom/kakaogame/security/SendAuthType;->ordinal()I

    move-result v2

    aget v2, v3, v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 1869
    new-instance v0, Lcom/kakaogame/secondpw/viewdata/SetInputTalkCodeViewData;

    sget-object v2, Lcom/kakaogame/infodesk/InfodeskHelper;->INSTANCE:Lcom/kakaogame/infodesk/InfodeskHelper;

    invoke-virtual {v2}, Lcom/kakaogame/infodesk/InfodeskHelper;->getAuthCodeValidTime()I

    move-result v2

    invoke-direct {v0, p1, v2}, Lcom/kakaogame/secondpw/viewdata/SetInputTalkCodeViewData;-><init>(Landroid/app/Activity;I)V

    check-cast v0, Lcom/kakaogame/secondpw/viewdata/Base2ndPWViewData;

    goto :goto_1

    .line 1879
    :cond_0
    new-instance v6, Lcom/kakaogame/secondpw/viewdata/SetInputSMSCodeViewData;

    .line 1899
    invoke-virtual {v0}, Lcom/kakaogame/security/SendAuthCodeResult;->getAuthKey()Ljava/lang/String;

    move-result-object v2

    .line 1909
    invoke-virtual {v0}, Lcom/kakaogame/security/SendAuthCodeResult;->getAuthKey()Ljava/lang/String;

    move-result-object v3

    .line 1919
    sget-object v0, Lcom/kakaogame/infodesk/InfodeskHelper;->INSTANCE:Lcom/kakaogame/infodesk/InfodeskHelper;

    invoke-virtual {v0}, Lcom/kakaogame/infodesk/InfodeskHelper;->getAuthCodeValidTime()I

    move-result v4

    .line 1929
    sget-object v5, Lcom/kakaogame/secondpw/ActionType;->SET_CODE_TALK:Lcom/kakaogame/secondpw/ActionType;

    move-object v0, v6

    move-object v1, p1

    .line 1879
    invoke-direct/range {v0 .. v5}, Lcom/kakaogame/secondpw/viewdata/SetInputSMSCodeViewData;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;ILcom/kakaogame/secondpw/ActionType;)V

    move-object v0, v6

    check-cast v0, Lcom/kakaogame/secondpw/viewdata/Base2ndPWViewData;

    goto :goto_1

    .line 1959
    :cond_1
    new-instance v0, Lcom/kakaogame/secondpw/viewdata/SetInputPhoneNumberViewData;

    invoke-direct {v0, p1}, Lcom/kakaogame/secondpw/viewdata/SetInputPhoneNumberViewData;-><init>(Landroid/app/Activity;)V

    check-cast v0, Lcom/kakaogame/secondpw/viewdata/Base2ndPWViewData;

    goto :goto_1

    .line 1979
    :cond_2
    invoke-virtual {v0}, Lcom/kakaogame/KGResult;->getCode()I

    move-result v0

    const/16 v2, 0x1ce

    if-eq v0, v2, :cond_4

    const/16 v2, 0x1d3

    if-eq v0, v2, :cond_3

    .line 2009
    new-instance v8, Lcom/kakaogame/secondpw/viewdata/PopupViewData;

    sget-object v2, Lcom/kakaogame/secondpw/viewdata/PopupType;->DEFAULT_ERROR:Lcom/kakaogame/secondpw/viewdata/PopupType;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0x1c

    const/4 v7, 0x0

    move-object v0, v8

    move-object v1, p1

    invoke-direct/range {v0 .. v7}, Lcom/kakaogame/secondpw/viewdata/PopupViewData;-><init>(Landroid/app/Activity;Lcom/kakaogame/secondpw/viewdata/PopupType;IIIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto :goto_0

    .line 1989
    :cond_3
    new-instance v8, Lcom/kakaogame/secondpw/viewdata/PopupViewData;

    sget-object v2, Lcom/kakaogame/secondpw/viewdata/PopupType;->AUTH_CODE_TIME_ERROR:Lcom/kakaogame/secondpw/viewdata/PopupType;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0x1c

    const/4 v7, 0x0

    move-object v0, v8

    move-object v1, p1

    invoke-direct/range {v0 .. v7}, Lcom/kakaogame/secondpw/viewdata/PopupViewData;-><init>(Landroid/app/Activity;Lcom/kakaogame/secondpw/viewdata/PopupType;IIIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto :goto_0

    .line 1999
    :cond_4
    new-instance v8, Lcom/kakaogame/secondpw/viewdata/PopupViewData;

    sget-object v2, Lcom/kakaogame/secondpw/viewdata/PopupType;->EXIT_PROCESS_ERROR:Lcom/kakaogame/secondpw/viewdata/PopupType;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0x1c

    const/4 v7, 0x0

    move-object v0, v8

    move-object v1, p1

    invoke-direct/range {v0 .. v7}, Lcom/kakaogame/secondpw/viewdata/PopupViewData;-><init>(Landroid/app/Activity;Lcom/kakaogame/secondpw/viewdata/PopupType;IIIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 2009
    :goto_0
    move-object v0, v8

    check-cast v0, Lcom/kakaogame/secondpw/viewdata/Base2ndPWViewData;

    :goto_1
    return-object v0

    .array-data 1
    .end array-data
.end method

.method private final setPassword(Landroid/app/Activity;Lcom/kakaogame/secondpw/ActionType;Ljava/lang/String;Ljava/lang/String;)Lcom/kakaogame/secondpw/viewdata/Base2ndPWViewData;
    .locals 18

    .line 4799
    sget-object v0, Lcom/kakaogame/security/SecondaryPWService;->INSTANCE:Lcom/kakaogame/security/SecondaryPWService;

    .line 4829
    sget-object v1, Lcom/kakaogame/secondpw/SecondPWViewManager;->publicKey:Ljava/lang/String;

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    .line 4799
    invoke-virtual {v0, v2, v3, v1}, Lcom/kakaogame/security/SecondaryPWService;->setPassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/kakaogame/KGResult;

    move-result-object v0

    .line 4859
    invoke-virtual {v0}, Lcom/kakaogame/KGResult;->getCode()I

    move-result v0

    const/16 v1, 0xc8

    if-eq v0, v1, :cond_3

    const/16 v1, 0x1cd

    if-eq v0, v1, :cond_2

    const/16 v1, 0x1d5

    if-eq v0, v1, :cond_1

    const/16 v1, 0x238

    if-eq v0, v1, :cond_0

    .line 4999
    new-instance v0, Lcom/kakaogame/secondpw/viewdata/PopupViewData;

    sget-object v4, Lcom/kakaogame/secondpw/viewdata/PopupType;->DEFAULT_ERROR:Lcom/kakaogame/secondpw/viewdata/PopupType;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, 0x1c

    const/4 v9, 0x0

    move-object v2, v0

    move-object/from16 v3, p1

    invoke-direct/range {v2 .. v9}, Lcom/kakaogame/secondpw/viewdata/PopupViewData;-><init>(Landroid/app/Activity;Lcom/kakaogame/secondpw/viewdata/PopupType;IIIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    check-cast v0, Lcom/kakaogame/secondpw/viewdata/Base2ndPWViewData;

    goto/16 :goto_1

    .line 4979
    :cond_0
    new-instance v0, Lcom/kakaogame/secondpw/viewdata/PopupViewData;

    sget-object v3, Lcom/kakaogame/secondpw/viewdata/PopupType;->SAME_PASSWORD_USED:Lcom/kakaogame/secondpw/viewdata/PopupType;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x1c

    const/4 v8, 0x0

    move-object v1, v0

    move-object/from16 v2, p1

    invoke-direct/range {v1 .. v8}, Lcom/kakaogame/secondpw/viewdata/PopupViewData;-><init>(Landroid/app/Activity;Lcom/kakaogame/secondpw/viewdata/PopupType;IIIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    check-cast v0, Lcom/kakaogame/secondpw/viewdata/Base2ndPWViewData;

    goto :goto_1

    .line 4929
    :cond_1
    new-instance v0, Lcom/kakaogame/secondpw/viewdata/PopupViewData;

    .line 4949
    sget-object v3, Lcom/kakaogame/secondpw/viewdata/PopupType;->KEYPAD_TIME_LIMIT:Lcom/kakaogame/secondpw/viewdata/PopupType;

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x18

    const/4 v8, 0x0

    move-object v1, v0

    move-object/from16 v2, p1

    .line 4929
    invoke-direct/range {v1 .. v8}, Lcom/kakaogame/secondpw/viewdata/PopupViewData;-><init>(Landroid/app/Activity;Lcom/kakaogame/secondpw/viewdata/PopupType;IIIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    check-cast v0, Lcom/kakaogame/secondpw/viewdata/Base2ndPWViewData;

    goto :goto_1

    .line 4989
    :cond_2
    new-instance v0, Lcom/kakaogame/secondpw/viewdata/PopupViewData;

    sget-object v3, Lcom/kakaogame/secondpw/viewdata/PopupType;->PASSWORD_NOT_MACHED:Lcom/kakaogame/secondpw/viewdata/PopupType;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x1c

    const/4 v8, 0x0

    move-object v1, v0

    move-object/from16 v2, p1

    invoke-direct/range {v1 .. v8}, Lcom/kakaogame/secondpw/viewdata/PopupViewData;-><init>(Landroid/app/Activity;Lcom/kakaogame/secondpw/viewdata/PopupType;IIIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    check-cast v0, Lcom/kakaogame/secondpw/viewdata/Base2ndPWViewData;

    goto :goto_1

    .line 4879
    :cond_3
    sget-object v0, Lcom/kakaogame/secondpw/SecondPWViewManager$WhenMappings;->$EnumSwitchMapping$1:[I

    invoke-virtual/range {p2 .. p2}, Lcom/kakaogame/secondpw/ActionType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_4

    .line 4889
    new-instance v0, Lcom/kakaogame/secondpw/viewdata/PopupViewData;

    sget-object v4, Lcom/kakaogame/secondpw/viewdata/PopupType;->SET_PASSWORD_COMPLETE:Lcom/kakaogame/secondpw/viewdata/PopupType;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, 0x1c

    const/4 v9, 0x0

    move-object v2, v0

    move-object/from16 v3, p1

    invoke-direct/range {v2 .. v9}, Lcom/kakaogame/secondpw/viewdata/PopupViewData;-><init>(Landroid/app/Activity;Lcom/kakaogame/secondpw/viewdata/PopupType;IIIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto :goto_0

    .line 4899
    :cond_4
    new-instance v0, Lcom/kakaogame/secondpw/viewdata/PopupViewData;

    sget-object v12, Lcom/kakaogame/secondpw/viewdata/PopupType;->RESET_PASSWORD_COMPLETE:Lcom/kakaogame/secondpw/viewdata/PopupType;

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x1c

    const/16 v17, 0x0

    move-object v10, v0

    move-object/from16 v11, p1

    invoke-direct/range {v10 .. v17}, Lcom/kakaogame/secondpw/viewdata/PopupViewData;-><init>(Landroid/app/Activity;Lcom/kakaogame/secondpw/viewdata/PopupType;IIIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    :goto_0
    check-cast v0, Lcom/kakaogame/secondpw/viewdata/Base2ndPWViewData;

    :goto_1
    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method private final verifyAuthCode(Landroid/app/Activity;Ljava/lang/String;Lcom/kakaogame/secondpw/ActionType;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/lang/String;",
            "Lcom/kakaogame/secondpw/ActionType;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/kakaogame/secondpw/viewdata/Base2ndPWViewData;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v2, p1

    move-object/from16 v1, p4

    instance-of v3, v1, Lcom/kakaogame/secondpw/SecondPWViewManager$verifyAuthCode$1;

    if-eqz v3, :cond_0

    move-object v3, v1

    check-cast v3, Lcom/kakaogame/secondpw/SecondPWViewManager$verifyAuthCode$1;

    iget v4, v3, Lcom/kakaogame/secondpw/SecondPWViewManager$verifyAuthCode$1;->label:I

    const/high16 v5, -0x80000000

    and-int/2addr v4, v5

    if-eqz v4, :cond_0

    iget v1, v3, Lcom/kakaogame/secondpw/SecondPWViewManager$verifyAuthCode$1;->label:I

    sub-int/2addr v1, v5

    iput v1, v3, Lcom/kakaogame/secondpw/SecondPWViewManager$verifyAuthCode$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v3, Lcom/kakaogame/secondpw/SecondPWViewManager$verifyAuthCode$1;

    invoke-direct {v3, v0, v1}, Lcom/kakaogame/secondpw/SecondPWViewManager$verifyAuthCode$1;-><init>(Lcom/kakaogame/secondpw/SecondPWViewManager;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object v1, v3, Lcom/kakaogame/secondpw/SecondPWViewManager$verifyAuthCode$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v4

    .line 2589
    iget v5, v3, Lcom/kakaogame/secondpw/SecondPWViewManager$verifyAuthCode$1;->label:I

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eqz v5, :cond_3

    if-ne v5, v7, :cond_2

    iget-object v2, v3, Lcom/kakaogame/secondpw/SecondPWViewManager$verifyAuthCode$1;->L$0:Ljava/lang/Object;

    check-cast v2, Landroid/app/Activity;

    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    :cond_1
    move-object v9, v2

    goto/16 :goto_2

    :cond_2
    new-instance v1, Ljava/lang/IllegalStateException;

    const v2, -0x451e018f

    invoke-static {v2}, Lcom/liapp/y;->ڳݬ٬ۮݪ(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 2599
    move-object/from16 v1, p2

    check-cast v1, Ljava/lang/CharSequence;

    new-instance v5, Lkotlin/text/Regex;

    const v8, -0x224e09bc

    invoke-static {v8}, Lcom/liapp/y;->״دش۲ݮ(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v5, v8}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1, v6}, Lkotlin/text/Regex;->split(Ljava/lang/CharSequence;I)Ljava/util/List;

    move-result-object v1

    .line 2609
    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v8, 0x6

    if-ge v5, v8, :cond_4

    new-instance v9, Lcom/kakaogame/secondpw/viewdata/PopupViewData;

    sget-object v3, Lcom/kakaogame/secondpw/viewdata/PopupType;->INVALID_AUTH_CODE_ERROR:Lcom/kakaogame/secondpw/viewdata/PopupType;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x1c

    const/4 v8, 0x0

    move-object v1, v9

    move-object/from16 v2, p1

    invoke-direct/range {v1 .. v8}, Lcom/kakaogame/secondpw/viewdata/PopupViewData;-><init>(Landroid/app/Activity;Lcom/kakaogame/secondpw/viewdata/PopupType;IIIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    check-cast v9, Lcom/kakaogame/secondpw/viewdata/Base2ndPWViewData;

    goto/16 :goto_4

    .line 2629
    :cond_4
    sget-object v5, Lcom/kakaogame/secondpw/SecondPWViewManager$WhenMappings;->$EnumSwitchMapping$1:[I

    invoke-virtual/range {p3 .. p3}, Lcom/kakaogame/secondpw/ActionType;->ordinal()I

    move-result v8

    aget v5, v5, v8

    const/16 v8, 0x270f

    const/4 v9, 0x2

    if-eq v5, v7, :cond_8

    if-eq v5, v9, :cond_6

    .line 2729
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    if-eq v5, v9, :cond_5

    sget-object v1, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    invoke-virtual {v1, v8}, Lcom/kakaogame/KGResult$Companion;->getResult(I)Lcom/kakaogame/KGResult;

    move-result-object v1

    goto :goto_1

    .line 2739
    :cond_5
    sget-object v5, Lcom/kakaogame/security/SecondaryPWService;->INSTANCE:Lcom/kakaogame/security/SecondaryPWService;

    .line 2749
    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 2759
    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 2739
    invoke-virtual {v5, v10, v1}, Lcom/kakaogame/security/SecondaryPWService;->verifyEmailAuthCode(Ljava/lang/String;Ljava/lang/String;)Lcom/kakaogame/KGResult;

    move-result-object v1

    goto :goto_1

    .line 2659
    :cond_6
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    if-eq v5, v9, :cond_7

    sget-object v1, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    invoke-virtual {v1, v8}, Lcom/kakaogame/KGResult$Companion;->getResult(I)Lcom/kakaogame/KGResult;

    move-result-object v1

    goto :goto_1

    .line 2669
    :cond_7
    sget-object v5, Lcom/kakaogame/security/SecondaryPWService;->INSTANCE:Lcom/kakaogame/security/SecondaryPWService;

    .line 2679
    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 2689
    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 2669
    invoke-virtual {v5, v10, v1}, Lcom/kakaogame/security/SecondaryPWService;->verifySMSAuthCode(Ljava/lang/String;Ljava/lang/String;)Lcom/kakaogame/KGResult;

    move-result-object v1

    goto :goto_1

    .line 2639
    :cond_8
    sget-object v5, Lcom/kakaogame/security/SecondaryPWService;->INSTANCE:Lcom/kakaogame/security/SecondaryPWService;

    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v5, v1}, Lcom/kakaogame/security/SecondaryPWService;->verifyKakaoTalkAuthCode(Ljava/lang/String;)Lcom/kakaogame/KGResult;

    move-result-object v1

    .line 2809
    :goto_1
    invoke-virtual {v1}, Lcom/kakaogame/KGResult;->getCode()I

    move-result v5

    const/16 v10, 0x1ce

    if-ne v5, v10, :cond_9

    new-instance v9, Lcom/kakaogame/secondpw/viewdata/PopupViewData;

    sget-object v3, Lcom/kakaogame/secondpw/viewdata/PopupType;->AUTH_CODE_LIMIT_ERROR:Lcom/kakaogame/secondpw/viewdata/PopupType;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x1c

    const/4 v8, 0x0

    move-object v1, v9

    move-object/from16 v2, p1

    invoke-direct/range {v1 .. v8}, Lcom/kakaogame/secondpw/viewdata/PopupViewData;-><init>(Landroid/app/Activity;Lcom/kakaogame/secondpw/viewdata/PopupType;IIIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    check-cast v9, Lcom/kakaogame/secondpw/viewdata/Base2ndPWViewData;

    goto/16 :goto_4

    .line 2819
    :cond_9
    invoke-virtual {v1}, Lcom/kakaogame/KGResult;->getCode()I

    move-result v5

    const/16 v10, 0x1cd

    if-ne v5, v10, :cond_a

    new-instance v9, Lcom/kakaogame/secondpw/viewdata/PopupViewData;

    sget-object v3, Lcom/kakaogame/secondpw/viewdata/PopupType;->INVALID_AUTH_CODE_ERROR:Lcom/kakaogame/secondpw/viewdata/PopupType;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x1c

    const/4 v8, 0x0

    move-object v1, v9

    move-object/from16 v2, p1

    invoke-direct/range {v1 .. v8}, Lcom/kakaogame/secondpw/viewdata/PopupViewData;-><init>(Landroid/app/Activity;Lcom/kakaogame/secondpw/viewdata/PopupType;IIIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    check-cast v9, Lcom/kakaogame/secondpw/viewdata/Base2ndPWViewData;

    goto/16 :goto_4

    .line 2829
    :cond_a
    invoke-virtual {v1}, Lcom/kakaogame/KGResult;->getCode()I

    move-result v1

    if-ne v1, v8, :cond_b

    new-instance v9, Lcom/kakaogame/secondpw/viewdata/PopupViewData;

    sget-object v3, Lcom/kakaogame/secondpw/viewdata/PopupType;->DEFAULT_ERROR:Lcom/kakaogame/secondpw/viewdata/PopupType;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x1c

    const/4 v8, 0x0

    move-object v1, v9

    move-object/from16 v2, p1

    invoke-direct/range {v1 .. v8}, Lcom/kakaogame/secondpw/viewdata/PopupViewData;-><init>(Landroid/app/Activity;Lcom/kakaogame/secondpw/viewdata/PopupType;IIIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    check-cast v9, Lcom/kakaogame/secondpw/viewdata/Base2ndPWViewData;

    goto/16 :goto_4

    .line 2839
    :cond_b
    move-object v1, v2

    check-cast v1, Landroid/content/Context;

    iput-object v2, v3, Lcom/kakaogame/secondpw/SecondPWViewManager$verifyAuthCode$1;->L$0:Ljava/lang/Object;

    iput v7, v3, Lcom/kakaogame/secondpw/SecondPWViewManager$verifyAuthCode$1;->label:I

    invoke-virtual {v0, v1, v9, v3}, Lcom/kakaogame/secondpw/SecondPWViewManager;->getKeypadData(Landroid/content/Context;ILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v4, :cond_1

    return-object v4

    :goto_2
    check-cast v1, Lcom/kakaogame/KGResult;

    invoke-virtual {v1}, Lcom/kakaogame/KGResult;->isNotSuccess()Z

    move-result v1

    if-eqz v1, :cond_c

    new-instance v1, Lcom/kakaogame/secondpw/viewdata/PopupViewData;

    sget-object v10, Lcom/kakaogame/secondpw/viewdata/PopupType;->DEFAULT_ERROR:Lcom/kakaogame/secondpw/viewdata/PopupType;

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/16 v14, 0x1c

    const/4 v15, 0x0

    move-object v8, v1

    invoke-direct/range {v8 .. v15}, Lcom/kakaogame/secondpw/viewdata/PopupViewData;-><init>(Landroid/app/Activity;Lcom/kakaogame/secondpw/viewdata/PopupType;IIIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object v9, v1

    check-cast v9, Lcom/kakaogame/secondpw/viewdata/Base2ndPWViewData;

    goto :goto_4

    .line 2859
    :cond_c
    sget-object v1, Lcom/kakaogame/infodesk/InfodeskHelper;->INSTANCE:Lcom/kakaogame/infodesk/InfodeskHelper;

    invoke-virtual {v1}, Lcom/kakaogame/infodesk/InfodeskHelper;->getBenefitString()Ljava/lang/String;

    move-result-object v11

    .line 2869
    move-object v1, v11

    check-cast v1, Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-lez v1, :cond_d

    move v10, v7

    goto :goto_3

    :cond_d
    move v10, v6

    .line 2879
    :goto_3
    new-instance v1, Lcom/kakaogame/secondpw/viewdata/SetPasswordViewData;

    .line 2919
    sget-object v2, Lcom/kakaogame/secondpw/SecondPWViewManager;->keypads:Ljava/util/List;

    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/kakaogame/secondpw/Keypad;

    invoke-virtual {v2}, Lcom/kakaogame/secondpw/Keypad;->getPath()Ljava/lang/String;

    move-result-object v12

    .line 2929
    sget-object v2, Lcom/kakaogame/secondpw/SecondPWViewManager;->keypads:Ljava/util/List;

    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/kakaogame/secondpw/Keypad;

    invoke-virtual {v2}, Lcom/kakaogame/secondpw/Keypad;->getValues()Ljava/lang/String;

    move-result-object v13

    .line 2939
    sget-object v2, Lcom/kakaogame/secondpw/SecondPWViewManager;->keypads:Ljava/util/List;

    invoke-interface {v2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/kakaogame/secondpw/Keypad;

    invoke-virtual {v2}, Lcom/kakaogame/secondpw/Keypad;->getPath()Ljava/lang/String;

    move-result-object v14

    .line 2949
    sget-object v2, Lcom/kakaogame/secondpw/SecondPWViewManager;->keypads:Ljava/util/List;

    invoke-interface {v2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/kakaogame/secondpw/Keypad;

    invoke-virtual {v2}, Lcom/kakaogame/secondpw/Keypad;->getValues()Ljava/lang/String;

    move-result-object v15

    .line 2959
    sget-object v2, Lcom/kakaogame/infodesk/InfodeskHelper;->INSTANCE:Lcom/kakaogame/infodesk/InfodeskHelper;

    invoke-virtual {v2}, Lcom/kakaogame/infodesk/InfodeskHelper;->getKeypadValidTime()I

    move-result v16

    move-object v8, v1

    .line 2879
    invoke-direct/range {v8 .. v16}, Lcom/kakaogame/secondpw/viewdata/SetPasswordViewData;-><init>(Landroid/app/Activity;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    move-object v9, v1

    check-cast v9, Lcom/kakaogame/secondpw/viewdata/Base2ndPWViewData;

    :goto_4
    return-object v9

    nop

    .array-data 1
    .end array-data
.end method

.method private final verifyExistAuthCodeForRemove(Landroid/app/Activity;Ljava/lang/String;)Lcom/kakaogame/secondpw/viewdata/Base2ndPWViewData;
    .locals 17

    .line 3309
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x6

    if-ge v0, v1, :cond_0

    new-instance v0, Lcom/kakaogame/secondpw/viewdata/PopupViewData;

    sget-object v4, Lcom/kakaogame/secondpw/viewdata/PopupType;->INVALID_AUTH_CODE_ERROR:Lcom/kakaogame/secondpw/viewdata/PopupType;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, 0x1c

    const/4 v9, 0x0

    move-object v2, v0

    move-object/from16 v3, p1

    invoke-direct/range {v2 .. v9}, Lcom/kakaogame/secondpw/viewdata/PopupViewData;-><init>(Landroid/app/Activity;Lcom/kakaogame/secondpw/viewdata/PopupType;IIIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    check-cast v0, Lcom/kakaogame/secondpw/viewdata/Base2ndPWViewData;

    goto/16 :goto_1

    .line 3329
    :cond_0
    sget-object v0, Lcom/kakaogame/security/SecondaryPWService;->INSTANCE:Lcom/kakaogame/security/SecondaryPWService;

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/kakaogame/security/SecondaryPWService;->verifyExistAuthCode(Ljava/lang/String;)Lcom/kakaogame/KGResult;

    move-result-object v0

    .line 3349
    invoke-virtual {v0}, Lcom/kakaogame/KGResult;->getCode()I

    move-result v1

    const/16 v2, 0x1ce

    if-ne v1, v2, :cond_1

    new-instance v0, Lcom/kakaogame/secondpw/viewdata/PopupViewData;

    sget-object v5, Lcom/kakaogame/secondpw/viewdata/PopupType;->AUTH_CODE_LIMIT_ERROR:Lcom/kakaogame/secondpw/viewdata/PopupType;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0x1c

    const/4 v10, 0x0

    move-object v3, v0

    move-object/from16 v4, p1

    invoke-direct/range {v3 .. v10}, Lcom/kakaogame/secondpw/viewdata/PopupViewData;-><init>(Landroid/app/Activity;Lcom/kakaogame/secondpw/viewdata/PopupType;IIIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto :goto_0

    .line 3359
    :cond_1
    invoke-virtual {v0}, Lcom/kakaogame/KGResult;->getCode()I

    move-result v1

    const/16 v2, 0x1cd

    if-ne v1, v2, :cond_2

    new-instance v0, Lcom/kakaogame/secondpw/viewdata/PopupViewData;

    sget-object v5, Lcom/kakaogame/secondpw/viewdata/PopupType;->INVALID_AUTH_CODE_ERROR:Lcom/kakaogame/secondpw/viewdata/PopupType;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0x1c

    const/4 v10, 0x0

    move-object v3, v0

    move-object/from16 v4, p1

    invoke-direct/range {v3 .. v10}, Lcom/kakaogame/secondpw/viewdata/PopupViewData;-><init>(Landroid/app/Activity;Lcom/kakaogame/secondpw/viewdata/PopupType;IIIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto :goto_0

    .line 3369
    :cond_2
    invoke-virtual {v0}, Lcom/kakaogame/KGResult;->getCode()I

    move-result v0

    const/16 v1, 0x270f

    if-ne v0, v1, :cond_3

    new-instance v0, Lcom/kakaogame/secondpw/viewdata/PopupViewData;

    sget-object v4, Lcom/kakaogame/secondpw/viewdata/PopupType;->DEFAULT_ERROR:Lcom/kakaogame/secondpw/viewdata/PopupType;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, 0x1c

    const/4 v9, 0x0

    move-object v2, v0

    move-object/from16 v3, p1

    invoke-direct/range {v2 .. v9}, Lcom/kakaogame/secondpw/viewdata/PopupViewData;-><init>(Landroid/app/Activity;Lcom/kakaogame/secondpw/viewdata/PopupType;IIIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto :goto_0

    .line 3379
    :cond_3
    sget-object v0, Lcom/kakaogame/security/SecondaryPWService;->INSTANCE:Lcom/kakaogame/security/SecondaryPWService;

    invoke-virtual {v0}, Lcom/kakaogame/security/SecondaryPWService;->deletePassword()Lcom/kakaogame/KGResult;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kakaogame/KGResult;->isNotSuccess()Z

    move-result v0

    if-eqz v0, :cond_4

    new-instance v0, Lcom/kakaogame/secondpw/viewdata/PopupViewData;

    sget-object v3, Lcom/kakaogame/secondpw/viewdata/PopupType;->DEFAULT_ERROR:Lcom/kakaogame/secondpw/viewdata/PopupType;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x1c

    const/4 v8, 0x0

    move-object v1, v0

    move-object/from16 v2, p1

    invoke-direct/range {v1 .. v8}, Lcom/kakaogame/secondpw/viewdata/PopupViewData;-><init>(Landroid/app/Activity;Lcom/kakaogame/secondpw/viewdata/PopupType;IIIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto :goto_0

    .line 3389
    :cond_4
    new-instance v0, Lcom/kakaogame/secondpw/viewdata/PopupViewData;

    sget-object v11, Lcom/kakaogame/secondpw/viewdata/PopupType;->REMOVE_PASSWORD_COMPLETE:Lcom/kakaogame/secondpw/viewdata/PopupType;

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v15, 0x1c

    const/16 v16, 0x0

    move-object v9, v0

    move-object/from16 v10, p1

    invoke-direct/range {v9 .. v16}, Lcom/kakaogame/secondpw/viewdata/PopupViewData;-><init>(Landroid/app/Activity;Lcom/kakaogame/secondpw/viewdata/PopupType;IIIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    :goto_0
    check-cast v0, Lcom/kakaogame/secondpw/viewdata/Base2ndPWViewData;

    :goto_1
    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method private final verifyExistAuthCodeForReset(Landroid/app/Activity;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/kakaogame/secondpw/viewdata/Base2ndPWViewData;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v2, p1

    move-object/from16 v1, p3

    instance-of v3, v1, Lcom/kakaogame/secondpw/SecondPWViewManager$verifyExistAuthCodeForReset$1;

    if-eqz v3, :cond_0

    move-object v3, v1

    check-cast v3, Lcom/kakaogame/secondpw/SecondPWViewManager$verifyExistAuthCodeForReset$1;

    iget v4, v3, Lcom/kakaogame/secondpw/SecondPWViewManager$verifyExistAuthCodeForReset$1;->label:I

    const/high16 v5, -0x80000000

    and-int/2addr v4, v5

    if-eqz v4, :cond_0

    iget v1, v3, Lcom/kakaogame/secondpw/SecondPWViewManager$verifyExistAuthCodeForReset$1;->label:I

    sub-int/2addr v1, v5

    iput v1, v3, Lcom/kakaogame/secondpw/SecondPWViewManager$verifyExistAuthCodeForReset$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v3, Lcom/kakaogame/secondpw/SecondPWViewManager$verifyExistAuthCodeForReset$1;

    invoke-direct {v3, v0, v1}, Lcom/kakaogame/secondpw/SecondPWViewManager$verifyExistAuthCodeForReset$1;-><init>(Lcom/kakaogame/secondpw/SecondPWViewManager;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object v1, v3, Lcom/kakaogame/secondpw/SecondPWViewManager$verifyExistAuthCodeForReset$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v4

    .line 3029
    iget v5, v3, Lcom/kakaogame/secondpw/SecondPWViewManager$verifyExistAuthCodeForReset$1;->label:I

    const/4 v6, 0x1

    if-eqz v5, :cond_3

    if-ne v5, v6, :cond_2

    iget-object v2, v3, Lcom/kakaogame/secondpw/SecondPWViewManager$verifyExistAuthCodeForReset$1;->L$0:Ljava/lang/Object;

    check-cast v2, Landroid/app/Activity;

    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    :cond_1
    move-object v8, v2

    goto/16 :goto_1

    :cond_2
    new-instance v1, Ljava/lang/IllegalStateException;

    const v2, -0x451e018f

    invoke-static {v2}, Lcom/liapp/y;->ڳݬ٬ۮݪ(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 3039
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v5, 0x6

    if-ge v1, v5, :cond_4

    new-instance v9, Lcom/kakaogame/secondpw/viewdata/PopupViewData;

    sget-object v3, Lcom/kakaogame/secondpw/viewdata/PopupType;->INVALID_AUTH_CODE_ERROR:Lcom/kakaogame/secondpw/viewdata/PopupType;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x1c

    const/4 v8, 0x0

    move-object v1, v9

    move-object/from16 v2, p1

    invoke-direct/range {v1 .. v8}, Lcom/kakaogame/secondpw/viewdata/PopupViewData;-><init>(Landroid/app/Activity;Lcom/kakaogame/secondpw/viewdata/PopupType;IIIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    check-cast v9, Lcom/kakaogame/secondpw/viewdata/Base2ndPWViewData;

    goto/16 :goto_3

    .line 3059
    :cond_4
    sget-object v1, Lcom/kakaogame/security/SecondaryPWService;->INSTANCE:Lcom/kakaogame/security/SecondaryPWService;

    move-object/from16 v5, p2

    invoke-virtual {v1, v5}, Lcom/kakaogame/security/SecondaryPWService;->verifyExistAuthCode(Ljava/lang/String;)Lcom/kakaogame/KGResult;

    move-result-object v1

    .line 3079
    invoke-virtual {v1}, Lcom/kakaogame/KGResult;->getCode()I

    move-result v5

    const/16 v7, 0x1ce

    if-ne v5, v7, :cond_5

    new-instance v9, Lcom/kakaogame/secondpw/viewdata/PopupViewData;

    sget-object v3, Lcom/kakaogame/secondpw/viewdata/PopupType;->AUTH_CODE_LIMIT_ERROR:Lcom/kakaogame/secondpw/viewdata/PopupType;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x1c

    const/4 v8, 0x0

    move-object v1, v9

    move-object/from16 v2, p1

    invoke-direct/range {v1 .. v8}, Lcom/kakaogame/secondpw/viewdata/PopupViewData;-><init>(Landroid/app/Activity;Lcom/kakaogame/secondpw/viewdata/PopupType;IIIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    check-cast v9, Lcom/kakaogame/secondpw/viewdata/Base2ndPWViewData;

    goto/16 :goto_3

    .line 3089
    :cond_5
    invoke-virtual {v1}, Lcom/kakaogame/KGResult;->getCode()I

    move-result v5

    const/16 v7, 0x1cd

    if-ne v5, v7, :cond_6

    new-instance v9, Lcom/kakaogame/secondpw/viewdata/PopupViewData;

    sget-object v3, Lcom/kakaogame/secondpw/viewdata/PopupType;->INVALID_AUTH_CODE_ERROR:Lcom/kakaogame/secondpw/viewdata/PopupType;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x1c

    const/4 v8, 0x0

    move-object v1, v9

    move-object/from16 v2, p1

    invoke-direct/range {v1 .. v8}, Lcom/kakaogame/secondpw/viewdata/PopupViewData;-><init>(Landroid/app/Activity;Lcom/kakaogame/secondpw/viewdata/PopupType;IIIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    check-cast v9, Lcom/kakaogame/secondpw/viewdata/Base2ndPWViewData;

    goto/16 :goto_3

    .line 3099
    :cond_6
    invoke-virtual {v1}, Lcom/kakaogame/KGResult;->getCode()I

    move-result v1

    const/16 v5, 0x270f

    if-ne v1, v5, :cond_7

    new-instance v9, Lcom/kakaogame/secondpw/viewdata/PopupViewData;

    sget-object v3, Lcom/kakaogame/secondpw/viewdata/PopupType;->DEFAULT_ERROR:Lcom/kakaogame/secondpw/viewdata/PopupType;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x1c

    const/4 v8, 0x0

    move-object v1, v9

    move-object/from16 v2, p1

    invoke-direct/range {v1 .. v8}, Lcom/kakaogame/secondpw/viewdata/PopupViewData;-><init>(Landroid/app/Activity;Lcom/kakaogame/secondpw/viewdata/PopupType;IIIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    check-cast v9, Lcom/kakaogame/secondpw/viewdata/Base2ndPWViewData;

    goto/16 :goto_3

    .line 3109
    :cond_7
    move-object v1, v2

    check-cast v1, Landroid/content/Context;

    iput-object v2, v3, Lcom/kakaogame/secondpw/SecondPWViewManager$verifyExistAuthCodeForReset$1;->L$0:Ljava/lang/Object;

    iput v6, v3, Lcom/kakaogame/secondpw/SecondPWViewManager$verifyExistAuthCodeForReset$1;->label:I

    const/4 v5, 0x2

    invoke-virtual {v0, v1, v5, v3}, Lcom/kakaogame/secondpw/SecondPWViewManager;->getKeypadData(Landroid/content/Context;ILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v4, :cond_1

    return-object v4

    :goto_1
    check-cast v1, Lcom/kakaogame/KGResult;

    invoke-virtual {v1}, Lcom/kakaogame/KGResult;->isNotSuccess()Z

    move-result v1

    if-eqz v1, :cond_8

    new-instance v1, Lcom/kakaogame/secondpw/viewdata/PopupViewData;

    sget-object v9, Lcom/kakaogame/secondpw/viewdata/PopupType;->DEFAULT_ERROR:Lcom/kakaogame/secondpw/viewdata/PopupType;

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/16 v13, 0x1c

    const/4 v14, 0x0

    move-object v7, v1

    invoke-direct/range {v7 .. v14}, Lcom/kakaogame/secondpw/viewdata/PopupViewData;-><init>(Landroid/app/Activity;Lcom/kakaogame/secondpw/viewdata/PopupType;IIIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object v9, v1

    check-cast v9, Lcom/kakaogame/secondpw/viewdata/Base2ndPWViewData;

    goto :goto_3

    .line 3129
    :cond_8
    sget-object v1, Lcom/kakaogame/infodesk/InfodeskHelper;->INSTANCE:Lcom/kakaogame/infodesk/InfodeskHelper;

    invoke-virtual {v1}, Lcom/kakaogame/infodesk/InfodeskHelper;->getBenefitString()Ljava/lang/String;

    move-result-object v10

    .line 3139
    move-object v1, v10

    check-cast v1, Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    const/4 v2, 0x0

    if-lez v1, :cond_9

    move v9, v6

    goto :goto_2

    :cond_9
    move v9, v2

    .line 3149
    :goto_2
    new-instance v1, Lcom/kakaogame/secondpw/viewdata/ResetPasswordViewData;

    .line 3189
    sget-object v3, Lcom/kakaogame/secondpw/SecondPWViewManager;->keypads:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/kakaogame/secondpw/Keypad;

    invoke-virtual {v3}, Lcom/kakaogame/secondpw/Keypad;->getPath()Ljava/lang/String;

    move-result-object v11

    .line 3199
    sget-object v3, Lcom/kakaogame/secondpw/SecondPWViewManager;->keypads:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/kakaogame/secondpw/Keypad;

    invoke-virtual {v2}, Lcom/kakaogame/secondpw/Keypad;->getValues()Ljava/lang/String;

    move-result-object v12

    .line 3209
    sget-object v2, Lcom/kakaogame/secondpw/SecondPWViewManager;->keypads:Ljava/util/List;

    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/kakaogame/secondpw/Keypad;

    invoke-virtual {v2}, Lcom/kakaogame/secondpw/Keypad;->getPath()Ljava/lang/String;

    move-result-object v13

    .line 3219
    sget-object v2, Lcom/kakaogame/secondpw/SecondPWViewManager;->keypads:Ljava/util/List;

    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/kakaogame/secondpw/Keypad;

    invoke-virtual {v2}, Lcom/kakaogame/secondpw/Keypad;->getValues()Ljava/lang/String;

    move-result-object v14

    .line 3229
    sget-object v2, Lcom/kakaogame/infodesk/InfodeskHelper;->INSTANCE:Lcom/kakaogame/infodesk/InfodeskHelper;

    invoke-virtual {v2}, Lcom/kakaogame/infodesk/InfodeskHelper;->getKeypadValidTime()I

    move-result v15

    move-object v7, v1

    .line 3149
    invoke-direct/range {v7 .. v15}, Lcom/kakaogame/secondpw/viewdata/ResetPasswordViewData;-><init>(Landroid/app/Activity;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    move-object v9, v1

    check-cast v9, Lcom/kakaogame/secondpw/viewdata/Base2ndPWViewData;

    :goto_3
    return-object v9

    nop

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public final getKeypadData(Landroid/content/Context;ILkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/kakaogame/KGResult<",
            "Ljava/lang/Void;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p3, Lcom/kakaogame/secondpw/SecondPWViewManager$getKeypadData$1;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Lcom/kakaogame/secondpw/SecondPWViewManager$getKeypadData$1;

    iget v1, v0, Lcom/kakaogame/secondpw/SecondPWViewManager$getKeypadData$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p3, v0, Lcom/kakaogame/secondpw/SecondPWViewManager$getKeypadData$1;->label:I

    sub-int/2addr p3, v2

    iput p3, v0, Lcom/kakaogame/secondpw/SecondPWViewManager$getKeypadData$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/kakaogame/secondpw/SecondPWViewManager$getKeypadData$1;

    invoke-direct {v0, p0, p3}, Lcom/kakaogame/secondpw/SecondPWViewManager$getKeypadData$1;-><init>(Lcom/kakaogame/secondpw/SecondPWViewManager;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p3, v0, Lcom/kakaogame/secondpw/SecondPWViewManager$getKeypadData$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 3879
    iget v2, v0, Lcom/kakaogame/secondpw/SecondPWViewManager$getKeypadData$1;->label:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget p2, v0, Lcom/kakaogame/secondpw/SecondPWViewManager$getKeypadData$1;->I$0:I

    iget-object p1, v0, Lcom/kakaogame/secondpw/SecondPWViewManager$getKeypadData$1;->L$1:Ljava/lang/Object;

    check-cast p1, Lkotlinx/coroutines/sync/Mutex;

    iget-object v0, v0, Lcom/kakaogame/secondpw/SecondPWViewManager$getKeypadData$1;->L$0:Ljava/lang/Object;

    check-cast v0, Landroid/content/Context;

    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 3889
    sget-object p3, Lcom/kakaogame/secondpw/SecondPWViewManager;->mutex:Lkotlinx/coroutines/sync/Mutex;

    .line 5399
    iput-object p1, v0, Lcom/kakaogame/secondpw/SecondPWViewManager$getKeypadData$1;->L$0:Ljava/lang/Object;

    iput-object p3, v0, Lcom/kakaogame/secondpw/SecondPWViewManager$getKeypadData$1;->L$1:Ljava/lang/Object;

    iput p2, v0, Lcom/kakaogame/secondpw/SecondPWViewManager$getKeypadData$1;->I$0:I

    iput v3, v0, Lcom/kakaogame/secondpw/SecondPWViewManager$getKeypadData$1;->label:I

    invoke-interface {p3, v4, v0}, Lkotlinx/coroutines/sync/Mutex;->lock(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v1, :cond_3

    return-object v1

    :cond_3
    move-object v0, p1

    move-object p1, p3

    .line 3899
    :goto_1
    :try_start_0
    sget-object p3, Lcom/kakaogame/security/SecondaryPWService;->INSTANCE:Lcom/kakaogame/security/SecondaryPWService;

    invoke-virtual {p3, p2}, Lcom/kakaogame/security/SecondaryPWService;->getKeypad(I)Lcom/kakaogame/KGResult;

    move-result-object p3

    .line 3919
    invoke-virtual {p3}, Lcom/kakaogame/KGResult;->isSuccess()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 3929
    invoke-virtual {p3}, Lcom/kakaogame/KGResult;->getContent()Ljava/lang/Object;

    move-result-object p3

    invoke-static {p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast p3, Lcom/kakaogame/security/KeypadDataResult;

    .line 3939
    sget-object v1, Lcom/kakaogame/secondpw/SecondPWViewManager;->INSTANCE:Lcom/kakaogame/secondpw/SecondPWViewManager;

    invoke-direct {v1}, Lcom/kakaogame/secondpw/SecondPWViewManager;->removeFile()V

    .line 3959
    invoke-virtual {p3}, Lcom/kakaogame/security/KeypadDataResult;->getPublicKeyString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/kakaogame/secondpw/SecondPWViewManager;->publicKey:Ljava/lang/String;

    .line 3979
    invoke-virtual {p3}, Lcom/kakaogame/security/KeypadDataResult;->getKeypadRawDataList()Ljava/util/List;

    move-result-object p3

    check-cast p3, Ljava/lang/Iterable;

    .line 5429
    invoke-interface {p3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_2
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/kakaogame/security/KeypadRawData;

    .line 3989
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1a

    const/4 v5, 0x0

    if-lt v2, v3, :cond_4

    .line 3999
    invoke-static {}, Ljava/util/Base64;->getDecoder()Ljava/util/Base64$Decoder;

    move-result-object v2

    invoke-virtual {v1}, Lcom/kakaogame/security/KeypadRawData;->getRawData()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/Base64$Decoder;->decode(Ljava/lang/String;)[B

    move-result-object v2

    goto :goto_3

    .line 4019
    :cond_4
    invoke-virtual {v1}, Lcom/kakaogame/security/KeypadRawData;->getRawData()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v5}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v2

    .line 4049
    :goto_3
    array-length v3, v2

    invoke-static {v2, v5, v3}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 4059
    new-instance v3, Ljava/io/File;

    .line 4069
    invoke-virtual {v0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    .line 4079
    new-instance v6, Ljava/util/Random;

    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v7

    invoke-direct {v6, v7, v8}, Ljava/util/Random;-><init>(J)V

    invoke-virtual {v6}, Ljava/util/Random;->nextLong()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    .line 4059
    invoke-direct {v3, v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 4099
    invoke-virtual {v3}, Ljava/io/File;->createNewFile()Z

    .line 4129
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    check-cast v5, Ljava/io/Closeable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    move-object v6, v5

    check-cast v6, Ljava/io/FileOutputStream;

    .line 4139
    sget-object v7, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    check-cast v6, Ljava/io/OutputStream;

    const/16 v8, 0x64

    invoke-virtual {v2, v7, v8, v6}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4129
    :try_start_2
    invoke-static {v5, v4}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 4169
    new-instance v2, Lcom/kakaogame/secondpw/Keypad;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    const-string v5, "getAbsolutePath(...)"

    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/kakaogame/security/KeypadRawData;->getValues()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v3, v1}, Lcom/kakaogame/secondpw/Keypad;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 4179
    sget-object v1, Lcom/kakaogame/secondpw/SecondPWViewManager;->keypads:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_2

    :catchall_0
    move-exception p2

    .line 4129
    :try_start_3
    throw p2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p3

    :try_start_4
    invoke-static {v5, p2}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw p3

    .line 4209
    :cond_5
    sget-object p3, Lcom/kakaogame/secondpw/SecondPWViewManager;->keypads:Ljava/util/List;

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p3

    if-ne p3, p2, :cond_6

    .line 4219
    sget-object p2, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    invoke-virtual {p2}, Lcom/kakaogame/KGResult$Companion;->getSuccessResult()Lcom/kakaogame/KGResult;

    move-result-object p2

    goto :goto_4

    .line 4239
    :cond_6
    sget-object p2, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    const/16 p3, 0x7d3

    invoke-virtual {p2, p3}, Lcom/kakaogame/KGResult$Companion;->getResult(I)Lcom/kakaogame/KGResult;

    move-result-object p2

    goto :goto_4

    .line 4269
    :cond_7
    sget-object p2, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    check-cast p3, Ljava/util/Map;

    invoke-virtual {p2, p3}, Lcom/kakaogame/KGResult$Companion;->getResult(Ljava/util/Map;)Lcom/kakaogame/KGResult;

    move-result-object p2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 5449
    :goto_4
    invoke-interface {p1, v4}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    return-object p2

    :catchall_2
    move-exception p2

    invoke-interface {p1, v4}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    throw p2

    nop

    .array-data 1
    .end array-data
.end method

.method public final getUIData(Landroid/app/Activity;Lcom/kakaogame/secondpw/ActionType;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lcom/kakaogame/secondpw/ActionType;",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/kakaogame/secondpw/viewdata/Base2ndPWViewData;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const v0, 0x543d14da

    invoke-static {v0}, Lcom/liapp/y;->׳ֳֳ֬د(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const v0, 0x543fd752

    invoke-static {v0}, Lcom/liapp/y;->׳ֳֳ֬د(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const v0, 0x2250096e

    invoke-static {v0}, Lcom/liapp/y;->ֲֳگܱޭ(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const v0, 0x6d0d7b60

    invoke-static {v0}, Lcom/liapp/y;->ٱڳܴڭܩ(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 459
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    invoke-static {v0}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    new-instance v0, Lcom/kakaogame/secondpw/SecondPWViewManager$getUIData$1;

    const/4 v9, 0x0

    move-object v4, v0

    move-object v5, p2

    move-object v6, p1

    move-object v7, p3

    move-object v8, p4

    invoke-direct/range {v4 .. v9}, Lcom/kakaogame/secondpw/SecondPWViewManager$getUIData$1;-><init>(Lcom/kakaogame/secondpw/ActionType;Landroid/app/Activity;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)V

    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v5, 0x3

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void

    .array-data 1
    .end array-data
.end method
