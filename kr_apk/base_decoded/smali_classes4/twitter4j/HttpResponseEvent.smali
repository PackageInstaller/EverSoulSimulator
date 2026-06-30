.class public final Ltwitter4j/HttpResponseEvent;
.super Ljava/lang/Object;
.source "HttpResponseEvent.java"


# instance fields
.field private final request:Ltwitter4j/HttpRequest;

.field private final response:Ltwitter4j/HttpResponse;

.field private final twitterException:Ltwitter4j/TwitterException;


# direct methods
.method constructor <init>(Ltwitter4j/HttpRequest;Ltwitter4j/HttpResponse;Ltwitter4j/TwitterException;)V
    .locals 0

    .line 319
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 329
    iput-object p1, p0, Ltwitter4j/HttpResponseEvent;->request:Ltwitter4j/HttpRequest;

    .line 339
    iput-object p2, p0, Ltwitter4j/HttpResponseEvent;->response:Ltwitter4j/HttpResponse;

    .line 349
    iput-object p3, p0, Ltwitter4j/HttpResponseEvent;->twitterException:Ltwitter4j/TwitterException;

    return-void

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_6

    .line 719
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_2

    .line 739
    :cond_1
    check-cast p1, Ltwitter4j/HttpResponseEvent;

    .line 759
    iget-object v2, p0, Ltwitter4j/HttpResponseEvent;->request:Ltwitter4j/HttpRequest;

    if-eqz v2, :cond_2

    iget-object v3, p1, Ltwitter4j/HttpResponseEvent;->request:Ltwitter4j/HttpRequest;

    invoke-virtual {v2, v3}, Ltwitter4j/HttpRequest;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_0

    :cond_2
    iget-object v2, p1, Ltwitter4j/HttpResponseEvent;->request:Ltwitter4j/HttpRequest;

    if-eqz v2, :cond_3

    :goto_0
    return v1

    .line 779
    :cond_3
    iget-object v2, p0, Ltwitter4j/HttpResponseEvent;->response:Ltwitter4j/HttpResponse;

    iget-object p1, p1, Ltwitter4j/HttpResponseEvent;->response:Ltwitter4j/HttpResponse;

    if-eqz v2, :cond_4

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    goto :goto_1

    :cond_4
    if-eqz p1, :cond_5

    :goto_1
    return v1

    :cond_5
    return v0

    :cond_6
    :goto_2
    return v1

    .array-data 1
    .end array-data
.end method

.method public getRequest()Ltwitter4j/HttpRequest;
    .locals 1

    .line 439
    iget-object v0, p0, Ltwitter4j/HttpResponseEvent;->request:Ltwitter4j/HttpRequest;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getResponse()Ltwitter4j/HttpResponse;
    .locals 1

    .line 529
    iget-object v0, p0, Ltwitter4j/HttpResponseEvent;->response:Ltwitter4j/HttpResponse;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getTwitterException()Ltwitter4j/TwitterException;
    .locals 1

    .line 619
    iget-object v0, p0, Ltwitter4j/HttpResponseEvent;->twitterException:Ltwitter4j/TwitterException;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public hashCode()I
    .locals 3

    .line 859
    iget-object v0, p0, Ltwitter4j/HttpResponseEvent;->request:Ltwitter4j/HttpRequest;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ltwitter4j/HttpRequest;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    .line 869
    iget-object v2, p0, Ltwitter4j/HttpResponseEvent;->response:Ltwitter4j/HttpResponse;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_1
    add-int/2addr v0, v1

    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public isAuthenticated()Z
    .locals 1

    .line 659
    iget-object v0, p0, Ltwitter4j/HttpResponseEvent;->request:Ltwitter4j/HttpRequest;

    invoke-virtual {v0}, Ltwitter4j/HttpRequest;->getAuthorization()Ltwitter4j/auth/Authorization;

    move-result-object v0

    invoke-interface {v0}, Ltwitter4j/auth/Authorization;->isEnabled()Z

    move-result v0

    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 929
    new-instance v0, Ljava/lang/StringBuilder;

    const v1, 0x7d7b0fad

    invoke-static {v1}, Lcom/liapp/y;->حֲݴܳޯ(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Ltwitter4j/HttpResponseEvent;->request:Ltwitter4j/HttpRequest;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const v1, 0x54320d62

    invoke-static {v1}, Lcom/liapp/y;->׳ֳֳ֬د(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/HttpResponseEvent;->response:Ltwitter4j/HttpResponse;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .array-data 1
    .end array-data
.end method
