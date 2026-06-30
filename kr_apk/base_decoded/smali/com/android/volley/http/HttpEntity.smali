.class public Lcom/android/volley/http/HttpEntity;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final APPLICATION_ATOM_XML:Ljava/lang/String; = "application/atom+xml"

.field public static final APPLICATION_FORM_URLENCODED:Ljava/lang/String; = "application/x-www-form-urlencoded"

.field public static final APPLICATION_JSON:Ljava/lang/String; = "application/json"

.field public static final APPLICATION_OCTET_STREAM:Ljava/lang/String; = "application/octet-stream"

.field public static final APPLICATION_SVG_XML:Ljava/lang/String; = "application/svg+xml"

.field public static final APPLICATION_XHTML_XML:Ljava/lang/String; = "application/xhtml+xml"

.field public static final APPLICATION_XML:Ljava/lang/String; = "application/xml"

.field protected static DEFAULT_CHARSET:Ljava/lang/String; = "UTF-8"

.field public static final MULTIPART_FORM_DATA:Ljava/lang/String; = "multipart/form-data"

.field protected static final OUTPUT_BUFFER_SIZE:I = 0x1000

.field public static final TEXT_HTML:Ljava/lang/String; = "text/html"

.field public static final TEXT_PLAIN:Ljava/lang/String; = "text/plain"

.field public static final TEXT_XML:Ljava/lang/String; = "text/xml"

.field public static final WILDCARD:Ljava/lang/String; = "*/*"


# instance fields
.field private contentEncoding:Ljava/lang/String;

.field private contentLength:I

.field private contentType:Ljava/lang/String;

.field private inputStream:Ljava/io/InputStream;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void

    .array-data 1
    .end array-data
.end method

.method public static createContentType(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const v0, -0x22478c8c

    invoke-static {v0}, Lcom/liapp/y;->״دش۲ݮ(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public consumeContent()V
    .locals 1

    iget-object v0, p0, Lcom/android/volley/http/HttpEntity;->inputStream:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public getContent()Ljava/io/InputStream;
    .locals 1

    iget-object v0, p0, Lcom/android/volley/http/HttpEntity;->inputStream:Ljava/io/InputStream;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getContentEncoding()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/volley/http/HttpEntity;->contentEncoding:Ljava/lang/String;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getContentLength()J
    .locals 2

    iget v0, p0, Lcom/android/volley/http/HttpEntity;->contentLength:I

    int-to-long v0, v0

    return-wide v0

    .array-data 1
    .end array-data
.end method

.method public getContentType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/volley/http/HttpEntity;->contentType:Ljava/lang/String;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getInputStream()Ljava/io/InputStream;
    .locals 1

    iget-object v0, p0, Lcom/android/volley/http/HttpEntity;->inputStream:Ljava/io/InputStream;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public setContent(Ljava/io/InputStream;)V
    .locals 0

    iput-object p1, p0, Lcom/android/volley/http/HttpEntity;->inputStream:Ljava/io/InputStream;

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public setContentEncoding(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/volley/http/HttpEntity;->contentEncoding:Ljava/lang/String;

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public setContentLength(I)V
    .locals 0

    iput p1, p0, Lcom/android/volley/http/HttpEntity;->contentLength:I

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public setContentType(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/volley/http/HttpEntity;->contentType:Ljava/lang/String;

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public setInputStream(Ljava/io/InputStream;)V
    .locals 0

    iput-object p1, p0, Lcom/android/volley/http/HttpEntity;->inputStream:Ljava/io/InputStream;

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public writeTo(Ljava/io/ByteArrayOutputStream;)V
    .locals 4

    invoke-virtual {p0}, Lcom/android/volley/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v0

    if-eqz p1, :cond_1

    if-eqz v0, :cond_1

    const/16 v1, 0x1000

    :try_start_0
    new-array v1, v1, [B

    :goto_0
    invoke-virtual {v0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    const/4 v3, 0x0

    invoke-virtual {p1, v1, v3, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    goto :goto_1

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    throw p1

    :cond_1
    :goto_1
    return-void

    .array-data 1
    .end array-data
.end method
