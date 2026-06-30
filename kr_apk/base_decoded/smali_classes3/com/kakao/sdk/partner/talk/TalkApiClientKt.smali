.class public final Lcom/kakao/sdk/partner/talk/TalkApiClientKt;
.super Ljava/lang/Object;
.source "TalkApiClient.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTalkApiClient.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TalkApiClient.kt\ncom/kakao/sdk/partner/talk/TalkApiClientKt\n+ 2 KakaoJson.kt\ncom/kakao/sdk/common/util/KakaoJson\n+ 3 SerialFormat.kt\nkotlinx/serialization/SerialFormatKt\n+ 4 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 5 JsonElementBuilders.kt\nkotlinx/serialization/json/JsonElementBuildersKt\n+ 6 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 7 Json.kt\nkotlinx/serialization/json/JsonKt\n*L\n1#1,304:1\n46#2:305\n56#2:308\n53#2:313\n46#2:317\n56#2:319\n53#2:324\n46#2:328\n46#2:330\n46#2:332\n56#2:334\n53#2:339\n46#2:343\n56#2:345\n53#2:350\n113#3:306\n113#3:318\n113#3:329\n113#3:331\n113#3:333\n113#3:344\n1#4:307\n28#5,3:309\n31#5:316\n28#5,3:320\n31#5:327\n28#5,3:335\n31#5:342\n28#5,3:346\n31#5:353\n1855#6:312\n1856#6:315\n1855#6:323\n1856#6:326\n1855#6:338\n1856#6:341\n1855#6:349\n1856#6:352\n211#7:314\n211#7:325\n211#7:340\n211#7:351\n*S KotlinDebug\n*F\n+ 1 TalkApiClient.kt\ncom/kakao/sdk/partner/talk/TalkApiClientKt\n*L\n165#1:305\n167#1:308\n167#1:313\n192#1:317\n194#1:319\n194#1:324\n216#1:328\n235#1:330\n263#1:332\n266#1:334\n266#1:339\n293#1:343\n296#1:345\n296#1:350\n165#1:306\n192#1:318\n216#1:329\n235#1:331\n263#1:333\n293#1:344\n167#1:309,3\n167#1:316\n194#1:320,3\n194#1:327\n266#1:335,3\n266#1:342\n296#1:346,3\n296#1:353\n167#1:312\n167#1:315\n194#1:323\n194#1:326\n266#1:338\n266#1:341\n296#1:349\n296#1:352\n167#1:314\n194#1:325\n266#1:340\n296#1:351\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0092\u0001\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0003\n\u0002\u0008\u0004\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010$\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u001a\u0083\u0001\u0010\u0005\u001a\u00020\u0006*\u00020\u00022\u0010\u0008\u0002\u0010\u0007\u001a\n\u0012\u0004\u0012\u00020\t\u0018\u00010\u00082\n\u0008\u0002\u0010\n\u001a\u0004\u0018\u00010\u000b2\n\u0008\u0002\u0010\u000c\u001a\u0004\u0018\u00010\u000b2\n\u0008\u0002\u0010\r\u001a\u0004\u0018\u00010\u000e2:\u0010\u000f\u001a6\u0012\u0015\u0012\u0013\u0018\u00010\u0011\u00a2\u0006\u000c\u0008\u0012\u0012\u0008\u0008\u0013\u0012\u0004\u0008\u0008(\u0014\u0012\u0015\u0012\u0013\u0018\u00010\u0015\u00a2\u0006\u000c\u0008\u0012\u0012\u0008\u0008\u0013\u0012\u0004\u0008\u0008(\u0016\u0012\u0004\u0012\u00020\u00060\u0010H\u0007\u00a2\u0006\u0002\u0010\u0017\u001ay\u0010\u0018\u001a\u00020\u0006*\u00020\u00022\u0006\u0010\u0019\u001a\u00020\u001a2\n\u0008\u0002\u0010\u001b\u001a\u0004\u0018\u00010\u001c2\n\u0008\u0002\u0010\u001d\u001a\u0004\u0018\u00010\u001c2\n\u0008\u0002\u0010\u001e\u001a\u0004\u0018\u00010\u001a2:\u0010\u000f\u001a6\u0012\u0015\u0012\u0013\u0018\u00010\u001f\u00a2\u0006\u000c\u0008\u0012\u0012\u0008\u0008\u0013\u0012\u0004\u0008\u0008(\u0018\u0012\u0015\u0012\u0013\u0018\u00010\u0015\u00a2\u0006\u000c\u0008\u0012\u0012\u0008\u0008\u0013\u0012\u0004\u0008\u0008(\u0016\u0012\u0004\u0012\u00020\u00060\u0010H\u0007\u00a2\u0006\u0002\u0010 \u001a\u00a1\u0001\u0010!\u001a\u00020\u0006*\u00020\u00022\n\u0008\u0002\u0010\"\u001a\u0004\u0018\u00010#2\n\u0008\u0002\u0010$\u001a\u0004\u0018\u00010%2\n\u0008\u0002\u0010\n\u001a\u0004\u0018\u00010\u000b2\n\u0008\u0002\u0010\u000c\u001a\u0004\u0018\u00010\u000b2\n\u0008\u0002\u0010\r\u001a\u0004\u0018\u00010\u000e2\u0010\u0008\u0002\u0010&\u001a\n\u0012\u0004\u0012\u00020\'\u0018\u00010\u00082@\u0010\u000f\u001a<\u0012\u001b\u0012\u0019\u0012\u0004\u0012\u00020)\u0018\u00010(\u00a2\u0006\u000c\u0008\u0012\u0012\u0008\u0008\u0013\u0012\u0004\u0008\u0008(*\u0012\u0015\u0012\u0013\u0018\u00010\u0015\u00a2\u0006\u000c\u0008\u0012\u0012\u0008\u0008\u0013\u0012\u0004\u0008\u0008(\u0016\u0012\u0004\u0012\u00020\u00060\u0010H\u0007\u00a2\u0006\u0002\u0010+\u001aV\u0010!\u001a\u00020\u0006*\u00020\u00022\u0008\u0010,\u001a\u0004\u0018\u00010-2@\u0010\u000f\u001a<\u0012\u001b\u0012\u0019\u0012\u0004\u0012\u00020)\u0018\u00010(\u00a2\u0006\u000c\u0008\u0012\u0012\u0008\u0008\u0013\u0012\u0004\u0008\u0008(*\u0012\u0015\u0012\u0013\u0018\u00010\u0015\u00a2\u0006\u000c\u0008\u0012\u0012\u0008\u0008\u0013\u0012\u0004\u0008\u0008(\u0016\u0012\u0004\u0012\u00020\u00060\u0010\u001av\u0010.\u001a\u00020\u0006*\u00020\u00022\u000c\u0010/\u001a\u0008\u0012\u0004\u0012\u00020\'0\u00082\u0006\u00100\u001a\u00020\u001a2\u0016\u0008\u0002\u00101\u001a\u0010\u0012\u0004\u0012\u00020\'\u0012\u0004\u0012\u00020\'\u0018\u0001022:\u0010\u000f\u001a6\u0012\u0015\u0012\u0013\u0018\u000103\u00a2\u0006\u000c\u0008\u0012\u0012\u0008\u0008\u0013\u0012\u0004\u0008\u0008(4\u0012\u0015\u0012\u0013\u0018\u00010\u0015\u00a2\u0006\u000c\u0008\u0012\u0012\u0008\u0008\u0013\u0012\u0004\u0008\u0008(\u0016\u0012\u0004\u0012\u00020\u00060\u0010H\u0007\u001av\u00105\u001a\u00020\u0006*\u00020\u00022\u000c\u00106\u001a\u0008\u0012\u0004\u0012\u00020\u001a0\u00082\u0006\u00100\u001a\u00020\u001a2\u0016\u0008\u0002\u00101\u001a\u0010\u0012\u0004\u0012\u00020\'\u0012\u0004\u0012\u00020\'\u0018\u0001022:\u0010\u000f\u001a6\u0012\u0015\u0012\u0013\u0018\u000103\u00a2\u0006\u000c\u0008\u0012\u0012\u0008\u0008\u0013\u0012\u0004\u0008\u0008(4\u0012\u0015\u0012\u0013\u0018\u00010\u0015\u00a2\u0006\u000c\u0008\u0012\u0012\u0008\u0008\u0013\u0012\u0004\u0008\u0008(\u0016\u0012\u0004\u0012\u00020\u00060\u0010H\u0007\u001a\\\u00107\u001a\u00020\u0006*\u00020\u00022\u000c\u0010/\u001a\u0008\u0012\u0004\u0012\u00020\'0\u00082\u0006\u00108\u001a\u0002092:\u0010\u000f\u001a6\u0012\u0015\u0012\u0013\u0018\u000103\u00a2\u0006\u000c\u0008\u0012\u0012\u0008\u0008\u0013\u0012\u0004\u0008\u0008(4\u0012\u0015\u0012\u0013\u0018\u00010\u0015\u00a2\u0006\u000c\u0008\u0012\u0012\u0008\u0008\u0013\u0012\u0004\u0008\u0008(\u0016\u0012\u0004\u0012\u00020\u00060\u0010\u001a\\\u0010:\u001a\u00020\u0006*\u00020\u00022\u000c\u00106\u001a\u0008\u0012\u0004\u0012\u00020\u001a0\u00082\u0006\u00108\u001a\u0002092:\u0010\u000f\u001a6\u0012\u0015\u0012\u0013\u0018\u000103\u00a2\u0006\u000c\u0008\u0012\u0012\u0008\u0008\u0013\u0012\u0004\u0008\u0008(4\u0012\u0015\u0012\u0013\u0018\u00010\u0015\u00a2\u0006\u000c\u0008\u0012\u0012\u0008\u0008\u0013\u0012\u0004\u0008\u0008(\u0016\u0012\u0004\u0012\u00020\u00060\u0010\u001a\u0087\u0001\u0010;\u001a\u00020\u0006*\u00020\u00022\u000c\u0010/\u001a\u0008\u0012\u0004\u0012\u00020\'0\u00082\u0006\u0010<\u001a\u00020\'2\n\u0008\u0002\u00100\u001a\u0004\u0018\u00010\u001a2\u0016\u0008\u0002\u00101\u001a\u0010\u0012\u0004\u0012\u00020\'\u0012\u0004\u0012\u00020\'\u0018\u0001022:\u0010\u000f\u001a6\u0012\u0015\u0012\u0013\u0018\u000103\u00a2\u0006\u000c\u0008\u0012\u0012\u0008\u0008\u0013\u0012\u0004\u0008\u0008(4\u0012\u0015\u0012\u0013\u0018\u00010\u0015\u00a2\u0006\u000c\u0008\u0012\u0012\u0008\u0008\u0013\u0012\u0004\u0008\u0008(\u0016\u0012\u0004\u0012\u00020\u00060\u0010H\u0007\u00a2\u0006\u0002\u0010=\u001a\u0087\u0001\u0010>\u001a\u00020\u0006*\u00020\u00022\u000c\u00106\u001a\u0008\u0012\u0004\u0012\u00020\u001a0\u00082\u0006\u0010<\u001a\u00020\'2\n\u0008\u0002\u00100\u001a\u0004\u0018\u00010\u001a2\u0016\u0008\u0002\u00101\u001a\u0010\u0012\u0004\u0012\u00020\'\u0012\u0004\u0012\u00020\'\u0018\u0001022:\u0010\u000f\u001a6\u0012\u0015\u0012\u0013\u0018\u000103\u00a2\u0006\u000c\u0008\u0012\u0012\u0008\u0008\u0013\u0012\u0004\u0008\u0008(4\u0012\u0015\u0012\u0013\u0018\u00010\u0015\u00a2\u0006\u000c\u0008\u0012\u0012\u0008\u0008\u0013\u0012\u0004\u0008\u0008(\u0016\u0012\u0004\u0012\u00020\u00060\u0010H\u0007\u00a2\u0006\u0002\u0010=\"\u0015\u0010\u0000\u001a\u00020\u0001*\u00020\u00028F\u00a2\u0006\u0006\u001a\u0004\u0008\u0003\u0010\u0004\u00a8\u0006?"
    }
    d2 = {
        "partnerApi",
        "Lcom/kakao/sdk/partner/talk/PartnerTalkApi;",
        "Lcom/kakao/sdk/talk/TalkApiClient;",
        "getPartnerApi",
        "(Lcom/kakao/sdk/talk/TalkApiClient;)Lcom/kakao/sdk/partner/talk/PartnerTalkApi;",
        "chatList",
        "",
        "filters",
        "",
        "Lcom/kakao/sdk/partner/talk/model/ChatFilter;",
        "offset",
        "",
        "limit",
        "order",
        "Lcom/kakao/sdk/talk/model/Order;",
        "callback",
        "Lkotlin/Function2;",
        "Lcom/kakao/sdk/partner/talk/model/Chats;",
        "Lkotlin/ParameterName;",
        "name",
        "chats",
        "",
        "error",
        "(Lcom/kakao/sdk/talk/TalkApiClient;Ljava/util/List;Ljava/lang/Integer;Ljava/lang/Integer;Lcom/kakao/sdk/talk/model/Order;Lkotlin/jvm/functions/Function2;)V",
        "chatMembers",
        "chatId",
        "",
        "friendsOnly",
        "",
        "includeProfile",
        "token",
        "Lcom/kakao/sdk/partner/talk/model/ChatMembers;",
        "(Lcom/kakao/sdk/talk/TalkApiClient;JLjava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Long;Lkotlin/jvm/functions/Function2;)V",
        "friendsForPartner",
        "friendFilter",
        "Lcom/kakao/sdk/partner/talk/model/FriendFilter;",
        "friendOrder",
        "Lcom/kakao/sdk/talk/model/FriendOrder;",
        "countryCodes",
        "",
        "Lcom/kakao/sdk/talk/model/Friends;",
        "Lcom/kakao/sdk/partner/talk/model/PartnerFriend;",
        "friends",
        "(Lcom/kakao/sdk/talk/TalkApiClient;Lcom/kakao/sdk/partner/talk/model/FriendFilter;Lcom/kakao/sdk/talk/model/FriendOrder;Ljava/lang/Integer;Ljava/lang/Integer;Lcom/kakao/sdk/talk/model/Order;Ljava/util/List;Lkotlin/jvm/functions/Function2;)V",
        "context",
        "Lcom/kakao/sdk/partner/talk/model/PartnerFriendsContext;",
        "sendCustomMessageForPartner",
        "receiverUuids",
        "templateId",
        "templateArgs",
        "",
        "Lcom/kakao/sdk/partner/talk/model/PartnerMessageSendResult;",
        "messageSendResult",
        "sendCustomMessageToChats",
        "receiverChatIds",
        "sendDefaultMessageForPartner",
        "template",
        "Lcom/kakao/sdk/template/model/DefaultTemplate;",
        "sendDefaultMessageToChats",
        "sendScrapMessageForPartner",
        "requestUrl",
        "(Lcom/kakao/sdk/talk/TalkApiClient;Ljava/util/List;Ljava/lang/String;Ljava/lang/Long;Ljava/util/Map;Lkotlin/jvm/functions/Function2;)V",
        "sendScrapMessageToChats",
        "partner-talk_release"
    }
    k = 0x2
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static final chatList(Lcom/kakao/sdk/talk/TalkApiClient;Ljava/util/List;Ljava/lang/Integer;Ljava/lang/Integer;Lcom/kakao/sdk/talk/model/Order;Lkotlin/jvm/functions/Function2;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/kakao/sdk/talk/TalkApiClient;",
            "Ljava/util/List<",
            "+",
            "Lcom/kakao/sdk/partner/talk/model/ChatFilter;",
            ">;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Lcom/kakao/sdk/talk/model/Order;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lcom/kakao/sdk/partner/talk/model/Chats;",
            "-",
            "Ljava/lang/Throwable;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1169
    invoke-static {p0}, Lcom/kakao/sdk/partner/talk/TalkApiClientKt;->getPartnerApi(Lcom/kakao/sdk/talk/TalkApiClient;)Lcom/kakao/sdk/partner/talk/PartnerTalkApi;

    move-result-object p0

    if-eqz p1, :cond_0

    move-object v0, p1

    check-cast v0, Ljava/lang/Iterable;

    const-string p1, ","

    move-object v1, p1

    check-cast v1, Ljava/lang/CharSequence;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x3e

    const/4 v8, 0x0

    invoke-static/range {v0 .. v8}, Lkotlin/collections/CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-interface {p0, p1, p2, p3, p4}, Lcom/kakao/sdk/partner/talk/PartnerTalkApi;->chatList(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Lcom/kakao/sdk/talk/model/Order;)Lretrofit2/Call;

    move-result-object p0

    .line 1179
    new-instance p1, Lcom/kakao/sdk/partner/talk/TalkApiClientKt$chatList$1;

    invoke-direct {p1, p5}, Lcom/kakao/sdk/partner/talk/TalkApiClientKt$chatList$1;-><init>(Lkotlin/jvm/functions/Function2;)V

    check-cast p1, Lretrofit2/Callback;

    invoke-interface {p0, p1}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public static final chatList(Lcom/kakao/sdk/talk/TalkApiClient;Ljava/util/List;Ljava/lang/Integer;Ljava/lang/Integer;Lkotlin/jvm/functions/Function2;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/kakao/sdk/talk/TalkApiClient;",
            "Ljava/util/List<",
            "+",
            "Lcom/kakao/sdk/partner/talk/model/ChatFilter;",
            ">;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lcom/kakao/sdk/partner/talk/model/Chats;",
            "-",
            "Ljava/lang/Throwable;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x0

    const/16 v7, 0x8

    const/4 v8, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v6, p4

    invoke-static/range {v1 .. v8}, Lcom/kakao/sdk/partner/talk/TalkApiClientKt;->chatList$default(Lcom/kakao/sdk/talk/TalkApiClient;Ljava/util/List;Ljava/lang/Integer;Ljava/lang/Integer;Lcom/kakao/sdk/talk/model/Order;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)V

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public static final chatList(Lcom/kakao/sdk/talk/TalkApiClient;Ljava/util/List;Ljava/lang/Integer;Lkotlin/jvm/functions/Function2;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/kakao/sdk/talk/TalkApiClient;",
            "Ljava/util/List<",
            "+",
            "Lcom/kakao/sdk/partner/talk/model/ChatFilter;",
            ">;",
            "Ljava/lang/Integer;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lcom/kakao/sdk/partner/talk/model/Chats;",
            "-",
            "Ljava/lang/Throwable;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v7, 0xc

    const/4 v8, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v6, p3

    invoke-static/range {v1 .. v8}, Lcom/kakao/sdk/partner/talk/TalkApiClientKt;->chatList$default(Lcom/kakao/sdk/talk/TalkApiClient;Ljava/util/List;Ljava/lang/Integer;Ljava/lang/Integer;Lcom/kakao/sdk/talk/model/Order;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)V

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public static final chatList(Lcom/kakao/sdk/talk/TalkApiClient;Ljava/util/List;Lkotlin/jvm/functions/Function2;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/kakao/sdk/talk/TalkApiClient;",
            "Ljava/util/List<",
            "+",
            "Lcom/kakao/sdk/partner/talk/model/ChatFilter;",
            ">;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lcom/kakao/sdk/partner/talk/model/Chats;",
            "-",
            "Ljava/lang/Throwable;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v7, 0xe

    const/4 v8, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v6, p2

    invoke-static/range {v1 .. v8}, Lcom/kakao/sdk/partner/talk/TalkApiClientKt;->chatList$default(Lcom/kakao/sdk/talk/TalkApiClient;Ljava/util/List;Ljava/lang/Integer;Ljava/lang/Integer;Lcom/kakao/sdk/talk/model/Order;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)V

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public static final chatList(Lcom/kakao/sdk/talk/TalkApiClient;Lkotlin/jvm/functions/Function2;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/kakao/sdk/talk/TalkApiClient;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lcom/kakao/sdk/partner/talk/model/Chats;",
            "-",
            "Ljava/lang/Throwable;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v7, 0xf

    const/4 v8, 0x0

    move-object v1, p0

    move-object v6, p1

    invoke-static/range {v1 .. v8}, Lcom/kakao/sdk/partner/talk/TalkApiClientKt;->chatList$default(Lcom/kakao/sdk/talk/TalkApiClient;Ljava/util/List;Ljava/lang/Integer;Ljava/lang/Integer;Lcom/kakao/sdk/talk/model/Order;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)V

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public static synthetic chatList$default(Lcom/kakao/sdk/talk/TalkApiClient;Ljava/util/List;Ljava/lang/Integer;Ljava/lang/Integer;Lcom/kakao/sdk/talk/model/Order;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)V
    .locals 7

    and-int/lit8 p7, p6, 0x1

    const/4 v0, 0x0

    if-eqz p7, :cond_0

    move-object v2, v0

    goto :goto_0

    :cond_0
    move-object v2, p1

    :goto_0
    and-int/lit8 p1, p6, 0x2

    if-eqz p1, :cond_1

    move-object v3, v0

    goto :goto_1

    :cond_1
    move-object v3, p2

    :goto_1
    and-int/lit8 p1, p6, 0x4

    if-eqz p1, :cond_2

    move-object v4, v0

    goto :goto_2

    :cond_2
    move-object v4, p3

    :goto_2
    and-int/lit8 p1, p6, 0x8

    if-eqz p1, :cond_3

    move-object v5, v0

    goto :goto_3

    :cond_3
    move-object v5, p4

    :goto_3
    move-object v1, p0

    move-object v6, p5

    .line 1099
    invoke-static/range {v1 .. v6}, Lcom/kakao/sdk/partner/talk/TalkApiClientKt;->chatList(Lcom/kakao/sdk/talk/TalkApiClient;Ljava/util/List;Ljava/lang/Integer;Ljava/lang/Integer;Lcom/kakao/sdk/talk/model/Order;Lkotlin/jvm/functions/Function2;)V

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public static final chatMembers(Lcom/kakao/sdk/talk/TalkApiClient;JLjava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Long;Lkotlin/jvm/functions/Function2;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/kakao/sdk/talk/TalkApiClient;",
            "J",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Long;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lcom/kakao/sdk/partner/talk/model/ChatMembers;",
            "-",
            "Ljava/lang/Throwable;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1409
    invoke-static {p0}, Lcom/kakao/sdk/partner/talk/TalkApiClientKt;->getPartnerApi(Lcom/kakao/sdk/talk/TalkApiClient;)Lcom/kakao/sdk/partner/talk/PartnerTalkApi;

    move-result-object v1

    move-wide v2, p1

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-interface/range {v1 .. v6}, Lcom/kakao/sdk/partner/talk/PartnerTalkApi;->chatMembers(JLjava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Long;)Lretrofit2/Call;

    move-result-object p0

    .line 1419
    new-instance p1, Lcom/kakao/sdk/partner/talk/TalkApiClientKt$chatMembers$1;

    invoke-direct {p1, p6}, Lcom/kakao/sdk/partner/talk/TalkApiClientKt$chatMembers$1;-><init>(Lkotlin/jvm/functions/Function2;)V

    check-cast p1, Lretrofit2/Callback;

    invoke-interface {p0, p1}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public static final chatMembers(Lcom/kakao/sdk/talk/TalkApiClient;JLjava/lang/Boolean;Ljava/lang/Boolean;Lkotlin/jvm/functions/Function2;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/kakao/sdk/talk/TalkApiClient;",
            "J",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lcom/kakao/sdk/partner/talk/model/ChatMembers;",
            "-",
            "Ljava/lang/Throwable;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v6, 0x0

    const/16 v8, 0x8

    const/4 v9, 0x0

    move-object v1, p0

    move-wide v2, p1

    move-object v4, p3

    move-object v5, p4

    move-object v7, p5

    invoke-static/range {v1 .. v9}, Lcom/kakao/sdk/partner/talk/TalkApiClientKt;->chatMembers$default(Lcom/kakao/sdk/talk/TalkApiClient;JLjava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Long;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)V

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public static final chatMembers(Lcom/kakao/sdk/talk/TalkApiClient;JLjava/lang/Boolean;Lkotlin/jvm/functions/Function2;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/kakao/sdk/talk/TalkApiClient;",
            "J",
            "Ljava/lang/Boolean;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lcom/kakao/sdk/partner/talk/model/ChatMembers;",
            "-",
            "Ljava/lang/Throwable;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v8, 0xc

    const/4 v9, 0x0

    move-object v1, p0

    move-wide v2, p1

    move-object v4, p3

    move-object v7, p4

    invoke-static/range {v1 .. v9}, Lcom/kakao/sdk/partner/talk/TalkApiClientKt;->chatMembers$default(Lcom/kakao/sdk/talk/TalkApiClient;JLjava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Long;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)V

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public static final chatMembers(Lcom/kakao/sdk/talk/TalkApiClient;JLkotlin/jvm/functions/Function2;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/kakao/sdk/talk/TalkApiClient;",
            "J",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lcom/kakao/sdk/partner/talk/model/ChatMembers;",
            "-",
            "Ljava/lang/Throwable;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v8, 0xe

    const/4 v9, 0x0

    move-object v1, p0

    move-wide v2, p1

    move-object v7, p3

    invoke-static/range {v1 .. v9}, Lcom/kakao/sdk/partner/talk/TalkApiClientKt;->chatMembers$default(Lcom/kakao/sdk/talk/TalkApiClient;JLjava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Long;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)V

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public static synthetic chatMembers$default(Lcom/kakao/sdk/talk/TalkApiClient;JLjava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Long;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)V
    .locals 9

    and-int/lit8 v0, p7, 0x2

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move-object v5, v1

    goto :goto_0

    :cond_0
    move-object v5, p3

    :goto_0
    and-int/lit8 v0, p7, 0x4

    if-eqz v0, :cond_1

    move-object v6, v1

    goto :goto_1

    :cond_1
    move-object v6, p4

    :goto_1
    and-int/lit8 v0, p7, 0x8

    if-eqz v0, :cond_2

    move-object v7, v1

    goto :goto_2

    :cond_2
    move-object v7, p5

    :goto_2
    move-object v2, p0

    move-wide v3, p1

    move-object v8, p6

    .line 1339
    invoke-static/range {v2 .. v8}, Lcom/kakao/sdk/partner/talk/TalkApiClientKt;->chatMembers(Lcom/kakao/sdk/talk/TalkApiClient;JLjava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Long;Lkotlin/jvm/functions/Function2;)V

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public static final friendsForPartner(Lcom/kakao/sdk/talk/TalkApiClient;Lcom/kakao/sdk/partner/talk/model/FriendFilter;Lcom/kakao/sdk/talk/model/FriendOrder;Ljava/lang/Integer;Ljava/lang/Integer;Lcom/kakao/sdk/talk/model/Order;Ljava/util/List;Lkotlin/jvm/functions/Function2;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/kakao/sdk/talk/TalkApiClient;",
            "Lcom/kakao/sdk/partner/talk/model/FriendFilter;",
            "Lcom/kakao/sdk/talk/model/FriendOrder;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Lcom/kakao/sdk/talk/model/Order;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lcom/kakao/sdk/talk/model/Friends<",
            "Lcom/kakao/sdk/partner/talk/model/PartnerFriend;",
            ">;-",
            "Ljava/lang/Throwable;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p7

    const-string v1, "<this>"

    move-object v2, p0

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "callback"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 619
    invoke-static {p0}, Lcom/kakao/sdk/partner/talk/TalkApiClientKt;->getPartnerApi(Lcom/kakao/sdk/talk/TalkApiClient;)Lcom/kakao/sdk/partner/talk/PartnerTalkApi;

    move-result-object v2

    if-eqz p6, :cond_0

    .line 679
    move-object/from16 v3, p6

    check-cast v3, Ljava/lang/Iterable;

    const-string v1, ","

    move-object v4, v1

    check-cast v4, Ljava/lang/CharSequence;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v10, 0x3e

    const/4 v11, 0x0

    invoke-static/range {v3 .. v11}, Lkotlin/collections/CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    move-object v8, v1

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    .line 619
    invoke-interface/range {v2 .. v8}, Lcom/kakao/sdk/partner/talk/PartnerTalkApi;->friends(Lcom/kakao/sdk/partner/talk/model/FriendFilter;Lcom/kakao/sdk/talk/model/FriendOrder;Ljava/lang/Integer;Ljava/lang/Integer;Lcom/kakao/sdk/talk/model/Order;Ljava/lang/String;)Lretrofit2/Call;

    move-result-object v1

    .line 699
    new-instance v2, Lcom/kakao/sdk/partner/talk/TalkApiClientKt$friendsForPartner$1;

    invoke-direct {v2, v0}, Lcom/kakao/sdk/partner/talk/TalkApiClientKt$friendsForPartner$1;-><init>(Lkotlin/jvm/functions/Function2;)V

    check-cast v2, Lretrofit2/Callback;

    invoke-interface {v1, v2}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public static final friendsForPartner(Lcom/kakao/sdk/talk/TalkApiClient;Lcom/kakao/sdk/partner/talk/model/FriendFilter;Lcom/kakao/sdk/talk/model/FriendOrder;Ljava/lang/Integer;Ljava/lang/Integer;Lcom/kakao/sdk/talk/model/Order;Lkotlin/jvm/functions/Function2;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/kakao/sdk/talk/TalkApiClient;",
            "Lcom/kakao/sdk/partner/talk/model/FriendFilter;",
            "Lcom/kakao/sdk/talk/model/FriendOrder;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Lcom/kakao/sdk/talk/model/Order;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lcom/kakao/sdk/talk/model/Friends<",
            "Lcom/kakao/sdk/partner/talk/model/PartnerFriend;",
            ">;-",
            "Ljava/lang/Throwable;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<this>"

    move-object v1, p0

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    move-object/from16 v8, p6

    invoke-static {v8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v7, 0x0

    const/16 v9, 0x20

    const/4 v10, 0x0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object/from16 v6, p5

    invoke-static/range {v1 .. v10}, Lcom/kakao/sdk/partner/talk/TalkApiClientKt;->friendsForPartner$default(Lcom/kakao/sdk/talk/TalkApiClient;Lcom/kakao/sdk/partner/talk/model/FriendFilter;Lcom/kakao/sdk/talk/model/FriendOrder;Ljava/lang/Integer;Ljava/lang/Integer;Lcom/kakao/sdk/talk/model/Order;Ljava/util/List;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)V

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public static final friendsForPartner(Lcom/kakao/sdk/talk/TalkApiClient;Lcom/kakao/sdk/partner/talk/model/FriendFilter;Lcom/kakao/sdk/talk/model/FriendOrder;Ljava/lang/Integer;Ljava/lang/Integer;Lkotlin/jvm/functions/Function2;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/kakao/sdk/talk/TalkApiClient;",
            "Lcom/kakao/sdk/partner/talk/model/FriendFilter;",
            "Lcom/kakao/sdk/talk/model/FriendOrder;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lcom/kakao/sdk/talk/model/Friends<",
            "Lcom/kakao/sdk/partner/talk/model/PartnerFriend;",
            ">;-",
            "Ljava/lang/Throwable;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<this>"

    move-object v1, p0

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    move-object/from16 v8, p5

    invoke-static {v8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v9, 0x30

    const/4 v10, 0x0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-static/range {v1 .. v10}, Lcom/kakao/sdk/partner/talk/TalkApiClientKt;->friendsForPartner$default(Lcom/kakao/sdk/talk/TalkApiClient;Lcom/kakao/sdk/partner/talk/model/FriendFilter;Lcom/kakao/sdk/talk/model/FriendOrder;Ljava/lang/Integer;Ljava/lang/Integer;Lcom/kakao/sdk/talk/model/Order;Ljava/util/List;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method public static final friendsForPartner(Lcom/kakao/sdk/talk/TalkApiClient;Lcom/kakao/sdk/partner/talk/model/FriendFilter;Lcom/kakao/sdk/talk/model/FriendOrder;Ljava/lang/Integer;Lkotlin/jvm/functions/Function2;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/kakao/sdk/talk/TalkApiClient;",
            "Lcom/kakao/sdk/partner/talk/model/FriendFilter;",
            "Lcom/kakao/sdk/talk/model/FriendOrder;",
            "Ljava/lang/Integer;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lcom/kakao/sdk/talk/model/Friends<",
            "Lcom/kakao/sdk/partner/talk/model/PartnerFriend;",
            ">;-",
            "Ljava/lang/Throwable;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v9, 0x38

    const/4 v10, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v8, p4

    invoke-static/range {v1 .. v10}, Lcom/kakao/sdk/partner/talk/TalkApiClientKt;->friendsForPartner$default(Lcom/kakao/sdk/talk/TalkApiClient;Lcom/kakao/sdk/partner/talk/model/FriendFilter;Lcom/kakao/sdk/talk/model/FriendOrder;Ljava/lang/Integer;Ljava/lang/Integer;Lcom/kakao/sdk/talk/model/Order;Ljava/util/List;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)V

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public static final friendsForPartner(Lcom/kakao/sdk/talk/TalkApiClient;Lcom/kakao/sdk/partner/talk/model/FriendFilter;Lcom/kakao/sdk/talk/model/FriendOrder;Lkotlin/jvm/functions/Function2;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/kakao/sdk/talk/TalkApiClient;",
            "Lcom/kakao/sdk/partner/talk/model/FriendFilter;",
            "Lcom/kakao/sdk/talk/model/FriendOrder;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lcom/kakao/sdk/talk/model/Friends<",
            "Lcom/kakao/sdk/partner/talk/model/PartnerFriend;",
            ">;-",
            "Ljava/lang/Throwable;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v9, 0x3c

    const/4 v10, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v8, p3

    invoke-static/range {v1 .. v10}, Lcom/kakao/sdk/partner/talk/TalkApiClientKt;->friendsForPartner$default(Lcom/kakao/sdk/talk/TalkApiClient;Lcom/kakao/sdk/partner/talk/model/FriendFilter;Lcom/kakao/sdk/talk/model/FriendOrder;Ljava/lang/Integer;Ljava/lang/Integer;Lcom/kakao/sdk/talk/model/Order;Ljava/util/List;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)V

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public static final friendsForPartner(Lcom/kakao/sdk/talk/TalkApiClient;Lcom/kakao/sdk/partner/talk/model/FriendFilter;Lkotlin/jvm/functions/Function2;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/kakao/sdk/talk/TalkApiClient;",
            "Lcom/kakao/sdk/partner/talk/model/FriendFilter;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lcom/kakao/sdk/talk/model/Friends<",
            "Lcom/kakao/sdk/partner/talk/model/PartnerFriend;",
            ">;-",
            "Ljava/lang/Throwable;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v9, 0x3e

    const/4 v10, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v8, p2

    invoke-static/range {v1 .. v10}, Lcom/kakao/sdk/partner/talk/TalkApiClientKt;->friendsForPartner$default(Lcom/kakao/sdk/talk/TalkApiClient;Lcom/kakao/sdk/partner/talk/model/FriendFilter;Lcom/kakao/sdk/talk/model/FriendOrder;Ljava/lang/Integer;Ljava/lang/Integer;Lcom/kakao/sdk/talk/model/Order;Ljava/util/List;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)V

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public static final friendsForPartner(Lcom/kakao/sdk/talk/TalkApiClient;Lcom/kakao/sdk/partner/talk/model/PartnerFriendsContext;Lkotlin/jvm/functions/Function2;)V
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/kakao/sdk/talk/TalkApiClient;",
            "Lcom/kakao/sdk/partner/talk/model/PartnerFriendsContext;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lcom/kakao/sdk/talk/model/Friends<",
            "Lcom/kakao/sdk/partner/talk/model/PartnerFriend;",
            ">;-",
            "Ljava/lang/Throwable;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p2

    const-string v1, "<this>"

    move-object/from16 v2, p0

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "callback"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 869
    invoke-static/range {p0 .. p0}, Lcom/kakao/sdk/partner/talk/TalkApiClientKt;->getPartnerApi(Lcom/kakao/sdk/talk/TalkApiClient;)Lcom/kakao/sdk/partner/talk/PartnerTalkApi;

    move-result-object v2

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 879
    invoke-virtual/range {p1 .. p1}, Lcom/kakao/sdk/partner/talk/model/PartnerFriendsContext;->getFriendFilter()Lcom/kakao/sdk/partner/talk/model/FriendFilter;

    move-result-object v3

    goto :goto_0

    :cond_0
    move-object v3, v1

    :goto_0
    if-eqz p1, :cond_1

    .line 889
    invoke-virtual/range {p1 .. p1}, Lcom/kakao/sdk/partner/talk/model/PartnerFriendsContext;->getFriendOrder()Lcom/kakao/sdk/talk/model/FriendOrder;

    move-result-object v4

    goto :goto_1

    :cond_1
    move-object v4, v1

    :goto_1
    if-eqz p1, :cond_2

    .line 899
    invoke-virtual/range {p1 .. p1}, Lcom/kakao/sdk/partner/talk/model/PartnerFriendsContext;->getOffset()Ljava/lang/Integer;

    move-result-object v5

    goto :goto_2

    :cond_2
    move-object v5, v1

    :goto_2
    if-eqz p1, :cond_3

    .line 909
    invoke-virtual/range {p1 .. p1}, Lcom/kakao/sdk/partner/talk/model/PartnerFriendsContext;->getLimit()Ljava/lang/Integer;

    move-result-object v6

    goto :goto_3

    :cond_3
    move-object v6, v1

    :goto_3
    if-eqz p1, :cond_4

    .line 919
    invoke-virtual/range {p1 .. p1}, Lcom/kakao/sdk/partner/talk/model/PartnerFriendsContext;->getOrder()Lcom/kakao/sdk/talk/model/Order;

    move-result-object v7

    goto :goto_4

    :cond_4
    move-object v7, v1

    :goto_4
    if-eqz p1, :cond_5

    .line 929
    invoke-virtual/range {p1 .. p1}, Lcom/kakao/sdk/partner/talk/model/PartnerFriendsContext;->getCountryCodes()Ljava/util/List;

    move-result-object v8

    if-eqz v8, :cond_5

    move-object v9, v8

    check-cast v9, Ljava/lang/Iterable;

    const-string v1, ","

    move-object v10, v1

    check-cast v10, Ljava/lang/CharSequence;

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x3e

    const/16 v17, 0x0

    invoke-static/range {v9 .. v17}, Lkotlin/collections/CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    :cond_5
    move-object v8, v1

    .line 869
    invoke-interface/range {v2 .. v8}, Lcom/kakao/sdk/partner/talk/PartnerTalkApi;->friends(Lcom/kakao/sdk/partner/talk/model/FriendFilter;Lcom/kakao/sdk/talk/model/FriendOrder;Ljava/lang/Integer;Ljava/lang/Integer;Lcom/kakao/sdk/talk/model/Order;Ljava/lang/String;)Lretrofit2/Call;

    move-result-object v1

    .line 939
    new-instance v2, Lcom/kakao/sdk/partner/talk/TalkApiClientKt$friendsForPartner$2;

    invoke-direct {v2, v0}, Lcom/kakao/sdk/partner/talk/TalkApiClientKt$friendsForPartner$2;-><init>(Lkotlin/jvm/functions/Function2;)V

    check-cast v2, Lretrofit2/Callback;

    invoke-interface {v1, v2}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method public static final friendsForPartner(Lcom/kakao/sdk/talk/TalkApiClient;Lkotlin/jvm/functions/Function2;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/kakao/sdk/talk/TalkApiClient;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lcom/kakao/sdk/talk/model/Friends<",
            "Lcom/kakao/sdk/partner/talk/model/PartnerFriend;",
            ">;-",
            "Ljava/lang/Throwable;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v9, 0x3f

    const/4 v10, 0x0

    move-object v1, p0

    move-object v8, p1

    invoke-static/range {v1 .. v10}, Lcom/kakao/sdk/partner/talk/TalkApiClientKt;->friendsForPartner$default(Lcom/kakao/sdk/talk/TalkApiClient;Lcom/kakao/sdk/partner/talk/model/FriendFilter;Lcom/kakao/sdk/talk/model/FriendOrder;Ljava/lang/Integer;Ljava/lang/Integer;Lcom/kakao/sdk/talk/model/Order;Ljava/util/List;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)V

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public static synthetic friendsForPartner$default(Lcom/kakao/sdk/talk/TalkApiClient;Lcom/kakao/sdk/partner/talk/model/FriendFilter;Lcom/kakao/sdk/talk/model/FriendOrder;Ljava/lang/Integer;Ljava/lang/Integer;Lcom/kakao/sdk/talk/model/Order;Ljava/util/List;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)V
    .locals 10

    and-int/lit8 v0, p8, 0x1

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move-object v3, v1

    goto :goto_0

    :cond_0
    move-object v3, p1

    :goto_0
    and-int/lit8 v0, p8, 0x2

    if-eqz v0, :cond_1

    move-object v4, v1

    goto :goto_1

    :cond_1
    move-object v4, p2

    :goto_1
    and-int/lit8 v0, p8, 0x4

    if-eqz v0, :cond_2

    move-object v5, v1

    goto :goto_2

    :cond_2
    move-object v5, p3

    :goto_2
    and-int/lit8 v0, p8, 0x8

    if-eqz v0, :cond_3

    move-object v6, v1

    goto :goto_3

    :cond_3
    move-object v6, p4

    :goto_3
    and-int/lit8 v0, p8, 0x10

    if-eqz v0, :cond_4

    move-object v7, v1

    goto :goto_4

    :cond_4
    move-object v7, p5

    :goto_4
    and-int/lit8 v0, p8, 0x20

    if-eqz v0, :cond_5

    move-object v8, v1

    goto :goto_5

    :cond_5
    move-object/from16 v8, p6

    :goto_5
    move-object v2, p0

    move-object/from16 v9, p7

    .line 529
    invoke-static/range {v2 .. v9}, Lcom/kakao/sdk/partner/talk/TalkApiClientKt;->friendsForPartner(Lcom/kakao/sdk/talk/TalkApiClient;Lcom/kakao/sdk/partner/talk/model/FriendFilter;Lcom/kakao/sdk/talk/model/FriendOrder;Ljava/lang/Integer;Ljava/lang/Integer;Lcom/kakao/sdk/talk/model/Order;Ljava/util/List;Lkotlin/jvm/functions/Function2;)V

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public static final getPartnerApi(Lcom/kakao/sdk/talk/TalkApiClient;)Lcom/kakao/sdk/partner/talk/PartnerTalkApi;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 399
    sget-object p0, Lcom/kakao/sdk/network/ApiFactory;->INSTANCE:Lcom/kakao/sdk/network/ApiFactory;

    invoke-static {p0}, Lcom/kakao/sdk/auth/network/ApiFactoryKt;->getKapiWithOAuth(Lcom/kakao/sdk/network/ApiFactory;)Lretrofit2/Retrofit;

    move-result-object p0

    const-class v0, Lcom/kakao/sdk/partner/talk/PartnerTalkApi;

    invoke-virtual {p0, v0}, Lretrofit2/Retrofit;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    const-string v0, "ApiFactory.kapiWithOAuth\u2026rtnerTalkApi::class.java)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lcom/kakao/sdk/partner/talk/PartnerTalkApi;

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static final sendCustomMessageForPartner(Lcom/kakao/sdk/talk/TalkApiClient;Ljava/util/List;JLjava/util/Map;Lkotlin/jvm/functions/Function2;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/kakao/sdk/talk/TalkApiClient;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;J",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lcom/kakao/sdk/partner/talk/model/PartnerMessageSendResult;",
            "-",
            "Ljava/lang/Throwable;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "receiverUuids"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1639
    invoke-static {p0}, Lcom/kakao/sdk/partner/talk/TalkApiClientKt;->getPartnerApi(Lcom/kakao/sdk/talk/TalkApiClient;)Lcom/kakao/sdk/partner/talk/PartnerTalkApi;

    move-result-object v1

    const-string/jumbo v2, "uuid"

    .line 1659
    sget-object p0, Lcom/kakao/sdk/common/util/KakaoJson;->INSTANCE:Lcom/kakao/sdk/common/util/KakaoJson;

    .line 3059
    invoke-virtual {p0}, Lcom/kakao/sdk/common/util/KakaoJson;->getJson()Lkotlinx/serialization/json/Json;

    move-result-object p0

    check-cast p0, Lkotlinx/serialization/StringFormat;

    .line 3069
    invoke-interface {p0}, Lkotlinx/serialization/StringFormat;->getSerializersModule()Lkotlinx/serialization/modules/SerializersModule;

    new-instance v0, Lkotlinx/serialization/internal/ArrayListSerializer;

    sget-object v3, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    invoke-direct {v0, v3}, Lkotlinx/serialization/internal/ArrayListSerializer;-><init>(Lkotlinx/serialization/KSerializer;)V

    check-cast v0, Lkotlinx/serialization/SerializationStrategy;

    invoke-interface {p0, v0, p1}, Lkotlinx/serialization/StringFormat;->encodeToString(Lkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    if-eqz p4, :cond_1

    .line 1679
    sget-object p0, Lcom/kakao/sdk/common/util/KakaoJson;->INSTANCE:Lcom/kakao/sdk/common/util/KakaoJson;

    .line 3109
    new-instance p0, Lkotlinx/serialization/json/JsonObjectBuilder;

    invoke-direct {p0}, Lkotlinx/serialization/json/JsonObjectBuilder;-><init>()V

    .line 3089
    invoke-interface {p4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    .line 3129
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/util/Map$Entry;

    .line 3089
    invoke-interface {p4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sget-object v4, Lcom/kakao/sdk/common/util/KakaoJson;->INSTANCE:Lcom/kakao/sdk/common/util/KakaoJson;

    invoke-interface {p4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p4

    .line 3139
    invoke-virtual {v4}, Lcom/kakao/sdk/common/util/KakaoJson;->getJson()Lkotlinx/serialization/json/Json;

    move-result-object v4

    .line 3149
    invoke-virtual {v4}, Lkotlinx/serialization/json/Json;->getSerializersModule()Lkotlinx/serialization/modules/SerializersModule;

    sget-object v5, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    check-cast v5, Lkotlinx/serialization/SerializationStrategy;

    invoke-virtual {v4, v5, p4}, Lkotlinx/serialization/json/Json;->encodeToJsonElement(Lkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)Lkotlinx/serialization/json/JsonElement;

    move-result-object p4

    .line 3089
    invoke-virtual {p0, v0, p4}, Lkotlinx/serialization/json/JsonObjectBuilder;->put(Ljava/lang/String;Lkotlinx/serialization/json/JsonElement;)Lkotlinx/serialization/json/JsonElement;

    goto :goto_0

    .line 3169
    :cond_0
    invoke-virtual {p0}, Lkotlinx/serialization/json/JsonObjectBuilder;->build()Lkotlinx/serialization/json/JsonObject;

    move-result-object p0

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    :goto_1
    move-object v6, p0

    move-wide v4, p2

    .line 1639
    invoke-interface/range {v1 .. v6}, Lcom/kakao/sdk/partner/talk/PartnerTalkApi;->sendMessage(Ljava/lang/String;Ljava/lang/String;JLkotlinx/serialization/json/JsonObject;)Lretrofit2/Call;

    move-result-object p0

    .line 1699
    new-instance p1, Lcom/kakao/sdk/partner/talk/TalkApiClientKt$sendCustomMessageForPartner$2;

    invoke-direct {p1, p5}, Lcom/kakao/sdk/partner/talk/TalkApiClientKt$sendCustomMessageForPartner$2;-><init>(Lkotlin/jvm/functions/Function2;)V

    check-cast p1, Lretrofit2/Callback;

    invoke-interface {p0, p1}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public static final sendCustomMessageForPartner(Lcom/kakao/sdk/talk/TalkApiClient;Ljava/util/List;JLkotlin/jvm/functions/Function2;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/kakao/sdk/talk/TalkApiClient;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;J",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lcom/kakao/sdk/partner/talk/model/PartnerMessageSendResult;",
            "-",
            "Ljava/lang/Throwable;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "receiverUuids"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x0

    const/4 v7, 0x4

    const/4 v8, 0x0

    move-object v1, p0

    move-object v2, p1

    move-wide v3, p2

    move-object v6, p4

    invoke-static/range {v1 .. v8}, Lcom/kakao/sdk/partner/talk/TalkApiClientKt;->sendCustomMessageForPartner$default(Lcom/kakao/sdk/talk/TalkApiClient;Ljava/util/List;JLjava/util/Map;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method public static synthetic sendCustomMessageForPartner$default(Lcom/kakao/sdk/talk/TalkApiClient;Ljava/util/List;JLjava/util/Map;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)V
    .locals 6

    and-int/lit8 p6, p6, 0x4

    if-eqz p6, :cond_0

    const/4 p4, 0x0

    :cond_0
    move-object v4, p4

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-object v5, p5

    .line 1579
    invoke-static/range {v0 .. v5}, Lcom/kakao/sdk/partner/talk/TalkApiClientKt;->sendCustomMessageForPartner(Lcom/kakao/sdk/talk/TalkApiClient;Ljava/util/List;JLjava/util/Map;Lkotlin/jvm/functions/Function2;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method public static final sendCustomMessageToChats(Lcom/kakao/sdk/talk/TalkApiClient;Ljava/util/List;JLjava/util/Map;Lkotlin/jvm/functions/Function2;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/kakao/sdk/talk/TalkApiClient;",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;J",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lcom/kakao/sdk/partner/talk/model/PartnerMessageSendResult;",
            "-",
            "Ljava/lang/Throwable;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "receiverChatIds"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1909
    invoke-static {p0}, Lcom/kakao/sdk/partner/talk/TalkApiClientKt;->getPartnerApi(Lcom/kakao/sdk/talk/TalkApiClient;)Lcom/kakao/sdk/partner/talk/PartnerTalkApi;

    move-result-object v1

    const-string v2, "chat_id"

    .line 1929
    sget-object p0, Lcom/kakao/sdk/common/util/KakaoJson;->INSTANCE:Lcom/kakao/sdk/common/util/KakaoJson;

    .line 3179
    invoke-virtual {p0}, Lcom/kakao/sdk/common/util/KakaoJson;->getJson()Lkotlinx/serialization/json/Json;

    move-result-object p0

    check-cast p0, Lkotlinx/serialization/StringFormat;

    .line 3189
    invoke-interface {p0}, Lkotlinx/serialization/StringFormat;->getSerializersModule()Lkotlinx/serialization/modules/SerializersModule;

    new-instance v0, Lkotlinx/serialization/internal/ArrayListSerializer;

    sget-object v3, Lkotlinx/serialization/internal/LongSerializer;->INSTANCE:Lkotlinx/serialization/internal/LongSerializer;

    invoke-direct {v0, v3}, Lkotlinx/serialization/internal/ArrayListSerializer;-><init>(Lkotlinx/serialization/KSerializer;)V

    check-cast v0, Lkotlinx/serialization/SerializationStrategy;

    invoke-interface {p0, v0, p1}, Lkotlinx/serialization/StringFormat;->encodeToString(Lkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    if-eqz p4, :cond_1

    .line 1949
    sget-object p0, Lcom/kakao/sdk/common/util/KakaoJson;->INSTANCE:Lcom/kakao/sdk/common/util/KakaoJson;

    .line 3219
    new-instance p0, Lkotlinx/serialization/json/JsonObjectBuilder;

    invoke-direct {p0}, Lkotlinx/serialization/json/JsonObjectBuilder;-><init>()V

    .line 3199
    invoke-interface {p4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    .line 3239
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/util/Map$Entry;

    .line 3199
    invoke-interface {p4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sget-object v4, Lcom/kakao/sdk/common/util/KakaoJson;->INSTANCE:Lcom/kakao/sdk/common/util/KakaoJson;

    invoke-interface {p4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p4

    .line 3249
    invoke-virtual {v4}, Lcom/kakao/sdk/common/util/KakaoJson;->getJson()Lkotlinx/serialization/json/Json;

    move-result-object v4

    .line 3259
    invoke-virtual {v4}, Lkotlinx/serialization/json/Json;->getSerializersModule()Lkotlinx/serialization/modules/SerializersModule;

    sget-object v5, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    check-cast v5, Lkotlinx/serialization/SerializationStrategy;

    invoke-virtual {v4, v5, p4}, Lkotlinx/serialization/json/Json;->encodeToJsonElement(Lkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)Lkotlinx/serialization/json/JsonElement;

    move-result-object p4

    .line 3199
    invoke-virtual {p0, v0, p4}, Lkotlinx/serialization/json/JsonObjectBuilder;->put(Ljava/lang/String;Lkotlinx/serialization/json/JsonElement;)Lkotlinx/serialization/json/JsonElement;

    goto :goto_0

    .line 3279
    :cond_0
    invoke-virtual {p0}, Lkotlinx/serialization/json/JsonObjectBuilder;->build()Lkotlinx/serialization/json/JsonObject;

    move-result-object p0

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    :goto_1
    move-object v6, p0

    move-wide v4, p2

    .line 1909
    invoke-interface/range {v1 .. v6}, Lcom/kakao/sdk/partner/talk/PartnerTalkApi;->sendMessage(Ljava/lang/String;Ljava/lang/String;JLkotlinx/serialization/json/JsonObject;)Lretrofit2/Call;

    move-result-object p0

    .line 1969
    new-instance p1, Lcom/kakao/sdk/partner/talk/TalkApiClientKt$sendCustomMessageToChats$2;

    invoke-direct {p1, p5}, Lcom/kakao/sdk/partner/talk/TalkApiClientKt$sendCustomMessageToChats$2;-><init>(Lkotlin/jvm/functions/Function2;)V

    check-cast p1, Lretrofit2/Callback;

    invoke-interface {p0, p1}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method public static final sendCustomMessageToChats(Lcom/kakao/sdk/talk/TalkApiClient;Ljava/util/List;JLkotlin/jvm/functions/Function2;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/kakao/sdk/talk/TalkApiClient;",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;J",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lcom/kakao/sdk/partner/talk/model/PartnerMessageSendResult;",
            "-",
            "Ljava/lang/Throwable;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "receiverChatIds"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x0

    const/4 v7, 0x4

    const/4 v8, 0x0

    move-object v1, p0

    move-object v2, p1

    move-wide v3, p2

    move-object v6, p4

    invoke-static/range {v1 .. v8}, Lcom/kakao/sdk/partner/talk/TalkApiClientKt;->sendCustomMessageToChats$default(Lcom/kakao/sdk/talk/TalkApiClient;Ljava/util/List;JLjava/util/Map;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method public static synthetic sendCustomMessageToChats$default(Lcom/kakao/sdk/talk/TalkApiClient;Ljava/util/List;JLjava/util/Map;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)V
    .locals 6

    and-int/lit8 p6, p6, 0x4

    if-eqz p6, :cond_0

    const/4 p4, 0x0

    :cond_0
    move-object v4, p4

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-object v5, p5

    .line 1849
    invoke-static/range {v0 .. v5}, Lcom/kakao/sdk/partner/talk/TalkApiClientKt;->sendCustomMessageToChats(Lcom/kakao/sdk/talk/TalkApiClient;Ljava/util/List;JLjava/util/Map;Lkotlin/jvm/functions/Function2;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method public static final sendDefaultMessageForPartner(Lcom/kakao/sdk/talk/TalkApiClient;Ljava/util/List;Lcom/kakao/sdk/template/model/DefaultTemplate;Lkotlin/jvm/functions/Function2;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/kakao/sdk/talk/TalkApiClient;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/kakao/sdk/template/model/DefaultTemplate;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lcom/kakao/sdk/partner/talk/model/PartnerMessageSendResult;",
            "-",
            "Ljava/lang/Throwable;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "receiverUuids"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "template"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2169
    invoke-static {p0}, Lcom/kakao/sdk/partner/talk/TalkApiClientKt;->getPartnerApi(Lcom/kakao/sdk/talk/TalkApiClient;)Lcom/kakao/sdk/partner/talk/PartnerTalkApi;

    move-result-object p0

    sget-object v0, Lcom/kakao/sdk/common/util/KakaoJson;->INSTANCE:Lcom/kakao/sdk/common/util/KakaoJson;

    .line 3289
    invoke-virtual {v0}, Lcom/kakao/sdk/common/util/KakaoJson;->getJson()Lkotlinx/serialization/json/Json;

    move-result-object v0

    check-cast v0, Lkotlinx/serialization/StringFormat;

    .line 3299
    invoke-interface {v0}, Lkotlinx/serialization/StringFormat;->getSerializersModule()Lkotlinx/serialization/modules/SerializersModule;

    new-instance v1, Lkotlinx/serialization/internal/ArrayListSerializer;

    sget-object v2, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    invoke-direct {v1, v2}, Lkotlinx/serialization/internal/ArrayListSerializer;-><init>(Lkotlinx/serialization/KSerializer;)V

    check-cast v1, Lkotlinx/serialization/SerializationStrategy;

    invoke-interface {v0, v1, p1}, Lkotlinx/serialization/StringFormat;->encodeToString(Lkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 2169
    sget-object v0, Lcom/kakao/sdk/common/util/KakaoJson;->INSTANCE:Lcom/kakao/sdk/common/util/KakaoJson;

    .line 3289
    invoke-virtual {v0}, Lcom/kakao/sdk/common/util/KakaoJson;->getJson()Lkotlinx/serialization/json/Json;

    move-result-object v0

    check-cast v0, Lkotlinx/serialization/StringFormat;

    .line 3299
    invoke-interface {v0}, Lkotlinx/serialization/StringFormat;->getSerializersModule()Lkotlinx/serialization/modules/SerializersModule;

    sget-object v1, Lcom/kakao/sdk/template/model/DefaultTemplate;->Companion:Lcom/kakao/sdk/template/model/DefaultTemplate$Companion;

    invoke-virtual {v1}, Lcom/kakao/sdk/template/model/DefaultTemplate$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    move-result-object v1

    check-cast v1, Lkotlinx/serialization/SerializationStrategy;

    invoke-interface {v0, v1, p2}, Lkotlinx/serialization/StringFormat;->encodeToString(Lkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string/jumbo v0, "uuid"

    .line 2169
    invoke-interface {p0, v0, p1, p2}, Lcom/kakao/sdk/partner/talk/PartnerTalkApi;->sendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lretrofit2/Call;

    move-result-object p0

    .line 2179
    new-instance p1, Lcom/kakao/sdk/partner/talk/TalkApiClientKt$sendDefaultMessageForPartner$1;

    invoke-direct {p1, p3}, Lcom/kakao/sdk/partner/talk/TalkApiClientKt$sendDefaultMessageForPartner$1;-><init>(Lkotlin/jvm/functions/Function2;)V

    check-cast p1, Lretrofit2/Callback;

    invoke-interface {p0, p1}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public static final sendDefaultMessageToChats(Lcom/kakao/sdk/talk/TalkApiClient;Ljava/util/List;Lcom/kakao/sdk/template/model/DefaultTemplate;Lkotlin/jvm/functions/Function2;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/kakao/sdk/talk/TalkApiClient;",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;",
            "Lcom/kakao/sdk/template/model/DefaultTemplate;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lcom/kakao/sdk/partner/talk/model/PartnerMessageSendResult;",
            "-",
            "Ljava/lang/Throwable;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "receiverChatIds"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "template"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2359
    invoke-static {p0}, Lcom/kakao/sdk/partner/talk/TalkApiClientKt;->getPartnerApi(Lcom/kakao/sdk/talk/TalkApiClient;)Lcom/kakao/sdk/partner/talk/PartnerTalkApi;

    move-result-object p0

    sget-object v0, Lcom/kakao/sdk/common/util/KakaoJson;->INSTANCE:Lcom/kakao/sdk/common/util/KakaoJson;

    .line 3309
    invoke-virtual {v0}, Lcom/kakao/sdk/common/util/KakaoJson;->getJson()Lkotlinx/serialization/json/Json;

    move-result-object v0

    check-cast v0, Lkotlinx/serialization/StringFormat;

    .line 3319
    invoke-interface {v0}, Lkotlinx/serialization/StringFormat;->getSerializersModule()Lkotlinx/serialization/modules/SerializersModule;

    new-instance v1, Lkotlinx/serialization/internal/ArrayListSerializer;

    sget-object v2, Lkotlinx/serialization/internal/LongSerializer;->INSTANCE:Lkotlinx/serialization/internal/LongSerializer;

    invoke-direct {v1, v2}, Lkotlinx/serialization/internal/ArrayListSerializer;-><init>(Lkotlinx/serialization/KSerializer;)V

    check-cast v1, Lkotlinx/serialization/SerializationStrategy;

    invoke-interface {v0, v1, p1}, Lkotlinx/serialization/StringFormat;->encodeToString(Lkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 2359
    sget-object v0, Lcom/kakao/sdk/common/util/KakaoJson;->INSTANCE:Lcom/kakao/sdk/common/util/KakaoJson;

    .line 3309
    invoke-virtual {v0}, Lcom/kakao/sdk/common/util/KakaoJson;->getJson()Lkotlinx/serialization/json/Json;

    move-result-object v0

    check-cast v0, Lkotlinx/serialization/StringFormat;

    .line 3319
    invoke-interface {v0}, Lkotlinx/serialization/StringFormat;->getSerializersModule()Lkotlinx/serialization/modules/SerializersModule;

    sget-object v1, Lcom/kakao/sdk/template/model/DefaultTemplate;->Companion:Lcom/kakao/sdk/template/model/DefaultTemplate$Companion;

    invoke-virtual {v1}, Lcom/kakao/sdk/template/model/DefaultTemplate$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    move-result-object v1

    check-cast v1, Lkotlinx/serialization/SerializationStrategy;

    invoke-interface {v0, v1, p2}, Lkotlinx/serialization/StringFormat;->encodeToString(Lkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "chat_id"

    .line 2359
    invoke-interface {p0, v0, p1, p2}, Lcom/kakao/sdk/partner/talk/PartnerTalkApi;->sendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lretrofit2/Call;

    move-result-object p0

    .line 2369
    new-instance p1, Lcom/kakao/sdk/partner/talk/TalkApiClientKt$sendDefaultMessageToChats$1;

    invoke-direct {p1, p3}, Lcom/kakao/sdk/partner/talk/TalkApiClientKt$sendDefaultMessageToChats$1;-><init>(Lkotlin/jvm/functions/Function2;)V

    check-cast p1, Lretrofit2/Callback;

    invoke-interface {p0, p1}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method public static final sendScrapMessageForPartner(Lcom/kakao/sdk/talk/TalkApiClient;Ljava/util/List;Ljava/lang/String;Ljava/lang/Long;Ljava/util/Map;Lkotlin/jvm/functions/Function2;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/kakao/sdk/talk/TalkApiClient;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lcom/kakao/sdk/partner/talk/model/PartnerMessageSendResult;",
            "-",
            "Ljava/lang/Throwable;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "receiverUuids"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "requestUrl"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2619
    invoke-static {p0}, Lcom/kakao/sdk/partner/talk/TalkApiClientKt;->getPartnerApi(Lcom/kakao/sdk/talk/TalkApiClient;)Lcom/kakao/sdk/partner/talk/PartnerTalkApi;

    move-result-object v1

    const-string/jumbo v2, "uuid"

    .line 2639
    sget-object p0, Lcom/kakao/sdk/common/util/KakaoJson;->INSTANCE:Lcom/kakao/sdk/common/util/KakaoJson;

    .line 3329
    invoke-virtual {p0}, Lcom/kakao/sdk/common/util/KakaoJson;->getJson()Lkotlinx/serialization/json/Json;

    move-result-object p0

    check-cast p0, Lkotlinx/serialization/StringFormat;

    .line 3339
    invoke-interface {p0}, Lkotlinx/serialization/StringFormat;->getSerializersModule()Lkotlinx/serialization/modules/SerializersModule;

    new-instance v0, Lkotlinx/serialization/internal/ArrayListSerializer;

    sget-object v3, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    invoke-direct {v0, v3}, Lkotlinx/serialization/internal/ArrayListSerializer;-><init>(Lkotlinx/serialization/KSerializer;)V

    check-cast v0, Lkotlinx/serialization/SerializationStrategy;

    invoke-interface {p0, v0, p1}, Lkotlinx/serialization/StringFormat;->encodeToString(Lkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    if-eqz p4, :cond_1

    .line 2669
    sget-object p0, Lcom/kakao/sdk/common/util/KakaoJson;->INSTANCE:Lcom/kakao/sdk/common/util/KakaoJson;

    .line 3369
    new-instance p0, Lkotlinx/serialization/json/JsonObjectBuilder;

    invoke-direct {p0}, Lkotlinx/serialization/json/JsonObjectBuilder;-><init>()V

    .line 3349
    invoke-interface {p4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    .line 3389
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/util/Map$Entry;

    .line 3349
    invoke-interface {p4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sget-object v4, Lcom/kakao/sdk/common/util/KakaoJson;->INSTANCE:Lcom/kakao/sdk/common/util/KakaoJson;

    invoke-interface {p4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p4

    .line 3399
    invoke-virtual {v4}, Lcom/kakao/sdk/common/util/KakaoJson;->getJson()Lkotlinx/serialization/json/Json;

    move-result-object v4

    .line 3409
    invoke-virtual {v4}, Lkotlinx/serialization/json/Json;->getSerializersModule()Lkotlinx/serialization/modules/SerializersModule;

    sget-object v5, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    check-cast v5, Lkotlinx/serialization/SerializationStrategy;

    invoke-virtual {v4, v5, p4}, Lkotlinx/serialization/json/Json;->encodeToJsonElement(Lkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)Lkotlinx/serialization/json/JsonElement;

    move-result-object p4

    .line 3349
    invoke-virtual {p0, v0, p4}, Lkotlinx/serialization/json/JsonObjectBuilder;->put(Ljava/lang/String;Lkotlinx/serialization/json/JsonElement;)Lkotlinx/serialization/json/JsonElement;

    goto :goto_0

    .line 3429
    :cond_0
    invoke-virtual {p0}, Lkotlinx/serialization/json/JsonObjectBuilder;->build()Lkotlinx/serialization/json/JsonObject;

    move-result-object p0

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    :goto_1
    move-object v6, p0

    move-object v4, p2

    move-object v5, p3

    .line 2619
    invoke-interface/range {v1 .. v6}, Lcom/kakao/sdk/partner/talk/PartnerTalkApi;->sendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Lkotlinx/serialization/json/JsonObject;)Lretrofit2/Call;

    move-result-object p0

    .line 2689
    new-instance p1, Lcom/kakao/sdk/partner/talk/TalkApiClientKt$sendScrapMessageForPartner$2;

    invoke-direct {p1, p5}, Lcom/kakao/sdk/partner/talk/TalkApiClientKt$sendScrapMessageForPartner$2;-><init>(Lkotlin/jvm/functions/Function2;)V

    check-cast p1, Lretrofit2/Callback;

    invoke-interface {p0, p1}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public static final sendScrapMessageForPartner(Lcom/kakao/sdk/talk/TalkApiClient;Ljava/util/List;Ljava/lang/String;Ljava/lang/Long;Lkotlin/jvm/functions/Function2;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/kakao/sdk/talk/TalkApiClient;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lcom/kakao/sdk/partner/talk/model/PartnerMessageSendResult;",
            "-",
            "Ljava/lang/Throwable;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "receiverUuids"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "requestUrl"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x0

    const/16 v7, 0x8

    const/4 v8, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v6, p4

    invoke-static/range {v1 .. v8}, Lcom/kakao/sdk/partner/talk/TalkApiClientKt;->sendScrapMessageForPartner$default(Lcom/kakao/sdk/talk/TalkApiClient;Ljava/util/List;Ljava/lang/String;Ljava/lang/Long;Ljava/util/Map;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)V

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public static final sendScrapMessageForPartner(Lcom/kakao/sdk/talk/TalkApiClient;Ljava/util/List;Ljava/lang/String;Lkotlin/jvm/functions/Function2;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/kakao/sdk/talk/TalkApiClient;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lcom/kakao/sdk/partner/talk/model/PartnerMessageSendResult;",
            "-",
            "Ljava/lang/Throwable;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "receiverUuids"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "requestUrl"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v7, 0xc

    const/4 v8, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v6, p3

    invoke-static/range {v1 .. v8}, Lcom/kakao/sdk/partner/talk/TalkApiClientKt;->sendScrapMessageForPartner$default(Lcom/kakao/sdk/talk/TalkApiClient;Ljava/util/List;Ljava/lang/String;Ljava/lang/Long;Ljava/util/Map;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)V

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public static synthetic sendScrapMessageForPartner$default(Lcom/kakao/sdk/talk/TalkApiClient;Ljava/util/List;Ljava/lang/String;Ljava/lang/Long;Ljava/util/Map;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)V
    .locals 7

    and-int/lit8 p7, p6, 0x4

    const/4 v0, 0x0

    if-eqz p7, :cond_0

    move-object v4, v0

    goto :goto_0

    :cond_0
    move-object v4, p3

    :goto_0
    and-int/lit8 p3, p6, 0x8

    if-eqz p3, :cond_1

    move-object v5, v0

    goto :goto_1

    :cond_1
    move-object v5, p4

    :goto_1
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v6, p5

    .line 2549
    invoke-static/range {v1 .. v6}, Lcom/kakao/sdk/partner/talk/TalkApiClientKt;->sendScrapMessageForPartner(Lcom/kakao/sdk/talk/TalkApiClient;Ljava/util/List;Ljava/lang/String;Ljava/lang/Long;Ljava/util/Map;Lkotlin/jvm/functions/Function2;)V

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public static final sendScrapMessageToChats(Lcom/kakao/sdk/talk/TalkApiClient;Ljava/util/List;Ljava/lang/String;Ljava/lang/Long;Ljava/util/Map;Lkotlin/jvm/functions/Function2;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/kakao/sdk/talk/TalkApiClient;",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lcom/kakao/sdk/partner/talk/model/PartnerMessageSendResult;",
            "-",
            "Ljava/lang/Throwable;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "receiverChatIds"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "requestUrl"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2919
    invoke-static {p0}, Lcom/kakao/sdk/partner/talk/TalkApiClientKt;->getPartnerApi(Lcom/kakao/sdk/talk/TalkApiClient;)Lcom/kakao/sdk/partner/talk/PartnerTalkApi;

    move-result-object v1

    const-string v2, "chat_id"

    .line 2939
    sget-object p0, Lcom/kakao/sdk/common/util/KakaoJson;->INSTANCE:Lcom/kakao/sdk/common/util/KakaoJson;

    .line 3439
    invoke-virtual {p0}, Lcom/kakao/sdk/common/util/KakaoJson;->getJson()Lkotlinx/serialization/json/Json;

    move-result-object p0

    check-cast p0, Lkotlinx/serialization/StringFormat;

    .line 3449
    invoke-interface {p0}, Lkotlinx/serialization/StringFormat;->getSerializersModule()Lkotlinx/serialization/modules/SerializersModule;

    new-instance v0, Lkotlinx/serialization/internal/ArrayListSerializer;

    sget-object v3, Lkotlinx/serialization/internal/LongSerializer;->INSTANCE:Lkotlinx/serialization/internal/LongSerializer;

    invoke-direct {v0, v3}, Lkotlinx/serialization/internal/ArrayListSerializer;-><init>(Lkotlinx/serialization/KSerializer;)V

    check-cast v0, Lkotlinx/serialization/SerializationStrategy;

    invoke-interface {p0, v0, p1}, Lkotlinx/serialization/StringFormat;->encodeToString(Lkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    if-eqz p4, :cond_1

    .line 2969
    sget-object p0, Lcom/kakao/sdk/common/util/KakaoJson;->INSTANCE:Lcom/kakao/sdk/common/util/KakaoJson;

    .line 3479
    new-instance p0, Lkotlinx/serialization/json/JsonObjectBuilder;

    invoke-direct {p0}, Lkotlinx/serialization/json/JsonObjectBuilder;-><init>()V

    .line 3459
    invoke-interface {p4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    .line 3499
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/util/Map$Entry;

    .line 3459
    invoke-interface {p4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sget-object v4, Lcom/kakao/sdk/common/util/KakaoJson;->INSTANCE:Lcom/kakao/sdk/common/util/KakaoJson;

    invoke-interface {p4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p4

    .line 3509
    invoke-virtual {v4}, Lcom/kakao/sdk/common/util/KakaoJson;->getJson()Lkotlinx/serialization/json/Json;

    move-result-object v4

    .line 3519
    invoke-virtual {v4}, Lkotlinx/serialization/json/Json;->getSerializersModule()Lkotlinx/serialization/modules/SerializersModule;

    sget-object v5, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    check-cast v5, Lkotlinx/serialization/SerializationStrategy;

    invoke-virtual {v4, v5, p4}, Lkotlinx/serialization/json/Json;->encodeToJsonElement(Lkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)Lkotlinx/serialization/json/JsonElement;

    move-result-object p4

    .line 3459
    invoke-virtual {p0, v0, p4}, Lkotlinx/serialization/json/JsonObjectBuilder;->put(Ljava/lang/String;Lkotlinx/serialization/json/JsonElement;)Lkotlinx/serialization/json/JsonElement;

    goto :goto_0

    .line 3539
    :cond_0
    invoke-virtual {p0}, Lkotlinx/serialization/json/JsonObjectBuilder;->build()Lkotlinx/serialization/json/JsonObject;

    move-result-object p0

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    :goto_1
    move-object v6, p0

    move-object v4, p2

    move-object v5, p3

    .line 2919
    invoke-interface/range {v1 .. v6}, Lcom/kakao/sdk/partner/talk/PartnerTalkApi;->sendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Lkotlinx/serialization/json/JsonObject;)Lretrofit2/Call;

    move-result-object p0

    .line 2989
    new-instance p1, Lcom/kakao/sdk/partner/talk/TalkApiClientKt$sendScrapMessageToChats$2;

    invoke-direct {p1, p5}, Lcom/kakao/sdk/partner/talk/TalkApiClientKt$sendScrapMessageToChats$2;-><init>(Lkotlin/jvm/functions/Function2;)V

    check-cast p1, Lretrofit2/Callback;

    invoke-interface {p0, p1}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method public static final sendScrapMessageToChats(Lcom/kakao/sdk/talk/TalkApiClient;Ljava/util/List;Ljava/lang/String;Ljava/lang/Long;Lkotlin/jvm/functions/Function2;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/kakao/sdk/talk/TalkApiClient;",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lcom/kakao/sdk/partner/talk/model/PartnerMessageSendResult;",
            "-",
            "Ljava/lang/Throwable;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "receiverChatIds"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "requestUrl"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x0

    const/16 v7, 0x8

    const/4 v8, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v6, p4

    invoke-static/range {v1 .. v8}, Lcom/kakao/sdk/partner/talk/TalkApiClientKt;->sendScrapMessageToChats$default(Lcom/kakao/sdk/talk/TalkApiClient;Ljava/util/List;Ljava/lang/String;Ljava/lang/Long;Ljava/util/Map;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)V

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public static final sendScrapMessageToChats(Lcom/kakao/sdk/talk/TalkApiClient;Ljava/util/List;Ljava/lang/String;Lkotlin/jvm/functions/Function2;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/kakao/sdk/talk/TalkApiClient;",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lcom/kakao/sdk/partner/talk/model/PartnerMessageSendResult;",
            "-",
            "Ljava/lang/Throwable;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "receiverChatIds"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "requestUrl"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v7, 0xc

    const/4 v8, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v6, p3

    invoke-static/range {v1 .. v8}, Lcom/kakao/sdk/partner/talk/TalkApiClientKt;->sendScrapMessageToChats$default(Lcom/kakao/sdk/talk/TalkApiClient;Ljava/util/List;Ljava/lang/String;Ljava/lang/Long;Ljava/util/Map;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)V

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public static synthetic sendScrapMessageToChats$default(Lcom/kakao/sdk/talk/TalkApiClient;Ljava/util/List;Ljava/lang/String;Ljava/lang/Long;Ljava/util/Map;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)V
    .locals 7

    and-int/lit8 p7, p6, 0x4

    const/4 v0, 0x0

    if-eqz p7, :cond_0

    move-object v4, v0

    goto :goto_0

    :cond_0
    move-object v4, p3

    :goto_0
    and-int/lit8 p3, p6, 0x8

    if-eqz p3, :cond_1

    move-object v5, v0

    goto :goto_1

    :cond_1
    move-object v5, p4

    :goto_1
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v6, p5

    .line 2849
    invoke-static/range {v1 .. v6}, Lcom/kakao/sdk/partner/talk/TalkApiClientKt;->sendScrapMessageToChats(Lcom/kakao/sdk/talk/TalkApiClient;Ljava/util/List;Ljava/lang/String;Ljava/lang/Long;Ljava/util/Map;Lkotlin/jvm/functions/Function2;)V

    return-void

    nop

    .array-data 1
    .end array-data
.end method
