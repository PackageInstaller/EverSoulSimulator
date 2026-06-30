.class public Lcom/singular/sdk/internal/ApiStartSession;
.super Lcom/singular/sdk/internal/BaseApi;
.source "ApiStartSession.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/singular/sdk/internal/ApiStartSession$Params;,
        Lcom/singular/sdk/internal/ApiStartSession$OnSessionStartCallback;,
        Lcom/singular/sdk/internal/ApiStartSession$ApiStartSessionConstants;
    }
.end annotation


# static fields
.field private static final LICENSE_RETRY_INTERVAL_MS:I = 0xbb8

.field private static final logger:Lcom/singular/sdk/internal/SingularLog;

.field static final path:Ljava/lang/String; = "/start"


# instance fields
.field private licenseAttemptsCounter:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "ApiStartSession"

    .line 419
    invoke-static {v0}, Lcom/singular/sdk/internal/SingularLog;->getLogger(Ljava/lang/String;)Lcom/singular/sdk/internal/SingularLog;

    move-result-object v0

    sput-object v0, Lcom/singular/sdk/internal/ApiStartSession;->logger:Lcom/singular/sdk/internal/SingularLog;

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method constructor <init>(J)V
    .locals 1

    const-string v0, "SESSION_START"

    .line 499
    invoke-direct {p0, v0, p1, p2}, Lcom/singular/sdk/internal/BaseApi;-><init>(Ljava/lang/String;J)V

    const/4 p1, 0x0

    .line 459
    iput p1, p0, Lcom/singular/sdk/internal/ApiStartSession;->licenseAttemptsCounter:I

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method static synthetic access$000()Lcom/singular/sdk/internal/SingularLog;
    .locals 1

    .line 399
    sget-object v0, Lcom/singular/sdk/internal/ApiStartSession;->logger:Lcom/singular/sdk/internal/SingularLog;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method static synthetic access$100(Lcom/singular/sdk/internal/ApiStartSession;)I
    .locals 0

    .line 399
    iget p0, p0, Lcom/singular/sdk/internal/ApiStartSession;->licenseAttemptsCounter:I

    return p0

    nop

    .array-data 1
    .end array-data
.end method

.method static synthetic access$108(Lcom/singular/sdk/internal/ApiStartSession;)I
    .locals 2

    .line 399
    iget v0, p0, Lcom/singular/sdk/internal/ApiStartSession;->licenseAttemptsCounter:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/singular/sdk/internal/ApiStartSession;->licenseAttemptsCounter:I

    return v0

    nop

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public getOnApiCallback()Lcom/singular/sdk/internal/Api$OnApiCallback;
    .locals 1

    .line 639
    new-instance v0, Lcom/singular/sdk/internal/ApiStartSession$OnSessionStartCallback;

    invoke-direct {v0, p0}, Lcom/singular/sdk/internal/ApiStartSession$OnSessionStartCallback;-><init>(Lcom/singular/sdk/internal/ApiStartSession;)V

    return-object v0

    .array-data 1
    .end array-data
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    const-string v0, "/start"

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public bridge synthetic getTimestamp()J
    .locals 2

    .line 399
    invoke-super {p0}, Lcom/singular/sdk/internal/BaseApi;->getTimestamp()J

    move-result-wide v0

    return-wide v0

    nop

    .array-data 1
    .end array-data
.end method

.method public bridge synthetic getType()Ljava/lang/String;
    .locals 1

    .line 399
    invoke-super {p0}, Lcom/singular/sdk/internal/BaseApi;->getType()Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public bridge synthetic getUrl()Ljava/lang/String;
    .locals 1

    .line 399
    invoke-super {p0}, Lcom/singular/sdk/internal/BaseApi;->getUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public bridge synthetic isAdmonEvent()Z
    .locals 1

    .line 399
    invoke-super {p0}, Lcom/singular/sdk/internal/BaseApi;->isAdmonEvent()Z

    move-result v0

    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public bridge synthetic makeRequest(Lcom/singular/sdk/internal/SingularInstance;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 399
    invoke-super {p0, p1}, Lcom/singular/sdk/internal/BaseApi;->makeRequest(Lcom/singular/sdk/internal/SingularInstance;)Z

    move-result p1

    return p1

    nop

    .array-data 1
    .end array-data
.end method

.method public bridge synthetic toJsonAsString()Ljava/lang/String;
    .locals 1

    .line 399
    invoke-super {p0}, Lcom/singular/sdk/internal/BaseApi;->toJsonAsString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method
