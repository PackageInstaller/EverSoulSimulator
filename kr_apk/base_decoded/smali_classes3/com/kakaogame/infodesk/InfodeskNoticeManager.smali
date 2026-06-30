.class public final Lcom/kakaogame/infodesk/InfodeskNoticeManager;
.super Ljava/lang/Object;
.source "InfodeskNoticeManager.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000b\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0012\u0010\n\u001a\u00020\u000b2\u0008\u0010\u000c\u001a\u0004\u0018\u00010\u0005H\u0007J\u0010\u0010\r\u001a\u00020\u000b2\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u000fJ\u0018\u0010\u0010\u001a\u00020\u000b2\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u0014H\u0007J \u0010\u0015\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00170\u00162\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u0014H\u0007J \u0010\u0018\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00170\u00162\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u0014H\u0007J \u0010\u0019\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00170\u00162\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u001a\u001a\u00020\u001bH\u0002J\u001a\u0010\u001c\u001a\u00020\u00052\u0008\u0010\u001d\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u001e\u001a\u00020\u001fH\u0002J(\u0010 \u001a\n\u0012\u0006\u0012\u0004\u0018\u00010!0\u00162\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\"\u001a\u00020#2\u0008\u0010$\u001a\u0004\u0018\u00010\u0005J\u001e\u0010\u0015\u001a\u00020\u000b2\u0006\u0010\u0011\u001a\u00020\u00122\u000c\u0010%\u001a\u0008\u0012\u0004\u0012\u00020\'0&H\u0002R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0005X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u0010\u0010\t\u001a\u0004\u0018\u00010\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006("
    }
    d2 = {
        "Lcom/kakaogame/infodesk/InfodeskNoticeManager;",
        "",
        "<init>",
        "()V",
        "TAG",
        "",
        "PREF_NAME",
        "Notice_RemainTimeKey",
        "Notice_RemainTimeHourKey",
        "appId",
        "initialize",
        "",
        "applicationId",
        "clearPreference",
        "context",
        "Landroid/content/Context;",
        "showAlarms",
        "activity",
        "Landroid/app/Activity;",
        "infodesk",
        "Lcom/kakaogame/infodesk/InfodeskData;",
        "showNotices",
        "Lcom/kakaogame/KGResult;",
        "Ljava/lang/Void;",
        "showTerminateNoticeOnRefreshInfodesk",
        "showNotice",
        "notice",
        "Lcom/kakaogame/infodesk/InfodeskData$KGInfodeskNotice;",
        "getNoticeDisplayMessage",
        "message",
        "periodEndTime",
        "",
        "getGameServerMaintenance",
        "Lcom/kakaogame/KGApplication$KGGameServerMaintenanceResponse;",
        "showUI",
        "",
        "gameServerId",
        "noticeList",
        "",
        "Lcom/kakaogame/KGGameNoticeInfo;",
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
.field public static final INSTANCE:Lcom/kakaogame/infodesk/InfodeskNoticeManager;

.field public static final Notice_RemainTimeHourKey:Ljava/lang/String; = "${remain_total_hour}"

.field public static final Notice_RemainTimeKey:Ljava/lang/String; = "${remain_total_minute}"

.field private static final PREF_NAME:Ljava/lang/String; = "KakaoGameSDK_InfodeskNoticeDate"

.field private static final TAG:Ljava/lang/String; = "InfodeskNoticeManager"

.field private static appId:Ljava/lang/String;


# direct methods
.method public static synthetic $r8$lambda$7l4pugT0P74ILw7OutmpYnkVXPI(Lcom/kakaogame/infodesk/InfodeskData$KGInfodeskNotice;Lcom/kakaogame/util/MutexLock;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/kakaogame/infodesk/InfodeskNoticeManager;->showNotice$lambda$0(Lcom/kakaogame/infodesk/InfodeskData$KGInfodeskNotice;Lcom/kakaogame/util/MutexLock;Landroid/content/DialogInterface;I)V

    return-void

    .array-data 1
    .end array-data
.end method

.method public static synthetic $r8$lambda$Acu0_yLfwMvnOuDGbKnoz_HnzR4(Lcom/kakaogame/util/MutexLock;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/kakaogame/infodesk/InfodeskNoticeManager;->showNotices$lambda$3(Lcom/kakaogame/util/MutexLock;Landroid/content/DialogInterface;I)V

    return-void

    .array-data 1
    .end array-data
.end method

.method public static synthetic $r8$lambda$DZvlRehnTJGsYnIZrCHKZolNrrE(Lcom/kakaogame/util/MutexLock;Ljava/lang/String;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/kakaogame/infodesk/InfodeskNoticeManager;->showNotice$lambda$1(Lcom/kakaogame/util/MutexLock;Ljava/lang/String;Landroid/content/DialogInterface;I)V

    return-void

    .array-data 1
    .end array-data
.end method

.method public static synthetic $r8$lambda$eBv4BNbDcvHSrYqPriKCS0OGfiA(Lcom/kakaogame/util/MutexLock;Lcom/kakaogame/KGGameNoticeInfo;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/kakaogame/infodesk/InfodeskNoticeManager;->showNotices$lambda$4(Lcom/kakaogame/util/MutexLock;Lcom/kakaogame/KGGameNoticeInfo;Landroid/content/DialogInterface;I)V

    return-void

    .array-data 1
    .end array-data
.end method

.method public static synthetic $r8$lambda$k_woBn5kkjhmR0bsPZmoUj4Lv3A(Lcom/kakaogame/util/MutexLock;Landroid/content/DialogInterface;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/kakaogame/infodesk/InfodeskNoticeManager;->showNotices$lambda$5(Lcom/kakaogame/util/MutexLock;Landroid/content/DialogInterface;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method public static synthetic $r8$lambda$pMH70ZLwx23SExRv3GdeJJKwX0w(Lcom/kakaogame/util/MutexLock;Landroid/content/DialogInterface;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/kakaogame/infodesk/InfodeskNoticeManager;->showNotice$lambda$2(Lcom/kakaogame/util/MutexLock;Landroid/content/DialogInterface;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/kakaogame/infodesk/InfodeskNoticeManager;

    invoke-direct {v0}, Lcom/kakaogame/infodesk/InfodeskNoticeManager;-><init>()V

    sput-object v0, Lcom/kakaogame/infodesk/InfodeskNoticeManager;->INSTANCE:Lcom/kakaogame/infodesk/InfodeskNoticeManager;

    return-void

    .array-data 1
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .line 329
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void

    .array-data 1
    .end array-data
.end method

.method private final getNoticeDisplayMessage(Ljava/lang/String;J)Ljava/lang/String;
    .locals 16

    move-object/from16 v0, p1

    .line 2599
    move-object v1, v0

    check-cast v1, Ljava/lang/CharSequence;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v3

    goto :goto_1

    :cond_1
    :goto_0
    move v1, v2

    :goto_1
    if-eqz v1, :cond_2

    const-string v0, ""

    goto/16 :goto_2

    .line 2609
    :cond_2
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    const v4, 0x3360472b

    invoke-static {v4}, Lcom/liapp/y;->ׯ״ٲ֬ب(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    const v5, 0x6d0bd780

    invoke-static {v5}, Lcom/liapp/y;->ٱڳܴڭܩ(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/lang/CharSequence;

    const v6, 0x22580076

    invoke-static {v6}, Lcom/liapp/y;->ֲֳگܱޭ(I)Ljava/lang/String;

    move-result-object v6

    move-object v7, v6

    check-cast v7, Ljava/lang/CharSequence;

    const/4 v8, 0x2

    const/4 v9, 0x0

    invoke-static {v1, v7, v3, v8, v9}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 2629
    sget-object v1, Lcom/kakaogame/core/CoreManager;->Companion:Lcom/kakaogame/core/CoreManager$Companion;

    invoke-virtual {v1}, Lcom/kakaogame/core/CoreManager$Companion;->getInstance()Lcom/kakaogame/core/CoreManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/kakaogame/core/CoreManager;->currentTimeMillis()J

    move-result-wide v10

    sub-long v10, p2, v10

    const/16 v1, 0x3e8

    int-to-long v12, v1

    .line 2639
    div-long/2addr v10, v12

    const/16 v1, 0x3c

    int-to-long v12, v1

    div-long/2addr v10, v12

    const-wide/16 v14, 0x1

    add-long/2addr v10, v14

    .line 2659
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/lang/CharSequence;

    const v4, 0x225803b6

    invoke-static {v4}, Lcom/liapp/y;->ֲֳگܱޭ(I)Ljava/lang/String;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Ljava/lang/CharSequence;

    invoke-static {v1, v5, v3, v8, v9}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2669
    rem-long v7, v10, v12

    sub-long/2addr v10, v7

    .line 2679
    div-long/2addr v10, v12

    const v1, 0x6d0116c8

    invoke-static {v1}, Lcom/liapp/y;->ٱڳܴڭܩ(I)Ljava/lang/String;

    move-result-object v1

    .line 2689
    invoke-static {v0, v4, v1}, Lcom/kakaogame/util/StringUtil;->replaceString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2699
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v5, v2, [Ljava/lang/Object;

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v5, v3

    invoke-static {v4, v0, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 2709
    invoke-static {v0, v6, v1}, Lcom/kakaogame/util/StringUtil;->replaceString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2719
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v0, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 2659
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    goto :goto_2

    .line 2739
    :cond_3
    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v6, v1}, Lcom/kakaogame/util/StringUtil;->replaceString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_4
    :goto_2
    return-object v0

    .array-data 1
    .end array-data
.end method

.method public static final initialize(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 419
    sput-object p0, Lcom/kakaogame/infodesk/InfodeskNoticeManager;->appId:Ljava/lang/String;

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public static final showAlarms(Landroid/app/Activity;Lcom/kakaogame/infodesk/InfodeskData;)V
    .locals 12
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const v0, 0x7d7d0855

    invoke-static {v0}, Lcom/liapp/y;->حֲݴܳޯ(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x543d14da

    invoke-static {v1}, Lcom/liapp/y;->׳ֳֳ֬د(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const v1, -0x45146467

    invoke-static {v1}, Lcom/liapp/y;->ڳݬ٬ۮݪ(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 559
    :try_start_0
    sget-object v1, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    const-string v2, "showAlarms"

    invoke-virtual {v1, v0, v2}, Lcom/kakaogame/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 569
    invoke-virtual {p1}, Lcom/kakaogame/infodesk/InfodeskData;->getAlarms()Ljava/util/List;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 579
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/kakaogame/infodesk/InfodeskData$KGInfodeskAlarm;

    .line 589
    invoke-virtual {v1}, Lcom/kakaogame/infodesk/InfodeskData$KGInfodeskAlarm;->getNotificationId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 599
    invoke-virtual {v1}, Lcom/kakaogame/infodesk/InfodeskData$KGInfodeskAlarm;->isCancel()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 619
    sget-object p0, Lcom/kakaogame/core/CoreManager;->Companion:Lcom/kakaogame/core/CoreManager$Companion;

    invoke-virtual {p0}, Lcom/kakaogame/core/CoreManager$Companion;->getInstance()Lcom/kakaogame/core/CoreManager;

    move-result-object p0

    invoke-virtual {p0, v4}, Lcom/kakaogame/core/CoreManager;->stopOnlineAlarmTimer(Ljava/lang/String;)V

    return-void

    .line 649
    :cond_2
    invoke-virtual {v1}, Lcom/kakaogame/infodesk/InfodeskData$KGInfodeskAlarm;->getStartTime()J

    move-result-wide v8

    .line 659
    invoke-virtual {v1}, Lcom/kakaogame/infodesk/InfodeskData$KGInfodeskAlarm;->getEndTime()J

    move-result-wide v10

    .line 669
    sget-object v2, Lcom/kakaogame/core/CoreManager;->Companion:Lcom/kakaogame/core/CoreManager$Companion;

    invoke-virtual {v2}, Lcom/kakaogame/core/CoreManager$Companion;->getInstance()Lcom/kakaogame/core/CoreManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/kakaogame/core/CoreManager;->currentTimeMillis()J

    move-result-wide v2

    sub-long v2, v10, v2

    .line 689
    invoke-virtual {v1}, Lcom/kakaogame/infodesk/InfodeskData$KGInfodeskAlarm;->getInterval()J

    move-result-wide v6

    .line 699
    invoke-virtual {v1}, Lcom/kakaogame/infodesk/InfodeskData$KGInfodeskAlarm;->getObject()Ljava/util/Map;

    move-result-object v1

    invoke-static {v1}, Lcom/kakaogame/push/OnlinePushManager;->getMessage(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    cmp-long v1, v2, v6

    if-lez v1, :cond_1

    .line 719
    sget-object v1, Lcom/kakaogame/core/CoreManager;->Companion:Lcom/kakaogame/core/CoreManager$Companion;

    invoke-virtual {v1}, Lcom/kakaogame/core/CoreManager$Companion;->getInstance()Lcom/kakaogame/core/CoreManager;

    move-result-object v2

    move-object v3, p0

    invoke-virtual/range {v2 .. v11}, Lcom/kakaogame/core/CoreManager;->startOnlineAlarmTimer(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;JJJ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 759
    sget-object p1, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    check-cast p0, Ljava/lang/Throwable;

    invoke-virtual {p1, v0, v1, p0}, Lcom/kakaogame/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_3
    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method private final showNotice(Landroid/app/Activity;Lcom/kakaogame/infodesk/InfodeskData$KGInfodeskNotice;)Lcom/kakaogame/KGResult;
    .locals 32
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lcom/kakaogame/infodesk/InfodeskData$KGInfodeskNotice;",
            ")",
            "Lcom/kakaogame/KGResult<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    .line 1489
    sget-object v2, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    const v4, 0x5d1d22c7

    invoke-static {v4}, Lcom/liapp/y;->ڴݮگ֮ت(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const v4, 0x7d7d0855

    invoke-static {v4}, Lcom/liapp/y;->حֲݴܳޯ(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4, v3}, Lcom/kakaogame/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1529
    new-instance v2, Ljava/text/SimpleDateFormat;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    const v5, 0x6d0119d8

    invoke-static {v5}, Lcom/liapp/y;->ٱڳܴڭܩ(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v5, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 1539
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 1549
    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    .line 1559
    invoke-virtual/range {p2 .. p2}, Lcom/kakaogame/infodesk/InfodeskData$KGInfodeskNotice;->getNoticeId()Ljava/lang/String;

    move-result-object v3

    .line 1569
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lcom/kakaogame/infodesk/InfodeskNoticeManager;->appId:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v6, 0x5f

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1579
    move-object v5, v0

    check-cast v5, Landroid/content/Context;

    const v6, 0x7d7d04ed

    invoke-static {v6}, Lcom/liapp/y;->حֲݴܳޯ(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-static {v5, v6, v3, v7}, Lcom/kakaogame/util/PreferenceUtil;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    if-eqz v8, :cond_1

    .line 1599
    invoke-virtual/range {p2 .. p2}, Lcom/kakaogame/infodesk/InfodeskData$KGInfodeskNotice;->getDisplayRule()Lcom/kakaogame/infodesk/InfodeskData$KGInfodeskNotice$InfodeskNoticeDisplayRule;

    move-result-object v10

    .line 1609
    sget-object v11, Lcom/kakaogame/infodesk/InfodeskData$KGInfodeskNotice$InfodeskNoticeDisplayRule;->ONCE:Lcom/kakaogame/infodesk/InfodeskData$KGInfodeskNotice$InfodeskNoticeDisplayRule;

    if-ne v10, v11, :cond_0

    .line 1619
    sget-object v0, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    const v1, 0x6d011880

    invoke-static {v1}, Lcom/liapp/y;->ٱڳܴڭܩ(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v4, v1}, Lcom/kakaogame/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1629
    sget-object v0, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    invoke-virtual {v0}, Lcom/kakaogame/KGResult$Companion;->getSuccessResult()Lcom/kakaogame/KGResult;

    move-result-object v0

    return-object v0

    .line 1639
    :cond_0
    sget-object v11, Lcom/kakaogame/infodesk/InfodeskData$KGInfodeskNotice$InfodeskNoticeDisplayRule;->DAILY:Lcom/kakaogame/infodesk/InfodeskData$KGInfodeskNotice$InfodeskNoticeDisplayRule;

    if-ne v10, v11, :cond_1

    .line 1649
    invoke-static {v8, v2, v9}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 1659
    sget-object v0, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    const v1, -0x224fcf4c

    invoke-static {v1}, Lcom/liapp/y;->״دش۲ݮ(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v4, v1}, Lcom/kakaogame/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1669
    sget-object v0, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    invoke-virtual {v0}, Lcom/kakaogame/KGResult$Companion;->getSuccessResult()Lcom/kakaogame/KGResult;

    move-result-object v0

    return-object v0

    :cond_1
    const v8, 0x33633273

    invoke-static {v8}, Lcom/liapp/y;->ׯ״ٲ֬ب(I)Ljava/lang/String;

    move-result-object v8

    .line 1709
    invoke-virtual {v1, v8}, Lcom/kakaogame/infodesk/InfodeskData$KGInfodeskNotice;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    const v11, 0x7d7197bd

    invoke-static {v11}, Lcom/liapp/y;->حֲݴܳޯ(I)Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    const-wide/16 v12, 0x0

    if-eqz v10, :cond_3

    const v10, 0x6d011af0

    invoke-static {v10}, Lcom/liapp/y;->ٱڳܴڭܩ(I)Ljava/lang/String;

    move-result-object v10

    .line 1719
    invoke-virtual {v1, v10}, Lcom/kakaogame/infodesk/InfodeskData$KGInfodeskNotice;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Number;

    if-eqz v10, :cond_2

    invoke-virtual {v10}, Ljava/lang/Number;->longValue()J

    move-result-wide v14

    goto :goto_0

    :cond_2
    move-wide v14, v12

    .line 1729
    :goto_0
    invoke-virtual/range {p2 .. p2}, Lcom/kakaogame/infodesk/InfodeskData$KGInfodeskNotice;->getMessage()Ljava/lang/String;

    move-result-object v10

    move-object/from16 v7, p0

    invoke-direct {v7, v10, v14, v15}, Lcom/kakaogame/infodesk/InfodeskNoticeManager;->getNoticeDisplayMessage(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v10

    goto :goto_1

    :cond_3
    move-object/from16 v7, p0

    .line 1749
    invoke-virtual/range {p2 .. p2}, Lcom/kakaogame/infodesk/InfodeskData$KGInfodeskNotice;->getMessage()Ljava/lang/String;

    move-result-object v10

    :goto_1
    move-object/from16 v19, v10

    .line 1769
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {v5, v6, v3, v2}, Lcom/kakaogame/util/PreferenceUtil;->setString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1789
    invoke-virtual/range {p2 .. p2}, Lcom/kakaogame/infodesk/InfodeskData$KGInfodeskNotice;->getLink()Ljava/lang/String;

    move-result-object v2

    .line 1799
    sget v3, Lcom/kakaogame/R$string;->zinny_sdk_common_button_ok:I

    invoke-static {v5, v3}, Lcom/kakaogame/util/ResourceUtil;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v3

    .line 1809
    sget v6, Lcom/kakaogame/R$string;->zinny_sdk_common_button_detail:I

    invoke-static {v5, v6}, Lcom/kakaogame/util/ResourceUtil;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v6

    .line 1819
    sget-object v10, Lcom/kakaogame/KGCustomUI$KGCustomAlertType;->NOTICE:Lcom/kakaogame/KGCustomUI$KGCustomAlertType;

    .line 1829
    invoke-virtual {v1, v8}, Lcom/kakaogame/infodesk/InfodeskData$KGInfodeskNotice;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    invoke-static {v8, v11}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 1839
    sget-object v8, Lcom/kakaogame/KGCustomUI$KGCustomAlertType;->MAINTENANCE:Lcom/kakaogame/KGCustomUI$KGCustomAlertType;

    goto :goto_2

    :cond_4
    move-object v8, v10

    .line 1859
    :goto_2
    sget-object v10, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    .line 1869
    sget-object v11, Lcom/kakaogame/core/CoreManager;->Companion:Lcom/kakaogame/core/CoreManager$Companion;

    invoke-virtual {v11}, Lcom/kakaogame/core/CoreManager$Companion;->getInstance()Lcom/kakaogame/core/CoreManager;

    move-result-object v11

    invoke-virtual {v11, v8}, Lcom/kakaogame/core/CoreManager;->hasCustomAlertHandler(Lcom/kakaogame/KGCustomUI$KGCustomAlertType;)Z

    move-result v11

    if-eqz v11, :cond_5

    const v11, 0x22546766

    invoke-static {v11}, Lcom/liapp/y;->ֲֳگܱޭ(I)Ljava/lang/String;

    move-result-object v11

    goto :goto_3

    :cond_5
    const v11, -0x2247ce84

    invoke-static {v11}, Lcom/liapp/y;->״دش۲ݮ(I)Ljava/lang/String;

    move-result-object v11

    :goto_3
    const v14, -0x45146887

    invoke-static {v14}, Lcom/liapp/y;->ڳݬ٬ۮݪ(I)Ljava/lang/String;

    move-result-object v14

    .line 1859
    invoke-virtual {v14, v11}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v4, v11}, Lcom/kakaogame/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1879
    sget-object v4, Lcom/kakaogame/core/CoreManager;->Companion:Lcom/kakaogame/core/CoreManager$Companion;

    invoke-virtual {v4}, Lcom/kakaogame/core/CoreManager$Companion;->getInstance()Lcom/kakaogame/core/CoreManager;

    move-result-object v4

    invoke-virtual {v4, v8}, Lcom/kakaogame/core/CoreManager;->hasCustomAlertHandler(Lcom/kakaogame/KGCustomUI$KGCustomAlertType;)Z

    move-result v4

    const v10, 0x7d7d00d5

    invoke-static {v10}, Lcom/liapp/y;->حֲݴܳޯ(I)Ljava/lang/String;

    move-result-object v10

    const v11, 0x3364e3ab

    invoke-static {v11}, Lcom/liapp/y;->ׯ״ٲ֬ب(I)Ljava/lang/String;

    move-result-object v11

    const/4 v14, 0x0

    if-eqz v4, :cond_d

    .line 1899
    invoke-virtual/range {p2 .. p2}, Lcom/kakaogame/infodesk/InfodeskData$KGInfodeskNotice;->getActionOnClose()Lcom/kakaogame/infodesk/InfodeskData$KGInfodeskNotice$InfodeskNoticeActionOnClose;

    move-result-object v4

    sget-object v12, Lcom/kakaogame/infodesk/InfodeskData$KGInfodeskNotice$InfodeskNoticeActionOnClose;->TERMINATE:Lcom/kakaogame/infodesk/InfodeskData$KGInfodeskNotice$InfodeskNoticeActionOnClose;

    if-ne v4, v12, :cond_6

    move-object/from16 v23, v10

    goto :goto_4

    :cond_6
    move-object/from16 v23, v11

    .line 1929
    :goto_4
    sget-object v4, Lcom/kakaogame/core/CoreManager;->Companion:Lcom/kakaogame/core/CoreManager$Companion;

    invoke-virtual {v4}, Lcom/kakaogame/core/CoreManager$Companion;->getInstance()Lcom/kakaogame/core/CoreManager;

    move-result-object v4

    .line 1939
    sget-object v16, Lcom/kakaogame/KGCustomUI$KGCustomAlert;->Companion:Lcom/kakaogame/KGCustomUI$KGCustomAlert$Companion;

    const-string v18, ""

    .line 1979
    move-object v12, v2

    check-cast v12, Ljava/lang/CharSequence;

    if-eqz v12, :cond_8

    invoke-interface {v12}, Ljava/lang/CharSequence;->length()I

    move-result v13

    if-nez v13, :cond_7

    goto :goto_5

    :cond_7
    move v13, v14

    goto :goto_6

    :cond_8
    :goto_5
    move v13, v9

    :goto_6
    const-string v15, ""

    if-eqz v13, :cond_9

    move-object/from16 v20, v15

    goto :goto_7

    :cond_9
    move-object/from16 v20, v6

    :goto_7
    if-eqz v12, :cond_b

    .line 1989
    invoke-interface {v12}, Ljava/lang/CharSequence;->length()I

    move-result v6

    if-nez v6, :cond_a

    goto :goto_8

    :cond_a
    move v6, v14

    goto :goto_9

    :cond_b
    :goto_8
    move v6, v9

    :goto_9
    if-eqz v6, :cond_c

    move-object/from16 v21, v15

    goto :goto_a

    :cond_c
    move-object/from16 v21, v2

    :goto_a
    move-object/from16 v17, v8

    move-object/from16 v22, v3

    .line 1939
    invoke-virtual/range {v16 .. v23}, Lcom/kakaogame/KGCustomUI$KGCustomAlert$Companion;->makeAlert(Lcom/kakaogame/KGCustomUI$KGCustomAlertType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/kakaogame/KGCustomUI$KGCustomAlert;

    move-result-object v3

    .line 1929
    invoke-virtual {v4, v0, v3}, Lcom/kakaogame/core/CoreManager;->showCustomUI(Landroid/app/Activity;Lcom/kakaogame/KGCustomUI$KGCustomAlert;)Ljava/lang/String;

    move-result-object v3

    goto :goto_d

    .line 2049
    :cond_d
    sget-object v4, Lcom/kakaogame/util/MutexLock;->Companion:Lcom/kakaogame/util/MutexLock$Companion;

    invoke-virtual {v4}, Lcom/kakaogame/util/MutexLock$Companion;->createLock()Lcom/kakaogame/util/MutexLock;

    move-result-object v4

    .line 2069
    new-instance v8, Lcom/kakaogame/ui/DialogManager$Settings;

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x1ffb

    const/16 v31, 0x0

    move-object/from16 v16, v8

    invoke-direct/range {v16 .. v31}, Lcom/kakaogame/ui/DialogManager$Settings;-><init>(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;ZLandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnCancelListener;Ljava/lang/Integer;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 2079
    new-instance v15, Lcom/kakaogame/infodesk/InfodeskNoticeManager$$ExternalSyntheticLambda3;

    invoke-direct {v15, v1, v4}, Lcom/kakaogame/infodesk/InfodeskNoticeManager$$ExternalSyntheticLambda3;-><init>(Lcom/kakaogame/infodesk/InfodeskData$KGInfodeskNotice;Lcom/kakaogame/util/MutexLock;)V

    invoke-virtual {v8, v3, v15}, Lcom/kakaogame/ui/DialogManager$Settings;->setPositiveButton(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    .line 2169
    move-object v3, v2

    check-cast v3, Ljava/lang/CharSequence;

    if-eqz v3, :cond_f

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-nez v3, :cond_e

    goto :goto_b

    :cond_e
    move v3, v14

    goto :goto_c

    :cond_f
    :goto_b
    move v3, v9

    :goto_c
    if-nez v3, :cond_10

    .line 2179
    new-instance v3, Lcom/kakaogame/infodesk/InfodeskNoticeManager$$ExternalSyntheticLambda4;

    invoke-direct {v3, v4, v2}, Lcom/kakaogame/infodesk/InfodeskNoticeManager$$ExternalSyntheticLambda4;-><init>(Lcom/kakaogame/util/MutexLock;Ljava/lang/String;)V

    invoke-virtual {v8, v6, v3}, Lcom/kakaogame/ui/DialogManager$Settings;->setNegativeButton(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    .line 2229
    :cond_10
    invoke-virtual/range {p2 .. p2}, Lcom/kakaogame/infodesk/InfodeskData$KGInfodeskNotice;->getActionOnClose()Lcom/kakaogame/infodesk/InfodeskData$KGInfodeskNotice$InfodeskNoticeActionOnClose;

    move-result-object v3

    sget-object v6, Lcom/kakaogame/infodesk/InfodeskData$KGInfodeskNotice$InfodeskNoticeActionOnClose;->TERMINATE:Lcom/kakaogame/infodesk/InfodeskData$KGInfodeskNotice$InfodeskNoticeActionOnClose;

    if-eq v3, v6, :cond_11

    .line 2239
    new-instance v3, Lcom/kakaogame/infodesk/InfodeskNoticeManager$$ExternalSyntheticLambda5;

    invoke-direct {v3, v4}, Lcom/kakaogame/infodesk/InfodeskNoticeManager$$ExternalSyntheticLambda5;-><init>(Lcom/kakaogame/util/MutexLock;)V

    invoke-virtual {v8, v3}, Lcom/kakaogame/ui/DialogManager$Settings;->setCancelable(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 2289
    :cond_11
    sget-object v3, Lcom/kakaogame/ui/DialogManager;->INSTANCE:Lcom/kakaogame/ui/DialogManager;

    invoke-virtual {v3, v0, v8}, Lcom/kakaogame/ui/DialogManager;->showAlertDialog(Landroid/app/Activity;Lcom/kakaogame/ui/DialogManager$Settings;)V

    const/4 v3, 0x0

    .line 2299
    invoke-static {v4, v12, v13, v9, v3}, Lcom/kakaogame/util/MutexLock;->lock$default(Lcom/kakaogame/util/MutexLock;JILjava/lang/Object;)V

    .line 2309
    invoke-virtual {v4}, Lcom/kakaogame/util/MutexLock;->getContent()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 2329
    :goto_d
    invoke-static {v3, v11, v9}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_12

    .line 2339
    sget-object v0, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    invoke-virtual {v0}, Lcom/kakaogame/KGResult$Companion;->getSuccessResult()Lcom/kakaogame/KGResult;

    move-result-object v0

    return-object v0

    .line 2359
    :cond_12
    invoke-static {v3, v10, v9}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v4

    const/16 v6, 0x26ac

    if-eqz v4, :cond_13

    .line 2369
    sget-object v0, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    invoke-virtual {v0, v6}, Lcom/kakaogame/KGResult$Companion;->getResult(I)Lcom/kakaogame/KGResult;

    move-result-object v0

    return-object v0

    .line 2389
    :cond_13
    move-object v4, v3

    check-cast v4, Ljava/lang/CharSequence;

    if-eqz v4, :cond_15

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-nez v4, :cond_14

    goto :goto_e

    :cond_14
    move v9, v14

    :cond_15
    :goto_e
    if-nez v9, :cond_17

    .line 2399
    invoke-virtual/range {p2 .. p2}, Lcom/kakaogame/infodesk/InfodeskData$KGInfodeskNotice;->getActionOnClose()Lcom/kakaogame/infodesk/InfodeskData$KGInfodeskNotice$InfodeskNoticeActionOnClose;

    move-result-object v1

    sget-object v4, Lcom/kakaogame/infodesk/InfodeskData$KGInfodeskNotice$InfodeskNoticeActionOnClose;->TERMINATE:Lcom/kakaogame/infodesk/InfodeskData$KGInfodeskNotice$InfodeskNoticeActionOnClose;

    if-ne v1, v4, :cond_16

    .line 2409
    invoke-static {v5, v3}, Lcom/kakaogame/util/AppUtil;->launchViewer(Landroid/content/Context;Ljava/lang/String;)V

    .line 2419
    sget-object v0, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    invoke-virtual {v0, v6}, Lcom/kakaogame/KGResult$Companion;->getResult(I)Lcom/kakaogame/KGResult;

    move-result-object v0

    return-object v0

    :cond_16
    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 2469
    new-instance v1, Lcom/kakaogame/infodesk/InfodeskNoticeManager$showNotice$4;

    invoke-direct {v1, v2}, Lcom/kakaogame/infodesk/InfodeskNoticeManager$showNotice$4;-><init>(Ljava/lang/String;)V

    move-object v6, v1

    check-cast v6, Lcom/kakaogame/KGResultCallback;

    const/16 v8, 0xc

    const/4 v9, 0x0

    move-object/from16 v0, p1

    move-object v1, v3

    move-object v2, v4

    move v3, v5

    move-object v4, v6

    move v5, v8

    move-object v6, v9

    .line 2439
    invoke-static/range {v0 .. v6}, Lcom/kakaogame/web/WebDialogManager;->show$default(Landroid/app/Activity;Ljava/lang/String;Lcom/kakaogame/web/WebDialog$Settings;ZLcom/kakaogame/KGResultCallback;ILjava/lang/Object;)V

    .line 2549
    :cond_17
    sget-object v0, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    invoke-virtual {v0}, Lcom/kakaogame/KGResult$Companion;->getSuccessResult()Lcom/kakaogame/KGResult;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method private static final showNotice$lambda$0(Lcom/kakaogame/infodesk/InfodeskData$KGInfodeskNotice;Lcom/kakaogame/util/MutexLock;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 2089
    invoke-virtual {p0}, Lcom/kakaogame/infodesk/InfodeskData$KGInfodeskNotice;->getActionOnClose()Lcom/kakaogame/infodesk/InfodeskData$KGInfodeskNotice$InfodeskNoticeActionOnClose;

    move-result-object p0

    sget-object p2, Lcom/kakaogame/infodesk/InfodeskData$KGInfodeskNotice$InfodeskNoticeActionOnClose;->TERMINATE:Lcom/kakaogame/infodesk/InfodeskData$KGInfodeskNotice$InfodeskNoticeActionOnClose;

    if-ne p0, p2, :cond_0

    const-string p0, "customUI_terminate"

    goto :goto_0

    :cond_0
    const-string p0, "customUI_close"

    .line 2139
    :goto_0
    invoke-virtual {p1, p0}, Lcom/kakaogame/util/MutexLock;->setContent(Ljava/lang/Object;)V

    .line 2149
    invoke-virtual {p1}, Lcom/kakaogame/util/MutexLock;->unlock()V

    return-void

    .array-data 1
    .end array-data
.end method

.method private static final showNotice$lambda$1(Lcom/kakaogame/util/MutexLock;Ljava/lang/String;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 2189
    invoke-virtual {p0, p1}, Lcom/kakaogame/util/MutexLock;->setContent(Ljava/lang/Object;)V

    .line 2199
    invoke-virtual {p0}, Lcom/kakaogame/util/MutexLock;->unlock()V

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method private static final showNotice$lambda$2(Lcom/kakaogame/util/MutexLock;Landroid/content/DialogInterface;)V
    .locals 0

    const-string p1, "customUI_close"

    .line 2249
    invoke-virtual {p0, p1}, Lcom/kakaogame/util/MutexLock;->setContent(Ljava/lang/Object;)V

    .line 2259
    invoke-virtual {p0}, Lcom/kakaogame/util/MutexLock;->unlock()V

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public static final showNotices(Landroid/app/Activity;Lcom/kakaogame/infodesk/InfodeskData;)Lcom/kakaogame/KGResult;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lcom/kakaogame/infodesk/InfodeskData;",
            ")",
            "Lcom/kakaogame/KGResult<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const v0, 0x7d7d0855

    invoke-static {v0}, Lcom/liapp/y;->حֲݴܳޯ(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x336fa5db

    invoke-static {v1}, Lcom/liapp/y;->ׯ״ٲ֬ب(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x543d14da

    invoke-static {v2}, Lcom/liapp/y;->׳ֳֳ֬د(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const v2, -0x45146467

    invoke-static {v2}, Lcom/liapp/y;->ڳݬ٬ۮݪ(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 829
    :try_start_0
    sget-object v2, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    const-string v3, "showNotices"

    invoke-virtual {v2, v0, v3}, Lcom/kakaogame/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 839
    invoke-virtual {p1}, Lcom/kakaogame/infodesk/InfodeskData;->getNotices()Ljava/util/List;

    move-result-object p1

    if-nez p1, :cond_0

    sget-object p0, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    invoke-virtual {p0}, Lcom/kakaogame/KGResult$Companion;->getSuccessResult()Lcom/kakaogame/KGResult;

    move-result-object p0

    return-object p0

    .line 849
    :cond_0
    sget-object v2, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Lcom/kakaogame/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 859
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/kakaogame/infodesk/InfodeskData$KGInfodeskNotice;

    .line 869
    invoke-virtual {v1}, Lcom/kakaogame/infodesk/InfodeskData$KGInfodeskNotice;->getActionOnClose()Lcom/kakaogame/infodesk/InfodeskData$KGInfodeskNotice$InfodeskNoticeActionOnClose;

    move-result-object v2

    sget-object v3, Lcom/kakaogame/infodesk/InfodeskData$KGInfodeskNotice$InfodeskNoticeActionOnClose;->TERMINATE:Lcom/kakaogame/infodesk/InfodeskData$KGInfodeskNotice$InfodeskNoticeActionOnClose;

    if-ne v2, v3, :cond_2

    .line 889
    sget-object v2, Lcom/kakaogame/core/FeatureManager;->INSTANCE:Lcom/kakaogame/core/FeatureManager;

    sget-object v3, Lcom/kakaogame/core/FeatureManager$Feature;->maintenance:Lcom/kakaogame/core/FeatureManager$Feature;

    invoke-virtual {v2, v3}, Lcom/kakaogame/core/FeatureManager;->isNotSupportedFeature(Lcom/kakaogame/core/FeatureManager$Feature;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 909
    sget-object p0, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    const/16 p1, 0x1d9

    invoke-virtual {p0, p1}, Lcom/kakaogame/KGResult$Companion;->getResult(I)Lcom/kakaogame/KGResult;

    move-result-object p0

    return-object p0

    .line 949
    :cond_2
    sget-object v2, Lcom/kakaogame/core/FeatureManager;->INSTANCE:Lcom/kakaogame/core/FeatureManager;

    sget-object v3, Lcom/kakaogame/core/FeatureManager$Feature;->urgentNotice:Lcom/kakaogame/core/FeatureManager$Feature;

    invoke-virtual {v2, v3}, Lcom/kakaogame/core/FeatureManager;->isNotSupportedFeature(Lcom/kakaogame/core/FeatureManager$Feature;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_0

    .line 989
    :cond_3
    sget-object v2, Lcom/kakaogame/infodesk/InfodeskNoticeManager;->INSTANCE:Lcom/kakaogame/infodesk/InfodeskNoticeManager;

    invoke-direct {v2, p0, v1}, Lcom/kakaogame/infodesk/InfodeskNoticeManager;->showNotice(Landroid/app/Activity;Lcom/kakaogame/infodesk/InfodeskData$KGInfodeskNotice;)Lcom/kakaogame/KGResult;

    move-result-object v1

    .line 999
    invoke-virtual {v1}, Lcom/kakaogame/KGResult;->isSuccess()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1009
    sget-object p0, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    check-cast v1, Ljava/util/Map;

    invoke-virtual {p0, v1}, Lcom/kakaogame/KGResult$Companion;->getResult(Ljava/util/Map;)Lcom/kakaogame/KGResult;

    move-result-object p0

    return-object p0

    .line 1039
    :cond_4
    sget-object p0, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    invoke-virtual {p0}, Lcom/kakaogame/KGResult$Companion;->getSuccessResult()Lcom/kakaogame/KGResult;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 1059
    sget-object p1, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v2, p0

    check-cast v2, Ljava/lang/Throwable;

    invoke-virtual {p1, v0, v1, v2}, Lcom/kakaogame/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1069
    sget-object p1, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    const/16 v0, 0xfa1

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, v0, p0}, Lcom/kakaogame/KGResult$Companion;->getResult(ILjava/lang/String;)Lcom/kakaogame/KGResult;

    move-result-object p0

    :goto_1
    return-object p0

    .array-data 1
    .end array-data
.end method

.method private final showNotices(Landroid/app/Activity;Ljava/util/List;)V
    .locals 27
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/List<",
            "Lcom/kakaogame/KGGameNoticeInfo;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v7, p1

    .line 3229
    move-object v0, v7

    check-cast v0, Landroid/content/Context;

    sget v1, Lcom/kakaogame/R$string;->zinny_sdk_common_button_ok:I

    invoke-static {v0, v1}, Lcom/kakaogame/util/ResourceUtil;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v8

    .line 3239
    sget v1, Lcom/kakaogame/R$string;->zinny_sdk_common_button_detail:I

    invoke-static {v0, v1}, Lcom/kakaogame/util/ResourceUtil;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v9

    .line 3259
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_0
    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kakaogame/KGGameNoticeInfo;

    .line 3269
    sget-object v1, Lcom/kakaogame/util/MutexLock;->Companion:Lcom/kakaogame/util/MutexLock$Companion;

    invoke-virtual {v1}, Lcom/kakaogame/util/MutexLock$Companion;->createLock()Lcom/kakaogame/util/MutexLock;

    move-result-object v1

    .line 3289
    new-instance v2, Lcom/kakaogame/ui/DialogManager$Settings;

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual {v0}, Lcom/kakaogame/KGGameNoticeInfo;->getMessage()Ljava/lang/String;

    move-result-object v14

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

    .line 3299
    new-instance v3, Lcom/kakaogame/infodesk/InfodeskNoticeManager$$ExternalSyntheticLambda0;

    invoke-direct {v3, v1}, Lcom/kakaogame/infodesk/InfodeskNoticeManager$$ExternalSyntheticLambda0;-><init>(Lcom/kakaogame/util/MutexLock;)V

    invoke-virtual {v2, v8, v3}, Lcom/kakaogame/ui/DialogManager$Settings;->setPositiveButton(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    .line 3339
    invoke-virtual {v0}, Lcom/kakaogame/KGGameNoticeInfo;->getDetailLink()Ljava/lang/String;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v3, :cond_2

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    move v3, v4

    goto :goto_2

    :cond_2
    :goto_1
    move v3, v5

    :goto_2
    if-nez v3, :cond_3

    .line 3349
    new-instance v3, Lcom/kakaogame/infodesk/InfodeskNoticeManager$$ExternalSyntheticLambda1;

    invoke-direct {v3, v1, v0}, Lcom/kakaogame/infodesk/InfodeskNoticeManager$$ExternalSyntheticLambda1;-><init>(Lcom/kakaogame/util/MutexLock;Lcom/kakaogame/KGGameNoticeInfo;)V

    invoke-virtual {v2, v9, v3}, Lcom/kakaogame/ui/DialogManager$Settings;->setNegativeButton(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    .line 3399
    :cond_3
    new-instance v0, Lcom/kakaogame/infodesk/InfodeskNoticeManager$$ExternalSyntheticLambda2;

    invoke-direct {v0, v1}, Lcom/kakaogame/infodesk/InfodeskNoticeManager$$ExternalSyntheticLambda2;-><init>(Lcom/kakaogame/util/MutexLock;)V

    invoke-virtual {v2, v0}, Lcom/kakaogame/ui/DialogManager$Settings;->setCancelable(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 3439
    sget-object v0, Lcom/kakaogame/ui/DialogManager;->INSTANCE:Lcom/kakaogame/ui/DialogManager;

    invoke-virtual {v0, v7, v2}, Lcom/kakaogame/ui/DialogManager;->showAlertDialog(Landroid/app/Activity;Lcom/kakaogame/ui/DialogManager$Settings;)V

    const-wide/16 v2, 0x0

    const/4 v0, 0x0

    .line 3449
    invoke-static {v1, v2, v3, v5, v0}, Lcom/kakaogame/util/MutexLock;->lock$default(Lcom/kakaogame/util/MutexLock;JILjava/lang/Object;)V

    .line 3469
    invoke-virtual {v1}, Lcom/kakaogame/util/MutexLock;->getContent()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    .line 3479
    move-object v0, v1

    check-cast v0, Ljava/lang/CharSequence;

    if-eqz v0, :cond_4

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_5

    :cond_4
    move v4, v5

    :cond_5
    if-nez v4, :cond_0

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 3519
    new-instance v0, Lcom/kakaogame/infodesk/InfodeskNoticeManager$showNotices$4;

    invoke-direct {v0, v1}, Lcom/kakaogame/infodesk/InfodeskNoticeManager$showNotices$4;-><init>(Ljava/lang/String;)V

    move-object v4, v0

    check-cast v4, Lcom/kakaogame/KGResultCallback;

    const/16 v5, 0xc

    const/4 v6, 0x0

    move-object/from16 v0, p1

    .line 3489
    invoke-static/range {v0 .. v6}, Lcom/kakaogame/web/WebDialogManager;->show$default(Landroid/app/Activity;Ljava/lang/String;Lcom/kakaogame/web/WebDialog$Settings;ZLcom/kakaogame/KGResultCallback;ILjava/lang/Object;)V

    goto/16 :goto_0

    :cond_6
    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method private static final showNotices$lambda$3(Lcom/kakaogame/util/MutexLock;Landroid/content/DialogInterface;I)V
    .locals 0

    const-string p1, ""

    .line 3309
    invoke-virtual {p0, p1}, Lcom/kakaogame/util/MutexLock;->setContent(Ljava/lang/Object;)V

    .line 3319
    invoke-virtual {p0}, Lcom/kakaogame/util/MutexLock;->unlock()V

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method private static final showNotices$lambda$4(Lcom/kakaogame/util/MutexLock;Lcom/kakaogame/KGGameNoticeInfo;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 3359
    invoke-virtual {p1}, Lcom/kakaogame/KGGameNoticeInfo;->getDetailLink()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/kakaogame/util/MutexLock;->setContent(Ljava/lang/Object;)V

    .line 3369
    invoke-virtual {p0}, Lcom/kakaogame/util/MutexLock;->unlock()V

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method private static final showNotices$lambda$5(Lcom/kakaogame/util/MutexLock;Landroid/content/DialogInterface;)V
    .locals 0

    const-string p1, ""

    .line 3409
    invoke-virtual {p0, p1}, Lcom/kakaogame/util/MutexLock;->setContent(Ljava/lang/Object;)V

    .line 3419
    invoke-virtual {p0}, Lcom/kakaogame/util/MutexLock;->unlock()V

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public static final showTerminateNoticeOnRefreshInfodesk(Landroid/app/Activity;Lcom/kakaogame/infodesk/InfodeskData;)Lcom/kakaogame/KGResult;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lcom/kakaogame/infodesk/InfodeskData;",
            ")",
            "Lcom/kakaogame/KGResult<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const v0, 0x7d7d0855

    invoke-static {v0}, Lcom/liapp/y;->حֲݴܳޯ(I)Ljava/lang/String;

    move-result-object v0

    const v1, -0x45146ea7

    invoke-static {v1}, Lcom/liapp/y;->ڳݬ٬ۮݪ(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x543d14da

    invoke-static {v2}, Lcom/liapp/y;->׳ֳֳ֬د(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const v2, -0x45146467

    invoke-static {v2}, Lcom/liapp/y;->ڳݬ٬ۮݪ(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1139
    :try_start_0
    sget-object v2, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    const-string v3, "showTerminateNoticeOnRefreshInfodesk"

    invoke-virtual {v2, v0, v3}, Lcom/kakaogame/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1149
    invoke-virtual {p1}, Lcom/kakaogame/infodesk/InfodeskData;->getNotices()Ljava/util/List;

    move-result-object p1

    if-nez p1, :cond_0

    sget-object p0, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    invoke-virtual {p0}, Lcom/kakaogame/KGResult$Companion;->getSuccessResult()Lcom/kakaogame/KGResult;

    move-result-object p0

    return-object p0

    .line 1159
    :cond_0
    sget-object v2, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Lcom/kakaogame/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1169
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/kakaogame/infodesk/InfodeskData$KGInfodeskNotice;

    .line 1179
    invoke-virtual {v1}, Lcom/kakaogame/infodesk/InfodeskData$KGInfodeskNotice;->getActionOnClose()Lcom/kakaogame/infodesk/InfodeskData$KGInfodeskNotice$InfodeskNoticeActionOnClose;

    move-result-object v2

    sget-object v3, Lcom/kakaogame/infodesk/InfodeskData$KGInfodeskNotice$InfodeskNoticeActionOnClose;->TERMINATE:Lcom/kakaogame/infodesk/InfodeskData$KGInfodeskNotice$InfodeskNoticeActionOnClose;

    if-ne v2, v3, :cond_1

    .line 1199
    sget-object v2, Lcom/kakaogame/core/FeatureManager;->INSTANCE:Lcom/kakaogame/core/FeatureManager;

    sget-object v3, Lcom/kakaogame/core/FeatureManager$Feature;->maintenance:Lcom/kakaogame/core/FeatureManager$Feature;

    invoke-virtual {v2, v3}, Lcom/kakaogame/core/FeatureManager;->isNotSupportedFeature(Lcom/kakaogame/core/FeatureManager$Feature;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1219
    sget-object p0, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    const/16 p1, 0x1d9

    invoke-virtual {p0, p1}, Lcom/kakaogame/KGResult$Companion;->getResult(I)Lcom/kakaogame/KGResult;

    move-result-object p0

    return-object p0

    .line 1259
    :cond_2
    sget-object v2, Lcom/kakaogame/core/CoreManager;->Companion:Lcom/kakaogame/core/CoreManager$Companion;

    invoke-virtual {v2}, Lcom/kakaogame/core/CoreManager$Companion;->getInstance()Lcom/kakaogame/core/CoreManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/kakaogame/core/CoreManager;->currentTimeMillis()J

    move-result-wide v2

    .line 1269
    invoke-virtual {v1}, Lcom/kakaogame/infodesk/InfodeskData$KGInfodeskNotice;->getStartTime()J

    move-result-wide v4

    sub-long/2addr v2, v4

    const-wide/32 v4, 0x493e0

    cmp-long v2, v2, v4

    if-gez v2, :cond_3

    .line 1279
    sget-object p0, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    const-string p1, "Pass the terminate notice, before 5min."

    invoke-virtual {p0, v0, p1}, Lcom/kakaogame/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1289
    sget-object p0, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    invoke-virtual {p0}, Lcom/kakaogame/KGResult$Companion;->getSuccessResult()Lcom/kakaogame/KGResult;

    move-result-object p0

    return-object p0

    .line 1309
    :cond_3
    sget-object v2, Lcom/kakaogame/infodesk/InfodeskHelper;->INSTANCE:Lcom/kakaogame/infodesk/InfodeskHelper;

    invoke-virtual {v2}, Lcom/kakaogame/infodesk/InfodeskHelper;->isWhitelist()Z

    move-result v2

    if-nez v2, :cond_4

    const-wide/16 v2, 0xa

    .line 1329
    invoke-static {p0, v2, v3}, Lcom/kakaogame/util/AppUtil;->terminateAppReservation(Landroid/app/Activity;J)V

    .line 1349
    :cond_4
    sget-object v2, Lcom/kakaogame/infodesk/InfodeskNoticeManager;->INSTANCE:Lcom/kakaogame/infodesk/InfodeskNoticeManager;

    invoke-direct {v2, p0, v1}, Lcom/kakaogame/infodesk/InfodeskNoticeManager;->showNotice(Landroid/app/Activity;Lcom/kakaogame/infodesk/InfodeskData$KGInfodeskNotice;)Lcom/kakaogame/KGResult;

    move-result-object v1

    .line 1359
    invoke-virtual {v1}, Lcom/kakaogame/KGResult;->isSuccess()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1369
    sget-object p0, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    check-cast v1, Ljava/util/Map;

    invoke-virtual {p0, v1}, Lcom/kakaogame/KGResult$Companion;->getResult(Ljava/util/Map;)Lcom/kakaogame/KGResult;

    move-result-object p0

    return-object p0

    .line 1409
    :cond_5
    sget-object p0, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    invoke-virtual {p0}, Lcom/kakaogame/KGResult$Companion;->getSuccessResult()Lcom/kakaogame/KGResult;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 1429
    sget-object p1, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v2, p0

    check-cast v2, Ljava/lang/Throwable;

    invoke-virtual {p1, v0, v1, v2}, Lcom/kakaogame/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1439
    sget-object p1, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    const/16 v0, 0xfa1

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, v0, p0}, Lcom/kakaogame/KGResult$Companion;->getResult(ILjava/lang/String;)Lcom/kakaogame/KGResult;

    move-result-object p0

    :goto_0
    return-object p0

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public final clearPreference(Landroid/content/Context;)V
    .locals 3

    :try_start_0
    const-string v0, "KakaoGameSDK_InfodeskNoticeDate"

    .line 469
    invoke-static {p1, v0}, Lcom/kakaogame/util/PreferenceUtil;->remove(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 489
    sget-object v0, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    check-cast p1, Ljava/lang/Throwable;

    const v2, 0x7d7d0855

    invoke-static {v2}, Lcom/liapp/y;->حֲݴܳޯ(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1, p1}, Lcom/kakaogame/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void

    .array-data 1
    .end array-data
.end method

.method public final getGameServerMaintenance(Landroid/app/Activity;ZLjava/lang/String;)Lcom/kakaogame/KGResult;
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Z",
            "Ljava/lang/String;",
            ")",
            "Lcom/kakaogame/KGResult<",
            "Lcom/kakaogame/KGApplication$KGGameServerMaintenanceResponse;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const v2, 0x543d14da

    invoke-static {v2}, Lcom/liapp/y;->׳ֳֳ֬د(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2859
    sget-object v2, Lcom/kakaogame/infodesk/InfodeskService;->INSTANCE:Lcom/kakaogame/infodesk/InfodeskService;

    move-object v3, v1

    check-cast v3, Landroid/content/Context;

    move-object/from16 v4, p3

    invoke-virtual {v2, v3, v4}, Lcom/kakaogame/infodesk/InfodeskService;->loadGameServerMaintenance(Landroid/content/Context;Ljava/lang/String;)Lcom/kakaogame/KGResult;

    move-result-object v2

    .line 2869
    invoke-virtual {v2}, Lcom/kakaogame/KGResult;->isNotSuccess()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2879
    sget-object v1, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    check-cast v2, Ljava/util/Map;

    invoke-virtual {v1, v2}, Lcom/kakaogame/KGResult$Companion;->getResult(Ljava/util/Map;)Lcom/kakaogame/KGResult;

    move-result-object v1

    return-object v1

    .line 2899
    :cond_0
    invoke-virtual {v2}, Lcom/kakaogame/KGResult;->getContent()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v2, Lcom/kakaogame/util/json/JSONObject;

    const v3, 0x6d0f37e8

    invoke-static {v3}, Lcom/liapp/y;->ٱڳܴڭܩ(I)Ljava/lang/String;

    move-result-object v3

    .line 2909
    invoke-virtual {v2, v3}, Lcom/kakaogame/util/json/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    goto :goto_0

    :cond_1
    move v3, v4

    .line 2919
    :goto_0
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    check-cast v5, Ljava/util/List;

    const v6, 0x6d0b53f0

    invoke-static {v6}, Lcom/liapp/y;->ٱڳܴڭܩ(I)Ljava/lang/String;

    move-result-object v6

    .line 2929
    invoke-virtual {v2, v6}, Lcom/kakaogame/util/json/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/kakaogame/util/json/JSONArray;

    .line 2949
    move-object v6, v2

    check-cast v6, Ljava/util/Collection;

    if-eqz v6, :cond_3

    invoke-interface {v6}, Ljava/util/Collection;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_2

    goto :goto_1

    :cond_2
    move v8, v4

    goto :goto_2

    :cond_3
    :goto_1
    const/4 v8, 0x1

    :goto_2
    if-eqz v8, :cond_4

    .line 2959
    sget-object v1, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    new-instance v2, Lcom/kakaogame/KGApplication$KGGameServerMaintenanceResponse;

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v4

    invoke-direct {v2, v4, v3}, Lcom/kakaogame/KGApplication$KGGameServerMaintenanceResponse;-><init>(Ljava/util/List;Z)V

    invoke-virtual {v1, v2}, Lcom/kakaogame/KGResult$Companion;->getSuccessResult(Ljava/lang/Object;)Lcom/kakaogame/KGResult;

    move-result-object v1

    return-object v1

    .line 2989
    :cond_4
    invoke-interface {v6}, Ljava/util/Collection;->size()I

    move-result v6

    move v8, v4

    :goto_3
    if-ge v8, v6, :cond_b

    .line 2999
    invoke-virtual {v2, v8}, Lcom/kakaogame/util/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/kakaogame/util/json/JSONObject;

    const/4 v10, 0x0

    if-eqz v9, :cond_5

    const v11, 0x5439325a

    invoke-static {v11}, Lcom/liapp/y;->׳ֳֳ֬د(I)Ljava/lang/String;

    move-result-object v11

    .line 3009
    invoke-virtual {v9, v11}, Lcom/kakaogame/util/json/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    goto :goto_4

    :cond_5
    move-object v11, v10

    :goto_4
    check-cast v11, Ljava/lang/String;

    const v12, 0x6d011af0

    invoke-static {v12}, Lcom/liapp/y;->ٱڳܴڭܩ(I)Ljava/lang/String;

    move-result-object v12

    if-eqz v9, :cond_6

    .line 3019
    invoke-virtual {v9, v12}, Lcom/kakaogame/util/json/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    goto :goto_5

    :cond_6
    move-object v13, v10

    :goto_5
    check-cast v13, Ljava/lang/Number;

    if-eqz v13, :cond_7

    invoke-virtual {v13}, Ljava/lang/Number;->longValue()J

    move-result-wide v16

    move-wide/from16 v14, v16

    goto :goto_6

    :cond_7
    const-wide/16 v14, 0x0

    :goto_6
    const v13, 0x6d0ee648

    invoke-static {v13}, Lcom/liapp/y;->ٱڳܴڭܩ(I)Ljava/lang/String;

    move-result-object v13

    if-eqz v9, :cond_8

    .line 3029
    invoke-virtual {v9, v13}, Lcom/kakaogame/util/json/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    goto :goto_7

    :cond_8
    move-object/from16 v18, v10

    :goto_7
    check-cast v18, Ljava/lang/Number;

    if-eqz v18, :cond_9

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Number;->longValue()J

    move-result-wide v16

    goto :goto_8

    :cond_9
    const-wide/16 v16, 0x0

    :goto_8
    if-eqz v9, :cond_a

    const v10, 0x6d0e6720

    invoke-static {v10}, Lcom/liapp/y;->ٱڳܴڭܩ(I)Ljava/lang/String;

    move-result-object v10

    .line 3039
    invoke-virtual {v9, v10}, Lcom/kakaogame/util/json/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    :cond_a
    check-cast v10, Ljava/lang/String;

    const/4 v9, 0x4

    new-array v9, v9, [Lkotlin/Pair;

    const v7, -0x451edd5f

    invoke-static {v7}, Lcom/liapp/y;->ڳݬ٬ۮݪ(I)Ljava/lang/String;

    move-result-object v7

    .line 3069
    invoke-direct {v0, v11, v14, v15}, Lcom/kakaogame/infodesk/InfodeskNoticeManager;->getNoticeDisplayMessage(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v11

    invoke-static {v7, v11}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v7

    aput-object v7, v9, v4

    const v7, 0x5d17cecf

    invoke-static {v7}, Lcom/liapp/y;->ڴݮگ֮ت(I)Ljava/lang/String;

    move-result-object v7

    .line 3079
    invoke-static {v7, v10}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v7

    const/4 v10, 0x1

    aput-object v7, v9, v10

    .line 3089
    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-static {v12, v7}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v7

    const/4 v11, 0x2

    aput-object v7, v9, v11

    .line 3099
    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-static {v13, v7}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v7

    const/4 v11, 0x3

    aput-object v7, v9, v11

    .line 3059
    invoke-static {v9}, Lkotlin/collections/MapsKt;->mutableMapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v7

    .line 3119
    new-instance v9, Lcom/kakaogame/KGGameNoticeInfo;

    invoke-direct {v9, v7}, Lcom/kakaogame/KGGameNoticeInfo;-><init>(Ljava/util/Map;)V

    .line 3129
    invoke-interface {v5, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_3

    :cond_b
    if-eqz p2, :cond_c

    .line 3169
    invoke-direct {v0, v1, v5}, Lcom/kakaogame/infodesk/InfodeskNoticeManager;->showNotices(Landroid/app/Activity;Ljava/util/List;)V

    .line 3189
    :cond_c
    sget-object v1, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    new-instance v2, Lcom/kakaogame/KGApplication$KGGameServerMaintenanceResponse;

    invoke-direct {v2, v5, v3}, Lcom/kakaogame/KGApplication$KGGameServerMaintenanceResponse;-><init>(Ljava/util/List;Z)V

    invoke-virtual {v1, v2}, Lcom/kakaogame/KGResult$Companion;->getSuccessResult(Ljava/lang/Object;)Lcom/kakaogame/KGResult;

    move-result-object v1

    return-object v1

    .array-data 1
    .end array-data
.end method
