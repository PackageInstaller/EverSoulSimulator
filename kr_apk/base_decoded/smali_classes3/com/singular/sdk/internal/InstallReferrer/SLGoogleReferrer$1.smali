.class Lcom/singular/sdk/internal/InstallReferrer/SLGoogleReferrer$1;
.super Ljava/lang/Object;
.source "SLGoogleReferrer.java"

# interfaces
.implements Lcom/android/installreferrer/api/InstallReferrerStateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/singular/sdk/internal/InstallReferrer/SLGoogleReferrer;->fetchReferrer(Landroid/content/Context;Lcom/singular/sdk/internal/InstallReferrer/SLInstallReferrerCompletionHandler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/singular/sdk/internal/InstallReferrer/SLGoogleReferrer;

.field final synthetic val$completionHandler:Lcom/singular/sdk/internal/InstallReferrer/SLInstallReferrerCompletionHandler;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$referrerClient:Lcom/android/installreferrer/api/InstallReferrerClient;


# direct methods
.method constructor <init>(Lcom/singular/sdk/internal/InstallReferrer/SLGoogleReferrer;Lcom/android/installreferrer/api/InstallReferrerClient;Lcom/singular/sdk/internal/InstallReferrer/SLInstallReferrerCompletionHandler;Landroid/content/Context;)V
    .locals 0

    .line 599
    iput-object p1, p0, Lcom/singular/sdk/internal/InstallReferrer/SLGoogleReferrer$1;->this$0:Lcom/singular/sdk/internal/InstallReferrer/SLGoogleReferrer;

    iput-object p2, p0, Lcom/singular/sdk/internal/InstallReferrer/SLGoogleReferrer$1;->val$referrerClient:Lcom/android/installreferrer/api/InstallReferrerClient;

    iput-object p3, p0, Lcom/singular/sdk/internal/InstallReferrer/SLGoogleReferrer$1;->val$completionHandler:Lcom/singular/sdk/internal/InstallReferrer/SLInstallReferrerCompletionHandler;

    iput-object p4, p0, Lcom/singular/sdk/internal/InstallReferrer/SLGoogleReferrer$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void

    .array-data 1
    .end array-data
.end method

.method static synthetic access$100(Lcom/singular/sdk/internal/InstallReferrer/SLGoogleReferrer$1;Lcom/android/installreferrer/api/InstallReferrerClient;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 599
    invoke-direct {p0, p1}, Lcom/singular/sdk/internal/InstallReferrer/SLGoogleReferrer$1;->handleReferrerResponse(Lcom/android/installreferrer/api/InstallReferrerClient;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method static synthetic access$300(Lcom/singular/sdk/internal/InstallReferrer/SLGoogleReferrer$1;Landroid/content/Context;)V
    .locals 0

    .line 599
    invoke-direct {p0, p1}, Lcom/singular/sdk/internal/InstallReferrer/SLGoogleReferrer$1;->handleNotSupported(Landroid/content/Context;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method private handleNotSupported(Landroid/content/Context;)V
    .locals 11

    .line 1489
    invoke-static {p1}, Lcom/singular/sdk/internal/Utils;->getCSIReferrer(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "intent"

    const-wide/16 v2, -0x1

    const-wide/16 v4, -0x1

    const/4 v6, 0x0

    const-wide/16 v7, -0x1

    const-wide/16 v9, -0x1

    .line 1509
    invoke-static/range {v0 .. v10}, Lcom/singular/sdk/internal/InstallReferrer/SLGoogleReferrer;->access$400(Ljava/lang/String;Ljava/lang/String;JJLjava/lang/String;JJ)V

    :cond_0
    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method private handleReferrerResponse(Lcom/android/installreferrer/api/InstallReferrerClient;)V
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1119
    invoke-virtual {p1}, Lcom/android/installreferrer/api/InstallReferrerClient;->getInstallReferrer()Lcom/android/installreferrer/api/ReferrerDetails;

    move-result-object p1

    .line 1199
    invoke-direct {p0, p1}, Lcom/singular/sdk/internal/InstallReferrer/SLGoogleReferrer$1;->isV2Supported(Lcom/android/installreferrer/api/ReferrerDetails;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1209
    invoke-virtual {p1}, Lcom/android/installreferrer/api/ReferrerDetails;->getInstallVersion()Ljava/lang/String;

    move-result-object v0

    .line 1219
    invoke-virtual {p1}, Lcom/android/installreferrer/api/ReferrerDetails;->getReferrerClickTimestampServerSeconds()J

    move-result-wide v1

    .line 1229
    invoke-virtual {p1}, Lcom/android/installreferrer/api/ReferrerDetails;->getInstallBeginTimestampServerSeconds()J

    move-result-wide v3

    move-object v9, v0

    move-wide v10, v1

    move-wide v12, v3

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    const-wide/16 v1, -0x1

    move-object v9, v0

    move-wide v10, v1

    move-wide v12, v10

    .line 1259
    :goto_0
    invoke-virtual {p1}, Lcom/android/installreferrer/api/ReferrerDetails;->getInstallReferrer()Ljava/lang/String;

    move-result-object v3

    const-string v4, "service"

    .line 1279
    invoke-virtual {p1}, Lcom/android/installreferrer/api/ReferrerDetails;->getReferrerClickTimestampSeconds()J

    move-result-wide v5

    .line 1289
    invoke-virtual {p1}, Lcom/android/installreferrer/api/ReferrerDetails;->getInstallBeginTimestampSeconds()J

    move-result-wide v7

    .line 1259
    invoke-static/range {v3 .. v13}, Lcom/singular/sdk/internal/InstallReferrer/SLGoogleReferrer;->access$400(Ljava/lang/String;Ljava/lang/String;JJLjava/lang/String;JJ)V

    return-void

    .array-data 1
    .end array-data
.end method

.method private isV2Supported(Lcom/android/installreferrer/api/ReferrerDetails;)Z
    .locals 3

    const/4 v0, 0x0

    .line 1399
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    const-string v1, "getInstallVersion"

    new-array v2, v0, [Ljava/lang/Class;

    invoke-virtual {p1, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :catchall_0
    :cond_0
    return v0

    nop

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public onInstallReferrerServiceDisconnected()V
    .locals 1

    .line 1569
    iget-object v0, p0, Lcom/singular/sdk/internal/InstallReferrer/SLGoogleReferrer$1;->val$referrerClient:Lcom/android/installreferrer/api/InstallReferrerClient;

    invoke-virtual {v0}, Lcom/android/installreferrer/api/InstallReferrerClient;->endConnection()V

    return-void

    .array-data 1
    .end array-data
.end method

.method public onInstallReferrerSetupFinished(I)V
    .locals 3

    .line 629
    invoke-static {}, Lcom/singular/sdk/internal/InstallReferrer/SLGoogleReferrer;->access$000()Lcom/singular/sdk/internal/SingularLog;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "google onInstallReferrerSetupFinished: responseCode="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/singular/sdk/internal/SingularLog;->debug(Ljava/lang/String;)I

    .line 649
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    .line 659
    new-instance v1, Lcom/singular/sdk/internal/InstallReferrer/SLGoogleReferrer$1$1;

    invoke-direct {v1, p0, p1}, Lcom/singular/sdk/internal/InstallReferrer/SLGoogleReferrer$1$1;-><init>(Lcom/singular/sdk/internal/InstallReferrer/SLGoogleReferrer$1;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void

    nop

    .array-data 1
    .end array-data
.end method
