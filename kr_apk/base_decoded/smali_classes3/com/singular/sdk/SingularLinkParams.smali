.class public Lcom/singular/sdk/SingularLinkParams;
.super Ljava/lang/Object;
.source "SingularLinkParams.java"


# instance fields
.field private deeplink:Ljava/lang/String;

.field private isDeferred:Z

.field private passthrough:Ljava/lang/String;

.field private url:Landroid/net/Uri;

.field private urlParameters:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ZLandroid/net/Uri;)V
    .locals 0

    .line 179
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 189
    iput-object p1, p0, Lcom/singular/sdk/SingularLinkParams;->deeplink:Ljava/lang/String;

    .line 199
    iput-object p2, p0, Lcom/singular/sdk/SingularLinkParams;->passthrough:Ljava/lang/String;

    .line 209
    iput-boolean p3, p0, Lcom/singular/sdk/SingularLinkParams;->isDeferred:Z

    .line 219
    iput-object p4, p0, Lcom/singular/sdk/SingularLinkParams;->url:Landroid/net/Uri;

    return-void

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public getDeeplink()Ljava/lang/String;
    .locals 1

    .line 259
    iget-object v0, p0, Lcom/singular/sdk/SingularLinkParams;->deeplink:Ljava/lang/String;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getPassthrough()Ljava/lang/String;
    .locals 1

    .line 299
    iget-object v0, p0, Lcom/singular/sdk/SingularLinkParams;->passthrough:Ljava/lang/String;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getUrlParameters()Ljava/util/HashMap;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 409
    iget-object v0, p0, Lcom/singular/sdk/SingularLinkParams;->urlParameters:Ljava/util/HashMap;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/singular/sdk/SingularLinkParams;->url:Landroid/net/Uri;

    invoke-static {v0}, Lcom/singular/sdk/internal/utils/UriUtils;->isValid(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 419
    iget-object v0, p0, Lcom/singular/sdk/SingularLinkParams;->url:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getQueryParameterNames()Ljava/util/Set;

    move-result-object v0

    .line 429
    new-instance v1, Ljava/util/HashMap;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    iput-object v1, p0, Lcom/singular/sdk/SingularLinkParams;->urlParameters:Ljava/util/HashMap;

    .line 439
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 449
    iget-object v2, p0, Lcom/singular/sdk/SingularLinkParams;->urlParameters:Ljava/util/HashMap;

    iget-object v3, p0, Lcom/singular/sdk/SingularLinkParams;->url:Landroid/net/Uri;

    invoke-virtual {v3, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 489
    :cond_0
    iget-object v0, p0, Lcom/singular/sdk/SingularLinkParams;->urlParameters:Ljava/util/HashMap;

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    :goto_1
    return-object v0

    .array-data 1
    .end array-data
.end method

.method public isDeferred()Z
    .locals 1

    .line 339
    iget-boolean v0, p0, Lcom/singular/sdk/SingularLinkParams;->isDeferred:Z

    return v0

    nop

    .array-data 1
    .end array-data
.end method
