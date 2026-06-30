.class public interface abstract Lcom/kakao/sdk/partner/user/PartnerUserApi;
.super Ljava/lang/Object;
.source "PartnerUserApi.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kakao/sdk/partner/user/PartnerUserApi$DefaultImpls;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000>\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008g\u0018\u00002\u00020\u0001J7\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u00032\n\u0008\u0003\u0010\u0005\u001a\u0004\u0018\u00010\u00062\n\u0008\u0003\u0010\u0007\u001a\u0004\u0018\u00010\u00082\n\u0008\u0003\u0010\t\u001a\u0004\u0018\u00010\nH\'\u00a2\u0006\u0002\u0010\u000bJ$\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u00020\r0\u00032\n\u0008\u0003\u0010\u000e\u001a\u0004\u0018\u00010\u00082\u0008\u0008\u0003\u0010\u000f\u001a\u00020\u0010H\'J$\u0010\u0011\u001a\u0008\u0012\u0004\u0012\u00020\u00120\u00032\u0008\u0008\u0001\u0010\u0013\u001a\u00020\u00082\n\u0008\u0003\u0010\u0014\u001a\u0004\u0018\u00010\u0008H\'\u00a8\u0006\u0015"
    }
    d2 = {
        "Lcom/kakao/sdk/partner/user/PartnerUserApi;",
        "",
        "ageAuthInfo",
        "Lretrofit2/Call;",
        "Lcom/kakao/sdk/partner/user/model/AgeAuthInfo;",
        "ageLimit",
        "",
        "propertyKeys",
        "",
        "ageCriteria",
        "Lcom/kakao/sdk/partner/user/model/AgeCriteria;",
        "(Ljava/lang/Integer;Ljava/lang/String;Lcom/kakao/sdk/partner/user/model/AgeCriteria;)Lretrofit2/Call;",
        "me",
        "Lcom/kakao/sdk/partner/user/model/PartnerUser;",
        "properties",
        "secureResource",
        "",
        "upgradeScopes",
        "Lcom/kakao/sdk/user/model/ScopeInfo;",
        "scopes",
        "guardianToken",
        "partner-user_release"
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
.method public abstract ageAuthInfo(Ljava/lang/Integer;Ljava/lang/String;Lcom/kakao/sdk/partner/user/model/AgeCriteria;)Lretrofit2/Call;
    .param p1    # Ljava/lang/Integer;
        .annotation runtime Lretrofit2/http/Query;
            value = "age_limit"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "property_keys"
        .end annotation
    .end param
    .param p3    # Lcom/kakao/sdk/partner/user/model/AgeCriteria;
        .annotation runtime Lretrofit2/http/Query;
            value = "age_criteria"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            "Lcom/kakao/sdk/partner/user/model/AgeCriteria;",
            ")",
            "Lretrofit2/Call<",
            "Lcom/kakao/sdk/partner/user/model/AgeAuthInfo;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "/v2/user/age_auth"
    .end annotation
.end method

.method public abstract me(Ljava/lang/String;Z)Lretrofit2/Call;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "property_keys"
        .end annotation
    .end param
    .param p2    # Z
        .annotation runtime Lretrofit2/http/Query;
            value = "secure_resource"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)",
            "Lretrofit2/Call<",
            "Lcom/kakao/sdk/partner/user/model/PartnerUser;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "/v2/user/me"
    .end annotation
.end method

.method public abstract upgradeScopes(Ljava/lang/String;Ljava/lang/String;)Lretrofit2/Call;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "scopes"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "guardian_token"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lretrofit2/Call<",
            "Lcom/kakao/sdk/user/model/ScopeInfo;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/v2/user/upgrade/scopes"
    .end annotation
.end method
