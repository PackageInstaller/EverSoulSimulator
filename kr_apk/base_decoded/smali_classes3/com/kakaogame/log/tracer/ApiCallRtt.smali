.class public final Lcom/kakaogame/log/tracer/ApiCallRtt;
.super Ljava/lang/Object;
.source "ApiCallRtt.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0002\u0008\u0019\u0018\u00002\u00020\u0001B\'\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\u0007\u001a\u00020\u0008\u00a2\u0006\u0004\u0008\t\u0010\nJ\u001e\u0010\u001f\u001a\u00020\u00002\u0006\u0010\u0012\u001a\u00020\u00082\u0006\u0010\u0016\u001a\u00020\u00082\u0006\u0010 \u001a\u00020\u0008R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000cR\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000eR\u0011\u0010\u0006\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u000eR\u0011\u0010\u0007\u001a\u00020\u0008\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\u0011R\u001a\u0010\u0012\u001a\u00020\u0008X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0013\u0010\u0011\"\u0004\u0008\u0014\u0010\u0015R\u001a\u0010\u0016\u001a\u00020\u0008X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0017\u0010\u0011\"\u0004\u0008\u0018\u0010\u0015R\u001a\u0010\u0019\u001a\u00020\u0008X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001a\u0010\u0011\"\u0004\u0008\u001b\u0010\u0015R\u001a\u0010\u001c\u001a\u00020\u0008X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001d\u0010\u0011\"\u0004\u0008\u001e\u0010\u0015\u00a8\u0006!"
    }
    d2 = {
        "Lcom/kakaogame/log/tracer/ApiCallRtt;",
        "",
        "jobId",
        "",
        "jobName",
        "",
        "uri",
        "startTime",
        "",
        "<init>",
        "(ILjava/lang/String;Ljava/lang/String;J)V",
        "getJobId",
        "()I",
        "getJobName",
        "()Ljava/lang/String;",
        "getUri",
        "getStartTime",
        "()J",
        "serverStartTime",
        "getServerStartTime",
        "setServerStartTime",
        "(J)V",
        "serverResponseTime",
        "getServerResponseTime",
        "setServerResponseTime",
        "serverElapsed",
        "getServerElapsed",
        "setServerElapsed",
        "oneWayRtt",
        "getOneWayRtt",
        "setOneWayRtt",
        "responseApi",
        "serverDuration",
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
.field private final jobId:I

.field private final jobName:Ljava/lang/String;

.field private oneWayRtt:J

.field private serverElapsed:J

.field private serverResponseTime:J

.field private serverStartTime:J

.field private final startTime:J

.field private final uri:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;J)V
    .locals 1

    const v0, 0x2258c7be

    invoke-static {v0}, Lcom/liapp/y;->ֲֳگܱޭ(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const v0, -0x4518b62f

    invoke-static {v0}, Lcom/liapp/y;->ڳݬ٬ۮݪ(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    iput p1, p0, Lcom/kakaogame/log/tracer/ApiCallRtt;->jobId:I

    .line 79
    iput-object p2, p0, Lcom/kakaogame/log/tracer/ApiCallRtt;->jobName:Ljava/lang/String;

    .line 89
    iput-object p3, p0, Lcom/kakaogame/log/tracer/ApiCallRtt;->uri:Ljava/lang/String;

    .line 99
    iput-wide p4, p0, Lcom/kakaogame/log/tracer/ApiCallRtt;->startTime:J

    return-void

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public final getJobId()I
    .locals 1

    .line 69
    iget v0, p0, Lcom/kakaogame/log/tracer/ApiCallRtt;->jobId:I

    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final getJobName()Ljava/lang/String;
    .locals 1

    .line 79
    iget-object v0, p0, Lcom/kakaogame/log/tracer/ApiCallRtt;->jobName:Ljava/lang/String;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final getOneWayRtt()J
    .locals 2

    .line 149
    iget-wide v0, p0, Lcom/kakaogame/log/tracer/ApiCallRtt;->oneWayRtt:J

    return-wide v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final getServerElapsed()J
    .locals 2

    .line 139
    iget-wide v0, p0, Lcom/kakaogame/log/tracer/ApiCallRtt;->serverElapsed:J

    return-wide v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final getServerResponseTime()J
    .locals 2

    .line 129
    iget-wide v0, p0, Lcom/kakaogame/log/tracer/ApiCallRtt;->serverResponseTime:J

    return-wide v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final getServerStartTime()J
    .locals 2

    .line 119
    iget-wide v0, p0, Lcom/kakaogame/log/tracer/ApiCallRtt;->serverStartTime:J

    return-wide v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final getStartTime()J
    .locals 2

    .line 99
    iget-wide v0, p0, Lcom/kakaogame/log/tracer/ApiCallRtt;->startTime:J

    return-wide v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final getUri()Ljava/lang/String;
    .locals 1

    .line 89
    iget-object v0, p0, Lcom/kakaogame/log/tracer/ApiCallRtt;->uri:Ljava/lang/String;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final responseApi(JJJ)Lcom/kakaogame/log/tracer/ApiCallRtt;
    .locals 2

    .line 219
    sget-object v0, Lcom/kakaogame/core/CoreManager;->Companion:Lcom/kakaogame/core/CoreManager$Companion;

    invoke-virtual {v0}, Lcom/kakaogame/core/CoreManager$Companion;->getInstance()Lcom/kakaogame/core/CoreManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kakaogame/core/CoreManager;->currentTimeMillis()J

    move-result-wide v0

    .line 229
    iput-wide p1, p0, Lcom/kakaogame/log/tracer/ApiCallRtt;->serverStartTime:J

    .line 239
    iput-wide p3, p0, Lcom/kakaogame/log/tracer/ApiCallRtt;->serverResponseTime:J

    .line 249
    iput-wide p5, p0, Lcom/kakaogame/log/tracer/ApiCallRtt;->serverElapsed:J

    .line 259
    iget-wide p1, p0, Lcom/kakaogame/log/tracer/ApiCallRtt;->startTime:J

    sub-long/2addr v0, p1

    sub-long/2addr v0, p5

    const/4 p1, 0x2

    int-to-long p1, p1

    div-long/2addr v0, p1

    iput-wide v0, p0, Lcom/kakaogame/log/tracer/ApiCallRtt;->oneWayRtt:J

    return-object p0

    .array-data 1
    .end array-data
.end method

.method public final setOneWayRtt(J)V
    .locals 0

    .line 149
    iput-wide p1, p0, Lcom/kakaogame/log/tracer/ApiCallRtt;->oneWayRtt:J

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public final setServerElapsed(J)V
    .locals 0

    .line 139
    iput-wide p1, p0, Lcom/kakaogame/log/tracer/ApiCallRtt;->serverElapsed:J

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public final setServerResponseTime(J)V
    .locals 0

    .line 129
    iput-wide p1, p0, Lcom/kakaogame/log/tracer/ApiCallRtt;->serverResponseTime:J

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public final setServerStartTime(J)V
    .locals 0

    .line 119
    iput-wide p1, p0, Lcom/kakaogame/log/tracer/ApiCallRtt;->serverStartTime:J

    return-void

    nop

    .array-data 1
    .end array-data
.end method
