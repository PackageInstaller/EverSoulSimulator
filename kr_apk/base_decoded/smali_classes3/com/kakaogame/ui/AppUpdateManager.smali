.class public final Lcom/kakaogame/ui/AppUpdateManager;
.super Ljava/lang/Object;
.source "AppUpdateManager.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000H\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0012\u0010\u0008\u001a\u00020\t2\u0008\u0010\n\u001a\u0004\u0018\u00010\u0005H\u0007J\u0010\u0010\u000b\u001a\u00020\t2\u0008\u0010\u000c\u001a\u0004\u0018\u00010\rJ\u0018\u0010\u000e\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00100\u000f2\u0006\u0010\u0011\u001a\u00020\u0012H\u0007J$\u0010\u0013\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00140\u000f2\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u00122\u0008\u0010\u0015\u001a\u0004\u0018\u00010\u0016H\u0007J\u0018\u0010\u0017\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00100\u000f2\u0006\u0010\u0011\u001a\u00020\u0012H\u0002J$\u0010\u0018\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00100\u000f2\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u00122\u0008\u0010\u0019\u001a\u0004\u0018\u00010\u0005H\u0002J*\u0010\u001a\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00100\u000f2\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u00122\u0006\u0010\u001b\u001a\u00020\u001c2\u0006\u0010\u001d\u001a\u00020\u0014H\u0002R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0005X\u0082T\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0007\u001a\u0004\u0018\u00010\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001e"
    }
    d2 = {
        "Lcom/kakaogame/ui/AppUpdateManager;",
        "",
        "<init>",
        "()V",
        "TAG",
        "",
        "PREF_NAME",
        "appId",
        "initialize",
        "",
        "applicationId",
        "clearPreference",
        "context",
        "Landroid/content/Context;",
        "checkUpdate",
        "Lcom/kakaogame/KGResult;",
        "Ljava/lang/Void;",
        "activity",
        "Landroid/app/Activity;",
        "checkUpdateInGame",
        "",
        "info",
        "Lcom/kakaogame/KGAppOption$UpdatePopupParamBuilder;",
        "showServiceClose",
        "showUpdateRequired",
        "marketUrl",
        "showUpdateRecommend",
        "popupInfo",
        "Lcom/kakaogame/KGAppOption$UpdatePopupParamBuilder$UpdatePopupParam;",
        "isReadPref",
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
.field public static final INSTANCE:Lcom/kakaogame/ui/AppUpdateManager;

.field private static final PREF_NAME:Ljava/lang/String; = "KakaoSDK_AppUpdateRecommDate"

.field private static final TAG:Ljava/lang/String; = "AppUpdateManager"

.field private static appId:Ljava/lang/String;


# direct methods
.method public static synthetic $r8$lambda$MnESYiRncVmroOmDC3z-fP06CUc(Lcom/kakaogame/util/MutexLock;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/kakaogame/ui/AppUpdateManager;->showServiceClose$lambda$0(Lcom/kakaogame/util/MutexLock;Landroid/content/DialogInterface;I)V

    return-void

    .array-data 1
    .end array-data
.end method

.method public static synthetic $r8$lambda$TUguu6ccarx__AFgcsAmQ4i6_6k(Lcom/kakaogame/util/MutexLock;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/kakaogame/ui/AppUpdateManager;->showUpdateRecommend$lambda$3(Lcom/kakaogame/util/MutexLock;Landroid/content/DialogInterface;I)V

    return-void

    .array-data 1
    .end array-data
.end method

.method public static synthetic $r8$lambda$Yl3ZPrIQzhsSpQ7BdxY-ksWleyQ(Lcom/kakaogame/util/MutexLock;Landroid/content/DialogInterface;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/kakaogame/ui/AppUpdateManager;->showUpdateRecommend$lambda$4(Lcom/kakaogame/util/MutexLock;Landroid/content/DialogInterface;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method public static synthetic $r8$lambda$Z4JRda0e7zkesZNUkL0oyR6TrEE(Lcom/kakaogame/util/MutexLock;Ljava/lang/String;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/kakaogame/ui/AppUpdateManager;->showUpdateRecommend$lambda$2(Lcom/kakaogame/util/MutexLock;Ljava/lang/String;Landroid/content/DialogInterface;I)V

    return-void

    .array-data 1
    .end array-data
.end method

.method public static synthetic $r8$lambda$pq2ErPEnwn6a4evTMSAFTFabh1Y(Lcom/kakaogame/util/MutexLock;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/kakaogame/ui/AppUpdateManager;->showUpdateRequired$lambda$1(Lcom/kakaogame/util/MutexLock;Landroid/content/DialogInterface;I)V

    return-void

    .array-data 1
    .end array-data
.end method

.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/kakaogame/ui/AppUpdateManager;

    invoke-direct {v0}, Lcom/kakaogame/ui/AppUpdateManager;-><init>()V

    sput-object v0, Lcom/kakaogame/ui/AppUpdateManager;->INSTANCE:Lcom/kakaogame/ui/AppUpdateManager;

    return-void

    .array-data 1
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .line 299
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void

    .array-data 1
    .end array-data
.end method

.method public static final checkUpdate(Landroid/app/Activity;)Lcom/kakaogame/KGResult;
    .locals 7
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

    const v0, 0x225acede

    invoke-static {v0}, Lcom/liapp/y;->ֲֳگܱޭ(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x6d03daa8

    invoke-static {v1}, Lcom/liapp/y;->ٱڳܴڭܩ(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7d7fc0b5

    invoke-static {v2}, Lcom/liapp/y;->حֲݴܳޯ(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x543d14da

    invoke-static {v3}, Lcom/liapp/y;->׳ֳֳ֬د(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 489
    sget-object v3, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    const v4, 0x5436c23a

    invoke-static {v4}, Lcom/liapp/y;->׳ֳֳ֬د(I)Ljava/lang/String;

    move-result-object v4

    const v5, -0x224d0874

    invoke-static {v5}, Lcom/liapp/y;->״دش۲ݮ(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5, v4}, Lcom/kakaogame/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 509
    :try_start_0
    sget-object v3, Lcom/kakaogame/infodesk/InfodeskHelper;->INSTANCE:Lcom/kakaogame/infodesk/InfodeskHelper;

    invoke-virtual {v3}, Lcom/kakaogame/infodesk/InfodeskHelper;->getAppServiceStatus()Lcom/kakaogame/infodesk/InfodeskHelper$InfodeskAppServiceStatus;

    move-result-object v3

    .line 519
    sget-object v4, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v5, v2}, Lcom/kakaogame/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 529
    sget-object v2, Lcom/kakaogame/infodesk/InfodeskHelper$InfodeskAppServiceStatus;->CLOSE:Lcom/kakaogame/infodesk/InfodeskHelper$InfodeskAppServiceStatus;

    if-ne v3, v2, :cond_0

    .line 539
    sget-object v0, Lcom/kakaogame/ui/AppUpdateManager;->INSTANCE:Lcom/kakaogame/ui/AppUpdateManager;

    invoke-direct {v0, p0}, Lcom/kakaogame/ui/AppUpdateManager;->showServiceClose(Landroid/app/Activity;)Lcom/kakaogame/KGResult;

    move-result-object p0

    return-object p0

    .line 559
    :cond_0
    sget-object v2, Lcom/kakaogame/infodesk/InfodeskHelper;->INSTANCE:Lcom/kakaogame/infodesk/InfodeskHelper;

    invoke-virtual {v2}, Lcom/kakaogame/infodesk/InfodeskHelper;->getAppUpdateStatus()Lcom/kakaogame/infodesk/InfodeskHelper$InfodeskAppUpdateStatus;

    move-result-object v2

    .line 569
    sget-object v3, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v5, v1}, Lcom/kakaogame/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 579
    sget-object v1, Lcom/kakaogame/infodesk/InfodeskHelper;->INSTANCE:Lcom/kakaogame/infodesk/InfodeskHelper;

    invoke-virtual {v1}, Lcom/kakaogame/infodesk/InfodeskHelper;->getMarketUrl()Ljava/lang/String;

    move-result-object v1

    .line 589
    sget-object v3, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v5, v0}, Lcom/kakaogame/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 599
    sget-object v0, Lcom/kakaogame/infodesk/InfodeskHelper$InfodeskAppUpdateStatus;->UPDATE_RECOMMEND:Lcom/kakaogame/infodesk/InfodeskHelper$InfodeskAppUpdateStatus;

    if-ne v2, v0, :cond_1

    .line 609
    invoke-static {}, Lcom/kakaogame/KGAppOption;->getUpdateParam()Lcom/kakaogame/KGAppOption$UpdatePopupParamBuilder;

    move-result-object v0

    .line 619
    invoke-virtual {v0, v1}, Lcom/kakaogame/KGAppOption$UpdatePopupParamBuilder;->setMarketUrl(Ljava/lang/String;)Lcom/kakaogame/KGAppOption$UpdatePopupParamBuilder;

    move-result-object v0

    .line 629
    sget-object v1, Lcom/kakaogame/ui/AppUpdateManager;->INSTANCE:Lcom/kakaogame/ui/AppUpdateManager;

    invoke-virtual {v0}, Lcom/kakaogame/KGAppOption$UpdatePopupParamBuilder;->build()Lcom/kakaogame/KGAppOption$UpdatePopupParamBuilder$UpdatePopupParam;

    move-result-object v0

    const/4 v2, 0x1

    invoke-direct {v1, p0, v0, v2}, Lcom/kakaogame/ui/AppUpdateManager;->showUpdateRecommend(Landroid/app/Activity;Lcom/kakaogame/KGAppOption$UpdatePopupParamBuilder$UpdatePopupParam;Z)Lcom/kakaogame/KGResult;

    move-result-object p0

    goto :goto_0

    .line 639
    :cond_1
    sget-object v0, Lcom/kakaogame/infodesk/InfodeskHelper$InfodeskAppUpdateStatus;->UPDATE_REQUIRED:Lcom/kakaogame/infodesk/InfodeskHelper$InfodeskAppUpdateStatus;

    if-ne v2, v0, :cond_2

    .line 649
    sget-object v0, Lcom/kakaogame/ui/AppUpdateManager;->INSTANCE:Lcom/kakaogame/ui/AppUpdateManager;

    invoke-direct {v0, p0, v1}, Lcom/kakaogame/ui/AppUpdateManager;->showUpdateRequired(Landroid/app/Activity;Ljava/lang/String;)Lcom/kakaogame/KGResult;

    move-result-object p0

    goto :goto_0

    .line 669
    :cond_2
    sget-object p0, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    invoke-virtual {p0}, Lcom/kakaogame/KGResult$Companion;->getSuccessResult()Lcom/kakaogame/KGResult;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 699
    sget-object v0, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v2, p0

    check-cast v2, Ljava/lang/Throwable;

    invoke-virtual {v0, v5, v1, v2}, Lcom/kakaogame/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 709
    sget-object v0, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    const/16 v1, 0xfa1

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Lcom/kakaogame/KGResult$Companion;->getResult(ILjava/lang/String;)Lcom/kakaogame/KGResult;

    move-result-object p0

    :goto_0
    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static final checkUpdateInGame(Landroid/app/Activity;Lcom/kakaogame/KGAppOption$UpdatePopupParamBuilder;)Lcom/kakaogame/KGResult;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lcom/kakaogame/KGAppOption$UpdatePopupParamBuilder;",
            ")",
            "Lcom/kakaogame/KGResult<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const v0, 0x225acede

    invoke-static {v0}, Lcom/liapp/y;->ֲֳگܱޭ(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x6d03daa8

    invoke-static {v1}, Lcom/liapp/y;->ٱڳܴڭܩ(I)Ljava/lang/String;

    move-result-object v1

    if-nez p1, :cond_0

    .line 859
    invoke-static {}, Lcom/kakaogame/KGAppOption;->getUpdateParam()Lcom/kakaogame/KGAppOption$UpdatePopupParamBuilder;

    move-result-object p1

    .line 869
    :cond_0
    sget-object v2, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    const v3, 0x7d7fc11d

    invoke-static {v3}, Lcom/liapp/y;->حֲݴܳޯ(I)Ljava/lang/String;

    move-result-object v3

    const v4, -0x224d0874

    invoke-static {v4}, Lcom/liapp/y;->״دش۲ݮ(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4, v3}, Lcom/kakaogame/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 889
    :try_start_0
    sget-object v2, Lcom/kakaogame/infodesk/InfodeskHelper;->INSTANCE:Lcom/kakaogame/infodesk/InfodeskHelper;

    invoke-virtual {v2}, Lcom/kakaogame/infodesk/InfodeskHelper;->getAppUpdateStatus()Lcom/kakaogame/infodesk/InfodeskHelper$InfodeskAppUpdateStatus;

    move-result-object v2

    .line 899
    sget-object v3, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v4, v1}, Lcom/kakaogame/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 909
    sget-object v1, Lcom/kakaogame/infodesk/InfodeskHelper;->INSTANCE:Lcom/kakaogame/infodesk/InfodeskHelper;

    invoke-virtual {v1}, Lcom/kakaogame/infodesk/InfodeskHelper;->getMarketUrl()Ljava/lang/String;

    move-result-object v1

    .line 919
    sget-object v3, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Lcom/kakaogame/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 939
    sget-object v0, Lcom/kakaogame/infodesk/InfodeskHelper$InfodeskAppUpdateStatus;->UPDATE_RECOMMEND:Lcom/kakaogame/infodesk/InfodeskHelper$InfodeskAppUpdateStatus;

    const/4 v3, 0x1

    const/4 v5, 0x0

    if-ne v2, v0, :cond_1

    .line 949
    invoke-virtual {p1, v1}, Lcom/kakaogame/KGAppOption$UpdatePopupParamBuilder;->setMarketUrl(Ljava/lang/String;)Lcom/kakaogame/KGAppOption$UpdatePopupParamBuilder;

    .line 959
    sget-object v0, Lcom/kakaogame/ui/AppUpdateManager;->INSTANCE:Lcom/kakaogame/ui/AppUpdateManager;

    invoke-virtual {p1}, Lcom/kakaogame/KGAppOption$UpdatePopupParamBuilder;->build()Lcom/kakaogame/KGAppOption$UpdatePopupParamBuilder$UpdatePopupParam;

    move-result-object p1

    invoke-direct {v0, p0, p1, v5}, Lcom/kakaogame/ui/AppUpdateManager;->showUpdateRecommend(Landroid/app/Activity;Lcom/kakaogame/KGAppOption$UpdatePopupParamBuilder$UpdatePopupParam;Z)Lcom/kakaogame/KGResult;

    .line 969
    sget-object p0, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/kakaogame/KGResult$Companion;->getSuccessResult(Ljava/lang/Object;)Lcom/kakaogame/KGResult;

    move-result-object p0

    goto :goto_0

    .line 979
    :cond_1
    sget-object p1, Lcom/kakaogame/infodesk/InfodeskHelper$InfodeskAppUpdateStatus;->UPDATE_REQUIRED:Lcom/kakaogame/infodesk/InfodeskHelper$InfodeskAppUpdateStatus;

    if-ne v2, p1, :cond_2

    .line 989
    sget-object p1, Lcom/kakaogame/ui/AppUpdateManager;->INSTANCE:Lcom/kakaogame/ui/AppUpdateManager;

    invoke-direct {p1, p0, v1}, Lcom/kakaogame/ui/AppUpdateManager;->showUpdateRequired(Landroid/app/Activity;Ljava/lang/String;)Lcom/kakaogame/KGResult;

    .line 999
    sget-object p0, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/kakaogame/KGResult$Companion;->getSuccessResult(Ljava/lang/Object;)Lcom/kakaogame/KGResult;

    move-result-object p0

    goto :goto_0

    .line 1019
    :cond_2
    sget-object p0, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/kakaogame/KGResult$Companion;->getSuccessResult(Ljava/lang/Object;)Lcom/kakaogame/KGResult;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 1049
    sget-object p1, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v1, p0

    check-cast v1, Ljava/lang/Throwable;

    invoke-virtual {p1, v4, v0, v1}, Lcom/kakaogame/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1059
    sget-object p1, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    const/16 v0, 0xfa1

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, v0, p0}, Lcom/kakaogame/KGResult$Companion;->getResult(ILjava/lang/String;)Lcom/kakaogame/KGResult;

    move-result-object p0

    :goto_0
    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static final initialize(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 359
    sput-object p0, Lcom/kakaogame/ui/AppUpdateManager;->appId:Ljava/lang/String;

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method private final showServiceClose(Landroid/app/Activity;)Lcom/kakaogame/KGResult;
    .locals 21
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

    move-object/from16 v0, p1

    .line 1109
    sget-object v1, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    const v2, -0x224d0874

    invoke-static {v2}, Lcom/liapp/y;->״دش۲ݮ(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x5436c0aa

    invoke-static {v3}, Lcom/liapp/y;->׳ֳֳ֬د(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/kakaogame/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1119
    move-object v1, v0

    check-cast v1, Landroid/content/Context;

    sget v2, Lcom/kakaogame/R$string;->zinny_sdk_app_service_status_close:I

    invoke-static {v1, v2}, Lcom/kakaogame/util/ResourceUtil;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v6

    .line 1129
    sget v2, Lcom/kakaogame/R$string;->zinny_sdk_common_button_ok:I

    invoke-static {v1, v2}, Lcom/kakaogame/util/ResourceUtil;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    .line 1139
    sget-object v2, Lcom/kakaogame/core/CoreManager;->Companion:Lcom/kakaogame/core/CoreManager$Companion;

    invoke-virtual {v2}, Lcom/kakaogame/core/CoreManager$Companion;->getInstance()Lcom/kakaogame/core/CoreManager;

    move-result-object v2

    sget-object v3, Lcom/kakaogame/KGCustomUI$KGCustomAlertType;->NOTICE:Lcom/kakaogame/KGCustomUI$KGCustomAlertType;

    invoke-virtual {v2, v3}, Lcom/kakaogame/core/CoreManager;->hasCustomAlertHandler(Lcom/kakaogame/KGCustomUI$KGCustomAlertType;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1149
    sget-object v2, Lcom/kakaogame/core/CoreManager;->Companion:Lcom/kakaogame/core/CoreManager$Companion;

    invoke-virtual {v2}, Lcom/kakaogame/core/CoreManager$Companion;->getInstance()Lcom/kakaogame/core/CoreManager;

    move-result-object v2

    .line 1169
    sget-object v3, Lcom/kakaogame/KGCustomUI$KGCustomAlert;->Companion:Lcom/kakaogame/KGCustomUI$KGCustomAlert$Companion;

    .line 1179
    sget-object v4, Lcom/kakaogame/KGCustomUI$KGCustomAlertType;->NOTICE:Lcom/kakaogame/KGCustomUI$KGCustomAlertType;

    const-string v5, ""

    const-string v7, ""

    const-string v8, ""

    const v10, 0x7d7d00d5

    invoke-static {v10}, Lcom/liapp/y;->حֲݴܳޯ(I)Ljava/lang/String;

    move-result-object v10

    move-object v9, v1

    .line 1169
    invoke-virtual/range {v3 .. v10}, Lcom/kakaogame/KGCustomUI$KGCustomAlert$Companion;->makeAlert(Lcom/kakaogame/KGCustomUI$KGCustomAlertType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/kakaogame/KGCustomUI$KGCustomAlert;

    move-result-object v1

    .line 1149
    invoke-virtual {v2, v0, v1}, Lcom/kakaogame/core/CoreManager;->showCustomUI(Landroid/app/Activity;Lcom/kakaogame/KGCustomUI$KGCustomAlert;)Ljava/lang/String;

    goto :goto_0

    .line 1279
    :cond_0
    sget-object v2, Lcom/kakaogame/util/MutexLock;->Companion:Lcom/kakaogame/util/MutexLock$Companion;

    invoke-virtual {v2}, Lcom/kakaogame/util/MutexLock$Companion;->createLock()Lcom/kakaogame/util/MutexLock;

    move-result-object v2

    .line 1289
    new-instance v15, Lcom/kakaogame/ui/DialogManager$Settings;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x1ffb

    const/16 v19, 0x0

    move-object v3, v15

    move-object/from16 v20, v15

    move-object/from16 v15, v16

    move-object/from16 v16, v17

    move/from16 v17, v18

    move-object/from16 v18, v19

    invoke-direct/range {v3 .. v18}, Lcom/kakaogame/ui/DialogManager$Settings;-><init>(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;ZLandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnCancelListener;Ljava/lang/Integer;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 1299
    new-instance v3, Lcom/kakaogame/ui/AppUpdateManager$$ExternalSyntheticLambda4;

    invoke-direct {v3, v2}, Lcom/kakaogame/ui/AppUpdateManager$$ExternalSyntheticLambda4;-><init>(Lcom/kakaogame/util/MutexLock;)V

    move-object/from16 v4, v20

    invoke-virtual {v4, v1, v3}, Lcom/kakaogame/ui/DialogManager$Settings;->setPositiveButton(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    .line 1309
    sget-object v1, Lcom/kakaogame/ui/DialogManager;->INSTANCE:Lcom/kakaogame/ui/DialogManager;

    invoke-virtual {v1, v0, v4}, Lcom/kakaogame/ui/DialogManager;->showAlertDialog(Landroid/app/Activity;Lcom/kakaogame/ui/DialogManager$Settings;)V

    const/4 v0, 0x1

    const/4 v1, 0x0

    const-wide/16 v3, 0x0

    .line 1319
    invoke-static {v2, v3, v4, v0, v1}, Lcom/kakaogame/util/MutexLock;->lock$default(Lcom/kakaogame/util/MutexLock;JILjava/lang/Object;)V

    .line 1339
    :goto_0
    sget-object v0, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    const/16 v1, 0x26ac

    invoke-virtual {v0, v1}, Lcom/kakaogame/KGResult$Companion;->getResult(I)Lcom/kakaogame/KGResult;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method private static final showServiceClose$lambda$0(Lcom/kakaogame/util/MutexLock;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1299
    invoke-virtual {p0}, Lcom/kakaogame/util/MutexLock;->unlock()V

    return-void

    .array-data 1
    .end array-data
.end method

.method private final showUpdateRecommend(Landroid/app/Activity;Lcom/kakaogame/KGAppOption$UpdatePopupParamBuilder$UpdatePopupParam;Z)Lcom/kakaogame/KGResult;
    .locals 26
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lcom/kakaogame/KGAppOption$UpdatePopupParamBuilder$UpdatePopupParam;",
            "Z)",
            "Lcom/kakaogame/KGResult<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p1

    .line 1989
    sget-object v1, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    const v3, -0x4516adef

    invoke-static {v3}, Lcom/liapp/y;->ڳݬ٬ۮݪ(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Lcom/kakaogame/KGAppOption$UpdatePopupParamBuilder$UpdatePopupParam;->getMarketUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const v3, -0x224d0874

    invoke-static {v3}, Lcom/liapp/y;->״دش۲ݮ(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3, v2}, Lcom/kakaogame/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v0, :cond_0

    .line 2019
    sget-object v0, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    invoke-virtual {v0}, Lcom/kakaogame/KGResult$Companion;->getSuccessResult()Lcom/kakaogame/KGResult;

    move-result-object v0

    return-object v0

    .line 2049
    :cond_0
    new-instance v1, Ljava/text/SimpleDateFormat;

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const v4, 0x6d0119d8

    invoke-static {v4}, Lcom/liapp/y;->ٱڳܴڭܩ(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 2059
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 2069
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    .line 2079
    move-object v2, v0

    check-cast v2, Landroid/content/Context;

    sget-object v4, Lcom/kakaogame/ui/AppUpdateManager;->appId:Ljava/lang/String;

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const v5, -0x4516acf7

    invoke-static {v5}, Lcom/liapp/y;->ڳݬ٬ۮݪ(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {v2, v5, v4, v6}, Lcom/kakaogame/util/PreferenceUtil;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v7, 0x1

    if-eqz v4, :cond_1

    if-eqz p3, :cond_1

    .line 2109
    invoke-static {v4, v1, v7}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2129
    sget-object v0, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    const v1, 0x5436de52

    invoke-static {v1}, Lcom/liapp/y;->׳ֳֳ֬د(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Lcom/kakaogame/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2139
    sget-object v0, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    invoke-virtual {v0}, Lcom/kakaogame/KGResult$Companion;->getSuccessResult()Lcom/kakaogame/KGResult;

    move-result-object v0

    return-object v0

    .line 2199
    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/app/Activity;->isFinishing()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 2209
    sget-object v4, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    const v8, 0x225ad7de

    invoke-static {v8}, Lcom/liapp/y;->ֲֳگܱޭ(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v3, v8}, Lcom/kakaogame/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2219
    sget-object v4, Lcom/kakaogame/core/CoreManager;->Companion:Lcom/kakaogame/core/CoreManager$Companion;

    invoke-virtual {v4}, Lcom/kakaogame/core/CoreManager$Companion;->getInstance()Lcom/kakaogame/core/CoreManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/kakaogame/core/CoreManager;->getActivity()Landroid/app/Activity;

    move-result-object v4

    .line 2229
    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_3

    .line 2239
    invoke-virtual {v4}, Landroid/app/Activity;->isFinishing()Z

    move-result v8

    if-nez v8, :cond_2

    goto :goto_0

    .line 2269
    :cond_2
    sget-object v0, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    invoke-virtual {v0}, Lcom/kakaogame/KGResult$Companion;->getSuccessResult()Lcom/kakaogame/KGResult;

    move-result-object v0

    return-object v0

    .line 2299
    :cond_3
    sget-object v0, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    invoke-virtual {v0}, Lcom/kakaogame/KGResult$Companion;->getSuccessResult()Lcom/kakaogame/KGResult;

    move-result-object v0

    return-object v0

    :cond_4
    move-object v4, v0

    .line 2349
    :goto_0
    sget-object v8, Lcom/kakaogame/ui/AppUpdateManager;->appId:Ljava/lang/String;

    invoke-static {v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {v2, v5, v8, v1}, Lcom/kakaogame/util/PreferenceUtil;->setString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2369
    invoke-virtual/range {p2 .. p2}, Lcom/kakaogame/KGAppOption$UpdatePopupParamBuilder$UpdatePopupParam;->getTitleMessage()Ljava/lang/String;

    move-result-object v12

    .line 2379
    invoke-virtual/range {p2 .. p2}, Lcom/kakaogame/KGAppOption$UpdatePopupParamBuilder$UpdatePopupParam;->getUpdateButton()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 2389
    invoke-virtual/range {p2 .. p2}, Lcom/kakaogame/KGAppOption$UpdatePopupParamBuilder$UpdatePopupParam;->getMarketUrl()Ljava/lang/String;

    move-result-object v2

    .line 2399
    invoke-virtual/range {p2 .. p2}, Lcom/kakaogame/KGAppOption$UpdatePopupParamBuilder$UpdatePopupParam;->getLaterButton()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 2409
    sget-object v8, Lcom/kakaogame/core/CoreManager;->Companion:Lcom/kakaogame/core/CoreManager$Companion;

    invoke-virtual {v8}, Lcom/kakaogame/core/CoreManager$Companion;->getInstance()Lcom/kakaogame/core/CoreManager;

    move-result-object v8

    sget-object v9, Lcom/kakaogame/KGCustomUI$KGCustomAlertType;->NOTICE:Lcom/kakaogame/KGCustomUI$KGCustomAlertType;

    invoke-virtual {v8, v9}, Lcom/kakaogame/core/CoreManager;->hasCustomAlertHandler(Lcom/kakaogame/KGCustomUI$KGCustomAlertType;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 2419
    sget-object v0, Lcom/kakaogame/core/CoreManager;->Companion:Lcom/kakaogame/core/CoreManager$Companion;

    invoke-virtual {v0}, Lcom/kakaogame/core/CoreManager$Companion;->getInstance()Lcom/kakaogame/core/CoreManager;

    move-result-object v0

    .line 2439
    sget-object v9, Lcom/kakaogame/KGCustomUI$KGCustomAlert;->Companion:Lcom/kakaogame/KGCustomUI$KGCustomAlert$Companion;

    .line 2449
    sget-object v10, Lcom/kakaogame/KGCustomUI$KGCustomAlertType;->NOTICE:Lcom/kakaogame/KGCustomUI$KGCustomAlertType;

    const-string v11, ""

    const v14, 0x3364e3ab

    invoke-static {v14}, Lcom/liapp/y;->ׯ״ٲ֬ب(I)Ljava/lang/String;

    move-result-object v14

    move-object v13, v5

    move-object v15, v1

    move-object/from16 v16, v2

    .line 2439
    invoke-virtual/range {v9 .. v16}, Lcom/kakaogame/KGCustomUI$KGCustomAlert$Companion;->makeAlert(Lcom/kakaogame/KGCustomUI$KGCustomAlertType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/kakaogame/KGCustomUI$KGCustomAlert;

    move-result-object v1

    .line 2419
    invoke-virtual {v0, v4, v1}, Lcom/kakaogame/core/CoreManager;->showCustomUI(Landroid/app/Activity;Lcom/kakaogame/KGCustomUI$KGCustomAlert;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 2549
    :cond_5
    sget-object v8, Lcom/kakaogame/util/MutexLock;->Companion:Lcom/kakaogame/util/MutexLock$Companion;

    invoke-virtual {v8}, Lcom/kakaogame/util/MutexLock$Companion;->createLock()Lcom/kakaogame/util/MutexLock;

    move-result-object v8

    .line 2559
    new-instance v15, Lcom/kakaogame/ui/DialogManager$Settings;

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x1

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x1efb

    const/16 v25, 0x0

    move-object v9, v15

    move-object v6, v15

    move-object/from16 v15, v16

    move-object/from16 v16, v17

    move-object/from16 v17, v18

    move/from16 v18, v19

    move-object/from16 v19, v20

    move-object/from16 v20, v21

    move-object/from16 v21, v22

    move-object/from16 v22, v23

    move/from16 v23, v24

    move-object/from16 v24, v25

    invoke-direct/range {v9 .. v24}, Lcom/kakaogame/ui/DialogManager$Settings;-><init>(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;ZLandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnCancelListener;Ljava/lang/Integer;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 2569
    new-instance v9, Lcom/kakaogame/ui/AppUpdateManager$$ExternalSyntheticLambda0;

    invoke-direct {v9, v8, v2}, Lcom/kakaogame/ui/AppUpdateManager$$ExternalSyntheticLambda0;-><init>(Lcom/kakaogame/util/MutexLock;Ljava/lang/String;)V

    invoke-virtual {v6, v1, v9}, Lcom/kakaogame/ui/DialogManager$Settings;->setPositiveButton(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    .line 2609
    new-instance v1, Lcom/kakaogame/ui/AppUpdateManager$$ExternalSyntheticLambda1;

    invoke-direct {v1, v8}, Lcom/kakaogame/ui/AppUpdateManager$$ExternalSyntheticLambda1;-><init>(Lcom/kakaogame/util/MutexLock;)V

    invoke-virtual {v6, v5, v1}, Lcom/kakaogame/ui/DialogManager$Settings;->setNegativeButton(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    .line 2649
    new-instance v1, Lcom/kakaogame/ui/AppUpdateManager$$ExternalSyntheticLambda2;

    invoke-direct {v1, v8}, Lcom/kakaogame/ui/AppUpdateManager$$ExternalSyntheticLambda2;-><init>(Lcom/kakaogame/util/MutexLock;)V

    invoke-virtual {v6, v1}, Lcom/kakaogame/ui/DialogManager$Settings;->setCancelable(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 2689
    sget-object v1, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    const v2, 0x6d03c208

    invoke-static {v2}, Lcom/liapp/y;->ٱڳܴڭܩ(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Lcom/kakaogame/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2699
    sget-object v1, Lcom/kakaogame/ui/DialogManager;->INSTANCE:Lcom/kakaogame/ui/DialogManager;

    invoke-virtual {v1, v0, v6}, Lcom/kakaogame/ui/DialogManager;->showAlertDialog(Landroid/app/Activity;Lcom/kakaogame/ui/DialogManager$Settings;)V

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    .line 2709
    invoke-static {v8, v0, v1, v7, v2}, Lcom/kakaogame/util/MutexLock;->lock$default(Lcom/kakaogame/util/MutexLock;JILjava/lang/Object;)V

    .line 2719
    invoke-virtual {v8}, Lcom/kakaogame/util/MutexLock;->getContent()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :goto_1
    const v1, 0x3364e3ab

    invoke-static {v1}, Lcom/liapp/y;->ׯ״ٲ֬ب(I)Ljava/lang/String;

    move-result-object v1

    .line 2739
    invoke-static {v0, v1, v7}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 2749
    sget-object v0, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    invoke-virtual {v0}, Lcom/kakaogame/KGResult$Companion;->getSuccessResult()Lcom/kakaogame/KGResult;

    move-result-object v0

    return-object v0

    .line 2769
    :cond_6
    check-cast v4, Landroid/content/Context;

    invoke-static {v4, v0}, Lcom/kakaogame/util/AppUtil;->launchViewer(Landroid/content/Context;Ljava/lang/String;)V

    .line 2779
    sget-object v0, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    invoke-virtual {v0}, Lcom/kakaogame/KGResult$Companion;->getSuccessResult()Lcom/kakaogame/KGResult;

    move-result-object v0

    return-object v0

    .array-data 1
    .end array-data
.end method

.method private static final showUpdateRecommend$lambda$2(Lcom/kakaogame/util/MutexLock;Ljava/lang/String;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 2579
    invoke-virtual {p0, p1}, Lcom/kakaogame/util/MutexLock;->setContent(Ljava/lang/Object;)V

    .line 2589
    invoke-virtual {p0}, Lcom/kakaogame/util/MutexLock;->unlock()V

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method private static final showUpdateRecommend$lambda$3(Lcom/kakaogame/util/MutexLock;Landroid/content/DialogInterface;I)V
    .locals 0

    const-string p1, "customUI_close"

    .line 2619
    invoke-virtual {p0, p1}, Lcom/kakaogame/util/MutexLock;->setContent(Ljava/lang/Object;)V

    .line 2629
    invoke-virtual {p0}, Lcom/kakaogame/util/MutexLock;->unlock()V

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method private static final showUpdateRecommend$lambda$4(Lcom/kakaogame/util/MutexLock;Landroid/content/DialogInterface;)V
    .locals 0

    const-string p1, "customUI_close"

    .line 2659
    invoke-virtual {p0, p1}, Lcom/kakaogame/util/MutexLock;->setContent(Ljava/lang/Object;)V

    .line 2669
    invoke-virtual {p0}, Lcom/kakaogame/util/MutexLock;->unlock()V

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method private final showUpdateRequired(Landroid/app/Activity;Ljava/lang/String;)Lcom/kakaogame/KGResult;
    .locals 27
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

    move-object/from16 v8, p2

    .line 1379
    sget-object v1, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    const v3, 0x5436dbaa

    invoke-static {v3}, Lcom/liapp/y;->׳ֳֳ֬د(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const v3, -0x224d0874

    invoke-static {v3}, Lcom/liapp/y;->״دش۲ݮ(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3, v2}, Lcom/kakaogame/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v0, :cond_0

    .line 1409
    sget-object v0, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    const/16 v1, 0xfa2

    invoke-virtual {v0, v1}, Lcom/kakaogame/KGResult$Companion;->getResult(I)Lcom/kakaogame/KGResult;

    move-result-object v0

    return-object v0

    .line 1459
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    const/16 v9, 0x26ac

    if-eqz v1, :cond_3

    .line 1469
    sget-object v1, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    const v2, 0x7d7fd955

    invoke-static {v2}, Lcom/liapp/y;->حֲݴܳޯ(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Lcom/kakaogame/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1479
    sget-object v1, Lcom/kakaogame/core/CoreManager;->Companion:Lcom/kakaogame/core/CoreManager$Companion;

    invoke-virtual {v1}, Lcom/kakaogame/core/CoreManager$Companion;->getInstance()Lcom/kakaogame/core/CoreManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/kakaogame/core/CoreManager;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 1489
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 1499
    invoke-virtual {v1}, Landroid/app/Activity;->isFinishing()Z

    move-result v2

    if-nez v2, :cond_1

    move-object v10, v1

    goto :goto_0

    .line 1529
    :cond_1
    check-cast v0, Landroid/content/Context;

    invoke-static/range {p2 .. p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {v0, v8}, Lcom/kakaogame/util/AppUtil;->launchApp(Landroid/content/Context;Ljava/lang/String;)Z

    .line 1539
    sget-object v0, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    invoke-virtual {v0, v9}, Lcom/kakaogame/KGResult$Companion;->getResult(I)Lcom/kakaogame/KGResult;

    move-result-object v0

    return-object v0

    .line 1569
    :cond_2
    check-cast v0, Landroid/content/Context;

    invoke-static/range {p2 .. p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {v0, v8}, Lcom/kakaogame/util/AppUtil;->launchApp(Landroid/content/Context;Ljava/lang/String;)Z

    .line 1579
    sget-object v0, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    invoke-virtual {v0, v9}, Lcom/kakaogame/KGResult$Companion;->getResult(I)Lcom/kakaogame/KGResult;

    move-result-object v0

    return-object v0

    :cond_3
    move-object v10, v0

    .line 1609
    :goto_0
    sget-object v1, Lcom/kakaogame/core/CoreManager;->Companion:Lcom/kakaogame/core/CoreManager$Companion;

    const v2, 0x5d1ff2ff

    invoke-static {v2}, Lcom/liapp/y;->ڴݮگ֮ت(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/kakaogame/core/CoreManager$Companion;->getResourceString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 1619
    move-object v1, v0

    check-cast v1, Landroid/content/Context;

    sget v2, Lcom/kakaogame/R$string;->zinny_sdk_app_update_button_now:I

    invoke-static {v1, v2}, Lcom/kakaogame/util/ResourceUtil;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v6

    .line 1629
    sget-object v1, Lcom/kakaogame/core/CoreManager;->Companion:Lcom/kakaogame/core/CoreManager$Companion;

    invoke-virtual {v1}, Lcom/kakaogame/core/CoreManager$Companion;->getInstance()Lcom/kakaogame/core/CoreManager;

    move-result-object v1

    sget-object v2, Lcom/kakaogame/KGCustomUI$KGCustomAlertType;->NOTICE:Lcom/kakaogame/KGCustomUI$KGCustomAlertType;

    invoke-virtual {v1, v2}, Lcom/kakaogame/core/CoreManager;->hasCustomAlertHandler(Lcom/kakaogame/KGCustomUI$KGCustomAlertType;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1639
    sget-object v0, Lcom/kakaogame/core/CoreManager;->Companion:Lcom/kakaogame/core/CoreManager$Companion;

    invoke-virtual {v0}, Lcom/kakaogame/core/CoreManager$Companion;->getInstance()Lcom/kakaogame/core/CoreManager;

    move-result-object v11

    .line 1659
    sget-object v0, Lcom/kakaogame/KGCustomUI$KGCustomAlert;->Companion:Lcom/kakaogame/KGCustomUI$KGCustomAlert$Companion;

    .line 1669
    sget-object v1, Lcom/kakaogame/KGCustomUI$KGCustomAlertType;->NOTICE:Lcom/kakaogame/KGCustomUI$KGCustomAlertType;

    const-string v2, ""

    const-string v4, ""

    const-string v5, ""

    move-object v3, v14

    move-object/from16 v7, p2

    .line 1659
    invoke-virtual/range {v0 .. v7}, Lcom/kakaogame/KGCustomUI$KGCustomAlert$Companion;->makeAlert(Lcom/kakaogame/KGCustomUI$KGCustomAlertType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/kakaogame/KGCustomUI$KGCustomAlert;

    move-result-object v0

    .line 1639
    invoke-virtual {v11, v10, v0}, Lcom/kakaogame/core/CoreManager;->showCustomUI(Landroid/app/Activity;Lcom/kakaogame/KGCustomUI$KGCustomAlert;)Ljava/lang/String;

    goto :goto_1

    .line 1769
    :cond_4
    sget-object v1, Lcom/kakaogame/util/MutexLock;->Companion:Lcom/kakaogame/util/MutexLock$Companion;

    invoke-virtual {v1}, Lcom/kakaogame/util/MutexLock$Companion;->createLock()Lcom/kakaogame/util/MutexLock;

    move-result-object v1

    .line 1779
    new-instance v2, Lcom/kakaogame/ui/DialogManager$Settings;

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x1ffb

    const/16 v26, 0x0

    move-object v11, v2

    invoke-direct/range {v11 .. v26}, Lcom/kakaogame/ui/DialogManager$Settings;-><init>(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;ZLandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnCancelListener;Ljava/lang/Integer;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 1789
    new-instance v3, Lcom/kakaogame/ui/AppUpdateManager$$ExternalSyntheticLambda3;

    invoke-direct {v3, v1}, Lcom/kakaogame/ui/AppUpdateManager$$ExternalSyntheticLambda3;-><init>(Lcom/kakaogame/util/MutexLock;)V

    invoke-virtual {v2, v6, v3}, Lcom/kakaogame/ui/DialogManager$Settings;->setPositiveButton(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    .line 1799
    sget-object v3, Lcom/kakaogame/ui/DialogManager;->INSTANCE:Lcom/kakaogame/ui/DialogManager;

    invoke-virtual {v3, v0, v2}, Lcom/kakaogame/ui/DialogManager;->showAlertDialog(Landroid/app/Activity;Lcom/kakaogame/ui/DialogManager$Settings;)V

    const/4 v0, 0x1

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    .line 1809
    invoke-static {v1, v3, v4, v0, v2}, Lcom/kakaogame/util/MutexLock;->lock$default(Lcom/kakaogame/util/MutexLock;JILjava/lang/Object;)V

    .line 1829
    :goto_1
    check-cast v10, Landroid/content/Context;

    invoke-static/range {p2 .. p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {v10, v8}, Lcom/kakaogame/util/AppUtil;->launchApp(Landroid/content/Context;Ljava/lang/String;)Z

    .line 1839
    sget-object v0, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    invoke-virtual {v0, v9}, Lcom/kakaogame/KGResult$Companion;->getResult(I)Lcom/kakaogame/KGResult;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method private static final showUpdateRequired$lambda$1(Lcom/kakaogame/util/MutexLock;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1789
    invoke-virtual {p0}, Lcom/kakaogame/util/MutexLock;->unlock()V

    return-void

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public final clearPreference(Landroid/content/Context;)V
    .locals 3

    :try_start_0
    const-string v0, "KakaoSDK_AppUpdateRecommDate"

    .line 409
    invoke-static {p1, v0}, Lcom/kakaogame/util/PreferenceUtil;->remove(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 429
    sget-object v0, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    check-cast p1, Ljava/lang/Throwable;

    const v2, -0x224d0874

    invoke-static {v2}, Lcom/liapp/y;->״دش۲ݮ(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1, p1}, Lcom/kakaogame/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void

    .array-data 1
    .end array-data
.end method
