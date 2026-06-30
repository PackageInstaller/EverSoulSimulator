.class public final Lcom/kakaogame/log/tracer/Trace;
.super Ljava/lang/Object;
.source "Trace.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010$\n\u0002\u0008$\n\u0002\u0010%\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0018\u00002\u00020\u0001B9\u0008\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0016\u0010\u0008\u001a\u0012\u0012\u0004\u0012\u00020\u0005\u0012\u0006\u0012\u0004\u0018\u00010\u0001\u0018\u00010\t\u00a2\u0006\u0004\u0008\n\u0010\u000bBQ\u0008\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\u000c\u001a\u00020\u0007\u0012\u0006\u0010\r\u001a\u00020\u0003\u0012\u0006\u0010\u000e\u001a\u00020\u0005\u0012\u0016\u0010\u0008\u001a\u0012\u0012\u0004\u0012\u00020\u0005\u0012\u0006\u0012\u0004\u0018\u00010\u0001\u0018\u00010\t\u00a2\u0006\u0004\u0008\n\u0010\u000fBI\u0008\u0016\u0012\u0006\u0010\u0010\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\u000c\u001a\u00020\u0007\u0012\u0006\u0010\r\u001a\u00020\u0003\u0012\u0006\u0010\u000e\u001a\u00020\u0005\u0012\u0016\u0010\u0008\u001a\u0012\u0012\u0004\u0012\u00020\u0005\u0012\u0006\u0012\u0004\u0018\u00010\u0001\u0018\u00010\t\u00a2\u0006\u0004\u0008\n\u0010\u0011BI\u0008\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0010\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\u000c\u001a\u00020\u0007\u0012\u0006\u0010\r\u001a\u00020\u0003\u0012\u0006\u0010\u000e\u001a\u00020\u0005\u0012\u0006\u0010\u0012\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\n\u0010\u0013J\u0016\u00103\u001a\u0002042\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005J\u0008\u00105\u001a\u00020\u0005H\u0016R\u001a\u0010\u0014\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0015\u0010\u0016\"\u0004\u0008\u0017\u0010\u0018R\u001a\u0010\u0004\u001a\u00020\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0019\u0010\u001a\"\u0004\u0008\u001b\u0010\u001cR\u001a\u0010\u0010\u001a\u00020\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001d\u0010\u001a\"\u0004\u0008\u001e\u0010\u001cR\u001a\u0010\u0006\u001a\u00020\u0007X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001f\u0010 \"\u0004\u0008!\u0010\"R\u001a\u0010\u000c\u001a\u00020\u0007X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008#\u0010 \"\u0004\u0008$\u0010\"R\u001a\u0010%\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008&\u0010\u0016\"\u0004\u0008\'\u0010\u0018R\u001a\u0010(\u001a\u00020\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008)\u0010\u001a\"\u0004\u0008*\u0010\u001cR\u001a\u0010+\u001a\u00020\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008,\u0010\u001a\"\u0004\u0008-\u0010\u001cR(\u0010\u0008\u001a\u0010\u0012\u0004\u0012\u00020\u0005\u0012\u0006\u0012\u0004\u0018\u00010\u00010.X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008/\u00100\"\u0004\u00081\u00102\u00a8\u00066"
    }
    d2 = {
        "Lcom/kakaogame/log/tracer/Trace;",
        "",
        "id",
        "",
        "job",
        "",
        "startTime",
        "",
        "extras",
        "",
        "<init>",
        "(ILjava/lang/String;JLjava/util/Map;)V",
        "duration",
        "code",
        "description",
        "(ILjava/lang/String;JJILjava/lang/String;Ljava/util/Map;)V",
        "action",
        "(Ljava/lang/String;JJILjava/lang/String;Ljava/util/Map;)V",
        "rttServerUrl",
        "(ILjava/lang/String;Ljava/lang/String;JJILjava/lang/String;Ljava/lang/String;)V",
        "jobId",
        "getJobId",
        "()I",
        "setJobId",
        "(I)V",
        "getJob",
        "()Ljava/lang/String;",
        "setJob",
        "(Ljava/lang/String;)V",
        "getAction",
        "setAction",
        "getStartTime",
        "()J",
        "setStartTime",
        "(J)V",
        "getDuration",
        "setDuration",
        "resultCode",
        "getResultCode",
        "setResultCode",
        "resultDescription",
        "getResultDescription",
        "setResultDescription",
        "rttCheckServerUrl",
        "getRttCheckServerUrl",
        "setRttCheckServerUrl",
        "",
        "getExtras",
        "()Ljava/util/Map;",
        "setExtras",
        "(Ljava/util/Map;)V",
        "setJobInfo",
        "",
        "toString",
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
.field private action:Ljava/lang/String;

.field private duration:J

.field private extras:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private job:Ljava/lang/String;

.field private jobId:I

.field private resultCode:I

.field private resultDescription:Ljava/lang/String;

.field private rttCheckServerUrl:Ljava/lang/String;

.field private startTime:J


# direct methods
.method public constructor <init>(ILjava/lang/String;JJILjava/lang/String;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "JJI",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const v0, 0x336f6b5b

    invoke-static {v0}, Lcom/liapp/y;->ׯ״ٲ֬ب(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const v0, 0x6d0a3cb8

    invoke-static {v0}, Lcom/liapp/y;->ٱڳܴڭܩ(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 429
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 69
    iput-object v0, p0, Lcom/kakaogame/log/tracer/Trace;->job:Ljava/lang/String;

    .line 79
    iput-object v0, p0, Lcom/kakaogame/log/tracer/Trace;->action:Ljava/lang/String;

    const/16 v1, 0xc8

    .line 109
    iput v1, p0, Lcom/kakaogame/log/tracer/Trace;->resultCode:I

    .line 119
    iput-object v0, p0, Lcom/kakaogame/log/tracer/Trace;->resultDescription:Ljava/lang/String;

    .line 129
    iput-object v0, p0, Lcom/kakaogame/log/tracer/Trace;->rttCheckServerUrl:Ljava/lang/String;

    .line 139
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast v0, Ljava/util/Map;

    iput-object v0, p0, Lcom/kakaogame/log/tracer/Trace;->extras:Ljava/util/Map;

    .line 439
    iput p1, p0, Lcom/kakaogame/log/tracer/Trace;->jobId:I

    .line 449
    iput-object p2, p0, Lcom/kakaogame/log/tracer/Trace;->job:Ljava/lang/String;

    .line 459
    iput-wide p3, p0, Lcom/kakaogame/log/tracer/Trace;->startTime:J

    .line 469
    iput-wide p5, p0, Lcom/kakaogame/log/tracer/Trace;->duration:J

    .line 479
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "_end"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/kakaogame/log/tracer/Trace;->action:Ljava/lang/String;

    .line 489
    iput p7, p0, Lcom/kakaogame/log/tracer/Trace;->resultCode:I

    .line 499
    iput-object p8, p0, Lcom/kakaogame/log/tracer/Trace;->resultDescription:Ljava/lang/String;

    if-eqz p9, :cond_0

    .line 519
    iget-object p1, p0, Lcom/kakaogame/log/tracer/Trace;->extras:Ljava/util/Map;

    invoke-interface {p1, p9}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    :cond_0
    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public constructor <init>(ILjava/lang/String;JLjava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "J",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const v0, 0x336f6b5b

    invoke-static {v0}, Lcom/liapp/y;->ׯ״ٲ֬ب(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 219
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 69
    iput-object v0, p0, Lcom/kakaogame/log/tracer/Trace;->job:Ljava/lang/String;

    .line 79
    iput-object v0, p0, Lcom/kakaogame/log/tracer/Trace;->action:Ljava/lang/String;

    const/16 v1, 0xc8

    .line 109
    iput v1, p0, Lcom/kakaogame/log/tracer/Trace;->resultCode:I

    .line 119
    iput-object v0, p0, Lcom/kakaogame/log/tracer/Trace;->resultDescription:Ljava/lang/String;

    .line 129
    iput-object v0, p0, Lcom/kakaogame/log/tracer/Trace;->rttCheckServerUrl:Ljava/lang/String;

    .line 139
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast v0, Ljava/util/Map;

    iput-object v0, p0, Lcom/kakaogame/log/tracer/Trace;->extras:Ljava/util/Map;

    .line 229
    iput p1, p0, Lcom/kakaogame/log/tracer/Trace;->jobId:I

    .line 239
    iput-object p2, p0, Lcom/kakaogame/log/tracer/Trace;->job:Ljava/lang/String;

    .line 249
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "_start"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/kakaogame/log/tracer/Trace;->action:Ljava/lang/String;

    .line 259
    iput-wide p3, p0, Lcom/kakaogame/log/tracer/Trace;->startTime:J

    const-wide/16 p1, 0x0

    .line 269
    iput-wide p1, p0, Lcom/kakaogame/log/tracer/Trace;->duration:J

    .line 279
    iput v1, p0, Lcom/kakaogame/log/tracer/Trace;->resultCode:I

    if-eqz p5, :cond_0

    .line 299
    iget-object p1, p0, Lcom/kakaogame/log/tracer/Trace;->extras:Ljava/util/Map;

    invoke-interface {p1, p5}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    :cond_0
    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;JJILjava/lang/String;Ljava/lang/String;)V
    .locals 2

    const v0, 0x336f6b5b

    invoke-static {v0}, Lcom/liapp/y;->ׯ״ٲ֬ب(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const v0, 0x543fd752

    invoke-static {v0}, Lcom/liapp/y;->׳ֳֳ֬د(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const v0, 0x6d0a3cb8

    invoke-static {v0}, Lcom/liapp/y;->ٱڳܴڭܩ(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const v0, 0x336f6b63

    invoke-static {v0}, Lcom/liapp/y;->ׯ״ٲ֬ب(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p10, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 839
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 69
    iput-object v0, p0, Lcom/kakaogame/log/tracer/Trace;->job:Ljava/lang/String;

    .line 79
    iput-object v0, p0, Lcom/kakaogame/log/tracer/Trace;->action:Ljava/lang/String;

    const/16 v1, 0xc8

    .line 109
    iput v1, p0, Lcom/kakaogame/log/tracer/Trace;->resultCode:I

    .line 119
    iput-object v0, p0, Lcom/kakaogame/log/tracer/Trace;->resultDescription:Ljava/lang/String;

    .line 129
    iput-object v0, p0, Lcom/kakaogame/log/tracer/Trace;->rttCheckServerUrl:Ljava/lang/String;

    .line 139
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast v0, Ljava/util/Map;

    iput-object v0, p0, Lcom/kakaogame/log/tracer/Trace;->extras:Ljava/util/Map;

    .line 849
    iput p1, p0, Lcom/kakaogame/log/tracer/Trace;->jobId:I

    .line 859
    iput-object p2, p0, Lcom/kakaogame/log/tracer/Trace;->job:Ljava/lang/String;

    .line 869
    iput-object p3, p0, Lcom/kakaogame/log/tracer/Trace;->action:Ljava/lang/String;

    .line 879
    iput-wide p4, p0, Lcom/kakaogame/log/tracer/Trace;->startTime:J

    .line 889
    iput-wide p6, p0, Lcom/kakaogame/log/tracer/Trace;->duration:J

    .line 899
    iput p8, p0, Lcom/kakaogame/log/tracer/Trace;->resultCode:I

    .line 909
    iput-object p9, p0, Lcom/kakaogame/log/tracer/Trace;->resultDescription:Ljava/lang/String;

    .line 919
    iput-object p10, p0, Lcom/kakaogame/log/tracer/Trace;->rttCheckServerUrl:Ljava/lang/String;

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public constructor <init>(Ljava/lang/String;JJILjava/lang/String;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "JJI",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const v0, 0x543fd752

    invoke-static {v0}, Lcom/liapp/y;->׳ֳֳ֬د(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const v0, 0x6d0a3cb8

    invoke-static {v0}, Lcom/liapp/y;->ٱڳܴڭܩ(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 639
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 69
    iput-object v0, p0, Lcom/kakaogame/log/tracer/Trace;->job:Ljava/lang/String;

    .line 79
    iput-object v0, p0, Lcom/kakaogame/log/tracer/Trace;->action:Ljava/lang/String;

    const/16 v1, 0xc8

    .line 109
    iput v1, p0, Lcom/kakaogame/log/tracer/Trace;->resultCode:I

    .line 119
    iput-object v0, p0, Lcom/kakaogame/log/tracer/Trace;->resultDescription:Ljava/lang/String;

    .line 129
    iput-object v0, p0, Lcom/kakaogame/log/tracer/Trace;->rttCheckServerUrl:Ljava/lang/String;

    .line 139
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast v0, Ljava/util/Map;

    iput-object v0, p0, Lcom/kakaogame/log/tracer/Trace;->extras:Ljava/util/Map;

    .line 649
    iput-object p1, p0, Lcom/kakaogame/log/tracer/Trace;->action:Ljava/lang/String;

    .line 659
    iput-wide p2, p0, Lcom/kakaogame/log/tracer/Trace;->startTime:J

    .line 669
    iput-wide p4, p0, Lcom/kakaogame/log/tracer/Trace;->duration:J

    .line 679
    iput p6, p0, Lcom/kakaogame/log/tracer/Trace;->resultCode:I

    .line 689
    iput-object p7, p0, Lcom/kakaogame/log/tracer/Trace;->resultDescription:Ljava/lang/String;

    if-eqz p8, :cond_0

    .line 709
    invoke-interface {v0, p8}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    :cond_0
    return-void

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public final getAction()Ljava/lang/String;
    .locals 1

    .line 79
    iget-object v0, p0, Lcom/kakaogame/log/tracer/Trace;->action:Ljava/lang/String;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final getDuration()J
    .locals 2

    .line 99
    iget-wide v0, p0, Lcom/kakaogame/log/tracer/Trace;->duration:J

    return-wide v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final getExtras()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 139
    iget-object v0, p0, Lcom/kakaogame/log/tracer/Trace;->extras:Ljava/util/Map;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final getJob()Ljava/lang/String;
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/kakaogame/log/tracer/Trace;->job:Ljava/lang/String;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final getJobId()I
    .locals 1

    .line 59
    iget v0, p0, Lcom/kakaogame/log/tracer/Trace;->jobId:I

    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final getResultCode()I
    .locals 1

    .line 109
    iget v0, p0, Lcom/kakaogame/log/tracer/Trace;->resultCode:I

    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final getResultDescription()Ljava/lang/String;
    .locals 1

    .line 119
    iget-object v0, p0, Lcom/kakaogame/log/tracer/Trace;->resultDescription:Ljava/lang/String;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final getRttCheckServerUrl()Ljava/lang/String;
    .locals 1

    .line 129
    iget-object v0, p0, Lcom/kakaogame/log/tracer/Trace;->rttCheckServerUrl:Ljava/lang/String;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final getStartTime()J
    .locals 2

    .line 89
    iget-wide v0, p0, Lcom/kakaogame/log/tracer/Trace;->startTime:J

    return-wide v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final setAction(Ljava/lang/String;)V
    .locals 1

    const v0, 0x3365ef8b

    invoke-static {v0}, Lcom/liapp/y;->ׯ״ٲ֬ب(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 79
    iput-object p1, p0, Lcom/kakaogame/log/tracer/Trace;->action:Ljava/lang/String;

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public final setDuration(J)V
    .locals 0

    .line 99
    iput-wide p1, p0, Lcom/kakaogame/log/tracer/Trace;->duration:J

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public final setExtras(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const v0, 0x3365ef8b

    invoke-static {v0}, Lcom/liapp/y;->ׯ״ٲ֬ب(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 139
    iput-object p1, p0, Lcom/kakaogame/log/tracer/Trace;->extras:Ljava/util/Map;

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public final setJob(Ljava/lang/String;)V
    .locals 1

    const v0, 0x3365ef8b

    invoke-static {v0}, Lcom/liapp/y;->ׯ״ٲ֬ب(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 69
    iput-object p1, p0, Lcom/kakaogame/log/tracer/Trace;->job:Ljava/lang/String;

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public final setJobId(I)V
    .locals 0

    .line 59
    iput p1, p0, Lcom/kakaogame/log/tracer/Trace;->jobId:I

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public final setJobInfo(ILjava/lang/String;)V
    .locals 1

    const v0, 0x336f6b5b

    invoke-static {v0}, Lcom/liapp/y;->ׯ״ٲ֬ب(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 989
    iput p1, p0, Lcom/kakaogame/log/tracer/Trace;->jobId:I

    .line 999
    iput-object p2, p0, Lcom/kakaogame/log/tracer/Trace;->job:Ljava/lang/String;

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public final setResultCode(I)V
    .locals 0

    .line 109
    iput p1, p0, Lcom/kakaogame/log/tracer/Trace;->resultCode:I

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public final setResultDescription(Ljava/lang/String;)V
    .locals 1

    const v0, 0x3365ef8b

    invoke-static {v0}, Lcom/liapp/y;->ׯ״ٲ֬ب(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 119
    iput-object p1, p0, Lcom/kakaogame/log/tracer/Trace;->resultDescription:Ljava/lang/String;

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public final setRttCheckServerUrl(Ljava/lang/String;)V
    .locals 1

    const v0, 0x3365ef8b

    invoke-static {v0}, Lcom/liapp/y;->ׯ״ٲ֬ب(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 129
    iput-object p1, p0, Lcom/kakaogame/log/tracer/Trace;->rttCheckServerUrl:Ljava/lang/String;

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public final setStartTime(J)V
    .locals 0

    .line 89
    iput-wide p1, p0, Lcom/kakaogame/log/tracer/Trace;->startTime:J

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1039
    new-instance v0, Ljava/lang/StringBuilder;

    const v1, -0x4514a707

    invoke-static {v1}, Lcom/liapp/y;->ڳݬ٬ۮݪ(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/kakaogame/log/tracer/Trace;->jobId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const v1, -0x4514a74f

    invoke-static {v1}, Lcom/liapp/y;->ڳݬ٬ۮݪ(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/kakaogame/log/tracer/Trace;->job:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const v1, 0x2258c106

    invoke-static {v1}, Lcom/liapp/y;->ֲֳگܱޭ(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/kakaogame/log/tracer/Trace;->action:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const v1, 0x5d1de007

    invoke-static {v1}, Lcom/liapp/y;->ڴݮگ֮ت(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1049
    iget-wide v1, p0, Lcom/kakaogame/log/tracer/Trace;->startTime:J

    .line 1039
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const v1, -0x4514a6e7

    invoke-static {v1}, Lcom/liapp/y;->ڳݬ٬ۮݪ(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1049
    iget-wide v1, p0, Lcom/kakaogame/log/tracer/Trace;->duration:J

    .line 1039
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const v1, -0x224f0354

    invoke-static {v1}, Lcom/liapp/y;->״دش۲ݮ(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1059
    iget v1, p0, Lcom/kakaogame/log/tracer/Trace;->resultCode:I

    .line 1039
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const v1, 0x5d10ab07

    invoke-static {v1}, Lcom/liapp/y;->ڴݮگ֮ت(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1059
    iget-object v1, p0, Lcom/kakaogame/log/tracer/Trace;->resultDescription:Ljava/lang/String;

    .line 1039
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const v1, 0x5434c83a

    invoke-static {v1}, Lcom/liapp/y;->׳ֳֳ֬د(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1069
    iget-object v1, p0, Lcom/kakaogame/log/tracer/Trace;->extras:Ljava/util/Map;

    .line 1039
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .array-data 1
    .end array-data
.end method
