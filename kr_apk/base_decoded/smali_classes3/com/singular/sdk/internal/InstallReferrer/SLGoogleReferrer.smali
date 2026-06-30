.class public Lcom/singular/sdk/internal/InstallReferrer/SLGoogleReferrer;
.super Ljava/lang/Object;
.source "SLGoogleReferrer.java"

# interfaces
.implements Lcom/singular/sdk/internal/InstallReferrer/SLInstallReferrerService;


# static fields
.field private static installReferrer:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static final logger:Lcom/singular/sdk/internal/SingularLog;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "SLGoogleReferrer"

    .line 229
    invoke-static {v0}, Lcom/singular/sdk/internal/SingularLog;->getLogger(Ljava/lang/String;)Lcom/singular/sdk/internal/SingularLog;

    move-result-object v0

    sput-object v0, Lcom/singular/sdk/internal/InstallReferrer/SLGoogleReferrer;->logger:Lcom/singular/sdk/internal/SingularLog;

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .line 209
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void

    .array-data 1
    .end array-data
.end method

.method static synthetic access$000()Lcom/singular/sdk/internal/SingularLog;
    .locals 1

    .line 209
    sget-object v0, Lcom/singular/sdk/internal/InstallReferrer/SLGoogleReferrer;->logger:Lcom/singular/sdk/internal/SingularLog;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method static synthetic access$200()Ljava/util/Map;
    .locals 1

    .line 209
    sget-object v0, Lcom/singular/sdk/internal/InstallReferrer/SLGoogleReferrer;->installReferrer:Ljava/util/Map;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method static synthetic access$400(Ljava/lang/String;Ljava/lang/String;JJLjava/lang/String;JJ)V
    .locals 0

    .line 209
    invoke-static/range {p0 .. p10}, Lcom/singular/sdk/internal/InstallReferrer/SLGoogleReferrer;->makeInstallReferrerObject(Ljava/lang/String;Ljava/lang/String;JJLjava/lang/String;JJ)V

    return-void

    .array-data 1
    .end array-data
.end method

.method private static makeInstallReferrerObject(Ljava/lang/String;Ljava/lang/String;JJLjava/lang/String;JJ)V
    .locals 2

    .line 339
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/singular/sdk/internal/InstallReferrer/SLGoogleReferrer;->installReferrer:Ljava/util/Map;

    const-string v1, "referrer"

    .line 449
    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 459
    sget-object p0, Lcom/singular/sdk/internal/InstallReferrer/SLGoogleReferrer;->installReferrer:Ljava/util/Map;

    const-string v0, "referrer_source"

    invoke-interface {p0, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 469
    sget-object p0, Lcom/singular/sdk/internal/InstallReferrer/SLGoogleReferrer;->installReferrer:Ljava/util/Map;

    const-string p1, "clickTimestampSeconds"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 479
    sget-object p0, Lcom/singular/sdk/internal/InstallReferrer/SLGoogleReferrer;->installReferrer:Ljava/util/Map;

    const-string p1, "installBeginTimestampSeconds"

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 489
    sget-object p0, Lcom/singular/sdk/internal/InstallReferrer/SLGoogleReferrer;->installReferrer:Ljava/util/Map;

    invoke-static {}, Lcom/singular/sdk/internal/Utils;->getCurrentTimeMillis()J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string p2, "current_device_time"

    invoke-interface {p0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 519
    sget-object p0, Lcom/singular/sdk/internal/InstallReferrer/SLGoogleReferrer;->installReferrer:Ljava/util/Map;

    const-string p1, "installVersion"

    invoke-interface {p0, p1, p6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 529
    sget-object p0, Lcom/singular/sdk/internal/InstallReferrer/SLGoogleReferrer;->installReferrer:Ljava/util/Map;

    const-string p1, "clickTimestampServerSeconds"

    invoke-static {p7, p8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 539
    sget-object p0, Lcom/singular/sdk/internal/InstallReferrer/SLGoogleReferrer;->installReferrer:Ljava/util/Map;

    const-string p1, "installBeginTimestampServerSeconds"

    invoke-static {p9, p10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public fetchReferrer(Landroid/content/Context;Lcom/singular/sdk/internal/InstallReferrer/SLInstallReferrerCompletionHandler;)V
    .locals 2

    .line 589
    :try_start_0
    invoke-static {p1}, Lcom/android/installreferrer/api/InstallReferrerClient;->newBuilder(Landroid/content/Context;)Lcom/android/installreferrer/api/InstallReferrerClient$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/installreferrer/api/InstallReferrerClient$Builder;->build()Lcom/android/installreferrer/api/InstallReferrerClient;

    move-result-object v0

    .line 599
    new-instance v1, Lcom/singular/sdk/internal/InstallReferrer/SLGoogleReferrer$1;

    invoke-direct {v1, p0, v0, p2, p1}, Lcom/singular/sdk/internal/InstallReferrer/SLGoogleReferrer$1;-><init>(Lcom/singular/sdk/internal/InstallReferrer/SLGoogleReferrer;Lcom/android/installreferrer/api/InstallReferrerClient;Lcom/singular/sdk/internal/InstallReferrer/SLInstallReferrerCompletionHandler;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/android/installreferrer/api/InstallReferrerClient;->startConnection(Lcom/android/installreferrer/api/InstallReferrerStateListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1609
    :catchall_0
    sget-object p1, Lcom/singular/sdk/internal/InstallReferrer/SLGoogleReferrer;->logger:Lcom/singular/sdk/internal/SingularLog;

    const-string p2, "google: failed to get referrer value"

    invoke-virtual {p1, p2}, Lcom/singular/sdk/internal/SingularLog;->error(Ljava/lang/String;)I

    :goto_0
    return-void

    nop

    .array-data 1
    .end array-data
.end method
