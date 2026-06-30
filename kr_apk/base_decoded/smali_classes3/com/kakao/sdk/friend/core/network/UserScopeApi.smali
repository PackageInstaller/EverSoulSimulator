.class public interface abstract Lcom/kakao/sdk/friend/core/network/UserScopeApi;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\u0008g\u0018\u00002\u00020\u0001J(\u0010\u0002\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00050\u00040\u00032\u0008\u0008\u0001\u0010\u0006\u001a\u00020\u00072\u0008\u0008\u0001\u0010\u0008\u001a\u00020\tH\'\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/kakao/sdk/friend/core/network/UserScopeApi;",
        "",
        "userScopes",
        "Lretrofit2/Call;",
        "",
        "Lcom/kakao/sdk/friend/core/network/model/PickerUserScope;",
        "scopeGroup",
        "Lcom/kakao/sdk/friend/core/network/model/PickerScopeGroup;",
        "targetIds",
        "",
        "friend-core_release"
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
.method public abstract userScopes(Lcom/kakao/sdk/friend/core/network/model/PickerScopeGroup;Ljava/lang/String;)Lretrofit2/Call;
    .param p1    # Lcom/kakao/sdk/friend/core/network/model/PickerScopeGroup;
        .annotation runtime Lretrofit2/http/Query;
            value = "scope_group"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "target_ids"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/kakao/sdk/friend/core/network/model/PickerScopeGroup;",
            "Ljava/lang/String;",
            ")",
            "Lretrofit2/Call<",
            "Ljava/util/List<",
            "Lcom/kakao/sdk/friend/core/network/model/PickerUserScope;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "v2/user/scopes/sdk"
    .end annotation
.end method
