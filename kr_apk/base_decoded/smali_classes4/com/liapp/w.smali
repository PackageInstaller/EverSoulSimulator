.class public Lcom/liapp/w;
.super Ljava/lang/Object;
.source "\u072e\u05f3\u0673\u072d\u07a9.java"

# interfaces
.implements Ljavax/net/ssl/X509TrustManager;


# static fields
.field private static final گٱܱڬܨ:I = 0x2

.field private static final ڲحز׳ٯ:I = 0x7


# instance fields
.field private final ׯڳ׮ڭܩ:Ljava/lang/String;

.field private final ۲ܭׯײٮ:Landroid/net/http/X509TrustManagerExtensions;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljavax/net/ssl/X509TrustManager;)V
    .locals 1

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Lcom/liapp/w;->ׯڳ׮ڭܩ:Ljava/lang/String;

    .line 51
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x11

    if-ge p1, v0, :cond_0

    .line 54
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/liapp/w;->۲ܭׯײٮ:Landroid/net/http/X509TrustManagerExtensions;

    return-void

    .line 62
    :cond_0
    new-instance p1, Landroid/net/http/X509TrustManagerExtensions;

    invoke-direct {p1, p2}, Landroid/net/http/X509TrustManagerExtensions;-><init>(Ljavax/net/ssl/X509TrustManager;)V

    iput-object p1, p0, Lcom/liapp/w;->۲ܭׯײٮ:Landroid/net/http/X509TrustManagerExtensions;

    .line 64
    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method private synthetic حٲݭڳܯ(Ljava/lang/String;Ljava/security/cert/X509Certificate;)Z
    .locals 6

    .line 258
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    .line 259
    nop

    .line 260
    const/4 v0, 0x2

    invoke-static {p2, v0}, Lcom/liapp/w;->۱٬ڱܯޫ(Ljava/security/cert/X509Certificate;I)Ljava/util/List;

    move-result-object v0

    .line 261
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    if-ge v4, v1, :cond_1

    .line 262
    nop

    .line 264
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-direct {p0, p1, v5}, Lcom/liapp/w;->۱٬ڱܯޫ(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 265
    return v2

    .line 261
    :cond_0
    add-int/lit8 v4, v4, 0x1

    const/4 v5, 0x1

    goto :goto_0

    .line 269
    :cond_1
    if-nez v5, :cond_2

    .line 270
    invoke-virtual {p2}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object p2

    .line 272
    new-instance v0, Lcom/liapp/f;

    invoke-direct {v0, p2}, Lcom/liapp/f;-><init>(Ljavax/security/auth/x500/X500Principal;)V

    const-string p2, "M\u0001"

    invoke-static {p2}, Lcom/liapp/p;->۱٬ڱܯޫ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/liapp/f;->۱٬ڱܯޫ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 273
    if-eqz p2, :cond_2

    .line 275
    invoke-direct {p0, p1, p2}, Lcom/liapp/w;->۱٬ڱܯޫ(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    return p1

    .line 279
    :cond_2
    return v3

    nop

    .array-data 1
    .end array-data
.end method

.method private static synthetic ۱٬ڱܯޫ(Ljava/security/cert/X509Certificate;I)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/security/cert/X509Certificate;",
            "I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 283
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 285
    :try_start_0
    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getSubjectAlternativeNames()Ljava/util/Collection;

    move-result-object p0

    .line 286
    if-nez p0, :cond_0

    .line 287
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 289
    :cond_0
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_0
    nop

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 290
    check-cast v1, Ljava/util/List;

    .line 291
    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x2

    if-ge v2, v3, :cond_2

    .line 292
    goto :goto_1

    .line 294
    :cond_2
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 295
    if-nez v2, :cond_3

    .line 296
    goto :goto_1

    .line 298
    :cond_3
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, p1, :cond_1

    .line 299
    const/4 v2, 0x1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 300
    if-eqz v1, :cond_1

    .line 301
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/security/cert/CertificateParsingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 304
    goto :goto_0

    .line 305
    :cond_4
    return-object v0

    .line 306
    :catch_0
    move-exception p0

    .line 307
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method private synthetic ۱٬ڱܯޫ(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7

    .line 315
    const/4 v0, 0x0

    if-eqz p1, :cond_d

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_d

    const-string v1, "A"

    invoke-static {v1}, Lcom/liapp/p;->۱٬ڱܯޫ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_d

    const-string v2, "\u0000A"

    invoke-static {v2}, Lcom/liapp/p;->۱٬ڱܯޫ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 316
    invoke-virtual {p1, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto/16 :goto_2

    .line 320
    :cond_0
    if-eqz p2, :cond_c

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_c

    invoke-static {v1}, Lcom/liapp/p;->۱٬ڱܯޫ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_c

    invoke-static {v2}, Lcom/liapp/p;->۱٬ڱܯޫ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 321
    invoke-virtual {p2, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto/16 :goto_1

    .line 335
    :cond_1
    invoke-static {v1}, Lcom/liapp/p;->۱٬ڱܯޫ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    const/16 v3, 0x2e

    if-nez v2, :cond_2

    .line 336
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0, p1}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 338
    :cond_2
    invoke-static {v1}, Lcom/liapp/p;->۱٬ڱܯޫ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 339
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0, p2}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 343
    :cond_3
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p2, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p2

    .line 353
    const-string v1, "E"

    invoke-static {v1}, Lcom/liapp/p;->۱٬ڱܯޫ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 354
    nop

    .line 355
    const-string v0, "GZX_X\u0014\u0007@"

    invoke-static {v0}, Lcom/liapp/p;->۱٬ڱܯޫ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 356
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 357
    :cond_4
    nop

    .line 358
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    .line 357
    return p1

    .line 372
    :cond_5
    const-string v1, "\u0004A"

    invoke-static {v1}, Lcom/liapp/p;->۱٬ڱܯޫ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_b

    const/16 v2, 0x2a

    const/4 v4, 0x1

    invoke-virtual {p2, v2, v4}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    const/4 v5, -0x1

    if-eq v2, v5, :cond_6

    goto :goto_0

    .line 381
    :cond_6
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v2, v6, :cond_7

    .line 383
    return v0

    .line 386
    :cond_7
    invoke-static {v1}, Lcom/liapp/p;->۱٬ڱܯޫ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 388
    return v0

    .line 392
    :cond_8
    invoke-virtual {p2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    .line 393
    invoke-virtual {p1, p2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_9

    .line 395
    return v0

    .line 399
    :cond_9
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    sub-int/2addr v1, p2

    .line 400
    if-lez v1, :cond_a

    sub-int/2addr v1, v4

    .line 401
    invoke-virtual {p1, v3, v1}, Ljava/lang/String;->lastIndexOf(II)I

    move-result p1

    if-eq p1, v5, :cond_a

    .line 403
    return v0

    .line 407
    :cond_a
    return v4

    .line 375
    :cond_b
    :goto_0
    return v0

    .line 323
    :cond_c
    :goto_1
    return v0

    .line 318
    :cond_d
    :goto_2
    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method private synthetic ۱٬ڱܯޫ(Ljava/lang/String;Ljava/security/cert/X509Certificate;)Z
    .locals 4

    .line 247
    const/4 v0, 0x7

    invoke-static {p2, v0}, Lcom/liapp/w;->۱٬ڱܯޫ(Ljava/security/cert/X509Certificate;I)Ljava/util/List;

    move-result-object p2

    .line 248
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    .line 249
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 250
    const/4 p1, 0x1

    return p1

    .line 248
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 253
    :cond_1
    return v1

    nop

    .array-data 1
    .end array-data
.end method

.method private synthetic ۱٬ڱܯޫ(Ljava/util/List;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/security/cert/X509Certificate;",
            ">;)Z"
        }
    .end annotation

    .line 165
    nop

    .line 166
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/Certificate;

    .line 174
    invoke-static {v0, v2}, Lcom/liapp/x;->۱٬ڱܯޫ(Ljava/security/cert/Certificate;Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    .line 176
    nop

    .line 177
    const/4 p1, 0x1

    goto :goto_0

    .line 181
    :cond_1
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_2

    .line 183
    iget-object v0, p0, Lcom/liapp/w;->ׯڳ׮ڭܩ:Ljava/lang/String;

    invoke-static {v2, v0}, Lcom/liapp/x;->۱٬ڱܯޫ(Ljava/security/cert/Certificate;Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_2

    .line 184
    goto :goto_1

    .line 188
    :cond_2
    move v1, p1

    :goto_1
    return v1

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public checkClientTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .line 194
    new-instance p1, Ljava/security/cert/CertificateException;

    const-string p2, "mCDKD[\tMC]QGDFBOJJN\u000eT@M\u000eEZE^]]EKjN"

    invoke-static {p2}, Lcom/liapp/p;->۱٬ڱܯޫ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw p1

    .array-data 1
    .end array-data
.end method

.method public checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .line 87
    nop

    .line 88
    nop

    .line 91
    move-object v0, p1

    check-cast v0, [Ljava/security/cert/X509Certificate;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 92
    nop

    .line 116
    const/4 v1, 0x1

    const/4 v2, 0x0

    :try_start_0
    iget-object v3, p0, Lcom/liapp/w;->۲ܭׯײٮ:Landroid/net/http/X509TrustManagerExtensions;

    iget-object v4, p0, Lcom/liapp/w;->ׯڳ׮ڭܩ:Ljava/lang/String;

    invoke-virtual {v3, p1, p2, v4}, Landroid/net/http/X509TrustManagerExtensions;->checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 127
    const/4 p1, 0x0

    const/4 p2, 0x0

    goto :goto_0

    .line 117
    :catch_0
    move-exception p1

    .line 118
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x18

    if-lt p2, v3, :cond_0

    .line 119
    invoke-virtual {p1}, Ljava/security/cert/CertificateException;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string p2, "hPU\u0018J\\MQVPPY@PXV\u0008_JQ@\\\u000b"

    invoke-static {p2}, Lcom/liapp/p;->۱٬ڱܯޫ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 122
    const/4 p1, 0x0

    const/4 p2, 0x1

    goto :goto_0

    .line 125
    :cond_0
    const/4 p1, 0x1

    const/4 p2, 0x0

    .line 133
    :goto_0
    if-nez p1, :cond_1

    if-nez p1, :cond_1

    .line 135
    invoke-direct {p0, v0}, Lcom/liapp/w;->۱٬ڱܯޫ(Ljava/util/List;)Z

    move-result p2

    xor-int/2addr p2, v1

    .line 152
    :cond_1
    if-nez p1, :cond_3

    .line 155
    if-nez p2, :cond_2

    .line 162
    return-void

    .line 157
    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "\u007f[QCG\u0012dZU\u0012NVM[ZZ@STZH\\\u0004UJ[DV\u000b"

    invoke-static {p2}, Lcom/liapp/p;->۱٬ڱܯޫ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 158
    invoke-virtual {p1, v2, p2}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 159
    new-instance p2, Ljava/security/cert/CertificateException;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 154
    :cond_3
    new-instance p1, Ljava/security/cert/CertificateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "mJ_ZCI@MG[@\u000eTNMGZNIGUA\u0019HWFYKV\u000fWA|O"

    invoke-static {v0}, Lcom/liapp/p;->۱٬ڱܯޫ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v2, v0}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-object v0, p0, Lcom/liapp/w;->ׯڳ׮ڭܩ:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw p1

    .array-data 1
    .end array-data
.end method

.method public getAcceptedIssuers()[Ljava/security/cert/X509Certificate;
    .locals 1

    .line 201
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/security/cert/X509Certificate;

    return-object v0

    .array-data 1
    .end array-data
.end method

.method public ۱٬ڱܯޫ(Ljava/security/cert/Certificate;)Ljava/lang/String;
    .locals 1

    .line 211
    :try_start_0
    const-string v0, "{aj\u0005\u001e\u001cY"

    invoke-static {v0}, Lcom/liapp/p;->۱٬ڱܯޫ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 212
    invoke-virtual {v0}, Ljava/security/MessageDigest;->reset()V

    .line 213
    invoke-virtual {p1}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object p1

    invoke-interface {p1}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object p1

    .line 214
    invoke-virtual {v0, p1}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object p1

    .line 217
    const-string v0, "aiZ"

    invoke-static {v0}, Lcom/liapp/p;->۱٬ڱܯޫ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 218
    invoke-virtual {v0, p1}, Ljava/security/MessageDigest;->update([B)V

    .line 219
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p1
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    .line 223
    nop

    .line 225
    const/4 v0, 0x0

    invoke-static {p1, v0}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 227
    return-object p1

    .line 221
    :catch_0
    move-exception p1

    .line 222
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "oUPITY\u001bRQKRN\u0010URL\\X\u0001"

    invoke-static {v0}, Lcom/liapp/p;->۱٬ڱܯޫ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .array-data 1
    .end array-data
.end method

.method public ݱزݴڭܩ(Ljava/lang/String;Ljava/security/cert/X509Certificate;)Z
    .locals 2

    .line 233
    const-string v0, "\u0006t\u001d\u0003\u0013N\u0004Hg\u0002cs\u0008\u0015z\u001e\u0013\u0016\\\u0003\\n\u0014h\u000c\u0001h\u0004\u001bS\u0019uRK#s!F"

    invoke-static {v0}, Lcom/liapp/p;->۱٬ڱܯޫ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 237
    iget-object v1, p0, Lcom/liapp/w;->ׯڳ׮ڭܩ:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 239
    invoke-direct {p0, p1, p2}, Lcom/liapp/w;->۱٬ڱܯޫ(Ljava/lang/String;Ljava/security/cert/X509Certificate;)Z

    move-result p1

    return p1

    .line 242
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/liapp/w;->حٲݭڳܯ(Ljava/lang/String;Ljava/security/cert/X509Certificate;)Z

    move-result p1

    return p1

    .array-data 1
    .end array-data
.end method
