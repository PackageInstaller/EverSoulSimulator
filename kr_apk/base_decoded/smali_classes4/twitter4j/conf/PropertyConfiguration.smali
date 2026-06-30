.class public final Ltwitter4j/conf/PropertyConfiguration;
.super Ltwitter4j/conf/ConfigurationBase;
.source "PropertyConfiguration.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final APPLICATION_ONLY_AUTH_ENABLED:Ljava/lang/String; = "enableApplicationOnlyAuth"

.field private static final ASYNC_DAEMON_ENABLED:Ljava/lang/String; = "async.daemonEnabled"

.field private static final ASYNC_DISPATCHER_IMPL:Ljava/lang/String; = "async.dispatcherImpl"

.field private static final ASYNC_NUM_THREADS:Ljava/lang/String; = "async.numThreads"

.field private static final CONTRIBUTING_TO:Ljava/lang/String; = "contributingTo"

.field private static final DEBUG:Ljava/lang/String; = "debug"

.field private static final HTTP_CONNECTION_TIMEOUT:Ljava/lang/String; = "http.connectionTimeout"

.field private static final HTTP_GZIP:Ljava/lang/String; = "http.gzip"

.field private static final HTTP_PRETTY_DEBUG:Ljava/lang/String; = "http.prettyDebug"

.field private static final HTTP_PROXY_HOST:Ljava/lang/String; = "http.proxyHost"

.field private static final HTTP_PROXY_HOST_FALLBACK:Ljava/lang/String; = "http.proxyHost"

.field private static final HTTP_PROXY_PASSWORD:Ljava/lang/String; = "http.proxyPassword"

.field private static final HTTP_PROXY_PORT:Ljava/lang/String; = "http.proxyPort"

.field private static final HTTP_PROXY_PORT_FALLBACK:Ljava/lang/String; = "http.proxyPort"

.field private static final HTTP_PROXY_USER:Ljava/lang/String; = "http.proxyUser"

.field private static final HTTP_READ_TIMEOUT:Ljava/lang/String; = "http.readTimeout"

.field private static final HTTP_RETRY_COUNT:Ljava/lang/String; = "http.retryCount"

.field private static final HTTP_RETRY_INTERVAL_SECS:Ljava/lang/String; = "http.retryIntervalSecs"

.field private static final HTTP_STREAMING_READ_TIMEOUT:Ljava/lang/String; = "http.streamingReadTimeout"

.field private static final INCLUDE_EMAIL:Ljava/lang/String; = "includeEmail"

.field private static final INCLUDE_ENTITIES:Ljava/lang/String; = "includeEntities"

.field private static final INCLUDE_EXT_ALT_TEXT:Ljava/lang/String; = "includeExtAltText"

.field private static final INCLUDE_MY_RETWEET:Ljava/lang/String; = "includeMyRetweet"

.field private static final JSON_STORE_ENABLED:Ljava/lang/String; = "jsonStoreEnabled"

.field private static final LOGGER_FACTORY:Ljava/lang/String; = "loggerFactory"

.field private static final MBEAN_ENABLED:Ljava/lang/String; = "mbeanEnabled"

.field private static final MEDIA_PROVIDER:Ljava/lang/String; = "media.provider"

.field private static final MEDIA_PROVIDER_API_KEY:Ljava/lang/String; = "media.providerAPIKey"

.field private static final MEDIA_PROVIDER_PARAMETERS:Ljava/lang/String; = "media.providerParameters"

.field private static final OAUTH2_ACCESS_TOKEN:Ljava/lang/String; = "oauth2.accessToken"

.field private static final OAUTH2_INVALIDATE_TOKEN_URL:Ljava/lang/String; = "oauth2.invalidateTokenURL"

.field private static final OAUTH2_SCOPE:Ljava/lang/String; = "oauth2.scope"

.field private static final OAUTH2_TOKEN_TYPE:Ljava/lang/String; = "oauth2.tokenType"

.field private static final OAUTH2_TOKEN_URL:Ljava/lang/String; = "oauth2.tokenURL"

.field private static final OAUTH_ACCESS_TOKEN:Ljava/lang/String; = "oauth.accessToken"

.field private static final OAUTH_ACCESS_TOKEN_SECRET:Ljava/lang/String; = "oauth.accessTokenSecret"

.field private static final OAUTH_ACCESS_TOKEN_URL:Ljava/lang/String; = "oauth.accessTokenURL"

.field private static final OAUTH_AUTHENTICATION_URL:Ljava/lang/String; = "oauth.authenticationURL"

.field private static final OAUTH_AUTHORIZATION_URL:Ljava/lang/String; = "oauth.authorizationURL"

.field private static final OAUTH_CONSUMER_KEY:Ljava/lang/String; = "oauth.consumerKey"

.field private static final OAUTH_CONSUMER_SECRET:Ljava/lang/String; = "oauth.consumerSecret"

.field private static final OAUTH_REQUEST_TOKEN_URL:Ljava/lang/String; = "oauth.requestTokenURL"

.field private static final PASSWORD:Ljava/lang/String; = "password"

.field private static final REST_BASE_URL:Ljava/lang/String; = "restBaseURL"

.field private static final SITE_STREAM_BASE_URL:Ljava/lang/String; = "siteStreamBaseURL"

.field private static final STREAM_BASE_URL:Ljava/lang/String; = "streamBaseURL"

.field private static final STREAM_STALL_WARNINGS_ENABLED:Ljava/lang/String; = "stream.enableStallWarnings"

.field private static final STREAM_THREAD_NAME:Ljava/lang/String; = "streamThreadName"

.field private static final STREAM_USER_REPLIES_ALL:Ljava/lang/String; = "stream.user.repliesAll"

.field private static final STREAM_USER_WITH_FOLLOWINGS:Ljava/lang/String; = "stream.user.withFollowings"

.field private static final TWEET_MODE_EXTENDED:Ljava/lang/String; = "tweetModeExtended"

.field private static final USER:Ljava/lang/String; = "user"

.field private static final USER_STREAM_BASE_URL:Ljava/lang/String; = "userStreamBaseURL"

.field private static final serialVersionUID:J = -0x64c9fe16c8d3c6c4L


