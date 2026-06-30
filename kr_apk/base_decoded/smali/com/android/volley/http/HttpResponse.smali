.class public Lcom/android/volley/http/HttpResponse;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final SC_FORBIDDEN:I = 0x193

.field public static final SC_MOVED_PERMANENTLY:I = 0x12d

.field public static final SC_MOVED_TEMPORARILY:I = 0x12e

.field public static final SC_NOT_MODIFIED:I = 0x130

.field public static final SC_OK:I = 0xc8

.field public static final SC_UNAUTHORIZED:I = 0x191


# instance fields
.field private entityFromConnection:Lcom/android/volley/http/HttpEntity;

.field private httpHeaders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private responseCode:I

.field private responseMessage:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/TreeMap;

    sget-object v1, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    invoke-direct {v0, v1}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    iput-object v0, p0, Lcom/android/volley/http/HttpResponse;->httpHeaders:Ljava/util/Map;

    invoke-virtual {p0, p1}, Lcom/android/volley/http/HttpResponse;->setResponseCode(I)V

    invoke-virtual {p0, p2}, Lcom/android/volley/http/HttpResponse;->setResponseMessage(Ljava/lang/String;)V

    return-void

    nop

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public addHeader(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/android/volley/http/HttpResponse;->httpHeaders:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .array-data 1
    .end array-data
.end method

.method public getAllHeaders()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/volley/http/HttpResponse;->httpHeaders:Ljava/util/Map;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getEntity()Lcom/android/volley/http/HttpEntity;
    .locals 1

    iget-object v0, p0, Lcom/android/volley/http/HttpResponse;->entityFromConnection:Lcom/android/volley/http/HttpEntity;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getResponseCode()I
    .locals 1

    iget v0, p0, Lcom/android/volley/http/HttpResponse;->responseCode:I

    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getResponseMessage()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/volley/http/HttpResponse;->responseMessage:Ljava/lang/String;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public setEntity(Lcom/android/volley/http/HttpEntity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/volley/http/HttpResponse;->entityFromConnection:Lcom/android/volley/http/HttpEntity;

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public setResponseCode(I)V
    .locals 0

    iput p1, p0, Lcom/android/volley/http/HttpResponse;->responseCode:I

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public setResponseMessage(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/volley/http/HttpResponse;->responseMessage:Ljava/lang/String;

    return-void

    nop

    .array-data 1
    .end array-data
.end method
