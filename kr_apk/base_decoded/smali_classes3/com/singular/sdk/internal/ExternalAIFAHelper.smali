.class Lcom/singular/sdk/internal/ExternalAIFAHelper;
.super Ljava/lang/Object;
.source "ExternalAIFAHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/singular/sdk/internal/ExternalAIFAHelper$GoogleAdvertisingInfo;,
        Lcom/singular/sdk/internal/ExternalAIFAHelper$GoogleAdvertisingServiceConnection;
    }
.end annotation


# static fields
.field private static final logger:Lcom/singular/sdk/internal/SingularLog;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "ExternalAIFAHelper"

    .line 269
    invoke-static {v0}, Lcom/singular/sdk/internal/SingularLog;->getLogger(Ljava/lang/String;)Lcom/singular/sdk/internal/SingularLog;

    move-result-object v0

    sput-object v0, Lcom/singular/sdk/internal/ExternalAIFAHelper;->logger:Lcom/singular/sdk/internal/SingularLog;

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method constructor <init>()V
    .locals 0

    .line 249
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void

    .array-data 1
    .end array-data
.end method

.method public static getAIFA(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .line 379
    :try_start_0
    invoke-static {p0}, Lcom/singular/sdk/internal/ExternalAIFAHelper;->queryAdvertisingIdFromService(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    .line 389
    sget-object v0, Lcom/singular/sdk/internal/ExternalAIFAHelper;->logger:Lcom/singular/sdk/internal/SingularLog;

    const-string v1, "Got AIFA by querying Google Play service"

    invoke-virtual {v0, v1}, Lcom/singular/sdk/internal/SingularLog;->debug(Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    .line 429
    :catchall_0
    sget-object p0, Lcom/singular/sdk/internal/ExternalAIFAHelper;->logger:Lcom/singular/sdk/internal/SingularLog;

    const-string v0, "Could not determine AIFA"

    invoke-virtual {p0, v0}, Lcom/singular/sdk/internal/SingularLog;->debug(Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method static queryAdvertisingIdFromService(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    .line 589
    new-instance v0, Lcom/singular/sdk/internal/ExternalAIFAHelper$GoogleAdvertisingServiceConnection;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/singular/sdk/internal/ExternalAIFAHelper$GoogleAdvertisingServiceConnection;-><init>(Lcom/singular/sdk/internal/ExternalAIFAHelper$1;)V

    .line 599
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.google.android.gms.ads.identifier.service.START"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "com.google.android.gms"

    .line 609
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const/4 v2, 0x1

    .line 619
    invoke-virtual {p0, v1, v0, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 639
    :try_start_0
    invoke-virtual {v0}, Lcom/singular/sdk/internal/ExternalAIFAHelper$GoogleAdvertisingServiceConnection;->getBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/singular/sdk/internal/ExternalAIFAHelper$GoogleAdvertisingInfo$GoogleAdvertisingInfoBinder;->Create(Landroid/os/IBinder;)Lcom/singular/sdk/internal/ExternalAIFAHelper$GoogleAdvertisingInfo;

    move-result-object v1

    .line 649
    invoke-interface {v1}, Lcom/singular/sdk/internal/ExternalAIFAHelper$GoogleAdvertisingInfo;->getId()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 689
    invoke-virtual {p0, v0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    return-object v1

    :catchall_0
    invoke-virtual {p0, v0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    :cond_0
    const-string p0, ""

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method
