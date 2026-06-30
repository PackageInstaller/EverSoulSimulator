.class public interface abstract Lcom/kakao/sdk/share/ShareApi;
.super Ljava/lang/Object;
.source "ShareApi.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kakao/sdk/share/ShareApi$DefaultImpls;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000>\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0008g\u0018\u00002\u00020\u0001J)\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u00032\u0008\u0008\u0001\u0010\u0005\u001a\u00020\u00062\n\u0008\u0003\u0010\u0007\u001a\u0004\u0018\u00010\u0008H\'\u00a2\u0006\u0002\u0010\tJ)\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u00032\u0008\u0008\u0001\u0010\u000b\u001a\u00020\u000c2\n\u0008\u0003\u0010\u0007\u001a\u0004\u0018\u00010\u0008H\'\u00a2\u0006\u0002\u0010\rJ$\u0010\u000e\u001a\u0008\u0012\u0004\u0012\u00020\u000f0\u00032\u0008\u0008\u0001\u0010\u0010\u001a\u00020\u00112\n\u0008\u0003\u0010\u0012\u001a\u0004\u0018\u00010\u0013H\'J\u0018\u0010\u0014\u001a\u0008\u0012\u0004\u0012\u00020\u000f0\u00032\u0008\u0008\u0001\u0010\u0015\u001a\u00020\u0006H\'J5\u0010\u0016\u001a\u0008\u0012\u0004\u0012\u00020\u000f0\u00032\u0008\u0008\u0001\u0010\u0017\u001a\u00020\u00062\n\u0008\u0003\u0010\u0010\u001a\u0004\u0018\u00010\u00112\n\u0008\u0003\u0010\u0012\u001a\u0004\u0018\u00010\u0013H\'\u00a2\u0006\u0002\u0010\u0018\u00a8\u0006\u0019"
    }
    d2 = {
        "Lcom/kakao/sdk/share/ShareApi;",
        "",
        "scrapImage",
        "Lretrofit2/Call;",
        "Lcom/kakao/sdk/share/model/ImageUploadResult;",
        "imageUrl",
        "",
        "secureResource",
        "",
        "(Ljava/lang/String;Ljava/lang/Boolean;)Lretrofit2/Call;",
        "uploadImage",
        "image",
        "Lokhttp3/MultipartBody$Part;",
        "(Lokhttp3/MultipartBody$Part;Ljava/lang/Boolean;)Lretrofit2/Call;",
        "validateCustom",
        "Lcom/kakao/sdk/share/model/ValidationResult;",
        "templateId",
        "",
        "templateArgs",
        "Lkotlinx/serialization/json/JsonObject;",
        "validateDefault",
        "templateObject",
        "validateScrap",
        "url",
        "(Ljava/lang/String;Ljava/lang/Long;Lkotlinx/serialization/json/JsonObject;)Lretrofit2/Call;",
        "share_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# virtual methods
.method public abstract scrapImage(Ljava/lang/String;Ljava/lang/Boolean;)Lretrofit2/Call;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Field;
            value = "image_url"
        .end annotation
    .end param
    .param p2    # Ljava/lang/Boolean;
        .annotation runtime Lretrofit2/http/Field;
            value = "secure_resource"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ")",
            "Lretrofit2/Call<",
            "Lcom/kakao/sdk/share/model/ImageUploadResult;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/FormUrlEncoded;
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/v2/api/talk/message/image/scrap"
    .end annotation
.end method

.method public abstract uploadImage(Lokhttp3/MultipartBody$Part;Ljava/lang/Boolean;)Lretrofit2/Call;
    .param p1    # Lokhttp3/MultipartBody$Part;
        .annotation runtime Lretrofit2/http/Part;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Boolean;
        .annotation runtime Lretrofit2/http/Part;
            value = "secure_resource"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokhttp3/MultipartBody$Part;",
            "Ljava/lang/Boolean;",
            ")",
            "Lretrofit2/Call<",
            "Lcom/kakao/sdk/share/model/ImageUploadResult;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/Multipart;
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/v2/api/talk/message/image/upload"
    .end annotation
.end method

.method public abstract validateCustom(JLkotlinx/serialization/json/JsonObject;)Lretrofit2/Call;
    .param p1    # J
        .annotation runtime Lretrofit2/http/Query;
            value = "template_id"
        .end annotation
    .end param
    .param p3    # Lkotlinx/serialization/json/JsonObject;
        .annotation runtime Lretrofit2/http/Query;
            value = "template_args"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lkotlinx/serialization/json/JsonObject;",
            ")",
            "Lretrofit2/Call<",
            "Lcom/kakao/sdk/share/model/ValidationResult;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "/v2/api/kakaolink/talk/template/validate?link_ver=4.0"
    .end annotation
.end method

.method public abstract validateDefault(Ljava/lang/String;)Lretrofit2/Call;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "template_object"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lretrofit2/Call<",
            "Lcom/kakao/sdk/share/model/ValidationResult;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "/v2/api/kakaolink/talk/template/default?link_ver=4.0"
    .end annotation
.end method

.method public abstract validateScrap(Ljava/lang/String;Ljava/lang/Long;Lkotlinx/serialization/json/JsonObject;)Lretrofit2/Call;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "request_url"
        .end annotation
    .end param
    .param p2    # Ljava/lang/Long;
        .annotation runtime Lretrofit2/http/Query;
            value = "template_id"
        .end annotation
    .end param
    .param p3    # Lkotlinx/serialization/json/JsonObject;
        .annotation runtime Lretrofit2/http/Query;
            value = "template_args"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            "Lkotlinx/serialization/json/JsonObject;",
            ")",
            "Lretrofit2/Call<",
            "Lcom/kakao/sdk/share/model/ValidationResult;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "/v2/api/kakaolink/talk/template/scrap?link_ver=4.0"
    .end annotation
.end method
