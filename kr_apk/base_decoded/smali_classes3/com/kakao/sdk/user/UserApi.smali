.class public interface abstract Lcom/kakao/sdk/user/UserApi;
.super Ljava/lang/Object;
.source "UserApi.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kakao/sdk/user/UserApi$DefaultImpls;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000d\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008g\u0018\u00002\u00020\u0001J\u000e\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003H\'J\u000e\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003H\'J\u000e\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u0003H\'J$\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\t0\u00032\u0008\u0008\u0003\u0010\n\u001a\u00020\u000b2\n\u0008\u0003\u0010\u000c\u001a\u0004\u0018\u00010\rH\'J\u0018\u0010\u000e\u001a\u0008\u0012\u0004\u0012\u00020\u000f0\u00032\u0008\u0008\u0001\u0010\u0010\u001a\u00020\rH\'J\u0018\u0010\u0011\u001a\u0008\u0012\u0004\u0012\u00020\u00120\u00032\u0008\u0008\u0001\u0010\u0013\u001a\u00020\rH\'J\u001a\u0010\u0010\u001a\u0008\u0012\u0004\u0012\u00020\u000f0\u00032\n\u0008\u0003\u0010\u0010\u001a\u0004\u0018\u00010\rH\'J&\u0010\u0014\u001a\u0008\u0012\u0004\u0012\u00020\u00150\u00032\n\u0008\u0003\u0010\u0013\u001a\u0004\u0018\u00010\r2\n\u0008\u0003\u0010\u0016\u001a\u0004\u0018\u00010\rH\'J7\u0010\u0017\u001a\u0008\u0012\u0004\u0012\u00020\u00180\u00032\n\u0008\u0003\u0010\u0019\u001a\u0004\u0018\u00010\u001a2\n\u0008\u0003\u0010\u001b\u001a\u0004\u0018\u00010\r2\n\u0008\u0003\u0010\u001c\u001a\u0004\u0018\u00010\u001dH\'\u00a2\u0006\u0002\u0010\u001eJ\u001a\u0010\u001f\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u00032\n\u0008\u0003\u0010\u000c\u001a\u0004\u0018\u00010 H\'J\u000e\u0010!\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u0003H\'J\u0018\u0010\"\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u00032\u0008\u0008\u0001\u0010\u000c\u001a\u00020 H\'\u00a8\u0006#"
    }
    d2 = {
        "Lcom/kakao/sdk/user/UserApi;",
        "",
        "accessTokenInfo",
        "Lretrofit2/Call;",
        "Lcom/kakao/sdk/user/model/AccessTokenInfo;",
        "checkAccessToken",
        "logout",
        "",
        "me",
        "Lcom/kakao/sdk/user/model/UserResponse;",
        "secureResource",
        "",
        "properties",
        "",
        "revokeScopes",
        "Lcom/kakao/sdk/user/model/ScopeInfo;",
        "scopes",
        "revokeServiceTerms",
        "Lcom/kakao/sdk/user/model/UserRevokedServiceTerms;",
        "tags",
        "serviceTerms",
        "Lcom/kakao/sdk/user/model/UserServiceTerms;",
        "result",
        "shippingAddresses",
        "Lcom/kakao/sdk/user/model/UserShippingAddresses;",
        "addressId",
        "",
        "fromUpdatedAt",
        "pageSize",
        "",
        "(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Integer;)Lretrofit2/Call;",
        "signup",
        "Lkotlinx/serialization/json/JsonObject;",
        "unlink",
        "updateProfile",
        "user_release"
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
.method public abstract accessTokenInfo()Lretrofit2/Call;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lretrofit2/Call<",
            "Lcom/kakao/sdk/user/model/AccessTokenInfo;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "/v1/user/access_token_info"
    .end annotation
.end method

.method public abstract checkAccessToken()Lretrofit2/Call;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lretrofit2/Call<",
            "Lcom/kakao/sdk/user/model/AccessTokenInfo;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "/v1/user/check_access_token"
    .end annotation
.end method

.method public abstract logout()Lretrofit2/Call;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lretrofit2/Call<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/v1/user/logout"
    .end annotation
.end method

.method public abstract me(ZLjava/lang/String;)Lretrofit2/Call;
    .param p1    # Z
        .annotation runtime Lretrofit2/http/Query;
            value = "secure_resource"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "property_keys"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/lang/String;",
            ")",
            "Lretrofit2/Call<",
            "Lcom/kakao/sdk/user/model/UserResponse;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "/v2/user/me"
    .end annotation
.end method

.method public abstract revokeScopes(Ljava/lang/String;)Lretrofit2/Call;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Field;
            value = "scopes"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lretrofit2/Call<",
            "Lcom/kakao/sdk/user/model/ScopeInfo;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/FormUrlEncoded;
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/v2/user/revoke/scopes"
    .end annotation
.end method

.method public abstract revokeServiceTerms(Ljava/lang/String;)Lretrofit2/Call;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Field;
            value = "tags"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lretrofit2/Call<",
            "Lcom/kakao/sdk/user/model/UserRevokedServiceTerms;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/FormUrlEncoded;
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/v2/user/revoke/service_terms"
    .end annotation
.end method

.method public abstract scopes(Ljava/lang/String;)Lretrofit2/Call;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "scopes"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lretrofit2/Call<",
            "Lcom/kakao/sdk/user/model/ScopeInfo;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "/v2/user/scopes"
    .end annotation
.end method

.method public abstract serviceTerms(Ljava/lang/String;Ljava/lang/String;)Lretrofit2/Call;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "tags"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "result"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lretrofit2/Call<",
            "Lcom/kakao/sdk/user/model/UserServiceTerms;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "/v2/user/service_terms"
    .end annotation
.end method

.method public abstract shippingAddresses(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Integer;)Lretrofit2/Call;
    .param p1    # Ljava/lang/Long;
        .annotation runtime Lretrofit2/http/Query;
            value = "address_id"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "from_updated_at"
        .end annotation
    .end param
    .param p3    # Ljava/lang/Integer;
        .annotation runtime Lretrofit2/http/Query;
            value = "page_size"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ")",
            "Lretrofit2/Call<",
            "Lcom/kakao/sdk/user/model/UserShippingAddresses;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "/v1/user/shipping_address"
    .end annotation
.end method

.method public abstract signup(Lkotlinx/serialization/json/JsonObject;)Lretrofit2/Call;
    .param p1    # Lkotlinx/serialization/json/JsonObject;
        .annotation runtime Lretrofit2/http/Field;
            value = "properties"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/serialization/json/JsonObject;",
            ")",
            "Lretrofit2/Call<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/FormUrlEncoded;
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/v1/user/signup"
    .end annotation
.end method

.method public abstract unlink()Lretrofit2/Call;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lretrofit2/Call<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/v1/user/unlink"
    .end annotation
.end method

.method public abstract updateProfile(Lkotlinx/serialization/json/JsonObject;)Lretrofit2/Call;
    .param p1    # Lkotlinx/serialization/json/JsonObject;
        .annotation runtime Lretrofit2/http/Field;
            value = "properties"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/serialization/json/JsonObject;",
            ")",
            "Lretrofit2/Call<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/FormUrlEncoded;
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/v1/user/update_profile"
    .end annotation
.end method
