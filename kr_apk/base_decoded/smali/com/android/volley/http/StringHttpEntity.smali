.class public Lcom/android/volley/http/StringHttpEntity;
.super Lcom/android/volley/http/HttpEntity;
.source ""


# static fields
.field public static final CHARSET_PARAM:Ljava/lang/String; = "; charset="

.field public static final PLAIN_TEXT_TYPE:Ljava/lang/String; = "text/plain"


# instance fields
.field protected final content:[B


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Lcom/android/volley/http/HttpEntity;-><init>()V

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    sget-object p2, Lcom/android/volley/http/HttpEntity;->DEFAULT_CHARSET:Ljava/lang/String;

    :cond_0
    invoke-virtual {p1, p2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    iput-object p1, p0, Lcom/android/volley/http/StringHttpEntity;->content:[B

    new-instance p1, Ljava/lang/StringBuilder;

    const v0, 0x5d156f1f

    invoke-static {v0}, Lcom/liapp/y;->ڴݮگ֮ت(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/volley/http/HttpEntity;->setContentType(Ljava/lang/String;)V

    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Source string may not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    nop

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public getContent()Ljava/io/InputStream;
    .locals 2

    new-instance v0, Ljava/io/ByteArrayInputStream;

    iget-object v1, p0, Lcom/android/volley/http/StringHttpEntity;->content:[B

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    return-object v0

    .array-data 1
    .end array-data
.end method

.method public writeTo(Ljava/io/ByteArrayOutputStream;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/volley/http/StringHttpEntity;->content:[B

    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->flush()V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const v0, 0x7d754645

    invoke-static {v0}, Lcom/liapp/y;->حֲݴܳޯ(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .array-data 1
    .end array-data
.end method
