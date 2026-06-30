.class Ltwitter4j/HttpClientImpl$1;
.super Ljava/net/Authenticator;
.source "HttpClientImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltwitter4j/HttpClientImpl;->getConnection(Ljava/lang/String;)Ljava/net/HttpURLConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ltwitter4j/HttpClientImpl;


# direct methods
.method constructor <init>(Ltwitter4j/HttpClientImpl;)V
    .locals 0

    .line 2369
    iput-object p1, p0, Ltwitter4j/HttpClientImpl$1;->this$0:Ltwitter4j/HttpClientImpl;

    invoke-direct {p0}, Ljava/net/Authenticator;-><init>()V

    return-void

    .array-data 1
    .end array-data
.end method


# virtual methods
.method protected getPasswordAuthentication()Ljava/net/PasswordAuthentication;
    .locals 3

    .line 2419
    invoke-virtual {p0}, Ltwitter4j/HttpClientImpl$1;->getRequestorType()Ljava/net/Authenticator$RequestorType;

    move-result-object v0

    sget-object v1, Ljava/net/Authenticator$RequestorType;->PROXY:Ljava/net/Authenticator$RequestorType;

    invoke-virtual {v0, v1}, Ljava/net/Authenticator$RequestorType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2429
    new-instance v0, Ljava/net/PasswordAuthentication;

    iget-object v1, p0, Ltwitter4j/HttpClientImpl$1;->this$0:Ltwitter4j/HttpClientImpl;

    iget-object v1, v1, Ltwitter4j/HttpClientImpl;->CONF:Ltwitter4j/HttpClientConfiguration;

    invoke-interface {v1}, Ltwitter4j/HttpClientConfiguration;->getHttpProxyUser()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Ltwitter4j/HttpClientImpl$1;->this$0:Ltwitter4j/HttpClientImpl;

    iget-object v2, v2, Ltwitter4j/HttpClientImpl;->CONF:Ltwitter4j/HttpClientConfiguration;

    .line 2439
    invoke-interface {v2}, Ltwitter4j/HttpClientConfiguration;->getHttpProxyPassword()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/net/PasswordAuthentication;-><init>(Ljava/lang/String;[C)V

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0

    .array-data 1
    .end array-data
.end method
