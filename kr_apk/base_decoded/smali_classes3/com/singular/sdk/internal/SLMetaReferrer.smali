.class public Lcom/singular/sdk/internal/SLMetaReferrer;
.super Ljava/lang/Object;
.source "SLMetaReferrer.java"

# interfaces
.implements Lcom/singular/sdk/internal/InstallReferrer/SLInstallReferrerService;


# static fields
.field private static final sourceName:Ljava/lang/String; = "facebook"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 139
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public fetchReferrer(Landroid/content/Context;Lcom/singular/sdk/internal/InstallReferrer/SLInstallReferrerCompletionHandler;)V
    .locals 15

    move-object/from16 v0, p2

    const-string v1, "com.instagram.contentprovider.InstallReferrerProvider"

    const-string v2, "com.facebook.katana.provider.InstallReferrerProvider"

    const-string v3, "actual_timestamp"

    const-string v4, "is_ct"

    const-string v5, "install_referrer"

    const/4 v6, 0x0

    if-nez p1, :cond_0

    .line 199
    invoke-interface {v0, v6}, Lcom/singular/sdk/internal/InstallReferrer/SLInstallReferrerCompletionHandler;->onInstallReferrerReceived(Ljava/util/Map;)V

    return-void

    .line 239
    :cond_0
    invoke-static {}, Lcom/singular/sdk/internal/SingularInstance;->getInstance()Lcom/singular/sdk/internal/SingularInstance;

    move-result-object v7

    invoke-virtual {v7}, Lcom/singular/sdk/internal/SingularInstance;->getSingularConfig()Lcom/singular/sdk/SingularConfig;

    move-result-object v7

    iget-object v7, v7, Lcom/singular/sdk/SingularConfig;->facebookAppId:Ljava/lang/String;

    .line 249
    invoke-static {v7}, Lcom/singular/sdk/internal/Utils;->isEmptyOrNull(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 259
    invoke-interface {v0, v6}, Lcom/singular/sdk/internal/InstallReferrer/SLInstallReferrerCompletionHandler;->onInstallReferrerReceived(Ljava/util/Map;)V

    return-void

    .line 369
    :cond_1
    :try_start_0
    filled-new-array {v5, v4, v3}, [Ljava/lang/String;

    move-result-object v11

    .line 419
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v8, v2, v9}, Landroid/content/pm/PackageManager;->resolveContentProvider(Ljava/lang/String;I)Landroid/content/pm/ProviderInfo;

    move-result-object v8
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v10, 0x1

    const/4 v12, 0x2

    const-string v13, "content://%s/%s"

    if-eqz v8, :cond_2

    :try_start_1
    new-array v1, v12, [Ljava/lang/Object;

    aput-object v2, v1, v9

    aput-object v7, v1, v10

    .line 439
    invoke-static {v13, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    :goto_0
    move-object v10, v1

    goto :goto_1

    .line 449
    :cond_2
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2, v1, v9}, Landroid/content/pm/PackageManager;->resolveContentProvider(Ljava/lang/String;I)Landroid/content/pm/ProviderInfo;

    move-result-object v2

    if-eqz v2, :cond_a

    new-array v2, v12, [Ljava/lang/Object;

    aput-object v1, v2, v9

    aput-object v7, v2, v10

    .line 469
    invoke-static {v13, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    goto :goto_0

    .line 529
    :goto_1
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-virtual/range {v9 .. v14}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v1, :cond_4

    .line 559
    :try_start_2
    invoke-interface {v0, v6}, Lcom/singular/sdk/internal/InstallReferrer/SLInstallReferrerCompletionHandler;->onInstallReferrerReceived(Ljava/util/Map;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v1, :cond_3

    .line 959
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_3
    return-void

    .line 599
    :cond_4
    :try_start_3
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-nez v2, :cond_6

    .line 609
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 619
    invoke-interface {v0, v6}, Lcom/singular/sdk/internal/InstallReferrer/SLInstallReferrerCompletionHandler;->onInstallReferrerReceived(Ljava/util/Map;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v1, :cond_5

    .line 959
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_5
    return-void

    .line 659
    :cond_6
    :try_start_4
    invoke-interface {v1, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 669
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 679
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    const/4 v5, 0x3

    const/4 v7, -0x1

    if-eq v2, v7, :cond_7

    .line 739
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getType(I)I

    move-result v8

    if-ne v8, v5, :cond_7

    .line 749
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    :cond_7
    move-object v2, v6

    :goto_2
    if-eq v3, v7, :cond_8

    .line 779
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getType(I)I

    move-result v8

    if-ne v8, v5, :cond_8

    .line 789
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    goto :goto_3

    :cond_8
    move v3, v7

    :goto_3
    if-eq v4, v7, :cond_9

    .line 819
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getType(I)I

    move-result v8

    if-ne v8, v5, :cond_9

    .line 829
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 859
    :cond_9
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    const-string v5, "facebook_install_referrer"

    .line 869
    invoke-interface {v4, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "facebook_actual_timestamp"

    .line 879
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v4, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "facebook_is_ct"

    .line 889
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v4, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 909
    invoke-interface {v0, v4}, Lcom/singular/sdk/internal/InstallReferrer/SLInstallReferrerCompletionHandler;->onInstallReferrerReceived(Ljava/util/Map;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-eqz v1, :cond_b

    goto :goto_4

    .line 489
    :cond_a
    :try_start_5
    invoke-interface {v0, v6}, Lcom/singular/sdk/internal/InstallReferrer/SLInstallReferrerCompletionHandler;->onInstallReferrerReceived(Ljava/util/Map;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    goto :goto_5

    :catch_0
    move-object v1, v6

    .line 929
    :catch_1
    :try_start_6
    invoke-interface {v0, v6}, Lcom/singular/sdk/internal/InstallReferrer/SLInstallReferrerCompletionHandler;->onInstallReferrerReceived(Ljava/util/Map;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    if-eqz v1, :cond_b

    .line 959
    :goto_4
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_b
    return-void

    :catchall_1
    move-exception v0

    move-object v6, v1

    :goto_5
    if-eqz v6, :cond_c

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 979
    :cond_c
    throw v0

    nop

    .array-data 1
    .end array-data
.end method
