.class public final Lcom/kakaogame/log/PlayerLogManager$initialize$1;
.super Ljava/lang/Object;
.source "PlayerLogManager.kt"

# interfaces
.implements Lcom/kakaogame/core/CoreManager$CoreStateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kakaogame/log/PlayerLogManager;->initialize()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0019\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0005*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0008\u0010\u0006\u001a\u00020\u0003H\u0016J\u0010\u0010\u0007\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0010\u0010\u0008\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0010\u0010\t\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016\u00a8\u0006\n"
    }
    d2 = {
        "com/kakaogame/log/PlayerLogManager$initialize$1",
        "Lcom/kakaogame/core/CoreManager$CoreStateListener;",
        "onUnregister",
        "",
        "playerId",
        "",
        "onPause",
        "onLogout",
        "onLogin",
        "onConnect",
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


# direct methods
.method public static synthetic $r8$lambda$9Af-G0iZXBqXQi1YENQIQ6XmU0Y(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0}, Lcom/kakaogame/log/PlayerLogManager$initialize$1;->onLogin$lambda$4$lambda$3(Ljava/lang/String;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method constructor <init>()V
    .locals 0

    .line 469
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void

    .array-data 1
    .end array-data
.end method

.method private static final onLogin$lambda$4$lambda$3(Ljava/lang/String;)V
    .locals 3

    .line 1039
    sget-object v0, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    const v1, -0x224f7994    # -1.5899966E18f

    invoke-static {v1}, Lcom/liapp/y;->״دش۲ݮ(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x5d1da65f    # 7.09992E17f

    invoke-static {v2}, Lcom/liapp/y;->ڴݮگ֮ت(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/kakaogame/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1049
    sget-object v0, Lcom/kakaogame/log/PlayerLogManager;->INSTANCE:Lcom/kakaogame/log/PlayerLogManager;

    invoke-static {v0, p0}, Lcom/kakaogame/log/PlayerLogManager;->access$writePlayerGameData(Lcom/kakaogame/log/PlayerLogManager;Ljava/lang/String;)V

    .line 1059
    sget-object v0, Lcom/kakaogame/log/PlayerLogManager;->INSTANCE:Lcom/kakaogame/log/PlayerLogManager;

    invoke-static {v0, p0}, Lcom/kakaogame/log/PlayerLogManager;->access$writeSummaryLog(Lcom/kakaogame/log/PlayerLogManager;Ljava/lang/String;)V

    return-void

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public onConnect(Ljava/lang/String;)V
    .locals 1

    const v0, -0x224509cc

    invoke-static {v0}, Lcom/liapp/y;->״دش۲ݮ(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public onLogin(Ljava/lang/String;)V
    .locals 9

    const v0, 0x5d13df07

    invoke-static {v0}, Lcom/liapp/y;->ڴݮگ֮ت(I)Ljava/lang/String;

    move-result-object v0

    const v1, -0x224509cc

    invoke-static {v1}, Lcom/liapp/y;->״دش۲ݮ(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 789
    sget-boolean v1, Lcom/kakaogame/version/SDKVersion;->isPublishing:Z

    if-nez v1, :cond_0

    return-void

    .line 829
    :cond_0
    invoke-static {}, Lcom/kakaogame/log/PlayerLogManager;->access$getLOCK$p()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 839
    :try_start_0
    sget-object v2, Lcom/kakaogame/core/CoreManager;->Companion:Lcom/kakaogame/core/CoreManager$Companion;

    invoke-virtual {v2}, Lcom/kakaogame/core/CoreManager$Companion;->getInstance()Lcom/kakaogame/core/CoreManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/kakaogame/core/CoreManager;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 849
    invoke-static {}, Lcom/kakaogame/log/PlayerLogManager;->access$getPlayerGameDataLogMap$p()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 859
    sget-object v3, Lcom/kakaogame/log/PlayerLogManager$PrefManager;->INSTANCE:Lcom/kakaogame/log/PlayerLogManager$PrefManager;

    invoke-virtual {v3, v2, p1}, Lcom/kakaogame/log/PlayerLogManager$PrefManager;->loadPlayerGameData(Landroid/content/Context;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 879
    invoke-static {}, Lcom/kakaogame/log/PlayerLogManager;->access$getPlayerGameDataMap$p()Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 889
    invoke-static {}, Lcom/kakaogame/log/PlayerLogManager;->access$getPlayerGameDataLogMap$p()Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 919
    :cond_1
    sget-object v3, Lcom/kakaogame/log/PlayerLogManager;->INSTANCE:Lcom/kakaogame/log/PlayerLogManager;

    invoke-static {v3, p1}, Lcom/kakaogame/log/PlayerLogManager;->access$writePlayerGameData(Lcom/kakaogame/log/PlayerLogManager;Ljava/lang/String;)V

    .line 929
    invoke-static {}, Lcom/kakaogame/log/PlayerLogManager;->access$getLogDataList$p()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 939
    sget-object v3, Lcom/kakaogame/log/PlayerLogManager$PrefManager;->INSTANCE:Lcom/kakaogame/log/PlayerLogManager$PrefManager;

    invoke-virtual {v3, v2, p1}, Lcom/kakaogame/log/PlayerLogManager$PrefManager;->loadSummaryLogs(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 959
    invoke-static {}, Lcom/kakaogame/log/PlayerLogManager;->access$getLogDataList$p()Ljava/util/List;

    move-result-object v3

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v3, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 989
    :cond_2
    sget-object v2, Lcom/kakaogame/log/PlayerLogManager;->INSTANCE:Lcom/kakaogame/log/PlayerLogManager;

    invoke-static {v2, p1}, Lcom/kakaogame/log/PlayerLogManager;->access$writeSummaryLog(Lcom/kakaogame/log/PlayerLogManager;Ljava/lang/String;)V

    .line 999
    invoke-static {}, Lcom/kakaogame/log/PlayerLogManager;->access$getTimer$p()Lcom/kakaogame/core/TimerManager;

    move-result-object v2

    if-nez v2, :cond_3

    .line 1009
    sget-object v2, Lcom/kakaogame/infodesk/InfodeskHelper;->INSTANCE:Lcom/kakaogame/infodesk/InfodeskHelper;

    invoke-virtual {v2}, Lcom/kakaogame/infodesk/InfodeskHelper;->getLogInterval()J

    move-result-wide v7

    .line 1019
    sget-object v2, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    const-string v3, "PlayerLogManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Lcom/kakaogame/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1029
    new-instance v4, Lcom/kakaogame/log/PlayerLogManager$initialize$1$$ExternalSyntheticLambda0;

    invoke-direct {v4, p1}, Lcom/kakaogame/log/PlayerLogManager$initialize$1$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;)V

    .line 1079
    sget-object p1, Lcom/kakaogame/log/PlayerLogManager;->INSTANCE:Lcom/kakaogame/log/PlayerLogManager;

    new-instance p1, Lcom/kakaogame/core/TimerManager;

    move-object v3, p1

    move-wide v5, v7

    invoke-direct/range {v3 .. v8}, Lcom/kakaogame/core/TimerManager;-><init>(Ljava/lang/Runnable;JJ)V

    invoke-static {p1}, Lcom/kakaogame/log/PlayerLogManager;->access$setTimer$p(Lcom/kakaogame/core/TimerManager;)V

    .line 1089
    invoke-static {}, Lcom/kakaogame/log/PlayerLogManager;->access$getTimer$p()Lcom/kakaogame/core/TimerManager;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/kakaogame/core/TimerManager;->startTimer()V

    .line 1109
    :cond_3
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 829
    monitor-exit v1

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v1

    throw p1

    .array-data 1
    .end array-data
.end method

.method public onLogout(Ljava/lang/String;)V
    .locals 2

    const v0, -0x224509cc

    invoke-static {v0}, Lcom/liapp/y;->״دش۲ݮ(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 669
    invoke-static {}, Lcom/kakaogame/log/PlayerLogManager;->access$getLOCK$p()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 679
    :try_start_0
    invoke-static {}, Lcom/kakaogame/log/PlayerLogManager;->access$getTimer$p()Lcom/kakaogame/core/TimerManager;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 689
    invoke-static {}, Lcom/kakaogame/log/PlayerLogManager;->access$getTimer$p()Lcom/kakaogame/core/TimerManager;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1}, Lcom/kakaogame/core/TimerManager;->stopTimer()V

    .line 699
    sget-object v1, Lcom/kakaogame/log/PlayerLogManager;->INSTANCE:Lcom/kakaogame/log/PlayerLogManager;

    const/4 v1, 0x0

    invoke-static {v1}, Lcom/kakaogame/log/PlayerLogManager;->access$setTimer$p(Lcom/kakaogame/core/TimerManager;)V

    .line 719
    :cond_0
    sget-object v1, Lcom/kakaogame/log/PlayerLogManager;->INSTANCE:Lcom/kakaogame/log/PlayerLogManager;

    invoke-static {v1, p1}, Lcom/kakaogame/log/PlayerLogManager;->access$writePlayerGameData(Lcom/kakaogame/log/PlayerLogManager;Ljava/lang/String;)V

    .line 729
    sget-object v1, Lcom/kakaogame/log/PlayerLogManager;->INSTANCE:Lcom/kakaogame/log/PlayerLogManager;

    invoke-static {v1, p1}, Lcom/kakaogame/log/PlayerLogManager;->access$writeSummaryLog(Lcom/kakaogame/log/PlayerLogManager;Ljava/lang/String;)V

    .line 739
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 669
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1

    .array-data 1
    .end array-data
.end method

.method public onPause()V
    .locals 2

    .line 579
    invoke-static {}, Lcom/kakaogame/log/PlayerLogManager;->access$getLOCK$p()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 589
    :try_start_0
    invoke-static {}, Lcom/kakaogame/log/PlayerLogManager;->access$getTimer$p()Lcom/kakaogame/core/TimerManager;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 599
    invoke-static {}, Lcom/kakaogame/log/PlayerLogManager;->access$getTimer$p()Lcom/kakaogame/core/TimerManager;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1}, Lcom/kakaogame/core/TimerManager;->stopTimer()V

    .line 609
    sget-object v1, Lcom/kakaogame/log/PlayerLogManager;->INSTANCE:Lcom/kakaogame/log/PlayerLogManager;

    const/4 v1, 0x0

    invoke-static {v1}, Lcom/kakaogame/log/PlayerLogManager;->access$setTimer$p(Lcom/kakaogame/core/TimerManager;)V

    .line 629
    :cond_0
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 579
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1

    .array-data 1
    .end array-data
.end method

.method public onUnregister(Ljava/lang/String;)V
    .locals 1

    const v0, -0x224509cc

    invoke-static {v0}, Lcom/liapp/y;->״دش۲ݮ(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 489
    invoke-static {}, Lcom/kakaogame/log/PlayerLogManager;->access$getLOCK$p()Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 499
    :try_start_0
    invoke-static {}, Lcom/kakaogame/log/PlayerLogManager;->access$getTimer$p()Lcom/kakaogame/core/TimerManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 509
    invoke-static {}, Lcom/kakaogame/log/PlayerLogManager;->access$getTimer$p()Lcom/kakaogame/core/TimerManager;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/kakaogame/core/TimerManager;->stopTimer()V

    .line 519
    sget-object v0, Lcom/kakaogame/log/PlayerLogManager;->INSTANCE:Lcom/kakaogame/log/PlayerLogManager;

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/kakaogame/log/PlayerLogManager;->access$setTimer$p(Lcom/kakaogame/core/TimerManager;)V

    .line 539
    :cond_0
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 489
    monitor-exit p1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p1

    throw v0

    .array-data 1
    .end array-data
.end method
