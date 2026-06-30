.class public final Lcom/kakaogame/server/ServerService;
.super Ljava/lang/Object;
.source "ServerService.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000B\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0004\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0010\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000eH\u0007J\u0008\u0010\u000f\u001a\u00020\u000cH\u0007J\u0008\u0010\u0010\u001a\u00020\u000cH\u0007J\u0008\u0010\u0011\u001a\u00020\u000cH\u0007J(\u0010\u0012\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00140\u00132\u0006\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u00052\u0006\u0010\u0018\u001a\u00020\u0019H\u0007J\u001a\u0010\u001a\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u00162\u0008\u0008\u0002\u0010\u0018\u001a\u00020\u0019H\u0007J\u000e\u0010\u001b\u001a\u00020\u000c2\u0006\u0010\u0015\u001a\u00020\u0016J\u0008\u0010\u001c\u001a\u00020\u000cH\u0007R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082T\u00a2\u0006\u0002\n\u0000R&\u0010\u0008\u001a\u00020\u00072\u0006\u0010\u0006\u001a\u00020\u00078\u0006@BX\u0087\u000e\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008\t\u0010\u0003\u001a\u0004\u0008\u0008\u0010\n\u00a8\u0006\u001d"
    }
    d2 = {
        "Lcom/kakaogame/server/ServerService;",
        "",
        "<init>",
        "()V",
        "TAG",
        "",
        "value",
        "",
        "isUseSession",
        "isUseSession$annotations",
        "()Z",
        "initialize",
        "",
        "configuration",
        "Lcom/kakaogame/config/Configuration;",
        "useHttpConnection",
        "useSessionConnection",
        "disconnect",
        "requestConnect",
        "Lcom/kakaogame/KGResult;",
        "Lcom/kakaogame/server/ServerResult;",
        "request",
        "Lcom/kakaogame/server/ServerRequest;",
        "type",
        "traceJobId",
        "",
        "requestServer",
        "requestServerWithoutResponse",
        "setSessionUrl",
        "gamesdk_release"
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
.field public static final INSTANCE:Lcom/kakaogame/server/ServerService;

.field private static final TAG:Ljava/lang/String; = "ServerService"

.field private static isUseSession:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/kakaogame/server/ServerService;

    invoke-direct {v0}, Lcom/kakaogame/server/ServerService;-><init>()V

    sput-object v0, Lcom/kakaogame/server/ServerService;->INSTANCE:Lcom/kakaogame/server/ServerService;

    const/4 v0, 0x1

    .line 259
    sput-boolean v0, Lcom/kakaogame/server/ServerService;->isUseSession:Z

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .line 229
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void

    .array-data 1
    .end array-data
.end method

.method public static final disconnect()V
    .locals 4
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 599
    sget-object v0, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    const v1, 0x5d124857

    invoke-static {v1}, Lcom/liapp/y;->ڴݮگ֮ت(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x5d1f9417

    invoke-static {v2}, Lcom/liapp/y;->ڴݮگ֮ت(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lcom/kakaogame/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 619
    :try_start_0
    sget-boolean v0, Lcom/kakaogame/server/ServerService;->isUseSession:Z

    if-eqz v0, :cond_0

    .line 629
    invoke-static {}, Lcom/kakaogame/server/session/SessionService;->disconnect()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 679
    sget-object v1, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    check-cast v0, Ljava/lang/Throwable;

    invoke-virtual {v1, v2, v3, v0}, Lcom/kakaogame/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void

    .array-data 1
    .end array-data
.end method

.method public static final initialize(Lcom/kakaogame/config/Configuration;)V
    .locals 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const v0, 0x2256234e

    invoke-static {v0}, Lcom/liapp/y;->ֲֳگܱޭ(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const v0, -0x4516d29f

    invoke-static {v0}, Lcom/liapp/y;->ڳݬ٬ۮݪ(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x225ab75e

    invoke-static {v1}, Lcom/liapp/y;->ֲֳگܱޭ(I)Ljava/lang/String;

    move-result-object v1

    .line 319
    invoke-static {v0, v1}, Ljava/security/Security;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    const v0, 0x225ab77e

    invoke-static {v0}, Lcom/liapp/y;->ֲֳگܱޭ(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x543c028a

    invoke-static {v1}, Lcom/liapp/y;->׳ֳֳ֬د(I)Ljava/lang/String;

    move-result-object v1

    .line 329
    invoke-static {v0, v1}, Ljava/security/Security;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 339
    invoke-static {p0}, Lcom/kakaogame/server/session/SessionService;->initialize(Lcom/kakaogame/config/Configuration;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method public static final isUseSession()Z
    .locals 1

    .line 249
    sget-boolean v0, Lcom/kakaogame/server/ServerService;->isUseSession:Z

    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public static synthetic isUseSession$annotations()V
    .locals 0
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public static final requestConnect(Lcom/kakaogame/server/ServerRequest;Ljava/lang/String;I)Lcom/kakaogame/KGResult;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/kakaogame/server/ServerRequest;",
            "Ljava/lang/String;",
            "I)",
            "Lcom/kakaogame/KGResult<",
            "Lcom/kakaogame/server/ServerResult;",
            ">;"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const v0, 0x6d03a218

    invoke-static {v0}, Lcom/liapp/y;->ٱڳܴڭܩ(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x3365db6b

    invoke-static {v1}, Lcom/liapp/y;->ׯ״ٲ֬ب(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const v1, 0x6d0b0e48

    invoke-static {v1}, Lcom/liapp/y;->ٱڳܴڭܩ(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 739
    sget-object v1, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    const v3, 0x336d1c5b

    invoke-static {v3}, Lcom/liapp/y;->ׯ״ٲ֬ب(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v3, Lcom/kakaogame/server/ServerService;->isUseSession:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const v3, 0x5d1f9417

    invoke-static {v3}, Lcom/liapp/y;->ڴݮگ֮ت(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3, v2}, Lcom/kakaogame/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 759
    :try_start_0
    invoke-static {}, Lcom/kakaogame/KGSystem;->isNetworkConnected()Z

    move-result v1

    if-nez v1, :cond_0

    .line 769
    sget-object p0, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    const-string p1, "[requestConnect] network is not connected"

    invoke-virtual {p0, v3, p1}, Lcom/kakaogame/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 779
    sget-object p0, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    const/16 p1, 0x3e9

    invoke-virtual {p0, p1}, Lcom/kakaogame/KGResult$Companion;->getResult(I)Lcom/kakaogame/KGResult;

    move-result-object p0

    return-object p0

    .line 809
    :cond_0
    sget-boolean v1, Lcom/kakaogame/server/ServerService;->isUseSession:Z

    if-eqz v1, :cond_1

    .line 819
    invoke-static {p0, p1, p2}, Lcom/kakaogame/server/session/SessionService;->requestConnect(Lcom/kakaogame/server/ServerRequest;Ljava/lang/String;I)Lcom/kakaogame/KGResult;

    move-result-object p0

    goto :goto_0

    .line 839
    :cond_1
    invoke-static {p0, p2}, Lcom/kakaogame/server/ServerService;->requestServer(Lcom/kakaogame/server/ServerRequest;I)Lcom/kakaogame/server/ServerResult;

    move-result-object p0

    .line 849
    sget-object p1, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v3, p2}, Lcom/kakaogame/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 859
    sget-object p1, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    move-object p2, p0

    check-cast p2, Ljava/util/Map;

    invoke-virtual {p1, p2}, Lcom/kakaogame/KGResult$Companion;->getResult(Ljava/util/Map;)Lcom/kakaogame/KGResult;

    move-result-object p1

    .line 869
    move-object p2, p1

    check-cast p2, Ljava/util/Map;

    const-string v0, "content"

    invoke-interface {p2, v0, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p0

    .line 909
    sget-object p1, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p2

    check-cast p0, Ljava/lang/Throwable;

    invoke-virtual {p1, v3, p2, p0}, Lcom/kakaogame/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 919
    sget-object p0, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    const/16 p1, 0xfa1

    invoke-virtual {p0, p1}, Lcom/kakaogame/KGResult$Companion;->getResult(I)Lcom/kakaogame/KGResult;

    move-result-object p0

    :goto_0
    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static final requestServer(Lcom/kakaogame/server/ServerRequest;I)Lcom/kakaogame/server/ServerResult;
    .locals 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const v0, 0x3365db6b

    invoke-static {v0}, Lcom/liapp/y;->ׯ״ٲ֬ب(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 979
    sget-object v0, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const v2, 0x225ab0ce

    invoke-static {v2}, Lcom/liapp/y;->ֲֳگܱޭ(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v2, Lcom/kakaogame/server/ServerService;->isUseSession:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const v2, 0x5d1f9417

    invoke-static {v2}, Lcom/liapp/y;->ڴݮگ֮ت(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lcom/kakaogame/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 999
    :try_start_0
    invoke-static {}, Lcom/kakaogame/KGSystem;->isNetworkConnected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1009
    sget-object p1, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    const-string v0, "[requestServer] network is not connected"

    invoke-virtual {p1, v2, v0}, Lcom/kakaogame/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1019
    sget-object p1, Lcom/kakaogame/server/ServerResult;->Companion:Lcom/kakaogame/server/ServerResult$Companion;

    sget-object v0, Lcom/kakaogame/server/KeyBaseResult;->Companion:Lcom/kakaogame/server/KeyBaseResult$Companion;

    const/16 v1, 0x3e9

    invoke-virtual {v0, v1}, Lcom/kakaogame/server/KeyBaseResult$Companion;->getResult(I)Lcom/kakaogame/server/KeyBaseResult;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/kakaogame/server/ServerResult$Companion;->getServerErrorResult(Lcom/kakaogame/server/KeyBaseResult;)Lcom/kakaogame/server/ServerResult;

    move-result-object p0

    return-object p0

    .line 1049
    :cond_0
    sget-boolean v0, Lcom/kakaogame/server/ServerService;->isUseSession:Z

    if-eqz v0, :cond_1

    .line 1059
    invoke-static {p0, p1}, Lcom/kakaogame/server/session/SessionService;->requestSession(Lcom/kakaogame/server/ServerRequest;I)Lcom/kakaogame/server/ServerResult;

    move-result-object p0

    goto :goto_0

    .line 1079
    :cond_1
    invoke-static {p0, p1}, Lcom/kakaogame/server/openapi/OpenApiService;->requestServerApi(Lcom/kakaogame/server/ServerRequest;I)Lcom/kakaogame/server/ServerResult;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1109
    sget-object v0, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {v0, v2, v1, p1}, Lcom/kakaogame/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1119
    sget-object p1, Lcom/kakaogame/server/ServerResult;->Companion:Lcom/kakaogame/server/ServerResult$Companion;

    sget-object v0, Lcom/kakaogame/server/KeyBaseResult;->Companion:Lcom/kakaogame/server/KeyBaseResult$Companion;

    const/16 v1, 0xfa1

    invoke-virtual {v0, v1}, Lcom/kakaogame/server/KeyBaseResult$Companion;->getResult(I)Lcom/kakaogame/server/KeyBaseResult;

    move-result-object v0

    invoke-virtual {p1, v0, p0}, Lcom/kakaogame/server/ServerResult$Companion;->getServerErrorResult(Lcom/kakaogame/server/KeyBaseResult;Lcom/kakaogame/server/ServerRequest;)Lcom/kakaogame/server/ServerResult;

    move-result-object p0

    :goto_0
    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static synthetic requestServer$default(Lcom/kakaogame/server/ServerRequest;IILjava/lang/Object;)Lcom/kakaogame/server/ServerResult;
    .locals 0

    and-int/lit8 p2, p2, 0x2

    if-eqz p2, :cond_0

    const/4 p1, -0x1

    .line 959
    :cond_0
    invoke-static {p0, p1}, Lcom/kakaogame/server/ServerService;->requestServer(Lcom/kakaogame/server/ServerRequest;I)Lcom/kakaogame/server/ServerResult;

    move-result-object p0

    return-object p0

    .array-data 1
    .end array-data
.end method

.method public static final setSessionUrl()V
    .locals 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 1359
    sget-object v0, Lcom/kakaogame/core/CoreManager;->Companion:Lcom/kakaogame/core/CoreManager$Companion;

    invoke-virtual {v0}, Lcom/kakaogame/core/CoreManager$Companion;->getInstance()Lcom/kakaogame/core/CoreManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kakaogame/core/CoreManager;->getConfiguration()Lcom/kakaogame/config/Configuration;

    move-result-object v0

    if-eqz v0, :cond_0

    const v1, 0x3361126b

    invoke-static {v1}, Lcom/liapp/y;->ׯ״ٲ֬ب(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kakaogame/config/Configuration;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_1

    const v1, 0x543a53b2

    invoke-static {v1}, Lcom/liapp/y;->׳ֳֳ֬د(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    .line 1379
    invoke-static {v0, v1, v2}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_1

    const v1, 0x7d73a9e5

    invoke-static {v1}, Lcom/liapp/y;->حֲݴܳޯ(I)Ljava/lang/String;

    move-result-object v1

    .line 1389
    invoke-static {v0, v1, v2}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1409
    sget-object v0, Lcom/kakaogame/infodesk/InfodeskHelper;->INSTANCE:Lcom/kakaogame/infodesk/InfodeskHelper;

    invoke-virtual {v0}, Lcom/kakaogame/infodesk/InfodeskHelper;->getSessionUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/kakaogame/server/session/SessionService;->setSessionUrl(Ljava/lang/String;)V

    .line 1419
    sget-object v0, Lcom/kakaogame/infodesk/InfodeskHelper;->INSTANCE:Lcom/kakaogame/infodesk/InfodeskHelper;

    invoke-virtual {v0}, Lcom/kakaogame/infodesk/InfodeskHelper;->getSesseionTimeout()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/kakaogame/server/session/SessionService;->setTimeout(J)V

    :cond_1
    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public static final useHttpConnection()V
    .locals 4
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 389
    sget-object v0, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    const v1, 0x336d1d73

    invoke-static {v1}, Lcom/liapp/y;->ׯ״ٲ֬ب(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x5d1f9417

    invoke-static {v2}, Lcom/liapp/y;->ڴݮگ֮ت(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lcom/kakaogame/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 409
    :try_start_0
    sput-boolean v0, Lcom/kakaogame/server/ServerService;->isUseSession:Z

    .line 419
    invoke-static {}, Lcom/kakaogame/server/ServerService;->disconnect()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 439
    sget-object v1, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    check-cast v0, Ljava/lang/Throwable;

    invoke-virtual {v1, v2, v3, v0}, Lcom/kakaogame/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public static final useSessionConnection()V
    .locals 4
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 499
    sget-object v0, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    const v1, 0x7d7fba85

    invoke-static {v1}, Lcom/liapp/y;->حֲݴܳޯ(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x5d1f9417

    invoke-static {v2}, Lcom/liapp/y;->ڴݮگ֮ت(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lcom/kakaogame/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 519
    :try_start_0
    sput-boolean v0, Lcom/kakaogame/server/ServerService;->isUseSession:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 539
    sget-object v1, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    check-cast v0, Ljava/lang/Throwable;

    invoke-virtual {v1, v2, v3, v0}, Lcom/kakaogame/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public final requestServerWithoutResponse(Lcom/kakaogame/server/ServerRequest;)V
    .locals 3

    const v0, 0x3365db6b

    invoke-static {v0}, Lcom/liapp/y;->ׯ״ٲ֬ب(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1169
    sget-object v0, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const v2, 0x225ab33e

    invoke-static {v2}, Lcom/liapp/y;->ֲֳگܱޭ(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v2, Lcom/kakaogame/server/ServerService;->isUseSession:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const v2, 0x5d1f9417

    invoke-static {v2}, Lcom/liapp/y;->ڴݮگ֮ت(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lcom/kakaogame/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1189
    :try_start_0
    invoke-static {}, Lcom/kakaogame/KGSystem;->isNetworkConnected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1199
    sget-object p1, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    const-string v0, "[requestServerWithoutResponse] network is not connected"

    invoke-virtual {p1, v2, v0}, Lcom/kakaogame/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 1239
    :cond_0
    sget-boolean v0, Lcom/kakaogame/server/ServerService;->isUseSession:Z

    if-eqz v0, :cond_1

    .line 1249
    invoke-static {p1}, Lcom/kakaogame/server/session/SessionService;->requestSessionWithoutResponse(Lcom/kakaogame/server/ServerRequest;)V

    goto :goto_0

    .line 1269
    :cond_1
    invoke-static {p1}, Lcom/kakaogame/server/openapi/OpenApiService;->requestServerApiWithoutResponse(Lcom/kakaogame/server/ServerRequest;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1299
    sget-object v0, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {v0, v2, v1, p1}, Lcom/kakaogame/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void

    nop

    .array-data 1
    .end array-data
.end method
