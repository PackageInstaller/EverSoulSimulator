.class Ltwitter4j/conf/ConfigurationBase$MyHttpClientConfiguration;
.super Ljava/lang/Object;
.source "ConfigurationBase.java"

# interfaces
.implements Ltwitter4j/HttpClientConfiguration;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltwitter4j/conf/ConfigurationBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyHttpClientConfiguration"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x722bb3271b80bc82L


# instance fields
.field private gzipEnabled:Z

.field private httpConnectionTimeout:I

.field private httpProxyHost:Ljava/lang/String;

.field private httpProxyPassword:Ljava/lang/String;

.field private httpProxyPort:I

.field private httpProxySocks:Z

.field private httpProxyUser:Ljava/lang/String;

.field private httpReadTimeout:I

.field private prettyDebug:Z

.field final synthetic this$0:Ltwitter4j/conf/ConfigurationBase;


# direct methods
.method constructor <init>(Ltwitter4j/conf/ConfigurationBase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZIIZZ)V
    .locals 0

    .line 1229
    iput-object p1, p0, Ltwitter4j/conf/ConfigurationBase$MyHttpClientConfiguration;->this$0:Ltwitter4j/conf/ConfigurationBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1239
    iput-object p2, p0, Ltwitter4j/conf/ConfigurationBase$MyHttpClientConfiguration;->httpProxyHost:Ljava/lang/String;

    .line 1249
    iput-object p3, p0, Ltwitter4j/conf/ConfigurationBase$MyHttpClientConfiguration;->httpProxyUser:Ljava/lang/String;

    .line 1259
    iput-object p4, p0, Ltwitter4j/conf/ConfigurationBase$MyHttpClientConfiguration;->httpProxyPassword:Ljava/lang/String;

    .line 1269
    iput p5, p0, Ltwitter4j/conf/ConfigurationBase$MyHttpClientConfiguration;->httpProxyPort:I

    .line 1279
    iput-boolean p6, p0, Ltwitter4j/conf/ConfigurationBase$MyHttpClientConfiguration;->httpProxySocks:Z

    .line 1289
    iput p7, p0, Ltwitter4j/conf/ConfigurationBase$MyHttpClientConfiguration;->httpConnectionTimeout:I

    .line 1299
    iput p8, p0, Ltwitter4j/conf/ConfigurationBase$MyHttpClientConfiguration;->httpReadTimeout:I

    .line 1309
    iput-boolean p9, p0, Ltwitter4j/conf/ConfigurationBase$MyHttpClientConfiguration;->prettyDebug:Z

    .line 1319
    iput-boolean p10, p0, Ltwitter4j/conf/ConfigurationBase$MyHttpClientConfiguration;->gzipEnabled:Z

    return-void

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_f

    .line 1929
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_3

    .line 1949
    :cond_1
    check-cast p1, Ltwitter4j/conf/ConfigurationBase$MyHttpClientConfiguration;

    .line 1969
    iget-boolean v2, p0, Ltwitter4j/conf/ConfigurationBase$MyHttpClientConfiguration;->gzipEnabled:Z

    iget-boolean v3, p1, Ltwitter4j/conf/ConfigurationBase$MyHttpClientConfiguration;->gzipEnabled:Z

    if-eq v2, v3, :cond_2

    return v1

    .line 1979
    :cond_2
    iget-boolean v2, p0, Ltwitter4j/conf/ConfigurationBase$MyHttpClientConfiguration;->httpProxySocks:Z

    iget-boolean v3, p1, Ltwitter4j/conf/ConfigurationBase$MyHttpClientConfiguration;->httpProxySocks:Z

    if-eq v2, v3, :cond_3

    return v1

    .line 1989
    :cond_3
    iget v4, p0, Ltwitter4j/conf/ConfigurationBase$MyHttpClientConfiguration;->httpConnectionTimeout:I

    iget v5, p1, Ltwitter4j/conf/ConfigurationBase$MyHttpClientConfiguration;->httpConnectionTimeout:I

    if-eq v4, v5, :cond_4

    return v1

    .line 1999
    :cond_4
    iget v4, p0, Ltwitter4j/conf/ConfigurationBase$MyHttpClientConfiguration;->httpProxyPort:I

    iget v5, p1, Ltwitter4j/conf/ConfigurationBase$MyHttpClientConfiguration;->httpProxyPort:I

    if-eq v4, v5, :cond_5

    return v1

    :cond_5
    if-eq v2, v3, :cond_6

    return v1

    .line 2019
    :cond_6
    iget v2, p0, Ltwitter4j/conf/ConfigurationBase$MyHttpClientConfiguration;->httpReadTimeout:I

    iget v3, p1, Ltwitter4j/conf/ConfigurationBase$MyHttpClientConfiguration;->httpReadTimeout:I

    if-eq v2, v3, :cond_7

    return v1

    .line 2029
    :cond_7
    iget-boolean v2, p0, Ltwitter4j/conf/ConfigurationBase$MyHttpClientConfiguration;->prettyDebug:Z

    iget-boolean v3, p1, Ltwitter4j/conf/ConfigurationBase$MyHttpClientConfiguration;->prettyDebug:Z

    if-eq v2, v3, :cond_8

    return v1

    .line 2039
    :cond_8
    iget-object v2, p0, Ltwitter4j/conf/ConfigurationBase$MyHttpClientConfiguration;->httpProxyHost:Ljava/lang/String;

    if-eqz v2, :cond_9

    iget-object v3, p1, Ltwitter4j/conf/ConfigurationBase$MyHttpClientConfiguration;->httpProxyHost:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    goto :goto_0

    :cond_9
    iget-object v2, p1, Ltwitter4j/conf/ConfigurationBase$MyHttpClientConfiguration;->httpProxyHost:Ljava/lang/String;

    if-eqz v2, :cond_a

    :goto_0
    return v1

    .line 2059
    :cond_a
    iget-object v2, p0, Ltwitter4j/conf/ConfigurationBase$MyHttpClientConfiguration;->httpProxyPassword:Ljava/lang/String;

    if-eqz v2, :cond_b

    iget-object v3, p1, Ltwitter4j/conf/ConfigurationBase$MyHttpClientConfiguration;->httpProxyPassword:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c

    goto :goto_1

    :cond_b
    iget-object v2, p1, Ltwitter4j/conf/ConfigurationBase$MyHttpClientConfiguration;->httpProxyPassword:Ljava/lang/String;

    if-eqz v2, :cond_c

    :goto_1
    return v1

    .line 2079
    :cond_c
    iget-object v2, p0, Ltwitter4j/conf/ConfigurationBase$MyHttpClientConfiguration;->httpProxyUser:Ljava/lang/String;

    iget-object p1, p1, Ltwitter4j/conf/ConfigurationBase$MyHttpClientConfiguration;->httpProxyUser:Ljava/lang/String;

    if-eqz v2, :cond_d

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_e

    goto :goto_2

    :cond_d
    if-eqz p1, :cond_e

    :goto_2
    return v1

    :cond_e
    return v0

    :cond_f
    :goto_3
    return v1

    nop

    .array-data 1
    .end array-data
