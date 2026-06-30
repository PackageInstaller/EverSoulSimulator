.class public Lcom/unity/androidnotifications/UnityNotificationManager;
.super Landroid/content/BroadcastReceiver;
.source "UnityNotificationManager.java"


# static fields
.field public static final KEY_BIG_CONTENT_DESCRIPTION:Ljava/lang/String; = "com.unity.BigContentDescription"

.field public static final KEY_BIG_CONTENT_TITLE:Ljava/lang/String; = "com.unity.BigContentTytle"

.field public static final KEY_BIG_LARGE_ICON:Ljava/lang/String; = "com.unity.BigLargeIcon"

.field public static final KEY_BIG_PICTURE:Ljava/lang/String; = "com.unity.BigPicture"

.field public static final KEY_BIG_SHOW_WHEN_COLLAPSED:Ljava/lang/String; = "com.unity.BigShowWhenCollapsed"

.field public static final KEY_BIG_SUMMARY_TEXT:Ljava/lang/String; = "com.unity.BigSummaryText"

.field public static final KEY_CHANNEL_ID:Ljava/lang/String; = "channelID"

.field public static final KEY_FIRE_TIME:Ljava/lang/String; = "fireTime"

.field public static final KEY_ID:Ljava/lang/String; = "id"

.field public static final KEY_INTENT_DATA:Ljava/lang/String; = "data"

.field public static final KEY_LARGE_ICON:Ljava/lang/String; = "largeIcon"

.field public static final KEY_NOTIFICATION:Ljava/lang/String; = "unityNotification"

.field public static final KEY_NOTIFICATION_DISMISSED:Ljava/lang/String; = "com.unity.NotificationDismissed"

.field public static final KEY_NOTIFICATION_ID:Ljava/lang/String; = "com.unity.NotificationID"

.field public static final KEY_REPEAT_INTERVAL:Ljava/lang/String; = "repeatInterval"

.field public static final KEY_SHOW_IN_FOREGROUND:Ljava/lang/String; = "com.unity.showInForeground"

.field public static final KEY_SMALL_ICON:Ljava/lang/String; = "smallIcon"

.field static final NOTIFICATION_CHANNELS_SHARED_PREFS:Ljava/lang/String; = "UNITY_NOTIFICATIONS"

.field static final NOTIFICATION_CHANNELS_SHARED_PREFS_KEY:Ljava/lang/String; = "ChannelIDs"

.field static final NOTIFICATION_IDS_SHARED_PREFS:Ljava/lang/String; = "UNITY_STORED_NOTIFICATION_IDS"

.field static final NOTIFICATION_IDS_SHARED_PREFS_KEY:Ljava/lang/String; = "UNITY_NOTIFICATION_IDS"

.field private static final PERMISSION_STATUS_ALLOWED:I = 0x1

.field private static final PERMISSION_STATUS_DENIED:I = 0x2

.field private static final PERMISSION_STATUS_NOTIFICATIONS_BLOCKED_FOR_APP:I = 0x5

.field static final TAG_UNITY:Ljava/lang/String; = "UnityNotifications"

.field static mUnityNotificationManager:Lcom/unity/androidnotifications/UnityNotificationManager;


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mBackgroundThread:Lcom/unity/androidnotifications/UnityNotificationBackgroundThread;

.field private mContext:Landroid/content/Context;

.field private mExactSchedulingSetting:I

.field private mNotificationCallback:Lcom/unity/androidnotifications/NotificationCallback;

.field private mOpenActivity:Ljava/lang/Class;

.field private mRandom:Ljava/util/Random;

.field private mScheduledNotifications:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Integer;",
            "Landroid/app/Notification$Builder;",
            ">;"
        }
    .end annotation
.end field

.field private mVisibleNotifications:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 47
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    const/4 v0, 0x0

    .line 50
    iput-object v0, p0, Lcom/unity/androidnotifications/UnityNotificationManager;->mContext:Landroid/content/Context;

    .line 51
    iput-object v0, p0, Lcom/unity/androidnotifications/UnityNotificationManager;->mActivity:Landroid/app/Activity;

    .line 52
    iput-object v0, p0, Lcom/unity/androidnotifications/UnityNotificationManager;->mOpenActivity:Ljava/lang/Class;

    const/4 v0, -0x1

    .line 58
    iput v0, p0, Lcom/unity/androidnotifications/UnityNotificationManager;->mExactSchedulingSetting:I

    return-void

    .array-data 1
    .end array-data
.end method

