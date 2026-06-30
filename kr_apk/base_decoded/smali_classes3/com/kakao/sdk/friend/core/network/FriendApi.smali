.class public interface abstract Lcom/kakao/sdk/friend/core/network/FriendApi;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000D\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008g\u0018\u00002\u00020\u0001J+\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u00032\n\u0008\u0003\u0010\u0005\u001a\u0004\u0018\u00010\u00062\n\u0008\u0003\u0010\u0007\u001a\u0004\u0018\u00010\u0008H\'\u00a2\u0006\u0002\u0010\tJ)\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\u00032\u0008\u0008\u0001\u0010\u000c\u001a\u00020\r2\n\u0008\u0001\u0010\u000e\u001a\u0004\u0018\u00010\u000fH\'\u00a2\u0006\u0002\u0010\u0010J7\u0010\u0011\u001a\u0008\u0012\u0004\u0012\u00020\u00120\u00032\n\u0008\u0003\u0010\u0013\u001a\u0004\u0018\u00010\u00142\n\u0008\u0003\u0010\u0007\u001a\u0004\u0018\u00010\u00082\n\u0008\u0003\u0010\u0015\u001a\u0004\u0018\u00010\u0006H\'\u00a2\u0006\u0002\u0010\u0016\u00a8\u0006\u0017"
    }
    d2 = {
        "Lcom/kakao/sdk/friend/core/network/FriendApi;",
        "",
        "chatList",
        "Lretrofit2/Call;",
        "Lcom/kakao/sdk/friend/core/network/model/PickerChats;",
        "filter",
        "",
        "limit",
        "",
        "(Ljava/lang/String;Ljava/lang/Integer;)Lretrofit2/Call;",
        "chatMembers",
        "Lcom/kakao/sdk/friend/core/network/model/PickerChatMemberInfo;",
        "chatId",
        "",
        "friendsOnly",
        "",
        "(JLjava/lang/Boolean;)Lretrofit2/Call;",
        "friends",
        "Lcom/kakao/sdk/friend/core/network/model/PickerUsers;",
        "friendFilter",
        "Lcom/kakao/sdk/friend/core/model/PickerFriendFilter;",
        "countryCodes",
        "(Lcom/kakao/sdk/friend/core/model/PickerFriendFilter;Ljava/lang/Integer;Ljava/lang/String;)Lretrofit2/Call;",
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
.method public abstract chatList(Ljava/lang/String;Ljava/lang/Integer;)Lretrofit2/Call;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "filter"
        .end annotation
    .end param
    .param p2    # Ljava/lang/Integer;
        .annotation runtime Lretrofit2/http/Query;
            value = "limit"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ")",
            "Lretrofit2/Call<",
            "Lcom/kakao/sdk/friend/core/network/model/PickerChats;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "/v1/api/talk/chat/list/sdk"
    .end annotation
.end method

.method public abstract chatMembers(JLjava/lang/Boolean;)Lretrofit2/Call;
    .param p1    # J
        .annotation runtime Lretrofit2/http/Query;
            value = "chat_id"
        .end annotation
    .end param
    .param p3    # Ljava/lang/Boolean;
        .annotation runtime Lretrofit2/http/Query;
            value = "friends_only"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/Boolean;",
            ")",
            "Lretrofit2/Call<",
            "Lcom/kakao/sdk/friend/core/network/model/PickerChatMemberInfo;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "/v1/api/talk/members/sdk"
    .end annotation
.end method

.method public abstract friends(Lcom/kakao/sdk/friend/core/model/PickerFriendFilter;Ljava/lang/Integer;Ljava/lang/String;)Lretrofit2/Call;
    .param p1    # Lcom/kakao/sdk/friend/core/model/PickerFriendFilter;
        .annotation runtime Lretrofit2/http/Query;
            value = "friend_filter"
        .end annotation
    .end param
    .param p2    # Ljava/lang/Integer;
        .annotation runtime Lretrofit2/http/Query;
            value = "limit"
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "country_codes"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/kakao/sdk/friend/core/model/PickerFriendFilter;",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ")",
            "Lretrofit2/Call<",
            "Lcom/kakao/sdk/friend/core/network/model/PickerUsers;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "v1/friends/sdk"
    .end annotation
.end method