.end method

.method public getHttpConnectionTimeout()I
    .locals 1

    .line 1619
    iget v0, p0, Ltwitter4j/conf/ConfigurationBase$MyHttpClientConfiguration;->httpConnectionTimeout:I

    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getHttpProxyHost()Ljava/lang/String;
    .locals 1

    .line 1369
    iget-object v0, p0, Ltwitter4j/conf/ConfigurationBase$MyHttpClientConfiguration;->httpProxyHost:Ljava/lang/String;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getHttpProxyPassword()Ljava/lang/String;
    .locals 1

    .line 1519
    iget-object v0, p0, Ltwitter4j/conf/ConfigurationBase$MyHttpClientConfiguration;->httpProxyPassword:Ljava/lang/String;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getHttpProxyPort()I
    .locals 1

    .line 1419
    iget v0, p0, Ltwitter4j/conf/ConfigurationBase$MyHttpClientConfiguration;->httpProxyPort:I

    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getHttpProxyUser()Ljava/lang/String;
    .locals 1

    .line 1469
    iget-object v0, p0, Ltwitter4j/conf/ConfigurationBase$MyHttpClientConfiguration;->httpProxyUser:Ljava/lang/String;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getHttpReadTimeout()I
    .locals 1

    .line 1669
    iget v0, p0, Ltwitter4j/conf/ConfigurationBase$MyHttpClientConfiguration;->httpReadTimeout:I

    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getHttpRetryCount()I
    .locals 1

    .line 1719
    iget-object v0, p0, Ltwitter4j/conf/ConfigurationBase$MyHttpClientConfiguration;->this$0:Ltwitter4j/conf/ConfigurationBase;

    invoke-static {v0}, Ltwitter4j/conf/ConfigurationBase;->access$000(Ltwitter4j/conf/ConfigurationBase;)I

    move-result v0

    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getHttpRetryIntervalSeconds()I
    .locals 1

    .line 1769
    iget-object v0, p0, Ltwitter4j/conf/ConfigurationBase$MyHttpClientConfiguration;->this$0:Ltwitter4j/conf/ConfigurationBase;

    invoke-static {v0}, Ltwitter4j/conf/ConfigurationBase;->access$100(Ltwitter4j/conf/ConfigurationBase;)I

    move-result v0

    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public hashCode()I
    .locals 3

    .line 2159
    iget-object v0, p0, Ltwitter4j/conf/ConfigurationBase$MyHttpClientConfiguration;->httpProxyHost:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    .line 2169
    iget-object v2, p0, Ltwitter4j/conf/ConfigurationBase$MyHttpClientConfiguration;->httpProxyUser:Ljava/lang/String;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_1

    :cond_1
    move v2, v1

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 2179
    iget-object v2, p0, Ltwitter4j/conf/ConfigurationBase$MyHttpClientConfiguration;->httpProxyPassword:Ljava/lang/String;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v1

    :cond_2
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 2189
    iget v1, p0, Ltwitter4j/conf/ConfigurationBase$MyHttpClientConfiguration;->httpProxyPort:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 2199
    iget-boolean v1, p0, Ltwitter4j/conf/ConfigurationBase$MyHttpClientConfiguration;->httpProxySocks:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 2209
    iget v1, p0, Ltwitter4j/conf/ConfigurationBase$MyHttpClientConfiguration;->httpConnectionTimeout:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 2219
    iget v1, p0, Ltwitter4j/conf/ConfigurationBase$MyHttpClientConfiguration;->httpReadTimeout:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 2229
    iget-boolean v1, p0, Ltwitter4j/conf/ConfigurationBase$MyHttpClientConfiguration;->prettyDebug:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 2239
    iget-boolean v1, p0, Ltwitter4j/conf/ConfigurationBase$MyHttpClientConfiguration;->gzipEnabled:Z

    add-int/2addr v0, v1

    return v0

    .array-data 1
    .end array-data
