.class public final Lcom/kakaogame/KGKakaoInvitationEvent$Companion;
.super Ljava/lang/Object;
.source "KGKakaoInvitationEvent.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kakaogame/KGKakaoInvitationEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nKGKakaoInvitationEvent.kt\nKotlin\n*S Kotlin\n*F\n+ 1 KGKakaoInvitationEvent.kt\ncom/kakaogame/KGKakaoInvitationEvent$Companion\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,220:1\n1#2:221\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0002\u0008\n\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0006\u0010\u0012\u001a\u00020\u0013J \u0010\u0014\u001a\u00020\u00132\u0016\u0010\u0015\u001a\u0012\u0012\u000c\u0012\n\u0012\u0004\u0012\u00020\u0018\u0018\u00010\u0017\u0018\u00010\u0016H\u0007J\u0016\u0010\u0014\u001a\u0010\u0012\u000c\u0012\n\u0012\u0004\u0012\u00020\u0018\u0018\u00010\u00170\u0019H\u0002J\u0008\u0010\u001a\u001a\u00020\u0013H\u0002R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0005X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0005X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u0005X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u0005X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\u0005X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u0005X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u0005X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u0005X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u0005X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u0005X\u0082T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001b"
    }
    d2 = {
        "Lcom/kakaogame/KGKakaoInvitationEvent$Companion;",
        "",
        "<init>",
        "()V",
        "TAG",
        "",
        "CLASS_NAME_KEY",
        "serialVersionUID",
        "",
        "KEY_EVENT_ID",
        "KEY_EVENT_CARD_ENABLED",
        "KEY_START_TIME",
        "KEY_FINISH_TIME",
        "KEY_MAX_HOST_REWARD_COUNT",
        "KEY_HOST_REWARD_CODE",
        "KEY_JOIN_REWARD_CODE",
        "KEY_INVITATION_URL",
        "KEY_TOTAL_JOINER_COUNT",
        "initialize",
        "",
        "loadInvitationEvents",
        "callback",
        "Lcom/kakaogame/KGResultCallback;",
        "",
        "Lcom/kakaogame/KGKakaoInvitationEvent;",
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

    .line 1009
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void

    .array-data 1
    .end array-data
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/kakaogame/KGKakaoInvitationEvent$Companion;-><init>()V

    return-void

    .array-data 1
    .end array-data
.end method

.method public static final synthetic access$loadInvitationEvents(Lcom/kakaogame/KGKakaoInvitationEvent$Companion;)Lcom/kakaogame/KGResult;
    .locals 0

    .line 1009
    invoke-direct {p0}, Lcom/kakaogame/KGKakaoInvitationEvent$Companion;->loadInvitationEvents()Lcom/kakaogame/KGResult;

    move-result-object p0

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method private final initInterfaceBroker()V
    .locals 2

    .line 1769
    new-instance v0, Lcom/kakaogame/KGKakaoInvitationEvent$Companion$initInterfaceBroker$1;

    invoke-direct {v0}, Lcom/kakaogame/KGKakaoInvitationEvent$Companion$initInterfaceBroker$1;-><init>()V

    check-cast v0, Lcom/kakaogame/broker/InterfaceBrokerHandler$InterfaceBroker;

    const v1, 0x6d0a0320

    invoke-static {v1}, Lcom/liapp/y;->ٱڳܴڭܩ(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/kakaogame/broker/InterfaceBrokerHandler;->registerInterfaceBroker(Ljava/lang/String;Lcom/kakaogame/broker/InterfaceBrokerHandler$InterfaceBroker;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method private final loadInvitationEvents()Lcom/kakaogame/KGResult;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/kakaogame/KGResult<",
            "Ljava/util/List<",
            "Lcom/kakaogame/KGKakaoInvitationEvent;",
            ">;>;"
        }
    .end annotation

    .line 1349
    sget-object v0, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    const v1, -0x451f716f

    invoke-static {v1}, Lcom/liapp/y;->ڳݬ٬ۮݪ(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x225304b6

    invoke-static {v2}, Lcom/liapp/y;->ֲֳگܱޭ(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lcom/kakaogame/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1359
    sget-object v0, Lcom/kakaogame/KGIdpProfile$KGIdpCode;->Kakao:Lcom/kakaogame/KGIdpProfile$KGIdpCode;

    sget-object v1, Lcom/kakaogame/KGLocalPlayer;->Companion:Lcom/kakaogame/KGLocalPlayer$Companion;

    invoke-virtual {v1}, Lcom/kakaogame/KGLocalPlayer$Companion;->getCurrentPlayer()Lcom/kakaogame/KGLocalPlayer;

    move-result-object v1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/kakaogame/KGLocalPlayer;->getIdpProfile()Lcom/kakaogame/KGIdpProfile;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/kakaogame/KGIdpProfile;->getIdpCode()Lcom/kakaogame/KGIdpProfile$KGIdpCode;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v3

    :goto_0
    if-eq v0, v1, :cond_2

    .line 1369
    sget-object v0, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    .line 1389
    new-instance v1, Ljava/lang/StringBuilder;

    const v2, 0x5d162fb7

    invoke-static {v2}, Lcom/liapp/y;->ڴݮگ֮ت(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/kakaogame/KGLocalPlayer;->Companion:Lcom/kakaogame/KGLocalPlayer$Companion;

    invoke-virtual {v2}, Lcom/kakaogame/KGLocalPlayer$Companion;->getCurrentPlayer()Lcom/kakaogame/KGLocalPlayer;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/kakaogame/KGLocalPlayer;->getIdpProfile()Lcom/kakaogame/KGIdpProfile;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/kakaogame/KGIdpProfile;->getIdpCode()Lcom/kakaogame/KGIdpProfile$KGIdpCode;

    move-result-object v3

    :cond_1
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x1389

    .line 1369
    invoke-virtual {v0, v2, v1}, Lcom/kakaogame/KGResult$Companion;->getResult(ILjava/lang/String;)Lcom/kakaogame/KGResult;

    move-result-object v0

    return-object v0

    .line 1439
    :cond_2
    sget-object v0, Lcom/kakaogame/util/Stopwatch;->Companion:Lcom/kakaogame/util/Stopwatch$Companion;

    const v1, 0x6d0a0548

    invoke-static {v1}, Lcom/liapp/y;->ٱڳܴڭܩ(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kakaogame/util/Stopwatch$Companion;->start(Ljava/lang/String;)Lcom/kakaogame/util/Stopwatch;

    move-result-object v0

    .line 1459
    :try_start_0
    sget-object v1, Lcom/kakaogame/kakao/KakaoGameAPI;->INSTANCE:Lcom/kakaogame/kakao/KakaoGameAPI;

    invoke-virtual {v1}, Lcom/kakaogame/kakao/KakaoGameAPI;->requestInvitationEventList()Lcom/kakaogame/KGResult;

    move-result-object v1

    .line 1469
    invoke-virtual {v1}, Lcom/kakaogame/KGResult;->isNotSuccess()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1479
    sget-object v4, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    check-cast v1, Ljava/util/Map;

    invoke-virtual {v4, v1}, Lcom/kakaogame/KGResult$Companion;->getResult(Ljava/util/Map;)Lcom/kakaogame/KGResult;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1699
    invoke-virtual {v0}, Lcom/kakaogame/util/Stopwatch;->stop()V

    .line 1709
    invoke-static {v1}, Lcom/kakaogame/kakao/KakaoUtil;->convertResultCode(Lcom/kakaogame/KGResult;)Lcom/kakaogame/KGResult;

    .line 1719
    invoke-virtual {v0}, Lcom/kakaogame/util/Stopwatch;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/kakaogame/util/Stopwatch;->getDurationMs()J

    move-result-wide v3

    invoke-static {v2, v1, v3, v4}, Lcom/kakaogame/core/KGResultUtil;->writeClientApiCall(Ljava/lang/String;Lcom/kakaogame/KGResult;J)V

    return-object v1

    .line 1499
    :cond_3
    :try_start_1
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    check-cast v4, Ljava/util/List;

    .line 1509
    invoke-virtual {v1}, Lcom/kakaogame/KGResult;->getContent()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_6

    .line 1529
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/kakaogame/game/model/InvitationEvent;

    .line 1539
    sget-object v6, Lcom/kakaogame/kakao/KakaoGameAPI;->INSTANCE:Lcom/kakaogame/kakao/KakaoGameAPI;

    invoke-virtual {v5}, Lcom/kakaogame/game/model/InvitationEvent;->getId()Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v6, v5}, Lcom/kakaogame/kakao/KakaoGameAPI;->requestInvitationEvent(I)Lcom/kakaogame/KGResult;

    move-result-object v5

    .line 1549
    invoke-virtual {v5}, Lcom/kakaogame/KGResult;->isNotSuccess()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 1559
    sget-object v1, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    check-cast v5, Ljava/util/Map;

    invoke-virtual {v1, v5}, Lcom/kakaogame/KGResult$Companion;->getResult(Ljava/util/Map;)Lcom/kakaogame/KGResult;

    move-result-object v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1699
    invoke-virtual {v0}, Lcom/kakaogame/util/Stopwatch;->stop()V

    .line 1709
    invoke-static {v3}, Lcom/kakaogame/kakao/KakaoUtil;->convertResultCode(Lcom/kakaogame/KGResult;)Lcom/kakaogame/KGResult;

    .line 1719
    invoke-virtual {v0}, Lcom/kakaogame/util/Stopwatch;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/kakaogame/util/Stopwatch;->getDurationMs()J

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Lcom/kakaogame/core/KGResultUtil;->writeClientApiCall(Ljava/lang/String;Lcom/kakaogame/KGResult;J)V

    return-object v1

    .line 1579
    :cond_5
    :try_start_2
    invoke-virtual {v5}, Lcom/kakaogame/KGResult;->getContent()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/kakaogame/game/model/InvitationEvent;

    if-eqz v5, :cond_4

    .line 1599
    new-instance v6, Lcom/kakaogame/KGKakaoInvitationEvent;

    invoke-direct {v6, v5, v3}, Lcom/kakaogame/KGKakaoInvitationEvent;-><init>(Lcom/kakaogame/game/model/InvitationEvent;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 1609
    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1649
    :cond_6
    sget-object v1, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    invoke-virtual {v1, v4}, Lcom/kakaogame/KGResult$Companion;->getSuccessResult(Ljava/lang/Object;)Lcom/kakaogame/KGResult;

    move-result-object v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1699
    invoke-virtual {v0}, Lcom/kakaogame/util/Stopwatch;->stop()V

    goto :goto_2

    :catchall_0
    move-exception v1

    goto :goto_3

    :catch_0
    move-exception v1

    .line 1669
    :try_start_3
    sget-object v4, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v6, v1

    check-cast v6, Ljava/lang/Throwable;

    invoke-virtual {v4, v2, v5, v6}, Lcom/kakaogame/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1679
    sget-object v2, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0xfa1

    invoke-virtual {v2, v4, v1}, Lcom/kakaogame/KGResult$Companion;->getResult(ILjava/lang/String;)Lcom/kakaogame/KGResult;

    move-result-object v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1699
    invoke-virtual {v0}, Lcom/kakaogame/util/Stopwatch;->stop()V

    .line 1709
    move-object v2, v1

    check-cast v2, Lcom/kakaogame/KGResult;

    :goto_2
    invoke-static {v1}, Lcom/kakaogame/kakao/KakaoUtil;->convertResultCode(Lcom/kakaogame/KGResult;)Lcom/kakaogame/KGResult;

    .line 1719
    invoke-virtual {v0}, Lcom/kakaogame/util/Stopwatch;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/kakaogame/util/Stopwatch;->getDurationMs()J

    move-result-wide v3

    invoke-static {v2, v1, v3, v4}, Lcom/kakaogame/core/KGResultUtil;->writeClientApiCall(Ljava/lang/String;Lcom/kakaogame/KGResult;J)V

    return-object v1

    .line 1699
    :goto_3
    invoke-virtual {v0}, Lcom/kakaogame/util/Stopwatch;->stop()V

    .line 1709
    move-object v2, v3

    check-cast v2, Lcom/kakaogame/KGResult;

    invoke-static {v3}, Lcom/kakaogame/kakao/KakaoUtil;->convertResultCode(Lcom/kakaogame/KGResult;)Lcom/kakaogame/KGResult;

    .line 1719
    invoke-virtual {v0}, Lcom/kakaogame/util/Stopwatch;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/kakaogame/util/Stopwatch;->getDurationMs()J

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Lcom/kakaogame/core/KGResultUtil;->writeClientApiCall(Ljava/lang/String;Lcom/kakaogame/KGResult;J)V

    throw v1

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public final initialize()V
    .locals 0

    .line 1149
    invoke-direct {p0}, Lcom/kakaogame/KGKakaoInvitationEvent$Companion;->initInterfaceBroker()V

    return-void

    .array-data 1
    .end array-data
.end method

.method public final loadInvitationEvents(Lcom/kakaogame/KGResultCallback;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/kakaogame/KGResultCallback<",
            "Ljava/util/List<",
            "Lcom/kakaogame/KGKakaoInvitationEvent;",
            ">;>;)V"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 1249
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    invoke-static {v0}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    new-instance v0, Lcom/kakaogame/KGKakaoInvitationEvent$Companion$loadInvitationEvents$1;

    const/4 v4, 0x0

    invoke-direct {v0, p1, v4}, Lcom/kakaogame/KGKakaoInvitationEvent$Companion$loadInvitationEvents$1;-><init>(Lcom/kakaogame/KGResultCallback;Lkotlin/coroutines/Continuation;)V

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
