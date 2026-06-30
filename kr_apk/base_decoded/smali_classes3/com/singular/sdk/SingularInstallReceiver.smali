.class public Lcom/singular/sdk/SingularInstallReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SingularInstallReceiver.java"


# static fields
.field private static final logger:Lcom/singular/sdk/internal/SingularLog;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 309
    const-class v0, Lcom/singular/sdk/Singular;

    const-string v0, "Singular"

    invoke-static {v0}, Lcom/singular/sdk/internal/SingularLog;->getLogger(Ljava/lang/String;)Lcom/singular/sdk/internal/SingularLog;

    move-result-object v0

    sput-object v0, Lcom/singular/sdk/SingularInstallReceiver;->logger:Lcom/singular/sdk/internal/SingularLog;

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .line 289
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    .line 349
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 369
    invoke-static {v0}, Lcom/singular/sdk/internal/Utils;->isEmptyOrNull(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 379
    sget-object p1, Lcom/singular/sdk/SingularInstallReceiver;->logger:Lcom/singular/sdk/internal/SingularLog;

    const-string p2, "Install.onReceive() action is empty"

    invoke-virtual {p1, p2}, Lcom/singular/sdk/internal/SingularLog;->debug(Ljava/lang/String;)I

    return-void

    :cond_0
    const-string v1, "com.android.vending.INSTALL_REFERRER"

    .line 419
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_1

    .line 429
    sget-object p1, Lcom/singular/sdk/SingularInstallReceiver;->logger:Lcom/singular/sdk/internal/SingularLog;

    new-array p2, v3, [Ljava/lang/Object;

    aput-object v0, p2, v2

    const-string v0, "Install.onReceive() unknown action = %s"

    invoke-virtual {p1, v0, p2}, Lcom/singular/sdk/internal/SingularLog;->debug(Ljava/lang/String;[Ljava/lang/Object;)I

    return-void

    :cond_1
    const-string v0, "referrer"

    .line 469
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 499
    invoke-static {p2}, Lcom/singular/sdk/internal/Utils;->isEmptyOrNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 509
    invoke-static {p1, p2}, Lcom/singular/sdk/internal/Utils;->saveCSIReferrer(Landroid/content/Context;Ljava/lang/String;)V

    .line 519
    sget-object p1, Lcom/singular/sdk/SingularInstallReceiver;->logger:Lcom/singular/sdk/internal/SingularLog;

    new-array v0, v3, [Ljava/lang/Object;

    aput-object p2, v0, v2

    const-string p2, "saved referrer = %s"

    invoke-virtual {p1, p2, v0}, Lcom/singular/sdk/internal/SingularLog;->debug(Ljava/lang/String;[Ljava/lang/Object;)I

    :cond_2
    return-void

    nop

    .array-data 1
    .end array-data
.end method
