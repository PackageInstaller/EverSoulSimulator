.class public final Lcom/kakao/sdk/talk/TalkApiClient;
.super Ljava/lang/Object;
.source "TalkApiClient.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kakao/sdk/talk/TalkApiClient$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTalkApiClient.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TalkApiClient.kt\ncom/kakao/sdk/talk/TalkApiClient\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 KakaoJson.kt\ncom/kakao/sdk/common/util/KakaoJson\n+ 4 JsonElementBuilders.kt\nkotlinx/serialization/json/JsonElementBuildersKt\n+ 5 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 6 Json.kt\nkotlinx/serialization/json/JsonKt\n+ 7 SerialFormat.kt\nkotlinx/serialization/SerialFormatKt\n+ 8 IntentFactory.kt\ncom/kakao/sdk/auth/IntentFactory\n*L\n1#1,465:1\n1#2:466\n56#3:467\n53#3:472\n46#3:476\n56#3:478\n53#3:483\n56#3:487\n53#3:492\n46#3:496\n46#3:498\n46#3:500\n56#3:502\n53#3:507\n56#3:511\n53#3:516\n28#4,3:468\n31#4:475\n28#4,3:479\n31#4:486\n28#4,3:488\n31#4:495\n28#4,3:503\n31#4:510\n28#4,3:512\n31#4:519\n1855#5:471\n1856#5:474\n1855#5:482\n1856#5:485\n1855#5:491\n1856#5:494\n1855#5:506\n1856#5:509\n1855#5:515\n1856#5:518\n211#6:473\n211#6:484\n211#6:493\n211#6:508\n211#6:517\n113#7:477\n113#7:497\n113#7:499\n113#7:501\n74#8,6:520\n*S KotlinDebug\n*F\n+ 1 TalkApiClient.kt\ncom/kakao/sdk/talk/TalkApiClient\n*L\n126#1:467\n126#1:472\n144#1:476\n166#1:478\n166#1:483\n189#1:487\n189#1:492\n190#1:496\n209#1:498\n234#1:500\n237#1:502\n237#1:507\n412#1:511\n412#1:516\n126#1:468,3\n126#1:475\n166#1:479,3\n166#1:486\n189#1:488,3\n189#1:495\n237#1:503,3\n237#1:510\n412#1:512,3\n412#1:519\n126#1:471\n126#1:474\n166#1:482\n166#1:485\n189#1:491\n189#1:494\n237#1:506\n237#1:509\n412#1:515\n412#1:518\n126#1:473\n166#1:484\n189#1:493\n237#1:508\n412#1:517\n144#1:477\n190#1:497\n209#1:499\n234#1:501\n453#1:520,6\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00b6\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0010$\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\n\u0018\u0000 K2\u00020\u0001:\u0001KB-\u0012\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0005\u0012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0007\u0012\u0008\u0008\u0002\u0010\u0008\u001a\u00020\t\u00a2\u0006\u0002\u0010\nJ;\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u00102#\u0010\u0011\u001a\u001f\u0012\u0015\u0012\u0013\u0018\u00010\u0013\u00a2\u0006\u000c\u0008\u0014\u0012\u0008\u0008\u0015\u0012\u0004\u0008\u0008(\u0016\u0012\u0004\u0012\u00020\u000c0\u0012J\u000e\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u000f\u001a\u00020\u0010J\u0018\u0010\u0019\u001a\u00020\u001a2\u0006\u0010\u001b\u001a\u00020\u00102\u0006\u0010\u001c\u001a\u00020\u0010H\u0002J\u0010\u0010\u001d\u001a\u00020\u00182\u0006\u0010\u000f\u001a\u00020\u0010H\u0007JV\u0010\u001e\u001a\u00020\u000c2\u0010\u0008\u0002\u0010\u001f\u001a\n\u0012\u0004\u0012\u00020\u0010\u0018\u00010 2:\u0010\u0011\u001a6\u0012\u0015\u0012\u0013\u0018\u00010\"\u00a2\u0006\u000c\u0008\u0014\u0012\u0008\u0008\u0015\u0012\u0004\u0008\u0008(#\u0012\u0015\u0012\u0013\u0018\u00010\u0013\u00a2\u0006\u000c\u0008\u0014\u0012\u0008\u0008\u0015\u0012\u0004\u0008\u0008(\u0016\u0012\u0004\u0012\u00020\u000c0!H\u0007J;\u0010$\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u00102#\u0010\u0011\u001a\u001f\u0012\u0015\u0012\u0013\u0018\u00010\u0013\u00a2\u0006\u000c\u0008\u0014\u0012\u0008\u0008\u0015\u0012\u0004\u0008\u0008(\u0016\u0012\u0004\u0012\u00020\u000c0\u0012J\u000e\u0010%\u001a\u00020\u00182\u0006\u0010\u000f\u001a\u00020\u0010JR\u0010&\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u00102:\u0010\u0011\u001a6\u0012\u0015\u0012\u0013\u0018\u00010\'\u00a2\u0006\u000c\u0008\u0014\u0012\u0008\u0008\u0015\u0012\u0004\u0008\u0008((\u0012\u0015\u0012\u0013\u0018\u00010\u0013\u00a2\u0006\u000c\u0008\u0014\u0012\u0008\u0008\u0015\u0012\u0004\u0008\u0008(\u0016\u0012\u0004\u0012\u00020\u000c0!J^\u0010&\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u00102\u0008\u0010)\u001a\u0004\u0018\u00010\u00102:\u0010\u0011\u001a6\u0012\u0015\u0012\u0013\u0018\u00010\'\u00a2\u0006\u000c\u0008\u0014\u0012\u0008\u0008\u0015\u0012\u0004\u0008\u0008((\u0012\u0015\u0012\u0013\u0018\u00010\u0013\u00a2\u0006\u000c\u0008\u0014\u0012\u0008\u0008\u0015\u0012\u0004\u0008\u0008(\u0016\u0012\u0004\u0012\u00020\u000c0!H\u0002JR\u0010*\u001a\u00020\u000c2\u0008\u0010\r\u001a\u0004\u0018\u00010+2@\u0010\u0011\u001a<\u0012\u001b\u0012\u0019\u0012\u0004\u0012\u00020-\u0018\u00010,\u00a2\u0006\u000c\u0008\u0014\u0012\u0008\u0008\u0015\u0012\u0004\u0008\u0008(*\u0012\u0015\u0012\u0013\u0018\u00010\u0013\u00a2\u0006\u000c\u0008\u0014\u0012\u0008\u0008\u0015\u0012\u0004\u0008\u0008(\u0016\u0012\u0004\u0012\u00020\u000c0!J\u007f\u0010*\u001a\u00020\u000c2\n\u0008\u0002\u0010.\u001a\u0004\u0018\u00010/2\n\u0008\u0002\u00100\u001a\u0004\u0018\u00010/2\n\u0008\u0002\u00101\u001a\u0004\u0018\u0001022\n\u0008\u0002\u00103\u001a\u0004\u0018\u0001042@\u0010\u0011\u001a<\u0012\u001b\u0012\u0019\u0012\u0004\u0012\u00020-\u0018\u00010,\u00a2\u0006\u000c\u0008\u0014\u0012\u0008\u0008\u0015\u0012\u0004\u0008\u0008(*\u0012\u0015\u0012\u0013\u0018\u00010\u0013\u00a2\u0006\u000c\u0008\u0014\u0012\u0008\u0008\u0015\u0012\u0004\u0008\u0008(\u0016\u0012\u0004\u0012\u00020\u000c0!H\u0007\u00a2\u0006\u0002\u00105JB\u00106\u001a\u00020\u000c2:\u0010\u0011\u001a6\u0012\u0015\u0012\u0013\u0018\u000107\u00a2\u0006\u000c\u0008\u0014\u0012\u0008\u0008\u0015\u0012\u0004\u0008\u0008(6\u0012\u0015\u0012\u0013\u0018\u00010\u0013\u00a2\u0006\u000c\u0008\u0014\u0012\u0008\u0008\u0015\u0012\u0004\u0008\u0008(\u0016\u0012\u0004\u0012\u00020\u000c0!JM\u00108\u001a\u00020\u000c2\u0006\u00109\u001a\u00020:2\u0016\u0008\u0002\u0010;\u001a\u0010\u0012\u0004\u0012\u00020\u0010\u0012\u0004\u0012\u00020\u0010\u0018\u00010<2#\u0010\u0011\u001a\u001f\u0012\u0015\u0012\u0013\u0018\u00010\u0013\u00a2\u0006\u000c\u0008\u0014\u0012\u0008\u0008\u0015\u0012\u0004\u0008\u0008(\u0016\u0012\u0004\u0012\u00020\u000c0\u0012H\u0007Jr\u0010=\u001a\u00020\u000c2\u000c\u0010>\u001a\u0008\u0012\u0004\u0012\u00020\u00100 2\u0006\u00109\u001a\u00020:2\u0016\u0008\u0002\u0010;\u001a\u0010\u0012\u0004\u0012\u00020\u0010\u0012\u0004\u0012\u00020\u0010\u0018\u00010<2:\u0010\u0011\u001a6\u0012\u0015\u0012\u0013\u0018\u00010?\u00a2\u0006\u000c\u0008\u0014\u0012\u0008\u0008\u0015\u0012\u0004\u0008\u0008((\u0012\u0015\u0012\u0013\u0018\u00010\u0013\u00a2\u0006\u000c\u0008\u0014\u0012\u0008\u0008\u0015\u0012\u0004\u0008\u0008(\u0016\u0012\u0004\u0012\u00020\u000c0!H\u0007J3\u0010@\u001a\u00020\u000c2\u0006\u0010A\u001a\u00020B2#\u0010\u0011\u001a\u001f\u0012\u0015\u0012\u0013\u0018\u00010\u0013\u00a2\u0006\u000c\u0008\u0014\u0012\u0008\u0008\u0015\u0012\u0004\u0008\u0008(\u0016\u0012\u0004\u0012\u00020\u000c0\u0012JX\u0010C\u001a\u00020\u000c2\u000c\u0010>\u001a\u0008\u0012\u0004\u0012\u00020\u00100 2\u0006\u0010A\u001a\u00020B2:\u0010\u0011\u001a6\u0012\u0015\u0012\u0013\u0018\u00010?\u00a2\u0006\u000c\u0008\u0014\u0012\u0008\u0008\u0015\u0012\u0004\u0008\u0008((\u0012\u0015\u0012\u0013\u0018\u00010\u0013\u00a2\u0006\u000c\u0008\u0014\u0012\u0008\u0008\u0015\u0012\u0004\u0008\u0008(\u0016\u0012\u0004\u0012\u00020\u000c0!J^\u0010D\u001a\u00020\u000c2\u0006\u0010E\u001a\u00020\u00102\n\u0008\u0002\u00109\u001a\u0004\u0018\u00010:2\u0016\u0008\u0002\u0010;\u001a\u0010\u0012\u0004\u0012\u00020\u0010\u0012\u0004\u0012\u00020\u0010\u0018\u00010<2#\u0010\u0011\u001a\u001f\u0012\u0015\u0012\u0013\u0018\u00010\u0013\u00a2\u0006\u000c\u0008\u0014\u0012\u0008\u0008\u0015\u0012\u0004\u0008\u0008(\u0016\u0012\u0004\u0012\u00020\u000c0\u0012H\u0007\u00a2\u0006\u0002\u0010FJ\u0083\u0001\u0010G\u001a\u00020\u000c2\u000c\u0010>\u001a\u0008\u0012\u0004\u0012\u00020\u00100 2\u0006\u0010E\u001a\u00020\u00102\n\u0008\u0002\u00109\u001a\u0004\u0018\u00010:2\u0016\u0008\u0002\u0010;\u001a\u0010\u0012\u0004\u0012\u00020\u0010\u0012\u0004\u0012\u00020\u0010\u0018\u00010<2:\u0010\u0011\u001a6\u0012\u0015\u0012\u0013\u0018\u00010?\u00a2\u0006\u000c\u0008\u0014\u0012\u0008\u0008\u0015\u0012\u0004\u0008\u0008((\u0012\u0015\u0012\u0013\u0018\u00010\u0013\u00a2\u0006\u000c\u0008\u0014\u0012\u0008\u0008\u0015\u0012\u0004\u0008\u0008(\u0016\u0012\u0004\u0012\u00020\u000c0!H\u0007\u00a2\u0006\u0002\u0010HJ=\u0010I\u001a\u00020\u000c2\u0006\u0010J\u001a\u00020\u00102\u0006\u0010\u000f\u001a\u00020\u00102#\u0010\u0011\u001a\u001f\u0012\u0015\u0012\u0013\u0018\u00010\u0013\u00a2\u0006\u000c\u0008\u0014\u0012\u0008\u0008\u0015\u0012\u0004\u0008\u0008(\u0016\u0012\u0004\u0012\u00020\u000c0\u0012H\u0002R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006L"
    }
    d2 = {
        "Lcom/kakao/sdk/talk/TalkApiClient;",
        "",
        "talkApi",
        "Lcom/kakao/sdk/talk/TalkApi;",
        "appKeyTalkApi",
        "Lcom/kakao/sdk/talk/AppKeyTalkApi;",
        "applicationInfo",
        "Lcom/kakao/sdk/common/model/ApplicationInfo;",
        "contextInfo",
        "Lcom/kakao/sdk/common/model/ContextInfo;",
        "(Lcom/kakao/sdk/talk/TalkApi;Lcom/kakao/sdk/talk/AppKeyTalkApi;Lcom/kakao/sdk/common/model/ApplicationInfo;Lcom/kakao/sdk/common/model/ContextInfo;)V",
        "addChannel",
        "",
        "context",
        "Landroid/content/Context;",
        "channelPublicId",
        "",
        "callback",
        "Lkotlin/Function1;",
        "",
        "Lkotlin/ParameterName;",
        "name",
        "error",
        "addChannelUrl",
        "Landroid/net/Uri;",
        "baseUri",
        "Landroid/net/Uri$Builder;",
        "appKey",
        "kaHeader",
        "channelChatUrl",
        "channels",
        "publicIds",
        "",
        "Lkotlin/Function2;",
        "Lcom/kakao/sdk/talk/model/Channels;",
        "relations",
        "chatChannel",
        "chatChannelUrl",
        "followChannel",
        "Lcom/kakao/sdk/talk/model/FollowChannelResult;",
        "result",
        "agt",
        "friends",
        "Lcom/kakao/sdk/talk/model/FriendsContext;",
        "Lcom/kakao/sdk/talk/model/Friends;",
        "Lcom/kakao/sdk/talk/model/Friend;",
        "offset",
        "",
        "limit",
        "order",
        "Lcom/kakao/sdk/talk/model/Order;",
        "friendOrder",
        "Lcom/kakao/sdk/talk/model/FriendOrder;",
        "(Ljava/lang/Integer;Ljava/lang/Integer;Lcom/kakao/sdk/talk/model/Order;Lcom/kakao/sdk/talk/model/FriendOrder;Lkotlin/jvm/functions/Function2;)V",
        "profile",
        "Lcom/kakao/sdk/talk/model/TalkProfile;",
        "sendCustomMemo",
        "templateId",
        "",
        "templateArgs",
        "",
        "sendCustomMessage",
        "receiverUuids",
        "Lcom/kakao/sdk/talk/model/MessageSendResult;",
        "sendDefaultMemo",
        "template",
        "Lcom/kakao/sdk/template/model/DefaultTemplate;",
        "sendDefaultMessage",
        "sendScrapMemo",
        "requestUrl",
        "(Ljava/lang/String;Ljava/lang/Long;Ljava/util/Map;Lkotlin/jvm/functions/Function1;)V",
        "sendScrapMessage",
        "(Ljava/util/List;Ljava/lang/String;Ljava/lang/Long;Ljava/util/Map;Lkotlin/jvm/functions/Function2;)V",
        "validate",
        "path",
        "Companion",
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


# static fields
.field public static final Companion:Lcom/kakao/sdk/talk/TalkApiClient$Companion;

.field private static final instance$delegate:Lkotlin/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/Lazy<",
            "Lcom/kakao/sdk/talk/TalkApiClient;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final appKeyTalkApi:Lcom/kakao/sdk/talk/AppKeyTalkApi;

.field private final applicationInfo:Lcom/kakao/sdk/common/model/ApplicationInfo;

.field private final contextInfo:Lcom/kakao/sdk/common/model/ContextInfo;

.field private final talkApi:Lcom/kakao/sdk/talk/TalkApi;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/kakao/sdk/talk/TalkApiClient$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/kakao/sdk/talk/TalkApiClient$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/kakao/sdk/talk/TalkApiClient;->Companion:Lcom/kakao/sdk/talk/TalkApiClient$Companion;

    .line 4629
    sget-object v0, Lcom/kakao/sdk/talk/TalkApiClient$Companion$instance$2;->INSTANCE:Lcom/kakao/sdk/talk/TalkApiClient$Companion$instance$2;

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/kakao/sdk/talk/TalkApiClient;->instance$delegate:Lkotlin/Lazy;

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public constructor <init>()V
    .locals 7

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0xf

    const/4 v6, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/kakao/sdk/talk/TalkApiClient;-><init>(Lcom/kakao/sdk/talk/TalkApi;Lcom/kakao/sdk/talk/AppKeyTalkApi;Lcom/kakao/sdk/common/model/ApplicationInfo;Lcom/kakao/sdk/common/model/ContextInfo;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method public constructor <init>(Lcom/kakao/sdk/talk/TalkApi;Lcom/kakao/sdk/talk/AppKeyTalkApi;Lcom/kakao/sdk/common/model/ApplicationInfo;Lcom/kakao/sdk/common/model/ContextInfo;)V
    .locals 1

    const-string v0, "talkApi"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "appKeyTalkApi"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "applicationInfo"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "contextInfo"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 549
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 559
    iput-object p1, p0, Lcom/kakao/sdk/talk/TalkApiClient;->talkApi:Lcom/kakao/sdk/talk/TalkApi;

    .line 569
    iput-object p2, p0, Lcom/kakao/sdk/talk/TalkApiClient;->appKeyTalkApi:Lcom/kakao/sdk/talk/AppKeyTalkApi;

    .line 579
    iput-object p3, p0, Lcom/kakao/sdk/talk/TalkApiClient;->applicationInfo:Lcom/kakao/sdk/common/model/ApplicationInfo;

    .line 589
    iput-object p4, p0, Lcom/kakao/sdk/talk/TalkApiClient;->contextInfo:Lcom/kakao/sdk/common/model/ContextInfo;

    return-void

    .array-data 1
    .end array-data
.end method

.method public synthetic constructor <init>(Lcom/kakao/sdk/talk/TalkApi;Lcom/kakao/sdk/talk/AppKeyTalkApi;Lcom/kakao/sdk/common/model/ApplicationInfo;Lcom/kakao/sdk/common/model/ContextInfo;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_0

    .line 559
    sget-object p1, Lcom/kakao/sdk/network/ApiFactory;->INSTANCE:Lcom/kakao/sdk/network/ApiFactory;

    invoke-static {p1}, Lcom/kakao/sdk/auth/network/ApiFactoryKt;->getKapiWithOAuth(Lcom/kakao/sdk/network/ApiFactory;)Lretrofit2/Retrofit;

    move-result-object p1

    const-class p6, Lcom/kakao/sdk/talk/TalkApi;

    invoke-virtual {p1, p6}, Lretrofit2/Retrofit;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    const-string p6, "ApiFactory.kapiWithOAuth\u2026eate(TalkApi::class.java)"

    invoke-static {p1, p6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/kakao/sdk/talk/TalkApi;

    :cond_0
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_1

    .line 569
    sget-object p2, Lcom/kakao/sdk/network/ApiFactory;->INSTANCE:Lcom/kakao/sdk/network/ApiFactory;

    invoke-virtual {p2}, Lcom/kakao/sdk/network/ApiFactory;->getKapi()Lretrofit2/Retrofit;

    move-result-object p2

    const-class p6, Lcom/kakao/sdk/talk/AppKeyTalkApi;

    invoke-virtual {p2, p6}, Lretrofit2/Retrofit;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    const-string p6, "ApiFactory.kapi.create(AppKeyTalkApi::class.java)"

    invoke-static {p2, p6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Lcom/kakao/sdk/talk/AppKeyTalkApi;

    :cond_1
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_2

    .line 579
    sget-object p3, Lcom/kakao/sdk/common/KakaoSdk;->INSTANCE:Lcom/kakao/sdk/common/KakaoSdk;

    invoke-virtual {p3}, Lcom/kakao/sdk/common/KakaoSdk;->getApplicationContextInfo()Lcom/kakao/sdk/common/model/ApplicationContextInfo;

    move-result-object p3

    check-cast p3, Lcom/kakao/sdk/common/model/ApplicationInfo;

    :cond_2
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_3

    .line 589
    sget-object p4, Lcom/kakao/sdk/common/KakaoSdk;->INSTANCE:Lcom/kakao/sdk/common/KakaoSdk;

    invoke-virtual {p4}, Lcom/kakao/sdk/common/KakaoSdk;->getApplicationContextInfo()Lcom/kakao/sdk/common/model/ApplicationContextInfo;

    move-result-object p4

    check-cast p4, Lcom/kakao/sdk/common/model/ContextInfo;

    .line 549
    :cond_3
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/kakao/sdk/talk/TalkApiClient;-><init>(Lcom/kakao/sdk/talk/TalkApi;Lcom/kakao/sdk/talk/AppKeyTalkApi;Lcom/kakao/sdk/common/model/ApplicationInfo;Lcom/kakao/sdk/common/model/ContextInfo;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method public static final synthetic access$followChannel(Lcom/kakao/sdk/talk/TalkApiClient;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function2;)V
    .locals 0

    .line 549
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/kakao/sdk/talk/TalkApiClient;->followChannel(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function2;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method public static final synthetic access$getInstance$delegate$cp()Lkotlin/Lazy;
    .locals 1

    .line 549
    sget-object v0, Lcom/kakao/sdk/talk/TalkApiClient;->instance$delegate:Lkotlin/Lazy;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method private final baseUri(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;
    .locals 2

    .line 4009
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    const-string v1, "https"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 4019
    sget-object v1, Lcom/kakao/sdk/common/KakaoSdk;->INSTANCE:Lcom/kakao/sdk/common/KakaoSdk;

    invoke-virtual {v1}, Lcom/kakao/sdk/common/KakaoSdk;->getHosts()Lcom/kakao/sdk/common/model/ServerHosts;

    move-result-object v1

    invoke-virtual {v1}, Lcom/kakao/sdk/common/model/ServerHosts;->getChannel()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "app_key"

    .line 4029
    invoke-virtual {v0, v1, p1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    const-string v0, "kakao_agent"

    .line 4039
    invoke-virtual {p1, v0, p2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    const-string p2, "api_ver"

    const-string v0, "1.0"

    .line 4049
    invoke-virtual {p1, p2, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    const-string p2, "Builder().scheme(com.kak\u2026ER, Constants.API_VER_10)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1

    nop

    .array-data 1
    .end array-data
.end method

.method public static synthetic channels$default(Lcom/kakao/sdk/talk/TalkApiClient;Ljava/util/List;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x1

    if-eqz p3, :cond_0

    const/4 p1, 0x0

    .line 2529
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/kakao/sdk/talk/TalkApiClient;->channels(Ljava/util/List;Lkotlin/jvm/functions/Function2;)V

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method private final followChannel(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function2;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lcom/kakao/sdk/talk/model/FollowChannelResult;",
            "-",
            "Ljava/lang/Throwable;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 4329
    new-instance v0, Lcom/kakao/sdk/talk/UriUtility;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v1}, Lcom/kakao/sdk/talk/UriUtility;-><init>(Lcom/kakao/sdk/common/model/ServerHosts;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0x1c

    const/4 v7, 0x0

    move-object v1, p2

    move-object v2, p3

    .line 4339
    invoke-static/range {v0 .. v7}, Lcom/kakao/sdk/talk/UriUtility;->followChannelUrl$default(Lcom/kakao/sdk/talk/UriUtility;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Landroid/net/Uri;

    move-result-object p2

    .line 4359
    sget-object v0, Lcom/kakao/sdk/auth/SingleResultReceiver;->Companion:Lcom/kakao/sdk/auth/SingleResultReceiver$Companion;

    const-string v2, "Apps"

    sget-object p3, Lcom/kakao/sdk/talk/TalkApiClient$followChannel$resultReceiver$1;->INSTANCE:Lcom/kakao/sdk/talk/TalkApiClient$followChannel$resultReceiver$1;

    move-object v3, p3

    check-cast v3, Lkotlin/jvm/functions/Function1;

    sget-object p3, Lcom/kakao/sdk/talk/TalkApiClient$followChannel$resultReceiver$2;->INSTANCE:Lcom/kakao/sdk/talk/TalkApiClient$followChannel$resultReceiver$2;

    move-object v4, p3

    check-cast v4, Lkotlin/jvm/functions/Function1;

    sget-object p3, Lcom/kakao/sdk/talk/TalkApiClient$followChannel$resultReceiver$3;->INSTANCE:Lcom/kakao/sdk/talk/TalkApiClient$followChannel$resultReceiver$3;

    move-object v5, p3

    check-cast v5, Lkotlin/jvm/functions/Function1;

    move-object v1, p4

    invoke-virtual/range {v0 .. v5}, Lcom/kakao/sdk/auth/SingleResultReceiver$Companion;->create(Lkotlin/jvm/functions/Function2;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)Lcom/kakao/sdk/auth/SingleResultReceiver;

    move-result-object p3

    .line 4539
    sget-object p4, Lcom/kakao/sdk/auth/IntentFactory;->INSTANCE:Lcom/kakao/sdk/auth/IntentFactory;

    .line 5209
    new-instance p4, Landroid/content/Intent;

    const-class v0, Lcom/kakao/sdk/talk/FollowChannelHandlerActivity;

    invoke-direct {p4, p1, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 5219
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 5229
    check-cast p3, Landroid/os/ResultReceiver;

    check-cast p3, Landroid/os/Parcelable;

    const-string v1, "key.result.receiver"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string p3, "key.full_authorize_uri"

    .line 5239
    check-cast p2, Landroid/os/Parcelable;

    invoke-virtual {v0, p3, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string p2, "key.bundle"

    .line 5219
    invoke-virtual {p4, p2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object p2

    const/high16 p3, 0x10000000

    .line 5259
    invoke-virtual {p2, p3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object p2

    const-string p3, "Intent(context, T::class\u2026t.FLAG_ACTIVITY_NEW_TASK)"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4549
    invoke-virtual {p1, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method public static synthetic friends$default(Lcom/kakao/sdk/talk/TalkApiClient;Ljava/lang/Integer;Ljava/lang/Integer;Lcom/kakao/sdk/talk/model/Order;Lcom/kakao/sdk/talk/model/FriendOrder;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)V
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

    .line 829
    invoke-virtual/range {v1 .. v6}, Lcom/kakao/sdk/talk/TalkApiClient;->friends(Ljava/lang/Integer;Ljava/lang/Integer;Lcom/kakao/sdk/talk/model/Order;Lcom/kakao/sdk/talk/model/FriendOrder;Lkotlin/jvm/functions/Function2;)V

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public static final getInstance()Lcom/kakao/sdk/talk/TalkApiClient;
    .locals 1

    sget-object v0, Lcom/kakao/sdk/talk/TalkApiClient;->Companion:Lcom/kakao/sdk/talk/TalkApiClient$Companion;

    invoke-virtual {v0}, Lcom/kakao/sdk/talk/TalkApiClient$Companion;->getInstance()Lcom/kakao/sdk/talk/TalkApiClient;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public static synthetic sendCustomMemo$default(Lcom/kakao/sdk/talk/TalkApiClient;JLjava/util/Map;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p5, p5, 0x2

    if-eqz p5, :cond_0

    const/4 p3, 0x0

    .line 1219
    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/kakao/sdk/talk/TalkApiClient;->sendCustomMemo(JLjava/util/Map;Lkotlin/jvm/functions/Function1;)V

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public static synthetic sendCustomMessage$default(Lcom/kakao/sdk/talk/TalkApiClient;Ljava/util/List;JLjava/util/Map;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)V
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

    .line 1839
    invoke-virtual/range {v0 .. v5}, Lcom/kakao/sdk/talk/TalkApiClient;->sendCustomMessage(Ljava/util/List;JLjava/util/Map;Lkotlin/jvm/functions/Function2;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method public static synthetic sendScrapMemo$default(Lcom/kakao/sdk/talk/TalkApiClient;Ljava/lang/String;Ljava/lang/Long;Ljava/util/Map;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)V
    .locals 1

    and-int/lit8 p6, p5, 0x2

    const/4 v0, 0x0

    if-eqz p6, :cond_0

    move-object p2, v0

    :cond_0
    and-int/lit8 p5, p5, 0x4

    if-eqz p5, :cond_1

    move-object p3, v0

    .line 1609
    :cond_1
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/kakao/sdk/talk/TalkApiClient;->sendScrapMemo(Ljava/lang/String;Ljava/lang/Long;Ljava/util/Map;Lkotlin/jvm/functions/Function1;)V

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public static synthetic sendScrapMessage$default(Lcom/kakao/sdk/talk/TalkApiClient;Ljava/util/List;Ljava/lang/String;Ljava/lang/Long;Ljava/util/Map;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)V
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

    .line 2269
    invoke-virtual/range {v1 .. v6}, Lcom/kakao/sdk/talk/TalkApiClient;->sendScrapMessage(Ljava/util/List;Ljava/lang/String;Ljava/lang/Long;Ljava/util/Map;Lkotlin/jvm/functions/Function2;)V

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method private final validate(Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Throwable;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 4129
    sget-object v0, Lcom/kakao/sdk/common/util/KakaoJson;->INSTANCE:Lcom/kakao/sdk/common/util/KakaoJson;

    const/4 v0, 0x2

    new-array v0, v0, [Lkotlin/Pair;

    const-string/jumbo v1, "uri"

    .line 4149
    invoke-static {v1, p1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "channel_public_id"

    .line 4159
    invoke-static {p1, p2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    const/4 p2, 0x1

    aput-object p1, v0, p2

    .line 4139
    invoke-static {v0}, Lkotlin/collections/MapsKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object p1

    .line 5139
    new-instance p2, Lkotlinx/serialization/json/JsonObjectBuilder;

    invoke-direct {p2}, Lkotlinx/serialization/json/JsonObjectBuilder;-><init>()V

    .line 5119
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    .line 5159
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 5119
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    sget-object v2, Lcom/kakao/sdk/common/util/KakaoJson;->INSTANCE:Lcom/kakao/sdk/common/util/KakaoJson;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 5169
    invoke-virtual {v2}, Lcom/kakao/sdk/common/util/KakaoJson;->getJson()Lkotlinx/serialization/json/Json;

    move-result-object v2

    .line 5179
    invoke-virtual {v2}, Lkotlinx/serialization/json/Json;->getSerializersModule()Lkotlinx/serialization/modules/SerializersModule;

    sget-object v3, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    check-cast v3, Lkotlinx/serialization/SerializationStrategy;

    invoke-virtual {v2, v3, v0}, Lkotlinx/serialization/json/Json;->encodeToJsonElement(Lkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)Lkotlinx/serialization/json/JsonElement;

    move-result-object v0

    .line 5119
    invoke-virtual {p2, v1, v0}, Lkotlinx/serialization/json/JsonObjectBuilder;->put(Ljava/lang/String;Lkotlinx/serialization/json/JsonElement;)Lkotlinx/serialization/json/JsonElement;

    goto :goto_0

    .line 5199
    :cond_0
    invoke-virtual {p2}, Lkotlinx/serialization/json/JsonObjectBuilder;->build()Lkotlinx/serialization/json/JsonObject;

    move-result-object p1

    .line 4189
    iget-object p2, p0, Lcom/kakao/sdk/talk/TalkApiClient;->appKeyTalkApi:Lcom/kakao/sdk/talk/AppKeyTalkApi;

    invoke-interface {p2, p1}, Lcom/kakao/sdk/talk/AppKeyTalkApi;->validate(Lkotlinx/serialization/json/JsonObject;)Lretrofit2/Call;

    move-result-object p1

    .line 4199
    new-instance p2, Lcom/kakao/sdk/talk/TalkApiClient$validate$1;

    invoke-direct {p2, p3}, Lcom/kakao/sdk/talk/TalkApiClient$validate$1;-><init>(Lkotlin/jvm/functions/Function1;)V

    check-cast p2, Lretrofit2/Callback;

    invoke-interface {p1, p2}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    return-void

    nop

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public final addChannel(Landroid/content/Context;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Throwable;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "channelPublicId"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3049
    new-instance v0, Lcom/kakao/sdk/common/model/ClientError;

    sget-object v1, Lcom/kakao/sdk/common/model/ClientErrorCause;->NotSupported:Lcom/kakao/sdk/common/model/ClientErrorCause;

    const-string v2, "KakaoTalk is not installed"

    invoke-direct {v0, v1, v2}, Lcom/kakao/sdk/common/model/ClientError;-><init>(Lcom/kakao/sdk/common/model/ClientErrorCause;Ljava/lang/String;)V

    .line 3069
    sget-object v1, Lcom/kakao/sdk/user/UserApiClient;->Companion:Lcom/kakao/sdk/user/UserApiClient$Companion;

    invoke-virtual {v1}, Lcom/kakao/sdk/user/UserApiClient$Companion;->getInstance()Lcom/kakao/sdk/user/UserApiClient;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/kakao/sdk/user/UserApiClient;->isKakaoTalkLoginAvailable(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3079
    sget-object p1, Lcom/kakao/sdk/common/util/SdkLog;->Companion:Lcom/kakao/sdk/common/util/SdkLog$Companion;

    invoke-virtual {p1, v0}, Lcom/kakao/sdk/common/util/SdkLog$Companion;->e(Ljava/lang/Object;)V

    .line 3089
    invoke-interface {p3, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 3129
    :cond_0
    new-instance v1, Lcom/kakao/sdk/talk/TalkApiClient$addChannel$1;

    invoke-direct {v1, p3, p2, p1, v0}, Lcom/kakao/sdk/talk/TalkApiClient$addChannel$1;-><init>(Lkotlin/jvm/functions/Function1;Ljava/lang/String;Landroid/content/Context;Lcom/kakao/sdk/common/model/ClientError;)V

    check-cast v1, Lkotlin/jvm/functions/Function1;

    const-string p1, "/sdk/channel/add"

    invoke-direct {p0, p1, p2, v1}, Lcom/kakao/sdk/talk/TalkApiClient;->validate(Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method public final addChannelUrl(Ljava/lang/String;)Landroid/net/Uri;
    .locals 2

    const-string v0, "channelPublicId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3789
    iget-object v0, p0, Lcom/kakao/sdk/talk/TalkApiClient;->applicationInfo:Lcom/kakao/sdk/common/model/ApplicationInfo;

    invoke-interface {v0}, Lcom/kakao/sdk/common/model/ApplicationInfo;->getAppKey()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/kakao/sdk/talk/TalkApiClient;->contextInfo:Lcom/kakao/sdk/common/model/ContextInfo;

    invoke-interface {v1}, Lcom/kakao/sdk/common/model/ContextInfo;->getKaHeader()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/kakao/sdk/talk/TalkApiClient;->baseUri(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 3799
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, "/friend"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p1

    const-string v0, "baseUri(appKey = applica\u2026nstants.FRIEND}\").build()"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1

    .array-data 1
    .end array-data
.end method

.method public final channelChatUrl(Ljava/lang/String;)Landroid/net/Uri;
    .locals 1
    .annotation runtime Lkotlin/Deprecated;
        message = "chatChannelUrl()\ub85c \ub300\uccb4\ub418\uc5c8\uc2b5\ub2c8\ub2e4"
        replaceWith = .subannotation Lkotlin/ReplaceWith;
            expression = "chatChannelUrl(channelPublicId)"
            imports = {}
        .end subannotation
    .end annotation

    const-string v0, "channelPublicId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3969
    invoke-virtual {p0, p1}, Lcom/kakao/sdk/talk/TalkApiClient;->chatChannelUrl(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    return-object p1

    .array-data 1
    .end array-data
.end method

.method public final channels(Ljava/util/List;Lkotlin/jvm/functions/Function2;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lcom/kakao/sdk/talk/model/Channels;",
            "-",
            "Ljava/lang/Throwable;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "callback"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2569
    iget-object v0, p0, Lcom/kakao/sdk/talk/TalkApiClient;->talkApi:Lcom/kakao/sdk/talk/TalkApi;

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    move-object v2, p1

    check-cast v2, Ljava/lang/Iterable;

    const-string p1, ","

    move-object v3, p1

    check-cast v3, Ljava/lang/CharSequence;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0x3e

    const/4 v10, 0x0

    invoke-static/range {v2 .. v10}, Lkotlin/collections/CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, v1

    :goto_0
    const/4 v2, 0x2

    invoke-static {v0, p1, v1, v2, v1}, Lcom/kakao/sdk/talk/TalkApi$DefaultImpls;->channels$default(Lcom/kakao/sdk/talk/TalkApi;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lretrofit2/Call;

    move-result-object p1

    .line 2579
    new-instance v0, Lcom/kakao/sdk/talk/TalkApiClient$channels$1;

    invoke-direct {v0, p2}, Lcom/kakao/sdk/talk/TalkApiClient$channels$1;-><init>(Lkotlin/jvm/functions/Function2;)V

    check-cast v0, Lretrofit2/Callback;

    invoke-interface {p1, v0}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method public final channels(Lkotlin/jvm/functions/Function2;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lcom/kakao/sdk/talk/model/Channels;",
            "-",
            "Ljava/lang/Throwable;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "callback"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p0, v0, p1, v1, v0}, Lcom/kakao/sdk/talk/TalkApiClient;->channels$default(Lcom/kakao/sdk/talk/TalkApiClient;Ljava/util/List;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)V

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public final chatChannel(Landroid/content/Context;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Throwable;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "channelPublicId"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3439
    new-instance v0, Lcom/kakao/sdk/common/model/ClientError;

    sget-object v1, Lcom/kakao/sdk/common/model/ClientErrorCause;->NotSupported:Lcom/kakao/sdk/common/model/ClientErrorCause;

    const-string v2, "KakaoTalk is not installed"

    invoke-direct {v0, v1, v2}, Lcom/kakao/sdk/common/model/ClientError;-><init>(Lcom/kakao/sdk/common/model/ClientErrorCause;Ljava/lang/String;)V

    .line 3459
    sget-object v1, Lcom/kakao/sdk/user/UserApiClient;->Companion:Lcom/kakao/sdk/user/UserApiClient$Companion;

    invoke-virtual {v1}, Lcom/kakao/sdk/user/UserApiClient$Companion;->getInstance()Lcom/kakao/sdk/user/UserApiClient;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/kakao/sdk/user/UserApiClient;->isKakaoTalkLoginAvailable(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3469
    sget-object p1, Lcom/kakao/sdk/common/util/SdkLog;->Companion:Lcom/kakao/sdk/common/util/SdkLog$Companion;

    invoke-virtual {p1, v0}, Lcom/kakao/sdk/common/util/SdkLog$Companion;->e(Ljava/lang/Object;)V

    .line 3479
    invoke-interface {p3, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 3519
    :cond_0
    new-instance v1, Lcom/kakao/sdk/talk/TalkApiClient$chatChannel$1;

    invoke-direct {v1, p3, p2, p1, v0}, Lcom/kakao/sdk/talk/TalkApiClient$chatChannel$1;-><init>(Lkotlin/jvm/functions/Function1;Ljava/lang/String;Landroid/content/Context;Lcom/kakao/sdk/common/model/ClientError;)V

    check-cast v1, Lkotlin/jvm/functions/Function1;

    const-string p1, "/sdk/channel/chat"

    invoke-direct {p0, p1, p2, v1}, Lcom/kakao/sdk/talk/TalkApiClient;->validate(Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method public final chatChannelUrl(Ljava/lang/String;)Landroid/net/Uri;
    .locals 2

    const-string v0, "channelPublicId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3909
    iget-object v0, p0, Lcom/kakao/sdk/talk/TalkApiClient;->applicationInfo:Lcom/kakao/sdk/common/model/ApplicationInfo;

    invoke-interface {v0}, Lcom/kakao/sdk/common/model/ApplicationInfo;->getAppKey()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/kakao/sdk/talk/TalkApiClient;->contextInfo:Lcom/kakao/sdk/common/model/ContextInfo;

    invoke-interface {v1}, Lcom/kakao/sdk/common/model/ContextInfo;->getKaHeader()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/kakao/sdk/talk/TalkApiClient;->baseUri(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 3919
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, "/chat"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p1

    const-string v0, "baseUri(appKey = applica\u2026Constants.CHAT}\").build()"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1

    .array-data 1
    .end array-data
.end method

.method public final followChannel(Landroid/content/Context;Ljava/lang/String;Lkotlin/jvm/functions/Function2;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lcom/kakao/sdk/talk/model/FollowChannelResult;",
            "-",
            "Ljava/lang/Throwable;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "channelPublicId"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2759
    sget-object v0, Lcom/kakao/sdk/auth/AuthApiClient;->Companion:Lcom/kakao/sdk/auth/AuthApiClient$Companion;

    invoke-virtual {v0}, Lcom/kakao/sdk/auth/AuthApiClient$Companion;->getInstance()Lcom/kakao/sdk/auth/AuthApiClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kakao/sdk/auth/AuthApiClient;->hasToken()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 2769
    invoke-direct {p0, p1, p2, v1, p3}, Lcom/kakao/sdk/talk/TalkApiClient;->followChannel(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function2;)V

    return-void

    .line 2809
    :cond_0
    sget-object v0, Lcom/kakao/sdk/auth/AuthApiClient;->Companion:Lcom/kakao/sdk/auth/AuthApiClient$Companion;

    invoke-virtual {v0}, Lcom/kakao/sdk/auth/AuthApiClient$Companion;->getInstance()Lcom/kakao/sdk/auth/AuthApiClient;

    move-result-object v0

    new-instance v2, Lcom/kakao/sdk/talk/TalkApiClient$followChannel$1;

    invoke-direct {v2, p0, p1, p2, p3}, Lcom/kakao/sdk/talk/TalkApiClient$followChannel$1;-><init>(Lcom/kakao/sdk/talk/TalkApiClient;Landroid/content/Context;Ljava/lang/String;Lkotlin/jvm/functions/Function2;)V

    check-cast v2, Lkotlin/jvm/functions/Function2;

    const/4 p1, 0x1

    invoke-static {v0, v1, v2, p1, v1}, Lcom/kakao/sdk/auth/AuthApiClient;->refreshToken$default(Lcom/kakao/sdk/auth/AuthApiClient;Lcom/kakao/sdk/auth/model/OAuthToken;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method public final friends(Lcom/kakao/sdk/talk/model/FriendsContext;Lkotlin/jvm/functions/Function2;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/kakao/sdk/talk/model/FriendsContext;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lcom/kakao/sdk/talk/model/Friends<",
            "Lcom/kakao/sdk/talk/model/Friend;",
            ">;-",
            "Ljava/lang/Throwable;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "callback"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1069
    iget-object v0, p0, Lcom/kakao/sdk/talk/TalkApiClient;->talkApi:Lcom/kakao/sdk/talk/TalkApi;

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/kakao/sdk/talk/model/FriendsContext;->getOffset()Ljava/lang/Integer;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/kakao/sdk/talk/model/FriendsContext;->getLimit()Ljava/lang/Integer;

    move-result-object v3

    goto :goto_1

    :cond_1
    move-object v3, v1

    :goto_1
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/kakao/sdk/talk/model/FriendsContext;->getOrder()Lcom/kakao/sdk/talk/model/Order;

    move-result-object v4

    goto :goto_2

    :cond_2
    move-object v4, v1

    :goto_2
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/kakao/sdk/talk/model/FriendsContext;->getFriendOrder()Lcom/kakao/sdk/talk/model/FriendOrder;

    move-result-object v1

    :cond_3
    invoke-interface {v0, v2, v3, v4, v1}, Lcom/kakao/sdk/talk/TalkApi;->friends(Ljava/lang/Integer;Ljava/lang/Integer;Lcom/kakao/sdk/talk/model/Order;Lcom/kakao/sdk/talk/model/FriendOrder;)Lretrofit2/Call;

    move-result-object p1

    .line 1079
    new-instance v0, Lcom/kakao/sdk/talk/TalkApiClient$friends$2;

    invoke-direct {v0, p2}, Lcom/kakao/sdk/talk/TalkApiClient$friends$2;-><init>(Lkotlin/jvm/functions/Function2;)V

    check-cast v0, Lretrofit2/Callback;

    invoke-interface {p1, v0}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public final friends(Ljava/lang/Integer;Ljava/lang/Integer;Lcom/kakao/sdk/talk/model/Order;Lcom/kakao/sdk/talk/model/FriendOrder;Lkotlin/jvm/functions/Function2;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Lcom/kakao/sdk/talk/model/Order;",
            "Lcom/kakao/sdk/talk/model/FriendOrder;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lcom/kakao/sdk/talk/model/Friends<",
            "Lcom/kakao/sdk/talk/model/Friend;",
            ">;-",
            "Ljava/lang/Throwable;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "callback"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 899
    iget-object v0, p0, Lcom/kakao/sdk/talk/TalkApiClient;->talkApi:Lcom/kakao/sdk/talk/TalkApi;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/kakao/sdk/talk/TalkApi;->friends(Ljava/lang/Integer;Ljava/lang/Integer;Lcom/kakao/sdk/talk/model/Order;Lcom/kakao/sdk/talk/model/FriendOrder;)Lretrofit2/Call;

    move-result-object p1

    .line 909
    new-instance p2, Lcom/kakao/sdk/talk/TalkApiClient$friends$1;

    invoke-direct {p2, p5}, Lcom/kakao/sdk/talk/TalkApiClient$friends$1;-><init>(Lkotlin/jvm/functions/Function2;)V

    check-cast p2, Lretrofit2/Callback;

    invoke-interface {p1, p2}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method public final friends(Ljava/lang/Integer;Ljava/lang/Integer;Lcom/kakao/sdk/talk/model/Order;Lkotlin/jvm/functions/Function2;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Lcom/kakao/sdk/talk/model/Order;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lcom/kakao/sdk/talk/model/Friends<",
            "Lcom/kakao/sdk/talk/model/Friend;",
            ">;-",
            "Ljava/lang/Throwable;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

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

    invoke-static/range {v1 .. v8}, Lcom/kakao/sdk/talk/TalkApiClient;->friends$default(Lcom/kakao/sdk/talk/TalkApiClient;Ljava/lang/Integer;Ljava/lang/Integer;Lcom/kakao/sdk/talk/model/Order;Lcom/kakao/sdk/talk/model/FriendOrder;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method public final friends(Ljava/lang/Integer;Ljava/lang/Integer;Lkotlin/jvm/functions/Function2;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lcom/kakao/sdk/talk/model/Friends<",
            "Lcom/kakao/sdk/talk/model/Friend;",
            ">;-",
            "Ljava/lang/Throwable;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

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

    invoke-static/range {v1 .. v8}, Lcom/kakao/sdk/talk/TalkApiClient;->friends$default(Lcom/kakao/sdk/talk/TalkApiClient;Ljava/lang/Integer;Ljava/lang/Integer;Lcom/kakao/sdk/talk/model/Order;Lcom/kakao/sdk/talk/model/FriendOrder;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method public final friends(Ljava/lang/Integer;Lkotlin/jvm/functions/Function2;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Integer;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lcom/kakao/sdk/talk/model/Friends<",
            "Lcom/kakao/sdk/talk/model/Friend;",
            ">;-",
            "Ljava/lang/Throwable;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

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

    invoke-static/range {v1 .. v8}, Lcom/kakao/sdk/talk/TalkApiClient;->friends$default(Lcom/kakao/sdk/talk/TalkApiClient;Ljava/lang/Integer;Ljava/lang/Integer;Lcom/kakao/sdk/talk/model/Order;Lcom/kakao/sdk/talk/model/FriendOrder;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method public final friends(Lkotlin/jvm/functions/Function2;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lcom/kakao/sdk/talk/model/Friends<",
            "Lcom/kakao/sdk/talk/model/Friend;",
            ">;-",
            "Ljava/lang/Throwable;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

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

    invoke-static/range {v1 .. v8}, Lcom/kakao/sdk/talk/TalkApiClient;->friends$default(Lcom/kakao/sdk/talk/TalkApiClient;Ljava/lang/Integer;Ljava/lang/Integer;Lcom/kakao/sdk/talk/model/Order;Lcom/kakao/sdk/talk/model/FriendOrder;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method public final profile(Lkotlin/jvm/functions/Function2;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lcom/kakao/sdk/talk/model/TalkProfile;",
            "-",
            "Ljava/lang/Throwable;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "callback"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 659
    iget-object v0, p0, Lcom/kakao/sdk/talk/TalkApiClient;->talkApi:Lcom/kakao/sdk/talk/TalkApi;

    invoke-interface {v0}, Lcom/kakao/sdk/talk/TalkApi;->profile()Lretrofit2/Call;

    move-result-object v0

    .line 669
    new-instance v1, Lcom/kakao/sdk/talk/TalkApiClient$profile$1;

    invoke-direct {v1, p1}, Lcom/kakao/sdk/talk/TalkApiClient$profile$1;-><init>(Lkotlin/jvm/functions/Function2;)V

    check-cast v1, Lretrofit2/Callback;

    invoke-interface {v0, v1}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method public final sendCustomMemo(JLjava/util/Map;Lkotlin/jvm/functions/Function1;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Throwable;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "callback"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p3, :cond_1

    .line 1269
    sget-object v0, Lcom/kakao/sdk/common/util/KakaoJson;->INSTANCE:Lcom/kakao/sdk/common/util/KakaoJson;

    .line 4699
    new-instance v0, Lkotlinx/serialization/json/JsonObjectBuilder;

    invoke-direct {v0}, Lkotlinx/serialization/json/JsonObjectBuilder;-><init>()V

    .line 4679
    invoke-interface {p3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p3

    check-cast p3, Ljava/lang/Iterable;

    .line 4719
    invoke-interface {p3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 4679
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    sget-object v3, Lcom/kakao/sdk/common/util/KakaoJson;->INSTANCE:Lcom/kakao/sdk/common/util/KakaoJson;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    .line 4729
    invoke-virtual {v3}, Lcom/kakao/sdk/common/util/KakaoJson;->getJson()Lkotlinx/serialization/json/Json;

    move-result-object v3

    .line 4739
    invoke-virtual {v3}, Lkotlinx/serialization/json/Json;->getSerializersModule()Lkotlinx/serialization/modules/SerializersModule;

    sget-object v4, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    check-cast v4, Lkotlinx/serialization/SerializationStrategy;

    invoke-virtual {v3, v4, v1}, Lkotlinx/serialization/json/Json;->encodeToJsonElement(Lkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)Lkotlinx/serialization/json/JsonElement;

    move-result-object v1

    .line 4679
    invoke-virtual {v0, v2, v1}, Lkotlinx/serialization/json/JsonObjectBuilder;->put(Ljava/lang/String;Lkotlinx/serialization/json/JsonElement;)Lkotlinx/serialization/json/JsonElement;

    goto :goto_0

    .line 4759
    :cond_0
    invoke-virtual {v0}, Lkotlinx/serialization/json/JsonObjectBuilder;->build()Lkotlinx/serialization/json/JsonObject;

    move-result-object p3

    goto :goto_1

    :cond_1
    const/4 p3, 0x0

    .line 1279
    :goto_1
    iget-object v0, p0, Lcom/kakao/sdk/talk/TalkApiClient;->talkApi:Lcom/kakao/sdk/talk/TalkApi;

    invoke-interface {v0, p1, p2, p3}, Lcom/kakao/sdk/talk/TalkApi;->sendCustomMemo(JLkotlinx/serialization/json/JsonObject;)Lretrofit2/Call;

    move-result-object p1

    .line 1289
    new-instance p2, Lcom/kakao/sdk/talk/TalkApiClient$sendCustomMemo$1;

    invoke-direct {p2, p4}, Lcom/kakao/sdk/talk/TalkApiClient$sendCustomMemo$1;-><init>(Lkotlin/jvm/functions/Function1;)V

    check-cast p2, Lretrofit2/Callback;

    invoke-interface {p1, p2}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method public final sendCustomMemo(JLkotlin/jvm/functions/Function1;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Throwable;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "callback"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x0

    const/4 v6, 0x2

    const/4 v7, 0x0

    move-object v1, p0

    move-wide v2, p1

    move-object v5, p3

    invoke-static/range {v1 .. v7}, Lcom/kakao/sdk/talk/TalkApiClient;->sendCustomMemo$default(Lcom/kakao/sdk/talk/TalkApiClient;JLjava/util/Map;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public final sendCustomMessage(Ljava/util/List;JLjava/util/Map;Lkotlin/jvm/functions/Function2;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;J",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lcom/kakao/sdk/talk/model/MessageSendResult;",
            "-",
            "Ljava/lang/Throwable;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "receiverUuids"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p4, :cond_1

    .line 1899
    sget-object v0, Lcom/kakao/sdk/common/util/KakaoJson;->INSTANCE:Lcom/kakao/sdk/common/util/KakaoJson;

    .line 4899
    new-instance v0, Lkotlinx/serialization/json/JsonObjectBuilder;

    invoke-direct {v0}, Lkotlinx/serialization/json/JsonObjectBuilder;-><init>()V

    .line 4879
    invoke-interface {p4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p4

    check-cast p4, Ljava/lang/Iterable;

    .line 4919
    invoke-interface {p4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p4

    :goto_0
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 4879
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    sget-object v3, Lcom/kakao/sdk/common/util/KakaoJson;->INSTANCE:Lcom/kakao/sdk/common/util/KakaoJson;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    .line 4929
    invoke-virtual {v3}, Lcom/kakao/sdk/common/util/KakaoJson;->getJson()Lkotlinx/serialization/json/Json;

    move-result-object v3

    .line 4939
    invoke-virtual {v3}, Lkotlinx/serialization/json/Json;->getSerializersModule()Lkotlinx/serialization/modules/SerializersModule;

    sget-object v4, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    check-cast v4, Lkotlinx/serialization/SerializationStrategy;

    invoke-virtual {v3, v4, v1}, Lkotlinx/serialization/json/Json;->encodeToJsonElement(Lkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)Lkotlinx/serialization/json/JsonElement;

    move-result-object v1

    .line 4879
    invoke-virtual {v0, v2, v1}, Lkotlinx/serialization/json/JsonObjectBuilder;->put(Ljava/lang/String;Lkotlinx/serialization/json/JsonElement;)Lkotlinx/serialization/json/JsonElement;

    goto :goto_0

    .line 4959
    :cond_0
    invoke-virtual {v0}, Lkotlinx/serialization/json/JsonObjectBuilder;->build()Lkotlinx/serialization/json/JsonObject;

    move-result-object p4

    goto :goto_1

    :cond_1
    const/4 p4, 0x0

    .line 1909
    :goto_1
    iget-object v0, p0, Lcom/kakao/sdk/talk/TalkApiClient;->talkApi:Lcom/kakao/sdk/talk/TalkApi;

    sget-object v1, Lcom/kakao/sdk/common/util/KakaoJson;->INSTANCE:Lcom/kakao/sdk/common/util/KakaoJson;

    .line 4969
    invoke-virtual {v1}, Lcom/kakao/sdk/common/util/KakaoJson;->getJson()Lkotlinx/serialization/json/Json;

    move-result-object v1

    check-cast v1, Lkotlinx/serialization/StringFormat;

    .line 4979
    invoke-interface {v1}, Lkotlinx/serialization/StringFormat;->getSerializersModule()Lkotlinx/serialization/modules/SerializersModule;

    new-instance v2, Lkotlinx/serialization/internal/ArrayListSerializer;

    sget-object v3, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    invoke-direct {v2, v3}, Lkotlinx/serialization/internal/ArrayListSerializer;-><init>(Lkotlinx/serialization/KSerializer;)V

    check-cast v2, Lkotlinx/serialization/SerializationStrategy;

    invoke-interface {v1, v2, p1}, Lkotlinx/serialization/StringFormat;->encodeToString(Lkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 1909
    invoke-interface {v0, p1, p2, p3, p4}, Lcom/kakao/sdk/talk/TalkApi;->sendCustomMessage(Ljava/lang/String;JLkotlinx/serialization/json/JsonObject;)Lretrofit2/Call;

    move-result-object p1

    .line 1919
    new-instance p2, Lcom/kakao/sdk/talk/TalkApiClient$sendCustomMessage$1;

    invoke-direct {p2, p5}, Lcom/kakao/sdk/talk/TalkApiClient$sendCustomMessage$1;-><init>(Lkotlin/jvm/functions/Function2;)V

    check-cast p2, Lretrofit2/Callback;

    invoke-interface {p1, p2}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public final sendCustomMessage(Ljava/util/List;JLkotlin/jvm/functions/Function2;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;J",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lcom/kakao/sdk/talk/model/MessageSendResult;",
            "-",
            "Ljava/lang/Throwable;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

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

    invoke-static/range {v1 .. v8}, Lcom/kakao/sdk/talk/TalkApiClient;->sendCustomMessage$default(Lcom/kakao/sdk/talk/TalkApiClient;Ljava/util/List;JLjava/util/Map;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)V

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public final sendDefaultMemo(Lcom/kakao/sdk/template/model/DefaultTemplate;Lkotlin/jvm/functions/Function1;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/kakao/sdk/template/model/DefaultTemplate;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Throwable;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "template"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1449
    iget-object v0, p0, Lcom/kakao/sdk/talk/TalkApiClient;->talkApi:Lcom/kakao/sdk/talk/TalkApi;

    sget-object v1, Lcom/kakao/sdk/common/util/KakaoJson;->INSTANCE:Lcom/kakao/sdk/common/util/KakaoJson;

    .line 4769
    invoke-virtual {v1}, Lcom/kakao/sdk/common/util/KakaoJson;->getJson()Lkotlinx/serialization/json/Json;

    move-result-object v1

    check-cast v1, Lkotlinx/serialization/StringFormat;

    .line 4779
    invoke-interface {v1}, Lkotlinx/serialization/StringFormat;->getSerializersModule()Lkotlinx/serialization/modules/SerializersModule;

    sget-object v2, Lcom/kakao/sdk/template/model/DefaultTemplate;->Companion:Lcom/kakao/sdk/template/model/DefaultTemplate$Companion;

    invoke-virtual {v2}, Lcom/kakao/sdk/template/model/DefaultTemplate$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    move-result-object v2

    check-cast v2, Lkotlinx/serialization/SerializationStrategy;

    invoke-interface {v1, v2, p1}, Lkotlinx/serialization/StringFormat;->encodeToString(Lkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 1449
    invoke-interface {v0, p1}, Lcom/kakao/sdk/talk/TalkApi;->sendDefaultMemo(Ljava/lang/String;)Lretrofit2/Call;

    move-result-object p1

    .line 1459
    new-instance v0, Lcom/kakao/sdk/talk/TalkApiClient$sendDefaultMemo$1;

    invoke-direct {v0, p2}, Lcom/kakao/sdk/talk/TalkApiClient$sendDefaultMemo$1;-><init>(Lkotlin/jvm/functions/Function1;)V

    check-cast v0, Lretrofit2/Callback;

    invoke-interface {p1, v0}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method public final sendDefaultMessage(Ljava/util/List;Lcom/kakao/sdk/template/model/DefaultTemplate;Lkotlin/jvm/functions/Function2;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/kakao/sdk/template/model/DefaultTemplate;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lcom/kakao/sdk/talk/model/MessageSendResult;",
            "-",
            "Ljava/lang/Throwable;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "receiverUuids"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "template"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2099
    iget-object v0, p0, Lcom/kakao/sdk/talk/TalkApiClient;->talkApi:Lcom/kakao/sdk/talk/TalkApi;

    sget-object v1, Lcom/kakao/sdk/common/util/KakaoJson;->INSTANCE:Lcom/kakao/sdk/common/util/KakaoJson;

    .line 4989
    invoke-virtual {v1}, Lcom/kakao/sdk/common/util/KakaoJson;->getJson()Lkotlinx/serialization/json/Json;

    move-result-object v1

    check-cast v1, Lkotlinx/serialization/StringFormat;

    .line 4999
    invoke-interface {v1}, Lkotlinx/serialization/StringFormat;->getSerializersModule()Lkotlinx/serialization/modules/SerializersModule;

    new-instance v2, Lkotlinx/serialization/internal/ArrayListSerializer;

    sget-object v3, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    invoke-direct {v2, v3}, Lkotlinx/serialization/internal/ArrayListSerializer;-><init>(Lkotlinx/serialization/KSerializer;)V

    check-cast v2, Lkotlinx/serialization/SerializationStrategy;

    invoke-interface {v1, v2, p1}, Lkotlinx/serialization/StringFormat;->encodeToString(Lkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 2099
    sget-object v1, Lcom/kakao/sdk/common/util/KakaoJson;->INSTANCE:Lcom/kakao/sdk/common/util/KakaoJson;

    .line 4989
    invoke-virtual {v1}, Lcom/kakao/sdk/common/util/KakaoJson;->getJson()Lkotlinx/serialization/json/Json;

    move-result-object v1

    check-cast v1, Lkotlinx/serialization/StringFormat;

    .line 4999
    invoke-interface {v1}, Lkotlinx/serialization/StringFormat;->getSerializersModule()Lkotlinx/serialization/modules/SerializersModule;

    sget-object v2, Lcom/kakao/sdk/template/model/DefaultTemplate;->Companion:Lcom/kakao/sdk/template/model/DefaultTemplate$Companion;

    invoke-virtual {v2}, Lcom/kakao/sdk/template/model/DefaultTemplate$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    move-result-object v2

    check-cast v2, Lkotlinx/serialization/SerializationStrategy;

    invoke-interface {v1, v2, p2}, Lkotlinx/serialization/StringFormat;->encodeToString(Lkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 2099
    invoke-interface {v0, p1, p2}, Lcom/kakao/sdk/talk/TalkApi;->sendDefaultMessage(Ljava/lang/String;Ljava/lang/String;)Lretrofit2/Call;

    move-result-object p1

    .line 2109
    new-instance p2, Lcom/kakao/sdk/talk/TalkApiClient$sendDefaultMessage$1;

    invoke-direct {p2, p3}, Lcom/kakao/sdk/talk/TalkApiClient$sendDefaultMessage$1;-><init>(Lkotlin/jvm/functions/Function2;)V

    check-cast p2, Lretrofit2/Callback;

    invoke-interface {p1, p2}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public final sendScrapMemo(Ljava/lang/String;Ljava/lang/Long;Ljava/util/Map;Lkotlin/jvm/functions/Function1;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Throwable;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "requestUrl"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p3, :cond_1

    .line 1669
    sget-object v0, Lcom/kakao/sdk/common/util/KakaoJson;->INSTANCE:Lcom/kakao/sdk/common/util/KakaoJson;

    .line 4809
    new-instance v0, Lkotlinx/serialization/json/JsonObjectBuilder;

    invoke-direct {v0}, Lkotlinx/serialization/json/JsonObjectBuilder;-><init>()V

    .line 4789
    invoke-interface {p3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p3

    check-cast p3, Ljava/lang/Iterable;

    .line 4829
    invoke-interface {p3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 4789
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    sget-object v3, Lcom/kakao/sdk/common/util/KakaoJson;->INSTANCE:Lcom/kakao/sdk/common/util/KakaoJson;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    .line 4839
    invoke-virtual {v3}, Lcom/kakao/sdk/common/util/KakaoJson;->getJson()Lkotlinx/serialization/json/Json;

    move-result-object v3

    .line 4849
    invoke-virtual {v3}, Lkotlinx/serialization/json/Json;->getSerializersModule()Lkotlinx/serialization/modules/SerializersModule;

    sget-object v4, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    check-cast v4, Lkotlinx/serialization/SerializationStrategy;

    invoke-virtual {v3, v4, v1}, Lkotlinx/serialization/json/Json;->encodeToJsonElement(Lkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)Lkotlinx/serialization/json/JsonElement;

    move-result-object v1

    .line 4789
    invoke-virtual {v0, v2, v1}, Lkotlinx/serialization/json/JsonObjectBuilder;->put(Ljava/lang/String;Lkotlinx/serialization/json/JsonElement;)Lkotlinx/serialization/json/JsonElement;

    goto :goto_0

    .line 4869
    :cond_0
    invoke-virtual {v0}, Lkotlinx/serialization/json/JsonObjectBuilder;->build()Lkotlinx/serialization/json/JsonObject;

    move-result-object p3

    goto :goto_1

    :cond_1
    const/4 p3, 0x0

    .line 1679
    :goto_1
    iget-object v0, p0, Lcom/kakao/sdk/talk/TalkApiClient;->talkApi:Lcom/kakao/sdk/talk/TalkApi;

    invoke-interface {v0, p1, p2, p3}, Lcom/kakao/sdk/talk/TalkApi;->sendScrapMemo(Ljava/lang/String;Ljava/lang/Long;Lkotlinx/serialization/json/JsonObject;)Lretrofit2/Call;

    move-result-object p1

    .line 1689
    new-instance p2, Lcom/kakao/sdk/talk/TalkApiClient$sendScrapMemo$1;

    invoke-direct {p2, p4}, Lcom/kakao/sdk/talk/TalkApiClient$sendScrapMemo$1;-><init>(Lkotlin/jvm/functions/Function1;)V

    check-cast p2, Lretrofit2/Callback;

    invoke-interface {p1, p2}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public final sendScrapMemo(Ljava/lang/String;Ljava/lang/Long;Lkotlin/jvm/functions/Function1;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Throwable;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "requestUrl"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x0

    const/4 v6, 0x4

    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p3

    invoke-static/range {v1 .. v7}, Lcom/kakao/sdk/talk/TalkApiClient;->sendScrapMemo$default(Lcom/kakao/sdk/talk/TalkApiClient;Ljava/lang/String;Ljava/lang/Long;Ljava/util/Map;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public final sendScrapMemo(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Throwable;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "requestUrl"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x6

    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v5, p2

    invoke-static/range {v1 .. v7}, Lcom/kakao/sdk/talk/TalkApiClient;->sendScrapMemo$default(Lcom/kakao/sdk/talk/TalkApiClient;Ljava/lang/String;Ljava/lang/Long;Ljava/util/Map;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public final sendScrapMessage(Ljava/util/List;Ljava/lang/String;Ljava/lang/Long;Ljava/util/Map;Lkotlin/jvm/functions/Function2;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
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
            "Lcom/kakao/sdk/talk/model/MessageSendResult;",
            "-",
            "Ljava/lang/Throwable;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "receiverUuids"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "requestUrl"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2339
    iget-object v0, p0, Lcom/kakao/sdk/talk/TalkApiClient;->talkApi:Lcom/kakao/sdk/talk/TalkApi;

    .line 2349
    sget-object v1, Lcom/kakao/sdk/common/util/KakaoJson;->INSTANCE:Lcom/kakao/sdk/common/util/KakaoJson;

    .line 5009
    invoke-virtual {v1}, Lcom/kakao/sdk/common/util/KakaoJson;->getJson()Lkotlinx/serialization/json/Json;

    move-result-object v1

    check-cast v1, Lkotlinx/serialization/StringFormat;

    .line 5019
    invoke-interface {v1}, Lkotlinx/serialization/StringFormat;->getSerializersModule()Lkotlinx/serialization/modules/SerializersModule;

    new-instance v2, Lkotlinx/serialization/internal/ArrayListSerializer;

    sget-object v3, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    invoke-direct {v2, v3}, Lkotlinx/serialization/internal/ArrayListSerializer;-><init>(Lkotlinx/serialization/KSerializer;)V

    check-cast v2, Lkotlinx/serialization/SerializationStrategy;

    invoke-interface {v1, v2, p1}, Lkotlinx/serialization/StringFormat;->encodeToString(Lkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    if-eqz p4, :cond_1

    .line 2379
    sget-object v1, Lcom/kakao/sdk/common/util/KakaoJson;->INSTANCE:Lcom/kakao/sdk/common/util/KakaoJson;

    .line 5049
    new-instance v1, Lkotlinx/serialization/json/JsonObjectBuilder;

    invoke-direct {v1}, Lkotlinx/serialization/json/JsonObjectBuilder;-><init>()V

    .line 5029
    invoke-interface {p4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p4

    check-cast p4, Ljava/lang/Iterable;

    .line 5069
    invoke-interface {p4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p4

    :goto_0
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 5029
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    sget-object v4, Lcom/kakao/sdk/common/util/KakaoJson;->INSTANCE:Lcom/kakao/sdk/common/util/KakaoJson;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    .line 5079
    invoke-virtual {v4}, Lcom/kakao/sdk/common/util/KakaoJson;->getJson()Lkotlinx/serialization/json/Json;

    move-result-object v4

    .line 5089
    invoke-virtual {v4}, Lkotlinx/serialization/json/Json;->getSerializersModule()Lkotlinx/serialization/modules/SerializersModule;

    sget-object v5, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    check-cast v5, Lkotlinx/serialization/SerializationStrategy;

    invoke-virtual {v4, v5, v2}, Lkotlinx/serialization/json/Json;->encodeToJsonElement(Lkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)Lkotlinx/serialization/json/JsonElement;

    move-result-object v2

    .line 5029
    invoke-virtual {v1, v3, v2}, Lkotlinx/serialization/json/JsonObjectBuilder;->put(Ljava/lang/String;Lkotlinx/serialization/json/JsonElement;)Lkotlinx/serialization/json/JsonElement;

    goto :goto_0

    .line 5109
    :cond_0
    invoke-virtual {v1}, Lkotlinx/serialization/json/JsonObjectBuilder;->build()Lkotlinx/serialization/json/JsonObject;

    move-result-object p4

    goto :goto_1

    :cond_1
    const/4 p4, 0x0

    .line 2339
    :goto_1
    invoke-interface {v0, p1, p2, p3, p4}, Lcom/kakao/sdk/talk/TalkApi;->sendScrapMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Lkotlinx/serialization/json/JsonObject;)Lretrofit2/Call;

    move-result-object p1

    .line 2399
    new-instance p2, Lcom/kakao/sdk/talk/TalkApiClient$sendScrapMessage$2;

    invoke-direct {p2, p5}, Lcom/kakao/sdk/talk/TalkApiClient$sendScrapMessage$2;-><init>(Lkotlin/jvm/functions/Function2;)V

    check-cast p2, Lretrofit2/Callback;

    invoke-interface {p1, p2}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method public final sendScrapMessage(Ljava/util/List;Ljava/lang/String;Ljava/lang/Long;Lkotlin/jvm/functions/Function2;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lcom/kakao/sdk/talk/model/MessageSendResult;",
            "-",
            "Ljava/lang/Throwable;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

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

    invoke-static/range {v1 .. v8}, Lcom/kakao/sdk/talk/TalkApiClient;->sendScrapMessage$default(Lcom/kakao/sdk/talk/TalkApiClient;Ljava/util/List;Ljava/lang/String;Ljava/lang/Long;Ljava/util/Map;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method public final sendScrapMessage(Ljava/util/List;Ljava/lang/String;Lkotlin/jvm/functions/Function2;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lcom/kakao/sdk/talk/model/MessageSendResult;",
            "-",
            "Ljava/lang/Throwable;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

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

    invoke-static/range {v1 .. v8}, Lcom/kakao/sdk/talk/TalkApiClient;->sendScrapMessage$default(Lcom/kakao/sdk/talk/TalkApiClient;Ljava/util/List;Ljava/lang/String;Ljava/lang/Long;Ljava/util/Map;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)V

    return-void

    .array-data 1
    .end array-data
.end method