# direct methods
.method constructor <init>()V
    .locals 1

    const v0, 0x543c2032

    invoke-static {v0}, Lcom/liapp/y;->׳ֳֳ֬د(I)Ljava/lang/String;

    move-result-object v0

    .line 1509
    invoke-direct {p0, v0}, Ltwitter4j/conf/PropertyConfiguration;-><init>(Ljava/lang/String;)V

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1

    .line 969
    invoke-direct {p0}, Ltwitter4j/conf/ConfigurationBase;-><init>()V

    .line 979
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    .line 989
    invoke-direct {p0, v0, p1}, Ltwitter4j/conf/PropertyConfiguration;->loadProperties(Ljava/util/Properties;Ljava/io/InputStream;)Z

    const-string p1, "/"

    .line 999
    invoke-direct {p0, v0, p1}, Ltwitter4j/conf/PropertyConfiguration;->setFieldsWithTreePath(Ljava/util/Properties;Ljava/lang/String;)V

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method constructor <init>(Ljava/lang/String;)V
    .locals 5

    .line 1129
    invoke-direct {p0}, Ltwitter4j/conf/ConfigurationBase;-><init>()V

    .line 1169
    :try_start_0
    invoke-static {}, Ljava/lang/System;->getProperties()Ljava/util/Properties;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Properties;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Properties;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1189
    :try_start_1
    invoke-static {}, Ljava/lang/System;->getenv()Ljava/util/Map;

    move-result-object v1

    .line 1199
    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1209
    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 1249
    :catch_0
    :cond_0
    :try_start_2
    invoke-direct {p0, v0}, Ltwitter4j/conf/PropertyConfiguration;->normalize(Ljava/util/Properties;)V
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 1279
    :catch_1
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    .line 1319
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    const v2, 0x22504cc6    # 2.82299E-18f

    invoke-static {v2}, Lcom/liapp/y;->ֲֳگܱޭ(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-char v2, Ljava/io/File;->separatorChar:C

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const v2, 0x3377b33b

    invoke-static {v2}, Lcom/liapp/y;->ׯ״ٲ֬ب(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Ltwitter4j/conf/PropertyConfiguration;->loadProperties(Ljava/util/Properties;Ljava/lang/String;)Z

    .line 1339
    const-class v1, Ltwitter4j/conf/Configuration;

    const v2, -0x450c7fbf

    invoke-static {v2}, Lcom/liapp/y;->ڳݬ٬ۮݪ(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Ltwitter4j/conf/PropertyConfiguration;->loadProperties(Ljava/util/Properties;Ljava/io/InputStream;)Z

    .line 1359
    const-class v1, Ltwitter4j/conf/Configuration;

    const v2, -0x2257d834

    invoke-static {v2}, Lcom/liapp/y;->״دش۲ݮ(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Ltwitter4j/conf/PropertyConfiguration;->loadProperties(Ljava/util/Properties;Ljava/io/InputStream;)Z

    .line 1389
    :try_start_3
    new-instance v1, Ljava/io/FileInputStream;

    const-string v2, "WEB-INF/twitter4j.properties"

    invoke-direct {v1, v2}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0, v1}, Ltwitter4j/conf/PropertyConfiguration;->loadProperties(Ljava/util/Properties;Ljava/io/InputStream;)Z
    :try_end_3
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_2

    .line 1439
    :catch_2
    invoke-direct {p0, v0, p1}, Ltwitter4j/conf/PropertyConfiguration;->setFieldsWithTreePath(Ljava/util/Properties;Ljava/lang/String;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method public constructor <init>(Ljava/util/Properties;)V
    .locals 1

    const v0, 0x543c2032

    invoke-static {v0}, Lcom/liapp/y;->׳ֳֳ֬د(I)Ljava/lang/String;

    move-result-object v0

    .line 1039
    invoke-direct {p0, p1, v0}, Ltwitter4j/conf/PropertyConfiguration;-><init>(Ljava/util/Properties;Ljava/lang/String;)V

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public constructor <init>(Ljava/util/Properties;Ljava/lang/String;)V
    .locals 0

    .line 1079
    invoke-direct {p0}, Ltwitter4j/conf/ConfigurationBase;-><init>()V

    .line 1089
    invoke-direct {p0, p1, p2}, Ltwitter4j/conf/PropertyConfiguration;->setFieldsWithTreePath(Ljava/util/Properties;Ljava/lang/String;)V

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method private getBoolean(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .line 4089
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 4099
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1

    .array-data 1
    .end array-data
.end method

.method private getIntProperty(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    .line 4139
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 4159
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    const/4 p1, -0x1

    return p1

    .array-data 1
    .end array-data
.end method

.method private getLongProperty(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)J
    .locals 1

    .line 4229
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 4249
    :try_start_0
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide p1

    :catch_0
    const-wide/16 p1, -0x1

    return-wide p1

    nop

    .array-data 1
    .end array-data
.end method

.method private getString(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 4319
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .array-data 1
    .end array-data
.end method

.method private loadProperties(Ljava/util/Properties;Ljava/io/InputStream;)Z
    .locals 0

    .line 1829
    :try_start_0
    invoke-virtual {p1, p2}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    .line 1839
    invoke-direct {p0, p1}, Ltwitter4j/conf/PropertyConfiguration;->normalize(Ljava/util/Properties;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    :catch_0
    const/4 p1, 0x0

    return p1

    .array-data 1
    .end array-data
.end method

.method private loadProperties(Ljava/util/Properties;Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x0

    .line 1609
    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1619
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 1629
    new-instance p2, Ljava/io/FileInputStream;

    invoke-direct {p2, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1639
    :try_start_1
    invoke-virtual {p1, p2}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    .line 1649
    invoke-direct {p0, p1}, Ltwitter4j/conf/PropertyConfiguration;->normalize(Ljava/util/Properties;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1719
    :try_start_2
    invoke-virtual {p2}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    const/4 p1, 0x1

    return p1

    :catchall_0
    move-exception p1

    move-object v0, p2

    goto :goto_0

    :catch_1
    move-object v0, p2

    goto :goto_1

    :catchall_1
    move-exception p1

    :goto_0
    if-eqz v0, :cond_0

    :try_start_3
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 1769
    :catch_2
    :cond_0
    throw p1

    :catch_3
    :goto_1
    if-eqz v0, :cond_1

    .line 1719
    :try_start_4
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    :cond_1
    const/4 p1, 0x0

    return p1

    nop

    .array-data 1
    .end array-data
.end method

.method private normalize(Ljava/util/Properties;)V
    .locals 8

    .line 1919
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 1929
    invoke-virtual {p1}, Ljava/util/Properties;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const v4, 0x7d6512f5

    invoke-static {v4}, Lcom/liapp/y;->حֲݴܳޯ(I)Ljava/lang/String;

    move-result-object v4

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 1939
    check-cast v3, Ljava/lang/String;

    const/4 v5, -0x1

    .line 1949
    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-eq v5, v4, :cond_0

    .line 1959
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1989
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1999
    invoke-virtual {p1, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2009
    invoke-virtual {v2, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    .line 2019
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v7, 0x0

    invoke-virtual {v2, v7, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    add-int/2addr v5, v1

    invoke-virtual {v2, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2029
    invoke-virtual {p1, v2, v3}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    goto :goto_1

    :cond_2
    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method private notNull(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .line 1549
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1

    nop

    .array-data 1
    .end array-data
.end method

.method private setFieldsWithPrefix(Ljava/util/Properties;Ljava/lang/String;)V
    .locals 5

    const v0, 0x336115ab

    invoke-static {v0}, Lcom/liapp/y;->ׯ״ٲ֬ب(I)Ljava/lang/String;

    move-result-object v0

    .line 2329
    invoke-direct {p0, p1, p2, v0}, Ltwitter4j/conf/PropertyConfiguration;->notNull(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2339
    invoke-direct {p0, p1, p2, v0}, Ltwitter4j/conf/PropertyConfiguration;->getBoolean(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {p0, v0}, Ltwitter4j/conf/PropertyConfiguration;->setDebug(Z)V

    :cond_0
    const v0, 0x225376ce

    invoke-static {v0}, Lcom/liapp/y;->ֲֳگܱޭ(I)Ljava/lang/String;

    move-result-object v0

    .line 2369
    invoke-direct {p0, p1, p2, v0}, Ltwitter4j/conf/PropertyConfiguration;->notNull(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2379
    invoke-direct {p0, p1, p2, v0}, Ltwitter4j/conf/PropertyConfiguration;->getString(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ltwitter4j/conf/PropertyConfiguration;->setUser(Ljava/lang/String;)V

    :cond_1
    const v0, -0x224da56c

    invoke-static {v0}, Lcom/liapp/y;->״دش۲ݮ(I)Ljava/lang/String;

    move-result-object v0

    .line 2399
    invoke-direct {p0, p1, p2, v0}, Ltwitter4j/conf/PropertyConfiguration;->notNull(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2409
    invoke-direct {p0, p1, p2, v0}, Ltwitter4j/conf/PropertyConfiguration;->getString(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ltwitter4j/conf/PropertyConfiguration;->setPassword(Ljava/lang/String;)V

    :cond_2
    const v0, -0x450c7d8f

    invoke-static {v0}, Lcom/liapp/y;->ڳݬ٬ۮݪ(I)Ljava/lang/String;

    move-result-object v0

    .line 2429
    invoke-direct {p0, p1, p2, v0}, Ltwitter4j/conf/PropertyConfiguration;->notNull(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2439
    invoke-direct {p0, p1, p2, v0}, Ltwitter4j/conf/PropertyConfiguration;->getBoolean(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {p0, v0}, Ltwitter4j/conf/PropertyConfiguration;->setPrettyDebugEnabled(Z)V

    :cond_3
    const v0, 0x3377b7eb

    invoke-static {v0}, Lcom/liapp/y;->ׯ״ٲ֬ب(I)Ljava/lang/String;

    move-result-object v0

    .line 2459
    invoke-direct {p0, p1, p2, v0}, Ltwitter4j/conf/PropertyConfiguration;->notNull(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 2469
    invoke-direct {p0, p1, p2, v0}, Ltwitter4j/conf/PropertyConfiguration;->getBoolean(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {p0, v0}, Ltwitter4j/conf/PropertyConfiguration;->setGZIPEnabled(Z)V

    :cond_4
    const v0, 0x5d053ac7    # 6.000128E17f

    invoke-static {v0}, Lcom/liapp/y;->ڴݮگ֮ت(I)Ljava/lang/String;

    move-result-object v0

    .line 2489
    invoke-direct {p0, p1, p2, v0}, Ltwitter4j/conf/PropertyConfiguration;->notNull(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 2499
    invoke-direct {p0, p1, p2, v0}, Ltwitter4j/conf/PropertyConfiguration;->getString(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ltwitter4j/conf/PropertyConfiguration;->setHttpProxyHost(Ljava/lang/String;)V

    goto :goto_0

    .line 2509
    :cond_5
    invoke-direct {p0, p1, p2, v0}, Ltwitter4j/conf/PropertyConfiguration;->notNull(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 2519
    invoke-direct {p0, p1, p2, v0}, Ltwitter4j/conf/PropertyConfiguration;->getString(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ltwitter4j/conf/PropertyConfiguration;->setHttpProxyHost(Ljava/lang/String;)V

    :cond_6
    :goto_0
    const v0, 0x5d054547

    invoke-static {v0}, Lcom/liapp/y;->ڴݮگ֮ت(I)Ljava/lang/String;

    move-result-object v0

    .line 2539
    invoke-direct {p0, p1, p2, v0}, Ltwitter4j/conf/PropertyConfiguration;->notNull(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 2549
    invoke-direct {p0, p1, p2, v0}, Ltwitter4j/conf/PropertyConfiguration;->getString(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ltwitter4j/conf/PropertyConfiguration;->setHttpProxyUser(Ljava/lang/String;)V

    :cond_7
    const v0, 0x6d197148

    invoke-static {v0}, Lcom/liapp/y;->ٱڳܴڭܩ(I)Ljava/lang/String;

    move-result-object v0

    .line 2569
    invoke-direct {p0, p1, p2, v0}, Ltwitter4j/conf/PropertyConfiguration;->notNull(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 2579
    invoke-direct {p0, p1, p2, v0}, Ltwitter4j/conf/PropertyConfiguration;->getString(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ltwitter4j/conf/PropertyConfiguration;->setHttpProxyPassword(Ljava/lang/String;)V

    :cond_8
    const v0, 0x224064e6

    invoke-static {v0}, Lcom/liapp/y;->ֲֳگܱޭ(I)Ljava/lang/String;

    move-result-object v0

    .line 2599
    invoke-direct {p0, p1, p2, v0}, Ltwitter4j/conf/PropertyConfiguration;->notNull(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 2609
    invoke-direct {p0, p1, p2, v0}, Ltwitter4j/conf/PropertyConfiguration;->getIntProperty(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Ltwitter4j/conf/PropertyConfiguration;->setHttpProxyPort(I)V

    goto :goto_1

    .line 2619
    :cond_9
    invoke-direct {p0, p1, p2, v0}, Ltwitter4j/conf/PropertyConfiguration;->notNull(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 2629
    invoke-direct {p0, p1, p2, v0}, Ltwitter4j/conf/PropertyConfiguration;->getIntProperty(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Ltwitter4j/conf/PropertyConfiguration;->setHttpProxyPort(I)V

    :cond_a
    :goto_1
    const v0, 0x3377c963

    invoke-static {v0}, Lcom/liapp/y;->ׯ״ٲ֬ب(I)Ljava/lang/String;

    move-result-object v0

    .line 2649
    invoke-direct {p0, p1, p2, v0}, Ltwitter4j/conf/PropertyConfiguration;->notNull(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 2659
    invoke-direct {p0, p1, p2, v0}, Ltwitter4j/conf/PropertyConfiguration;->getIntProperty(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Ltwitter4j/conf/PropertyConfiguration;->setHttpConnectionTimeout(I)V

    :cond_b
    const v0, 0x224067a6

    invoke-static {v0}, Lcom/liapp/y;->ֲֳگܱޭ(I)Ljava/lang/String;

    move-result-object v0

    .line 2679
    invoke-direct {p0, p1, p2, v0}, Ltwitter4j/conf/PropertyConfiguration;->notNull(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 2689
    invoke-direct {p0, p1, p2, v0}, Ltwitter4j/conf/PropertyConfiguration;->getIntProperty(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Ltwitter4j/conf/PropertyConfiguration;->setHttpReadTimeout(I)V

    :cond_c
    const v0, 0x7d656fbd

    invoke-static {v0}, Lcom/liapp/y;->حֲݴܳޯ(I)Ljava/lang/String;

    move-result-object v0

    .line 2709
    invoke-direct {p0, p1, p2, v0}, Ltwitter4j/conf/PropertyConfiguration;->notNull(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 2719
    invoke-direct {p0, p1, p2, v0}, Ltwitter4j/conf/PropertyConfiguration;->getIntProperty(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Ltwitter4j/conf/PropertyConfiguration;->setHttpStreamingReadTimeout(I)V

    :cond_d
    const v0, 0x7d656f65

    invoke-static {v0}, Lcom/liapp/y;->حֲݴܳޯ(I)Ljava/lang/String;

    move-result-object v0

    .line 2739
    invoke-direct {p0, p1, p2, v0}, Ltwitter4j/conf/PropertyConfiguration;->notNull(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 2749
    invoke-direct {p0, p1, p2, v0}, Ltwitter4j/conf/PropertyConfiguration;->getIntProperty(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Ltwitter4j/conf/PropertyConfiguration;->setHttpRetryCount(I)V

    :cond_e
    const v0, 0x3377ccb3

    invoke-static {v0}, Lcom/liapp/y;->ׯ״ٲ֬ب(I)Ljava/lang/String;

    move-result-object v0

    .line 2769
    invoke-direct {p0, p1, p2, v0}, Ltwitter4j/conf/PropertyConfiguration;->notNull(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 2779
    invoke-direct {p0, p1, p2, v0}, Ltwitter4j/conf/PropertyConfiguration;->getIntProperty(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Ltwitter4j/conf/PropertyConfiguration;->setHttpRetryIntervalSeconds(I)V

    :cond_f
    const v0, -0x2257a044

    invoke-static {v0}, Lcom/liapp/y;->״دش۲ݮ(I)Ljava/lang/String;

    move-result-object v0

    .line 2799
    invoke-direct {p0, p1, p2, v0}, Ltwitter4j/conf/PropertyConfiguration;->notNull(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 2809
    invoke-direct {p0, p1, p2, v0}, Ltwitter4j/conf/PropertyConfiguration;->getString(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ltwitter4j/conf/PropertyConfiguration;->setOAuthConsumerKey(Ljava/lang/String;)V

    :cond_10
    const v0, 0x3377cd6b

    invoke-static {v0}, Lcom/liapp/y;->ׯ״ٲ֬ب(I)Ljava/lang/String;

    move-result-object v0

    .line 2829
    invoke-direct {p0, p1, p2, v0}, Ltwitter4j/conf/PropertyConfiguration;->notNull(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 2839
    invoke-direct {p0, p1, p2, v0}, Ltwitter4j/conf/PropertyConfiguration;->getString(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ltwitter4j/conf/PropertyConfiguration;->setOAuthConsumerSecret(Ljava/lang/String;)V

    :cond_11
    const v0, 0x5d05433f

    invoke-static {v0}, Lcom/liapp/y;->ڴݮگ֮ت(I)Ljava/lang/String;

    move-result-object v0

    .line 2859
    invoke-direct {p0, p1, p2, v0}, Ltwitter4j/conf/PropertyConfiguration;->notNull(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 2869
    invoke-direct {p0, p1, p2, v0}, Ltwitter4j/conf/PropertyConfiguration;->getString(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ltwitter4j/conf/PropertyConfiguration;->setOAuthAccessToken(Ljava/lang/String;)V

    :cond_12
    const v0, 0x542c6992

    invoke-static {v0}, Lcom/liapp/y;->׳ֳֳ֬د(I)Ljava/lang/String;

    move-result-object v0

    .line 2889
    invoke-direct {p0, p1, p2, v0}, Ltwitter4j/conf/PropertyConfiguration;->notNull(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 2899
    invoke-direct {p0, p1, p2, v0}, Ltwitter4j/conf/PropertyConfiguration;->getString(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ltwitter4j/conf/PropertyConfiguration;->setOAuthAccessTokenSecret(Ljava/lang/String;)V

    :cond_13
    const v0, 0x2240621e

    invoke-static {v0}, Lcom/liapp/y;->ֲֳگܱޭ(I)Ljava/lang/String;

    move-result-object v0

    .line 2919
    invoke-direct {p0, p1, p2, v0}, Ltwitter4j/conf/PropertyConfiguration;->notNull(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 2929
    invoke-direct {p0, p1, p2, v0}, Ltwitter4j/conf/PropertyConfiguration;->getString(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ltwitter4j/conf/PropertyConfiguration;->setOAuth2TokenType(Ljava/lang/String;)V

    :cond_14
    const v0, 0x7d6564e5

    invoke-static {v0}, Lcom/liapp/y;->حֲݴܳޯ(I)Ljava/lang/String;

    move-result-object v0

    .line 2949
    invoke-direct {p0, p1, p2, v0}, Ltwitter4j/conf/PropertyConfiguration;->notNull(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 2959
    invoke-direct {p0, p1, p2, v0}, Ltwitter4j/conf/PropertyConfiguration;->getString(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ltwitter4j/conf/PropertyConfiguration;->setOAuth2AccessToken(Ljava/lang/String;)V

    :cond_15
    const v0, -0x2257ad9c

    invoke-static {v0}, Lcom/liapp/y;->״دش۲ݮ(I)Ljava/lang/String;

    move-result-object v0

    .line 2979
    invoke-direct {p0, p1, p2, v0}, Ltwitter4j/conf/PropertyConfiguration;->notNull(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 2989
    invoke-direct {p0, p1, p2, v0}, Ltwitter4j/conf/PropertyConfiguration;->getString(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ltwitter4j/conf/PropertyConfiguration;->setOAuth2Scope(Ljava/lang/String;)V

    :cond_16
    const v0, 0x542c67fa

    invoke-static {v0}, Lcom/liapp/y;->׳ֳֳ֬د(I)Ljava/lang/String;

    move-result-object v0

    .line 3009
    invoke-direct {p0, p1, p2, v0}, Ltwitter4j/conf/PropertyConfiguration;->notNull(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 3019
    invoke-direct {p0, p1, p2, v0}, Ltwitter4j/conf/PropertyConfiguration;->getIntProperty(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Ltwitter4j/conf/PropertyConfiguration;->setAsyncNumThreads(I)V

    :cond_17
    const v0, 0x3377c12b

    invoke-static {v0}, Lcom/liapp/y;->ׯ״ٲ֬ب(I)Ljava/lang/String;

    move-result-object v0

    .line 3039
    invoke-direct {p0, p1, p2, v0}, Ltwitter4j/conf/PropertyConfiguration;->notNull(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_18

    const v0, 0x3377c12b

    invoke-static {v0}, Lcom/liapp/y;->ׯ״ٲ֬ب(I)Ljava/lang/String;

    move-result-object v0

    .line 3049
    invoke-direct {p0, p1, p2, v0}, Ltwitter4j/conf/PropertyConfiguration;->getBoolean(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {p0, v0}, Ltwitter4j/conf/PropertyConfiguration;->setDaemonEnabled(Z)V

    :cond_18
    const v0, 0x22406f76

    invoke-static {v0}, Lcom/liapp/y;->ֲֳگܱޭ(I)Ljava/lang/String;

    move-result-object v0

    .line 3069
    invoke-direct {p0, p1, p2, v0}, Ltwitter4j/conf/PropertyConfiguration;->notNull(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_19

    const v0, 0x22406f76

    invoke-static {v0}, Lcom/liapp/y;->ֲֳگܱޭ(I)Ljava/lang/String;

    move-result-object v0

    .line 3079
    invoke-direct {p0, p1, p2, v0}, Ltwitter4j/conf/PropertyConfiguration;->getString(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ltwitter4j/conf/PropertyConfiguration;->setStreamThreadName(Ljava/lang/String;)V

    :cond_19
    const v0, -0x450c0817

    invoke-static {v0}, Lcom/liapp/y;->ڳݬ٬ۮݪ(I)Ljava/lang/String;

    move-result-object v0

    .line 3099
    invoke-direct {p0, p1, p2, v0}, Ltwitter4j/conf/PropertyConfiguration;->notNull(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1a

    const v0, -0x450c0817

    invoke-static {v0}, Lcom/liapp/y;->ڳݬ٬ۮݪ(I)Ljava/lang/String;

    move-result-object v0

    .line 3109
    invoke-direct {p0, p1, p2, v0}, Ltwitter4j/conf/PropertyConfiguration;->getLongProperty(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Ltwitter4j/conf/PropertyConfiguration;->setContributingTo(J)V

    :cond_1a
    const v0, 0x7d65670d

    invoke-static {v0}, Lcom/liapp/y;->حֲݴܳޯ(I)Ljava/lang/String;

    move-result-object v0

    .line 3129
    invoke-direct {p0, p1, p2, v0}, Ltwitter4j/conf/PropertyConfiguration;->notNull(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1b

    const v0, 0x7d65670d

    invoke-static {v0}, Lcom/liapp/y;->حֲݴܳޯ(I)Ljava/lang/String;

    move-result-object v0

    .line 3139
    invoke-direct {p0, p1, p2, v0}, Ltwitter4j/conf/PropertyConfiguration;->getString(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ltwitter4j/conf/PropertyConfiguration;->setDispatcherImpl(Ljava/lang/String;)V

    :cond_1b
    const v0, -0x450c0f47

    invoke-static {v0}, Lcom/liapp/y;->ڳݬ٬ۮݪ(I)Ljava/lang/String;

    move-result-object v0

    .line 3169
    invoke-direct {p0, p1, p2, v0}, Ltwitter4j/conf/PropertyConfiguration;->notNull(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1c

    const v0, -0x450c0f47

    invoke-static {v0}, Lcom/liapp/y;->ڳݬ٬ۮݪ(I)Ljava/lang/String;

    move-result-object v0

    .line 3179
    invoke-direct {p0, p1, p2, v0}, Ltwitter4j/conf/PropertyConfiguration;->getString(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ltwitter4j/conf/PropertyConfiguration;->setOAuthRequestTokenURL(Ljava/lang/String;)V

    :cond_1c
    const v0, -0x2257a87c

    invoke-static {v0}, Lcom/liapp/y;->״دش۲ݮ(I)Ljava/lang/String;

    move-result-object v0

    .line 3209
    invoke-direct {p0, p1, p2, v0}, Ltwitter4j/conf/PropertyConfiguration;->notNull(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1d

    const v0, -0x2257a87c

    invoke-static {v0}, Lcom/liapp/y;->״دش۲ݮ(I)Ljava/lang/String;

    move-result-object v0

    .line 3219
    invoke-direct {p0, p1, p2, v0}, Ltwitter4j/conf/PropertyConfiguration;->getString(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ltwitter4j/conf/PropertyConfiguration;->setOAuthAuthorizationURL(Ljava/lang/String;)V

    :cond_1d
    const v0, 0x5d05488f

    invoke-static {v0}, Lcom/liapp/y;->ڴݮگ֮ت(I)Ljava/lang/String;

    move-result-object v0

    .line 3249
    invoke-direct {p0, p1, p2, v0}, Ltwitter4j/conf/PropertyConfiguration;->notNull(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1e

    const v0, 0x5d05488f

    invoke-static {v0}, Lcom/liapp/y;->ڴݮگ֮ت(I)Ljava/lang/String;

    move-result-object v0

    .line 3259
    invoke-direct {p0, p1, p2, v0}, Ltwitter4j/conf/PropertyConfiguration;->getString(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ltwitter4j/conf/PropertyConfiguration;->setOAuthAccessTokenURL(Ljava/lang/String;)V

    :cond_1e
    const v0, 0x6d197f50

    invoke-static {v0}, Lcom/liapp/y;->ٱڳܴڭܩ(I)Ljava/lang/String;

    move-result-object v0

    .line 3289
    invoke-direct {p0, p1, p2, v0}, Ltwitter4j/conf/PropertyConfiguration;->notNull(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1f

    const v0, 0x6d197f50

    invoke-static {v0}, Lcom/liapp/y;->ٱڳܴڭܩ(I)Ljava/lang/String;

    move-result-object v0

    .line 3299
    invoke-direct {p0, p1, p2, v0}, Ltwitter4j/conf/PropertyConfiguration;->getString(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ltwitter4j/conf/PropertyConfiguration;->setOAuthAuthenticationURL(Ljava/lang/String;)V

    :cond_1f
    const v0, 0x5d054a07

    invoke-static {v0}, Lcom/liapp/y;->ڴݮگ֮ت(I)Ljava/lang/String;

    move-result-object v0

    .line 3329
    invoke-direct {p0, p1, p2, v0}, Ltwitter4j/conf/PropertyConfiguration;->notNull(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_20

    const v0, 0x5d054a07

    invoke-static {v0}, Lcom/liapp/y;->ڴݮگ֮ت(I)Ljava/lang/String;

    move-result-object v0

    .line 3339
    invoke-direct {p0, p1, p2, v0}, Ltwitter4j/conf/PropertyConfiguration;->getString(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ltwitter4j/conf/PropertyConfiguration;->setOAuth2TokenURL(Ljava/lang/String;)V

    :cond_20
    const v0, 0x6d197e00

    invoke-static {v0}, Lcom/liapp/y;->ٱڳܴڭܩ(I)Ljava/lang/String;

    move-result-object v0

    .line 3369
    invoke-direct {p0, p1, p2, v0}, Ltwitter4j/conf/PropertyConfiguration;->notNull(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_21

    const v0, 0x6d197e00

    invoke-static {v0}, Lcom/liapp/y;->ٱڳܴڭܩ(I)Ljava/lang/String;

    move-result-object v0

    .line 3379
    invoke-direct {p0, p1, p2, v0}, Ltwitter4j/conf/PropertyConfiguration;->getString(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ltwitter4j/conf/PropertyConfiguration;->setOAuth2InvalidateTokenURL(Ljava/lang/String;)V

    :cond_21
    const v0, -0x2257b5d4

    invoke-static {v0}, Lcom/liapp/y;->״دش۲ݮ(I)Ljava/lang/String;

    move-result-object v0

    .line 3409
    invoke-direct {p0, p1, p2, v0}, Ltwitter4j/conf/PropertyConfiguration;->notNull(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_22

    const v0, -0x2257b5d4

    invoke-static {v0}, Lcom/liapp/y;->״دش۲ݮ(I)Ljava/lang/String;

    move-result-object v0

    .line 3419
    invoke-direct {p0, p1, p2, v0}, Ltwitter4j/conf/PropertyConfiguration;->getString(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ltwitter4j/conf/PropertyConfiguration;->setRestBaseURL(Ljava/lang/String;)V

    :cond_22
    const v0, -0x2257b47c

    invoke-static {v0}, Lcom/liapp/y;->״دش۲ݮ(I)Ljava/lang/String;

    move-result-object v0

    .line 3449
    invoke-direct {p0, p1, p2, v0}, Ltwitter4j/conf/PropertyConfiguration;->notNull(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_23

    const v0, -0x2257b47c

    invoke-static {v0}, Lcom/liapp/y;->״دش۲ݮ(I)Ljava/lang/String;

    move-result-object v0

    .line 3459
    invoke-direct {p0, p1, p2, v0}, Ltwitter4j/conf/PropertyConfiguration;->getString(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ltwitter4j/conf/PropertyConfiguration;->setStreamBaseURL(Ljava/lang/String;)V

    :cond_23
    const v0, -0x450c12b7

    invoke-static {v0}, Lcom/liapp/y;->ڳݬ٬ۮݪ(I)Ljava/lang/String;

    move-result-object v0

    .line 3479
    invoke-direct {p0, p1, p2, v0}, Ltwitter4j/conf/PropertyConfiguration;->notNull(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_24

    const v0, -0x450c12b7

    invoke-static {v0}, Lcom/liapp/y;->ڳݬ٬ۮݪ(I)Ljava/lang/String;

    move-result-object v0

    .line 3489
    invoke-direct {p0, p1, p2, v0}, Ltwitter4j/conf/PropertyConfiguration;->getString(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ltwitter4j/conf/PropertyConfiguration;->setUserStreamBaseURL(Ljava/lang/String;)V

    :cond_24
    const v0, 0x6d1963f0

    invoke-static {v0}, Lcom/liapp/y;->ٱڳܴڭܩ(I)Ljava/lang/String;

    move-result-object v0

    .line 3509
    invoke-direct {p0, p1, p2, v0}, Ltwitter4j/conf/PropertyConfiguration;->notNull(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_25

    const v0, 0x6d1963f0

    invoke-static {v0}, Lcom/liapp/y;->ٱڳܴڭܩ(I)Ljava/lang/String;

    move-result-object v0

    .line 3519
    invoke-direct {p0, p1, p2, v0}, Ltwitter4j/conf/PropertyConfiguration;->getString(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ltwitter4j/conf/PropertyConfiguration;->setSiteStreamBaseURL(Ljava/lang/String;)V

    :cond_25
    const v0, 0x3377da13

    invoke-static {v0}, Lcom/liapp/y;->ׯ״ٲ֬ب(I)Ljava/lang/String;

    move-result-object v0

    .line 3539
    invoke-direct {p0, p1, p2, v0}, Ltwitter4j/conf/PropertyConfiguration;->notNull(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_26

    const v0, 0x3377da13

    invoke-static {v0}, Lcom/liapp/y;->ׯ״ٲ֬ب(I)Ljava/lang/String;

    move-result-object v0

    .line 3549
    invoke-direct {p0, p1, p2, v0}, Ltwitter4j/conf/PropertyConfiguration;->getBoolean(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {p0, v0}, Ltwitter4j/conf/PropertyConfiguration;->setIncludeMyRetweetEnabled(Z)V

    :cond_26
    const v0, 0x6d196288

    invoke-static {v0}, Lcom/liapp/y;->ٱڳܴڭܩ(I)Ljava/lang/String;

    move-result-object v0

    .line 3569
    invoke-direct {p0, p1, p2, v0}, Ltwitter4j/conf/PropertyConfiguration;->notNull(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_27

    const v0, 0x6d196288

    invoke-static {v0}, Lcom/liapp/y;->ٱڳܴڭܩ(I)Ljava/lang/String;

    move-result-object v0

    .line 3579
    invoke-direct {p0, p1, p2, v0}, Ltwitter4j/conf/PropertyConfiguration;->getBoolean(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {p0, v0}, Ltwitter4j/conf/PropertyConfiguration;->setIncludeEntitiesEnabled(Z)V

    :cond_27
    const v0, 0x6d196200

    invoke-static {v0}, Lcom/liapp/y;->ٱڳܴڭܩ(I)Ljava/lang/String;

    move-result-object v0

    .line 3599
    invoke-direct {p0, p1, p2, v0}, Ltwitter4j/conf/PropertyConfiguration;->notNull(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_28

    const v0, 0x6d196200

    invoke-static {v0}, Lcom/liapp/y;->ٱڳܴڭܩ(I)Ljava/lang/String;

    move-result-object v0

    .line 3609
    invoke-direct {p0, p1, p2, v0}, Ltwitter4j/conf/PropertyConfiguration;->getBoolean(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {p0, v0}, Ltwitter4j/conf/PropertyConfiguration;->setIncludeEmailEnabled(Z)V

    :cond_28
    const v0, 0x542c7ada

    invoke-static {v0}, Lcom/liapp/y;->׳ֳֳ֬د(I)Ljava/lang/String;

    move-result-object v0

    .line 3629
    invoke-direct {p0, p1, p2, v0}, Ltwitter4j/conf/PropertyConfiguration;->notNull(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_29

    const v0, 0x542c7ada

    invoke-static {v0}, Lcom/liapp/y;->׳ֳֳ֬د(I)Ljava/lang/String;

    move-result-object v0

    .line 3639
    invoke-direct {p0, p1, p2, v0}, Ltwitter4j/conf/PropertyConfiguration;->getBoolean(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {p0, v0}, Ltwitter4j/conf/PropertyConfiguration;->setIncludeExtAltTextEnabled(Z)V

    :cond_29
    const v0, 0x3377dc33

    invoke-static {v0}, Lcom/liapp/y;->ׯ״ٲ֬ب(I)Ljava/lang/String;

    move-result-object v0

    .line 3659
    invoke-direct {p0, p1, p2, v0}, Ltwitter4j/conf/PropertyConfiguration;->notNull(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2a

    const v0, 0x3377dc33

    invoke-static {v0}, Lcom/liapp/y;->ׯ״ٲ֬ب(I)Ljava/lang/String;

    move-result-object v0

    .line 3669
    invoke-direct {p0, p1, p2, v0}, Ltwitter4j/conf/PropertyConfiguration;->getBoolean(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {p0, v0}, Ltwitter4j/conf/PropertyConfiguration;->setTweetModeExtended(Z)V

    :cond_2a
    const v0, 0x224070ae

    invoke-static {v0}, Lcom/liapp/y;->ֲֳگܱޭ(I)Ljava/lang/String;

    move-result-object v0

    .line 3689
    invoke-direct {p0, p1, p2, v0}, Ltwitter4j/conf/PropertyConfiguration;->notNull(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2b

    const v0, 0x224070ae

    invoke-static {v0}, Lcom/liapp/y;->ֲֳگܱޭ(I)Ljava/lang/String;

    move-result-object v0

    .line 3699
    invoke-direct {p0, p1, p2, v0}, Ltwitter4j/conf/PropertyConfiguration;->getString(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ltwitter4j/conf/PropertyConfiguration;->setLoggerFactory(Ljava/lang/String;)V

    :cond_2b
    const v0, 0x5d0550a7

    invoke-static {v0}, Lcom/liapp/y;->ڴݮگ֮ت(I)Ljava/lang/String;

    move-result-object v0

    .line 3719
    invoke-direct {p0, p1, p2, v0}, Ltwitter4j/conf/PropertyConfiguration;->notNull(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2c

    const v0, 0x5d0550a7

    invoke-static {v0}, Lcom/liapp/y;->ڴݮگ֮ت(I)Ljava/lang/String;

    move-result-object v0

    .line 3729
    invoke-direct {p0, p1, p2, v0}, Ltwitter4j/conf/PropertyConfiguration;->getBoolean(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {p0, v0}, Ltwitter4j/conf/PropertyConfiguration;->setJSONStoreEnabled(Z)V

    :cond_2c
    const v0, 0x6d196758

    invoke-static {v0}, Lcom/liapp/y;->ٱڳܴڭܩ(I)Ljava/lang/String;

    move-result-object v0

    .line 3749
    invoke-direct {p0, p1, p2, v0}, Ltwitter4j/conf/PropertyConfiguration;->notNull(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2d

    const v0, 0x6d196758

    invoke-static {v0}, Lcom/liapp/y;->ٱڳܴڭܩ(I)Ljava/lang/String;

    move-result-object v0

    .line 3759
    invoke-direct {p0, p1, p2, v0}, Ltwitter4j/conf/PropertyConfiguration;->getBoolean(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {p0, v0}, Ltwitter4j/conf/PropertyConfiguration;->setMBeanEnabled(Z)V

    :cond_2d
    const v0, -0x450c15d7

    invoke-static {v0}, Lcom/liapp/y;->ڳݬ٬ۮݪ(I)Ljava/lang/String;

    move-result-object v0

    .line 3779
    invoke-direct {p0, p1, p2, v0}, Ltwitter4j/conf/PropertyConfiguration;->notNull(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2e

    const v0, -0x450c15d7

    invoke-static {v0}, Lcom/liapp/y;->ڳݬ٬ۮݪ(I)Ljava/lang/String;

    move-result-object v0

    .line 3789
    invoke-direct {p0, p1, p2, v0}, Ltwitter4j/conf/PropertyConfiguration;->getBoolean(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {p0, v0}, Ltwitter4j/conf/PropertyConfiguration;->setUserStreamRepliesAllEnabled(Z)V

    :cond_2e
    const v0, -0x2257b2d4

    invoke-static {v0}, Lcom/liapp/y;->״دش۲ݮ(I)Ljava/lang/String;

    move-result-object v0

    .line 3809
    invoke-direct {p0, p1, p2, v0}, Ltwitter4j/conf/PropertyConfiguration;->notNull(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2f

    const v0, -0x2257b2d4

    invoke-static {v0}, Lcom/liapp/y;->״دش۲ݮ(I)Ljava/lang/String;

    move-result-object v0

    .line 3819
    invoke-direct {p0, p1, p2, v0}, Ltwitter4j/conf/PropertyConfiguration;->getBoolean(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {p0, v0}, Ltwitter4j/conf/PropertyConfiguration;->setUserStreamWithFollowingsEnabled(Z)V

    :cond_2f
    const v0, -0x2257bdf4

    invoke-static {v0}, Lcom/liapp/y;->״دش۲ݮ(I)Ljava/lang/String;

    move-result-object v0

    .line 3839
    invoke-direct {p0, p1, p2, v0}, Ltwitter4j/conf/PropertyConfiguration;->notNull(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_30

    const v0, -0x2257bdf4

    invoke-static {v0}, Lcom/liapp/y;->״دش۲ݮ(I)Ljava/lang/String;

    move-result-object v0

    .line 3849
    invoke-direct {p0, p1, p2, v0}, Ltwitter4j/conf/PropertyConfiguration;->getBoolean(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {p0, v0}, Ltwitter4j/conf/PropertyConfiguration;->setStallWarningsEnabled(Z)V

    :cond_30
    const v0, 0x6d1968a8

    invoke-static {v0}, Lcom/liapp/y;->ٱڳܴڭܩ(I)Ljava/lang/String;

    move-result-object v0

    .line 3869
    invoke-direct {p0, p1, p2, v0}, Ltwitter4j/conf/PropertyConfiguration;->notNull(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_31

    const v0, 0x6d1968a8

    invoke-static {v0}, Lcom/liapp/y;->ٱڳܴڭܩ(I)Ljava/lang/String;

    move-result-object v0

    .line 3879
    invoke-direct {p0, p1, p2, v0}, Ltwitter4j/conf/PropertyConfiguration;->getBoolean(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {p0, v0}, Ltwitter4j/conf/PropertyConfiguration;->setApplicationOnlyAuthEnabled(Z)V

    :cond_31
    const v0, 0x22407f9e

    invoke-static {v0}, Lcom/liapp/y;->ֲֳگܱޭ(I)Ljava/lang/String;

    move-result-object v0

    .line 3899
    invoke-direct {p0, p1, p2, v0}, Ltwitter4j/conf/PropertyConfiguration;->notNull(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_32

    const v0, 0x22407f9e

    invoke-static {v0}, Lcom/liapp/y;->ֲֳگܱޭ(I)Ljava/lang/String;

    move-result-object v0

    .line 3909
    invoke-direct {p0, p1, p2, v0}, Ltwitter4j/conf/PropertyConfiguration;->getString(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ltwitter4j/conf/PropertyConfiguration;->setMediaProvider(Ljava/lang/String;)V

    :cond_32
    const v0, 0x542c745a

    invoke-static {v0}, Lcom/liapp/y;->׳ֳֳ֬د(I)Ljava/lang/String;

    move-result-object v0

    .line 3929
    invoke-direct {p0, p1, p2, v0}, Ltwitter4j/conf/PropertyConfiguration;->notNull(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_33

    const v0, 0x542c745a

    invoke-static {v0}, Lcom/liapp/y;->׳ֳֳ֬د(I)Ljava/lang/String;

    move-result-object v0

    .line 3939
    invoke-direct {p0, p1, p2, v0}, Ltwitter4j/conf/PropertyConfiguration;->getString(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ltwitter4j/conf/PropertyConfiguration;->setMediaProviderAPIKey(Ljava/lang/String;)V

    :cond_33
    const v0, 0x7d6577c5

    invoke-static {v0}, Lcom/liapp/y;->حֲݴܳޯ(I)Ljava/lang/String;

    move-result-object v0

    .line 3959
    invoke-direct {p0, p1, p2, v0}, Ltwitter4j/conf/PropertyConfiguration;->notNull(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_35

    const v0, 0x7d6577c5

    invoke-static {v0}, Lcom/liapp/y;->حֲݴܳޯ(I)Ljava/lang/String;

    move-result-object v0

    .line 3969
    invoke-direct {p0, p1, p2, v0}, Ltwitter4j/conf/PropertyConfiguration;->getString(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "&"

    invoke-virtual {p1, p2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 3979
    new-instance p2, Ljava/util/Properties;

    invoke-direct {p2}, Ljava/util/Properties;-><init>()V

    .line 3989
    array-length v0, p1

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v0, :cond_34

    aget-object v2, p1, v1

    const v3, 0x543caf0a

    invoke-static {v3}, Lcom/liapp/y;->׳ֳֳ֬د(I)Ljava/lang/String;

    move-result-object v3

    .line 3999
    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    .line 4009
    aget-object v3, v2, v3

    const/4 v4, 0x1

    aget-object v2, v2, v4

    invoke-virtual {p2, v3, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 4029
    :cond_34
    invoke-virtual {p0, p2}, Ltwitter4j/conf/PropertyConfiguration;->setMediaProviderParameters(Ljava/util/Properties;)V

    .line 4049
    :cond_35
    invoke-virtual {p0}, Ltwitter4j/conf/PropertyConfiguration;->cacheInstance()V

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method private setFieldsWithTreePath(Ljava/util/Properties;Ljava/lang/String;)V
    .locals 7

    const-string v0, ""

    .line 2169
    invoke-direct {p0, p1, v0}, Ltwitter4j/conf/PropertyConfiguration;->setFieldsWithPrefix(Ljava/util/Properties;Ljava/lang/String;)V

    const v1, 0x543c2032

    invoke-static {v1}, Lcom/liapp/y;->׳ֳֳ֬د(I)Ljava/lang/String;

    move-result-object v1

    .line 2179
    invoke-virtual {p2, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    .line 2199
    array-length v1, p2

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_2

    aget-object v4, p2, v3

    .line 2209
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    const v5, 0x22504cc6    # 2.82299E-18f

    invoke-static {v5}, Lcom/liapp/y;->ֲֳگܱޭ(I)Ljava/lang/String;

    move-result-object v5

    if-nez v2, :cond_0

    .line 2229
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 2249
    :cond_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2269
    :goto_1
    invoke-direct {p0, p1, v2}, Ltwitter4j/conf/PropertyConfiguration;->setFieldsWithPrefix(Ljava/util/Properties;Ljava/lang/String;)V

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return-void

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public bridge synthetic dumpConfiguration()V
    .locals 0

    .line 279
    invoke-super {p0}, Ltwitter4j/conf/ConfigurationBase;->dumpConfiguration()V

    return-void

    .array-data 1
    .end array-data
.end method

.method public bridge synthetic equals(Ljava/lang/Object;)Z
    .locals 0

    .line 279
    invoke-super {p0, p1}, Ltwitter4j/conf/ConfigurationBase;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    nop

    .array-data 1
    .end array-data
.end method

.method public bridge synthetic getDispatcherImpl()Ljava/lang/String;
    .locals 1

    .line 279
    invoke-super {p0}, Ltwitter4j/conf/ConfigurationBase;->getDispatcherImpl()Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public bridge synthetic getHttpClientConfiguration()Ltwitter4j/HttpClientConfiguration;
    .locals 1

    .line 279
    invoke-super {p0}, Ltwitter4j/conf/ConfigurationBase;->getHttpClientConfiguration()Ltwitter4j/HttpClientConfiguration;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public bridge synthetic getHttpStreamingReadTimeout()I
    .locals 1

    .line 279
    invoke-super {p0}, Ltwitter4j/conf/ConfigurationBase;->getHttpStreamingReadTimeout()I

    move-result v0

    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public bridge synthetic getLoggerFactory()Ljava/lang/String;
    .locals 1

    .line 279
    invoke-super {p0}, Ltwitter4j/conf/ConfigurationBase;->getLoggerFactory()Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public bridge synthetic getMediaProvider()Ljava/lang/String;
    .locals 1

    .line 279
    invoke-super {p0}, Ltwitter4j/conf/ConfigurationBase;->getMediaProvider()Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public bridge synthetic getMediaProviderAPIKey()Ljava/lang/String;
    .locals 1

    .line 279
    invoke-super {p0}, Ltwitter4j/conf/ConfigurationBase;->getMediaProviderAPIKey()Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public bridge synthetic getMediaProviderParameters()Ljava/util/Properties;
    .locals 1

    .line 279
    invoke-super {p0}, Ltwitter4j/conf/ConfigurationBase;->getMediaProviderParameters()Ljava/util/Properties;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public bridge synthetic getOAuth2AccessToken()Ljava/lang/String;
    .locals 1

    .line 279
    invoke-super {p0}, Ltwitter4j/conf/ConfigurationBase;->getOAuth2AccessToken()Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public bridge synthetic getOAuth2InvalidateTokenURL()Ljava/lang/String;
    .locals 1

    .line 279
    invoke-super {p0}, Ltwitter4j/conf/ConfigurationBase;->getOAuth2InvalidateTokenURL()Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public bridge synthetic getOAuth2Scope()Ljava/lang/String;
    .locals 1

    .line 279
    invoke-super {p0}, Ltwitter4j/conf/ConfigurationBase;->getOAuth2Scope()Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public bridge synthetic getOAuth2TokenType()Ljava/lang/String;
    .locals 1

    .line 279
    invoke-super {p0}, Ltwitter4j/conf/ConfigurationBase;->getOAuth2TokenType()Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public bridge synthetic getOAuth2TokenURL()Ljava/lang/String;
    .locals 1

    .line 279
    invoke-super {p0}, Ltwitter4j/conf/ConfigurationBase;->getOAuth2TokenURL()Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public bridge synthetic getOAuthAccessToken()Ljava/lang/String;
    .locals 1

    .line 279
    invoke-super {p0}, Ltwitter4j/conf/ConfigurationBase;->getOAuthAccessToken()Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public bridge synthetic getOAuthAccessTokenSecret()Ljava/lang/String;
    .locals 1

    .line 279
    invoke-super {p0}, Ltwitter4j/conf/ConfigurationBase;->getOAuthAccessTokenSecret()Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public bridge synthetic getOAuthAccessTokenURL()Ljava/lang/String;
    .locals 1

    .line 279
    invoke-super {p0}, Ltwitter4j/conf/ConfigurationBase;->getOAuthAccessTokenURL()Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public bridge synthetic getOAuthAuthenticationURL()Ljava/lang/String;
    .locals 1

    .line 279
    invoke-super {p0}, Ltwitter4j/conf/ConfigurationBase;->getOAuthAuthenticationURL()Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public bridge synthetic getOAuthAuthorizationURL()Ljava/lang/String;
    .locals 1

    .line 279
    invoke-super {p0}, Ltwitter4j/conf/ConfigurationBase;->getOAuthAuthorizationURL()Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public bridge synthetic getOAuthRequestTokenURL()Ljava/lang/String;
    .locals 1

    .line 279
    invoke-super {p0}, Ltwitter4j/conf/ConfigurationBase;->getOAuthRequestTokenURL()Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public bridge synthetic getRestBaseURL()Ljava/lang/String;
    .locals 1

    .line 279
    invoke-super {p0}, Ltwitter4j/conf/ConfigurationBase;->getRestBaseURL()Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public bridge synthetic getSiteStreamBaseURL()Ljava/lang/String;
    .locals 1

    .line 279
    invoke-super {p0}, Ltwitter4j/conf/ConfigurationBase;->getSiteStreamBaseURL()Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public bridge synthetic getStreamBaseURL()Ljava/lang/String;
    .locals 1

    .line 279
    invoke-super {p0}, Ltwitter4j/conf/ConfigurationBase;->getStreamBaseURL()Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public bridge synthetic getStreamThreadName()Ljava/lang/String;
    .locals 1

    .line 279
    invoke-super {p0}, Ltwitter4j/conf/ConfigurationBase;->getStreamThreadName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public bridge synthetic getUploadBaseURL()Ljava/lang/String;
    .locals 1

    .line 279
    invoke-super {p0}, Ltwitter4j/conf/ConfigurationBase;->getUploadBaseURL()Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public bridge synthetic getUserStreamBaseURL()Ljava/lang/String;
    .locals 1

    .line 279
    invoke-super {p0}, Ltwitter4j/conf/ConfigurationBase;->getUserStreamBaseURL()Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public bridge synthetic hashCode()I
    .locals 1

    .line 279
    invoke-super {p0}, Ltwitter4j/conf/ConfigurationBase;->hashCode()I

    move-result v0

    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public bridge synthetic isApplicationOnlyAuthEnabled()Z
    .locals 1

    .line 279
    invoke-super {p0}, Ltwitter4j/conf/ConfigurationBase;->isApplicationOnlyAuthEnabled()Z

    move-result v0

    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public bridge synthetic isDaemonEnabled()Z
    .locals 1

    .line 279
    invoke-super {p0}, Ltwitter4j/conf/ConfigurationBase;->isDaemonEnabled()Z

    move-result v0

    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public bridge synthetic isIncludeEmailEnabled()Z
    .locals 1

    .line 279
    invoke-super {p0}, Ltwitter4j/conf/ConfigurationBase;->isIncludeEmailEnabled()Z

    move-result v0

    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public bridge synthetic isIncludeEntitiesEnabled()Z
    .locals 1

    .line 279
    invoke-super {p0}, Ltwitter4j/conf/ConfigurationBase;->isIncludeEntitiesEnabled()Z

    move-result v0

    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public bridge synthetic isIncludeExtAltTextEnabled()Z
    .locals 1

    .line 279
    invoke-super {p0}, Ltwitter4j/conf/ConfigurationBase;->isIncludeExtAltTextEnabled()Z

    move-result v0

    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public bridge synthetic isIncludeMyRetweetEnabled()Z
    .locals 1

    .line 279
    invoke-super {p0}, Ltwitter4j/conf/ConfigurationBase;->isIncludeMyRetweetEnabled()Z

    move-result v0

    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public bridge synthetic isJSONStoreEnabled()Z
    .locals 1

    .line 279
    invoke-super {p0}, Ltwitter4j/conf/ConfigurationBase;->isJSONStoreEnabled()Z

    move-result v0

    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public bridge synthetic isMBeanEnabled()Z
    .locals 1

    .line 279
    invoke-super {p0}, Ltwitter4j/conf/ConfigurationBase;->isMBeanEnabled()Z

    move-result v0

    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public bridge synthetic isStallWarningsEnabled()Z
    .locals 1

    .line 279
    invoke-super {p0}, Ltwitter4j/conf/ConfigurationBase;->isStallWarningsEnabled()Z

    move-result v0

    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public bridge synthetic isTrimUserEnabled()Z
    .locals 1

    .line 279
    invoke-super {p0}, Ltwitter4j/conf/ConfigurationBase;->isTrimUserEnabled()Z

    move-result v0

    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public bridge synthetic isTweetModeExtended()Z
    .locals 1

    .line 279
    invoke-super {p0}, Ltwitter4j/conf/ConfigurationBase;->isTweetModeExtended()Z

    move-result v0

    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public bridge synthetic isUserStreamRepliesAllEnabled()Z
    .locals 1

    .line 279
    invoke-super {p0}, Ltwitter4j/conf/ConfigurationBase;->isUserStreamRepliesAllEnabled()Z

    move-result v0

    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public bridge synthetic isUserStreamWithFollowingsEnabled()Z
    .locals 1

    .line 279
    invoke-super {p0}, Ltwitter4j/conf/ConfigurationBase;->isUserStreamWithFollowingsEnabled()Z

    move-result v0

    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method protected readResolve()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    .line 4379
    invoke-super {p0}, Ltwitter4j/conf/ConfigurationBase;->readResolve()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public bridge synthetic setIncludeExtAltTextEnabled(Z)V
    .locals 0

    .line 279
    invoke-super {p0, p1}, Ltwitter4j/conf/ConfigurationBase;->setIncludeExtAltTextEnabled(Z)V

    return-void

    .array-data 1
    .end array-data
.end method

.method public bridge synthetic setIncludeMyRetweetEnabled(Z)V
    .locals 0

    .line 279
    invoke-super {p0, p1}, Ltwitter4j/conf/ConfigurationBase;->setIncludeMyRetweetEnabled(Z)V

    return-void

    .array-data 1
    .end array-data
.end method

.method public bridge synthetic setTrimUserEnabled(Z)V
    .locals 0

    .line 279
    invoke-super {p0, p1}, Ltwitter4j/conf/ConfigurationBase;->setTrimUserEnabled(Z)V

    return-void

    .array-data 1
    .end array-data
.end method

.method public bridge synthetic setTweetModeExtended(Z)V
    .locals 0

    .line 279
    invoke-super {p0, p1}, Ltwitter4j/conf/ConfigurationBase;->setTweetModeExtended(Z)V

    return-void

    .array-data 1
    .end array-data
.end method

.method public bridge synthetic toString()Ljava/lang/String;
    .locals 1

    .line 279
    invoke-super {p0}, Ltwitter4j/conf/ConfigurationBase;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method
