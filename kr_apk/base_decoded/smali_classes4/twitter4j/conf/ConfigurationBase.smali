.class Ltwitter4j/conf/ConfigurationBase;
.super Ljava/lang/Object;
.source "ConfigurationBase.java"

# interfaces
.implements Ltwitter4j/conf/Configuration;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltwitter4j/conf/ConfigurationBase$MyHttpClientConfiguration;
    }
.end annotation


# static fields
.field private static final instances:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ltwitter4j/conf/ConfigurationBase;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J = 0x55b3f2b9f8085720L


# instance fields
.field private applicationOnlyAuthEnabled:Z

.field private asyncNumThreads:I

.field private contributingTo:J

.field private daemonEnabled:Z

.field private debug:Z

.field private dispatcherImpl:Ljava/lang/String;

.field private httpConf:Ltwitter4j/HttpClientConfiguration;

.field private httpRetryCount:I

.field private httpRetryIntervalSeconds:I

.field private httpStreamingReadTimeout:I

.field private includeEmailEnabled:Z

.field private includeEntitiesEnabled:Z

.field private includeExtAltTextEnabled:Z

.field private includeMyRetweetEnabled:Z

.field private jsonStoreEnabled:Z

.field private loggerFactory:Ljava/lang/String;

.field private mbeanEnabled:Z

.field private mediaProvider:Ljava/lang/String;

.field private mediaProviderAPIKey:Ljava/lang/String;

.field private mediaProviderParameters:Ljava/util/Properties;

.field private oAuth2AccessToken:Ljava/lang/String;

.field private oAuth2InvalidateTokenURL:Ljava/lang/String;

.field private oAuth2Scope:Ljava/lang/String;

.field private oAuth2TokenType:Ljava/lang/String;

.field private oAuth2TokenURL:Ljava/lang/String;

.field private oAuthAccessToken:Ljava/lang/String;

.field private oAuthAccessTokenSecret:Ljava/lang/String;

.field private oAuthAccessTokenURL:Ljava/lang/String;

.field private oAuthAuthenticationURL:Ljava/lang/String;

.field private oAuthAuthorizationURL:Ljava/lang/String;

.field private oAuthConsumerKey:Ljava/lang/String;

.field private oAuthConsumerSecret:Ljava/lang/String;

.field private oAuthRequestTokenURL:Ljava/lang/String;

.field private password:Ljava/lang/String;

.field private restBaseURL:Ljava/lang/String;

.field private siteStreamBaseURL:Ljava/lang/String;

.field private stallWarningsEnabled:Z

.field private streamBaseURL:Ljava/lang/String;

.field private streamThreadName:Ljava/lang/String;

.field private trimUserEnabled:Z

.field private tweetModeExtended:Z

.field private uploadBaseURL:Ljava/lang/String;

.field private user:Ljava/lang/String;

.field private userStreamBaseURL:Ljava/lang/String;

.field private userStreamRepliesAllEnabled:Z

.field private userStreamWithFollowingsEnabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 9709
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Ltwitter4j/conf/ConfigurationBase;->instances:Ljava/util/List;

    return-void

    .array-data 1
    .end array-data
.end method

.method protected constructor <init>()V
    .locals 12

    .line 979
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 379
    iput-boolean v0, p0, Ltwitter4j/conf/ConfigurationBase;->debug:Z

    const/4 v1, 0x0

    .line 389
    iput-object v1, p0, Ltwitter4j/conf/ConfigurationBase;->user:Ljava/lang/String;

    .line 399
    iput-object v1, p0, Ltwitter4j/conf/ConfigurationBase;->password:Ljava/lang/String;

    const v2, 0x9c40

    .line 429
    iput v2, p0, Ltwitter4j/conf/ConfigurationBase;->httpStreamingReadTimeout:I

    .line 439
    iput v0, p0, Ltwitter4j/conf/ConfigurationBase;->httpRetryCount:I

    const/4 v2, 0x5

    .line 449
    iput v2, p0, Ltwitter4j/conf/ConfigurationBase;->httpRetryIntervalSeconds:I

    .line 469
    iput-object v1, p0, Ltwitter4j/conf/ConfigurationBase;->oAuthConsumerKey:Ljava/lang/String;

    .line 479
    iput-object v1, p0, Ltwitter4j/conf/ConfigurationBase;->oAuthConsumerSecret:Ljava/lang/String;

    .line 489
    iput-object v1, p0, Ltwitter4j/conf/ConfigurationBase;->oAuthAccessToken:Ljava/lang/String;

    .line 499
    iput-object v1, p0, Ltwitter4j/conf/ConfigurationBase;->oAuthAccessTokenSecret:Ljava/lang/String;

    const v2, 0x6d1939d8

    invoke-static {v2}, Lcom/liapp/y;->ٱڳܴڭܩ(I)Ljava/lang/String;

    move-result-object v2

    .line 539
    iput-object v2, p0, Ltwitter4j/conf/ConfigurationBase;->oAuthRequestTokenURL:Ljava/lang/String;

    const v2, 0x337781bb

    invoke-static {v2}, Lcom/liapp/y;->ׯ״ٲ֬ب(I)Ljava/lang/String;

    move-result-object v2

    .line 549
    iput-object v2, p0, Ltwitter4j/conf/ConfigurationBase;->oAuthAuthorizationURL:Ljava/lang/String;

    const v2, 0x542c2422

    invoke-static {v2}, Lcom/liapp/y;->׳ֳֳ֬د(I)Ljava/lang/String;

    move-result-object v2

    .line 559
    iput-object v2, p0, Ltwitter4j/conf/ConfigurationBase;->oAuthAccessTokenURL:Ljava/lang/String;

    const v2, 0x6d193dc8

    invoke-static {v2}, Lcom/liapp/y;->ٱڳܴڭܩ(I)Ljava/lang/String;

    move-result-object v2

    .line 569
    iput-object v2, p0, Ltwitter4j/conf/ConfigurationBase;->oAuthAuthenticationURL:Ljava/lang/String;

    const v2, -0x450c4e57

    invoke-static {v2}, Lcom/liapp/y;->ڳݬ٬ۮݪ(I)Ljava/lang/String;

    move-result-object v2

    .line 579
    iput-object v2, p0, Ltwitter4j/conf/ConfigurationBase;->oAuth2TokenURL:Ljava/lang/String;

    const v2, 0x5d050bf7

    invoke-static {v2}, Lcom/liapp/y;->ڴݮگ֮ت(I)Ljava/lang/String;

    move-result-object v2

    .line 589
    iput-object v2, p0, Ltwitter4j/conf/ConfigurationBase;->oAuth2InvalidateTokenURL:Ljava/lang/String;

    const v2, 0x224035fe

    invoke-static {v2}, Lcom/liapp/y;->ֲֳگܱޭ(I)Ljava/lang/String;

    move-result-object v2

    .line 609
    iput-object v2, p0, Ltwitter4j/conf/ConfigurationBase;->restBaseURL:Ljava/lang/String;

    const v2, 0x224034ce

    invoke-static {v2}, Lcom/liapp/y;->ֲֳگܱޭ(I)Ljava/lang/String;

    move-result-object v2

    .line 619
    iput-object v2, p0, Ltwitter4j/conf/ConfigurationBase;->streamBaseURL:Ljava/lang/String;

    const v2, 0x224037f6

    invoke-static {v2}, Lcom/liapp/y;->ֲֳگܱޭ(I)Ljava/lang/String;

    move-result-object v2

    .line 629
    iput-object v2, p0, Ltwitter4j/conf/ConfigurationBase;->userStreamBaseURL:Ljava/lang/String;

    const v2, 0x2240369e

    invoke-static {v2}, Lcom/liapp/y;->ֲֳگܱޭ(I)Ljava/lang/String;

    move-result-object v2

    .line 639
    iput-object v2, p0, Ltwitter4j/conf/ConfigurationBase;->siteStreamBaseURL:Ljava/lang/String;

    const v2, 0x6d1925a8

    invoke-static {v2}, Lcom/liapp/y;->ٱڳܴڭܩ(I)Ljava/lang/String;

    move-result-object v2

    .line 649
    iput-object v2, p0, Ltwitter4j/conf/ConfigurationBase;->uploadBaseURL:Ljava/lang/String;

    const v2, 0x5d05102f

    invoke-static {v2}, Lcom/liapp/y;->ڴݮگ֮ت(I)Ljava/lang/String;

    move-result-object v2

    .line 669
    iput-object v2, p0, Ltwitter4j/conf/ConfigurationBase;->dispatcherImpl:Ljava/lang/String;

    const/4 v2, 0x1

    .line 679
    iput v2, p0, Ltwitter4j/conf/ConfigurationBase;->asyncNumThreads:I

    .line 699
    iput-object v1, p0, Ltwitter4j/conf/ConfigurationBase;->loggerFactory:Ljava/lang/String;

    const-wide/16 v3, -0x1

    .line 719
    iput-wide v3, p0, Ltwitter4j/conf/ConfigurationBase;->contributingTo:J

    .line 739
    iput-boolean v2, p0, Ltwitter4j/conf/ConfigurationBase;->includeMyRetweetEnabled:Z

    .line 749
    iput-boolean v2, p0, Ltwitter4j/conf/ConfigurationBase;->includeEntitiesEnabled:Z

    .line 759
    iput-boolean v0, p0, Ltwitter4j/conf/ConfigurationBase;->trimUserEnabled:Z

    .line 769
    iput-boolean v2, p0, Ltwitter4j/conf/ConfigurationBase;->includeExtAltTextEnabled:Z

    .line 779
    iput-boolean v2, p0, Ltwitter4j/conf/ConfigurationBase;->tweetModeExtended:Z

    .line 789
    iput-boolean v0, p0, Ltwitter4j/conf/ConfigurationBase;->includeEmailEnabled:Z

    .line 809
    iput-boolean v0, p0, Ltwitter4j/conf/ConfigurationBase;->jsonStoreEnabled:Z

    .line 829
    iput-boolean v0, p0, Ltwitter4j/conf/ConfigurationBase;->mbeanEnabled:Z

    .line 849
    iput-boolean v0, p0, Ltwitter4j/conf/ConfigurationBase;->userStreamRepliesAllEnabled:Z

    .line 859
    iput-boolean v2, p0, Ltwitter4j/conf/ConfigurationBase;->userStreamWithFollowingsEnabled:Z

    .line 869
    iput-boolean v2, p0, Ltwitter4j/conf/ConfigurationBase;->stallWarningsEnabled:Z

    .line 889
    iput-boolean v0, p0, Ltwitter4j/conf/ConfigurationBase;->applicationOnlyAuthEnabled:Z

    const v0, 0x7d653af5

    invoke-static {v0}, Lcom/liapp/y;->حֲݴܳޯ(I)Ljava/lang/String;

    move-result-object v0

    .line 909
    iput-object v0, p0, Ltwitter4j/conf/ConfigurationBase;->mediaProvider:Ljava/lang/String;

    .line 919
    iput-object v1, p0, Ltwitter4j/conf/ConfigurationBase;->mediaProviderAPIKey:Ljava/lang/String;

    .line 929
    iput-object v1, p0, Ltwitter4j/conf/ConfigurationBase;->mediaProviderParameters:Ljava/util/Properties;

    .line 939
    iput-boolean v2, p0, Ltwitter4j/conf/ConfigurationBase;->daemonEnabled:Z

    const-string v0, ""

    .line 959
    iput-object v0, p0, Ltwitter4j/conf/ConfigurationBase;->streamThreadName:Ljava/lang/String;

    .line 989
    new-instance v0, Ltwitter4j/conf/ConfigurationBase$MyHttpClientConfiguration;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, -0x1

    const/4 v7, 0x0

    const/16 v8, 0x4e20

    const v9, 0x1d4c0

    const/4 v10, 0x0

    const/4 v11, 0x1

    move-object v1, v0

    move-object v2, p0

    invoke-direct/range {v1 .. v11}, Ltwitter4j/conf/ConfigurationBase$MyHttpClientConfiguration;-><init>(Ltwitter4j/conf/ConfigurationBase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZIIZZ)V

    iput-object v0, p0, Ltwitter4j/conf/ConfigurationBase;->httpConf:Ltwitter4j/HttpClientConfiguration;

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method static synthetic access$000(Ltwitter4j/conf/ConfigurationBase;)I
    .locals 0

    .line 359
    iget p0, p0, Ltwitter4j/conf/ConfigurationBase;->httpRetryCount:I

    return p0

    nop

    .array-data 1
    .end array-data
.end method

