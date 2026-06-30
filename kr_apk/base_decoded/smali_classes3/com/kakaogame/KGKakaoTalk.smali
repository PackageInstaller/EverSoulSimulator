.class public final Lcom/kakaogame/KGKakaoTalk;
.super Ljava/lang/Object;
.source "KGKakaoTalk.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nKGKakaoTalk.kt\nKotlin\n*S Kotlin\n*F\n+ 1 KGKakaoTalk.kt\ncom/kakaogame/KGKakaoTalk\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,177:1\n1#2:178\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000D\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0006\u0010\u0007\u001a\u00020\u0008J\"\u0010\t\u001a\u00020\u00082\u0006\u0010\n\u001a\u00020\u000b2\u0010\u0010\u000c\u001a\u000c\u0012\u0006\u0012\u0004\u0018\u00010\u000e\u0018\u00010\rH\u0007J$\u0010\u000f\u001a\u00020\u00082\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u00112\u0010\u0010\u000c\u001a\u000c\u0012\u0006\u0012\u0004\u0018\u00010\u0005\u0018\u00010\rH\u0007J\u0018\u0010\t\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u000e0\u00162\u0006\u0010\n\u001a\u00020\u000bH\u0002J\u001a\u0010\u000f\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00050\u00162\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u0011H\u0002J\u0008\u0010\u0017\u001a\u00020\u0008H\u0002R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0005X\u0082T\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u0012\u001a\u00020\u00138FX\u0087\u0004\u00a2\u0006\u000c\u0012\u0004\u0008\u0014\u0010\u0003\u001a\u0004\u0008\u0012\u0010\u0015\u00a8\u0006\u0018"
    }
    d2 = {
        "Lcom/kakaogame/KGKakaoTalk;",
        "",
        "<init>",
        "()V",
        "TAG",
        "",
        "CLASS_NAME_KEY",
        "initialize",
        "",
        "addPlusFriend",
        "plusFriendId",
        "",
        "callback",
        "Lcom/kakaogame/KGResultCallback;",
        "Ljava/lang/Void;",
        "uploadGameImage",
        "file",
        "Ljava/io/File;",
        "isKakaoTalkInstalled",
        "",
        "isKakaoTalkInstalled$annotations",
        "()Z",
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


# static fields
.field private static final CLASS_NAME_KEY:Ljava/lang/String; = "KGKakaoTalk"

.field public static final INSTANCE:Lcom/kakaogame/KGKakaoTalk;

.field private static final TAG:Ljava/lang/String; = "KGKakaoTalk"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/kakaogame/KGKakaoTalk;

    invoke-direct {v0}, Lcom/kakaogame/KGKakaoTalk;-><init>()V

    sput-object v0, Lcom/kakaogame/KGKakaoTalk;->INSTANCE:Lcom/kakaogame/KGKakaoTalk;

    return-void

    .array-data 1
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .line 319
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void

    .array-data 1
    .end array-data
.end method

.method public static final synthetic access$addPlusFriend(Lcom/kakaogame/KGKakaoTalk;I)Lcom/kakaogame/KGResult;
    .locals 0

    .line 319
    invoke-direct {p0, p1}, Lcom/kakaogame/KGKakaoTalk;->addPlusFriend(I)Lcom/kakaogame/KGResult;

    move-result-object p0

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static final synthetic access$uploadGameImage(Lcom/kakaogame/KGKakaoTalk;Ljava/io/File;)Lcom/kakaogame/KGResult;
    .locals 0

    .line 319
    invoke-direct {p0, p1}, Lcom/kakaogame/KGKakaoTalk;->uploadGameImage(Ljava/io/File;)Lcom/kakaogame/KGResult;

    move-result-object p0

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method private final addPlusFriend(I)Lcom/kakaogame/KGResult;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/kakaogame/KGResult<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 899
    sget-object v0, Lcom/kakaogame/core/CoreManager;->Companion:Lcom/kakaogame/core/CoreManager$Companion;

    invoke-virtual {v0}, Lcom/kakaogame/core/CoreManager$Companion;->getInstance()Lcom/kakaogame/core/CoreManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kakaogame/core/CoreManager;->isNotAuthorized()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p1, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    const/16 v0, 0xbba

    invoke-virtual {p1, v0}, Lcom/kakaogame/KGResult$Companion;->getResult(I)Lcom/kakaogame/KGResult;

    move-result-object p1

    goto/16 :goto_3

    .line 909
    :cond_0
    sget-object v0, Lcom/kakaogame/KGIdpProfile$KGIdpCode;->Kakao:Lcom/kakaogame/KGIdpProfile$KGIdpCode;

    sget-object v1, Lcom/kakaogame/KGLocalPlayer;->Companion:Lcom/kakaogame/KGLocalPlayer$Companion;

    invoke-virtual {v1}, Lcom/kakaogame/KGLocalPlayer$Companion;->getCurrentPlayer()Lcom/kakaogame/KGLocalPlayer;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/kakaogame/KGLocalPlayer;->getIdpProfile()Lcom/kakaogame/KGIdpProfile;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/kakaogame/KGIdpProfile;->getIdpCode()Lcom/kakaogame/KGIdpProfile$KGIdpCode;

    move-result-object v1

    goto :goto_0

    :cond_1
    move-object v1, v2

    :goto_0
    if-eq v0, v1, :cond_2

    .line 919
    sget-object p1, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    const/16 v0, 0x1389

    const v1, 0x2253b1ce

    invoke-static {v1}, Lcom/liapp/y;->ֲֳگܱޭ(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/kakaogame/KGResult$Companion;->getResult(ILjava/lang/String;)Lcom/kakaogame/KGResult;

    move-result-object p1

    goto/16 :goto_3

    .line 929
    :cond_2
    invoke-static {}, Lcom/kakaogame/kakao/KakaoManager;->isTalkUser()Z

    move-result v0

    if-nez v0, :cond_3

    sget-object p1, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    const/16 v0, 0x1c22

    const v1, 0x33649f43

    invoke-static {v1}, Lcom/liapp/y;->ׯ״ٲ֬ب(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/kakaogame/KGResult$Companion;->getResult(ILjava/lang/String;)Lcom/kakaogame/KGResult;

    move-result-object p1

    goto :goto_3

    .line 959
    :cond_3
    sget-object v0, Lcom/kakaogame/util/Stopwatch;->Companion:Lcom/kakaogame/util/Stopwatch$Companion;

    const v1, 0x5d1691e7

    invoke-static {v1}, Lcom/liapp/y;->ڴݮگ֮ت(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kakaogame/util/Stopwatch$Companion;->start(Ljava/lang/String;)Lcom/kakaogame/util/Stopwatch;

    move-result-object v0

    .line 989
    :try_start_0
    sget-object v1, Lcom/kakaogame/core/CoreManager;->Companion:Lcom/kakaogame/core/CoreManager$Companion;

    invoke-virtual {v1}, Lcom/kakaogame/core/CoreManager$Companion;->getInstance()Lcom/kakaogame/core/CoreManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/kakaogame/core/CoreManager;->isKakaoCacheMode()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 999
    sget-object v1, Lcom/kakaogame/core/CoreManager;->Companion:Lcom/kakaogame/core/CoreManager$Companion;

    invoke-virtual {v1}, Lcom/kakaogame/core/CoreManager$Companion;->getInstance()Lcom/kakaogame/core/CoreManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/kakaogame/core/CoreManager;->tryKakaoReConnect()Lcom/kakaogame/KGResult;

    .line 1019
    :cond_4
    invoke-static {p1}, Lcom/kakaogame/server/InhouseGWService;->addPlusFriend(I)Lcom/kakaogame/KGResult;

    move-result-object p1

    .line 1029
    invoke-virtual {p1}, Lcom/kakaogame/KGResult;->isNotSuccess()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1039
    sget-object v1, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    check-cast p1, Ljava/util/Map;

    invoke-virtual {v1, p1}, Lcom/kakaogame/KGResult$Companion;->getResult(Ljava/util/Map;)Lcom/kakaogame/KGResult;

    move-result-object p1

    goto :goto_1

    .line 1049
    :cond_5
    sget-object p1, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    invoke-virtual {p1}, Lcom/kakaogame/KGResult$Companion;->getSuccessResult()Lcom/kakaogame/KGResult;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1099
    :goto_1
    invoke-virtual {v0}, Lcom/kakaogame/util/Stopwatch;->stop()V

    .line 1109
    invoke-virtual {v0}, Lcom/kakaogame/util/Stopwatch;->getName()Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :catchall_0
    move-exception p1

    goto :goto_4

    :catch_0
    move-exception p1

    .line 1069
    :try_start_1
    sget-object v1, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    const-string v3, "KGKakaoTalk"

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v5, p1

    check-cast v5, Ljava/lang/Throwable;

    invoke-virtual {v1, v3, v4, v5}, Lcom/kakaogame/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1079
    sget-object v1, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    const/16 v3, 0xfa1

    invoke-virtual {v1, v3, p1}, Lcom/kakaogame/KGResult$Companion;->getResult(ILjava/lang/String;)Lcom/kakaogame/KGResult;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1099
    invoke-virtual {v0}, Lcom/kakaogame/util/Stopwatch;->stop()V

    .line 1109
    invoke-virtual {v0}, Lcom/kakaogame/util/Stopwatch;->getName()Ljava/lang/String;

    move-result-object v1

    move-object v2, p1

    check-cast v2, Lcom/kakaogame/KGResult;

    :goto_2
    invoke-virtual {v0}, Lcom/kakaogame/util/Stopwatch;->getDurationMs()J

    move-result-wide v2

    invoke-static {v1, p1, v2, v3}, Lcom/kakaogame/core/KGResultUtil;->writeClientApiCall(Ljava/lang/String;Lcom/kakaogame/KGResult;J)V

    :goto_3
    return-object p1

    .line 1099
    :goto_4
    invoke-virtual {v0}, Lcom/kakaogame/util/Stopwatch;->stop()V

    .line 1109
    invoke-virtual {v0}, Lcom/kakaogame/util/Stopwatch;->getName()Ljava/lang/String;

    move-result-object v1

    move-object v3, v2

    check-cast v3, Lcom/kakaogame/KGResult;

    invoke-virtual {v0}, Lcom/kakaogame/util/Stopwatch;->getDurationMs()J

    move-result-wide v3

    invoke-static {v1, v2, v3, v4}, Lcom/kakaogame/core/KGResultUtil;->writeClientApiCall(Ljava/lang/String;Lcom/kakaogame/KGResult;J)V

    throw p1

    .array-data 1
    .end array-data
.end method

.method public static final addPlusFriend(ILcom/kakaogame/KGResultCallback;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/kakaogame/KGResultCallback<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 469
    sget-object v0, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const v2, -0x224470ec

    invoke-static {v2}, Lcom/liapp/y;->״دش۲ݮ(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const v2, 0x5d168a2f

    invoke-static {v2}, Lcom/liapp/y;->ڴݮگ֮ت(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lcom/kakaogame/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_0

    .line 489
    sget-object v0, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    const v1, -0x451fd507

    invoke-static {v1}, Lcom/liapp/y;->ڳݬ٬ۮݪ(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/kakaogame/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 509
    :cond_0
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    invoke-static {v0}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    new-instance v0, Lcom/kakaogame/KGKakaoTalk$addPlusFriend$1;

    const/4 v4, 0x0

    invoke-direct {v0, p0, p1, v4}, Lcom/kakaogame/KGKakaoTalk$addPlusFriend$1;-><init>(ILcom/kakaogame/KGResultCallback;Lkotlin/coroutines/Continuation;)V

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

.method private final initInterfaceBroker()V
    .locals 2

    .line 1409
    new-instance v0, Lcom/kakaogame/KGKakaoTalk$initInterfaceBroker$1;

    invoke-direct {v0}, Lcom/kakaogame/KGKakaoTalk$initInterfaceBroker$1;-><init>()V

    check-cast v0, Lcom/kakaogame/broker/InterfaceBrokerHandler$InterfaceBroker;

    const v1, 0x543fb94a

    invoke-static {v1}, Lcom/liapp/y;->׳ֳֳ֬د(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/kakaogame/broker/InterfaceBrokerHandler;->registerInterfaceBroker(Ljava/lang/String;Lcom/kakaogame/broker/InterfaceBrokerHandler$InterfaceBroker;)V

    .line 1509
    new-instance v0, Lcom/kakaogame/KGKakaoTalk$initInterfaceBroker$2;

    invoke-direct {v0}, Lcom/kakaogame/KGKakaoTalk$initInterfaceBroker$2;-><init>()V

    check-cast v0, Lcom/kakaogame/broker/InterfaceBrokerHandler$InterfaceBroker;

    const v1, -0x22447d84

    invoke-static {v1}, Lcom/liapp/y;->״دش۲ݮ(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/kakaogame/broker/InterfaceBrokerHandler;->registerInterfaceBroker(Ljava/lang/String;Lcom/kakaogame/broker/InterfaceBrokerHandler$InterfaceBroker;)V

    .line 1689
    new-instance v0, Lcom/kakaogame/KGKakaoTalk$initInterfaceBroker$3;

    invoke-direct {v0}, Lcom/kakaogame/KGKakaoTalk$initInterfaceBroker$3;-><init>()V

    check-cast v0, Lcom/kakaogame/broker/InterfaceBrokerHandler$InterfaceBroker;

    const v1, 0x543fb76a

    invoke-static {v1}, Lcom/liapp/y;->׳ֳֳ֬د(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/kakaogame/broker/InterfaceBrokerHandler;->registerInterfaceBroker(Ljava/lang/String;Lcom/kakaogame/broker/InterfaceBrokerHandler$InterfaceBroker;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method public static final isKakaoTalkInstalled()Z
    .locals 2

    .line 849
    sget-object v0, Lcom/kakaogame/idp/KGKakao2Auth;->Companion:Lcom/kakaogame/idp/KGKakao2Auth$Companion;

    sget-object v1, Lcom/kakaogame/core/CoreManager;->Companion:Lcom/kakaogame/core/CoreManager$Companion;

    invoke-virtual {v1}, Lcom/kakaogame/core/CoreManager$Companion;->getInstance()Lcom/kakaogame/core/CoreManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/kakaogame/core/CoreManager;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kakaogame/idp/KGKakao2Auth$Companion;->initializeKakaoSdk(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 859
    :cond_0
    sget-object v0, Lcom/kakao/sdk/user/UserApiClient;->Companion:Lcom/kakao/sdk/user/UserApiClient$Companion;

    invoke-virtual {v0}, Lcom/kakao/sdk/user/UserApiClient$Companion;->getInstance()Lcom/kakao/sdk/user/UserApiClient;

    move-result-object v0

    sget-object v1, Lcom/kakaogame/core/CoreManager;->Companion:Lcom/kakaogame/core/CoreManager$Companion;

    invoke-virtual {v1}, Lcom/kakaogame/core/CoreManager$Companion;->getInstance()Lcom/kakaogame/core/CoreManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/kakaogame/core/CoreManager;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kakao/sdk/user/UserApiClient;->isKakaoTalkLoginAvailable(Landroid/content/Context;)Z

    move-result v0

    :goto_0
    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public static synthetic isKakaoTalkInstalled$annotations()V
    .locals 0
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method private final uploadGameImage(Ljava/io/File;)Lcom/kakaogame/KGResult;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            ")",
            "Lcom/kakaogame/KGResult<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1189
    sget-object v0, Lcom/kakaogame/util/Stopwatch;->Companion:Lcom/kakaogame/util/Stopwatch$Companion;

    const v1, 0x543fb5aa

    invoke-static {v1}, Lcom/liapp/y;->׳ֳֳ֬د(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kakaogame/util/Stopwatch$Companion;->start(Ljava/lang/String;)Lcom/kakaogame/util/Stopwatch;

    move-result-object v0

    .line 1219
    :try_start_0
    sget-object v1, Lcom/kakaogame/core/CoreManager;->Companion:Lcom/kakaogame/core/CoreManager$Companion;

    invoke-virtual {v1}, Lcom/kakaogame/core/CoreManager$Companion;->getInstance()Lcom/kakaogame/core/CoreManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/kakaogame/core/CoreManager;->isKakaoCacheMode()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1229
    sget-object v1, Lcom/kakaogame/core/CoreManager;->Companion:Lcom/kakaogame/core/CoreManager$Companion;

    invoke-virtual {v1}, Lcom/kakaogame/core/CoreManager$Companion;->getInstance()Lcom/kakaogame/core/CoreManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/kakaogame/core/CoreManager;->tryKakaoReConnect()Lcom/kakaogame/KGResult;

    .line 1249
    :cond_0
    invoke-static {p1}, Lcom/kakaogame/kakao/KakaoGameAPI;->requestGameImageUpload(Ljava/io/File;)Lcom/kakaogame/KGResult;

    move-result-object p1

    .line 1259
    invoke-virtual {p1}, Lcom/kakaogame/KGResult;->isNotSuccess()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1269
    sget-object v1, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    check-cast p1, Ljava/util/Map;

    invoke-virtual {v1, p1}, Lcom/kakaogame/KGResult$Companion;->getResult(Ljava/util/Map;)Lcom/kakaogame/KGResult;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1349
    invoke-virtual {v0}, Lcom/kakaogame/util/Stopwatch;->stop()V

    .line 1359
    invoke-virtual {v0}, Lcom/kakaogame/util/Stopwatch;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/kakaogame/util/Stopwatch;->getDurationMs()J

    move-result-wide v2

    invoke-static {v1, p1, v2, v3}, Lcom/kakaogame/core/KGResultUtil;->writeClientApiCall(Ljava/lang/String;Lcom/kakaogame/KGResult;J)V

    return-object p1

    .line 1289
    :cond_1
    :try_start_1
    invoke-virtual {p1}, Lcom/kakaogame/KGResult;->getContent()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 1299
    sget-object v1, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    invoke-virtual {v1, p1}, Lcom/kakaogame/KGResult$Companion;->getSuccessResult(Ljava/lang/Object;)Lcom/kakaogame/KGResult;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1349
    invoke-virtual {v0}, Lcom/kakaogame/util/Stopwatch;->stop()V

    .line 1359
    invoke-virtual {v0}, Lcom/kakaogame/util/Stopwatch;->getName()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    .line 1319
    :try_start_2
    sget-object v1, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    const-string v2, "KGKakaoTalk"

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v4, p1

    check-cast v4, Ljava/lang/Throwable;

    invoke-virtual {v1, v2, v3, v4}, Lcom/kakaogame/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1329
    sget-object v1, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    const/16 v2, 0xfa1

    invoke-virtual {v1, v2, p1}, Lcom/kakaogame/KGResult$Companion;->getResult(ILjava/lang/String;)Lcom/kakaogame/KGResult;

    move-result-object p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1349
    invoke-virtual {v0}, Lcom/kakaogame/util/Stopwatch;->stop()V

    .line 1359
    invoke-virtual {v0}, Lcom/kakaogame/util/Stopwatch;->getName()Ljava/lang/String;

    move-result-object v1

    move-object v2, p1

    check-cast v2, Lcom/kakaogame/KGResult;

    :goto_0
    invoke-virtual {v0}, Lcom/kakaogame/util/Stopwatch;->getDurationMs()J

    move-result-wide v2

    invoke-static {v1, p1, v2, v3}, Lcom/kakaogame/core/KGResultUtil;->writeClientApiCall(Ljava/lang/String;Lcom/kakaogame/KGResult;J)V

    return-object p1

    .line 1349
    :goto_1
    invoke-virtual {v0}, Lcom/kakaogame/util/Stopwatch;->stop()V

    .line 1359
    invoke-virtual {v0}, Lcom/kakaogame/util/Stopwatch;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    move-object v3, v2

    check-cast v3, Lcom/kakaogame/KGResult;

    invoke-virtual {v0}, Lcom/kakaogame/util/Stopwatch;->getDurationMs()J

    move-result-wide v3

    invoke-static {v1, v2, v3, v4}, Lcom/kakaogame/core/KGResultUtil;->writeClientApiCall(Ljava/lang/String;Lcom/kakaogame/KGResult;J)V

    throw p1

    nop

    .array-data 1
    .end array-data
.end method

.method public static final uploadGameImage(Ljava/io/File;Lcom/kakaogame/KGResultCallback;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Lcom/kakaogame/KGResultCallback<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 689
    sget-object v0, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const v2, 0x543fb2b2

    invoke-static {v2}, Lcom/liapp/y;->׳ֳֳ֬د(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    const v2, 0x7d76b075

    invoke-static {v2}, Lcom/liapp/y;->حֲݴܳޯ(I)Ljava/lang/String;

    move-result-object v2

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const v2, 0x5d168a2f

    invoke-static {v2}, Lcom/liapp/y;->ڴݮگ֮ت(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lcom/kakaogame/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_1

    .line 709
    sget-object v0, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    const v1, 0x5d1699af

    invoke-static {v1}, Lcom/liapp/y;->ڴݮگ֮ت(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/kakaogame/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 729
    :cond_1
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    invoke-static {v0}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    new-instance v0, Lcom/kakaogame/KGKakaoTalk$uploadGameImage$1;

    const/4 v4, 0x0

    invoke-direct {v0, p0, p1, v4}, Lcom/kakaogame/KGKakaoTalk$uploadGameImage$1;-><init>(Ljava/io/File;Lcom/kakaogame/KGResultCallback;Lkotlin/coroutines/Continuation;)V

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


# virtual methods
.method public final initialize()V
    .locals 0

    .line 359
    invoke-direct {p0}, Lcom/kakaogame/KGKakaoTalk;->initInterfaceBroker()V

    return-void

    .array-data 1
    .end array-data
.end method
