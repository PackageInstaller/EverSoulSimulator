.class public Lcom/unity/androidnotifications/UnityNotificationRestartReceiver;
.super Landroid/content/BroadcastReceiver;
.source "UnityNotificationRestartReceiver.java"


# static fields
.field private static final EXPIRATION_TRESHOLD:J = 0x927c0L


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void

    .array-data 1
    .end array-data
.end method

.method static synthetic lambda$onReceive$0(Landroid/content/Context;)V
    .locals 0

    .line 27
    invoke-static {p0}, Lcom/unity/androidnotifications/UnityNotificationRestartReceiver;->rescheduleSavedNotifications(Landroid/content/Context;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method private static rescheduleNotification(Lcom/unity/androidnotifications/UnityNotificationManager;Ljava/util/Date;Landroid/app/Notification$Builder;)Z
    .locals 11

    const-string v0, "UnityNotifications"

    const-string v1, "Notification expired, not rescheduling, ID: "

    const/4 v2, 0x0

    .line 43
    :try_start_0
    invoke-virtual {p2}, Landroid/app/Notification$Builder;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "repeatInterval"

    const-wide/16 v5, 0x0

    .line 44
    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v7

    const-string v4, "fireTime"

    .line 45
    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v9

    .line 46
    new-instance v4, Ljava/util/Date;

    invoke-direct {v4, v9, v10}, Ljava/util/Date;-><init>(J)V

    cmp-long v5, v7, v5

    const/4 v6, 0x1

    if-lez v5, :cond_0

    move v5, v6

    goto :goto_0

    :cond_0
    move v5, v2

    .line 50
    :goto_0
    invoke-virtual {v4, p1}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v4

    if-nez v4, :cond_3

    if-eqz v5, :cond_1

    goto :goto_1

    .line 53
    :cond_1
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    sub-long/2addr v4, v9

    const-wide/32 v7, 0x927c0

    cmp-long p1, v4, v7

    const-string v4, "id"

    if-gez p1, :cond_2

    .line 55
    :try_start_1
    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    .line 56
    invoke-virtual {p0, p1, p2}, Lcom/unity/androidnotifications/UnityNotificationManager;->notify(ILandroid/app/Notification$Builder;)V

    return v6

    .line 59
    :cond_2
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 p1, -0x1

    invoke-virtual {v3, v4, p1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 51
    :cond_3
    :goto_1
    invoke-virtual {p0, p2}, Lcom/unity/androidnotifications/UnityNotificationManager;->scheduleAlarmWithNotification(Landroid/app/Notification$Builder;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return v6

    :catch_0
    move-exception p0

    const-string p1, "Failed to reschedule notification"

    .line 63
    invoke-static {v0, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v2

    .array-data 1
    .end array-data
.end method

.method private static rescheduleSavedNotifications(Landroid/content/Context;)V
    .locals 3

    .line 32
    invoke-static {p0}, Lcom/unity/androidnotifications/UnityNotificationManager;->getNotificationManagerImpl(Landroid/content/Context;)Lcom/unity/androidnotifications/UnityNotificationManager;

    move-result-object p0

    .line 33
    invoke-virtual {p0}, Lcom/unity/androidnotifications/UnityNotificationManager;->loadSavedNotifications()Ljava/util/List;

    move-result-object v0

    .line 34
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    .line 36
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/Notification$Builder;

    .line 37
    invoke-static {p0, v1, v2}, Lcom/unity/androidnotifications/UnityNotificationRestartReceiver;->rescheduleNotification(Lcom/unity/androidnotifications/UnityNotificationManager;Ljava/util/Date;Landroid/app/Notification$Builder;)Z

    goto :goto_0

    :cond_0
    return-void

    nop

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    const-string v0, "UnityNotifications"

    const-string v1, "Rescheduling notifications after restart"

    .line 25
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "android.intent.action.BOOT_COMPLETED"

    .line 26
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 27
    new-instance p2, Lcom/unity/androidnotifications/UnityNotificationRestartReceiver$$ExternalSyntheticLambda0;

    invoke-direct {p2, p1}, Lcom/unity/androidnotifications/UnityNotificationRestartReceiver$$ExternalSyntheticLambda0;-><init>(Landroid/content/Context;)V

    invoke-static {p2}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    :cond_0
    return-void

    .array-data 1
    .end array-data
.end method
