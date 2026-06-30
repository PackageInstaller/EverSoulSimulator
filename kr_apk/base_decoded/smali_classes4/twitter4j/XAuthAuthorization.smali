.class public Ltwitter4j/XAuthAuthorization;
.super Ljava/lang/Object;
.source "XAuthAuthorization.java"

# interfaces
.implements Ltwitter4j/auth/Authorization;
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x64c206695caae616L


# instance fields
.field private final basic:Ltwitter4j/auth/BasicAuthorization;

.field private consumerKey:Ljava/lang/String;

.field private consumerSecret:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ltwitter4j/auth/BasicAuthorization;)V
    .locals 0

    .line 339
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 349
    iput-object p1, p0, Ltwitter4j/XAuthAuthorization;->basic:Ltwitter4j/auth/BasicAuthorization;

    return-void

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public getAuthorizationHeader(Ltwitter4j/HttpRequest;)Ljava/lang/String;
    .locals 1

    .line 399
    iget-object v0, p0, Ltwitter4j/XAuthAuthorization;->basic:Ltwitter4j/auth/BasicAuthorization;

    invoke-virtual {v0, p1}, Ltwitter4j/auth/BasicAuthorization;->getAuthorizationHeader(Ltwitter4j/HttpRequest;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    nop

    .array-data 1
    .end array-data
.end method

.method public getConsumerKey()Ljava/lang/String;
    .locals 1

    .line 519
    iget-object v0, p0, Ltwitter4j/XAuthAuthorization;->consumerKey:Ljava/lang/String;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getConsumerSecret()Ljava/lang/String;
    .locals 1

    .line 559
    iget-object v0, p0, Ltwitter4j/XAuthAuthorization;->consumerSecret:Ljava/lang/String;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getPassword()Ljava/lang/String;
    .locals 1

    .line 479
    iget-object v0, p0, Ltwitter4j/XAuthAuthorization;->basic:Ltwitter4j/auth/BasicAuthorization;

    invoke-virtual {v0}, Ltwitter4j/auth/BasicAuthorization;->getPassword()Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getUserId()Ljava/lang/String;
    .locals 1

    .line 439
    iget-object v0, p0, Ltwitter4j/XAuthAuthorization;->basic:Ltwitter4j/auth/BasicAuthorization;

    invoke-virtual {v0}, Ltwitter4j/auth/BasicAuthorization;->getUserId()Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public isEnabled()Z
    .locals 1

    .line 659
    iget-object v0, p0, Ltwitter4j/XAuthAuthorization;->basic:Ltwitter4j/auth/BasicAuthorization;

    invoke-virtual {v0}, Ltwitter4j/auth/BasicAuthorization;->isEnabled()Z

    move-result v0

    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public declared-synchronized setOAuthConsumer(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    monitor-enter p0

    .line 599
    :try_start_0
    iput-object p1, p0, Ltwitter4j/XAuthAuthorization;->consumerKey:Ljava/lang/String;

    .line 609
    iput-object p2, p0, Ltwitter4j/XAuthAuthorization;->consumerSecret:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 619
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    .array-data 1
    .end array-data
.end method
