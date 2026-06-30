.class public final Lcom/kakaogame/log/tracer/Job;
.super Ljava/lang/Object;
.source "Job.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nJob.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Job.kt\ncom/kakaogame/log/tracer/Job\n+ 2 Iterators.kt\nkotlin/collections/CollectionsKt__IteratorsKt\n*L\n1#1,86:1\n32#2,2:87\n*S KotlinDebug\n*F\n+ 1 Job.kt\ncom/kakaogame/log/tracer/Job\n*L\n56#1:87,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000V\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\t\n\u0002\u0008\u0007\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0010%\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010$\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0005\n\u0002\u0010 \n\u0000\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u001e\u0010%\u001a\u00020&2\u0016\u0010\'\u001a\u0012\u0012\u0004\u0012\u00020\u0005\u0012\u0006\u0012\u0004\u0018\u00010\u0001\u0018\u00010(J\u000e\u0010)\u001a\u00020*2\u0006\u0010+\u001a\u00020\u0005J8\u0010,\u001a\u0004\u0018\u00010&2\u0006\u0010+\u001a\u00020\u00052\u0006\u0010-\u001a\u00020\u00032\u0006\u0010.\u001a\u00020\u00052\u0016\u0010\'\u001a\u0012\u0012\u0004\u0012\u00020\u0005\u0012\u0006\u0012\u0004\u0018\u00010\u0001\u0018\u00010(J4\u0010/\u001a\u0008\u0012\u0004\u0012\u00020&002\u0006\u0010-\u001a\u00020\u00032\u0006\u0010.\u001a\u00020\u00052\u0016\u0010\'\u001a\u0012\u0012\u0004\u0012\u00020\u0005\u0012\u0006\u0012\u0004\u0018\u00010\u0001\u0018\u00010(R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\tR\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000bR\u001a\u0010\u000c\u001a\u00020\rX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000e\u0010\u000f\"\u0004\u0008\u0010\u0010\u0011R\u0011\u0010\u0012\u001a\u00020\u0013\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0014\u0010\u0015R\u001a\u0010\u0016\u001a\u00020\u0013X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0017\u0010\u0015\"\u0004\u0008\u0018\u0010\u0019R\u001a\u0010\u001a\u001a\u00020\u001bX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001c\u0010\u001d\"\u0004\u0008\u001e\u0010\u001fR\u001d\u0010 \u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\"0!\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008#\u0010$\u00a8\u00061"
    }
    d2 = {
        "Lcom/kakaogame/log/tracer/Job;",
        "",
        "jobId",
        "",
        "name",
        "",
        "<init>",
        "(ILjava/lang/String;)V",
        "getJobId",
        "()I",
        "getName",
        "()Ljava/lang/String;",
        "jobCode",
        "Lcom/kakaogame/log/tracer/TraceJobCode;",
        "getJobCode",
        "()Lcom/kakaogame/log/tracer/TraceJobCode;",
        "setJobCode",
        "(Lcom/kakaogame/log/tracer/TraceJobCode;)V",
        "startTime",
        "",
        "getStartTime",
        "()J",
        "duration",
        "getDuration",
        "setDuration",
        "(J)V",
        "running",
        "",
        "getRunning",
        "()Z",
        "setRunning",
        "(Z)V",
        "actions",
        "",
        "Lcom/kakaogame/log/tracer/Action;",
        "getActions",
        "()Ljava/util/Map;",
        "start",
        "Lcom/kakaogame/log/tracer/Trace;",
        "extras",
        "",
        "addAction",
        "",
        "actionName",
        "finishAction",
        "resultCode",
        "description",
        "finish",
        "",
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


# instance fields
.field private final actions:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/kakaogame/log/tracer/Action;",
            ">;"
        }
    .end annotation
.end field

.field private duration:J

.field private jobCode:Lcom/kakaogame/log/tracer/TraceJobCode;

.field private final jobId:I

.field private final name:Ljava/lang/String;

.field private running:Z

