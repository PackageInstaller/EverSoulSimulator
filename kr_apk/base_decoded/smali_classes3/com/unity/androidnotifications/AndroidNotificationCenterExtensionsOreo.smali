.class public Lcom/unity/androidnotifications/AndroidNotificationCenterExtensionsOreo;
.super Lcom/unity/androidnotifications/AndroidNotificationCenterExtensions;
.source "AndroidNotificationCenterExtensionsOreo.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/app/NotificationManager;)V
    .locals 0

    .line 12
    invoke-direct {p0, p1, p2}, Lcom/unity/androidnotifications/AndroidNotificationCenterExtensions;-><init>(Landroid/content/Context;Landroid/app/NotificationManager;)V

    return-void

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public areNotificationsEnabled(Ljava/lang/String;)Z
    .locals 1

    .line 19
    invoke-super {p0}, Lcom/unity/androidnotifications/AndroidNotificationCenterExtensions;->areNotificationsEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 20
    iget-object v0, p0, Lcom/unity/androidnotifications/AndroidNotificationCenterExtensionsOreo;->notificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v0, p1}, Landroid/app/NotificationManager;->getNotificationChannel(Ljava/lang/String;)Landroid/app/NotificationChannel;

    move-result-object p1

    const/4 v0, 0x1

    if-nez p1, :cond_0

    return v0

    .line 28
    :cond_0
    invoke-virtual {p1}, Landroid/app/NotificationChannel;->getImportance()I

    move-result p1

    if-eqz p1, :cond_1

    return v0

    :cond_1
    const/4 p1, 0x0

    return p1

    nop

    .array-data 1
    .end array-data
.end method
