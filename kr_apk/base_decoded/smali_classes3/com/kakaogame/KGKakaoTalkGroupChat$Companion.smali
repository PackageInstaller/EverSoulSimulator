.class public final Lcom/kakaogame/KGKakaoTalkGroupChat$Companion;
.super Ljava/lang/Object;
.source "KGKakaoTalkGroupChat.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kakaogame/KGKakaoTalkGroupChat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nKGKakaoTalkGroupChat.kt\nKotlin\n*S Kotlin\n*F\n+ 1 KGKakaoTalkGroupChat.kt\ncom/kakaogame/KGKakaoTalkGroupChat$Companion\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,245:1\n1#2:246\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000:\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0008\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0006\u0010\u000f\u001a\u00020\u0010J*\u0010\u0011\u001a\u00020\u00102\u0006\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u00132\u0010\u0010\u0015\u001a\u000c\u0012\u0006\u0012\u0004\u0018\u00010\u0017\u0018\u00010\u0016H\u0007J \u0010\u0011\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00170\u00182\u0006\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u0013H\u0002J\u0008\u0010\u0019\u001a\u00020\u0010H\u0002R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\u0007X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0007X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u0007X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u0007X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\u0007X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u0007X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u0007X\u0082T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001a"
    }
    d2 = {
        "Lcom/kakaogame/KGKakaoTalkGroupChat$Companion;",
        "",
        "<init>",
        "()V",
        "serialVersionUID",
        "",
        "TAG",
        "",
        "CLASS_NAME_KEY",
        "KEY_CHAT_ID",
        "KEY_TITLE",
        "KEY_THUMBNAIL_IMAGE_URL",
        "KEY_MEMBER_COUNT",
        "KEY_MEMBER_THUMBNAIL_IMAGE_URLS",
        "KEY_CHAT_TYPE",
        "initialize",
        "",
        "loadGroupChats",
        "offset",
        "",
        "limit",
        "callback",
        "Lcom/kakaogame/KGResultCallback;",
        "Lcom/kakaogame/KGKakaoTalkGroupChat$KGKakaoTalkGroupChatsResponse;",
        "Lcom/kakaogame/KGResult;",
        "initInterfaceBroker",
        "idp_kakao_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1489
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void

    .array-data 1
    .end array-data
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/kakaogame/KGKakaoTalkGroupChat$Companion;-><init>()V

    return-void

    .array-data 1
    .end array-data
.end method

.method public static final synthetic access$loadGroupChats(Lcom/kakaogame/KGKakaoTalkGroupChat$Companion;II)Lcom/kakaogame/KGResult;
    .locals 0

    .line 1489
    invoke-direct {p0, p1, p2}, Lcom/kakaogame/KGKakaoTalkGroupChat$Companion;->loadGroupChats(II)Lcom/kakaogame/KGResult;

    move-result-object p0

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method private final initInterfaceBroker()V
    .locals 2

    .line 2279
    new-instance v0, Lcom/kakaogame/KGKakaoTalkGroupChat$Companion$initInterfaceBroker$1;

    invoke-direct {v0}, Lcom/kakaogame/KGKakaoTalkGroupChat$Companion$initInterfaceBroker$1;-><init>()V

    check-cast v0, Lcom/kakaogame/broker/InterfaceBrokerHandler$InterfaceBroker;

    const v1, 0x7d768ced

    invoke-static {v1}, Lcom/liapp/y;->حֲݴܳޯ(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/kakaogame/broker/InterfaceBrokerHandler;->registerInterfaceBroker(Ljava/lang/String;Lcom/kakaogame/broker/InterfaceBrokerHandler$InterfaceBroker;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method private final loadGroupChats(II)Lcom/kakaogame/KGResult;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lcom/kakaogame/KGResult<",
            "Lcom/kakaogame/KGKakaoTalkGroupChat$KGKakaoTalkGroupChatsResponse;",
            ">;"
        }
    .end annotation

    const v0, 0x5d162fb7

    invoke-static {v0}, Lcom/liapp/y;->ڴݮگ֮ت(I)Ljava/lang/String;

    move-result-object v0

    .line 1829
    sget-object v1, Lcom/kakaogame/util/Stopwatch;->Companion:Lcom/kakaogame/util/Stopwatch$Companion;

    const v2, 0x2253847e

    invoke-static {v2}, Lcom/liapp/y;->ֲֳگܱޭ(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/kakaogame/util/Stopwatch$Companion;->start(Ljava/lang/String;)Lcom/kakaogame/util/Stopwatch;

    move-result-object v1

    .line 1849
    :try_start_0
    sget-object v2, Lcom/kakaogame/core/CoreManager;->Companion:Lcom/kakaogame/core/CoreManager$Companion;

    invoke-virtual {v2}, Lcom/kakaogame/core/CoreManager$Companion;->getInstance()Lcom/kakaogame/core/CoreManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/kakaogame/core/CoreManager;->isNotAuthorized()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1859
    sget-object p1, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    const/16 p2, 0xbba

    invoke-virtual {p1, p2}, Lcom/kakaogame/KGResult$Companion;->getResult(I)Lcom/kakaogame/KGResult;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2209
    :goto_0
    invoke-virtual {v1}, Lcom/kakaogame/util/Stopwatch;->stop()V

    .line 2219
    invoke-static {p1}, Lcom/kakaogame/kakao/KakaoUtil;->convertResultCode(Lcom/kakaogame/KGResult;)Lcom/kakaogame/KGResult;

    .line 2229
    invoke-virtual {v1}, Lcom/kakaogame/util/Stopwatch;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1}, Lcom/kakaogame/util/Stopwatch;->getDurationMs()J

    move-result-wide v0

    invoke-static {p2, p1, v0, v1}, Lcom/kakaogame/core/KGResultUtil;->writeClientApiCall(Ljava/lang/String;Lcom/kakaogame/KGResult;J)V

    return-object p1

    .line 1899
    :cond_0
    :try_start_1
    sget-object v2, Lcom/kakaogame/KGLocalPlayer;->Companion:Lcom/kakaogame/KGLocalPlayer$Companion;

    invoke-virtual {v2}, Lcom/kakaogame/KGLocalPlayer$Companion;->getCurrentPlayer()Lcom/kakaogame/KGLocalPlayer;

    move-result-object v2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v2}, Lcom/kakaogame/KGLocalPlayer;->getIdpProfile()Lcom/kakaogame/KGIdpProfile;

    move-result-object v2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v2}, Lcom/kakaogame/KGIdpProfile;->getIdpCode()Lcom/kakaogame/KGIdpProfile$KGIdpCode;

    move-result-object v2

    sget-object v3, Lcom/kakaogame/KGIdpProfile$KGIdpCode;->Kakao:Lcom/kakaogame/KGIdpProfile$KGIdpCode;

    if-eq v2, v3, :cond_1

    .line 1909
    sget-object p1, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    .line 1929
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v0, Lcom/kakaogame/KGLocalPlayer;->Companion:Lcom/kakaogame/KGLocalPlayer$Companion;

    invoke-virtual {v0}, Lcom/kakaogame/KGLocalPlayer$Companion;->getCurrentPlayer()Lcom/kakaogame/KGLocalPlayer;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/kakaogame/KGLocalPlayer;->getIdpProfile()Lcom/kakaogame/KGIdpProfile;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/kakaogame/KGIdpProfile;->getIdpCode()Lcom/kakaogame/KGIdpProfile$KGIdpCode;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/16 v0, 0x1389

    .line 1909
    invoke-virtual {p1, v0, p2}, Lcom/kakaogame/KGResult$Companion;->getResult(ILjava/lang/String;)Lcom/kakaogame/KGResult;

    move-result-object p1

    goto :goto_0

    .line 1959
    :cond_1
    invoke-static {}, Lcom/kakaogame/kakao/KakaoManager;->isTalkUser()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1969
    sget-object p1, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    const-string p2, "onNotKakaoTalkUser"

    const/16 v0, 0x1c22

    invoke-virtual {p1, v0, p2}, Lcom/kakaogame/KGResult$Companion;->getResult(ILjava/lang/String;)Lcom/kakaogame/KGResult;

    move-result-object p1

    goto :goto_0

    .line 2039
    :cond_2
    sget-object v0, Lcom/kakaogame/core/CoreManager;->Companion:Lcom/kakaogame/core/CoreManager$Companion;

    invoke-virtual {v0}, Lcom/kakaogame/core/CoreManager$Companion;->getInstance()Lcom/kakaogame/core/CoreManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kakaogame/core/CoreManager;->isKakaoCacheMode()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2049
    sget-object v0, Lcom/kakaogame/core/CoreManager;->Companion:Lcom/kakaogame/core/CoreManager$Companion;

    invoke-virtual {v0}, Lcom/kakaogame/core/CoreManager$Companion;->getInstance()Lcom/kakaogame/core/CoreManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kakaogame/core/CoreManager;->tryKakaoReConnect()Lcom/kakaogame/KGResult;

    .line 2069
    :cond_3
    invoke-static {p1, p2}, Lcom/kakaogame/kakao/KakaoGameAPI;->requestMultiChatList(II)Lcom/kakaogame/KGResult;

    move-result-object p1

    .line 2079
    invoke-virtual {p1}, Lcom/kakaogame/KGResult;->isNotSuccess()Z

    move-result p2

    if-eqz p2, :cond_4

    .line 2089
    sget-object p2, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    check-cast p1, Ljava/util/Map;

    invoke-virtual {p2, p1}, Lcom/kakaogame/KGResult$Companion;->getResult(Ljava/util/Map;)Lcom/kakaogame/KGResult;

    move-result-object p1

    goto/16 :goto_0

    .line 2109
    :cond_4
    invoke-virtual {p1}, Lcom/kakaogame/KGResult;->getContent()Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast p1, Lcom/kakao/sdk/partner/talk/model/Chats;

    .line 2119
    new-instance p2, Lcom/kakaogame/KGKakaoTalkGroupChat$KGKakaoTalkGroupChatsResponse;

    invoke-direct {p2, p1}, Lcom/kakaogame/KGKakaoTalkGroupChat$KGKakaoTalkGroupChatsResponse;-><init>(Lcom/kakao/sdk/partner/talk/model/Chats;)V

    .line 2129
    sget-object p1, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    invoke-virtual {p1, p2}, Lcom/kakaogame/KGResult$Companion;->getSuccessResult(Ljava/lang/Object;)Lcom/kakaogame/KGResult;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2209
    invoke-virtual {v1}, Lcom/kakaogame/util/Stopwatch;->stop()V

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    .line 2149
    :try_start_2
    sget-object p2, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    const-string v0, "KGKakaoTalkGroupChat"

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v3, p1

    check-cast v3, Ljava/lang/Throwable;

    invoke-virtual {p2, v0, v2, v3}, Lcom/kakaogame/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2159
    sget-object p2, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    .line 2179
    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    const/16 v0, 0xfa1

    .line 2159
    invoke-virtual {p2, v0, p1}, Lcom/kakaogame/KGResult$Companion;->getResult(ILjava/lang/String;)Lcom/kakaogame/KGResult;

    move-result-object p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2209
    invoke-virtual {v1}, Lcom/kakaogame/util/Stopwatch;->stop()V

    .line 2219
    move-object p2, p1

    check-cast p2, Lcom/kakaogame/KGResult;

    :goto_1
    invoke-static {p1}, Lcom/kakaogame/kakao/KakaoUtil;->convertResultCode(Lcom/kakaogame/KGResult;)Lcom/kakaogame/KGResult;

    .line 2229
    invoke-virtual {v1}, Lcom/kakaogame/util/Stopwatch;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1}, Lcom/kakaogame/util/Stopwatch;->getDurationMs()J

    move-result-wide v0

    invoke-static {p2, p1, v0, v1}, Lcom/kakaogame/core/KGResultUtil;->writeClientApiCall(Ljava/lang/String;Lcom/kakaogame/KGResult;J)V

    return-object p1

    .line 2209
    :goto_2
    invoke-virtual {v1}, Lcom/kakaogame/util/Stopwatch;->stop()V

    const/4 p2, 0x0

    .line 2219
    move-object v0, p2

    check-cast v0, Lcom/kakaogame/KGResult;

    invoke-static {p2}, Lcom/kakaogame/kakao/KakaoUtil;->convertResultCode(Lcom/kakaogame/KGResult;)Lcom/kakaogame/KGResult;

    .line 2229
    invoke-virtual {v1}, Lcom/kakaogame/util/Stopwatch;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Lcom/kakaogame/util/Stopwatch;->getDurationMs()J

    move-result-wide v1

    invoke-static {v0, p2, v1, v2}, Lcom/kakaogame/core/KGResultUtil;->writeClientApiCall(Ljava/lang/String;Lcom/kakaogame/KGResult;J)V

    throw p1

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public final initialize()V
    .locals 0

    .line 1599
    invoke-direct {p0}, Lcom/kakaogame/KGKakaoTalkGroupChat$Companion;->initInterfaceBroker()V

    return-void

    .array-data 1
    .end array-data
.end method

.method public final loadGroupChats(IILcom/kakaogame/KGResultCallback;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Lcom/kakaogame/KGResultCallback<",
            "Lcom/kakaogame/KGKakaoTalkGroupChat$KGKakaoTalkGroupChatsResponse;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 1719
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    invoke-static {v0}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    new-instance v0, Lcom/kakaogame/KGKakaoTalkGroupChat$Companion$loadGroupChats$1;

    const/4 v4, 0x0

    invoke-direct {v0, p1, p2, p3, v4}, Lcom/kakaogame/KGKakaoTalkGroupChat$Companion$loadGroupChats$1;-><init>(IILcom/kakaogame/KGResultCallback;Lkotlin/coroutines/Continuation;)V

    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v5, 0x3

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void

    nop

    .array-data 1
    .end array-data
.end method