.field private final startTime:J


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 2

    const v0, -0x451eea5f

    invoke-static {v0}, Lcom/liapp/y;->ڳݬ٬ۮݪ(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/kakaogame/log/tracer/Job;->jobId:I

    iput-object p2, p0, Lcom/kakaogame/log/tracer/Job;->name:Ljava/lang/String;

    .line 69
    sget-object p1, Lcom/kakaogame/log/tracer/TraceJobCode;->GAME_CUSTOM:Lcom/kakaogame/log/tracer/TraceJobCode;

    iput-object p1, p0, Lcom/kakaogame/log/tracer/Job;->jobCode:Lcom/kakaogame/log/tracer/TraceJobCode;

    .line 79
    sget-object p1, Lcom/kakaogame/core/CoreManager;->Companion:Lcom/kakaogame/core/CoreManager$Companion;

    invoke-virtual {p1}, Lcom/kakaogame/core/CoreManager$Companion;->getInstance()Lcom/kakaogame/core/CoreManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/kakaogame/core/CoreManager;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/kakaogame/log/tracer/Job;->startTime:J

    const/4 p1, 0x1

    .line 99
    iput-boolean p1, p0, Lcom/kakaogame/log/tracer/Job;->running:Z

    .line 109
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast p1, Ljava/util/Map;

    iput-object p1, p0, Lcom/kakaogame/log/tracer/Job;->actions:Ljava/util/Map;

    .line 139
    sget-object p1, Lcom/kakaogame/log/tracer/TraceJobCode;->Companion:Lcom/kakaogame/log/tracer/TraceJobCode$Companion;

    invoke-virtual {p1, p2}, Lcom/kakaogame/log/tracer/TraceJobCode$Companion;->get(Ljava/lang/String;)Lcom/kakaogame/log/tracer/TraceJobCode;

    move-result-object p1

    iput-object p1, p0, Lcom/kakaogame/log/tracer/Job;->jobCode:Lcom/kakaogame/log/tracer/TraceJobCode;

    return-void

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public final addAction(Ljava/lang/String;)V
    .locals 2

    const v0, 0x5434cc22

    invoke-static {v0}, Lcom/liapp/y;->׳ֳֳ֬د(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 269
    iget-boolean v0, p0, Lcom/kakaogame/log/tracer/Job;->running:Z

    if-eqz v0, :cond_0

    .line 279
    iget-object v0, p0, Lcom/kakaogame/log/tracer/Job;->actions:Ljava/util/Map;

    new-instance v1, Lcom/kakaogame/log/tracer/Action;

    invoke-direct {v1, p1}, Lcom/kakaogame/log/tracer/Action;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public final finish(ILjava/lang/String;Ljava/util/Map;)Ljava/util/List;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/kakaogame/log/tracer/Trace;",
            ">;"
        }
    .end annotation

    move-object v0, p0

    const v1, 0x6d0a3cb8

    invoke-static {v1}, Lcom/liapp/y;->ٱڳܴڭܩ(I)Ljava/lang/String;

    move-result-object v1

    move-object v10, p2

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 539
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    check-cast v1, Ljava/util/List;

    .line 549
    iget-boolean v2, v0, Lcom/kakaogame/log/tracer/Job;->running:Z

    if-eqz v2, :cond_2

    const/4 v2, 0x0

    .line 559
    iput-boolean v2, v0, Lcom/kakaogame/log/tracer/Job;->running:Z

    .line 569
    iget-object v2, v0, Lcom/kakaogame/log/tracer/Job;->actions:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 879
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 589
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/kakaogame/log/tracer/Action;

    invoke-virtual {v4}, Lcom/kakaogame/log/tracer/Action;->isRunning()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 599
    iget-object v4, v0, Lcom/kakaogame/log/tracer/Job;->jobCode:Lcom/kakaogame/log/tracer/TraceJobCode;

    invoke-virtual {v4}, Lcom/kakaogame/log/tracer/TraceJobCode;->getCode()I

    move-result v4

    add-int/lit16 v4, v4, 0x2710

    add-int/lit16 v4, v4, 0x3e7

    .line 609
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/kakaogame/log/tracer/Action;

    const v5, 0x5434cd82

    invoke-static {v5}, Lcom/liapp/y;->׳ֳֳ֬د(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6}, Lcom/kakaogame/log/tracer/Action;->finish(ILjava/lang/String;Ljava/util/Map;)Lcom/kakaogame/log/tracer/Trace;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 659
    iget v4, v0, Lcom/kakaogame/log/tracer/Job;->jobId:I

    iget-object v5, v0, Lcom/kakaogame/log/tracer/Job;->name:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lcom/kakaogame/log/tracer/Trace;->setJobInfo(ILjava/lang/String;)V

    .line 669
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 709
    :cond_1
    sget-object v2, Lcom/kakaogame/core/CoreManager;->Companion:Lcom/kakaogame/core/CoreManager$Companion;

    invoke-virtual {v2}, Lcom/kakaogame/core/CoreManager$Companion;->getInstance()Lcom/kakaogame/core/CoreManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/kakaogame/core/CoreManager;->currentTimeMillis()J

    move-result-wide v2

    .line 719
    iget-wide v4, v0, Lcom/kakaogame/log/tracer/Job;->startTime:J

    sub-long/2addr v2, v4

    iput-wide v2, v0, Lcom/kakaogame/log/tracer/Job;->duration:J

    .line 739
    new-instance v12, Lcom/kakaogame/log/tracer/Trace;

    .line 749
    iget v3, v0, Lcom/kakaogame/log/tracer/Job;->jobId:I

    .line 759
    iget-object v4, v0, Lcom/kakaogame/log/tracer/Job;->name:Ljava/lang/String;

    .line 769
    iget-wide v5, v0, Lcom/kakaogame/log/tracer/Job;->startTime:J

    .line 779
    iget-wide v7, v0, Lcom/kakaogame/log/tracer/Job;->duration:J

    move-object v2, v12

    move v9, p1

    move-object v10, p2

    move-object/from16 v11, p3

    .line 739
    invoke-direct/range {v2 .. v11}, Lcom/kakaogame/log/tracer/Trace;-><init>(ILjava/lang/String;JJILjava/lang/String;Ljava/util/Map;)V

    .line 729
    invoke-interface {v1, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    return-object v1

    .array-data 1
    .end array-data
.end method

.method public final finishAction(Ljava/lang/String;ILjava/lang/String;Ljava/util/Map;)Lcom/kakaogame/log/tracer/Trace;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/kakaogame/log/tracer/Trace;"
        }
    .end annotation

    const v0, 0x5434cc22

    invoke-static {v0}, Lcom/liapp/y;->׳ֳֳ֬د(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const v0, 0x6d0a3cb8

    invoke-static {v0}, Lcom/liapp/y;->ٱڳܴڭܩ(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 379
    iget-boolean v0, p0, Lcom/kakaogame/log/tracer/Job;->running:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 389
    iget-object v0, p0, Lcom/kakaogame/log/tracer/Job;->actions:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/kakaogame/log/tracer/Action;

    if-eqz p1, :cond_1

    invoke-virtual {p1, p2, p3, p4}, Lcom/kakaogame/log/tracer/Action;->finish(ILjava/lang/String;Ljava/util/Map;)Lcom/kakaogame/log/tracer/Trace;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 439
    :cond_0
    iget p2, p0, Lcom/kakaogame/log/tracer/Job;->jobId:I

    iget-object p3, p0, Lcom/kakaogame/log/tracer/Job;->name:Ljava/lang/String;

    invoke-virtual {p1, p2, p3}, Lcom/kakaogame/log/tracer/Trace;->setJobInfo(ILjava/lang/String;)V

    move-object v1, p1

    nop

    :cond_1
    :goto_0
    return-object v1

    .array-data 1
    .end array-data
.end method

.method public final getActions()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/kakaogame/log/tracer/Action;",
            ">;"
        }
    .end annotation

    .line 109
    iget-object v0, p0, Lcom/kakaogame/log/tracer/Job;->actions:Ljava/util/Map;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final getDuration()J
    .locals 2

    .line 89
    iget-wide v0, p0, Lcom/kakaogame/log/tracer/Job;->duration:J

    return-wide v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final getJobCode()Lcom/kakaogame/log/tracer/TraceJobCode;
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/kakaogame/log/tracer/Job;->jobCode:Lcom/kakaogame/log/tracer/TraceJobCode;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final getJobId()I
    .locals 1

    .line 59
    iget v0, p0, Lcom/kakaogame/log/tracer/Job;->jobId:I

    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/kakaogame/log/tracer/Job;->name:Ljava/lang/String;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final getRunning()Z
    .locals 1

    .line 99
    iget-boolean v0, p0, Lcom/kakaogame/log/tracer/Job;->running:Z

    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final getStartTime()J
    .locals 2

    .line 79
    iget-wide v0, p0, Lcom/kakaogame/log/tracer/Job;->startTime:J

    return-wide v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final setDuration(J)V
    .locals 0

    .line 89
    iput-wide p1, p0, Lcom/kakaogame/log/tracer/Job;->duration:J

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public final setJobCode(Lcom/kakaogame/log/tracer/TraceJobCode;)V
    .locals 1

    const v0, 0x3365ef8b

    invoke-static {v0}, Lcom/liapp/y;->ׯ״ٲ֬ب(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 69
    iput-object p1, p0, Lcom/kakaogame/log/tracer/Job;->jobCode:Lcom/kakaogame/log/tracer/TraceJobCode;

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public final setRunning(Z)V
    .locals 0

    .line 99
    iput-boolean p1, p0, Lcom/kakaogame/log/tracer/Job;->running:Z

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public final start(Ljava/util/Map;)Lcom/kakaogame/log/tracer/Trace;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/kakaogame/log/tracer/Trace;"
        }
    .end annotation

    .line 179
    new-instance v6, Lcom/kakaogame/log/tracer/Trace;

    .line 189
    iget v1, p0, Lcom/kakaogame/log/tracer/Job;->jobId:I

    .line 199
    iget-object v2, p0, Lcom/kakaogame/log/tracer/Job;->name:Ljava/lang/String;

    .line 209
    iget-wide v3, p0, Lcom/kakaogame/log/tracer/Job;->startTime:J

    move-object v0, v6

    move-object v5, p1

    .line 179
    invoke-direct/range {v0 .. v5}, Lcom/kakaogame/log/tracer/Trace;-><init>(ILjava/lang/String;JLjava/util/Map;)V

    return-object v6

    .array-data 1
    .end array-data
.end method
