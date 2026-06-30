.class public Lcom/singular/sdk/internal/ApiGDPRConsent;
.super Lcom/singular/sdk/internal/BaseApi;
.source "ApiGDPRConsent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/singular/sdk/internal/ApiGDPRConsent$Params;,
        Lcom/singular/sdk/internal/ApiGDPRConsent$OnResolveCallback;
    }
.end annotation


# static fields
.field private static final logger:Lcom/singular/sdk/internal/SingularLog;

.field static final path:Ljava/lang/String; = "/opengdpr"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "ApiGDPRConsent"

    .line 159
    invoke-static {v0}, Lcom/singular/sdk/internal/SingularLog;->getLogger(Ljava/lang/String;)Lcom/singular/sdk/internal/SingularLog;

    move-result-object v0

    sput-object v0, Lcom/singular/sdk/internal/ApiGDPRConsent;->logger:Lcom/singular/sdk/internal/SingularLog;

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method constructor <init>(J)V
    .locals 1

    const-string v0, "GDPR_CONSENT"

    .line 209
    invoke-direct {p0, v0, p1, p2}, Lcom/singular/sdk/internal/BaseApi;-><init>(Ljava/lang/String;J)V

    return-void

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public getOnApiCallback()Lcom/singular/sdk/internal/Api$OnApiCallback;
    .locals 1

    .line 309
    new-instance v0, Lcom/singular/sdk/internal/ApiGDPRConsent$OnResolveCallback;

    invoke-direct {v0, p0}, Lcom/singular/sdk/internal/ApiGDPRConsent$OnResolveCallback;-><init>(Lcom/singular/sdk/internal/ApiGDPRConsent;)V

    return-object v0

    .array-data 1
    .end array-data
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    const-string v0, "/opengdpr"

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public bridge synthetic getTimestamp()J
    .locals 2

    .line 139
    invoke-super {p0}, Lcom/singular/sdk/internal/BaseApi;->getTimestamp()J

    move-result-wide v0

    return-wide v0

    nop

    .array-data 1
    .end array-data
.end method

.method public bridge synthetic getType()Ljava/lang/String;
    .locals 1

    .line 139
    invoke-super {p0}, Lcom/singular/sdk/internal/BaseApi;->getType()Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public bridge synthetic getUrl()Ljava/lang/String;
    .locals 1

    .line 139
    invoke-super {p0}, Lcom/singular/sdk/internal/BaseApi;->getUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public bridge synthetic isAdmonEvent()Z
    .locals 1

    .line 139
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

    .line 139
    invoke-super {p0, p1}, Lcom/singular/sdk/internal/BaseApi;->makeRequest(Lcom/singular/sdk/internal/SingularInstance;)Z

    move-result p1

    return p1

    nop

    .array-data 1
    .end array-data
.end method

.method public bridge synthetic toJsonAsString()Ljava/lang/String;
    .locals 1

    .line 139
    invoke-super {p0}, Lcom/singular/sdk/internal/BaseApi;->toJsonAsString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method
