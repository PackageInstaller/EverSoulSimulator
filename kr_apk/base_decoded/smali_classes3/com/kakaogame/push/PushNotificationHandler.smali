.class public final Lcom/kakaogame/push/PushNotificationHandler;
.super Ljava/lang/Object;
.source "PushNotificationHandler.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u001c\u0010\u0007\u001a\u00020\u00082\u0008\u0010\t\u001a\u0004\u0018\u00010\n2\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u000cH\u0007J\"\u0010\r\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u000c2\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u000fH\u0003R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0005X\u0082T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0010"
    }
    d2 = {
        "Lcom/kakaogame/push/PushNotificationHandler;",
        "",
        "<init>",
        "()V",
        "TAG",
        "",
        "PUSH_TYPE_APP_BADGE",
        "onReceive",
        "",
        "context",
        "Landroid/content/Context;",
        "pushMessage",
        "Lcom/kakaogame/push/PushMessage;",
        "handlePushMessage",
        "imageBitmap",
        "Landroid/graphics/Bitmap;",
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
.field public static final INSTANCE:Lcom/kakaogame/push/PushNotificationHandler;

.field private static final PUSH_TYPE_APP_BADGE:Ljava/lang/String; = "badge"

.field private static final TAG:Ljava/lang/String; = "PushNotificationHandler"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/kakaogame/push/PushNotificationHandler;

    invoke-direct {v0}, Lcom/kakaogame/push/PushNotificationHandler;-><init>()V

    sput-object v0, Lcom/kakaogame/push/PushNotificationHandler;->INSTANCE:Lcom/kakaogame/push/PushNotificationHandler;

    return-void

    .array-data 1
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .line 279
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void

    .array-data 1
    .end array-data
.end method

.method public static final synthetic access$handlePushMessage(Lcom/kakaogame/push/PushNotificationHandler;Landroid/content/Context;Lcom/kakaogame/push/PushMessage;Landroid/graphics/Bitmap;)V
    .locals 0

    .line 279
    invoke-direct {p0, p1, p2, p3}, Lcom/kakaogame/push/PushNotificationHandler;->handlePushMessage(Landroid/content/Context;Lcom/kakaogame/push/PushMessage;Landroid/graphics/Bitmap;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method private final handlePushMessage(Landroid/content/Context;Lcom/kakaogame/push/PushMessage;Landroid/graphics/Bitmap;)V
    .locals 18

    move-object/from16 v0, p1

    move-object/from16 v1, p3

    const v2, 0x5d118c7f

    invoke-static {v2}, Lcom/liapp/y;->ڴݮگ֮ت(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x6d009db0

    invoke-static {v3}, Lcom/liapp/y;->ٱڳܴڭܩ(I)Ljava/lang/String;

    move-result-object v3

    .line 799
    new-instance v4, Ljava/lang/StringBuilder;

    const v5, -0x4515eff7

    invoke-static {v5}, Lcom/liapp/y;->ڳݬ٬ۮݪ(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v5, p2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const v6, 0x543583ea

    invoke-static {v6}, Lcom/liapp/y;->׳ֳֳ֬د(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 819
    :try_start_0
    invoke-virtual/range {p2 .. p2}, Lcom/kakaogame/push/PushMessage;->getNotificationId()I

    move-result v4

    .line 849
    invoke-virtual/range {p2 .. p2}, Lcom/kakaogame/push/PushMessage;->getAppPendingIntent()Landroid/app/PendingIntent;

    move-result-object v7

    .line 879
    invoke-virtual/range {p2 .. p2}, Lcom/kakaogame/push/PushMessage;->getTicker()Ljava/lang/CharSequence;

    move-result-object v8

    .line 909
    invoke-virtual/range {p2 .. p2}, Lcom/kakaogame/push/PushMessage;->getContentTitle()Ljava/lang/CharSequence;

    move-result-object v9

    .line 939
    invoke-virtual/range {p2 .. p2}, Lcom/kakaogame/push/PushMessage;->getContentText()Ljava/lang/CharSequence;

    move-result-object v10

    .line 949
    invoke-virtual/range {p2 .. p2}, Lcom/kakaogame/push/PushMessage;->getIconId()I

    move-result v11

    .line 959
    invoke-virtual/range {p2 .. p2}, Lcom/kakaogame/push/PushMessage;->getLargeIcon()Landroid/graphics/Bitmap;

    move-result-object v12

    .line 969
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 979
    invoke-virtual/range {p2 .. p2}, Lcom/kakaogame/push/PushMessage;->getSoundUri()Landroid/net/Uri;

    move-result-object v3

    .line 989
    invoke-virtual/range {p2 .. p2}, Lcom/kakaogame/push/PushMessage;->getVibratePattern()[J

    move-result-object v13

    .line 1019
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    .line 1059
    new-instance v5, Landroidx/core/app/NotificationCompat$Builder;

    invoke-direct {v5, v0}, Landroidx/core/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    .line 1099
    invoke-virtual {v5, v7}, Landroidx/core/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    .line 1129
    invoke-virtual {v5, v8}, Landroidx/core/app/NotificationCompat$Builder;->setTicker(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    .line 1159
    invoke-virtual {v5, v11}, Landroidx/core/app/NotificationCompat$Builder;->setSmallIcon(I)Landroidx/core/app/NotificationCompat$Builder;

    .line 1189
    invoke-virtual {v5, v9}, Landroidx/core/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    .line 1219
    invoke-virtual {v5, v10}, Landroidx/core/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    .line 1249
    invoke-virtual {v5, v14, v15}, Landroidx/core/app/NotificationCompat$Builder;->setWhen(J)Landroidx/core/app/NotificationCompat$Builder;

    .line 1259
    invoke-virtual/range {p2 .. p2}, Lcom/kakaogame/push/PushMessage;->isMuteMode()Z

    move-result v7

    const/4 v8, 0x3

    if-nez v7, :cond_0

    .line 1269
    invoke-virtual {v5, v8}, Landroidx/core/app/NotificationCompat$Builder;->setDefaults(I)Landroidx/core/app/NotificationCompat$Builder;

    :cond_0
    if-eqz v1, :cond_1

    .line 1309
    new-instance v7, Landroidx/core/app/NotificationCompat$BigPictureStyle;

    invoke-direct {v7}, Landroidx/core/app/NotificationCompat$BigPictureStyle;-><init>()V

    .line 1339
    invoke-virtual {v7, v1}, Landroidx/core/app/NotificationCompat$BigPictureStyle;->bigPicture(Landroid/graphics/Bitmap;)Landroidx/core/app/NotificationCompat$BigPictureStyle;

    .line 1349
    check-cast v7, Landroidx/core/app/NotificationCompat$Style;

    invoke-virtual {v5, v7}, Landroidx/core/app/NotificationCompat$Builder;->setStyle(Landroidx/core/app/NotificationCompat$Style;)Landroidx/core/app/NotificationCompat$Builder;

    const-string v7, "Set BigPictureStyle"

    .line 1359
    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1389
    :cond_1
    invoke-virtual/range {p2 .. p2}, Lcom/kakaogame/push/PushMessage;->getTheme()Lcom/kakaogame/push/PushMessage$PushTheme;

    move-result-object v7

    .line 1399
    new-instance v8, Landroid/widget/RemoteViews;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-object/from16 v16, v6

    :try_start_1
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    move/from16 v17, v4

    sget v4, Lcom/kakaogame/R$layout;->zinny_sdk_notification:I

    invoke-direct {v8, v6, v4}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    if-eqz v12, :cond_3

    .line 1419
    sget-object v4, Lcom/kakaogame/push/PushMessage$PushTheme;->DEFAULT:Lcom/kakaogame/push/PushMessage$PushTheme;

    if-ne v7, v4, :cond_2

    .line 1429
    invoke-virtual {v5, v12}, Landroidx/core/app/NotificationCompat$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroidx/core/app/NotificationCompat$Builder;

    .line 1449
    :cond_2
    sget v4, Lcom/kakaogame/R$id;->zinny_sdk_notification_icon:I

    invoke-virtual {v8, v4, v12}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    goto :goto_0

    .line 1469
    :cond_3
    sget v4, Lcom/kakaogame/R$id;->zinny_sdk_notification_icon:I

    invoke-virtual {v8, v4, v11}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 1489
    :goto_0
    sget v4, Lcom/kakaogame/R$id;->zinny_sdk_notification_title:I

    invoke-virtual {v8, v4, v9}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 1499
    sget v4, Lcom/kakaogame/R$id;->zinny_sdk_notification_content:I

    invoke-virtual {v8, v4, v10}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 1509
    sget v4, Lcom/kakaogame/R$string;->zinny_sdk_notification_time_format:I

    invoke-static {v0, v4}, Lcom/kakaogame/util/ResourceUtil;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v4

    .line 1519
    check-cast v4, Ljava/lang/CharSequence;

    invoke-static {v4, v14, v15}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1529
    sget v6, Lcom/kakaogame/R$id;->zinny_sdk_notification_time:I

    check-cast v4, Ljava/lang/CharSequence;

    invoke-virtual {v8, v6, v4}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 1539
    sget-object v4, Lcom/kakaogame/push/PushMessage$PushTheme;->GRAY:Lcom/kakaogame/push/PushMessage$PushTheme;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const v6, -0x4515ed67

    invoke-static {v6}, Lcom/liapp/y;->ڳݬ٬ۮݪ(I)Ljava/lang/String;

    move-result-object v6

    if-ne v7, v4, :cond_4

    .line 1559
    :try_start_2
    sget v4, Lcom/kakaogame/R$id;->zinny_sdk_notification:I

    .line 1579
    sget v11, Lcom/kakaogame/R$color;->zinny_sdk_notification_gray_bg:I

    invoke-static {v0, v11}, Lcom/kakaogame/util/ResourceUtil;->getColor(Landroid/content/Context;I)I

    move-result v11

    .line 1549
    invoke-virtual {v8, v4, v6, v11}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 1609
    sget v4, Lcom/kakaogame/R$id;->zinny_sdk_notification_title:I

    .line 1619
    sget v6, Lcom/kakaogame/R$color;->zinny_sdk_notification_gray_title_text:I

    invoke-static {v0, v6}, Lcom/kakaogame/util/ResourceUtil;->getColor(Landroid/content/Context;I)I

    move-result v6

    .line 1599
    invoke-virtual {v8, v4, v6}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 1649
    sget v4, Lcom/kakaogame/R$id;->zinny_sdk_notification_content:I

    .line 1659
    sget v6, Lcom/kakaogame/R$color;->zinny_sdk_notification_gray_content_text:I

    invoke-static {v0, v6}, Lcom/kakaogame/util/ResourceUtil;->getColor(Landroid/content/Context;I)I

    move-result v6

    .line 1639
    invoke-virtual {v8, v4, v6}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 1689
    sget v4, Lcom/kakaogame/R$id;->zinny_sdk_notification_time:I

    .line 1699
    sget v6, Lcom/kakaogame/R$color;->zinny_sdk_notification_gray_time_text:I

    invoke-static {v0, v6}, Lcom/kakaogame/util/ResourceUtil;->getColor(Landroid/content/Context;I)I

    move-result v6

    .line 1679
    invoke-virtual {v8, v4, v6}, Landroid/widget/RemoteViews;->setTextColor(II)V

    goto :goto_1

    .line 1719
    :cond_4
    sget-object v4, Lcom/kakaogame/push/PushMessage$PushTheme;->WHITE:Lcom/kakaogame/push/PushMessage$PushTheme;

    if-ne v7, v4, :cond_5

    .line 1739
    sget v4, Lcom/kakaogame/R$id;->zinny_sdk_notification:I

    .line 1759
    sget v11, Lcom/kakaogame/R$color;->zinny_sdk_notification_white_bg:I

    invoke-static {v0, v11}, Lcom/kakaogame/util/ResourceUtil;->getColor(Landroid/content/Context;I)I

    move-result v11

    .line 1729
    invoke-virtual {v8, v4, v6, v11}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 1789
    sget v4, Lcom/kakaogame/R$id;->zinny_sdk_notification_title:I

    .line 1799
    sget v6, Lcom/kakaogame/R$color;->zinny_sdk_notification_white_title_text:I

    invoke-static {v0, v6}, Lcom/kakaogame/util/ResourceUtil;->getColor(Landroid/content/Context;I)I

    move-result v6

    .line 1779
    invoke-virtual {v8, v4, v6}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 1829
    sget v4, Lcom/kakaogame/R$id;->zinny_sdk_notification_content:I

    .line 1839
    sget v6, Lcom/kakaogame/R$color;->zinny_sdk_notification_white_content_text:I

    invoke-static {v0, v6}, Lcom/kakaogame/util/ResourceUtil;->getColor(Landroid/content/Context;I)I

    move-result v6

    .line 1819
    invoke-virtual {v8, v4, v6}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 1869
    sget v4, Lcom/kakaogame/R$id;->zinny_sdk_notification_time:I

    .line 1879
    sget v6, Lcom/kakaogame/R$color;->zinny_sdk_notification_white_time_text:I

    invoke-static {v0, v6}, Lcom/kakaogame/util/ResourceUtil;->getColor(Landroid/content/Context;I)I

    move-result v6

    .line 1859
    invoke-virtual {v8, v4, v6}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 1909
    :cond_5
    :goto_1
    sget-object v4, Lcom/kakaogame/push/PushMessage$PushTheme;->DEFAULT:Lcom/kakaogame/push/PushMessage$PushTheme;

    if-eq v7, v4, :cond_7

    .line 1919
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1f

    if-lt v1, v4, :cond_6

    .line 1929
    new-instance v1, Landroidx/core/app/NotificationCompat$DecoratedCustomViewStyle;

    invoke-direct {v1}, Landroidx/core/app/NotificationCompat$DecoratedCustomViewStyle;-><init>()V

    check-cast v1, Landroidx/core/app/NotificationCompat$Style;

    invoke-virtual {v5, v1}, Landroidx/core/app/NotificationCompat$Builder;->setStyle(Landroidx/core/app/NotificationCompat$Style;)Landroidx/core/app/NotificationCompat$Builder;

    .line 1939
    invoke-virtual {v5, v8}, Landroidx/core/app/NotificationCompat$Builder;->setCustomContentView(Landroid/widget/RemoteViews;)Landroidx/core/app/NotificationCompat$Builder;

    .line 1949
    invoke-virtual {v5, v8}, Landroidx/core/app/NotificationCompat$Builder;->setCustomBigContentView(Landroid/widget/RemoteViews;)Landroidx/core/app/NotificationCompat$Builder;

    goto :goto_2

    .line 1969
    :cond_6
    invoke-virtual {v5, v8}, Landroidx/core/app/NotificationCompat$Builder;->setCustomContentView(Landroid/widget/RemoteViews;)Landroidx/core/app/NotificationCompat$Builder;

    goto :goto_2

    :cond_7
    if-nez v1, :cond_8

    .line 2019
    new-instance v1, Landroidx/core/app/NotificationCompat$BigTextStyle;

    invoke-direct {v1}, Landroidx/core/app/NotificationCompat$BigTextStyle;-><init>()V

    invoke-virtual {v1, v9}, Landroidx/core/app/NotificationCompat$BigTextStyle;->setBigContentTitle(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$BigTextStyle;

    move-result-object v1

    invoke-virtual {v1, v10}, Landroidx/core/app/NotificationCompat$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$BigTextStyle;

    move-result-object v1

    const-string v4, "bigText(...)"

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2029
    check-cast v1, Landroidx/core/app/NotificationCompat$Style;

    invoke-virtual {v5, v1}, Landroidx/core/app/NotificationCompat$Builder;->setStyle(Landroidx/core/app/NotificationCompat$Style;)Landroidx/core/app/NotificationCompat$Builder;

    .line 2079
    :cond_8
    :goto_2
    move-object v1, v2

    check-cast v1, Ljava/lang/CharSequence;

    .line 2089
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x1a

    if-lt v4, v6, :cond_9

    .line 2099
    invoke-virtual {v5, v2}, Landroidx/core/app/NotificationCompat$Builder;->setChannelId(Ljava/lang/String;)Landroidx/core/app/NotificationCompat$Builder;

    .line 2159
    :cond_9
    invoke-static/range {p1 .. p1}, Lcom/kakaogame/util/AppUtil;->isAppForeground(Landroid/content/Context;)Z

    move-result v4

    const/4 v8, 0x2

    if-nez v4, :cond_a

    .line 2169
    invoke-virtual {v5, v8}, Landroidx/core/app/NotificationCompat$Builder;->setPriority(I)Landroidx/core/app/NotificationCompat$Builder;

    .line 2189
    :cond_a
    invoke-virtual {v5}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v4

    .line 2159
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 2229
    sget-object v5, Lcom/kakaogame/push/PushMessage$PushTheme;->DEFAULT:Lcom/kakaogame/push/PushMessage$PushTheme;

    .line 2279
    invoke-virtual/range {p2 .. p2}, Lcom/kakaogame/push/PushMessage;->isMuteMode()Z

    move-result v5

    const/4 v7, 0x0

    const/4 v9, 0x1

    if-nez v5, :cond_d

    if-eqz v3, :cond_b

    .line 2309
    iput-object v3, v4, Landroid/app/Notification;->sound:Landroid/net/Uri;

    .line 2349
    :cond_b
    array-length v3, v13

    if-nez v3, :cond_c

    move v3, v9

    goto :goto_3

    :cond_c
    move v3, v7

    :goto_3
    xor-int/2addr v3, v9

    if-eqz v3, :cond_d

    .line 2359
    iput-object v13, v4, Landroid/app/Notification;->vibrate:[J

    .line 2409
    :cond_d
    iget v3, v4, Landroid/app/Notification;->flags:I

    or-int/lit8 v3, v3, 0x11

    iput v3, v4, Landroid/app/Notification;->flags:I

    const-string v3, "notification"

    .line 2439
    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const-string v3, "null cannot be cast to non-null type android.app.NotificationManager"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/app/NotificationManager;

    .line 2449
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v3, v6, :cond_e

    .line 2469
    new-instance v3, Landroid/app/NotificationChannel;

    const/4 v5, 0x3

    invoke-direct {v3, v2, v1, v5}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 2479
    invoke-virtual {v3, v9}, Landroid/app/NotificationChannel;->enableVibration(Z)V

    const/4 v1, 0x4

    new-array v1, v1, [J

    const-wide/16 v5, 0x64

    aput-wide v5, v1, v7

    const-wide/16 v10, 0xc8

    aput-wide v10, v1, v9

    aput-wide v5, v1, v8

    const/4 v2, 0x3

    aput-wide v10, v1, v2

    .line 2489
    invoke-virtual {v3, v1}, Landroid/app/NotificationChannel;->setVibrationPattern([J)V

    .line 2499
    invoke-virtual {v0, v3}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    :cond_e
    move/from16 v1, v17

    .line 2519
    invoke-virtual {v0, v1, v4}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_5

    :catch_0
    move-exception v0

    goto :goto_4

    :catch_1
    move-exception v0

    move-object/from16 v16, v6

    .line 2539
    :goto_4
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    check-cast v0, Ljava/lang/Throwable;

    move-object/from16 v2, v16

    invoke-static {v2, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_5
    return-void

    .array-data 1
    .end array-data
.end method

.method public static final onReceive(Landroid/content/Context;Lcom/kakaogame/push/PushMessage;)V
    .locals 4
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const v0, 0x6d009f38

    invoke-static {v0}, Lcom/liapp/y;->ٱڳܴڭܩ(I)Ljava/lang/String;

    move-result-object v0

    .line 329
    new-instance v1, Ljava/lang/StringBuilder;

    const v2, 0x543581d2

    invoke-static {v2}, Lcom/liapp/y;->׳ֳֳ֬د(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const v2, 0x543583ea

    invoke-static {v2}, Lcom/liapp/y;->׳ֳֳ֬د(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p0, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_1

    return-void

    .line 409
    :cond_1
    :try_start_0
    invoke-virtual {p1}, Lcom/kakaogame/push/PushMessage;->getPushType()Ljava/lang/String;

    move-result-object v1

    .line 419
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "badge"

    const/4 v3, 0x1

    .line 429
    invoke-static {v0, v1, v3}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    .line 469
    :cond_2
    invoke-virtual {p1}, Lcom/kakaogame/push/PushMessage;->getBigPictureUrl()Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    if-eqz v0, :cond_4

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v3, 0x0

    :cond_4
    :goto_0
    if-nez v3, :cond_5

    .line 479
    invoke-static {p0}, Lcom/kakaogame/ui/ImageDownloader;->initialize(Landroid/content/Context;)V

    .line 489
    invoke-virtual {p1}, Lcom/kakaogame/push/PushMessage;->getBigPictureUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    new-instance v1, Lcom/kakaogame/push/PushNotificationHandler$onReceive$1;

    invoke-direct {v1, p0, p1}, Lcom/kakaogame/push/PushNotificationHandler$onReceive$1;-><init>(Landroid/content/Context;Lcom/kakaogame/push/PushMessage;)V

    check-cast v1, Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;

    invoke-static {v0, v1}, Lcom/kakaogame/ui/ImageDownloader;->downloadImage(Ljava/lang/String;Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;)V

    goto :goto_1

    .line 699
    :cond_5
    sget-object v0, Lcom/kakaogame/push/PushNotificationHandler;->INSTANCE:Lcom/kakaogame/push/PushNotificationHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/kakaogame/push/PushNotificationHandler;->handlePushMessage(Landroid/content/Context;Lcom/kakaogame/push/PushMessage;Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 729
    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    check-cast p0, Ljava/lang/Throwable;

    invoke-static {v2, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    return-void

    .array-data 1
    .end array-data
.end method