.end method

.method public isGZIPEnabled()Z
    .locals 1

    .line 1869
    iget-boolean v0, p0, Ltwitter4j/conf/ConfigurationBase$MyHttpClientConfiguration;->gzipEnabled:Z

    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public isHttpProxySocks()Z
    .locals 1

    .line 1569
    iget-boolean v0, p0, Ltwitter4j/conf/ConfigurationBase$MyHttpClientConfiguration;->httpProxySocks:Z

    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public isPrettyDebugEnabled()Z
    .locals 1

    .line 1819
    iget-boolean v0, p0, Ltwitter4j/conf/ConfigurationBase$MyHttpClientConfiguration;->prettyDebug:Z

    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 2299
    new-instance v0, Ljava/lang/StringBuilder;

    const v1, 0x22402406

    invoke-static {v1}, Lcom/liapp/y;->ֲֳگܱޭ(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Ltwitter4j/conf/ConfigurationBase$MyHttpClientConfiguration;->httpProxyHost:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const v1, 0x33778bfb

    invoke-static {v1}, Lcom/liapp/y;->ׯ״ٲ֬ب(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/conf/ConfigurationBase$MyHttpClientConfiguration;->httpProxyUser:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const v1, -0x450c40ef

    invoke-static {v1}, Lcom/liapp/y;->ڳݬ٬ۮݪ(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/conf/ConfigurationBase$MyHttpClientConfiguration;->httpProxyPassword:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const v1, -0x2257e1ec

    invoke-static {v1}, Lcom/liapp/y;->״دش۲ݮ(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Ltwitter4j/conf/ConfigurationBase$MyHttpClientConfiguration;->httpProxyPort:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const v1, -0x450c4607

    invoke-static {v1}, Lcom/liapp/y;->ڳݬ٬ۮݪ(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Ltwitter4j/conf/ConfigurationBase$MyHttpClientConfiguration;->httpProxySocks:Z

    if-eqz v1, :cond_0

    sget-object v1, Ljava/net/Proxy$Type;->SOCKS:Ljava/net/Proxy$Type;

    goto :goto_0

    :cond_0
    sget-object v1, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const v1, 0x542c2b02

    invoke-static {v1}, Lcom/liapp/y;->׳ֳֳ֬د(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Ltwitter4j/conf/ConfigurationBase$MyHttpClientConfiguration;->httpConnectionTimeout:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const v1, 0x542c28f2

    invoke-static {v1}, Lcom/liapp/y;->׳ֳֳ֬د(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Ltwitter4j/conf/ConfigurationBase$MyHttpClientConfiguration;->httpReadTimeout:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const v1, -0x450c4427

    invoke-static {v1}, Lcom/liapp/y;->ڳݬ٬ۮݪ(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Ltwitter4j/conf/ConfigurationBase$MyHttpClientConfiguration;->prettyDebug:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const v1, 0x33778f53

    invoke-static {v1}, Lcom/liapp/y;->ׯ״ٲ֬ب(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Ltwitter4j/conf/ConfigurationBase$MyHttpClientConfiguration;->gzipEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

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