.method static synthetic access$100(Ltwitter4j/conf/ConfigurationBase;)I
    .locals 0

    .line 359
    iget p0, p0, Ltwitter4j/conf/ConfigurationBase;->httpRetryIntervalSeconds:I

    return p0

    nop

    .array-data 1
    .end array-data
.end method

.method private static cacheInstance(Ltwitter4j/conf/ConfigurationBase;)V
    .locals 2

    .line 9739
    sget-object v0, Ltwitter4j/conf/ConfigurationBase;->instances:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 9749
    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void

    .array-data 1
    .end array-data
.end method

.method static fixURL(ZLjava/lang/String;)Ljava/lang/String;
    .locals 2

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const v0, 0x5d1ff9d7

    invoke-static {v0}, Lcom/liapp/y;->ڴݮگ֮ت(I)Ljava/lang/String;

    move-result-object v0

    .line 7789
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v1, v0, :cond_2

    add-int/lit8 v0, v0, 0x3

    .line 7829
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    if-eqz p0, :cond_1

    .line 7849
    new-instance p0, Ljava/lang/StringBuilder;

    const v0, -0x4513b22f

    invoke-static {v0}, Lcom/liapp/y;->ڳݬ٬ۮݪ(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 7869
    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    const v0, -0x4513b3bf

    invoke-static {v0}, Lcom/liapp/y;->ڳݬ٬ۮݪ(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 7809
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "url should contain \'://\'"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .array-data 1
    .end array-data
.end method

.method private static getInstance(Ltwitter4j/conf/ConfigurationBase;)Ltwitter4j/conf/ConfigurationBase;
    .locals 3

    .line 9849
    sget-object v0, Ltwitter4j/conf/ConfigurationBase;->instances:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 9859
    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0

    .line 9889
    :cond_0
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ltwitter4j/conf/ConfigurationBase;

    return-object p0

    .array-data 1
    .end array-data
.end method


# virtual methods
.method protected cacheInstance()V
    .locals 0

    .line 9799
    invoke-static {p0}, Ltwitter4j/conf/ConfigurationBase;->cacheInstance(Ltwitter4j/conf/ConfigurationBase;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method public dumpConfiguration()V
    .locals 9

    .line 2459
    const-class v0, Ltwitter4j/conf/ConfigurationBase;

    invoke-static {v0}, Ltwitter4j/Logger;->getLogger(Ljava/lang/Class;)Ltwitter4j/Logger;

    move-result-object v1

    .line 2469
    iget-boolean v2, p0, Ltwitter4j/conf/ConfigurationBase;->debug:Z

    if-eqz v2, :cond_1

    .line 2479
    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v0

    .line 2489
    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v0, v3

    .line 2509
    :try_start_0
    invoke-virtual {v4, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 2519
    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    if-eqz v5, :cond_0

    .line 2529
    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "oAuthConsumerSecret|oAuthAccessTokenSecret|password"

    invoke-virtual {v7, v8}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 2539
    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "."

    const-string v7, "*"

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 2559
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ltwitter4j/Logger;->debug(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-void

    .array-data 1
    .end array-data
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_4b

    .line 7939
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto/16 :goto_1b

    .line 7959
    :cond_1
    check-cast p1, Ltwitter4j/conf/ConfigurationBase;

    .line 7979
    iget-boolean v2, p0, Ltwitter4j/conf/ConfigurationBase;->debug:Z

    iget-boolean v3, p1, Ltwitter4j/conf/ConfigurationBase;->debug:Z

    if-eq v2, v3, :cond_2

    return v1

    .line 7989
    :cond_2
    iget v2, p0, Ltwitter4j/conf/ConfigurationBase;->httpStreamingReadTimeout:I

    iget v3, p1, Ltwitter4j/conf/ConfigurationBase;->httpStreamingReadTimeout:I

    if-eq v2, v3, :cond_3

    return v1

    .line 7999
    :cond_3
    iget v2, p0, Ltwitter4j/conf/ConfigurationBase;->httpRetryCount:I

    iget v3, p1, Ltwitter4j/conf/ConfigurationBase;->httpRetryCount:I

    if-eq v2, v3, :cond_4

    return v1

    .line 8009
    :cond_4
    iget v2, p0, Ltwitter4j/conf/ConfigurationBase;->httpRetryIntervalSeconds:I

    iget v3, p1, Ltwitter4j/conf/ConfigurationBase;->httpRetryIntervalSeconds:I

    if-eq v2, v3, :cond_5

    return v1

    .line 8019
    :cond_5
    iget v2, p0, Ltwitter4j/conf/ConfigurationBase;->asyncNumThreads:I

    iget v3, p1, Ltwitter4j/conf/ConfigurationBase;->asyncNumThreads:I

    if-eq v2, v3, :cond_6

    return v1

    .line 8029
    :cond_6
    iget-wide v2, p0, Ltwitter4j/conf/ConfigurationBase;->contributingTo:J

    iget-wide v4, p1, Ltwitter4j/conf/ConfigurationBase;->contributingTo:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_7

    return v1

    .line 8039
    :cond_7
    iget-boolean v2, p0, Ltwitter4j/conf/ConfigurationBase;->includeMyRetweetEnabled:Z

    iget-boolean v3, p1, Ltwitter4j/conf/ConfigurationBase;->includeMyRetweetEnabled:Z

    if-eq v2, v3, :cond_8

    return v1

    .line 8049
    :cond_8
    iget-boolean v2, p0, Ltwitter4j/conf/ConfigurationBase;->includeEntitiesEnabled:Z

    iget-boolean v3, p1, Ltwitter4j/conf/ConfigurationBase;->includeEntitiesEnabled:Z

    if-eq v2, v3, :cond_9

    return v1

    .line 8059
    :cond_9
    iget-boolean v2, p0, Ltwitter4j/conf/ConfigurationBase;->trimUserEnabled:Z

    iget-boolean v3, p1, Ltwitter4j/conf/ConfigurationBase;->trimUserEnabled:Z

    if-eq v2, v3, :cond_a

    return v1

    .line 8069
    :cond_a
    iget-boolean v2, p0, Ltwitter4j/conf/ConfigurationBase;->includeExtAltTextEnabled:Z

    iget-boolean v3, p1, Ltwitter4j/conf/ConfigurationBase;->includeExtAltTextEnabled:Z

    if-eq v2, v3, :cond_b

    return v1

    .line 8079
    :cond_b
    iget-boolean v2, p0, Ltwitter4j/conf/ConfigurationBase;->tweetModeExtended:Z

    iget-boolean v3, p1, Ltwitter4j/conf/ConfigurationBase;->tweetModeExtended:Z

    if-eq v2, v3, :cond_c

    return v1

    .line 8089
    :cond_c
    iget-boolean v2, p0, Ltwitter4j/conf/ConfigurationBase;->includeEmailEnabled:Z

    iget-boolean v3, p1, Ltwitter4j/conf/ConfigurationBase;->includeEmailEnabled:Z

    if-eq v2, v3, :cond_d

    return v1

    .line 8099
    :cond_d
    iget-boolean v2, p0, Ltwitter4j/conf/ConfigurationBase;->jsonStoreEnabled:Z

    iget-boolean v3, p1, Ltwitter4j/conf/ConfigurationBase;->jsonStoreEnabled:Z

    if-eq v2, v3, :cond_e

    return v1

    .line 8109
    :cond_e
    iget-boolean v2, p0, Ltwitter4j/conf/ConfigurationBase;->mbeanEnabled:Z

    iget-boolean v3, p1, Ltwitter4j/conf/ConfigurationBase;->mbeanEnabled:Z

    if-eq v2, v3, :cond_f

    return v1

    .line 8119
    :cond_f
    iget-boolean v2, p0, Ltwitter4j/conf/ConfigurationBase;->userStreamRepliesAllEnabled:Z

    iget-boolean v3, p1, Ltwitter4j/conf/ConfigurationBase;->userStreamRepliesAllEnabled:Z

    if-eq v2, v3, :cond_10

    return v1

    .line 8129
    :cond_10
    iget-boolean v2, p0, Ltwitter4j/conf/ConfigurationBase;->userStreamWithFollowingsEnabled:Z

    iget-boolean v3, p1, Ltwitter4j/conf/ConfigurationBase;->userStreamWithFollowingsEnabled:Z

    if-eq v2, v3, :cond_11

    return v1

    .line 8139
    :cond_11
    iget-boolean v2, p0, Ltwitter4j/conf/ConfigurationBase;->stallWarningsEnabled:Z

    iget-boolean v3, p1, Ltwitter4j/conf/ConfigurationBase;->stallWarningsEnabled:Z

    if-eq v2, v3, :cond_12

    return v1

    .line 8149
    :cond_12
    iget-boolean v2, p0, Ltwitter4j/conf/ConfigurationBase;->applicationOnlyAuthEnabled:Z

    iget-boolean v3, p1, Ltwitter4j/conf/ConfigurationBase;->applicationOnlyAuthEnabled:Z

    if-eq v2, v3, :cond_13

    return v1

    .line 8159
    :cond_13
    iget-boolean v2, p0, Ltwitter4j/conf/ConfigurationBase;->daemonEnabled:Z

    iget-boolean v3, p1, Ltwitter4j/conf/ConfigurationBase;->daemonEnabled:Z

    if-eq v2, v3, :cond_14

    return v1

    .line 8169
    :cond_14
    iget-object v2, p0, Ltwitter4j/conf/ConfigurationBase;->user:Ljava/lang/String;

    if-eqz v2, :cond_15

    iget-object v3, p1, Ltwitter4j/conf/ConfigurationBase;->user:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_16

    goto :goto_0

    :cond_15
    iget-object v2, p1, Ltwitter4j/conf/ConfigurationBase;->user:Ljava/lang/String;

    if-eqz v2, :cond_16

    :goto_0
    return v1

    .line 8179
    :cond_16
    iget-object v2, p0, Ltwitter4j/conf/ConfigurationBase;->password:Ljava/lang/String;

    if-eqz v2, :cond_17

    iget-object v3, p1, Ltwitter4j/conf/ConfigurationBase;->password:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_18

    goto :goto_1

    :cond_17
    iget-object v2, p1, Ltwitter4j/conf/ConfigurationBase;->password:Ljava/lang/String;

    if-eqz v2, :cond_18

    :goto_1
    return v1

    .line 8189
    :cond_18
    iget-object v2, p0, Ltwitter4j/conf/ConfigurationBase;->httpConf:Ltwitter4j/HttpClientConfiguration;

    if-eqz v2, :cond_19

    iget-object v3, p1, Ltwitter4j/conf/ConfigurationBase;->httpConf:Ltwitter4j/HttpClientConfiguration;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1a

    goto :goto_2

    :cond_19
    iget-object v2, p1, Ltwitter4j/conf/ConfigurationBase;->httpConf:Ltwitter4j/HttpClientConfiguration;

    if-eqz v2, :cond_1a

    :goto_2
    return v1

    .line 8199
    :cond_1a
    iget-object v2, p0, Ltwitter4j/conf/ConfigurationBase;->oAuthConsumerKey:Ljava/lang/String;

    if-eqz v2, :cond_1b

    iget-object v3, p1, Ltwitter4j/conf/ConfigurationBase;->oAuthConsumerKey:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1c

    goto :goto_3

    :cond_1b
    iget-object v2, p1, Ltwitter4j/conf/ConfigurationBase;->oAuthConsumerKey:Ljava/lang/String;

    if-eqz v2, :cond_1c

    :goto_3
    return v1

    .line 8219
    :cond_1c
    iget-object v2, p0, Ltwitter4j/conf/ConfigurationBase;->oAuthConsumerSecret:Ljava/lang/String;

    if-eqz v2, :cond_1d

    iget-object v3, p1, Ltwitter4j/conf/ConfigurationBase;->oAuthConsumerSecret:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1e

    goto :goto_4

    :cond_1d
    iget-object v2, p1, Ltwitter4j/conf/ConfigurationBase;->oAuthConsumerSecret:Ljava/lang/String;

    if-eqz v2, :cond_1e

    :goto_4
    return v1

    .line 8239
    :cond_1e
    iget-object v2, p0, Ltwitter4j/conf/ConfigurationBase;->oAuthAccessToken:Ljava/lang/String;

    if-eqz v2, :cond_1f

    iget-object v3, p1, Ltwitter4j/conf/ConfigurationBase;->oAuthAccessToken:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_20

    goto :goto_5

    :cond_1f
    iget-object v2, p1, Ltwitter4j/conf/ConfigurationBase;->oAuthAccessToken:Ljava/lang/String;

    if-eqz v2, :cond_20

    :goto_5
    return v1

    .line 8259
    :cond_20
    iget-object v2, p0, Ltwitter4j/conf/ConfigurationBase;->oAuthAccessTokenSecret:Ljava/lang/String;

    if-eqz v2, :cond_21

    iget-object v3, p1, Ltwitter4j/conf/ConfigurationBase;->oAuthAccessTokenSecret:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_22

    goto :goto_6

    :cond_21
    iget-object v2, p1, Ltwitter4j/conf/ConfigurationBase;->oAuthAccessTokenSecret:Ljava/lang/String;

    if-eqz v2, :cond_22

    :goto_6
    return v1

    .line 8279
    :cond_22
    iget-object v2, p0, Ltwitter4j/conf/ConfigurationBase;->oAuth2TokenType:Ljava/lang/String;

    if-eqz v2, :cond_23

    iget-object v3, p1, Ltwitter4j/conf/ConfigurationBase;->oAuth2TokenType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_24

    goto :goto_7

    :cond_23
    iget-object v2, p1, Ltwitter4j/conf/ConfigurationBase;->oAuth2TokenType:Ljava/lang/String;

    if-eqz v2, :cond_24

    :goto_7
    return v1

    .line 8299
    :cond_24
    iget-object v2, p0, Ltwitter4j/conf/ConfigurationBase;->oAuth2AccessToken:Ljava/lang/String;

    if-eqz v2, :cond_25

    iget-object v3, p1, Ltwitter4j/conf/ConfigurationBase;->oAuth2AccessToken:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_26

    goto :goto_8

    :cond_25
    iget-object v2, p1, Ltwitter4j/conf/ConfigurationBase;->oAuth2AccessToken:Ljava/lang/String;

    if-eqz v2, :cond_26

    :goto_8
    return v1

    .line 8319
    :cond_26
    iget-object v2, p0, Ltwitter4j/conf/ConfigurationBase;->oAuth2Scope:Ljava/lang/String;

    if-eqz v2, :cond_27

    iget-object v3, p1, Ltwitter4j/conf/ConfigurationBase;->oAuth2Scope:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_28

    goto :goto_9

    :cond_27
    iget-object v2, p1, Ltwitter4j/conf/ConfigurationBase;->oAuth2Scope:Ljava/lang/String;

    if-eqz v2, :cond_28

    :goto_9
    return v1

    .line 8329
    :cond_28
    iget-object v2, p0, Ltwitter4j/conf/ConfigurationBase;->oAuthRequestTokenURL:Ljava/lang/String;

    if-eqz v2, :cond_29

    iget-object v3, p1, Ltwitter4j/conf/ConfigurationBase;->oAuthRequestTokenURL:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2a

    goto :goto_a

    :cond_29
    iget-object v2, p1, Ltwitter4j/conf/ConfigurationBase;->oAuthRequestTokenURL:Ljava/lang/String;

    if-eqz v2, :cond_2a

    :goto_a
    return v1

    .line 8349
    :cond_2a
    iget-object v2, p0, Ltwitter4j/conf/ConfigurationBase;->oAuthAuthorizationURL:Ljava/lang/String;

    if-eqz v2, :cond_2b

    iget-object v3, p1, Ltwitter4j/conf/ConfigurationBase;->oAuthAuthorizationURL:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2c

    goto :goto_b

    :cond_2b
    iget-object v2, p1, Ltwitter4j/conf/ConfigurationBase;->oAuthAuthorizationURL:Ljava/lang/String;

    if-eqz v2, :cond_2c

    :goto_b
    return v1

    .line 8369
    :cond_2c
    iget-object v2, p0, Ltwitter4j/conf/ConfigurationBase;->oAuthAccessTokenURL:Ljava/lang/String;

    if-eqz v2, :cond_2d

    iget-object v3, p1, Ltwitter4j/conf/ConfigurationBase;->oAuthAccessTokenURL:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2e

    goto :goto_c

    :cond_2d
    iget-object v2, p1, Ltwitter4j/conf/ConfigurationBase;->oAuthAccessTokenURL:Ljava/lang/String;

    if-eqz v2, :cond_2e

    :goto_c
    return v1

    .line 8389
    :cond_2e
    iget-object v2, p0, Ltwitter4j/conf/ConfigurationBase;->oAuthAuthenticationURL:Ljava/lang/String;

    if-eqz v2, :cond_2f

    iget-object v3, p1, Ltwitter4j/conf/ConfigurationBase;->oAuthAuthenticationURL:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_30

    goto :goto_d

    :cond_2f
    iget-object v2, p1, Ltwitter4j/conf/ConfigurationBase;->oAuthAuthenticationURL:Ljava/lang/String;

    if-eqz v2, :cond_30

    :goto_d
    return v1

    .line 8409
    :cond_30
    iget-object v2, p0, Ltwitter4j/conf/ConfigurationBase;->oAuth2TokenURL:Ljava/lang/String;

    if-eqz v2, :cond_31

    iget-object v3, p1, Ltwitter4j/conf/ConfigurationBase;->oAuth2TokenURL:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_32

    goto :goto_e

    :cond_31
    iget-object v2, p1, Ltwitter4j/conf/ConfigurationBase;->oAuth2TokenURL:Ljava/lang/String;

    if-eqz v2, :cond_32

    :goto_e
    return v1

    .line 8429
    :cond_32
    iget-object v2, p0, Ltwitter4j/conf/ConfigurationBase;->oAuth2InvalidateTokenURL:Ljava/lang/String;

    if-eqz v2, :cond_33

    iget-object v3, p1, Ltwitter4j/conf/ConfigurationBase;->oAuth2InvalidateTokenURL:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_34

    goto :goto_f

    :cond_33
    iget-object v2, p1, Ltwitter4j/conf/ConfigurationBase;->oAuth2InvalidateTokenURL:Ljava/lang/String;

    if-eqz v2, :cond_34

    :goto_f
    return v1

    .line 8449
    :cond_34
    iget-object v2, p0, Ltwitter4j/conf/ConfigurationBase;->restBaseURL:Ljava/lang/String;

    if-eqz v2, :cond_35

    iget-object v3, p1, Ltwitter4j/conf/ConfigurationBase;->restBaseURL:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_36

    goto :goto_10

    :cond_35
    iget-object v2, p1, Ltwitter4j/conf/ConfigurationBase;->restBaseURL:Ljava/lang/String;

    if-eqz v2, :cond_36

    :goto_10
    return v1

    .line 8459
    :cond_36
    iget-object v2, p0, Ltwitter4j/conf/ConfigurationBase;->streamBaseURL:Ljava/lang/String;

    if-eqz v2, :cond_37

    iget-object v3, p1, Ltwitter4j/conf/ConfigurationBase;->streamBaseURL:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_38

    goto :goto_11

    :cond_37
    iget-object v2, p1, Ltwitter4j/conf/ConfigurationBase;->streamBaseURL:Ljava/lang/String;

    if-eqz v2, :cond_38

    :goto_11
    return v1

    .line 8479
    :cond_38
    iget-object v2, p0, Ltwitter4j/conf/ConfigurationBase;->userStreamBaseURL:Ljava/lang/String;

    if-eqz v2, :cond_39

    iget-object v3, p1, Ltwitter4j/conf/ConfigurationBase;->userStreamBaseURL:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3a

    goto :goto_12

    :cond_39
    iget-object v2, p1, Ltwitter4j/conf/ConfigurationBase;->userStreamBaseURL:Ljava/lang/String;

    if-eqz v2, :cond_3a

    :goto_12
    return v1

    .line 8499
    :cond_3a
    iget-object v2, p0, Ltwitter4j/conf/ConfigurationBase;->siteStreamBaseURL:Ljava/lang/String;

    if-eqz v2, :cond_3b

    iget-object v3, p1, Ltwitter4j/conf/ConfigurationBase;->siteStreamBaseURL:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3c

    goto :goto_13

    :cond_3b
    iget-object v2, p1, Ltwitter4j/conf/ConfigurationBase;->siteStreamBaseURL:Ljava/lang/String;

    if-eqz v2, :cond_3c

    :goto_13
    return v1

    .line 8519
    :cond_3c
    iget-object v2, p0, Ltwitter4j/conf/ConfigurationBase;->uploadBaseURL:Ljava/lang/String;

    if-eqz v2, :cond_3d

    iget-object v3, p1, Ltwitter4j/conf/ConfigurationBase;->uploadBaseURL:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3e

    goto :goto_14

    :cond_3d
    iget-object v2, p1, Ltwitter4j/conf/ConfigurationBase;->uploadBaseURL:Ljava/lang/String;

    if-eqz v2, :cond_3e

    :goto_14
    return v1

    .line 8539
    :cond_3e
    iget-object v2, p0, Ltwitter4j/conf/ConfigurationBase;->dispatcherImpl:Ljava/lang/String;

    if-eqz v2, :cond_3f

    iget-object v3, p1, Ltwitter4j/conf/ConfigurationBase;->dispatcherImpl:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_40

    goto :goto_15

    :cond_3f
    iget-object v2, p1, Ltwitter4j/conf/ConfigurationBase;->dispatcherImpl:Ljava/lang/String;

    if-eqz v2, :cond_40

    :goto_15
    return v1

    .line 8559
    :cond_40
    iget-object v2, p0, Ltwitter4j/conf/ConfigurationBase;->loggerFactory:Ljava/lang/String;

    if-eqz v2, :cond_41

    iget-object v3, p1, Ltwitter4j/conf/ConfigurationBase;->loggerFactory:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_42

    goto :goto_16

    :cond_41
    iget-object v2, p1, Ltwitter4j/conf/ConfigurationBase;->loggerFactory:Ljava/lang/String;

    if-eqz v2, :cond_42

    :goto_16
    return v1

    .line 8579
    :cond_42
    iget-object v2, p0, Ltwitter4j/conf/ConfigurationBase;->mediaProvider:Ljava/lang/String;

    if-eqz v2, :cond_43

    iget-object v3, p1, Ltwitter4j/conf/ConfigurationBase;->mediaProvider:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_44

    goto :goto_17

    :cond_43
    iget-object v2, p1, Ltwitter4j/conf/ConfigurationBase;->mediaProvider:Ljava/lang/String;

    if-eqz v2, :cond_44

    :goto_17
    return v1

    .line 8599
    :cond_44
    iget-object v2, p0, Ltwitter4j/conf/ConfigurationBase;->mediaProviderAPIKey:Ljava/lang/String;

    if-eqz v2, :cond_45

    iget-object v3, p1, Ltwitter4j/conf/ConfigurationBase;->mediaProviderAPIKey:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_46

    goto :goto_18

    :cond_45
    iget-object v2, p1, Ltwitter4j/conf/ConfigurationBase;->mediaProviderAPIKey:Ljava/lang/String;

    if-eqz v2, :cond_46

    :goto_18
    return v1

    .line 8619
    :cond_46
    iget-object v2, p0, Ltwitter4j/conf/ConfigurationBase;->mediaProviderParameters:Ljava/util/Properties;

    if-eqz v2, :cond_47

    iget-object v3, p1, Ltwitter4j/conf/ConfigurationBase;->mediaProviderParameters:Ljava/util/Properties;

    invoke-virtual {v2, v3}, Ljava/util/Properties;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_48

    goto :goto_19

    :cond_47
    iget-object v2, p1, Ltwitter4j/conf/ConfigurationBase;->mediaProviderParameters:Ljava/util/Properties;

    if-eqz v2, :cond_48

    :goto_19
    return v1

    .line 8639
    :cond_48
    iget-object v2, p0, Ltwitter4j/conf/ConfigurationBase;->streamThreadName:Ljava/lang/String;

    iget-object p1, p1, Ltwitter4j/conf/ConfigurationBase;->streamThreadName:Ljava/lang/String;

    if-eqz v2, :cond_49

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_1a

    :cond_49
    if-nez p1, :cond_4a

    goto :goto_1a

    :cond_4a
    move v0, v1

    :goto_1a
    return v0

    :cond_4b
    :goto_1b
    return v1

    nop

    .array-data 1
    .end array-data
.end method

.method public final getAsyncNumThreads()I
    .locals 1

    .line 4889
    iget v0, p0, Ltwitter4j/conf/ConfigurationBase;->asyncNumThreads:I

    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final getContributingTo()J
    .locals 2

    .line 4979
    iget-wide v0, p0, Ltwitter4j/conf/ConfigurationBase;->contributingTo:J

    return-wide v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getDispatcherImpl()Ljava/lang/String;
    .locals 1

    .line 6059
    iget-object v0, p0, Ltwitter4j/conf/ConfigurationBase;->dispatcherImpl:Ljava/lang/String;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getHttpClientConfiguration()Ltwitter4j/HttpClientConfiguration;
    .locals 1

    .line 2879
    iget-object v0, p0, Ltwitter4j/conf/ConfigurationBase;->httpConf:Ltwitter4j/HttpClientConfiguration;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getHttpStreamingReadTimeout()I
    .locals 1

    .line 4069
    iget v0, p0, Ltwitter4j/conf/ConfigurationBase;->httpStreamingReadTimeout:I

    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getLoggerFactory()Ljava/lang/String;
    .locals 1

    .line 6149
    iget-object v0, p0, Ltwitter4j/conf/ConfigurationBase;->loggerFactory:Ljava/lang/String;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getMediaProvider()Ljava/lang/String;
    .locals 1

    .line 7409
    iget-object v0, p0, Ltwitter4j/conf/ConfigurationBase;->mediaProvider:Ljava/lang/String;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getMediaProviderAPIKey()Ljava/lang/String;
    .locals 1

    .line 7499
    iget-object v0, p0, Ltwitter4j/conf/ConfigurationBase;->mediaProviderAPIKey:Ljava/lang/String;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getMediaProviderParameters()Ljava/util/Properties;
    .locals 1

    .line 7589
    iget-object v0, p0, Ltwitter4j/conf/ConfigurationBase;->mediaProviderParameters:Ljava/util/Properties;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getOAuth2AccessToken()Ljava/lang/String;
    .locals 1

    .line 4709
    iget-object v0, p0, Ltwitter4j/conf/ConfigurationBase;->oAuth2AccessToken:Ljava/lang/String;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getOAuth2InvalidateTokenURL()Ljava/lang/String;
    .locals 1

    .line 5969
    iget-object v0, p0, Ltwitter4j/conf/ConfigurationBase;->oAuth2InvalidateTokenURL:Ljava/lang/String;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getOAuth2Scope()Ljava/lang/String;
    .locals 1

    .line 4759
    iget-object v0, p0, Ltwitter4j/conf/ConfigurationBase;->oAuth2Scope:Ljava/lang/String;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getOAuth2TokenType()Ljava/lang/String;
    .locals 1

    .line 4619
    iget-object v0, p0, Ltwitter4j/conf/ConfigurationBase;->oAuth2TokenType:Ljava/lang/String;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getOAuth2TokenURL()Ljava/lang/String;
    .locals 1

    .line 5879
    iget-object v0, p0, Ltwitter4j/conf/ConfigurationBase;->oAuth2TokenURL:Ljava/lang/String;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getOAuthAccessToken()Ljava/lang/String;
    .locals 1

    .line 4439
    iget-object v0, p0, Ltwitter4j/conf/ConfigurationBase;->oAuthAccessToken:Ljava/lang/String;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getOAuthAccessTokenSecret()Ljava/lang/String;
    .locals 1

    .line 4529
    iget-object v0, p0, Ltwitter4j/conf/ConfigurationBase;->oAuthAccessTokenSecret:Ljava/lang/String;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getOAuthAccessTokenURL()Ljava/lang/String;
    .locals 1

    .line 5699
    iget-object v0, p0, Ltwitter4j/conf/ConfigurationBase;->oAuthAccessTokenURL:Ljava/lang/String;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getOAuthAuthenticationURL()Ljava/lang/String;
    .locals 1

    .line 5789
    iget-object v0, p0, Ltwitter4j/conf/ConfigurationBase;->oAuthAuthenticationURL:Ljava/lang/String;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getOAuthAuthorizationURL()Ljava/lang/String;
    .locals 1

    .line 5609
    iget-object v0, p0, Ltwitter4j/conf/ConfigurationBase;->oAuthAuthorizationURL:Ljava/lang/String;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final getOAuthConsumerKey()Ljava/lang/String;
    .locals 1

    .line 4259
    iget-object v0, p0, Ltwitter4j/conf/ConfigurationBase;->oAuthConsumerKey:Ljava/lang/String;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final getOAuthConsumerSecret()Ljava/lang/String;
    .locals 1

    .line 4349
    iget-object v0, p0, Ltwitter4j/conf/ConfigurationBase;->oAuthConsumerSecret:Ljava/lang/String;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getOAuthRequestTokenURL()Ljava/lang/String;
    .locals 1

    .line 5519
    iget-object v0, p0, Ltwitter4j/conf/ConfigurationBase;->oAuthRequestTokenURL:Ljava/lang/String;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final getPassword()Ljava/lang/String;
    .locals 1

    .line 2829
    iget-object v0, p0, Ltwitter4j/conf/ConfigurationBase;->password:Ljava/lang/String;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getRestBaseURL()Ljava/lang/String;
    .locals 1

    .line 5069
    iget-object v0, p0, Ltwitter4j/conf/ConfigurationBase;->restBaseURL:Ljava/lang/String;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getSiteStreamBaseURL()Ljava/lang/String;
    .locals 1

    .line 5429
    iget-object v0, p0, Ltwitter4j/conf/ConfigurationBase;->siteStreamBaseURL:Ljava/lang/String;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getStreamBaseURL()Ljava/lang/String;
    .locals 1

    .line 5249
    iget-object v0, p0, Ltwitter4j/conf/ConfigurationBase;->streamBaseURL:Ljava/lang/String;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getStreamThreadName()Ljava/lang/String;
    .locals 1

    .line 7679
    iget-object v0, p0, Ltwitter4j/conf/ConfigurationBase;->streamThreadName:Ljava/lang/String;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getUploadBaseURL()Ljava/lang/String;
    .locals 1

    .line 5159
    iget-object v0, p0, Ltwitter4j/conf/ConfigurationBase;->uploadBaseURL:Ljava/lang/String;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final getUser()Ljava/lang/String;
    .locals 1

    .line 2739
    iget-object v0, p0, Ltwitter4j/conf/ConfigurationBase;->user:Ljava/lang/String;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getUserStreamBaseURL()Ljava/lang/String;
    .locals 1

    .line 5339
    iget-object v0, p0, Ltwitter4j/conf/ConfigurationBase;->userStreamBaseURL:Ljava/lang/String;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public hashCode()I
    .locals 7

    .line 8699
    iget-boolean v0, p0, Ltwitter4j/conf/ConfigurationBase;->debug:Z

    mul-int/lit8 v0, v0, 0x1f

    .line 8709
    iget-object v1, p0, Ltwitter4j/conf/ConfigurationBase;->user:Ljava/lang/String;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 8719
    iget-object v1, p0, Ltwitter4j/conf/ConfigurationBase;->password:Ljava/lang/String;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 8729
    iget-object v1, p0, Ltwitter4j/conf/ConfigurationBase;->httpConf:Ltwitter4j/HttpClientConfiguration;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_2

    :cond_2
    move v1, v2

    :goto_2
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 8739
    iget v1, p0, Ltwitter4j/conf/ConfigurationBase;->httpStreamingReadTimeout:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 8749
    iget v1, p0, Ltwitter4j/conf/ConfigurationBase;->httpRetryCount:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 8759
    iget v1, p0, Ltwitter4j/conf/ConfigurationBase;->httpRetryIntervalSeconds:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 8769
    iget-object v1, p0, Ltwitter4j/conf/ConfigurationBase;->oAuthConsumerKey:Ljava/lang/String;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_3

    :cond_3
    move v1, v2

    :goto_3
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 8779
    iget-object v1, p0, Ltwitter4j/conf/ConfigurationBase;->oAuthConsumerSecret:Ljava/lang/String;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_4

    :cond_4
    move v1, v2

    :goto_4
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 8789
    iget-object v1, p0, Ltwitter4j/conf/ConfigurationBase;->oAuthAccessToken:Ljava/lang/String;

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_5

    :cond_5
    move v1, v2

    :goto_5
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 8799
    iget-object v1, p0, Ltwitter4j/conf/ConfigurationBase;->oAuthAccessTokenSecret:Ljava/lang/String;

    if-eqz v1, :cond_6

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_6

    :cond_6
    move v1, v2

    :goto_6
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 8809
    iget-object v1, p0, Ltwitter4j/conf/ConfigurationBase;->oAuth2TokenType:Ljava/lang/String;

    if-eqz v1, :cond_7

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_7

    :cond_7
    move v1, v2

    :goto_7
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 8819
    iget-object v1, p0, Ltwitter4j/conf/ConfigurationBase;->oAuth2AccessToken:Ljava/lang/String;

    if-eqz v1, :cond_8

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_8

    :cond_8
    move v1, v2

    :goto_8
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 8829
    iget-object v1, p0, Ltwitter4j/conf/ConfigurationBase;->oAuth2Scope:Ljava/lang/String;

    if-eqz v1, :cond_9

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_9

    :cond_9
    move v1, v2

    :goto_9
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 8839
    iget-object v1, p0, Ltwitter4j/conf/ConfigurationBase;->oAuthRequestTokenURL:Ljava/lang/String;

    if-eqz v1, :cond_a

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_a

    :cond_a
    move v1, v2

    :goto_a
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 8849
    iget-object v1, p0, Ltwitter4j/conf/ConfigurationBase;->oAuthAuthorizationURL:Ljava/lang/String;

    if-eqz v1, :cond_b

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_b

    :cond_b
    move v1, v2

    :goto_b
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 8859
    iget-object v1, p0, Ltwitter4j/conf/ConfigurationBase;->oAuthAccessTokenURL:Ljava/lang/String;

    if-eqz v1, :cond_c

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_c

    :cond_c
    move v1, v2

    :goto_c
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 8869
    iget-object v1, p0, Ltwitter4j/conf/ConfigurationBase;->oAuthAuthenticationURL:Ljava/lang/String;

    if-eqz v1, :cond_d

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_d

    :cond_d
    move v1, v2

    :goto_d
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 8879
    iget-object v1, p0, Ltwitter4j/conf/ConfigurationBase;->oAuth2TokenURL:Ljava/lang/String;

    if-eqz v1, :cond_e

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_e

    :cond_e
    move v1, v2

    :goto_e
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 8889
    iget-object v1, p0, Ltwitter4j/conf/ConfigurationBase;->oAuth2InvalidateTokenURL:Ljava/lang/String;

    if-eqz v1, :cond_f

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_f

    :cond_f
    move v1, v2

    :goto_f
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 8899
    iget-object v1, p0, Ltwitter4j/conf/ConfigurationBase;->restBaseURL:Ljava/lang/String;

    if-eqz v1, :cond_10

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_10

    :cond_10
    move v1, v2

    :goto_10
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 8909
    iget-object v1, p0, Ltwitter4j/conf/ConfigurationBase;->streamBaseURL:Ljava/lang/String;

    if-eqz v1, :cond_11

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_11

    :cond_11
    move v1, v2

    :goto_11
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 8919
    iget-object v1, p0, Ltwitter4j/conf/ConfigurationBase;->userStreamBaseURL:Ljava/lang/String;

    if-eqz v1, :cond_12

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_12

    :cond_12
    move v1, v2

    :goto_12
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 8929
    iget-object v1, p0, Ltwitter4j/conf/ConfigurationBase;->siteStreamBaseURL:Ljava/lang/String;

    if-eqz v1, :cond_13

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_13

    :cond_13
    move v1, v2

    :goto_13
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 8939
    iget-object v1, p0, Ltwitter4j/conf/ConfigurationBase;->uploadBaseURL:Ljava/lang/String;

    if-eqz v1, :cond_14

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_14

    :cond_14
    move v1, v2

    :goto_14
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 8949
    iget-object v1, p0, Ltwitter4j/conf/ConfigurationBase;->dispatcherImpl:Ljava/lang/String;

    if-eqz v1, :cond_15

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_15

    :cond_15
    move v1, v2

    :goto_15
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 8959
    iget v1, p0, Ltwitter4j/conf/ConfigurationBase;->asyncNumThreads:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 8969
    iget-object v1, p0, Ltwitter4j/conf/ConfigurationBase;->loggerFactory:Ljava/lang/String;

    if-eqz v1, :cond_16

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_16

    :cond_16
    move v1, v2

    :goto_16
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 8979
    iget-wide v3, p0, Ltwitter4j/conf/ConfigurationBase;->contributingTo:J

    const/16 v1, 0x20

    ushr-long v5, v3, v1

    xor-long/2addr v3, v5

    long-to-int v1, v3

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 8989
    iget-boolean v1, p0, Ltwitter4j/conf/ConfigurationBase;->includeMyRetweetEnabled:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 8999
    iget-boolean v1, p0, Ltwitter4j/conf/ConfigurationBase;->includeEntitiesEnabled:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 9009
    iget-boolean v1, p0, Ltwitter4j/conf/ConfigurationBase;->trimUserEnabled:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 9019
    iget-boolean v1, p0, Ltwitter4j/conf/ConfigurationBase;->includeExtAltTextEnabled:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 9029
    iget-boolean v1, p0, Ltwitter4j/conf/ConfigurationBase;->tweetModeExtended:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 9039
    iget-boolean v1, p0, Ltwitter4j/conf/ConfigurationBase;->includeEmailEnabled:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 9049
    iget-boolean v1, p0, Ltwitter4j/conf/ConfigurationBase;->jsonStoreEnabled:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 9059
    iget-boolean v1, p0, Ltwitter4j/conf/ConfigurationBase;->mbeanEnabled:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 9069
    iget-boolean v1, p0, Ltwitter4j/conf/ConfigurationBase;->userStreamRepliesAllEnabled:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 9079
    iget-boolean v1, p0, Ltwitter4j/conf/ConfigurationBase;->userStreamWithFollowingsEnabled:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 9089
    iget-boolean v1, p0, Ltwitter4j/conf/ConfigurationBase;->stallWarningsEnabled:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 9099
    iget-boolean v1, p0, Ltwitter4j/conf/ConfigurationBase;->applicationOnlyAuthEnabled:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 9109
    iget-object v1, p0, Ltwitter4j/conf/ConfigurationBase;->mediaProvider:Ljava/lang/String;

    if-eqz v1, :cond_17

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_17

    :cond_17
    move v1, v2

    :goto_17
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 9119
    iget-object v1, p0, Ltwitter4j/conf/ConfigurationBase;->mediaProviderAPIKey:Ljava/lang/String;

    if-eqz v1, :cond_18

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_18

    :cond_18
    move v1, v2

    :goto_18
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 9129
    iget-object v1, p0, Ltwitter4j/conf/ConfigurationBase;->mediaProviderParameters:Ljava/util/Properties;

    if-eqz v1, :cond_19

    invoke-virtual {v1}, Ljava/util/Properties;->hashCode()I

    move-result v1

    goto :goto_19

    :cond_19
    move v1, v2

    :goto_19
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 9139
    iget-boolean v1, p0, Ltwitter4j/conf/ConfigurationBase;->daemonEnabled:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 9149
    iget-object v1, p0, Ltwitter4j/conf/ConfigurationBase;->streamThreadName:Ljava/lang/String;

    if-eqz v1, :cond_1a

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    :cond_1a
    add-int/2addr v0, v2

    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public isApplicationOnlyAuthEnabled()Z
    .locals 1

    .line 7319
    iget-boolean v0, p0, Ltwitter4j/conf/ConfigurationBase;->applicationOnlyAuthEnabled:Z

    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public isDaemonEnabled()Z
    .locals 1

    .line 6569
    iget-boolean v0, p0, Ltwitter4j/conf/ConfigurationBase;->daemonEnabled:Z

    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final isDebugEnabled()Z
    .locals 1

    .line 2649
    iget-boolean v0, p0, Ltwitter4j/conf/ConfigurationBase;->debug:Z

    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public isIncludeEmailEnabled()Z
    .locals 1

    .line 6659
    iget-boolean v0, p0, Ltwitter4j/conf/ConfigurationBase;->includeEmailEnabled:Z

    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public isIncludeEntitiesEnabled()Z
    .locals 1

    .line 6199
    iget-boolean v0, p0, Ltwitter4j/conf/ConfigurationBase;->includeEntitiesEnabled:Z

    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public isIncludeExtAltTextEnabled()Z
    .locals 1

    .line 6469
    iget-boolean v0, p0, Ltwitter4j/conf/ConfigurationBase;->includeExtAltTextEnabled:Z

    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public isIncludeMyRetweetEnabled()Z
    .locals 1

    .line 6329
    iget-boolean v0, p0, Ltwitter4j/conf/ConfigurationBase;->includeMyRetweetEnabled:Z

    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public isJSONStoreEnabled()Z
    .locals 1

    .line 6869
    iget-boolean v0, p0, Ltwitter4j/conf/ConfigurationBase;->jsonStoreEnabled:Z

    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public isMBeanEnabled()Z
    .locals 1

    .line 6959
    iget-boolean v0, p0, Ltwitter4j/conf/ConfigurationBase;->mbeanEnabled:Z

    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public isStallWarningsEnabled()Z
    .locals 1

    .line 7229
    iget-boolean v0, p0, Ltwitter4j/conf/ConfigurationBase;->stallWarningsEnabled:Z

    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public isTrimUserEnabled()Z
    .locals 1

    .line 6419
    iget-boolean v0, p0, Ltwitter4j/conf/ConfigurationBase;->trimUserEnabled:Z

    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public isTweetModeExtended()Z
    .locals 1

    .line 6519
    iget-boolean v0, p0, Ltwitter4j/conf/ConfigurationBase;->tweetModeExtended:Z

    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public isUserStreamRepliesAllEnabled()Z
    .locals 1

    .line 7049
    iget-boolean v0, p0, Ltwitter4j/conf/ConfigurationBase;->userStreamRepliesAllEnabled:Z

    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public isUserStreamWithFollowingsEnabled()Z
    .locals 1

    .line 7099
    iget-boolean v0, p0, Ltwitter4j/conf/ConfigurationBase;->userStreamWithFollowingsEnabled:Z

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

    .line 9949
    invoke-static {p0}, Ltwitter4j/conf/ConfigurationBase;->getInstance(Ltwitter4j/conf/ConfigurationBase;)Ltwitter4j/conf/ConfigurationBase;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method protected final setApplicationOnlyAuthEnabled(Z)V
    .locals 0

    .line 7359
    iput-boolean p1, p0, Ltwitter4j/conf/ConfigurationBase;->applicationOnlyAuthEnabled:Z

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method protected final setAsyncNumThreads(I)V
    .locals 0

    .line 4929
    iput p1, p0, Ltwitter4j/conf/ConfigurationBase;->asyncNumThreads:I

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method protected final setContributingTo(J)V
    .locals 0

    .line 5019
    iput-wide p1, p0, Ltwitter4j/conf/ConfigurationBase;->contributingTo:J

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method protected setDaemonEnabled(Z)V
    .locals 0

    .line 6609
    iput-boolean p1, p0, Ltwitter4j/conf/ConfigurationBase;->daemonEnabled:Z

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method protected final setDebug(Z)V
    .locals 0

    .line 2689
    iput-boolean p1, p0, Ltwitter4j/conf/ConfigurationBase;->debug:Z

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method protected final setDispatcherImpl(Ljava/lang/String;)V
    .locals 0

    .line 6099
    iput-object p1, p0, Ltwitter4j/conf/ConfigurationBase;->dispatcherImpl:Ljava/lang/String;

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method protected final setGZIPEnabled(Z)V
    .locals 12

    .line 3079
    new-instance v11, Ltwitter4j/conf/ConfigurationBase$MyHttpClientConfiguration;

    iget-object v0, p0, Ltwitter4j/conf/ConfigurationBase;->httpConf:Ltwitter4j/HttpClientConfiguration;

    invoke-interface {v0}, Ltwitter4j/HttpClientConfiguration;->getHttpProxyHost()Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Ltwitter4j/conf/ConfigurationBase;->httpConf:Ltwitter4j/HttpClientConfiguration;

    .line 3089
    invoke-interface {v0}, Ltwitter4j/HttpClientConfiguration;->getHttpProxyUser()Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Ltwitter4j/conf/ConfigurationBase;->httpConf:Ltwitter4j/HttpClientConfiguration;

    .line 3099
    invoke-interface {v0}, Ltwitter4j/HttpClientConfiguration;->getHttpProxyPassword()Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Ltwitter4j/conf/ConfigurationBase;->httpConf:Ltwitter4j/HttpClientConfiguration;

    .line 3109
    invoke-interface {v0}, Ltwitter4j/HttpClientConfiguration;->getHttpProxyPort()I

    move-result v5

    iget-object v0, p0, Ltwitter4j/conf/ConfigurationBase;->httpConf:Ltwitter4j/HttpClientConfiguration;

    .line 3119
    invoke-interface {v0}, Ltwitter4j/HttpClientConfiguration;->isHttpProxySocks()Z

    move-result v6

    iget-object v0, p0, Ltwitter4j/conf/ConfigurationBase;->httpConf:Ltwitter4j/HttpClientConfiguration;

    .line 3129
    invoke-interface {v0}, Ltwitter4j/HttpClientConfiguration;->getHttpConnectionTimeout()I

    move-result v7

    iget-object v0, p0, Ltwitter4j/conf/ConfigurationBase;->httpConf:Ltwitter4j/HttpClientConfiguration;

    .line 3139
    invoke-interface {v0}, Ltwitter4j/HttpClientConfiguration;->getHttpReadTimeout()I

    move-result v8

    iget-object v0, p0, Ltwitter4j/conf/ConfigurationBase;->httpConf:Ltwitter4j/HttpClientConfiguration;

    .line 3149
    invoke-interface {v0}, Ltwitter4j/HttpClientConfiguration;->isPrettyDebugEnabled()Z

    move-result v9

    move-object v0, v11

    move-object v1, p0

    move v10, p1

    invoke-direct/range {v0 .. v10}, Ltwitter4j/conf/ConfigurationBase$MyHttpClientConfiguration;-><init>(Ltwitter4j/conf/ConfigurationBase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZIIZZ)V

    iput-object v11, p0, Ltwitter4j/conf/ConfigurationBase;->httpConf:Ltwitter4j/HttpClientConfiguration;

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method protected final setHttpConnectionTimeout(I)V
    .locals 12

    .line 3819
    new-instance v11, Ltwitter4j/conf/ConfigurationBase$MyHttpClientConfiguration;

    iget-object v0, p0, Ltwitter4j/conf/ConfigurationBase;->httpConf:Ltwitter4j/HttpClientConfiguration;

    invoke-interface {v0}, Ltwitter4j/HttpClientConfiguration;->getHttpProxyHost()Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Ltwitter4j/conf/ConfigurationBase;->httpConf:Ltwitter4j/HttpClientConfiguration;

    .line 3829
    invoke-interface {v0}, Ltwitter4j/HttpClientConfiguration;->getHttpProxyUser()Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Ltwitter4j/conf/ConfigurationBase;->httpConf:Ltwitter4j/HttpClientConfiguration;

    .line 3839
    invoke-interface {v0}, Ltwitter4j/HttpClientConfiguration;->getHttpProxyPassword()Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Ltwitter4j/conf/ConfigurationBase;->httpConf:Ltwitter4j/HttpClientConfiguration;

    .line 3849
    invoke-interface {v0}, Ltwitter4j/HttpClientConfiguration;->getHttpProxyPort()I

    move-result v5

    iget-object v0, p0, Ltwitter4j/conf/ConfigurationBase;->httpConf:Ltwitter4j/HttpClientConfiguration;

    .line 3859
    invoke-interface {v0}, Ltwitter4j/HttpClientConfiguration;->isHttpProxySocks()Z

    move-result v6

    iget-object v0, p0, Ltwitter4j/conf/ConfigurationBase;->httpConf:Ltwitter4j/HttpClientConfiguration;

    .line 3879
    invoke-interface {v0}, Ltwitter4j/HttpClientConfiguration;->getHttpReadTimeout()I

    move-result v8

    iget-object v0, p0, Ltwitter4j/conf/ConfigurationBase;->httpConf:Ltwitter4j/HttpClientConfiguration;

    .line 3889
    invoke-interface {v0}, Ltwitter4j/HttpClientConfiguration;->isPrettyDebugEnabled()Z

    move-result v9

    iget-object v0, p0, Ltwitter4j/conf/ConfigurationBase;->httpConf:Ltwitter4j/HttpClientConfiguration;

    invoke-interface {v0}, Ltwitter4j/HttpClientConfiguration;->isGZIPEnabled()Z

    move-result v10

    move-object v0, v11

    move-object v1, p0

    move v7, p1

    invoke-direct/range {v0 .. v10}, Ltwitter4j/conf/ConfigurationBase$MyHttpClientConfiguration;-><init>(Ltwitter4j/conf/ConfigurationBase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZIIZZ)V

    iput-object v11, p0, Ltwitter4j/conf/ConfigurationBase;->httpConf:Ltwitter4j/HttpClientConfiguration;

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method protected final setHttpProxyHost(Ljava/lang/String;)V
    .locals 12

    .line 3219
    new-instance v11, Ltwitter4j/conf/ConfigurationBase$MyHttpClientConfiguration;

    iget-object v0, p0, Ltwitter4j/conf/ConfigurationBase;->httpConf:Ltwitter4j/HttpClientConfiguration;

    .line 3229
    invoke-interface {v0}, Ltwitter4j/HttpClientConfiguration;->getHttpProxyUser()Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Ltwitter4j/conf/ConfigurationBase;->httpConf:Ltwitter4j/HttpClientConfiguration;

    .line 3239
    invoke-interface {v0}, Ltwitter4j/HttpClientConfiguration;->getHttpProxyPassword()Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Ltwitter4j/conf/ConfigurationBase;->httpConf:Ltwitter4j/HttpClientConfiguration;

    .line 3249
    invoke-interface {v0}, Ltwitter4j/HttpClientConfiguration;->getHttpProxyPort()I

    move-result v5

    iget-object v0, p0, Ltwitter4j/conf/ConfigurationBase;->httpConf:Ltwitter4j/HttpClientConfiguration;

    .line 3259
    invoke-interface {v0}, Ltwitter4j/HttpClientConfiguration;->isHttpProxySocks()Z

    move-result v6

    iget-object v0, p0, Ltwitter4j/conf/ConfigurationBase;->httpConf:Ltwitter4j/HttpClientConfiguration;

    .line 3269
    invoke-interface {v0}, Ltwitter4j/HttpClientConfiguration;->getHttpConnectionTimeout()I

    move-result v7

    iget-object v0, p0, Ltwitter4j/conf/ConfigurationBase;->httpConf:Ltwitter4j/HttpClientConfiguration;

    .line 3279
    invoke-interface {v0}, Ltwitter4j/HttpClientConfiguration;->getHttpReadTimeout()I

    move-result v8

    iget-object v0, p0, Ltwitter4j/conf/ConfigurationBase;->httpConf:Ltwitter4j/HttpClientConfiguration;

    .line 3289
    invoke-interface {v0}, Ltwitter4j/HttpClientConfiguration;->isPrettyDebugEnabled()Z

    move-result v9

    iget-object v0, p0, Ltwitter4j/conf/ConfigurationBase;->httpConf:Ltwitter4j/HttpClientConfiguration;

    invoke-interface {v0}, Ltwitter4j/HttpClientConfiguration;->isGZIPEnabled()Z

    move-result v10

    move-object v0, v11

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v10}, Ltwitter4j/conf/ConfigurationBase$MyHttpClientConfiguration;-><init>(Ltwitter4j/conf/ConfigurationBase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZIIZZ)V

    iput-object v11, p0, Ltwitter4j/conf/ConfigurationBase;->httpConf:Ltwitter4j/HttpClientConfiguration;

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method protected final setHttpProxyPassword(Ljava/lang/String;)V
    .locals 12

    .line 3459
    new-instance v11, Ltwitter4j/conf/ConfigurationBase$MyHttpClientConfiguration;

    iget-object v0, p0, Ltwitter4j/conf/ConfigurationBase;->httpConf:Ltwitter4j/HttpClientConfiguration;

    invoke-interface {v0}, Ltwitter4j/HttpClientConfiguration;->getHttpProxyHost()Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Ltwitter4j/conf/ConfigurationBase;->httpConf:Ltwitter4j/HttpClientConfiguration;

    .line 3469
    invoke-interface {v0}, Ltwitter4j/HttpClientConfiguration;->getHttpProxyUser()Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Ltwitter4j/conf/ConfigurationBase;->httpConf:Ltwitter4j/HttpClientConfiguration;

    .line 3489
    invoke-interface {v0}, Ltwitter4j/HttpClientConfiguration;->getHttpProxyPort()I

    move-result v5

    iget-object v0, p0, Ltwitter4j/conf/ConfigurationBase;->httpConf:Ltwitter4j/HttpClientConfiguration;

    .line 3499
    invoke-interface {v0}, Ltwitter4j/HttpClientConfiguration;->isHttpProxySocks()Z

    move-result v6

    iget-object v0, p0, Ltwitter4j/conf/ConfigurationBase;->httpConf:Ltwitter4j/HttpClientConfiguration;

    .line 3509
    invoke-interface {v0}, Ltwitter4j/HttpClientConfiguration;->getHttpConnectionTimeout()I

    move-result v7

    iget-object v0, p0, Ltwitter4j/conf/ConfigurationBase;->httpConf:Ltwitter4j/HttpClientConfiguration;

    .line 3519
    invoke-interface {v0}, Ltwitter4j/HttpClientConfiguration;->getHttpReadTimeout()I

    move-result v8

    iget-object v0, p0, Ltwitter4j/conf/ConfigurationBase;->httpConf:Ltwitter4j/HttpClientConfiguration;

    .line 3529
    invoke-interface {v0}, Ltwitter4j/HttpClientConfiguration;->isPrettyDebugEnabled()Z

    move-result v9

    iget-object v0, p0, Ltwitter4j/conf/ConfigurationBase;->httpConf:Ltwitter4j/HttpClientConfiguration;

    invoke-interface {v0}, Ltwitter4j/HttpClientConfiguration;->isGZIPEnabled()Z

    move-result v10

    move-object v0, v11

    move-object v1, p0

    move-object v4, p1

    invoke-direct/range {v0 .. v10}, Ltwitter4j/conf/ConfigurationBase$MyHttpClientConfiguration;-><init>(Ltwitter4j/conf/ConfigurationBase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZIIZZ)V

    iput-object v11, p0, Ltwitter4j/conf/ConfigurationBase;->httpConf:Ltwitter4j/HttpClientConfiguration;

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method protected final setHttpProxyPort(I)V
    .locals 12

    .line 3579
    new-instance v11, Ltwitter4j/conf/ConfigurationBase$MyHttpClientConfiguration;

    iget-object v0, p0, Ltwitter4j/conf/ConfigurationBase;->httpConf:Ltwitter4j/HttpClientConfiguration;

    invoke-interface {v0}, Ltwitter4j/HttpClientConfiguration;->getHttpProxyHost()Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Ltwitter4j/conf/ConfigurationBase;->httpConf:Ltwitter4j/HttpClientConfiguration;

    .line 3589
    invoke-interface {v0}, Ltwitter4j/HttpClientConfiguration;->getHttpProxyUser()Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Ltwitter4j/conf/ConfigurationBase;->httpConf:Ltwitter4j/HttpClientConfiguration;

    .line 3599
    invoke-interface {v0}, Ltwitter4j/HttpClientConfiguration;->getHttpProxyPassword()Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Ltwitter4j/conf/ConfigurationBase;->httpConf:Ltwitter4j/HttpClientConfiguration;

    .line 3619
    invoke-interface {v0}, Ltwitter4j/HttpClientConfiguration;->isHttpProxySocks()Z

    move-result v6

    iget-object v0, p0, Ltwitter4j/conf/ConfigurationBase;->httpConf:Ltwitter4j/HttpClientConfiguration;

    .line 3629
    invoke-interface {v0}, Ltwitter4j/HttpClientConfiguration;->getHttpConnectionTimeout()I

    move-result v7

    iget-object v0, p0, Ltwitter4j/conf/ConfigurationBase;->httpConf:Ltwitter4j/HttpClientConfiguration;

    .line 3639
    invoke-interface {v0}, Ltwitter4j/HttpClientConfiguration;->getHttpReadTimeout()I

    move-result v8

    iget-object v0, p0, Ltwitter4j/conf/ConfigurationBase;->httpConf:Ltwitter4j/HttpClientConfiguration;

    .line 3649
    invoke-interface {v0}, Ltwitter4j/HttpClientConfiguration;->isPrettyDebugEnabled()Z

    move-result v9

    iget-object v0, p0, Ltwitter4j/conf/ConfigurationBase;->httpConf:Ltwitter4j/HttpClientConfiguration;

    invoke-interface {v0}, Ltwitter4j/HttpClientConfiguration;->isGZIPEnabled()Z

    move-result v10

    move-object v0, v11

    move-object v1, p0

    move v5, p1

    invoke-direct/range {v0 .. v10}, Ltwitter4j/conf/ConfigurationBase$MyHttpClientConfiguration;-><init>(Ltwitter4j/conf/ConfigurationBase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZIIZZ)V

    iput-object v11, p0, Ltwitter4j/conf/ConfigurationBase;->httpConf:Ltwitter4j/HttpClientConfiguration;

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method protected final setHttpProxySocks(Z)V
    .locals 12

    .line 3699
    new-instance v11, Ltwitter4j/conf/ConfigurationBase$MyHttpClientConfiguration;

    iget-object v0, p0, Ltwitter4j/conf/ConfigurationBase;->httpConf:Ltwitter4j/HttpClientConfiguration;

    invoke-interface {v0}, Ltwitter4j/HttpClientConfiguration;->getHttpProxyHost()Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Ltwitter4j/conf/ConfigurationBase;->httpConf:Ltwitter4j/HttpClientConfiguration;

    .line 3709
    invoke-interface {v0}, Ltwitter4j/HttpClientConfiguration;->getHttpProxyUser()Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Ltwitter4j/conf/ConfigurationBase;->httpConf:Ltwitter4j/HttpClientConfiguration;

    .line 3719
    invoke-interface {v0}, Ltwitter4j/HttpClientConfiguration;->getHttpProxyPassword()Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Ltwitter4j/conf/ConfigurationBase;->httpConf:Ltwitter4j/HttpClientConfiguration;

    .line 3729
    invoke-interface {v0}, Ltwitter4j/HttpClientConfiguration;->getHttpProxyPort()I

    move-result v5

    iget-object v0, p0, Ltwitter4j/conf/ConfigurationBase;->httpConf:Ltwitter4j/HttpClientConfiguration;

    .line 3749
    invoke-interface {v0}, Ltwitter4j/HttpClientConfiguration;->getHttpConnectionTimeout()I

    move-result v7

    iget-object v0, p0, Ltwitter4j/conf/ConfigurationBase;->httpConf:Ltwitter4j/HttpClientConfiguration;

    .line 3759
    invoke-interface {v0}, Ltwitter4j/HttpClientConfiguration;->getHttpReadTimeout()I

    move-result v8

    iget-object v0, p0, Ltwitter4j/conf/ConfigurationBase;->httpConf:Ltwitter4j/HttpClientConfiguration;

    .line 3769
    invoke-interface {v0}, Ltwitter4j/HttpClientConfiguration;->isPrettyDebugEnabled()Z

    move-result v9

    iget-object v0, p0, Ltwitter4j/conf/ConfigurationBase;->httpConf:Ltwitter4j/HttpClientConfiguration;

    invoke-interface {v0}, Ltwitter4j/HttpClientConfiguration;->isGZIPEnabled()Z

    move-result v10

    move-object v0, v11

    move-object v1, p0

    move v6, p1

    invoke-direct/range {v0 .. v10}, Ltwitter4j/conf/ConfigurationBase$MyHttpClientConfiguration;-><init>(Ltwitter4j/conf/ConfigurationBase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZIIZZ)V

    iput-object v11, p0, Ltwitter4j/conf/ConfigurationBase;->httpConf:Ltwitter4j/HttpClientConfiguration;

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method protected final setHttpProxyUser(Ljava/lang/String;)V
    .locals 12

    .line 3339
    new-instance v11, Ltwitter4j/conf/ConfigurationBase$MyHttpClientConfiguration;

    iget-object v0, p0, Ltwitter4j/conf/ConfigurationBase;->httpConf:Ltwitter4j/HttpClientConfiguration;

    invoke-interface {v0}, Ltwitter4j/HttpClientConfiguration;->getHttpProxyHost()Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Ltwitter4j/conf/ConfigurationBase;->httpConf:Ltwitter4j/HttpClientConfiguration;

    .line 3359
    invoke-interface {v0}, Ltwitter4j/HttpClientConfiguration;->getHttpProxyPassword()Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Ltwitter4j/conf/ConfigurationBase;->httpConf:Ltwitter4j/HttpClientConfiguration;

    .line 3369
    invoke-interface {v0}, Ltwitter4j/HttpClientConfiguration;->getHttpProxyPort()I

    move-result v5

    iget-object v0, p0, Ltwitter4j/conf/ConfigurationBase;->httpConf:Ltwitter4j/HttpClientConfiguration;

    .line 3379
    invoke-interface {v0}, Ltwitter4j/HttpClientConfiguration;->isHttpProxySocks()Z

    move-result v6

    iget-object v0, p0, Ltwitter4j/conf/ConfigurationBase;->httpConf:Ltwitter4j/HttpClientConfiguration;

    .line 3389
    invoke-interface {v0}, Ltwitter4j/HttpClientConfiguration;->getHttpConnectionTimeout()I

    move-result v7

    iget-object v0, p0, Ltwitter4j/conf/ConfigurationBase;->httpConf:Ltwitter4j/HttpClientConfiguration;

    .line 3399
    invoke-interface {v0}, Ltwitter4j/HttpClientConfiguration;->getHttpReadTimeout()I

    move-result v8

    iget-object v0, p0, Ltwitter4j/conf/ConfigurationBase;->httpConf:Ltwitter4j/HttpClientConfiguration;

    .line 3409
    invoke-interface {v0}, Ltwitter4j/HttpClientConfiguration;->isPrettyDebugEnabled()Z

    move-result v9

    iget-object v0, p0, Ltwitter4j/conf/ConfigurationBase;->httpConf:Ltwitter4j/HttpClientConfiguration;

    invoke-interface {v0}, Ltwitter4j/HttpClientConfiguration;->isGZIPEnabled()Z

    move-result v10

    move-object v0, v11

    move-object v1, p0

    move-object v3, p1

    invoke-direct/range {v0 .. v10}, Ltwitter4j/conf/ConfigurationBase$MyHttpClientConfiguration;-><init>(Ltwitter4j/conf/ConfigurationBase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZIIZZ)V

    iput-object v11, p0, Ltwitter4j/conf/ConfigurationBase;->httpConf:Ltwitter4j/HttpClientConfiguration;

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method protected final setHttpReadTimeout(I)V
    .locals 12

    .line 3939
    new-instance v11, Ltwitter4j/conf/ConfigurationBase$MyHttpClientConfiguration;

    iget-object v0, p0, Ltwitter4j/conf/ConfigurationBase;->httpConf:Ltwitter4j/HttpClientConfiguration;

    invoke-interface {v0}, Ltwitter4j/HttpClientConfiguration;->getHttpProxyHost()Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Ltwitter4j/conf/ConfigurationBase;->httpConf:Ltwitter4j/HttpClientConfiguration;

    .line 3949
    invoke-interface {v0}, Ltwitter4j/HttpClientConfiguration;->getHttpProxyUser()Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Ltwitter4j/conf/ConfigurationBase;->httpConf:Ltwitter4j/HttpClientConfiguration;

    .line 3959
    invoke-interface {v0}, Ltwitter4j/HttpClientConfiguration;->getHttpProxyPassword()Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Ltwitter4j/conf/ConfigurationBase;->httpConf:Ltwitter4j/HttpClientConfiguration;

    .line 3969
    invoke-interface {v0}, Ltwitter4j/HttpClientConfiguration;->getHttpProxyPort()I

    move-result v5

    iget-object v0, p0, Ltwitter4j/conf/ConfigurationBase;->httpConf:Ltwitter4j/HttpClientConfiguration;

    .line 3979
    invoke-interface {v0}, Ltwitter4j/HttpClientConfiguration;->isHttpProxySocks()Z

    move-result v6

    iget-object v0, p0, Ltwitter4j/conf/ConfigurationBase;->httpConf:Ltwitter4j/HttpClientConfiguration;

    .line 3989
    invoke-interface {v0}, Ltwitter4j/HttpClientConfiguration;->getHttpConnectionTimeout()I

    move-result v7

    iget-object v0, p0, Ltwitter4j/conf/ConfigurationBase;->httpConf:Ltwitter4j/HttpClientConfiguration;

    .line 4009
    invoke-interface {v0}, Ltwitter4j/HttpClientConfiguration;->isPrettyDebugEnabled()Z

    move-result v9

    iget-object v0, p0, Ltwitter4j/conf/ConfigurationBase;->httpConf:Ltwitter4j/HttpClientConfiguration;

    invoke-interface {v0}, Ltwitter4j/HttpClientConfiguration;->isGZIPEnabled()Z

    move-result v10

    move-object v0, v11

    move-object v1, p0

    move v8, p1

    invoke-direct/range {v0 .. v10}, Ltwitter4j/conf/ConfigurationBase$MyHttpClientConfiguration;-><init>(Ltwitter4j/conf/ConfigurationBase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZIIZZ)V

    iput-object v11, p0, Ltwitter4j/conf/ConfigurationBase;->httpConf:Ltwitter4j/HttpClientConfiguration;

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method protected final setHttpRetryCount(I)V
    .locals 0

    .line 4149
    iput p1, p0, Ltwitter4j/conf/ConfigurationBase;->httpRetryCount:I

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method protected final setHttpRetryIntervalSeconds(I)V
    .locals 0

    .line 4189
    iput p1, p0, Ltwitter4j/conf/ConfigurationBase;->httpRetryIntervalSeconds:I

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method protected final setHttpStreamingReadTimeout(I)V
    .locals 0

    .line 4109
    iput p1, p0, Ltwitter4j/conf/ConfigurationBase;->httpStreamingReadTimeout:I

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method protected setIncludeEmailEnabled(Z)V
    .locals 0

    .line 6699
    iput-boolean p1, p0, Ltwitter4j/conf/ConfigurationBase;->includeEmailEnabled:Z

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method protected setIncludeEntitiesEnabled(Z)V
    .locals 0

    .line 6239
    iput-boolean p1, p0, Ltwitter4j/conf/ConfigurationBase;->includeEntitiesEnabled:Z

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public setIncludeExtAltTextEnabled(Z)V
    .locals 0

    .line 6779
    iput-boolean p1, p0, Ltwitter4j/conf/ConfigurationBase;->includeExtAltTextEnabled:Z

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public setIncludeMyRetweetEnabled(Z)V
    .locals 0

    .line 6369
    iput-boolean p1, p0, Ltwitter4j/conf/ConfigurationBase;->includeMyRetweetEnabled:Z

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method protected final setJSONStoreEnabled(Z)V
    .locals 0

    .line 6909
    iput-boolean p1, p0, Ltwitter4j/conf/ConfigurationBase;->jsonStoreEnabled:Z

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method protected final setLoggerFactory(Ljava/lang/String;)V
    .locals 0

    .line 6279
    iput-object p1, p0, Ltwitter4j/conf/ConfigurationBase;->loggerFactory:Ljava/lang/String;

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method protected final setMBeanEnabled(Z)V
    .locals 0

    .line 6999
    iput-boolean p1, p0, Ltwitter4j/conf/ConfigurationBase;->mbeanEnabled:Z

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method protected final setMediaProvider(Ljava/lang/String;)V
    .locals 0

    .line 7449
    iput-object p1, p0, Ltwitter4j/conf/ConfigurationBase;->mediaProvider:Ljava/lang/String;

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method protected final setMediaProviderAPIKey(Ljava/lang/String;)V
    .locals 0

    .line 7539
    iput-object p1, p0, Ltwitter4j/conf/ConfigurationBase;->mediaProviderAPIKey:Ljava/lang/String;

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method protected final setMediaProviderParameters(Ljava/util/Properties;)V
    .locals 0

    .line 7629
    iput-object p1, p0, Ltwitter4j/conf/ConfigurationBase;->mediaProviderParameters:Ljava/util/Properties;

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method protected final setOAuth2AccessToken(Ljava/lang/String;)V
    .locals 0

    .line 4799
    iput-object p1, p0, Ltwitter4j/conf/ConfigurationBase;->oAuth2AccessToken:Ljava/lang/String;

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method protected final setOAuth2InvalidateTokenURL(Ljava/lang/String;)V
    .locals 0

    .line 6009
    iput-object p1, p0, Ltwitter4j/conf/ConfigurationBase;->oAuth2InvalidateTokenURL:Ljava/lang/String;

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method protected final setOAuth2Scope(Ljava/lang/String;)V
    .locals 0

    .line 4839
    iput-object p1, p0, Ltwitter4j/conf/ConfigurationBase;->oAuth2Scope:Ljava/lang/String;

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method protected final setOAuth2TokenType(Ljava/lang/String;)V
    .locals 0

    .line 4659
    iput-object p1, p0, Ltwitter4j/conf/ConfigurationBase;->oAuth2TokenType:Ljava/lang/String;

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method protected final setOAuth2TokenURL(Ljava/lang/String;)V
    .locals 0

    .line 5919
    iput-object p1, p0, Ltwitter4j/conf/ConfigurationBase;->oAuth2TokenURL:Ljava/lang/String;

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method protected final setOAuthAccessToken(Ljava/lang/String;)V
    .locals 0

    .line 4479
    iput-object p1, p0, Ltwitter4j/conf/ConfigurationBase;->oAuthAccessToken:Ljava/lang/String;

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method protected final setOAuthAccessTokenSecret(Ljava/lang/String;)V
    .locals 0

    .line 4569
    iput-object p1, p0, Ltwitter4j/conf/ConfigurationBase;->oAuthAccessTokenSecret:Ljava/lang/String;

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method protected final setOAuthAccessTokenURL(Ljava/lang/String;)V
    .locals 0

    .line 5739
    iput-object p1, p0, Ltwitter4j/conf/ConfigurationBase;->oAuthAccessTokenURL:Ljava/lang/String;

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method protected final setOAuthAuthenticationURL(Ljava/lang/String;)V
    .locals 0

    .line 5829
    iput-object p1, p0, Ltwitter4j/conf/ConfigurationBase;->oAuthAuthenticationURL:Ljava/lang/String;

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method protected final setOAuthAuthorizationURL(Ljava/lang/String;)V
    .locals 0

    .line 5649
    iput-object p1, p0, Ltwitter4j/conf/ConfigurationBase;->oAuthAuthorizationURL:Ljava/lang/String;

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method protected final setOAuthConsumerKey(Ljava/lang/String;)V
    .locals 0

    .line 4299
    iput-object p1, p0, Ltwitter4j/conf/ConfigurationBase;->oAuthConsumerKey:Ljava/lang/String;

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method protected final setOAuthConsumerSecret(Ljava/lang/String;)V
    .locals 0

    .line 4389
    iput-object p1, p0, Ltwitter4j/conf/ConfigurationBase;->oAuthConsumerSecret:Ljava/lang/String;

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method protected final setOAuthRequestTokenURL(Ljava/lang/String;)V
    .locals 0

    .line 5559
    iput-object p1, p0, Ltwitter4j/conf/ConfigurationBase;->oAuthRequestTokenURL:Ljava/lang/String;

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method protected final setPassword(Ljava/lang/String;)V
    .locals 0

    .line 2919
    iput-object p1, p0, Ltwitter4j/conf/ConfigurationBase;->password:Ljava/lang/String;

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method protected final setPrettyDebugEnabled(Z)V
    .locals 12

    .line 2959
    new-instance v11, Ltwitter4j/conf/ConfigurationBase$MyHttpClientConfiguration;

    iget-object v0, p0, Ltwitter4j/conf/ConfigurationBase;->httpConf:Ltwitter4j/HttpClientConfiguration;

    invoke-interface {v0}, Ltwitter4j/HttpClientConfiguration;->getHttpProxyHost()Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Ltwitter4j/conf/ConfigurationBase;->httpConf:Ltwitter4j/HttpClientConfiguration;

    .line 2969
    invoke-interface {v0}, Ltwitter4j/HttpClientConfiguration;->getHttpProxyUser()Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Ltwitter4j/conf/ConfigurationBase;->httpConf:Ltwitter4j/HttpClientConfiguration;

    .line 2979
    invoke-interface {v0}, Ltwitter4j/HttpClientConfiguration;->getHttpProxyPassword()Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Ltwitter4j/conf/ConfigurationBase;->httpConf:Ltwitter4j/HttpClientConfiguration;

    .line 2989
    invoke-interface {v0}, Ltwitter4j/HttpClientConfiguration;->getHttpProxyPort()I

    move-result v5

    iget-object v0, p0, Ltwitter4j/conf/ConfigurationBase;->httpConf:Ltwitter4j/HttpClientConfiguration;

    .line 2999
    invoke-interface {v0}, Ltwitter4j/HttpClientConfiguration;->isHttpProxySocks()Z

    move-result v6

    iget-object v0, p0, Ltwitter4j/conf/ConfigurationBase;->httpConf:Ltwitter4j/HttpClientConfiguration;

    .line 3009
    invoke-interface {v0}, Ltwitter4j/HttpClientConfiguration;->getHttpConnectionTimeout()I

    move-result v7

    iget-object v0, p0, Ltwitter4j/conf/ConfigurationBase;->httpConf:Ltwitter4j/HttpClientConfiguration;

    .line 3019
    invoke-interface {v0}, Ltwitter4j/HttpClientConfiguration;->getHttpReadTimeout()I

    move-result v8

    iget-object v0, p0, Ltwitter4j/conf/ConfigurationBase;->httpConf:Ltwitter4j/HttpClientConfiguration;

    .line 3029
    invoke-interface {v0}, Ltwitter4j/HttpClientConfiguration;->isGZIPEnabled()Z

    move-result v10

    move-object v0, v11

    move-object v1, p0

    move v9, p1

    invoke-direct/range {v0 .. v10}, Ltwitter4j/conf/ConfigurationBase$MyHttpClientConfiguration;-><init>(Ltwitter4j/conf/ConfigurationBase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZIIZZ)V

    iput-object v11, p0, Ltwitter4j/conf/ConfigurationBase;->httpConf:Ltwitter4j/HttpClientConfiguration;

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method protected final setRestBaseURL(Ljava/lang/String;)V
    .locals 0

    .line 5109
    iput-object p1, p0, Ltwitter4j/conf/ConfigurationBase;->restBaseURL:Ljava/lang/String;

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method protected final setSiteStreamBaseURL(Ljava/lang/String;)V
    .locals 0

    .line 5469
    iput-object p1, p0, Ltwitter4j/conf/ConfigurationBase;->siteStreamBaseURL:Ljava/lang/String;

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method protected final setStallWarningsEnabled(Z)V
    .locals 0

    .line 7269
    iput-boolean p1, p0, Ltwitter4j/conf/ConfigurationBase;->stallWarningsEnabled:Z

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method protected final setStreamBaseURL(Ljava/lang/String;)V
    .locals 0

    .line 5289
    iput-object p1, p0, Ltwitter4j/conf/ConfigurationBase;->streamBaseURL:Ljava/lang/String;

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method protected final setStreamThreadName(Ljava/lang/String;)V
    .locals 0

    .line 7719
    iput-object p1, p0, Ltwitter4j/conf/ConfigurationBase;->streamThreadName:Ljava/lang/String;

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public setTrimUserEnabled(Z)V
    .locals 0

    .line 6739
    iput-boolean p1, p0, Ltwitter4j/conf/ConfigurationBase;->trimUserEnabled:Z

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public setTweetModeExtended(Z)V
    .locals 0

    .line 6819
    iput-boolean p1, p0, Ltwitter4j/conf/ConfigurationBase;->tweetModeExtended:Z

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method protected final setUploadBaseURL(Ljava/lang/String;)V
    .locals 0

    .line 5199
    iput-object p1, p0, Ltwitter4j/conf/ConfigurationBase;->uploadBaseURL:Ljava/lang/String;

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method protected final setUser(Ljava/lang/String;)V
    .locals 0

    .line 2779
    iput-object p1, p0, Ltwitter4j/conf/ConfigurationBase;->user:Ljava/lang/String;

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method protected final setUserStreamBaseURL(Ljava/lang/String;)V
    .locals 0

    .line 5379
    iput-object p1, p0, Ltwitter4j/conf/ConfigurationBase;->userStreamBaseURL:Ljava/lang/String;

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method protected final setUserStreamRepliesAllEnabled(Z)V
    .locals 0

    .line 7139
    iput-boolean p1, p0, Ltwitter4j/conf/ConfigurationBase;->userStreamRepliesAllEnabled:Z

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method protected final setUserStreamWithFollowingsEnabled(Z)V
    .locals 0

    .line 7179
    iput-boolean p1, p0, Ltwitter4j/conf/ConfigurationBase;->userStreamWithFollowingsEnabled:Z

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 9209
    new-instance v0, Ljava/lang/StringBuilder;

    const v1, 0x5d0513c7

    invoke-static {v1}, Lcom/liapp/y;->ڴݮگ֮ت(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Ltwitter4j/conf/ConfigurationBase;->debug:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const v1, 0x6d1926b8

    invoke-static {v1}, Lcom/liapp/y;->ٱڳܴڭܩ(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/conf/ConfigurationBase;->user:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const v1, 0x7d653b0d

    invoke-static {v1}, Lcom/liapp/y;->حֲݴܳޯ(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/conf/ConfigurationBase;->password:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const v1, 0x5d051d7f

    invoke-static {v1}, Lcom/liapp/y;->ڴݮگ֮ت(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/conf/ConfigurationBase;->httpConf:Ltwitter4j/HttpClientConfiguration;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const v1, 0x22403d4e

    invoke-static {v1}, Lcom/liapp/y;->ֲֳگܱޭ(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Ltwitter4j/conf/ConfigurationBase;->httpStreamingReadTimeout:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const v1, -0x2257fce4

    invoke-static {v1}, Lcom/liapp/y;->״دش۲ݮ(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Ltwitter4j/conf/ConfigurationBase;->httpRetryCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const v1, 0x542c348a

    invoke-static {v1}, Lcom/liapp/y;->׳ֳֳ֬د(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Ltwitter4j/conf/ConfigurationBase;->httpRetryIntervalSeconds:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const v1, -0x2257fe64

    invoke-static {v1}, Lcom/liapp/y;->״دش۲ݮ(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/conf/ConfigurationBase;->oAuthConsumerKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const v1, -0x450c5897

    invoke-static {v1}, Lcom/liapp/y;->ڳݬ٬ۮݪ(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/conf/ConfigurationBase;->oAuthConsumerSecret:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const v1, 0x6d192d58

    invoke-static {v1}, Lcom/liapp/y;->ٱڳܴڭܩ(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/conf/ConfigurationBase;->oAuthAccessToken:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const v1, 0x6d192ce0

    invoke-static {v1}, Lcom/liapp/y;->ٱڳܴڭܩ(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/conf/ConfigurationBase;->oAuthAccessTokenSecret:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const v1, 0x542c30b2

    invoke-static {v1}, Lcom/liapp/y;->׳ֳֳ֬د(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/conf/ConfigurationBase;->oAuth2TokenType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const v1, -0x2257fbb4

    invoke-static {v1}, Lcom/liapp/y;->״دش۲ݮ(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/conf/ConfigurationBase;->oAuth2AccessToken:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const v1, -0x450c5cb7

    invoke-static {v1}, Lcom/liapp/y;->ڳݬ٬ۮݪ(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/conf/ConfigurationBase;->oAuth2Scope:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const v1, -0x2257c544

    invoke-static {v1}, Lcom/liapp/y;->״دش۲ݮ(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/conf/ConfigurationBase;->oAuthRequestTokenURL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const v1, 0x5d0525af

    invoke-static {v1}, Lcom/liapp/y;->ڴݮگ֮ت(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/conf/ConfigurationBase;->oAuthAuthorizationURL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const v1, 0x3377a90b

    invoke-static {v1}, Lcom/liapp/y;->ׯ״ٲ֬ب(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/conf/ConfigurationBase;->oAuthAccessTokenURL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const v1, 0x6d191370

    invoke-static {v1}, Lcom/liapp/y;->ٱڳܴڭܩ(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/conf/ConfigurationBase;->oAuthAuthenticationURL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const v1, 0x5d0526c7

    invoke-static {v1}, Lcom/liapp/y;->ڴݮگ֮ت(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/conf/ConfigurationBase;->oAuth2TokenURL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const v1, 0x224001ee

    invoke-static {v1}, Lcom/liapp/y;->ֲֳگܱޭ(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/conf/ConfigurationBase;->oAuth2InvalidateTokenURL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const v1, 0x542c0ba2

    invoke-static {v1}, Lcom/liapp/y;->׳ֳֳ֬د(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/conf/ConfigurationBase;->restBaseURL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const v1, 0x6d191418

    invoke-static {v1}, Lcom/liapp/y;->ٱڳܴڭܩ(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/conf/ConfigurationBase;->streamBaseURL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const v1, 0x5d052337

    invoke-static {v1}, Lcom/liapp/y;->ڴݮگ֮ت(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/conf/ConfigurationBase;->userStreamBaseURL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const v1, -0x450c6407

    invoke-static {v1}, Lcom/liapp/y;->ڳݬ٬ۮݪ(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/conf/ConfigurationBase;->siteStreamBaseURL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const v1, 0x22400236

    invoke-static {v1}, Lcom/liapp/y;->ֲֳگܱޭ(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/conf/ConfigurationBase;->uploadBaseURL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const v1, 0x7d65043d

    invoke-static {v1}, Lcom/liapp/y;->حֲݴܳޯ(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/conf/ConfigurationBase;->dispatcherImpl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const v1, 0x5d052c7f

    invoke-static {v1}, Lcom/liapp/y;->ڴݮگ֮ت(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Ltwitter4j/conf/ConfigurationBase;->asyncNumThreads:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const v1, -0x2257ccb4

    invoke-static {v1}, Lcom/liapp/y;->״دش۲ݮ(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/conf/ConfigurationBase;->loggerFactory:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const v1, 0x7d6506d5

    invoke-static {v1}, Lcom/liapp/y;->حֲݴܳޯ(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Ltwitter4j/conf/ConfigurationBase;->contributingTo:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const v1, 0x5d052e5f

    invoke-static {v1}, Lcom/liapp/y;->ڴݮگ֮ت(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Ltwitter4j/conf/ConfigurationBase;->includeMyRetweetEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const v1, -0x450c68cf

    invoke-static {v1}, Lcom/liapp/y;->ڳݬ٬ۮݪ(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Ltwitter4j/conf/ConfigurationBase;->includeEntitiesEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const v1, 0x7d65007d

    invoke-static {v1}, Lcom/liapp/y;->حֲݴܳޯ(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Ltwitter4j/conf/ConfigurationBase;->trimUserEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const v1, 0x5d052837

    invoke-static {v1}, Lcom/liapp/y;->ڴݮگ֮ت(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Ltwitter4j/conf/ConfigurationBase;->includeExtAltTextEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const v1, 0x22400b9e

    invoke-static {v1}, Lcom/liapp/y;->ֲֳگܱޭ(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Ltwitter4j/conf/ConfigurationBase;->tweetModeExtended:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const v1, -0x2257cb9c

    invoke-static {v1}, Lcom/liapp/y;->״دش۲ݮ(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Ltwitter4j/conf/ConfigurationBase;->includeEmailEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const v1, 0x7d650305

    invoke-static {v1}, Lcom/liapp/y;->حֲݴܳޯ(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Ltwitter4j/conf/ConfigurationBase;->jsonStoreEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const v1, 0x3377b8b3

    invoke-static {v1}, Lcom/liapp/y;->ׯ״ٲ֬ب(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Ltwitter4j/conf/ConfigurationBase;->mbeanEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const v1, 0x2240153e

    invoke-static {v1}, Lcom/liapp/y;->ֲֳگܱޭ(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Ltwitter4j/conf/ConfigurationBase;->userStreamRepliesAllEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const v1, 0x542c1f7a

    invoke-static {v1}, Lcom/liapp/y;->׳ֳֳ֬د(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Ltwitter4j/conf/ConfigurationBase;->userStreamWithFollowingsEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const v1, -0x2257d66c

    invoke-static {v1}, Lcom/liapp/y;->״دش۲ݮ(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Ltwitter4j/conf/ConfigurationBase;->stallWarningsEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const v1, 0x22401606

    invoke-static {v1}, Lcom/liapp/y;->ֲֳگܱޭ(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Ltwitter4j/conf/ConfigurationBase;->applicationOnlyAuthEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const v1, 0x542c1a5a

    invoke-static {v1}, Lcom/liapp/y;->׳ֳֳ֬د(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/conf/ConfigurationBase;->mediaProvider:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const v1, 0x224010b6

    invoke-static {v1}, Lcom/liapp/y;->ֲֳگܱޭ(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/conf/ConfigurationBase;->mediaProviderAPIKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const v1, 0x542c18a2

    invoke-static {v1}, Lcom/liapp/y;->׳ֳֳ֬د(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/conf/ConfigurationBase;->mediaProviderParameters:Ljava/util/Properties;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const v1, 0x3377bfcb

    invoke-static {v1}, Lcom/liapp/y;->ׯ״ٲ֬ب(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Ltwitter4j/conf/ConfigurationBase;->daemonEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const v1, 0x3377bf7b

    invoke-static {v1}, Lcom/liapp/y;->ׯ״ٲ֬ب(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/conf/ConfigurationBase;->streamThreadName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const v1, -0x22473c5c

    invoke-static {v1}, Lcom/liapp/y;->״دش۲ݮ(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method
