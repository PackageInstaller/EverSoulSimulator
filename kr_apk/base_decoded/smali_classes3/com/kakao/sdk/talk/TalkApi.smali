.class public interface abstract Lcom/kakao/sdk/talk/TalkApi;
.super Ljava/lang/Object;
.source "TalkApi.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kakao/sdk/talk/TalkApi$DefaultImpls;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\\\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\n\u0008g\u0018\u00002\u00020\u0001J$\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u00032\n\u0008\u0003\u0010\u0005\u001a\u0004\u0018\u00010\u00062\u0008\u0008\u0003\u0010\u0007\u001a\u00020\u0006H\'JI\u0010\u0008\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\n0\t0\u00032\n\u0008\u0003\u0010\u000b\u001a\u0004\u0018\u00010\u000c2\n\u0008\u0003\u0010\r\u001a\u0004\u0018\u00010\u000c2\n\u0008\u0003\u0010\u000e\u001a\u0004\u0018\u00010\u000f2\n\u0008\u0003\u0010\u0010\u001a\u0004\u0018\u00010\u0011H\'\u00a2\u0006\u0002\u0010\u0012J\u000e\u0010\u0013\u001a\u0008\u0012\u0004\u0012\u00020\u00140\u0003H\'J$\u0010\u0015\u001a\u0008\u0012\u0004\u0012\u00020\u00160\u00032\u0008\u0008\u0001\u0010\u0017\u001a\u00020\u00182\n\u0008\u0003\u0010\u0019\u001a\u0004\u0018\u00010\u001aH\'J.\u0010\u001b\u001a\u0008\u0012\u0004\u0012\u00020\u001c0\u00032\u0008\u0008\u0001\u0010\u001d\u001a\u00020\u00062\u0008\u0008\u0001\u0010\u0017\u001a\u00020\u00182\n\u0008\u0003\u0010\u0019\u001a\u0004\u0018\u00010\u001aH\'J\u0018\u0010\u001e\u001a\u0008\u0012\u0004\u0012\u00020\u00160\u00032\u0008\u0008\u0001\u0010\u001f\u001a\u00020\u0006H\'J\"\u0010 \u001a\u0008\u0012\u0004\u0012\u00020\u001c0\u00032\u0008\u0008\u0001\u0010\u001d\u001a\u00020\u00062\u0008\u0008\u0001\u0010\u001f\u001a\u00020\u0006H\'J5\u0010!\u001a\u0008\u0012\u0004\u0012\u00020\u00160\u00032\u0008\u0008\u0001\u0010\"\u001a\u00020\u00062\n\u0008\u0003\u0010\u0017\u001a\u0004\u0018\u00010\u00182\n\u0008\u0003\u0010\u0019\u001a\u0004\u0018\u00010\u001aH\'\u00a2\u0006\u0002\u0010#J?\u0010$\u001a\u0008\u0012\u0004\u0012\u00020\u001c0\u00032\u0008\u0008\u0001\u0010\u001d\u001a\u00020\u00062\u0008\u0008\u0001\u0010\"\u001a\u00020\u00062\n\u0008\u0001\u0010\u0017\u001a\u0004\u0018\u00010\u00182\n\u0008\u0003\u0010\u0019\u001a\u0004\u0018\u00010\u001aH\'\u00a2\u0006\u0002\u0010%\u00a8\u0006&"
    }
    d2 = {
        "Lcom/kakao/sdk/talk/TalkApi;",
        "",
        "channels",
        "Lretrofit2/Call;",
        "Lcom/kakao/sdk/talk/model/Channels;",
        "channelIds",
        "",
        "channelIdType",
        "friends",
        "Lcom/kakao/sdk/talk/model/Friends;",
        "Lcom/kakao/sdk/talk/model/Friend;",
        "offset",
        "",
        "limit",
        "order",
        "Lcom/kakao/sdk/talk/model/Order;",
        "friendOrder",
        "Lcom/kakao/sdk/talk/model/FriendOrder;",
        "(Ljava/lang/Integer;Ljava/lang/Integer;Lcom/kakao/sdk/talk/model/Order;Lcom/kakao/sdk/talk/model/FriendOrder;)Lretrofit2/Call;",
        "profile",
        "Lcom/kakao/sdk/talk/model/TalkProfile;",
        "sendCustomMemo",
        "",
        "templateId",
        "",
        "templateArgs",
        "Lkotlinx/serialization/json/JsonObject;",
        "sendCustomMessage",
        "Lcom/kakao/sdk/talk/model/MessageSendResult;",
        "receiverUuids",
        "sendDefaultMemo",
        "template",
        "sendDefaultMessage",
        "sendScrapMemo",
        "requestUrl",
        "(Ljava/lang/String;Ljava/lang/Long;Lkotlinx/serialization/json/JsonObject;)Lretrofit2/Call;",
        "sendScrapMessage",
        "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Lkotlinx/serialization/json/JsonObject;)Lretrofit2/Call;",
        "talk_release"
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
.method public abstract channels(Ljava/lang/String;Ljava/lang/String;)Lretrofit2/Call;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "channel_ids"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "channel_id_type"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lretrofit2/Call<",
            "Lcom/kakao/sdk/talk/model/Channels;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "/v2/api/talk/channels"
    .end annotation
.end method

.method public abstract friends(Ljava/lang/Integer;Ljava/lang/Integer;Lcom/kakao/sdk/talk/model/Order;Lcom/kakao/sdk/talk/model/FriendOrder;)Lretrofit2/Call;
    .param p1    # Ljava/lang/Integer;
        .annotation runtime Lretrofit2/http/Query;
            value = "offset"
        .end annotation
    .end param
    .param p2    # Ljava/lang/Integer;
        .annotation runtime Lretrofit2/http/Query;
            value = "limit"
        .end annotation
    .end param
    .param p3    # Lcom/kakao/sdk/talk/model/Order;
        .annotation runtime Lretrofit2/http/Query;
            value = "order"
        .end annotation
    .end param
    .param p4    # Lcom/kakao/sdk/talk/model/FriendOrder;
        .annotation runtime Lretrofit2/http/Query;
            value = "friend_order"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Lcom/kakao/sdk/talk/model/Order;",
            "Lcom/kakao/sdk/talk/model/FriendOrder;",
            ")",
            "Lretrofit2/Call<",
            "Lcom/kakao/sdk/talk/model/Friends<",
            "Lcom/kakao/sdk/talk/model/Friend;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "v1/api/talk/friends"
    .end annotation
.end method

.method public abstract profile()Lretrofit2/Call;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lretrofit2/Call<",
            "Lcom/kakao/sdk/talk/model/TalkProfile;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "/v1/api/talk/profile"
    .end annotation
.end method

.method public abstract sendCustomMemo(JLkotlinx/serialization/json/JsonObject;)Lretrofit2/Call;
    .param p1    # J
        .annotation runtime Lretrofit2/http/Field;
            value = "template_id"
        .end annotation
    .end param
    .param p3    # Lkotlinx/serialization/json/JsonObject;
        .annotation runtime Lretrofit2/http/Field;
            value = "template_args"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
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
        value = "/v2/api/talk/memo/send"
    .end annotation
.end method

.method public abstract sendCustomMessage(Ljava/lang/String;JLkotlinx/serialization/json/JsonObject;)Lretrofit2/Call;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Field;
            value = "receiver_uuids"
        .end annotation
    .end param
    .param p2    # J
        .annotation runtime Lretrofit2/http/Field;
            value = "template_id"
        .end annotation
    .end param
    .param p4    # Lkotlinx/serialization/json/JsonObject;
        .annotation runtime Lretrofit2/http/Field;
            value = "template_args"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J",
            "Lkotlinx/serialization/json/JsonObject;",
            ")",
            "Lretrofit2/Call<",
            "Lcom/kakao/sdk/talk/model/MessageSendResult;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/FormUrlEncoded;
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/v1/api/talk/friends/message/send"
    .end annotation
.end method

.method public abstract sendDefaultMemo(Ljava/lang/String;)Lretrofit2/Call;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Field;
            value = "template_object"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lretrofit2/Call<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/FormUrlEncoded;
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/v2/api/talk/memo/default/send"
    .end annotation
.end method

.method public abstract sendDefaultMessage(Ljava/lang/String;Ljava/lang/String;)Lretrofit2/Call;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Field;
            value = "receiver_uuids"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Field;
            value = "template_object"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lretrofit2/Call<",
            "Lcom/kakao/sdk/talk/model/MessageSendResult;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/FormUrlEncoded;
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/v1/api/talk/friends/message/default/send"
    .end annotation
.end method

.method public abstract sendScrapMemo(Ljava/lang/String;Ljava/lang/Long;Lkotlinx/serialization/json/JsonObject;)Lretrofit2/Call;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Field;
            value = "request_url"
        .end annotation
    .end param
    .param p2    # Ljava/lang/Long;
        .annotation runtime Lretrofit2/http/Field;
            value = "template_id"
        .end annotation
    .end param
    .param p3    # Lkotlinx/serialization/json/JsonObject;
        .annotation runtime Lretrofit2/http/Field;
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
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/FormUrlEncoded;
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/v2/api/talk/memo/scrap/send"
    .end annotation
.end method

.method public abstract sendScrapMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Lkotlinx/serialization/json/JsonObject;)Lretrofit2/Call;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Field;
            value = "receiver_uuids"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Field;
            value = "request_url"
        .end annotation
    .end param
    .param p3    # Ljava/lang/Long;
        .annotation runtime Lretrofit2/http/Field;
            value = "template_id"
        .end annotation
    .end param
    .param p4    # Lkotlinx/serialization/json/JsonObject;
        .annotation runtime Lretrofit2/http/Field;
            value = "template_args"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            "Lkotlinx/serialization/json/JsonObject;",
            ")",
            "Lretrofit2/Call<",
            "Lcom/kakao/sdk/talk/model/MessageSendResult;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/FormUrlEncoded;
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/v1/api/talk/friends/message/scrap/send"
    .end annotation
.end method
