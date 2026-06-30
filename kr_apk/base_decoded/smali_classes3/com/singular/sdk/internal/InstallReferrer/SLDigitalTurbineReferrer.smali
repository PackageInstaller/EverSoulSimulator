.class public Lcom/singular/sdk/internal/InstallReferrer/SLDigitalTurbineReferrer;
.super Ljava/lang/Object;
.source "SLDigitalTurbineReferrer.java"

# interfaces
.implements Lcom/singular/sdk/internal/InstallReferrer/SLInstallReferrerService;


# static fields
.field private static final logger:Lcom/singular/sdk/internal/SingularLog;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "SLDigitalTurbineReferrer"

    .line 259
    invoke-static {v0}, Lcom/singular/sdk/internal/SingularLog;->getLogger(Ljava/lang/String;)Lcom/singular/sdk/internal/SingularLog;

    move-result-object v0

    sput-object v0, Lcom/singular/sdk/internal/InstallReferrer/SLDigitalTurbineReferrer;->logger:Lcom/singular/sdk/internal/SingularLog;

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .line 249
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void

    .array-data 1
    .end array-data
.end method

.method private checkIfPackageReadingPermissionIsGranted(Landroid/content/Context;Ljava/lang/String;Landroid/content/pm/ResolveInfo;)Z
    .locals 1

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    .line 1679
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    iget-object p3, p3, Landroid/content/pm/ResolveInfo;->providerInfo:Landroid/content/pm/ProviderInfo;

    iget-object p3, p3, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, p2, p3}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method private fetchContentFromProvider(Landroid/content/Context;Landroid/content/pm/ResolveInfo;)Ljava/lang/String;
    .locals 1

    .line 1799
    iget-object p2, p2, Landroid/content/pm/ResolveInfo;->providerInfo:Landroid/content/pm/ProviderInfo;

    iget-object p2, p2, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    .line 1809
    invoke-static {p2}, Lcom/singular/sdk/internal/Utils;->isEmptyOrNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1819
    invoke-direct {p0, p1, p2}, Lcom/singular/sdk/internal/InstallReferrer/SLDigitalTurbineReferrer;->readContentProviderWithClient(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1

    nop

    .array-data 1
    .end array-data
.end method

.method private formatURIString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x1

    aput-object p2, v0, p1

    const-string p1, "content://%s/%s"

    .line 1579
    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .array-data 1
    .end array-data
.end method

.method private readContentProvider(Landroid/content/Context;Ljava/lang/String;Landroid/content/ContentProviderClient;)Ljava/lang/String;
    .locals 10

    const-string v0, "Read Content Provider Payload is "

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 519
    :try_start_0
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    const-string v4, "encrypted_data"

    .line 539
    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v6

    new-array v8, v2, [Ljava/lang/String;

    .line 559
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v8, v3

    if-eqz p3, :cond_0

    const-string v7, "package_name=?"

    const/4 v9, 0x0

    move-object v4, p3

    .line 609
    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    goto :goto_0

    .line 639
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 649
    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    :goto_0
    if-nez p1, :cond_1

    .line 699
    sget-object p1, Lcom/singular/sdk/internal/InstallReferrer/SLDigitalTurbineReferrer;->logger:Lcom/singular/sdk/internal/SingularLog;

    const-string p3, "Read content provider cursor null content uri [%s]"

    new-array v0, v2, [Ljava/lang/Object;

    aput-object p2, v0, v3

    invoke-virtual {p1, p3, v0}, Lcom/singular/sdk/internal/SingularLog;->debug(Ljava/lang/String;[Ljava/lang/Object;)I

    return-object v1

    .line 739
    :cond_1
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p3

    if-nez p3, :cond_2

    .line 749
    sget-object p3, Lcom/singular/sdk/internal/InstallReferrer/SLDigitalTurbineReferrer;->logger:Lcom/singular/sdk/internal/SingularLog;

    const-string v0, "Read content provider cursor empty content uri [%s]"

    new-array v4, v2, [Ljava/lang/Object;

    aput-object p2, v4, v3

    invoke-virtual {p3, v0, v4}, Lcom/singular/sdk/internal/SingularLog;->debug(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 759
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    return-object v1

    .line 799
    :cond_2
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p3

    .line 809
    sget-object v4, Lcom/singular/sdk/internal/InstallReferrer/SLDigitalTurbineReferrer;->logger:Lcom/singular/sdk/internal/SingularLog;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/singular/sdk/internal/SingularLog;->debug(Ljava/lang/String;)I

    .line 819
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p3

    :catchall_0
    move-exception p1

    .line 849
    sget-object p3, Lcom/singular/sdk/internal/InstallReferrer/SLDigitalTurbineReferrer;->logger:Lcom/singular/sdk/internal/SingularLog;

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p2, v0, v3

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v2

    const-string p1, "Exception read content provider uri [%s] error [%s]"

    invoke-virtual {p3, p1, v0}, Lcom/singular/sdk/internal/SingularLog;->error(Ljava/lang/String;[Ljava/lang/Object;)I

    return-object v1

    .array-data 1
    .end array-data
.end method

.method private readContentProviderIntentAction(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 989
    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 v1, 0x21

    const-string v2, "com.singular.preinstall.READ_PERMISSION_SINGULAR"

    if-lt v0, v1, :cond_0

    .line 999
    :try_start_1
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-wide/32 v2, 0x20000

    .line 1029
    invoke-static {v2, v3}, Landroid/content/pm/PackageManager$ResolveInfoFlags;->of(J)Landroid/content/pm/PackageManager$ResolveInfoFlags;

    move-result-object v2

    .line 1009
    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->queryIntentContentProviders(Landroid/content/Intent;Landroid/content/pm/PackageManager$ResolveInfoFlags;)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    .line 1049
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v2, 0x20000

    .line 1059
    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->queryIntentContentProviders(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 1099
    :goto_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1109
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    .line 1119
    invoke-direct {p0, p1, p2, v2}, Lcom/singular/sdk/internal/InstallReferrer/SLDigitalTurbineReferrer;->checkIfPackageReadingPermissionIsGranted(Landroid/content/Context;Ljava/lang/String;Landroid/content/pm/ResolveInfo;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1139
    invoke-direct {p0, p1, v2}, Lcom/singular/sdk/internal/InstallReferrer/SLDigitalTurbineReferrer;->fetchContentFromProvider(Landroid/content/Context;Landroid/content/pm/ResolveInfo;)Ljava/lang/String;

    move-result-object v2

    .line 1149
    invoke-static {v2}, Lcom/singular/sdk/internal/Utils;->isEmptyOrNull(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1159
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1209
    :cond_2
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_3

    .line 1219
    sget-object p1, Lcom/singular/sdk/internal/InstallReferrer/SLDigitalTurbineReferrer;->logger:Lcom/singular/sdk/internal/SingularLog;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Payload read successfully from URI: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/singular/sdk/internal/SingularLog;->debug(Ljava/lang/String;)I

    const/4 p1, 0x0

    .line 1229
    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object p1

    .line 1279
    :catchall_0
    :cond_3
    sget-object p1, Lcom/singular/sdk/internal/InstallReferrer/SLDigitalTurbineReferrer;->logger:Lcom/singular/sdk/internal/SingularLog;

    const-string p2, "No payloads found in content providers."

    invoke-virtual {p1, p2}, Lcom/singular/sdk/internal/SingularLog;->debug(Ljava/lang/String;)I

    const/4 p1, 0x0

    return-object p1

    .array-data 1
    .end array-data
.end method

.method private readContentProviderWithClient(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1359
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1399
    invoke-virtual {v0, p2}, Landroid/content/ContentResolver;->acquireUnstableContentProviderClient(Ljava/lang/String;)Landroid/content/ContentProviderClient;

    move-result-object v0

    const-string/jumbo v1, "trackers"

    .line 1459
    invoke-direct {p0, p2, v1}, Lcom/singular/sdk/internal/InstallReferrer/SLDigitalTurbineReferrer;->formatURIString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 1469
    invoke-direct {p0, p1, p2, v0}, Lcom/singular/sdk/internal/InstallReferrer/SLDigitalTurbineReferrer;->readContentProvider(Landroid/content/Context;Ljava/lang/String;Landroid/content/ContentProviderClient;)Ljava/lang/String;

    move-result-object p1

    .line 1499
    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->release()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    const/4 p1, 0x0

    return-object p1

    nop

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public fetchReferrer(Landroid/content/Context;Lcom/singular/sdk/internal/InstallReferrer/SLInstallReferrerCompletionHandler;)V
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 309
    invoke-interface {p2, v0}, Lcom/singular/sdk/internal/InstallReferrer/SLInstallReferrerCompletionHandler;->onInstallReferrerReceived(Ljava/util/Map;)V

    return-void

    .line 349
    :cond_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "android.permission.INSTALL_PACKAGES"

    .line 379
    invoke-direct {p0, p1, v2}, Lcom/singular/sdk/internal/InstallReferrer/SLDigitalTurbineReferrer;->readContentProviderIntentAction(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    const-string v0, "dt_referrer"

    .line 409
    invoke-interface {v1, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 419
    invoke-interface {p2, v1}, Lcom/singular/sdk/internal/InstallReferrer/SLInstallReferrerCompletionHandler;->onInstallReferrerReceived(Ljava/util/Map;)V

    return-void

    .line 459
    :cond_1
    invoke-interface {p2, v0}, Lcom/singular/sdk/internal/InstallReferrer/SLInstallReferrerCompletionHandler;->onInstallReferrerReceived(Ljava/util/Map;)V

    return-void

    nop

    .array-data 1
    .end array-data
.end method
