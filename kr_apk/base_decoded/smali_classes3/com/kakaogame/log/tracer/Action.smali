.class public final Lcom/kakaogame/log/tracer/Action;
.super Ljava/lang/Object;
.source "Action.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0010\t\n\u0002\u0008\u0007\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010$\n\u0002\u0008\u0002\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J0\u0010\u0016\u001a\u0004\u0018\u00010\u00172\u0006\u0010\u0018\u001a\u00020\u00192\u0006\u0010\u001a\u001a\u00020\u00032\u0016\u0010\u001b\u001a\u0012\u0012\u0004\u0012\u00020\u0003\u0012\u0006\u0012\u0004\u0018\u00010\u0001\u0018\u00010\u001cJ\u0006\u0010\u001d\u001a\u00020\u0011R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007R\u0011\u0010\u0008\u001a\u00020\t\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000bR\u001a\u0010\u000c\u001a\u00020\tX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\r\u0010\u000b\"\u0004\u0008\u000e\u0010\u000fR\u001a\u0010\u0010\u001a\u00020\u0011X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0012\u0010\u0013\"\u0004\u0008\u0014\u0010\u0015\u00a8\u0006\u001e"
    }
    d2 = {
        "Lcom/kakaogame/log/tracer/Action;",
        "",
        "name",
        "",
        "<init>",
        "(Ljava/lang/String;)V",
        "getName",
        "()Ljava/lang/String;",
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
        "finish",
        "Lcom/kakaogame/log/tracer/Trace;",
        "code",
        "",
        "description",
        "extras",
        "",
        "isRunning",
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
.field private duration:J

.field private final name:Ljava/lang/String;

.field private running:Z

.field private final startTime:J


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    const v0, -0x451eea5f

    invoke-static {v0}, Lcom/liapp/y;->ڳݬ٬ۮݪ(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/kakaogame/log/tracer/Action;->name:Ljava/lang/String;

    .line 69
    sget-object p1, Lcom/kakaogame/core/CoreManager;->Companion:Lcom/kakaogame/core/CoreManager$Companion;

    invoke-virtual {p1}, Lcom/kakaogame/core/CoreManager$Companion;->getInstance()Lcom/kakaogame/core/CoreManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/kakaogame/core/CoreManager;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/kakaogame/log/tracer/Action;->startTime:J

    const/4 p1, 0x1

    .line 89
    iput-boolean p1, p0, Lcom/kakaogame/log/tracer/Action;->running:Z

    return-void

    nop

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public final finish(ILjava/lang/String;Ljava/util/Map;)Lcom/kakaogame/log/tracer/Trace;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/kakaogame/log/tracer/Trace;"
        }
    .end annotation

    const v0, 0x6d0a3cb8

    invoke-static {v0}, Lcom/liapp/y;->ٱڳܴڭܩ(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 159
    iget-boolean v0, p0, Lcom/kakaogame/log/tracer/Action;->running:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 169
    iput-boolean v0, p0, Lcom/kakaogame/log/tracer/Action;->running:Z

    .line 179
    sget-object v0, Lcom/kakaogame/core/CoreManager;->Companion:Lcom/kakaogame/core/CoreManager$Companion;

    invoke-virtual {v0}, Lcom/kakaogame/core/CoreManager$Companion;->getInstance()Lcom/kakaogame/core/CoreManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kakaogame/core/CoreManager;->currentTimeMillis()J

    move-result-wide v0

    .line 189
    iget-wide v2, p0, Lcom/kakaogame/log/tracer/Action;->startTime:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/kakaogame/log/tracer/Action;->duration:J

    .line 199
    new-instance v0, Lcom/kakaogame/log/tracer/Trace;

    .line 209
    iget-object v3, p0, Lcom/kakaogame/log/tracer/Action;->name:Ljava/lang/String;

    .line 219
    iget-wide v4, p0, Lcom/kakaogame/log/tracer/Action;->startTime:J

    .line 229
    iget-wide v6, p0, Lcom/kakaogame/log/tracer/Action;->duration:J

    move-object v2, v0

    move v8, p1

    move-object v9, p2

    move-object v10, p3

    .line 199
    invoke-direct/range {v2 .. v10}, Lcom/kakaogame/log/tracer/Trace;-><init>(Ljava/lang/String;JJILjava/lang/String;Ljava/util/Map;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .array-data 1
    .end array-data
.end method

.method public final getDuration()J
    .locals 2

    .line 79
    iget-wide v0, p0, Lcom/kakaogame/log/tracer/Action;->duration:J

    return-wide v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/kakaogame/log/tracer/Action;->name:Ljava/lang/String;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final getRunning()Z
    .locals 1

    .line 89
    iget-boolean v0, p0, Lcom/kakaogame/log/tracer/Action;->running:Z

    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final getStartTime()J
    .locals 2

    .line 69
    iget-wide v0, p0, Lcom/kakaogame/log/tracer/Action;->startTime:J

    return-wide v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final isRunning()Z
    .locals 1

    .line 319
    iget-boolean v0, p0, Lcom/kakaogame/log/tracer/Action;->running:Z

    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final setDuration(J)V
    .locals 0

    .line 79
    iput-wide p1, p0, Lcom/kakaogame/log/tracer/Action;->duration:J

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public final setRunning(Z)V
    .locals 0

    .line 89
    iput-boolean p1, p0, Lcom/kakaogame/log/tracer/Action;->running:Z

    return-void

    nop

    .array-data 1
    .end array-data
.end method
