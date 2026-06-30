.class public final Lcom/kakao/sdk/share/ShareApi$DefaultImpls;
.super Ljava/lang/Object;
.source "ShareApi.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kakao/sdk/share/ShareApi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DefaultImpls"
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static synthetic scrapImage$default(Lcom/kakao/sdk/share/ShareApi;Ljava/lang/String;Ljava/lang/Boolean;ILjava/lang/Object;)Lretrofit2/Call;
    .locals 0

    if-nez p4, :cond_1

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x1

    .line 659
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    .line 639
    :cond_0
    invoke-interface {p0, p1, p2}, Lcom/kakao/sdk/share/ShareApi;->scrapImage(Ljava/lang/String;Ljava/lang/Boolean;)Lretrofit2/Call;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: scrapImage"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    .array-data 1
    .end array-data
.end method

.method public static synthetic uploadImage$default(Lcom/kakao/sdk/share/ShareApi;Lokhttp3/MultipartBody$Part;Ljava/lang/Boolean;ILjava/lang/Object;)Lretrofit2/Call;
    .locals 0

    if-nez p4, :cond_1

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x1

    .line 579
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    .line 559
    :cond_0
    invoke-interface {p0, p1, p2}, Lcom/kakao/sdk/share/ShareApi;->uploadImage(Lokhttp3/MultipartBody$Part;Ljava/lang/Boolean;)Lretrofit2/Call;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: uploadImage"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    .array-data 1
    .end array-data
.end method

.method public static synthetic validateCustom$default(Lcom/kakao/sdk/share/ShareApi;JLkotlinx/serialization/json/JsonObject;ILjava/lang/Object;)Lretrofit2/Call;
    .locals 0

    if-nez p5, :cond_1

    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_0

    const/4 p3, 0x0

    .line 389
    :cond_0
    invoke-interface {p0, p1, p2, p3}, Lcom/kakao/sdk/share/ShareApi;->validateCustom(JLkotlinx/serialization/json/JsonObject;)Lretrofit2/Call;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: validateCustom"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    .array-data 1
    .end array-data
.end method

.method public static synthetic validateScrap$default(Lcom/kakao/sdk/share/ShareApi;Ljava/lang/String;Ljava/lang/Long;Lkotlinx/serialization/json/JsonObject;ILjava/lang/Object;)Lretrofit2/Call;
    .locals 1

    if-nez p5, :cond_2

    and-int/lit8 p5, p4, 0x2

    const/4 v0, 0x0

    if-eqz p5, :cond_0

    move-object p2, v0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    move-object p3, v0

    .line 479
    :cond_1
    invoke-interface {p0, p1, p2, p3}, Lcom/kakao/sdk/share/ShareApi;->validateScrap(Ljava/lang/String;Ljava/lang/Long;Lkotlinx/serialization/json/JsonObject;)Lretrofit2/Call;

    move-result-object p0

    return-object p0

    :cond_2
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: validateScrap"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    .array-data 1
    .end array-data
.end method
