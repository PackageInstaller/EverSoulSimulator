.class public Lcom/unity/androidnotifications/AndroidNotificationCenterExtensions;
.super Ljava/lang/Object;
.source "AndroidNotificationCenterExtensions.java"


# static fields
.field private static final CHECK_OP_NO_THROW:Ljava/lang/String; = "checkOpNoThrow"

.field private static final OP_POST_NOTIFICATION:Ljava/lang/String; = "OP_POST_NOTIFICATION"

.field protected static extentionsImpl:Lcom/unity/androidnotifications/AndroidNotificationCenterExtensions;


# instance fields
.field protected context:Landroid/content/Context;

.field protected notificationManager:Landroid/app/NotificationManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/app/NotificationManager;)V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/unity/androidnotifications/AndroidNotificationCenterExtensions;->context:Landroid/content/Context;

    .line 25
    iput-object p2, p0, Lcom/unity/androidnotifications/AndroidNotificationCenterExtensions;->notificationManager:Landroid/app/NotificationManager;

    return-void

    .array-data 1
    .end array-data
.end method

.method public static getExtensionsImpl(Landroid/content/Context;Landroid/app/NotificationManager;)Lcom/unity/androidnotifications/AndroidNotificationCenterExtensions;
    .locals 2

    .line 31
    sget-object v0, Lcom/unity/androidnotifications/AndroidNotificationCenterExtensions;->extentionsImpl:Lcom/unity/androidnotifications/AndroidNotificationCenterExtensions;

    if-eqz v0, :cond_0

    return-object v0

    .line 35
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_1

    .line 36
    new-instance v0, Lcom/unity/androidnotifications/AndroidNotificationCenterExtensionsOreo;

    invoke-direct {v0, p0, p1}, Lcom/unity/androidnotifications/AndroidNotificationCenterExtensionsOreo;-><init>(Landroid/content/Context;Landroid/app/NotificationManager;)V

    sput-object v0, Lcom/unity/androidnotifications/AndroidNotificationCenterExtensions;->extentionsImpl:Lcom/unity/androidnotifications/AndroidNotificationCenterExtensions;

    goto :goto_0

    .line 39
    :cond_1
    new-instance v0, Lcom/unity/androidnotifications/AndroidNotificationCenterExtensions;

    invoke-direct {v0, p0, p1}, Lcom/unity/androidnotifications/AndroidNotificationCenterExtensions;-><init>(Landroid/content/Context;Landroid/app/NotificationManager;)V

    sput-object v0, Lcom/unity/androidnotifications/AndroidNotificationCenterExtensions;->extentionsImpl:Lcom/unity/androidnotifications/AndroidNotificationCenterExtensions;

    .line 42
    :goto_0
    sget-object p0, Lcom/unity/androidnotifications/AndroidNotificationCenterExtensions;->extentionsImpl:Lcom/unity/androidnotifications/AndroidNotificationCenterExtensions;

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public areNotificationsEnabled()Z
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/unity/androidnotifications/AndroidNotificationCenterExtensions;->notificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v0}, Landroid/app/NotificationManager;->areNotificationsEnabled()Z

    move-result v0

    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public areNotificationsEnabled(Ljava/lang/String;)Z
    .locals 0

    .line 76
    invoke-virtual {p0}, Lcom/unity/androidnotifications/AndroidNotificationCenterExtensions;->areNotificationsEnabled()Z

    move-result p1

    return p1

    nop

    .array-data 1
    .end array-data
.end method
