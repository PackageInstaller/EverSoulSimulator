.class public Lcom/singular/sdk/internal/LicenseChecker;
.super Ljava/lang/Object;
.source "LicenseChecker.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/singular/sdk/internal/LicenseChecker$ResultListener;
    }
.end annotation


# static fields
.field private static final ERROR_RESPONSE_CODE:I = -0x1

.field private static final RANDOM:Ljava/security/SecureRandom;

.field private static final logger:Lcom/singular/sdk/internal/SingularLog;


# instance fields
.field private final handler:Lcom/singular/sdk/internal/LicenseApiHelper$LicenseResultHandler;

.field private final mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private final mPackageName:Ljava/lang/String;

.field private mService:Lcom/android/vending/licensing/ILicensingService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 469
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    sput-object v0, Lcom/singular/sdk/internal/LicenseChecker;->RANDOM:Ljava/security/SecureRandom;

    .line 479
    const-class v0, Lcom/singular/sdk/internal/LicenseApiHelper;

    const-string v0, "LicenseApiHelper"

    invoke-static {v0}, Lcom/singular/sdk/internal/SingularLog;->getLogger(Ljava/lang/String;)Lcom/singular/sdk/internal/SingularLog;

    move-result-object v0

    sput-object v0, Lcom/singular/sdk/internal/LicenseChecker;->logger:Lcom/singular/sdk/internal/SingularLog;

    return-void

    .array-data 1
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/singular/sdk/internal/LicenseApiHelper$LicenseResultHandler;)V
    .locals 2

    .line 699
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 709
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "license_checker"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 719
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 729
    iput-object p1, p0, Lcom/singular/sdk/internal/LicenseChecker;->mContext:Landroid/content/Context;

    .line 739
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/singular/sdk/internal/LicenseChecker;->mPackageName:Ljava/lang/String;

    .line 749
    new-instance p1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/singular/sdk/internal/LicenseChecker;->mHandler:Landroid/os/Handler;

    .line 759
    iput-object p2, p0, Lcom/singular/sdk/internal/LicenseChecker;->handler:Lcom/singular/sdk/internal/LicenseApiHelper$LicenseResultHandler;

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method static synthetic access$100(Lcom/singular/sdk/internal/LicenseChecker;)Lcom/singular/sdk/internal/LicenseApiHelper$LicenseResultHandler;
    .locals 0

    .line 449
    iget-object p0, p0, Lcom/singular/sdk/internal/LicenseChecker;->handler:Lcom/singular/sdk/internal/LicenseApiHelper$LicenseResultHandler;

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method private cleanupService()V
    .locals 2

    .line 1599
    iget-object v0, p0, Lcom/singular/sdk/internal/LicenseChecker;->mService:Lcom/android/vending/licensing/ILicensingService;

    if-eqz v0, :cond_0

    .line 1619
    :try_start_0
    iget-object v0, p0, Lcom/singular/sdk/internal/LicenseChecker;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1659
    :catch_0
    sget-object v0, Lcom/singular/sdk/internal/LicenseChecker;->logger:Lcom/singular/sdk/internal/SingularLog;

    const-string v1, "Unable to unbind from licensing service (already unbound)"

    invoke-virtual {v0, v1}, Lcom/singular/sdk/internal/SingularLog;->error(Ljava/lang/String;)I

    :goto_0
    const/4 v0, 0x0

    .line 1679
    iput-object v0, p0, Lcom/singular/sdk/internal/LicenseChecker;->mService:Lcom/android/vending/licensing/ILicensingService;

    :cond_0
    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method private generateNonce()I
    .locals 1

    .line 1839
    sget-object v0, Lcom/singular/sdk/internal/LicenseChecker;->RANDOM:Ljava/security/SecureRandom;

    invoke-virtual {v0}, Ljava/security/SecureRandom;->nextInt()I

    move-result v0

    return v0

    nop

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public declared-synchronized checkAccess()V
    .locals 10

    monitor-enter p0

    .line 819
    :try_start_0
    iget-object v0, p0, Lcom/singular/sdk/internal/LicenseChecker;->mService:Lcom/android/vending/licensing/ILicensingService;

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, -0x1

    if-nez v0, :cond_1

    .line 829
    sget-object v0, Lcom/singular/sdk/internal/LicenseChecker;->logger:Lcom/singular/sdk/internal/SingularLog;

    const-string v5, "Binding to licensing service."

    invoke-virtual {v0, v5}, Lcom/singular/sdk/internal/SingularLog;->info(Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 849
    :try_start_1
    iget-object v5, p0, Lcom/singular/sdk/internal/LicenseChecker;->mContext:Landroid/content/Context;

    new-instance v6, Landroid/content/Intent;

    const-string v7, "com.android.vending.licensing.ILicensingService"

    invoke-direct {v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v7, "com.android.vending"

    .line 979
    invoke-virtual {v6, v7}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v6

    .line 859
    invoke-virtual {v5, v6, p0, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "Could not bind to service."

    .line 1019
    invoke-virtual {v0, v5}, Lcom/singular/sdk/internal/SingularLog;->error(Ljava/lang/String;)I

    .line 1029
    iget-object v0, p0, Lcom/singular/sdk/internal/LicenseChecker;->handler:Lcom/singular/sdk/internal/LicenseApiHelper$LicenseResultHandler;

    const-string v5, "Binding failed"

    const-string v6, ""

    invoke-virtual {v0, v4, v5, v6}, Lcom/singular/sdk/internal/LicenseApiHelper$LicenseResultHandler;->handle(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 1059
    :try_start_2
    sget-object v5, Lcom/singular/sdk/internal/LicenseChecker;->logger:Lcom/singular/sdk/internal/SingularLog;

    const-string v6, "SecurityException"

    invoke-virtual {v5, v6, v0}, Lcom/singular/sdk/internal/SingularLog;->error(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1069
    iget-object v5, p0, Lcom/singular/sdk/internal/LicenseChecker;->handler:Lcom/singular/sdk/internal/LicenseApiHelper$LicenseResultHandler;

    const-string v6, "Exception: %s, Message: %s"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/SecurityException;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v2, v1

    invoke-virtual {v0}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v3

    invoke-static {v6, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v5, v4, v0, v1}, Lcom/singular/sdk/internal/LicenseApiHelper$LicenseResultHandler;->handle(ILjava/lang/String;Ljava/lang/String;)V

    .line 1089
    :cond_0
    :goto_0
    sget-object v0, Lcom/singular/sdk/internal/LicenseChecker;->logger:Lcom/singular/sdk/internal/SingularLog;

    const-string v1, "Binding done."

    invoke-virtual {v0, v1}, Lcom/singular/sdk/internal/SingularLog;->info(Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 1129
    :cond_1
    :try_start_3
    invoke-direct {p0}, Lcom/singular/sdk/internal/LicenseChecker;->generateNonce()I

    move-result v5

    int-to-long v5, v5

    iget-object v7, p0, Lcom/singular/sdk/internal/LicenseChecker;->mPackageName:Ljava/lang/String;

    new-instance v8, Lcom/singular/sdk/internal/LicenseChecker$ResultListener;

    const/4 v9, 0x0

    invoke-direct {v8, p0, v9}, Lcom/singular/sdk/internal/LicenseChecker$ResultListener;-><init>(Lcom/singular/sdk/internal/LicenseChecker;Lcom/singular/sdk/internal/LicenseChecker$1;)V

    invoke-interface {v0, v5, v6, v7, v8}, Lcom/android/vending/licensing/ILicensingService;->checkLicense(JLjava/lang/String;Lcom/android/vending/licensing/ILicenseResultListener;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    :catch_1
    move-exception v0

    .line 1149
    :try_start_4
    sget-object v5, Lcom/singular/sdk/internal/LicenseChecker;->logger:Lcom/singular/sdk/internal/SingularLog;

    const-string v6, "RemoteException in checkLicense call."

    invoke-virtual {v5, v6, v0}, Lcom/singular/sdk/internal/SingularLog;->error(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1159
    iget-object v5, p0, Lcom/singular/sdk/internal/LicenseChecker;->handler:Lcom/singular/sdk/internal/LicenseApiHelper$LicenseResultHandler;

    const-string v6, "Exception: %s, Message: %s"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v2, v1

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v3

    invoke-static {v6, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v5, v4, v0, v1}, Lcom/singular/sdk/internal/LicenseApiHelper$LicenseResultHandler;->handle(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1199
    :goto_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .array-data 1
    .end array-data
.end method

.method public declared-synchronized onDestroy()V
    .locals 1

    monitor-enter p0

    .line 1309
    :try_start_0
    invoke-direct {p0}, Lcom/singular/sdk/internal/LicenseChecker;->cleanupService()V

    .line 1319
    iget-object v0, p0, Lcom/singular/sdk/internal/LicenseChecker;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1329
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .array-data 1
    .end array-data
.end method

.method public declared-synchronized onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 5

    monitor-enter p0

    .line 1369
    :try_start_0
    sget-object p1, Lcom/singular/sdk/internal/LicenseChecker;->logger:Lcom/singular/sdk/internal/SingularLog;

    const-string v0, "onServiceConnected."

    invoke-virtual {p1, v0}, Lcom/singular/sdk/internal/SingularLog;->info(Ljava/lang/String;)I

    .line 1379
    invoke-static {p2}, Lcom/android/vending/licensing/ILicensingService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/vending/licensing/ILicensingService;

    move-result-object p2

    iput-object p2, p0, Lcom/singular/sdk/internal/LicenseChecker;->mService:Lcom/android/vending/licensing/ILicensingService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1409
    :try_start_1
    invoke-direct {p0}, Lcom/singular/sdk/internal/LicenseChecker;->generateNonce()I

    move-result v0

    int-to-long v0, v0

    iget-object v2, p0, Lcom/singular/sdk/internal/LicenseChecker;->mPackageName:Ljava/lang/String;

    new-instance v3, Lcom/singular/sdk/internal/LicenseChecker$ResultListener;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/singular/sdk/internal/LicenseChecker$ResultListener;-><init>(Lcom/singular/sdk/internal/LicenseChecker;Lcom/singular/sdk/internal/LicenseChecker$1;)V

    invoke-interface {p2, v0, v1, v2, v3}, Lcom/android/vending/licensing/ILicensingService;->checkLicense(JLjava/lang/String;Lcom/android/vending/licensing/ILicenseResultListener;)V

    const-string p2, "checkLicense call done."

    .line 1419
    invoke-virtual {p1, p2}, Lcom/singular/sdk/internal/SingularLog;->info(Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1439
    :try_start_2
    sget-object p2, Lcom/singular/sdk/internal/LicenseChecker;->logger:Lcom/singular/sdk/internal/SingularLog;

    const-string v0, "RemoteException in checkLicense call."

    invoke-virtual {p2, v0, p1}, Lcom/singular/sdk/internal/SingularLog;->error(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1449
    iget-object p2, p0, Lcom/singular/sdk/internal/LicenseChecker;->handler:Lcom/singular/sdk/internal/LicenseApiHelper$LicenseResultHandler;

    invoke-virtual {p1}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, ""

    const/4 v1, -0x1

    invoke-virtual {p2, v1, p1, v0}, Lcom/singular/sdk/internal/LicenseApiHelper$LicenseResultHandler;->handle(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1469
    :goto_0
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

.method public declared-synchronized onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    monitor-enter p0

    .line 1529
    :try_start_0
    sget-object p1, Lcom/singular/sdk/internal/LicenseChecker;->logger:Lcom/singular/sdk/internal/SingularLog;

    const-string v0, "Service unexpectedly disconnected."

    invoke-virtual {p1, v0}, Lcom/singular/sdk/internal/SingularLog;->info(Ljava/lang/String;)I

    const/4 p1, 0x0

    .line 1539
    iput-object p1, p0, Lcom/singular/sdk/internal/LicenseChecker;->mService:Lcom/android/vending/licensing/ILicensingService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1549
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    .array-data 1
    .end array-data
.end method