.method private buildNotificationForSending(Ljava/lang/Class;Landroid/app/Notification$Builder;)Landroid/app/Notification;
    .locals 3

    .line 424
    invoke-virtual {p2}, Landroid/app/Notification$Builder;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "id"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 425
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/unity/androidnotifications/UnityNotificationManager;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, p1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 p1, 0x30000000

    .line 426
    invoke-virtual {v1, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string p1, "com.unity.NotificationID"

    .line 427
    invoke-virtual {v1, p1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/4 p1, 0x0

    .line 428
    invoke-direct {p0, v0, v1, p1}, Lcom/unity/androidnotifications/UnityNotificationManager;->getActivityPendingIntent(ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    .line 429
    invoke-virtual {p2, p1}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 440
    invoke-direct {p0, p2}, Lcom/unity/androidnotifications/UnityNotificationManager;->finalizeNotificationForDisplay(Landroid/app/Notification$Builder;)V

    .line 441
    invoke-virtual {p2}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object p1

    return-object p1

    .array-data 1
    .end array-data
.end method

.method private buildNotificationIntent()Landroid/content/Intent;
    .locals 3

    .line 499
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/unity/androidnotifications/UnityNotificationManager;->mContext:Landroid/content/Context;

    const-class v2, Lcom/unity/androidnotifications/UnityNotificationManager;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const v1, 0x10008000

    .line 500
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    return-object v0

    .array-data 1
    .end array-data
.end method

.method private canScheduleExactAlarms(Landroid/app/AlarmManager;)Z
    .locals 3

    .line 570
    iget v0, p0, Lcom/unity/androidnotifications/UnityNotificationManager;->mExactSchedulingSetting:I

    const/4 v1, 0x1

    if-gez v0, :cond_0

    .line 571
    invoke-direct {p0}, Lcom/unity/androidnotifications/UnityNotificationManager;->getAppMetadata()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v2, "com.unity.androidnotifications.exact_scheduling"

    .line 573
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/unity/androidnotifications/UnityNotificationManager;->mExactSchedulingSetting:I

    .line 575
    :cond_0
    iget v0, p0, Lcom/unity/androidnotifications/UnityNotificationManager;->mExactSchedulingSetting:I

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return p1

    .line 577
    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1f

    if-ge v0, v2, :cond_2

    return v1

    .line 580
    :cond_2
    invoke-virtual {p1}, Landroid/app/AlarmManager;->canScheduleExactAlarms()Z

    move-result p1

    return p1

    nop

    .array-data 1
    .end array-data
.end method

.method private deserializeNotificationBuilder(Ljava/lang/Integer;)Landroid/app/Notification$Builder;
    .locals 2

    .line 1050
    iget-object v0, p0, Lcom/unity/androidnotifications/UnityNotificationManager;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/unity/androidnotifications/UnityNotificationManager;->getSharedPrefsNameByNotificationId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    .line 1051
    iget-object v0, p0, Lcom/unity/androidnotifications/UnityNotificationManager;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/unity/androidnotifications/UnityNotificationUtilities;->deserializeNotification(Landroid/content/Context;Landroid/content/SharedPreferences;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 1056
    :cond_0
    instance-of v0, p1, Landroid/app/Notification;

    if-eqz v0, :cond_1

    .line 1057
    iget-object v0, p0, Lcom/unity/androidnotifications/UnityNotificationManager;->mContext:Landroid/content/Context;

    check-cast p1, Landroid/app/Notification;

    invoke-static {v0, p1}, Lcom/unity/androidnotifications/UnityNotificationUtilities;->recoverBuilder(Landroid/content/Context;Landroid/app/Notification;)Landroid/app/Notification$Builder;

    move-result-object p1

    return-object p1

    .line 1060
    :cond_1
    check-cast p1, Landroid/app/Notification$Builder;

    return-object p1

    nop

    .array-data 1
    .end array-data
.end method

.method private finalizeNotificationForDisplay(Landroid/app/Notification$Builder;)V
    .locals 2

    .line 792
    invoke-virtual {p1}, Landroid/app/Notification$Builder;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "smallIcon"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 793
    invoke-direct {p0, v0}, Lcom/unity/androidnotifications/UnityNotificationManager;->getIconForUri(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 795
    check-cast v1, Landroid/graphics/drawable/Icon;

    invoke-virtual {p1, v1}, Landroid/app/Notification$Builder;->setSmallIcon(Landroid/graphics/drawable/Icon;)Landroid/app/Notification$Builder;

    goto :goto_0

    .line 797
    :cond_0
    iget-object v1, p0, Lcom/unity/androidnotifications/UnityNotificationManager;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/unity/androidnotifications/UnityNotificationUtilities;->findResourceIdInContextByName(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    .line 799
    iget-object v0, p0, Lcom/unity/androidnotifications/UnityNotificationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->icon:I

    .line 801
    :cond_1
    invoke-virtual {p1, v0}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 804
    :goto_0
    invoke-virtual {p1}, Landroid/app/Notification$Builder;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "largeIcon"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 805
    invoke-direct {p0, v0}, Lcom/unity/androidnotifications/UnityNotificationManager;->getIcon(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 807
    instance-of v1, v0, Landroid/graphics/drawable/Icon;

    if-eqz v1, :cond_2

    .line 808
    check-cast v0, Landroid/graphics/drawable/Icon;

    invoke-virtual {p1, v0}, Landroid/app/Notification$Builder;->setLargeIcon(Landroid/graphics/drawable/Icon;)Landroid/app/Notification$Builder;

    goto :goto_1

    .line 810
    :cond_2
    check-cast v0, Landroid/graphics/Bitmap;

    invoke-virtual {p1, v0}, Landroid/app/Notification$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$Builder;

    .line 813
    :cond_3
    :goto_1
    invoke-direct {p0, p1}, Lcom/unity/androidnotifications/UnityNotificationManager;->setupBigPictureStyle(Landroid/app/Notification$Builder;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method private findInvalidNotificationIds(Ljava/util/Set;)Ljava/util/Set;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 460
    invoke-direct {p0}, Lcom/unity/androidnotifications/UnityNotificationManager;->buildNotificationIntent()Landroid/content/Intent;

    move-result-object v0

    .line 461
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 462
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 465
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/high16 v4, 0x20000000

    invoke-direct {p0, v3, v0, v4}, Lcom/unity/androidnotifications/UnityNotificationManager;->getBroadcastPendingIntent(ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    if-nez v3, :cond_0

    .line 467
    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 472
    :cond_1
    invoke-virtual {p0}, Lcom/unity/androidnotifications/UnityNotificationManager;->getNotificationManager()Landroid/app/NotificationManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/NotificationManager;->getActiveNotifications()[Landroid/service/notification/StatusBarNotification;

    move-result-object p1

    .line 473
    array-length v0, p1

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v0, :cond_2

    aget-object v3, p1, v2

    .line 475
    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    .line 476
    invoke-virtual {v1, v3}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 487
    :cond_2
    sget-object p1, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    if-eqz p1, :cond_3

    .line 488
    sget-object p1, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "com.unity.NotificationID"

    .line 489
    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 490
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "com.unity.NotificationID"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    .line 491
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    :cond_3
    return-object v1

    nop

    .array-data 1
    .end array-data
.end method

.method private generateUniqueId()I
    .locals 3

    const/4 v0, 0x0

    .line 354
    :cond_0
    iget-object v1, p0, Lcom/unity/androidnotifications/UnityNotificationManager;->mRandom:Ljava/util/Random;

    const/16 v2, 0x3e8

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    add-int/2addr v0, v1

    .line 355
    iget-object v1, p0, Lcom/unity/androidnotifications/UnityNotificationManager;->mScheduledNotifications:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method private getActivityPendingIntent(ILandroid/content/Intent;I)Landroid/app/PendingIntent;
    .locals 2

    .line 506
    iget-object v0, p0, Lcom/unity/androidnotifications/UnityNotificationManager;->mContext:Landroid/content/Context;

    const/high16 v1, 0x4000000

    or-int/2addr p3, v1

    invoke-static {v0, p1, p2, p3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    return-object p1

    .array-data 1
    .end array-data
.end method

.method private getAppMetadata()Landroid/os/Bundle;
    .locals 3

    .line 135
    :try_start_0
    iget-object v0, p0, Lcom/unity/androidnotifications/UnityNotificationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v1, p0, Lcom/unity/androidnotifications/UnityNotificationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x80

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const/4 v0, 0x0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method private getBroadcastPendingIntent(ILandroid/content/Intent;I)Landroid/app/PendingIntent;
    .locals 2

    .line 513
    iget-object v0, p0, Lcom/unity/androidnotifications/UnityNotificationManager;->mContext:Landroid/content/Context;

    const/high16 v1, 0x4000000

    or-int/2addr p3, v1

    invoke-static {v0, p1, p2, p3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    return-object p1

    .array-data 1
    .end array-data
.end method

.method private getIcon(Ljava/lang/String;)Ljava/lang/Object;
    .locals 3

    if-eqz p1, :cond_3

    .line 817
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 819
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x2f

    if-ne v1, v2, :cond_1

    .line 820
    invoke-static {p1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1

    .line 823
    :cond_1
    invoke-direct {p0, p1}, Lcom/unity/androidnotifications/UnityNotificationManager;->getIconForUri(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_2

    return-object v1

    .line 827
    :cond_2
    invoke-direct {p0, p1, v0}, Lcom/unity/androidnotifications/UnityNotificationManager;->getIconFromResources(Ljava/lang/String;Z)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_3
    :goto_0
    const/4 p1, 0x0

    return-object p1

    nop

    .array-data 1
    .end array-data
.end method

.method private getIconForUri(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 831
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "://"

    .line 833
    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_1

    .line 834
    invoke-static {p1}, Landroid/graphics/drawable/Icon;->createWithContentUri(Ljava/lang/String;)Landroid/graphics/drawable/Icon;

    move-result-object p1

    return-object p1

    :cond_1
    :goto_0
    return-object v0

    .array-data 1
    .end array-data
.end method

.method private getIconFromResources(Ljava/lang/String;Z)Ljava/lang/Object;
    .locals 1

    .line 841
    iget-object v0, p0, Lcom/unity/androidnotifications/UnityNotificationManager;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/unity/androidnotifications/UnityNotificationUtilities;->findResourceIdInContextByName(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    .line 844
    iget-object p2, p0, Lcom/unity/androidnotifications/UnityNotificationManager;->mContext:Landroid/content/Context;

    invoke-static {p2, p1}, Landroid/graphics/drawable/Icon;->createWithResource(Landroid/content/Context;I)Landroid/graphics/drawable/Icon;

    move-result-object p1

    return-object p1

    .line 845
    :cond_0
    iget-object p2, p0, Lcom/unity/androidnotifications/UnityNotificationManager;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-static {p2, p1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1

    .array-data 1
    .end array-data
.end method

.method public static getNotificationChannelId(Landroid/app/Notification;)Ljava/lang/String;
    .locals 2

    .line 989
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    .line 990
    invoke-virtual {p0}, Landroid/app/Notification;->getChannelId()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static getNotificationColor(Landroid/app/Notification;)Ljava/lang/Integer;
    .locals 2

    .line 777
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    .line 778
    iget-object v0, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v1, "android.colorized"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 782
    :cond_0
    iget p0, p0, Landroid/app/Notification;->color:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static getNotificationGroupAlertBehavior(Landroid/app/Notification;)I
    .locals 2

    .line 786
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    .line 787
    invoke-virtual {p0}, Landroid/app/Notification;->getGroupAlertBehavior()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static declared-synchronized getNotificationManagerImpl(Landroid/app/Activity;Lcom/unity/androidnotifications/NotificationCallback;)Lcom/unity/androidnotifications/UnityNotificationManager;
    .locals 2

    const-class v0, Lcom/unity/androidnotifications/UnityNotificationManager;

    monitor-enter v0

    .line 125
    :try_start_0
    sget-object v1, Lcom/unity/androidnotifications/UnityNotificationManager;->mUnityNotificationManager:Lcom/unity/androidnotifications/UnityNotificationManager;

    if-nez v1, :cond_0

    .line 126
    new-instance v1, Lcom/unity/androidnotifications/UnityNotificationManager;

    invoke-direct {v1}, Lcom/unity/androidnotifications/UnityNotificationManager;-><init>()V

    sput-object v1, Lcom/unity/androidnotifications/UnityNotificationManager;->mUnityNotificationManager:Lcom/unity/androidnotifications/UnityNotificationManager;

    .line 129
    :cond_0
    sget-object v1, Lcom/unity/androidnotifications/UnityNotificationManager;->mUnityNotificationManager:Lcom/unity/androidnotifications/UnityNotificationManager;

    invoke-direct {v1, p0, p1}, Lcom/unity/androidnotifications/UnityNotificationManager;->initialize(Landroid/app/Activity;Lcom/unity/androidnotifications/NotificationCallback;)V

    .line 130
    sget-object p0, Lcom/unity/androidnotifications/UnityNotificationManager;->mUnityNotificationManager:Lcom/unity/androidnotifications/UnityNotificationManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0

    .array-data 1
    .end array-data
.end method

.method static declared-synchronized getNotificationManagerImpl(Landroid/content/Context;)Lcom/unity/androidnotifications/UnityNotificationManager;
    .locals 3

    const-class v0, Lcom/unity/androidnotifications/UnityNotificationManager;

    monitor-enter v0

    .line 112
    :try_start_0
    sget-object v1, Lcom/unity/androidnotifications/UnityNotificationManager;->mUnityNotificationManager:Lcom/unity/androidnotifications/UnityNotificationManager;

    if-nez v1, :cond_0

    .line 113
    new-instance v1, Lcom/unity/androidnotifications/UnityNotificationManager;

    invoke-direct {v1}, Lcom/unity/androidnotifications/UnityNotificationManager;-><init>()V

    sput-object v1, Lcom/unity/androidnotifications/UnityNotificationManager;->mUnityNotificationManager:Lcom/unity/androidnotifications/UnityNotificationManager;

    .line 114
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iput-object v2, v1, Lcom/unity/androidnotifications/UnityNotificationManager;->mVisibleNotifications:Ljava/util/HashSet;

    .line 115
    sget-object v1, Lcom/unity/androidnotifications/UnityNotificationManager;->mUnityNotificationManager:Lcom/unity/androidnotifications/UnityNotificationManager;

    new-instance v2, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v2, v1, Lcom/unity/androidnotifications/UnityNotificationManager;->mScheduledNotifications:Ljava/util/concurrent/ConcurrentHashMap;

    .line 119
    :cond_0
    sget-object v1, Lcom/unity/androidnotifications/UnityNotificationManager;->mUnityNotificationManager:Lcom/unity/androidnotifications/UnityNotificationManager;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    iput-object p0, v1, Lcom/unity/androidnotifications/UnityNotificationManager;->mContext:Landroid/content/Context;

    .line 120
    sget-object p0, Lcom/unity/androidnotifications/UnityNotificationManager;->mUnityNotificationManager:Lcom/unity/androidnotifications/UnityNotificationManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0

    nop

    .array-data 1
    .end array-data
.end method

.method private getNotificationOrBuilderForIntent(Landroid/content/Intent;)Ljava/lang/Object;
    .locals 1

    .line 1037
    invoke-direct {p0, p1}, Lcom/unity/androidnotifications/UnityNotificationManager;->getNotificationOrIdForIntent(Landroid/content/Intent;)Ljava/lang/Object;

    move-result-object p1

    .line 1038
    instance-of v0, p1, Ljava/lang/Integer;

    if-eqz v0, :cond_1

    .line 1039
    check-cast p1, Ljava/lang/Integer;

    .line 1040
    iget-object v0, p0, Lcom/unity/androidnotifications/UnityNotificationManager;->mScheduledNotifications:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1042
    invoke-direct {p0, p1}, Lcom/unity/androidnotifications/UnityNotificationManager;->deserializeNotificationBuilder(Ljava/lang/Integer;)Landroid/app/Notification$Builder;

    move-result-object p1

    return-object p1

    :cond_0
    move-object p1, v0

    :cond_1
    return-object p1

    nop

    .array-data 1
    .end array-data
.end method

.method private getNotificationOrIdForIntent(Landroid/content/Intent;)Ljava/lang/Object;
    .locals 2

    const-string v0, "com.unity.NotificationID"

    .line 1025
    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1026
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :cond_0
    const-string/jumbo v0, "unityNotification"

    .line 1027
    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1030
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1

    nop

    .array-data 1
    .end array-data
.end method

.method private declared-synchronized getScheduledNotificationIDs()Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 637
    :try_start_0
    iget-object v0, p0, Lcom/unity/androidnotifications/UnityNotificationManager;->mContext:Landroid/content/Context;

    const-string v1, "UNITY_STORED_NOTIFICATION_IDS"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "UNITY_NOTIFICATION_IDS"

    .line 638
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 639
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .array-data 1
    .end array-data
.end method

.method private static getSharedPrefsNameByChannelId(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const-string/jumbo p0, "unity_notification_channel_%s"

    .line 239
    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .array-data 1
    .end array-data
.end method

.method static getSharedPrefsNameByNotificationId(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const-string/jumbo p0, "u_notification_data_%s"

    .line 527
    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .array-data 1
    .end array-data
.end method

.method private initialize(Landroid/app/Activity;Lcom/unity/androidnotifications/NotificationCallback;)V
    .locals 1

    .line 90
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/unity/androidnotifications/UnityNotificationManager;->mContext:Landroid/content/Context;

    .line 91
    iput-object p1, p0, Lcom/unity/androidnotifications/UnityNotificationManager;->mActivity:Landroid/app/Activity;

    .line 92
    iput-object p2, p0, Lcom/unity/androidnotifications/UnityNotificationManager;->mNotificationCallback:Lcom/unity/androidnotifications/NotificationCallback;

    .line 93
    iget-object p1, p0, Lcom/unity/androidnotifications/UnityNotificationManager;->mScheduledNotifications:Ljava/util/concurrent/ConcurrentHashMap;

    if-nez p1, :cond_0

    .line 94
    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p1, p0, Lcom/unity/androidnotifications/UnityNotificationManager;->mScheduledNotifications:Ljava/util/concurrent/ConcurrentHashMap;

    .line 95
    :cond_0
    iget-object p1, p0, Lcom/unity/androidnotifications/UnityNotificationManager;->mBackgroundThread:Lcom/unity/androidnotifications/UnityNotificationBackgroundThread;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/unity/androidnotifications/UnityNotificationBackgroundThread;->isAlive()Z

    move-result p1

    if-nez p1, :cond_2

    .line 96
    :cond_1
    new-instance p1, Lcom/unity/androidnotifications/UnityNotificationBackgroundThread;

    iget-object p2, p0, Lcom/unity/androidnotifications/UnityNotificationManager;->mScheduledNotifications:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1, p0, p2}, Lcom/unity/androidnotifications/UnityNotificationBackgroundThread;-><init>(Lcom/unity/androidnotifications/UnityNotificationManager;Ljava/util/concurrent/ConcurrentHashMap;)V

    iput-object p1, p0, Lcom/unity/androidnotifications/UnityNotificationManager;->mBackgroundThread:Lcom/unity/androidnotifications/UnityNotificationBackgroundThread;

    .line 97
    :cond_2
    iget-object p1, p0, Lcom/unity/androidnotifications/UnityNotificationManager;->mRandom:Ljava/util/Random;

    if-nez p1, :cond_3

    .line 98
    new-instance p1, Ljava/util/Random;

    invoke-direct {p1}, Ljava/util/Random;-><init>()V

    iput-object p1, p0, Lcom/unity/androidnotifications/UnityNotificationManager;->mRandom:Ljava/util/Random;

    .line 99
    :cond_3
    iget-object p1, p0, Lcom/unity/androidnotifications/UnityNotificationManager;->mVisibleNotifications:Ljava/util/HashSet;

    if-nez p1, :cond_4

    .line 100
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/unity/androidnotifications/UnityNotificationManager;->mVisibleNotifications:Ljava/util/HashSet;

    .line 102
    :cond_4
    invoke-direct {p0}, Lcom/unity/androidnotifications/UnityNotificationManager;->getAppMetadata()Landroid/os/Bundle;

    .line 104
    iget-object p1, p0, Lcom/unity/androidnotifications/UnityNotificationManager;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/unity/androidnotifications/UnityNotificationUtilities;->getOpenAppActivity(Landroid/content/Context;)Ljava/lang/Class;

    move-result-object p1

    iput-object p1, p0, Lcom/unity/androidnotifications/UnityNotificationManager;->mOpenActivity:Ljava/lang/Class;

    if-eqz p1, :cond_6

    .line 107
    iget-object p1, p0, Lcom/unity/androidnotifications/UnityNotificationManager;->mBackgroundThread:Lcom/unity/androidnotifications/UnityNotificationBackgroundThread;

    invoke-virtual {p1}, Lcom/unity/androidnotifications/UnityNotificationBackgroundThread;->isAlive()Z

    move-result p1

    if-nez p1, :cond_5

    .line 108
    iget-object p1, p0, Lcom/unity/androidnotifications/UnityNotificationManager;->mBackgroundThread:Lcom/unity/androidnotifications/UnityNotificationBackgroundThread;

    invoke-virtual {p1}, Lcom/unity/androidnotifications/UnityNotificationBackgroundThread;->start()V

    :cond_5
    return-void

    .line 106
    :cond_6
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Failed to determine Activity to be opened when tapping notification"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    nop

    .array-data 1
    .end array-data
.end method

.method private static isInForeground()Z
    .locals 3

    .line 997
    new-instance v0, Landroid/app/ActivityManager$RunningAppProcessInfo;

    invoke-direct {v0}, Landroid/app/ActivityManager$RunningAppProcessInfo;-><init>()V

    .line 998
    invoke-static {v0}, Landroid/app/ActivityManager;->getMyMemoryState(Landroid/app/ActivityManager$RunningAppProcessInfo;)V

    .line 999
    iget v1, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    const/16 v2, 0x64

    if-eq v1, v2, :cond_1

    iget v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method private loadBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 3

    .line 853
    :try_start_0
    iget-object v0, p0, Lcom/unity/androidnotifications/UnityNotificationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v0

    .line 854
    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception v0

    .line 856
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Failed to load image "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "UnityNotifications"

    invoke-static {v1, p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p1, 0x0

    return-object p1

    .array-data 1
    .end array-data
.end method

.method private static notificationChannelToWrapper(Ljava/lang/Object;)Lcom/unity/androidnotifications/NotificationChannelWrapper;
    .locals 2

    .line 284
    check-cast p0, Landroid/app/NotificationChannel;

    .line 285
    new-instance v0, Lcom/unity/androidnotifications/NotificationChannelWrapper;

    invoke-direct {v0}, Lcom/unity/androidnotifications/NotificationChannelWrapper;-><init>()V

    .line 287
    invoke-virtual {p0}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/unity/androidnotifications/NotificationChannelWrapper;->id:Ljava/lang/String;

    .line 288
    invoke-virtual {p0}, Landroid/app/NotificationChannel;->getName()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/unity/androidnotifications/NotificationChannelWrapper;->name:Ljava/lang/String;

    .line 289
    invoke-virtual {p0}, Landroid/app/NotificationChannel;->getImportance()I

    move-result v1

    iput v1, v0, Lcom/unity/androidnotifications/NotificationChannelWrapper;->importance:I

    .line 290
    invoke-virtual {p0}, Landroid/app/NotificationChannel;->getDescription()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/unity/androidnotifications/NotificationChannelWrapper;->description:Ljava/lang/String;

    .line 291
    invoke-virtual {p0}, Landroid/app/NotificationChannel;->shouldShowLights()Z

    move-result v1

    iput-boolean v1, v0, Lcom/unity/androidnotifications/NotificationChannelWrapper;->enableLights:Z

    .line 292
    invoke-virtual {p0}, Landroid/app/NotificationChannel;->shouldVibrate()Z

    move-result v1

    iput-boolean v1, v0, Lcom/unity/androidnotifications/NotificationChannelWrapper;->enableVibration:Z

    .line 293
    invoke-virtual {p0}, Landroid/app/NotificationChannel;->canBypassDnd()Z

    move-result v1

    iput-boolean v1, v0, Lcom/unity/androidnotifications/NotificationChannelWrapper;->canBypassDnd:Z

    .line 294
    invoke-virtual {p0}, Landroid/app/NotificationChannel;->canShowBadge()Z

    move-result v1

    iput-boolean v1, v0, Lcom/unity/androidnotifications/NotificationChannelWrapper;->canShowBadge:Z

    .line 295
    invoke-virtual {p0}, Landroid/app/NotificationChannel;->getVibrationPattern()[J

    move-result-object v1

    iput-object v1, v0, Lcom/unity/androidnotifications/NotificationChannelWrapper;->vibrationPattern:[J

    .line 296
    invoke-virtual {p0}, Landroid/app/NotificationChannel;->getLockscreenVisibility()I

    move-result v1

    iput v1, v0, Lcom/unity/androidnotifications/NotificationChannelWrapper;->lockscreenVisibility:I

    .line 297
    invoke-virtual {p0}, Landroid/app/NotificationChannel;->getGroup()Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/unity/androidnotifications/NotificationChannelWrapper;->group:Ljava/lang/String;

    return-object v0

    .array-data 1
    .end array-data
.end method

.method private notify(ILandroid/app/Notification;)V
    .locals 4

    .line 754
    iget-object v0, p2, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v1, "com.unity.showInForeground"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 755
    invoke-static {}, Lcom/unity/androidnotifications/UnityNotificationManager;->isInForeground()Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_1

    .line 756
    :cond_0
    invoke-virtual {p0}, Lcom/unity/androidnotifications/UnityNotificationManager;->getNotificationManager()Landroid/app/NotificationManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 762
    :cond_1
    iget-object v0, p2, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v1, "repeatInterval"

    const-wide/16 v2, -0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_2

    .line 764
    iget-object v0, p0, Lcom/unity/androidnotifications/UnityNotificationManager;->mScheduledNotifications:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 765
    invoke-virtual {p0, p1}, Lcom/unity/androidnotifications/UnityNotificationManager;->cancelPendingNotificationIntent(I)V

    .line 769
    :cond_2
    :try_start_0
    iget-object p1, p0, Lcom/unity/androidnotifications/UnityNotificationManager;->mNotificationCallback:Lcom/unity/androidnotifications/NotificationCallback;

    if-eqz p1, :cond_3

    .line 770
    invoke-interface {p1, p2}, Lcom/unity/androidnotifications/NotificationCallback;->onSentNotification(Landroid/app/Notification;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p1, "UnityNotifications"

    const-string p2, "Can not invoke OnNotificationReceived event when the app is not running!"

    .line 772
    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_0
    return-void

    .array-data 1
    .end array-data
.end method

.method private scheduleNotificationIntentAlarm(JJLandroid/app/PendingIntent;)V
    .locals 8

    .line 590
    iget-object v0, p0, Lcom/unity/androidnotifications/UnityNotificationManager;->mContext:Landroid/content/Context;

    const-string v1, "alarm"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/app/AlarmManager;

    const-wide/16 v2, 0x0

    cmp-long v0, p1, v2

    if-gtz v0, :cond_1

    .line 593
    invoke-direct {p0, v1}, Lcom/unity/androidnotifications/UnityNotificationManager;->canScheduleExactAlarms(Landroid/app/AlarmManager;)Z

    move-result p1

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    .line 594
    invoke-virtual {v1, p2, p3, p4, p5}, Landroid/app/AlarmManager;->setExactAndAllowWhileIdle(IJLandroid/app/PendingIntent;)V

    goto :goto_0

    .line 596
    :cond_0
    invoke-virtual {v1, p2, p3, p4, p5}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    move-wide v3, p3

    move-wide v5, p1

    move-object v7, p5

    .line 599
    invoke-virtual/range {v1 .. v7}, Landroid/app/AlarmManager;->setInexactRepeating(IJJLandroid/app/PendingIntent;)V

    :goto_0
    return-void

    .array-data 1
    .end array-data
.end method

.method public static setNotificationColor(Landroid/app/Notification$Builder;I)V
    .locals 1

    if-eqz p1, :cond_0

    .line 972
    invoke-virtual {p0, p1}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    .line 973
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1a

    if-lt p1, v0, :cond_0

    const/4 p1, 0x1

    .line 974
    invoke-virtual {p0, p1}, Landroid/app/Notification$Builder;->setColorized(Z)Landroid/app/Notification$Builder;

    :cond_0
    return-void

    .array-data 1
    .end array-data
.end method

.method public static setNotificationGroupAlertBehavior(Landroid/app/Notification$Builder;I)V
    .locals 2

    .line 984
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    .line 985
    invoke-virtual {p0, p1}, Landroid/app/Notification$Builder;->setGroupAlertBehavior(I)Landroid/app/Notification$Builder;

    :cond_0
    return-void

    .array-data 1
    .end array-data
.end method

.method public static setNotificationIcon(Landroid/app/Notification$Builder;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    if-eqz p2, :cond_1

    .line 906
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/app/Notification$Builder;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 909
    :cond_0
    invoke-virtual {p0}, Landroid/app/Notification$Builder;->getExtras()Landroid/os/Bundle;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 907
    :cond_1
    :goto_0
    invoke-virtual {p0}, Landroid/app/Notification$Builder;->getExtras()Landroid/os/Bundle;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    :goto_1
    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public static setNotificationUsesChronometer(Landroid/app/Notification$Builder;Z)V
    .locals 0

    .line 980
    invoke-virtual {p0, p1}, Landroid/app/Notification$Builder;->setUsesChronometer(Z)Landroid/app/Notification$Builder;

    return-void

    .array-data 1
    .end array-data
.end method

.method private setupBigPictureStyle(Landroid/app/Notification$Builder;)V
    .locals 7

    .line 926
    invoke-virtual {p1}, Landroid/app/Notification$Builder;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "com.unity.BigPicture"

    .line 927
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    return-void

    .line 930
    :cond_0
    new-instance v2, Landroid/app/Notification$BigPictureStyle;

    invoke-direct {v2}, Landroid/app/Notification$BigPictureStyle;-><init>()V

    const-string v3, "com.unity.BigLargeIcon"

    .line 931
    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 932
    invoke-direct {p0, v3}, Lcom/unity/androidnotifications/UnityNotificationManager;->getIcon(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 934
    instance-of v4, v3, Landroid/graphics/drawable/Icon;

    if-eqz v4, :cond_1

    .line 935
    check-cast v3, Landroid/graphics/drawable/Icon;

    invoke-virtual {v2, v3}, Landroid/app/Notification$BigPictureStyle;->bigLargeIcon(Landroid/graphics/drawable/Icon;)Landroid/app/Notification$BigPictureStyle;

    goto :goto_0

    .line 937
    :cond_1
    check-cast v3, Landroid/graphics/Bitmap;

    invoke-virtual {v2, v3}, Landroid/app/Notification$BigPictureStyle;->bigLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$BigPictureStyle;

    :cond_2
    :goto_0
    const/4 v3, 0x0

    .line 940
    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x2f

    const/16 v6, 0x1f

    if-ne v4, v5, :cond_3

    .line 941
    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/app/Notification$BigPictureStyle;->bigPicture(Landroid/graphics/Bitmap;)Landroid/app/Notification$BigPictureStyle;

    goto :goto_2

    :cond_3
    const-string v4, "://"

    .line 942
    invoke-virtual {v1, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-lez v4, :cond_5

    .line 943
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v4, v6, :cond_4

    .line 944
    invoke-static {v1}, Landroid/graphics/drawable/Icon;->createWithContentUri(Ljava/lang/String;)Landroid/graphics/drawable/Icon;

    move-result-object v1

    .line 945
    invoke-virtual {v2, v1}, Landroid/app/Notification$BigPictureStyle;->bigPicture(Landroid/graphics/drawable/Icon;)Landroid/app/Notification$BigPictureStyle;

    goto :goto_2

    .line 947
    :cond_4
    invoke-direct {p0, v1}, Lcom/unity/androidnotifications/UnityNotificationManager;->loadBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_8

    .line 949
    invoke-virtual {v2, v1}, Landroid/app/Notification$BigPictureStyle;->bigPicture(Landroid/graphics/Bitmap;)Landroid/app/Notification$BigPictureStyle;

    goto :goto_2

    .line 953
    :cond_5
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v4, v6, :cond_6

    const/4 v4, 0x1

    goto :goto_1

    :cond_6
    move v4, v3

    :goto_1
    invoke-direct {p0, v1, v4}, Lcom/unity/androidnotifications/UnityNotificationManager;->getIconFromResources(Ljava/lang/String;Z)Ljava/lang/Object;

    move-result-object v1

    .line 954
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v4, v6, :cond_7

    instance-of v4, v1, Landroid/graphics/drawable/Icon;

    if-eqz v4, :cond_7

    .line 955
    check-cast v1, Landroid/graphics/drawable/Icon;

    invoke-virtual {v2, v1}, Landroid/app/Notification$BigPictureStyle;->bigPicture(Landroid/graphics/drawable/Icon;)Landroid/app/Notification$BigPictureStyle;

    goto :goto_2

    .line 956
    :cond_7
    instance-of v4, v1, Landroid/graphics/Bitmap;

    if-eqz v4, :cond_8

    .line 957
    check-cast v1, Landroid/graphics/Bitmap;

    invoke-virtual {v2, v1}, Landroid/app/Notification$BigPictureStyle;->bigPicture(Landroid/graphics/Bitmap;)Landroid/app/Notification$BigPictureStyle;

    :cond_8
    :goto_2
    const-string v1, "com.unity.BigContentTytle"

    .line 960
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/app/Notification$BigPictureStyle;->setBigContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$BigPictureStyle;

    const-string v1, "com.unity.BigSummaryText"

    .line 961
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/app/Notification$BigPictureStyle;->setSummaryText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigPictureStyle;

    .line 962
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v1, v6, :cond_9

    const-string v1, "com.unity.BigContentDescription"

    .line 963
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/app/Notification$BigPictureStyle;->setContentDescription(Ljava/lang/CharSequence;)Landroid/app/Notification$BigPictureStyle;

    const-string v1, "com.unity.BigShowWhenCollapsed"

    .line 964
    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-virtual {v2, v0}, Landroid/app/Notification$BigPictureStyle;->showBigPictureWhenCollapsed(Z)Landroid/app/Notification$BigPictureStyle;

    .line 967
    :cond_9
    invoke-virtual {p1, v2}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    return-void

    .array-data 1
    .end array-data
.end method

.method private showNotification(Landroid/content/Intent;)V
    .locals 3

    .line 703
    invoke-direct {p0, p1}, Lcom/unity/androidnotifications/UnityNotificationManager;->getNotificationOrIdForIntent(Landroid/content/Intent;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 708
    :cond_0
    instance-of v0, p1, Landroid/app/Notification;

    if-eqz v0, :cond_1

    .line 709
    check-cast p1, Landroid/app/Notification;

    .line 710
    iget-object v0, p1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v1, "id"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 711
    invoke-direct {p0, v0, p1}, Lcom/unity/androidnotifications/UnityNotificationManager;->notify(ILandroid/app/Notification;)V

    return-void

    .line 715
    :cond_1
    check-cast p1, Ljava/lang/Integer;

    .line 716
    iget-object v0, p0, Lcom/unity/androidnotifications/UnityNotificationManager;->mScheduledNotifications:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Notification$Builder;

    if-eqz v0, :cond_2

    .line 718
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1, v0}, Lcom/unity/androidnotifications/UnityNotificationManager;->notify(ILandroid/app/Notification$Builder;)V

    return-void

    .line 722
    :cond_2
    new-instance v0, Lcom/unity/androidnotifications/UnityNotificationManager$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Lcom/unity/androidnotifications/UnityNotificationManager$$ExternalSyntheticLambda0;-><init>(Lcom/unity/androidnotifications/UnityNotificationManager;Ljava/lang/Integer;)V

    invoke-static {v0}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    return-void

    nop

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public areNotificationsEnabled()I
    .locals 3

    .line 152
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x21

    const/4 v2, 0x1

    if-lt v0, v1, :cond_1

    .line 153
    iget-object v0, p0, Lcom/unity/androidnotifications/UnityNotificationManager;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.POST_NOTIFICATIONS"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v2

    .line 154
    :goto_1
    invoke-virtual {p0}, Lcom/unity/androidnotifications/UnityNotificationManager;->getNotificationManager()Landroid/app/NotificationManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/NotificationManager;->areNotificationsEnabled()Z

    move-result v1

    if-eqz v0, :cond_3

    if-eqz v1, :cond_2

    goto :goto_2

    :cond_2
    const/4 v2, 0x5

    :goto_2
    return v2

    :cond_3
    const/4 v0, 0x2

    return v0

    .array-data 1
    .end array-data
.end method

.method public canScheduleExactAlarms()Z
    .locals 2

    .line 584
    iget-object v0, p0, Lcom/unity/androidnotifications/UnityNotificationManager;->mContext:Landroid/content/Context;

    const-string v1, "alarm"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 585
    invoke-direct {p0, v0}, Lcom/unity/androidnotifications/UnityNotificationManager;->canScheduleExactAlarms(Landroid/app/AlarmManager;)Z

    move-result v0

    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public cancelAllNotifications()V
    .locals 1

    .line 678
    invoke-virtual {p0}, Lcom/unity/androidnotifications/UnityNotificationManager;->getNotificationManager()Landroid/app/NotificationManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/NotificationManager;->cancelAll()V

    return-void

    .array-data 1
    .end array-data
.end method

.method public cancelAllPendingNotificationIntents()V
    .locals 1

    .line 633
    iget-object v0, p0, Lcom/unity/androidnotifications/UnityNotificationManager;->mBackgroundThread:Lcom/unity/androidnotifications/UnityNotificationBackgroundThread;

    invoke-virtual {v0}, Lcom/unity/androidnotifications/UnityNotificationBackgroundThread;->enqueueCancelAllNotifications()V

    return-void

    .array-data 1
    .end array-data
.end method

.method public cancelDisplayedNotification(I)V
    .locals 1

    .line 673
    invoke-virtual {p0}, Lcom/unity/androidnotifications/UnityNotificationManager;->getNotificationManager()Landroid/app/NotificationManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/NotificationManager;->cancel(I)V

    return-void

    .array-data 1
    .end array-data
.end method

.method public cancelPendingNotification(I)V
    .locals 1

    .line 650
    iget-object v0, p0, Lcom/unity/androidnotifications/UnityNotificationManager;->mBackgroundThread:Lcom/unity/androidnotifications/UnityNotificationBackgroundThread;

    invoke-virtual {v0, p1}, Lcom/unity/androidnotifications/UnityNotificationBackgroundThread;->enqueueCancelNotification(I)V

    return-void

    .array-data 1
    .end array-data
.end method

.method cancelPendingNotificationIntent(I)V
    .locals 3

    .line 655
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/unity/androidnotifications/UnityNotificationManager;->mContext:Landroid/content/Context;

    const-class v2, Lcom/unity/androidnotifications/UnityNotificationManager;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x20000000

    .line 656
    invoke-direct {p0, p1, v0, v1}, Lcom/unity/androidnotifications/UnityNotificationManager;->getBroadcastPendingIntent(ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 659
    iget-object v0, p0, Lcom/unity/androidnotifications/UnityNotificationManager;->mContext:Landroid/content/Context;

    const-string v1, "alarm"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 660
    invoke-virtual {v0, p1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 661
    invoke-virtual {p1}, Landroid/app/PendingIntent;->cancel()V

    :cond_0
    return-void

    .array-data 1
    .end array-data
.end method

.method public checkIfPendingNotificationIsRegistered(I)Z
    .locals 3

    .line 627
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/unity/androidnotifications/UnityNotificationManager;->mActivity:Landroid/app/Activity;

    const-class v2, Lcom/unity/androidnotifications/UnityNotificationManager;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x20000000

    .line 628
    invoke-direct {p0, p1, v0, v1}, Lcom/unity/androidnotifications/UnityNotificationManager;->getBroadcastPendingIntent(ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1

    nop

    .array-data 1
    .end array-data
.end method

.method public checkNotificationStatus(I)I
    .locals 5

    .line 606
    invoke-virtual {p0}, Lcom/unity/androidnotifications/UnityNotificationManager;->getNotificationManager()Landroid/app/NotificationManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/NotificationManager;->getActiveNotifications()[Landroid/service/notification/StatusBarNotification;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    .line 607
    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v4

    if-ne p1, v4, :cond_0

    const/4 p1, 0x2

    return p1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 617
    :cond_1
    iget-object v0, p0, Lcom/unity/androidnotifications/UnityNotificationManager;->mScheduledNotifications:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    return v1

    .line 619
    :cond_2
    invoke-virtual {p0, p1}, Lcom/unity/androidnotifications/UnityNotificationManager;->checkIfPendingNotificationIsRegistered(I)Z

    move-result p1

    if-eqz p1, :cond_3

    return v1

    :cond_3
    return v2

    .array-data 1
    .end array-data
.end method

.method public createNotificationBuilder(Ljava/lang/String;)Landroid/app/Notification$Builder;
    .locals 5

    .line 863
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-ge v0, v1, :cond_5

    .line 864
    new-instance v0, Landroid/app/Notification$Builder;

    iget-object v1, p0, Lcom/unity/androidnotifications/UnityNotificationManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 867
    invoke-virtual {p0, p1}, Lcom/unity/androidnotifications/UnityNotificationManager;->getNotificationChannel(Ljava/lang/String;)Lcom/unity/androidnotifications/NotificationChannelWrapper;

    move-result-object v1

    .line 869
    iget-object v2, v1, Lcom/unity/androidnotifications/NotificationChannelWrapper;->vibrationPattern:[J

    const/4 v3, -0x1

    if-eqz v2, :cond_0

    iget-object v2, v1, Lcom/unity/androidnotifications/NotificationChannelWrapper;->vibrationPattern:[J

    array-length v2, v2

    if-lez v2, :cond_0

    const/4 v2, 0x5

    .line 870
    invoke-virtual {v0, v2}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    .line 871
    iget-object v2, v1, Lcom/unity/androidnotifications/NotificationChannelWrapper;->vibrationPattern:[J

    invoke-virtual {v0, v2}, Landroid/app/Notification$Builder;->setVibrate([J)Landroid/app/Notification$Builder;

    goto :goto_0

    .line 873
    :cond_0
    invoke-virtual {v0, v3}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    .line 876
    :goto_0
    iget v2, v1, Lcom/unity/androidnotifications/NotificationChannelWrapper;->lockscreenVisibility:I

    invoke-virtual {v0, v2}, Landroid/app/Notification$Builder;->setVisibility(I)Landroid/app/Notification$Builder;

    .line 880
    iget v1, v1, Lcom/unity/androidnotifications/NotificationChannelWrapper;->importance:I

    if-eqz v1, :cond_3

    const/4 v2, 0x2

    if-eq v1, v2, :cond_4

    const/4 v3, 0x3

    const/4 v4, 0x0

    if-eq v1, v3, :cond_1

    const/4 v3, 0x4

    if-eq v1, v3, :cond_2

    :cond_1
    move v3, v4

    goto :goto_1

    :cond_2
    move v3, v2

    goto :goto_1

    :cond_3
    const/4 v3, -0x2

    .line 896
    :cond_4
    :goto_1
    invoke-virtual {v0, v3}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    .line 897
    invoke-virtual {v0}, Landroid/app/Notification$Builder;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "channelID"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 901
    :cond_5
    new-instance v0, Landroid/app/Notification$Builder;

    iget-object v1, p0, Lcom/unity/androidnotifications/UnityNotificationManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method declared-synchronized deleteExpiredNotificationIntent(Ljava/lang/String;)V
    .locals 2

    monitor-enter p0

    .line 667
    :try_start_0
    iget-object v0, p0, Lcom/unity/androidnotifications/UnityNotificationManager;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/unity/androidnotifications/UnityNotificationManager;->getSharedPrefsNameByNotificationId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    .line 668
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 669
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    .array-data 1
    .end array-data
.end method

.method public deleteNotificationChannel(Ljava/lang/String;)V
    .locals 5

    .line 303
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    .line 304
    invoke-virtual {p0}, Lcom/unity/androidnotifications/UnityNotificationManager;->getNotificationManager()Landroid/app/NotificationManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/NotificationManager;->deleteNotificationChannel(Ljava/lang/String;)V

    goto :goto_0

    .line 306
    :cond_0
    iget-object v0, p0, Lcom/unity/androidnotifications/UnityNotificationManager;->mContext:Landroid/content/Context;

    const-string v1, "UNITY_NOTIFICATIONS"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 307
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    const-string v3, "ChannelIDs"

    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    .line 309
    invoke-interface {v1, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    return-void

    .line 313
    :cond_1
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 314
    invoke-interface {v4, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 315
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 316
    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    .line 317
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 320
    iget-object v0, p0, Lcom/unity/androidnotifications/UnityNotificationManager;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/unity/androidnotifications/UnityNotificationManager;->getSharedPrefsNameByChannelId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    .line 321
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    :goto_0
    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public deleteNotificationChannelGroup(Ljava/lang/String;)V
    .locals 5

    if-nez p1, :cond_0

    return-void

    .line 174
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_1

    .line 175
    invoke-virtual {p0}, Lcom/unity/androidnotifications/UnityNotificationManager;->getNotificationManager()Landroid/app/NotificationManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/NotificationManager;->deleteNotificationChannelGroup(Ljava/lang/String;)V

    goto :goto_1

    .line 177
    :cond_1
    invoke-virtual {p0}, Lcom/unity/androidnotifications/UnityNotificationManager;->getNotificationChannels()[Lcom/unity/androidnotifications/NotificationChannelWrapper;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_3

    aget-object v3, v0, v2

    .line 178
    iget-object v4, v3, Lcom/unity/androidnotifications/NotificationChannelWrapper;->group:Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 179
    iget-object v3, v3, Lcom/unity/androidnotifications/NotificationChannelWrapper;->id:Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/unity/androidnotifications/UnityNotificationManager;->deleteNotificationChannel(Ljava/lang/String;)V

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    return-void

    .array-data 1
    .end array-data
.end method

.method public getNotificationChannel(Ljava/lang/String;)Lcom/unity/androidnotifications/NotificationChannelWrapper;
    .locals 8

    .line 243
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    const/4 v2, 0x0

    if-lt v0, v1, :cond_1

    .line 244
    iget-object v0, p0, Lcom/unity/androidnotifications/UnityNotificationManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/unity/androidnotifications/UnityNotificationManager;->getNotificationManagerImpl(Landroid/content/Context;)Lcom/unity/androidnotifications/UnityNotificationManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/unity/androidnotifications/UnityNotificationManager;->getNotificationManager()Landroid/app/NotificationManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/NotificationManager;->getNotificationChannel(Ljava/lang/String;)Landroid/app/NotificationChannel;

    move-result-object p1

    if-nez p1, :cond_0

    return-object v2

    .line 247
    :cond_0
    invoke-static {p1}, Lcom/unity/androidnotifications/UnityNotificationManager;->notificationChannelToWrapper(Ljava/lang/Object;)Lcom/unity/androidnotifications/NotificationChannelWrapper;

    move-result-object p1

    return-object p1

    .line 250
    :cond_1
    iget-object v0, p0, Lcom/unity/androidnotifications/UnityNotificationManager;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/unity/androidnotifications/UnityNotificationManager;->getSharedPrefsNameByChannelId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 251
    new-instance v1, Lcom/unity/androidnotifications/NotificationChannelWrapper;

    invoke-direct {v1}, Lcom/unity/androidnotifications/NotificationChannelWrapper;-><init>()V

    .line 253
    iput-object p1, v1, Lcom/unity/androidnotifications/NotificationChannelWrapper;->id:Ljava/lang/String;

    const-string/jumbo p1, "title"

    const-string/jumbo v4, "undefined"

    .line 254
    invoke-interface {v0, p1, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v1, Lcom/unity/androidnotifications/NotificationChannelWrapper;->name:Ljava/lang/String;

    const-string p1, "importance"

    const/4 v5, 0x3

    .line 255
    invoke-interface {v0, p1, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, v1, Lcom/unity/androidnotifications/NotificationChannelWrapper;->importance:I

    const-string p1, "description"

    .line 256
    invoke-interface {v0, p1, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v1, Lcom/unity/androidnotifications/NotificationChannelWrapper;->description:Ljava/lang/String;

    const-string p1, "enableLights"

    .line 257
    invoke-interface {v0, p1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, v1, Lcom/unity/androidnotifications/NotificationChannelWrapper;->enableLights:Z

    const-string p1, "enableVibration"

    .line 258
    invoke-interface {v0, p1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, v1, Lcom/unity/androidnotifications/NotificationChannelWrapper;->enableVibration:Z

    const-string p1, "canBypassDnd"

    .line 259
    invoke-interface {v0, p1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, v1, Lcom/unity/androidnotifications/NotificationChannelWrapper;->canBypassDnd:Z

    const-string p1, "canShowBadge"

    .line 260
    invoke-interface {v0, p1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, v1, Lcom/unity/androidnotifications/NotificationChannelWrapper;->canShowBadge:Z

    const-string p1, "lockscreenVisibility"

    const/4 v4, 0x1

    .line 261
    invoke-interface {v0, p1, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, v1, Lcom/unity/androidnotifications/NotificationChannelWrapper;->lockscreenVisibility:I

    const-string p1, "group"

    .line 262
    invoke-interface {v0, p1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v1, Lcom/unity/androidnotifications/NotificationChannelWrapper;->group:Ljava/lang/String;

    const-string/jumbo p1, "vibrationPattern"

    const-string v5, "[]"

    .line 263
    invoke-interface {v0, p1, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, ","

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 265
    array-length v0, p1

    new-array v5, v0, [J

    if-le v0, v4, :cond_2

    .line 268
    :goto_0
    array-length v6, p1

    if-ge v3, v6, :cond_2

    .line 270
    :try_start_0
    aget-object v6, p1, v3

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    aput-wide v6, v5, v3
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    const-wide/16 v6, 0x1

    .line 272
    aput-wide v6, v5, v3

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    if-le v0, v4, :cond_3

    move-object v2, v5

    .line 277
    :cond_3
    iput-object v2, v1, Lcom/unity/androidnotifications/NotificationChannelWrapper;->vibrationPattern:[J

    return-object v1

    .array-data 1
    .end array-data
.end method

.method public getNotificationChannels()[Lcom/unity/androidnotifications/NotificationChannelWrapper;
    .locals 5

    .line 326
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-lt v0, v1, :cond_2

    .line 327
    invoke-virtual {p0}, Lcom/unity/androidnotifications/UnityNotificationManager;->getNotificationManager()Landroid/app/NotificationManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/NotificationManager;->getNotificationChannels()Ljava/util/List;

    move-result-object v0

    .line 328
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    return-object v2

    .line 330
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lcom/unity/androidnotifications/NotificationChannelWrapper;

    .line 332
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationChannel;

    add-int/lit8 v4, v3, 0x1

    .line 333
    invoke-static {v2}, Lcom/unity/androidnotifications/UnityNotificationManager;->notificationChannelToWrapper(Ljava/lang/Object;)Lcom/unity/androidnotifications/NotificationChannelWrapper;

    move-result-object v2

    aput-object v2, v1, v3

    move v3, v4

    goto :goto_0

    :cond_1
    return-object v1

    .line 338
    :cond_2
    iget-object v0, p0, Lcom/unity/androidnotifications/UnityNotificationManager;->mContext:Landroid/content/Context;

    const-string v1, "UNITY_NOTIFICATIONS"

    invoke-virtual {v0, v1, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 339
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    const-string v4, "ChannelIDs"

    invoke-interface {v0, v4, v1}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    .line 340
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v1

    if-nez v1, :cond_3

    return-object v2

    .line 342
    :cond_3
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v1

    new-array v1, v1, [Lcom/unity/androidnotifications/NotificationChannelWrapper;

    .line 344
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    add-int/lit8 v4, v3, 0x1

    .line 345
    invoke-virtual {p0, v2}, Lcom/unity/androidnotifications/UnityNotificationManager;->getNotificationChannel(Ljava/lang/String;)Lcom/unity/androidnotifications/NotificationChannelWrapper;

    move-result-object v2

    aput-object v2, v1, v3

    move v3, v4

    goto :goto_1

    :cond_4
    return-object v1

    nop

    .array-data 1
    .end array-data
.end method

.method public getNotificationFromIntent(Landroid/content/Intent;)Landroid/app/Notification;
    .locals 6

    const-string v0, "com.unity.NotificationID"

    .line 1004
    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1005
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 1006
    invoke-virtual {p0}, Lcom/unity/androidnotifications/UnityNotificationManager;->getNotificationManager()Landroid/app/NotificationManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/NotificationManager;->getActiveNotifications()[Landroid/service/notification/StatusBarNotification;

    move-result-object v1

    .line 1007
    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    .line 1008
    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v5

    if-ne v5, v0, :cond_0

    .line 1009
    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object p1

    return-object p1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1015
    :cond_1
    invoke-direct {p0, p1}, Lcom/unity/androidnotifications/UnityNotificationManager;->getNotificationOrBuilderForIntent(Landroid/content/Intent;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_2

    const/4 p1, 0x0

    return-object p1

    .line 1018
    :cond_2
    instance-of v0, p1, Landroid/app/Notification;

    if-eqz v0, :cond_3

    .line 1019
    check-cast p1, Landroid/app/Notification;

    return-object p1

    .line 1020
    :cond_3
    check-cast p1, Landroid/app/Notification$Builder;

    .line 1021
    invoke-virtual {p1}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object p1

    return-object p1

    .array-data 1
    .end array-data
.end method

.method public getNotificationManager()Landroid/app/NotificationManager;
    .locals 2

    .line 142
    iget-object v0, p0, Lcom/unity/androidnotifications/UnityNotificationManager;->mContext:Landroid/content/Context;

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getTargetSdk()I
    .locals 1

    .line 146
    iget-object v0, p0, Lcom/unity/androidnotifications/UnityNotificationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method synthetic lambda$showNotification$0$com-unity-androidnotifications-UnityNotificationManager(Ljava/lang/Integer;)V
    .locals 1

    .line 723
    invoke-direct {p0, p1}, Lcom/unity/androidnotifications/UnityNotificationManager;->deserializeNotificationBuilder(Ljava/lang/Integer;)Landroid/app/Notification$Builder;

    move-result-object v0

    if-nez v0, :cond_0

    const-string p1, "UnityNotifications"

    const-string v0, "Failed to recover builder, can\'t send notification"

    .line 725
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 729
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1, v0}, Lcom/unity/androidnotifications/UnityNotificationManager;->notify(ILandroid/app/Notification$Builder;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method declared-synchronized loadSavedNotifications()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/app/Notification$Builder;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 532
    :try_start_0
    invoke-direct {p0}, Lcom/unity/androidnotifications/UnityNotificationManager;->getScheduledNotificationIDs()Ljava/util/Set;

    move-result-object v0

    .line 534
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 535
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 537
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 538
    iget-object v5, p0, Lcom/unity/androidnotifications/UnityNotificationManager;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/unity/androidnotifications/UnityNotificationManager;->getSharedPrefsNameByNotificationId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    .line 540
    iget-object v6, p0, Lcom/unity/androidnotifications/UnityNotificationManager;->mContext:Landroid/content/Context;

    invoke-static {v6, v5}, Lcom/unity/androidnotifications/UnityNotificationUtilities;->deserializeNotification(Landroid/content/Context;Landroid/content/SharedPreferences;)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 542
    instance-of v6, v5, Landroid/app/Notification$Builder;

    if-eqz v6, :cond_0

    .line 543
    check-cast v5, Landroid/app/Notification$Builder;

    goto :goto_1

    .line 545
    :cond_0
    iget-object v6, p0, Lcom/unity/androidnotifications/UnityNotificationManager;->mContext:Landroid/content/Context;

    check-cast v5, Landroid/app/Notification;

    invoke-static {v6, v5}, Lcom/unity/androidnotifications/UnityNotificationUtilities;->recoverBuilder(Landroid/content/Context;Landroid/app/Notification;)Landroid/app/Notification$Builder;

    move-result-object v5

    goto :goto_1

    :cond_1
    const/4 v5, 0x0

    :goto_1
    if-eqz v5, :cond_2

    .line 549
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 551
    :cond_2
    invoke-interface {v2, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 554
    :cond_3
    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v3

    if-lez v3, :cond_5

    .line 555
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 556
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 557
    invoke-interface {v3, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 558
    invoke-virtual {p0, v2}, Lcom/unity/androidnotifications/UnityNotificationManager;->deleteExpiredNotificationIntent(Ljava/lang/String;)V

    goto :goto_2

    .line 560
    :cond_4
    invoke-virtual {p0, v3}, Lcom/unity/androidnotifications/UnityNotificationManager;->saveScheduledNotificationIDs(Ljava/util/Set;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 563
    :cond_5
    monitor-exit p0

    return-object v1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    nop

    .array-data 1
    .end array-data
.end method

.method notify(ILandroid/app/Notification$Builder;)V
    .locals 1

    .line 735
    iget-object v0, p0, Lcom/unity/androidnotifications/UnityNotificationManager;->mOpenActivity:Ljava/lang/Class;

    if-nez v0, :cond_0

    .line 736
    iget-object v0, p0, Lcom/unity/androidnotifications/UnityNotificationManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/unity/androidnotifications/UnityNotificationUtilities;->getOpenAppActivity(Landroid/content/Context;)Ljava/lang/Class;

    move-result-object v0

    if-nez v0, :cond_0

    const-string p1, "UnityNotifications"

    const-string p2, "Activity not found, cannot show notification"

    .line 738
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 746
    :cond_0
    invoke-direct {p0, v0, p2}, Lcom/unity/androidnotifications/UnityNotificationManager;->buildNotificationForSending(Ljava/lang/Class;Landroid/app/Notification$Builder;)Landroid/app/Notification;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 748
    invoke-direct {p0, p1, p2}, Lcom/unity/androidnotifications/UnityNotificationManager;->notify(ILandroid/app/Notification;)V

    :cond_1
    return-void

    .array-data 1
    .end array-data
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 686
    invoke-static {p1}, Lcom/unity/androidnotifications/UnityNotificationManager;->getNotificationManagerImpl(Landroid/content/Context;)Lcom/unity/androidnotifications/UnityNotificationManager;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/unity/androidnotifications/UnityNotificationManager;->onReceive(Landroid/content/Intent;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method public onReceive(Landroid/content/Intent;)V
    .locals 0

    .line 699
    invoke-direct {p0, p1}, Lcom/unity/androidnotifications/UnityNotificationManager;->showNotification(Landroid/content/Intent;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method performNotificationHousekeeping(Ljava/util/Set;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "UnityNotifications"

    const-string v1, "Checking for invalid notification IDs still hanging around"

    .line 445
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 447
    invoke-direct {p0, p1}, Lcom/unity/androidnotifications/UnityNotificationManager;->findInvalidNotificationIds(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    .line 448
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 449
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 450
    invoke-interface {v1, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 451
    iget-object v3, p0, Lcom/unity/androidnotifications/UnityNotificationManager;->mScheduledNotifications:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3, v2}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 455
    :cond_0
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 456
    invoke-virtual {p0, v0}, Lcom/unity/androidnotifications/UnityNotificationManager;->deleteExpiredNotificationIntent(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    return-void

    .array-data 1
    .end array-data
.end method

.method performNotificationScheduling(ILandroid/app/Notification$Builder;Z)V
    .locals 8

    .line 376
    invoke-virtual {p2}, Landroid/app/Notification$Builder;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "repeatInterval"

    const-wide/16 v2, -0x1

    .line 377
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    const-string v1, "fireTime"

    .line 378
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 381
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    sub-long v2, v0, v2

    const-wide/16 v6, 0x3e8

    cmp-long v2, v2, v6

    if-gez v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_1

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-lez v3, :cond_3

    :cond_1
    if-eqz v2, :cond_2

    add-long/2addr v0, v4

    .line 388
    :cond_2
    invoke-direct {p0}, Lcom/unity/androidnotifications/UnityNotificationManager;->buildNotificationIntent()Landroid/content/Intent;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 391
    invoke-virtual {p2}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v4

    invoke-virtual {p0, v4, p3}, Lcom/unity/androidnotifications/UnityNotificationManager;->saveNotification(Landroid/app/Notification;Z)V

    .line 392
    invoke-virtual {p0, p2, v3, v0, v1}, Lcom/unity/androidnotifications/UnityNotificationManager;->scheduleAlarmWithNotification(Landroid/app/Notification$Builder;Landroid/content/Intent;J)V

    :cond_3
    if-eqz v2, :cond_4

    .line 397
    iget-object p3, p0, Lcom/unity/androidnotifications/UnityNotificationManager;->mOpenActivity:Ljava/lang/Class;

    invoke-direct {p0, p3, p2}, Lcom/unity/androidnotifications/UnityNotificationManager;->buildNotificationForSending(Ljava/lang/Class;Landroid/app/Notification$Builder;)Landroid/app/Notification;

    move-result-object p2

    .line 398
    invoke-direct {p0, p1, p2}, Lcom/unity/androidnotifications/UnityNotificationManager;->notify(ILandroid/app/Notification;)V

    :cond_4
    return-void

    .array-data 1
    .end array-data
.end method

.method public registerNotificationChannel(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ZZZZ[JILjava/lang/String;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p10

    move-object/from16 v10, p11

    .line 196
    sget v11, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v12, 0x1a

    if-lt v11, v12, :cond_0

    .line 197
    new-instance v11, Landroid/app/NotificationChannel;

    invoke-direct {v11, v1, v2, v3}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 198
    invoke-virtual {v11, v4}, Landroid/app/NotificationChannel;->setDescription(Ljava/lang/String;)V

    .line 199
    invoke-virtual {v11, v5}, Landroid/app/NotificationChannel;->enableLights(Z)V

    .line 200
    invoke-virtual {v11, v6}, Landroid/app/NotificationChannel;->enableVibration(Z)V

    .line 201
    invoke-virtual {v11, v7}, Landroid/app/NotificationChannel;->setBypassDnd(Z)V

    .line 202
    invoke-virtual {v11, v8}, Landroid/app/NotificationChannel;->setShowBadge(Z)V

    move-object/from16 v12, p9

    .line 203
    invoke-virtual {v11, v12}, Landroid/app/NotificationChannel;->setVibrationPattern([J)V

    .line 204
    invoke-virtual {v11, v9}, Landroid/app/NotificationChannel;->setLockscreenVisibility(I)V

    .line 205
    invoke-virtual {v11, v10}, Landroid/app/NotificationChannel;->setGroup(Ljava/lang/String;)V

    .line 207
    invoke-virtual/range {p0 .. p0}, Lcom/unity/androidnotifications/UnityNotificationManager;->getNotificationManager()Landroid/app/NotificationManager;

    move-result-object v1

    invoke-virtual {v1, v11}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    goto :goto_0

    :cond_0
    move-object/from16 v12, p9

    .line 209
    iget-object v11, v0, Lcom/unity/androidnotifications/UnityNotificationManager;->mContext:Landroid/content/Context;

    const-string v13, "UNITY_NOTIFICATIONS"

    const/4 v14, 0x0

    invoke-virtual {v11, v13, v14}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v11

    .line 210
    new-instance v13, Ljava/util/HashSet;

    new-instance v15, Ljava/util/HashSet;

    invoke-direct {v15}, Ljava/util/HashSet;-><init>()V

    const-string v14, "ChannelIDs"

    invoke-interface {v11, v14, v15}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v15

    invoke-direct {v13, v15}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 211
    invoke-interface {v13, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 214
    invoke-interface {v11}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v11

    invoke-interface {v11}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v11

    .line 215
    invoke-interface {v11, v14, v13}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    .line 216
    invoke-interface {v11}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 219
    iget-object v11, v0, Lcom/unity/androidnotifications/UnityNotificationManager;->mContext:Landroid/content/Context;

    invoke-static/range {p1 .. p1}, Lcom/unity/androidnotifications/UnityNotificationManager;->getSharedPrefsNameByChannelId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v13, 0x0

    invoke-virtual {v11, v1, v13}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 220
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string/jumbo v11, "title"

    .line 222
    invoke-interface {v1, v11, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v2, "importance"

    .line 223
    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const-string v2, "description"

    .line 224
    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v2, "enableLights"

    .line 225
    invoke-interface {v1, v2, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const-string v2, "enableVibration"

    .line 226
    invoke-interface {v1, v2, v6}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const-string v2, "canBypassDnd"

    .line 227
    invoke-interface {v1, v2, v7}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const-string v2, "canShowBadge"

    .line 228
    invoke-interface {v1, v2, v8}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const-string/jumbo v2, "vibrationPattern"

    .line 229
    invoke-static/range {p9 .. p9}, Ljava/util/Arrays;->toString([J)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v2, "lockscreenVisibility"

    .line 230
    invoke-interface {v1, v2, v9}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const-string v2, "group"

    .line 231
    invoke-interface {v1, v2, v10}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 233
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    :goto_0
    return-void

    .array-data 1
    .end array-data
.end method

.method public registerNotificationChannelGroup(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 161
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_1

    .line 162
    new-instance v0, Landroid/app/NotificationChannelGroup;

    invoke-direct {v0, p1, p2}, Landroid/app/NotificationChannelGroup;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 163
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0x1c

    if-lt p1, p2, :cond_0

    .line 164
    invoke-virtual {v0, p3}, Landroid/app/NotificationChannelGroup;->setDescription(Ljava/lang/String;)V

    .line 167
    :cond_0
    invoke-virtual {p0}, Lcom/unity/androidnotifications/UnityNotificationManager;->getNotificationManager()Landroid/app/NotificationManager;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/app/NotificationManager;->createNotificationChannelGroup(Landroid/app/NotificationChannelGroup;)V

    :cond_1
    return-void

    .array-data 1
    .end array-data
.end method

.method declared-synchronized saveNotification(Landroid/app/Notification;Z)V
    .locals 3

    monitor-enter p0

    .line 521
    :try_start_0
    iget-object v0, p1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v1, "id"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 522
    iget-object v1, p0, Lcom/unity/androidnotifications/UnityNotificationManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/unity/androidnotifications/UnityNotificationManager;->getSharedPrefsNameByNotificationId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 523
    invoke-static {v0, p1, p2}, Lcom/unity/androidnotifications/UnityNotificationUtilities;->serializeNotification(Landroid/content/SharedPreferences;Landroid/app/Notification;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 524
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    nop

    .array-data 1
    .end array-data
.end method

.method declared-synchronized saveScheduledNotificationIDs(Ljava/util/Set;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    .line 643
    :try_start_0
    iget-object v0, p0, Lcom/unity/androidnotifications/UnityNotificationManager;->mContext:Landroid/content/Context;

    const-string v1, "UNITY_STORED_NOTIFICATION_IDS"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "UNITY_NOTIFICATION_IDS"

    .line 644
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    .line 645
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 646
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    nop

    .array-data 1
    .end array-data
.end method

.method scheduleAlarmWithNotification(Landroid/app/Notification$Builder;)V
    .locals 4

    .line 418
    invoke-virtual {p1}, Landroid/app/Notification$Builder;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "fireTime"

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 419
    invoke-direct {p0}, Lcom/unity/androidnotifications/UnityNotificationManager;->buildNotificationIntent()Landroid/content/Intent;

    move-result-object v2

    .line 420
    invoke-virtual {p0, p1, v2, v0, v1}, Lcom/unity/androidnotifications/UnityNotificationManager;->scheduleAlarmWithNotification(Landroid/app/Notification$Builder;Landroid/content/Intent;J)V

    return-void

    .array-data 1
    .end array-data
.end method

.method scheduleAlarmWithNotification(Landroid/app/Notification$Builder;Landroid/content/Intent;J)V
    .locals 11

    .line 403
    invoke-virtual {p1}, Landroid/app/Notification$Builder;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "id"

    const/4 v2, -0x1

    .line 404
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    const-string v2, "repeatInterval"

    const-wide/16 v3, -0x1

    .line 405
    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v6

    .line 410
    iget-object v0, p0, Lcom/unity/androidnotifications/UnityNotificationManager;->mScheduledNotifications:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "com.unity.NotificationID"

    .line 411
    invoke-virtual {p2, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/high16 p1, 0x8000000

    .line 413
    invoke-direct {p0, v1, p2, p1}, Lcom/unity/androidnotifications/UnityNotificationManager;->getBroadcastPendingIntent(ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v10

    move-object v5, p0

    move-wide v8, p3

    .line 414
    invoke-direct/range {v5 .. v10}, Lcom/unity/androidnotifications/UnityNotificationManager;->scheduleNotificationIntentAlarm(JJLandroid/app/PendingIntent;)V

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public scheduleNotification(Landroid/app/Notification$Builder;Z)I
    .locals 3

    .line 361
    invoke-virtual {p1}, Landroid/app/Notification$Builder;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "id"

    .line 363
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 364
    invoke-virtual {p1}, Landroid/app/Notification$Builder;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    goto :goto_0

    .line 366
    :cond_0
    invoke-direct {p0}, Lcom/unity/androidnotifications/UnityNotificationManager;->generateUniqueId()I

    move-result v2

    .line 367
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move v0, v2

    .line 370
    :goto_0
    iget-object v1, p0, Lcom/unity/androidnotifications/UnityNotificationManager;->mScheduledNotifications:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    .line 371
    :goto_1
    iget-object v2, p0, Lcom/unity/androidnotifications/UnityNotificationManager;->mBackgroundThread:Lcom/unity/androidnotifications/UnityNotificationBackgroundThread;

    invoke-virtual {v2, v0, p1, p2, v1}, Lcom/unity/androidnotifications/UnityNotificationBackgroundThread;->enqueueNotification(ILandroid/app/Notification$Builder;ZZ)V

    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public setupBigPictureStyle(Landroid/app/Notification$Builder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1

    .line 914
    invoke-virtual {p1}, Landroid/app/Notification$Builder;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p3, :cond_1

    .line 915
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "com.unity.BigLargeIcon"

    .line 917
    invoke-virtual {p1, v0, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "com.unity.BigPicture"

    .line 918
    invoke-virtual {p1, p2, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "com.unity.BigContentTytle"

    .line 919
    invoke-virtual {p1, p2, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "com.unity.BigSummaryText"

    .line 920
    invoke-virtual {p1, p2, p6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "com.unity.BigContentDescription"

    .line 921
    invoke-virtual {p1, p2, p5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "com.unity.BigShowWhenCollapsed"

    .line 922
    invoke-virtual {p1, p2, p7}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_1
    :goto_0
    return-void

    .array-data 1
    .end array-data
.end method

.method public showNotificationSettings(Ljava/lang/String;)V
    .locals 3

    .line 1065
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-ge v0, v1, :cond_0

    .line 1066
    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.settings.APPLICATION_DETAILS_SETTINGS"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1067
    iget-object v0, p0, Lcom/unity/androidnotifications/UnityNotificationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "package"

    invoke-static {v2, v0, v1}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 1068
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    goto :goto_1

    :cond_0
    if-eqz p1, :cond_1

    .line 1070
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 1071
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.CHANNEL_NOTIFICATION_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.provider.extra.CHANNEL_ID"

    .line 1072
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-object p1, v0

    goto :goto_0

    .line 1074
    :cond_1
    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.settings.APP_NOTIFICATION_SETTINGS"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1077
    :goto_0
    iget-object v0, p0, Lcom/unity/androidnotifications/UnityNotificationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.provider.extra.APP_PACKAGE"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :goto_1
    const/high16 v0, 0x10000000

    .line 1080
    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1081
    iget-object v0, p0, Lcom/unity/androidnotifications/UnityNotificationManager;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void

    nop

    .array-data 1
    .end array-data
.end method
