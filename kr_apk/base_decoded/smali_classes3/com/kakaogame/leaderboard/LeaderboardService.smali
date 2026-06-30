.class public final Lcom/kakaogame/leaderboard/LeaderboardService;
.super Ljava/lang/Object;
.source "LeaderboardService.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kakaogame/leaderboard/LeaderboardService$Settings;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000J\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010 \n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0010$\n\u0002\u0008\u0003\u0008\u00c6\u0002\u0018\u00002\u00020\u0001:\u0001\"B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0008\u0010\u000c\u001a\u00020\rH\u0007J,\u0010\u000e\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00100\u000f2\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u00052\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0013\u001a\u00020\u0007H\u0007J4\u0010\u0014\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00100\u000f2\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0013\u001a\u00020\u00072\u0010\u0010\u0015\u001a\u000c\u0012\u0006\u0012\u0004\u0018\u00010\u0005\u0018\u00010\u0016H\u0007J2\u0010\u0017\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00100\u000f2\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0013\u001a\u00020\u00072\u0006\u0010\u0018\u001a\u00020\u00072\u0006\u0010\u0019\u001a\u00020\u0007H\u0007J,\u0010\u001a\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u001b0\u000f2\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u00052\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u001c\u001a\u00020\u001dH\u0007J4\u0010\u001e\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u001b0\u000f2\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u00052\u0018\u0010\u001f\u001a\u0014\u0012\u0006\u0012\u0004\u0018\u00010\u0005\u0012\u0006\u0012\u0004\u0018\u00010\u0001\u0018\u00010 H\u0007J,\u0010!\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u001b0\u000f2\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u00052\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u001c\u001a\u00020\u001dH\u0007R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\u0007X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0005X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u0005X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u0005X\u0082T\u00a2\u0006\u0002\n\u0000\u00a8\u0006#"
    }
    d2 = {
        "Lcom/kakaogame/leaderboard/LeaderboardService;",
        "",
        "<init>",
        "()V",
        "TAG",
        "",
        "CURRENT_SEASON_SEQUENCE",
        "",
        "LAST_SEASON_SEQUENCE",
        "KEY_LEADERBOARD_ID",
        "KEY_SEASON_SEQUENCE",
        "KEY_SUBKEY",
        "initialize",
        "",
        "getRank",
        "Lcom/kakaogame/KGResult;",
        "Lcom/kakaogame/util/json/JSONObject;",
        "leaderboardId",
        "subkey",
        "sequenceNo",
        "getScores",
        "playerIds",
        "",
        "getRankedScores",
        "fromRank",
        "toRank",
        "reportScore",
        "Ljava/lang/Void;",
        "score",
        "",
        "putProperty",
        "customProperty",
        "",
        "accumulateScore",
        "Settings",
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
.field public static final CURRENT_SEASON_SEQUENCE:I = 0x0

.field public static final INSTANCE:Lcom/kakaogame/leaderboard/LeaderboardService;

.field private static final KEY_LEADERBOARD_ID:Ljava/lang/String; = "leaderboardId"

.field private static final KEY_SEASON_SEQUENCE:Ljava/lang/String; = "seasonSeq"

.field private static final KEY_SUBKEY:Ljava/lang/String; = "subkey"

.field public static final LAST_SEASON_SEQUENCE:I = -0x1

.field private static final TAG:Ljava/lang/String; = "LearderboardService"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/kakaogame/leaderboard/LeaderboardService;

    invoke-direct {v0}, Lcom/kakaogame/leaderboard/LeaderboardService;-><init>()V

    sput-object v0, Lcom/kakaogame/leaderboard/LeaderboardService;->INSTANCE:Lcom/kakaogame/leaderboard/LeaderboardService;

    return-void

    .array-data 1
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .line 139
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void

    .array-data 1
    .end array-data
.end method

.method public static final accumulateScore(Ljava/lang/String;Ljava/lang/String;J)Lcom/kakaogame/KGResult;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "J)",
            "Lcom/kakaogame/KGResult<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 1269
    :try_start_0
    new-instance v0, Lcom/kakaogame/server/ServerRequest;

    sget-object v1, Lcom/kakaogame/leaderboard/LeaderboardService$Settings;->INSTANCE:Lcom/kakaogame/leaderboard/LeaderboardService$Settings;

    invoke-virtual {v1}, Lcom/kakaogame/leaderboard/LeaderboardService$Settings;->getAccumulateScoreUri()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/kakaogame/server/ServerRequest;-><init>(Ljava/lang/String;)V

    const-string v1, "leaderboardId"

    .line 1279
    invoke-virtual {v0, v1, p0}, Lcom/kakaogame/server/ServerRequest;->putBody(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p0, "delta"

    .line 1289
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {v0, p0, p2}, Lcom/kakaogame/server/ServerRequest;->putBody(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1299
    move-object p0, p1

    check-cast p0, Ljava/lang/CharSequence;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_0

    const-string p0, "subkey"

    .line 1309
    invoke-virtual {v0, p0, p1}, Lcom/kakaogame/server/ServerRequest;->putBody(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    const/4 p0, 0x2

    const/4 p1, 0x0

    const/4 p2, 0x0

    .line 1329
    invoke-static {v0, p2, p0, p1}, Lcom/kakaogame/server/ServerService;->requestServer$default(Lcom/kakaogame/server/ServerRequest;IILjava/lang/Object;)Lcom/kakaogame/server/ServerResult;

    move-result-object p0

    .line 1339
    invoke-virtual {p0}, Lcom/kakaogame/server/ServerResult;->isSuccess()Z

    move-result p1

    if-nez p1, :cond_1

    .line 1349
    sget-object p1, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    check-cast p0, Ljava/util/Map;

    invoke-virtual {p1, p0}, Lcom/kakaogame/KGResult$Companion;->getResult(Ljava/util/Map;)Lcom/kakaogame/KGResult;

    move-result-object p0

    goto :goto_0

    .line 1359
    :cond_1
    sget-object p0, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    invoke-virtual {p0}, Lcom/kakaogame/KGResult$Companion;->getSuccessResult()Lcom/kakaogame/KGResult;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 1379
    sget-object p1, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p2

    move-object p3, p0

    check-cast p3, Ljava/lang/Throwable;

    const v0, -0x224f63cc

    invoke-static {v0}, Lcom/liapp/y;->״دش۲ݮ(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, p2, p3}, Lcom/kakaogame/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1389
    sget-object p1, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    const/16 p2, 0xfa1

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p2, p0}, Lcom/kakaogame/KGResult$Companion;->getResult(ILjava/lang/String;)Lcom/kakaogame/KGResult;

    move-result-object p0

    :goto_0
    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static final getRank(Ljava/lang/String;Ljava/lang/String;I)Lcom/kakaogame/KGResult;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I)",
            "Lcom/kakaogame/KGResult<",
            "Lcom/kakaogame/util/json/JSONObject;",
            ">;"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 289
    :try_start_0
    new-instance v0, Lcom/kakaogame/server/ServerRequest;

    sget-object v1, Lcom/kakaogame/leaderboard/LeaderboardService$Settings;->INSTANCE:Lcom/kakaogame/leaderboard/LeaderboardService$Settings;

    invoke-virtual {v1}, Lcom/kakaogame/leaderboard/LeaderboardService$Settings;->getGetRankUri()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/kakaogame/server/ServerRequest;-><init>(Ljava/lang/String;)V

    const-string v1, "leaderboardId"

    .line 299
    invoke-virtual {v0, v1, p0}, Lcom/kakaogame/server/ServerRequest;->putBody(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p0, "playerId"

    .line 309
    sget-object v1, Lcom/kakaogame/core/CoreManager;->Companion:Lcom/kakaogame/core/CoreManager$Companion;

    invoke-virtual {v1}, Lcom/kakaogame/core/CoreManager$Companion;->getInstance()Lcom/kakaogame/core/CoreManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/kakaogame/core/CoreManager;->getPlayerId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lcom/kakaogame/server/ServerRequest;->putBody(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p0, "seasonSeq"

    .line 319
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v0, p0, p2}, Lcom/kakaogame/server/ServerRequest;->putBody(Ljava/lang/String;Ljava/lang/Object;)V

    .line 329
    move-object p0, p1

    check-cast p0, Ljava/lang/CharSequence;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_0

    const-string p0, "subkey"

    .line 339
    invoke-virtual {v0, p0, p1}, Lcom/kakaogame/server/ServerRequest;->putBody(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    const/4 p0, 0x2

    const/4 p1, 0x0

    const/4 p2, 0x0

    .line 359
    invoke-static {v0, p2, p0, p1}, Lcom/kakaogame/server/ServerService;->requestServer$default(Lcom/kakaogame/server/ServerRequest;IILjava/lang/Object;)Lcom/kakaogame/server/ServerResult;

    move-result-object p0

    .line 369
    invoke-virtual {p0}, Lcom/kakaogame/server/ServerResult;->isSuccess()Z

    move-result p1

    if-nez p1, :cond_1

    .line 379
    sget-object p1, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    check-cast p0, Ljava/util/Map;

    invoke-virtual {p1, p0}, Lcom/kakaogame/KGResult$Companion;->getResult(Ljava/util/Map;)Lcom/kakaogame/KGResult;

    move-result-object p0

    return-object p0

    .line 399
    :cond_1
    invoke-virtual {p0}, Lcom/kakaogame/server/ServerResult;->getContent()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/kakaogame/util/json/JSONObject;

    .line 409
    sget-object p1, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    invoke-virtual {p1, p0}, Lcom/kakaogame/KGResult$Companion;->getSuccessResult(Ljava/lang/Object;)Lcom/kakaogame/KGResult;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 429
    sget-object p1, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p2

    move-object v0, p0

    check-cast v0, Ljava/lang/Throwable;

    const v1, -0x224f63cc

    invoke-static {v1}, Lcom/liapp/y;->״دش۲ݮ(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1, p2, v0}, Lcom/kakaogame/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 439
    sget-object p1, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    const/16 p2, 0xfa1

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p2, p0}, Lcom/kakaogame/KGResult$Companion;->getResult(ILjava/lang/String;)Lcom/kakaogame/KGResult;

    move-result-object p0

    :goto_0
    return-object p0

    .array-data 1
    .end array-data
.end method

.method public static final getRankedScores(Ljava/lang/String;III)Lcom/kakaogame/KGResult;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "III)",
            "Lcom/kakaogame/KGResult<",
            "Lcom/kakaogame/util/json/JSONObject;",
            ">;"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 699
    :try_start_0
    new-instance v0, Lcom/kakaogame/server/ServerRequest;

    sget-object v1, Lcom/kakaogame/leaderboard/LeaderboardService$Settings;->INSTANCE:Lcom/kakaogame/leaderboard/LeaderboardService$Settings;

    invoke-virtual {v1}, Lcom/kakaogame/leaderboard/LeaderboardService$Settings;->getGetRankedScoresUri()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/kakaogame/server/ServerRequest;-><init>(Ljava/lang/String;)V

    const-string v1, "leaderboardId"

    .line 709
    invoke-virtual {v0, v1, p0}, Lcom/kakaogame/server/ServerRequest;->putBody(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p0, "seasonSeq"

    .line 719
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Lcom/kakaogame/server/ServerRequest;->putBody(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p0, "fromRank"

    .line 729
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Lcom/kakaogame/server/ServerRequest;->putBody(Ljava/lang/String;Ljava/lang/Object;)V

    const-string/jumbo p0, "toRank"

    .line 739
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Lcom/kakaogame/server/ServerRequest;->putBody(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 p0, 0x2

    const/4 p1, 0x0

    const/4 p2, 0x0

    .line 749
    invoke-static {v0, p2, p0, p1}, Lcom/kakaogame/server/ServerService;->requestServer$default(Lcom/kakaogame/server/ServerRequest;IILjava/lang/Object;)Lcom/kakaogame/server/ServerResult;

    move-result-object p0

    .line 759
    invoke-virtual {p0}, Lcom/kakaogame/server/ServerResult;->isSuccess()Z

    move-result p1

    if-nez p1, :cond_0

    .line 769
    sget-object p1, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    check-cast p0, Ljava/util/Map;

    invoke-virtual {p1, p0}, Lcom/kakaogame/KGResult$Companion;->getResult(Ljava/util/Map;)Lcom/kakaogame/KGResult;

    move-result-object p0

    return-object p0

    .line 789
    :cond_0
    invoke-virtual {p0}, Lcom/kakaogame/server/ServerResult;->getContent()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/kakaogame/util/json/JSONObject;

    .line 799
    sget-object p1, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    invoke-virtual {p1, p0}, Lcom/kakaogame/KGResult$Companion;->getSuccessResult(Ljava/lang/Object;)Lcom/kakaogame/KGResult;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 819
    sget-object p1, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p2

    move-object p3, p0

    check-cast p3, Ljava/lang/Throwable;

    const v0, -0x224f63cc

    invoke-static {v0}, Lcom/liapp/y;->״دش۲ݮ(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, p2, p3}, Lcom/kakaogame/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 829
    sget-object p1, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    const/16 p2, 0xfa1

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p2, p0}, Lcom/kakaogame/KGResult$Companion;->getResult(ILjava/lang/String;)Lcom/kakaogame/KGResult;

    move-result-object p0

    :goto_0
    return-object p0

    .array-data 1
    .end array-data
.end method

.method public static final getScores(Ljava/lang/String;ILjava/util/List;)Lcom/kakaogame/KGResult;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/kakaogame/KGResult<",
            "Lcom/kakaogame/util/json/JSONObject;",
            ">;"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 509
    :try_start_0
    new-instance v0, Lcom/kakaogame/server/ServerRequest;

    sget-object v1, Lcom/kakaogame/leaderboard/LeaderboardService$Settings;->INSTANCE:Lcom/kakaogame/leaderboard/LeaderboardService$Settings;

    invoke-virtual {v1}, Lcom/kakaogame/leaderboard/LeaderboardService$Settings;->getGetScoresUri()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/kakaogame/server/ServerRequest;-><init>(Ljava/lang/String;)V

    const-string v1, "leaderboardId"

    .line 519
    invoke-virtual {v0, v1, p0}, Lcom/kakaogame/server/ServerRequest;->putBody(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p0, "playerIds"

    .line 529
    invoke-virtual {v0, p0, p2}, Lcom/kakaogame/server/ServerRequest;->putBody(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p0, "seasonSeq"

    .line 539
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Lcom/kakaogame/server/ServerRequest;->putBody(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 p0, 0x2

    const/4 p1, 0x0

    const/4 p2, 0x0

    .line 549
    invoke-static {v0, p2, p0, p1}, Lcom/kakaogame/server/ServerService;->requestServer$default(Lcom/kakaogame/server/ServerRequest;IILjava/lang/Object;)Lcom/kakaogame/server/ServerResult;

    move-result-object p0

    .line 559
    invoke-virtual {p0}, Lcom/kakaogame/server/ServerResult;->isSuccess()Z

    move-result p1

    if-nez p1, :cond_0

    .line 569
    sget-object p1, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    check-cast p0, Ljava/util/Map;

    invoke-virtual {p1, p0}, Lcom/kakaogame/KGResult$Companion;->getResult(Ljava/util/Map;)Lcom/kakaogame/KGResult;

    move-result-object p0

    return-object p0

    .line 589
    :cond_0
    invoke-virtual {p0}, Lcom/kakaogame/server/ServerResult;->getContent()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/kakaogame/util/json/JSONObject;

    .line 599
    sget-object p1, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    invoke-virtual {p1, p0}, Lcom/kakaogame/KGResult$Companion;->getSuccessResult(Ljava/lang/Object;)Lcom/kakaogame/KGResult;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 619
    sget-object p1, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p2

    move-object v0, p0

    check-cast v0, Ljava/lang/Throwable;

    const v1, -0x224f63cc

    invoke-static {v1}, Lcom/liapp/y;->״دش۲ݮ(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1, p2, v0}, Lcom/kakaogame/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 629
    sget-object p1, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    const/16 p2, 0xfa1

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p2, p0}, Lcom/kakaogame/KGResult$Companion;->getResult(ILjava/lang/String;)Lcom/kakaogame/KGResult;

    move-result-object p0

    :goto_0
    return-object p0

    .array-data 1
    .end array-data
.end method

.method public static final initialize()V
    .locals 0
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public static final putProperty(Ljava/lang/String;Ljava/util/Map;)Lcom/kakaogame/KGResult;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/kakaogame/KGResult<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 1089
    :try_start_0
    new-instance v0, Lcom/kakaogame/server/ServerRequest;

    sget-object v1, Lcom/kakaogame/leaderboard/LeaderboardService$Settings;->INSTANCE:Lcom/kakaogame/leaderboard/LeaderboardService$Settings;

    invoke-virtual {v1}, Lcom/kakaogame/leaderboard/LeaderboardService$Settings;->getPutPropertyUri()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/kakaogame/server/ServerRequest;-><init>(Ljava/lang/String;)V

    const-string v1, "property"

    .line 1099
    invoke-virtual {v0, v1, p1}, Lcom/kakaogame/server/ServerRequest;->putBody(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1109
    move-object p1, p0

    check-cast p1, Ljava/lang/CharSequence;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "subkey"

    .line 1119
    invoke-virtual {v0, p1, p0}, Lcom/kakaogame/server/ServerRequest;->putBody(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    const/4 p0, 0x2

    const/4 p1, 0x0

    const/4 v1, 0x0

    .line 1139
    invoke-static {v0, v1, p0, p1}, Lcom/kakaogame/server/ServerService;->requestServer$default(Lcom/kakaogame/server/ServerRequest;IILjava/lang/Object;)Lcom/kakaogame/server/ServerResult;

    move-result-object p0

    .line 1149
    invoke-virtual {p0}, Lcom/kakaogame/server/ServerResult;->isSuccess()Z

    move-result p1

    if-nez p1, :cond_1

    .line 1159
    sget-object p1, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    check-cast p0, Ljava/util/Map;

    invoke-virtual {p1, p0}, Lcom/kakaogame/KGResult$Companion;->getResult(Ljava/util/Map;)Lcom/kakaogame/KGResult;

    move-result-object p0

    goto :goto_0

    .line 1169
    :cond_1
    sget-object p0, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    invoke-virtual {p0}, Lcom/kakaogame/KGResult$Companion;->getSuccessResult()Lcom/kakaogame/KGResult;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 1189
    sget-object p1, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v1, p0

    check-cast v1, Ljava/lang/Throwable;

    const v2, -0x224f63cc

    invoke-static {v2}, Lcom/liapp/y;->״دش۲ݮ(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2, v0, v1}, Lcom/kakaogame/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1199
    sget-object p1, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    const/16 v0, 0xfa1

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, v0, p0}, Lcom/kakaogame/KGResult$Companion;->getResult(ILjava/lang/String;)Lcom/kakaogame/KGResult;

    move-result-object p0

    :goto_0
    return-object p0

    .array-data 1
    .end array-data
.end method

.method public static final reportScore(Ljava/lang/String;Ljava/lang/String;J)Lcom/kakaogame/KGResult;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "J)",
            "Lcom/kakaogame/KGResult<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 899
    :try_start_0
    new-instance v0, Lcom/kakaogame/server/ServerRequest;

    sget-object v1, Lcom/kakaogame/leaderboard/LeaderboardService$Settings;->INSTANCE:Lcom/kakaogame/leaderboard/LeaderboardService$Settings;

    invoke-virtual {v1}, Lcom/kakaogame/leaderboard/LeaderboardService$Settings;->getReportScoreUri()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/kakaogame/server/ServerRequest;-><init>(Ljava/lang/String;)V

    const-string v1, "leaderboardId"

    .line 909
    invoke-virtual {v0, v1, p0}, Lcom/kakaogame/server/ServerRequest;->putBody(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p0, "score"

    .line 919
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {v0, p0, p2}, Lcom/kakaogame/server/ServerRequest;->putBody(Ljava/lang/String;Ljava/lang/Object;)V

    .line 929
    move-object p0, p1

    check-cast p0, Ljava/lang/CharSequence;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_0

    const-string p0, "subkey"

    .line 939
    invoke-virtual {v0, p0, p1}, Lcom/kakaogame/server/ServerRequest;->putBody(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    const/4 p0, 0x2

    const/4 p1, 0x0

    const/4 p2, 0x0

    .line 959
    invoke-static {v0, p2, p0, p1}, Lcom/kakaogame/server/ServerService;->requestServer$default(Lcom/kakaogame/server/ServerRequest;IILjava/lang/Object;)Lcom/kakaogame/server/ServerResult;

    move-result-object p0

    .line 969
    invoke-virtual {p0}, Lcom/kakaogame/server/ServerResult;->isSuccess()Z

    move-result p1

    if-nez p1, :cond_1

    .line 979
    sget-object p1, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    check-cast p0, Ljava/util/Map;

    invoke-virtual {p1, p0}, Lcom/kakaogame/KGResult$Companion;->getResult(Ljava/util/Map;)Lcom/kakaogame/KGResult;

    move-result-object p0

    goto :goto_0

    .line 989
    :cond_1
    sget-object p0, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    invoke-virtual {p0}, Lcom/kakaogame/KGResult$Companion;->getSuccessResult()Lcom/kakaogame/KGResult;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 1009
    sget-object p1, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p2

    move-object p3, p0

    check-cast p3, Ljava/lang/Throwable;

    const v0, -0x224f63cc

    invoke-static {v0}, Lcom/liapp/y;->״دش۲ݮ(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, p2, p3}, Lcom/kakaogame/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1019
    sget-object p1, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    const/16 p2, 0xfa1

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p2, p0}, Lcom/kakaogame/KGResult$Companion;->getResult(ILjava/lang/String;)Lcom/kakaogame/KGResult;

    move-result-object p0

    :goto_0
    return-object p0

    nop

    .array-data 1
    .end array-data
.end method
