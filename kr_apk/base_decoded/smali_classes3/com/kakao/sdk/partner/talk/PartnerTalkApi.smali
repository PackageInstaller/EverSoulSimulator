.class public interface abstract Lcom/kakao/sdk/partner/talk/PartnerTalkApi;
.super Ljava/lang/Object;
.source "PartnerTalkApi.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kakao/sdk/partner/talk/PartnerTalkApi$DefaultImpls;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008g\u0018\u00002\u00020\u0001JC\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u00032\n\u0008\u0003\u0010\u0005\u001a\u0004\u0018\u00010\u00062\n\u0008\u0003\u0010\u0007\u001a\u0004\u0018\u00010\u00082\n\u0008\u0003\u0010\t\u001a\u0004\u0018\u00010\u00082\n\u0008\u0003\u0010\n\u001a\u0004\u0018\u00010\u000bH\'\u00a2\u0006\u0002\u0010\u000cJA\u0010\r\u001a\u0008\u0012\u0004\u0012\u00020\u000e0\u00032\u0008\u0008\u0001\u0010\u000f\u001a\u00020\u00102\n\u0008\u0003\u0010\u0011\u001a\u0004\u0018\u00010\u00122\n\u0008\u0003\u0010\u0013\u001a\u0004\u0018\u00010\u00122\n\u0008\u0003\u0010\u0014\u001a\u0004\u0018\u00010\u0010H\'\u00a2\u0006\u0002\u0010\u0015Ja\u0010\u0016\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00180\u00170\u00032\n\u0008\u0003\u0010\u0019\u001a\u0004\u0018\u00010\u001a2\n\u0008\u0003\u0010\u001b\u001a\u0004\u0018\u00010\u001c2\n\u0008\u0003\u0010\u0007\u001a\u0004\u0018\u00010\u00082\n\u0008\u0003\u0010\t\u001a\u0004\u0018\u00010\u00082\n\u0008\u0003\u0010\n\u001a\u0004\u0018\u00010\u000b2\n\u0008\u0003\u0010\u001d\u001a\u0004\u0018\u00010\u0006H\'\u00a2\u0006\u0002\u0010\u001eJ:\u0010\u001f\u001a\u0008\u0012\u0004\u0012\u00020 0\u00032\n\u0008\u0003\u0010!\u001a\u0004\u0018\u00010\u00062\u0008\u0008\u0001\u0010\"\u001a\u00020\u00062\u0008\u0008\u0001\u0010#\u001a\u00020\u00102\n\u0008\u0003\u0010$\u001a\u0004\u0018\u00010%H\'J.\u0010\u001f\u001a\u0008\u0012\u0004\u0012\u00020 0\u00032\n\u0008\u0003\u0010!\u001a\u0004\u0018\u00010\u00062\u0008\u0008\u0001\u0010\"\u001a\u00020\u00062\u0008\u0008\u0001\u0010&\u001a\u00020\u0006H\'JK\u0010\u001f\u001a\u0008\u0012\u0004\u0012\u00020 0\u00032\n\u0008\u0003\u0010!\u001a\u0004\u0018\u00010\u00062\u0008\u0008\u0001\u0010\"\u001a\u00020\u00062\u0008\u0008\u0001\u0010\'\u001a\u00020\u00062\n\u0008\u0003\u0010#\u001a\u0004\u0018\u00010\u00102\n\u0008\u0003\u0010$\u001a\u0004\u0018\u00010%H\'\u00a2\u0006\u0002\u0010(\u00a8\u0006)"
    }
    d2 = {
        "Lcom/kakao/sdk/partner/talk/PartnerTalkApi;",
        "",
        "chatList",
        "Lretrofit2/Call;",
        "Lcom/kakao/sdk/partner/talk/model/Chats;",
        "filter",
        "",
        "offset",
        "",
        "limit",
        "order",
        "Lcom/kakao/sdk/talk/model/Order;",
        "(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Lcom/kakao/sdk/talk/model/Order;)Lretrofit2/Call;",
        "chatMembers",
        "Lcom/kakao/sdk/partner/talk/model/ChatMembers;",
        "chatId",
        "",
        "friendsOnly",
        "",
        "includeProfile",
        "token",
        "(JLjava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Long;)Lretrofit2/Call;",
        "friends",
        "Lcom/kakao/sdk/talk/model/Friends;",
        "Lcom/kakao/sdk/partner/talk/model/PartnerFriend;",
        "friendFilter",
        "Lcom/kakao/sdk/partner/talk/model/FriendFilter;",
        "friendOrder",
        "Lcom/kakao/sdk/talk/model/FriendOrder;",
        "countryCodes",
        "(Lcom/kakao/sdk/partner/talk/model/FriendFilter;Lcom/kakao/sdk/talk/model/FriendOrder;Ljava/lang/Integer;Ljava/lang/Integer;Lcom/kakao/sdk/talk/model/Order;Ljava/lang/String;)Lretrofit2/Call;",
        "sendMessage",
        "Lcom/kakao/sdk/partner/talk/model/PartnerMessageSendResult;",
        "receiverIdType",
        "receiverIds",
        "templateId",
        "templateArgs",
        "Lkotlinx/serialization/json/JsonObject;",
        "template",
        "requestUrl",
        "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Lkotlinx/serialization/json/JsonObject;)Lretrofit2/Call;",
        "partner-talk_release"
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
.method public abstract chatList(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Lcom/kakao/sdk/talk/model/Order;)Lretrofit2/Call;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "filter"
        .end annotation
    .end param
    .param p2    # Ljava/lang/Integer;
        .annotation runtime Lretrofit2/http/Query;
            value = "offset"
        .end annotation
    .end param
    .param p3    # Ljava/lang/Integer;
        .annotation runtime Lretrofit2/http/Query;
            value = "limit"
        .end annotation
    .end param
    .param p4    # Lcom/kakao/sdk/talk/model/Order;
        .annotation runtime Lretrofit2/http/Query;
            value = "order"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Lcom/kakao/sdk/talk/model/Order;",
            ")",
            "Lretrofit2/Call<",
            "Lcom/kakao/sdk/partner/talk/model/Chats;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "/v1/api/talk/chat/list"
    .end annotation
.end method

.method public abstract chatMembers(JLjava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Long;)Lretrofit2/Call;
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
    .param p4    # Ljava/lang/Boolean;
        .annotation runtime Lretrofit2/http/Query;
            value = "include_profile"
        .end annotation
    .end param
    .param p5    # Ljava/lang/Long;
        .annotation runtime Lretrofit2/http/Query;
            value = "token"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Long;",
            ")",
            "Lretrofit2/Call<",
            "Lcom/kakao/sdk/partner/talk/model/ChatMembers;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "/v1/api/talk/members"
    .end annotation
.end method

.method public abstract friends(Lcom/kakao/sdk/partner/talk/model/FriendFilter;Lcom/kakao/sdk/talk/model/FriendOrder;Ljava/lang/Integer;Ljava/lang/Integer;Lcom/kakao/sdk/talk/model/Order;Ljava/lang/String;)Lretrofit2/Call;
    .param p1    # Lcom/kakao/sdk/partner/talk/model/FriendFilter;
        .annotation runtime Lretrofit2/http/Query;
            value = "friend_filter"
        .end annotation
    .end param
    .param p2    # Lcom/kakao/sdk/talk/model/FriendOrder;
        .annotation runtime Lretrofit2/http/Query;
            value = "friend_order"
        .end annotation
    .end param
    .param p3    # Ljava/lang/Integer;
        .annotation runtime Lretrofit2/http/Query;
            value = "offset"
        .end annotation
    .end param
    .param p4    # Ljava/lang/Integer;
        .annotation runtime Lretrofit2/http/Query;
            value = "limit"
        .end annotation
    .end param
    .param p5    # Lcom/kakao/sdk/talk/model/Order;
        .annotation runtime Lretrofit2/http/Query;
            value = "order"
        .end annotation
    .end param
    .param p6    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "country_codes"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/kakao/sdk/partner/talk/model/FriendFilter;",
            "Lcom/kakao/sdk/talk/model/FriendOrder;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Lcom/kakao/sdk/talk/model/Order;",
            "Ljava/lang/String;",
            ")",
            "Lretrofit2/Call<",
            "Lcom/kakao/sdk/talk/model/Friends<",
            "Lcom/kakao/sdk/partner/talk/model/PartnerFriend;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "v1/api/talk/friends"
    .end annotation
.end method

.method public abstract sendMessage(Ljava/lang/String;Ljava/lang/String;JLkotlinx/serialization/json/JsonObject;)Lretrofit2/Call;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Field;
            value = "receiver_id_type"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Field;
            value = "receiver_ids"
        .end annotation
    .end param
    .param p3    # J
        .annotation runtime Lretrofit2/http/Field;
            value = "template_id"
        .end annotation
    .end param
    .param p5    # Lkotlinx/serialization/json/JsonObject;
        .annotation runtime Lretrofit2/http/Field;
            value = "template_args"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "J",
            "Lkotlinx/serialization/json/JsonObject;",
            ")",
            "Lretrofit2/Call<",
            "Lcom/kakao/sdk/partner/talk/model/PartnerMessageSendResult;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/FormUrlEncoded;
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/v2/api/talk/message/send"
    .end annotation
.end method

.method public abstract sendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lretrofit2/Call;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Field;
            value = "receiver_id_type"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Field;
            value = "receiver_ids"
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Field;
            value = "template_object"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lretrofit2/Call<",
            "Lcom/kakao/sdk/partner/talk/model/PartnerMessageSendResult;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/FormUrlEncoded;
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/v2/api/talk/message/default/send"
    .end annotation
.end method

.method public abstract sendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Lkotlinx/serialization/json/JsonObject;)Lretrofit2/Call;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Field;
            value = "receiver_id_type"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Field;
            value = "receiver_ids"
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Field;
            value = "request_url"
        .end annotation
    .end param
    .param p4    # Ljava/lang/Long;
        .annotation runtime Lretrofit2/http/Field;
            value = "template_id"
        .end annotation
    .end param
    .param p5    # Lkotlinx/serialization/json/JsonObject;
        .annotation runtime Lretrofit2/http/Field;
            value = "template_args"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            "Lkotlinx/serialization/json/JsonObject;",
            ")",
            "Lretrofit2/Call<",
            "Lcom/kakao/sdk/partner/talk/model/PartnerMessageSendResult;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/FormUrlEncoded;
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/v2/api/talk/message/scrap/send"
    .end annotation
.end method
