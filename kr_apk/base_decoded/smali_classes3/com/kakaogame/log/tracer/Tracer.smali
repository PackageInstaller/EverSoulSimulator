.class public final Lcom/kakaogame/log/tracer/Tracer;
.super Ljava/lang/Object;
.source "Tracer.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kakaogame/log/tracer/Tracer$WhenMappings;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0084\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010%\n\u0002\u0010\t\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010$\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u000c\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0006\u0010\u001e\u001a\u00020\u0007J\u000e\u0010\u001f\u001a\u00020 2\u0006\u0010!\u001a\u00020\u001bJ\u0006\u0010\"\u001a\u00020 J\u0008\u0010#\u001a\u00020 H\u0002J\u000e\u0010$\u001a\u00020\u001b2\u0006\u0010%\u001a\u00020&J0\u0010$\u001a\u00020\u001b2\u0006\u0010\'\u001a\u00020(2\u0006\u0010)\u001a\u00020\u00072\u0018\u0008\u0002\u0010*\u001a\u0012\u0012\u0004\u0012\u00020\u0007\u0012\u0006\u0012\u0004\u0018\u00010\u0001\u0018\u00010+J2\u0010$\u001a\u00020\u001b2\u0006\u0010)\u001a\u00020\u00072\u0018\u0008\u0002\u0010*\u001a\u0012\u0012\u0004\u0012\u00020\u0007\u0012\u0006\u0012\u0004\u0018\u00010\u0001\u0018\u00010+2\u0006\u0010,\u001a\u00020\u0017H\u0002J*\u0010$\u001a\u00020\u001b2\u0006\u0010)\u001a\u00020\u00072\u0018\u0008\u0002\u0010*\u001a\u0012\u0012\u0004\u0012\u00020\u0007\u0012\u0006\u0012\u0004\u0018\u00010\u0001\u0018\u00010+H\u0002J\u0012\u0010-\u001a\u00020\u001b*\u00020\u001b2\u0006\u0010.\u001a\u00020\u001bJ\n\u0010/\u001a\u00020\u0007*\u00020\u001bJ4\u00100\u001a\u00020 *\u00020\u001b2\u0006\u0010%\u001a\u00020\u001b2\u0006\u00101\u001a\u00020\u00072\u0018\u0008\u0002\u0010*\u001a\u0012\u0012\u0004\u0012\u00020\u0007\u0012\u0006\u0012\u0004\u0018\u00010\u0001\u0018\u00010+J\u0012\u00102\u001a\u00020 *\u00020\u001b2\u0006\u00103\u001a\u000204J\u0012\u00102\u001a\u00020 *\u00020\u001b2\u0006\u00103\u001a\u00020\u0007J<\u00105\u001a\u00020 *\u00020\u001b2\u0006\u00103\u001a\u00020\u00072\u0006\u0010%\u001a\u00020\u001b2\u0006\u00101\u001a\u00020\u00072\u0018\u0008\u0002\u0010*\u001a\u0012\u0012\u0004\u0012\u00020\u0007\u0012\u0006\u0012\u0004\u0018\u00010\u0001\u0018\u00010+J\"\u00105\u001a\u00020 *\u00020\u001b2\u0006\u00103\u001a\u0002042\u0006\u0010%\u001a\u00020\u001b2\u0006\u00101\u001a\u00020\u0007J\u0012\u00106\u001a\u00020\u0010*\u00020\u001b2\u0006\u00107\u001a\u00020\u0007J&\u00108\u001a\u00020 *\u00020\u00102\u001a\u00109\u001a\u0016\u0012\u0004\u0012\u00020\u0007\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00070:\u0018\u00010+J\u0014\u00108\u001a\u00020 *\u00020\u00102\u0008\u00109\u001a\u0004\u0018\u00010;J\u0010\u0010<\u001a\u00020 2\u0006\u0010=\u001a\u00020\rH\u0002J\u0016\u0010>\u001a\u00020 2\u000c\u0010?\u001a\u0008\u0012\u0004\u0012\u00020\r0:H\u0002J\u0010\u0010@\u001a\u00020 2\u0006\u0010=\u001a\u00020\rH\u0002J\n\u0010A\u001a\u0004\u0018\u00010\rH\u0002J\u0008\u0010B\u001a\u0004\u0018\u00010\u0007J\u0006\u0010C\u001a\u00020 J\u0008\u0010D\u001a\u00020\u0017H\u0002J\u0008\u0010E\u001a\u00020 H\u0002J\u0008\u0010F\u001a\u00020 H\u0002R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\n0\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00020\r0\u000cX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u000e\u001a\u000e\u0012\u0004\u0012\u00020\u0010\u0012\u0004\u0012\u00020\u00110\u000fX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0012\u001a\u0008\u0012\u0004\u0012\u00020\u00110\u000cX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0013\u001a\u00020\u0001X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0014\u001a\u00020\u0001X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0015\u001a\u00020\u0001X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0016\u001a\u00020\u0017X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0018\u001a\u00020\u0010X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0019\u001a\u0008\u0012\u0004\u0012\u00020\u00070\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001a\u001a\u00020\u001bX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u001c\u001a\u0004\u0018\u00010\u001dX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006G"
    }
    d2 = {
        "Lcom/kakaogame/log/tracer/Tracer;",
        "",
        "<init>",
        "()V",
        "enableTrace",
        "Lcom/kakaogame/log/tracer/TraceStatus;",
        "traceId",
        "",
        "jobList",
        "",
        "Lcom/kakaogame/log/tracer/Job;",
        "requestQueue",
        "Ljava/util/LinkedList;",
        "Lcom/kakaogame/log/tracer/Trace;",
        "rttList",
        "",
        "",
        "Lcom/kakaogame/log/tracer/ApiCallRtt;",
        "rttSendData",
        "queueLock",
        "rttLock",
        "sendLock",
        "isSendingTrace",
        "",
        "tracingStartTime",
        "rttCheckUrlList",
        "rttSendingIndex",
        "",
        "rttCheckTimer",
        "Lcom/kakaogame/core/TimerManager;",
        "getTraceId",
        "setTarget",
        "",
        "rate",
        "onInfodesk",
        "sendRttUrls",
        "makeJob",
        "code",
        "Lcom/kakaogame/log/tracer/TraceJobCode;",
        "activity",
        "Landroid/app/Activity;",
        "name",
        "extras",
        "",
        "activate",
        "makeCustomErrorCode",
        "errorCode",
        "getJobName",
        "finish",
        "description",
        "startAction",
        "action",
        "Lcom/kakaogame/log/tracer/TraceLoginActionCode;",
        "finishAction",
        "requestUri",
        "uri",
        "response",
        "headers",
        "",
        "Lcom/kakaogame/util/json/JSONObject;",
        "addTrace",
        "trace",
        "addTraceList",
        "list",
        "sendFailure",
        "getTrace",
        "getRttData",
        "send",
        "isSending",
        "sendStart",
        "sendCompleted",
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
.field public static final INSTANCE:Lcom/kakaogame/log/tracer/Tracer;

.field private static enableTrace:Lcom/kakaogame/log/tracer/TraceStatus;

.field private static isSendingTrace:Z

.field private static final jobList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/kakaogame/log/tracer/Job;",
            ">;"
        }
    .end annotation
.end field

.field private static final queueLock:Ljava/lang/Object;

.field private static final requestQueue:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/kakaogame/log/tracer/Trace;",
            ">;"
        }
    .end annotation
.end field

.field private static rttCheckTimer:Lcom/kakaogame/core/TimerManager;

.field private static final rttCheckUrlList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final rttList:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Lcom/kakaogame/log/tracer/ApiCallRtt;",
            ">;"
        }
    .end annotation
.end field

.field private static final rttLock:Ljava/lang/Object;

.field private static final rttSendData:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/kakaogame/log/tracer/ApiCallRtt;",
            ">;"
        }
    .end annotation
.end field

.field private static rttSendingIndex:I

.field private static final sendLock:Ljava/lang/Object;

.field private static final traceId:Ljava/lang/String;

.field private static tracingStartTime:J


# direct methods
.method public static synthetic $r8$lambda$0mn3J-lrUZq_SSrp8kQpA57UsWE(Landroid/app/Activity;)Landroid/app/Activity;
    .locals 0

    invoke-static {p0}, Lcom/kakaogame/log/tracer/Tracer;->makeJob$lambda$1(Landroid/app/Activity;)Landroid/app/Activity;

    move-result-object p0

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static synthetic $r8$lambda$cp9KIjrRspeUGNgVleM7ygjfBGE()V
    .locals 0

    invoke-static {}, Lcom/kakaogame/log/tracer/Tracer;->onInfodesk$lambda$0()V

    return-void

    .array-data 1
    .end array-data
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/kakaogame/log/tracer/Tracer;

    invoke-direct {v0}, Lcom/kakaogame/log/tracer/Tracer;-><init>()V

    sput-object v0, Lcom/kakaogame/log/tracer/Tracer;->INSTANCE:Lcom/kakaogame/log/tracer/Tracer;

    .line 229
    sget-object v0, Lcom/kakaogame/log/tracer/TraceStatus;->UNKNOWN:Lcom/kakaogame/log/tracer/TraceStatus;

    sput-object v0, Lcom/kakaogame/log/tracer/Tracer;->enableTrace:Lcom/kakaogame/log/tracer/TraceStatus;

    .line 239
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    const v1, -0x451e20f7

    invoke-static {v1}, Lcom/liapp/y;->ڳݬ٬ۮݪ(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v0, Lcom/kakaogame/log/tracer/Tracer;->traceId:Ljava/lang/String;

    .line 249
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    sput-object v0, Lcom/kakaogame/log/tracer/Tracer;->jobList:Ljava/util/List;

    .line 259
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sput-object v0, Lcom/kakaogame/log/tracer/Tracer;->requestQueue:Ljava/util/LinkedList;

    .line 269
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast v0, Ljava/util/Map;

    sput-object v0, Lcom/kakaogame/log/tracer/Tracer;->rttList:Ljava/util/Map;

    .line 279
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sput-object v0, Lcom/kakaogame/log/tracer/Tracer;->rttSendData:Ljava/util/LinkedList;

    .line 289
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/kakaogame/log/tracer/Tracer;->queueLock:Ljava/lang/Object;

    .line 299
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/kakaogame/log/tracer/Tracer;->rttLock:Ljava/lang/Object;

    .line 309
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/kakaogame/log/tracer/Tracer;->sendLock:Ljava/lang/Object;

    .line 329
    sget-object v0, Lcom/kakaogame/core/CoreManager;->Companion:Lcom/kakaogame/core/CoreManager$Companion;

    invoke-virtual {v0}, Lcom/kakaogame/core/CoreManager$Companion;->getInstance()Lcom/kakaogame/core/CoreManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kakaogame/core/CoreManager;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/kakaogame/log/tracer/Tracer;->tracingStartTime:J

    .line 339
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    sput-object v0, Lcom/kakaogame/log/tracer/Tracer;->rttCheckUrlList:Ljava/util/List;

    return-void

    .array-data 1
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .line 219
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void

    .array-data 1
    .end array-data
.end method

.method public static final synthetic access$getRequestQueue$p()Ljava/util/LinkedList;
    .locals 1

    .line 219
    sget-object v0, Lcom/kakaogame/log/tracer/Tracer;->requestQueue:Ljava/util/LinkedList;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public static final synthetic access$getTrace(Lcom/kakaogame/log/tracer/Tracer;)Lcom/kakaogame/log/tracer/Trace;
    .locals 0

    .line 219
    invoke-direct {p0}, Lcom/kakaogame/log/tracer/Tracer;->getTrace()Lcom/kakaogame/log/tracer/Trace;

    move-result-object p0

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static final synthetic access$getTraceId$p()Ljava/lang/String;
    .locals 1

    .line 219
    sget-object v0, Lcom/kakaogame/log/tracer/Tracer;->traceId:Ljava/lang/String;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public static final synthetic access$sendCompleted(Lcom/kakaogame/log/tracer/Tracer;)V
    .locals 0

    .line 219
    invoke-direct {p0}, Lcom/kakaogame/log/tracer/Tracer;->sendCompleted()V

    return-void

    .array-data 1
    .end array-data
.end method

.method public static final synthetic access$sendFailure(Lcom/kakaogame/log/tracer/Tracer;Lcom/kakaogame/log/tracer/Trace;)V
    .locals 0

    .line 219
    invoke-direct {p0, p1}, Lcom/kakaogame/log/tracer/Tracer;->sendFailure(Lcom/kakaogame/log/tracer/Trace;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method private final addTrace(Lcom/kakaogame/log/tracer/Trace;)V
    .locals 2

    .line 2939
    sget-object v0, Lcom/kakaogame/log/tracer/Tracer;->queueLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2949
    :try_start_0
    sget-object v1, Lcom/kakaogame/log/tracer/Tracer;->requestQueue:Ljava/util/LinkedList;

    invoke-virtual {v1, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2939
    monitor-exit v0

    .line 2969
    sget-object p1, Lcom/kakaogame/log/tracer/Tracer;->enableTrace:Lcom/kakaogame/log/tracer/TraceStatus;

    sget-object v0, Lcom/kakaogame/log/tracer/TraceStatus;->ENABLED:Lcom/kakaogame/log/tracer/TraceStatus;

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/kakaogame/log/tracer/Tracer;->send()V

    :cond_0
    return-void

    :catchall_0
    move-exception p1

    .line 2939
    monitor-exit v0

    throw p1

    .array-data 1
    .end array-data
.end method

.method private final addTraceList(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/kakaogame/log/tracer/Trace;",
            ">;)V"
        }
    .end annotation

    .line 3009
    sget-object v0, Lcom/kakaogame/log/tracer/Tracer;->queueLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3019
    :try_start_0
    sget-object v1, Lcom/kakaogame/log/tracer/Tracer;->requestQueue:Ljava/util/LinkedList;

    check-cast p1, Ljava/util/Collection;

    invoke-virtual {v1, p1}, Ljava/util/LinkedList;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3009
    monitor-exit v0

    .line 3039
    sget-object p1, Lcom/kakaogame/log/tracer/Tracer;->enableTrace:Lcom/kakaogame/log/tracer/TraceStatus;

    sget-object v0, Lcom/kakaogame/log/tracer/TraceStatus;->ENABLED:Lcom/kakaogame/log/tracer/TraceStatus;

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/kakaogame/log/tracer/Tracer;->send()V

    :cond_0
    return-void

    :catchall_0
    move-exception p1

    .line 3009
    monitor-exit v0

    throw p1

    .array-data 1
    .end array-data
.end method

.method public static synthetic finish$default(Lcom/kakaogame/log/tracer/Tracer;IILjava/lang/String;Ljava/util/Map;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p5, p5, 0x4

    if-eqz p5, :cond_0

    const/4 p4, 0x0

    .line 1739
    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/kakaogame/log/tracer/Tracer;->finish(IILjava/lang/String;Ljava/util/Map;)V

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public static synthetic finishAction$default(Lcom/kakaogame/log/tracer/Tracer;ILjava/lang/String;ILjava/lang/String;Ljava/util/Map;ILjava/lang/Object;)V
    .locals 6

    and-int/lit8 p6, p6, 0x8

    if-eqz p6, :cond_0

    const/4 p5, 0x0

    :cond_0
    move-object v5, p5

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    .line 2009
    invoke-virtual/range {v0 .. v5}, Lcom/kakaogame/log/tracer/Tracer;->finishAction(ILjava/lang/String;ILjava/lang/String;Ljava/util/Map;)V

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method private final getTrace()Lcom/kakaogame/log/tracer/Trace;
    .locals 2

    .line 3139
    sget-object v0, Lcom/kakaogame/log/tracer/Tracer;->queueLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3149
    :try_start_0
    sget-object v1, Lcom/kakaogame/log/tracer/Tracer;->requestQueue:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/kakaogame/log/tracer/Trace;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3139
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1

    .array-data 1
    .end array-data
.end method

.method private final isSending()Z
    .locals 2

    .line 3689
    sget-object v0, Lcom/kakaogame/log/tracer/Tracer;->sendLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3699
    :try_start_0
    sget-boolean v1, Lcom/kakaogame/log/tracer/Tracer;->isSendingTrace:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3689
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1

    .array-data 1
    .end array-data
.end method

.method private final makeJob(Ljava/lang/String;Ljava/util/Map;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;)I"
        }
    .end annotation

    .line 1479
    sget-object v0, Lcom/kakaogame/core/CoreManager;->Companion:Lcom/kakaogame/core/CoreManager$Companion;

    invoke-virtual {v0}, Lcom/kakaogame/core/CoreManager$Companion;->getInstance()Lcom/kakaogame/core/CoreManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kakaogame/core/CoreManager;->currentTimeMillis()J

    move-result-wide v0

    sget-wide v2, Lcom/kakaogame/log/tracer/Tracer;->tracingStartTime:J

    sub-long/2addr v0, v2

    .line 1489
    sget-object v2, Lcom/kakaogame/infodesk/InfodeskHelper;->INSTANCE:Lcom/kakaogame/infodesk/InfodeskHelper;

    invoke-virtual {v2}, Lcom/kakaogame/infodesk/InfodeskHelper;->getSdkTracingMin()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 1499
    sget-object p1, Lcom/kakaogame/log/tracer/TraceStatus;->STOPPED:Lcom/kakaogame/log/tracer/TraceStatus;

    sput-object p1, Lcom/kakaogame/log/tracer/Tracer;->enableTrace:Lcom/kakaogame/log/tracer/TraceStatus;

    const/4 p1, -0x1

    goto :goto_0

    .line 1529
    :cond_0
    sget-object v0, Lcom/kakaogame/log/tracer/Tracer;->jobList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 1539
    new-instance v2, Ljava/lang/StringBuilder;

    const v3, 0x6d01c198

    invoke-static {v3}, Lcom/liapp/y;->ٱڳܴڭܩ(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const v3, 0x5434c06a

    invoke-static {v3}, Lcom/liapp/y;->׳ֳֳ֬د(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1549
    new-instance v2, Lcom/kakaogame/log/tracer/Job;

    invoke-direct {v2, v1, p1}, Lcom/kakaogame/log/tracer/Job;-><init>(ILjava/lang/String;)V

    .line 1559
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1569
    invoke-virtual {v2, p2}, Lcom/kakaogame/log/tracer/Job;->start(Ljava/util/Map;)Lcom/kakaogame/log/tracer/Trace;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/kakaogame/log/tracer/Tracer;->addTrace(Lcom/kakaogame/log/tracer/Trace;)V

    move p1, v1

    :goto_0
    return p1

    .array-data 1
    .end array-data
.end method

.method private final makeJob(Ljava/lang/String;Ljava/util/Map;Z)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;Z)I"
        }
    .end annotation

    .line 1329
    sget-object v0, Lcom/kakaogame/log/tracer/Tracer;->enableTrace:Lcom/kakaogame/log/tracer/TraceStatus;

    sget-object v1, Lcom/kakaogame/log/tracer/Tracer$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v0}, Lcom/kakaogame/log/tracer/TraceStatus;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    const/4 v2, -0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p3, :cond_2

    .line 1379
    sget-object p3, Lcom/kakaogame/log/tracer/TraceStatus;->ENABLED:Lcom/kakaogame/log/tracer/TraceStatus;

    sput-object p3, Lcom/kakaogame/log/tracer/Tracer;->enableTrace:Lcom/kakaogame/log/tracer/TraceStatus;

    .line 1389
    sget-object p3, Lcom/kakaogame/core/CoreManager;->Companion:Lcom/kakaogame/core/CoreManager$Companion;

    invoke-virtual {p3}, Lcom/kakaogame/core/CoreManager$Companion;->getInstance()Lcom/kakaogame/core/CoreManager;

    move-result-object p3

    invoke-virtual {p3}, Lcom/kakaogame/core/CoreManager;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/kakaogame/log/tracer/Tracer;->tracingStartTime:J

    .line 1399
    invoke-direct {p0, p1, p2}, Lcom/kakaogame/log/tracer/Tracer;->makeJob(Ljava/lang/String;Ljava/util/Map;)I

    move-result v2

    goto :goto_0

    .line 1349
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/kakaogame/log/tracer/Tracer;->makeJob(Ljava/lang/String;Ljava/util/Map;)I

    move-result v2

    :cond_2
    :goto_0
    return v2

    nop

    .array-data 1
    .end array-data
.end method

.method public static synthetic makeJob$default(Lcom/kakaogame/log/tracer/Tracer;Landroid/app/Activity;Ljava/lang/String;Ljava/util/Map;ILjava/lang/Object;)I
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p3, 0x0

    .line 1229
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/kakaogame/log/tracer/Tracer;->makeJob(Landroid/app/Activity;Ljava/lang/String;Ljava/util/Map;)I

    move-result p0

    return p0

    .array-data 1
    .end array-data
.end method

.method static synthetic makeJob$default(Lcom/kakaogame/log/tracer/Tracer;Ljava/lang/String;Ljava/util/Map;ILjava/lang/Object;)I
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 1469
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/kakaogame/log/tracer/Tracer;->makeJob(Ljava/lang/String;Ljava/util/Map;)I

    move-result p0

    return p0

    .array-data 1
    .end array-data
.end method

.method static synthetic makeJob$default(Lcom/kakaogame/log/tracer/Tracer;Ljava/lang/String;Ljava/util/Map;ZILjava/lang/Object;)I
    .locals 0

    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_0

    const/4 p2, 0x0

    .line 1319
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/kakaogame/log/tracer/Tracer;->makeJob(Ljava/lang/String;Ljava/util/Map;Z)I

    move-result p0

    return p0

    .array-data 1
    .end array-data
.end method

.method private static final makeJob$lambda$1(Landroid/app/Activity;)Landroid/app/Activity;
    .locals 0

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method private static final onInfodesk$lambda$0()V
    .locals 1

    .line 649
    sget-object v0, Lcom/kakaogame/log/tracer/Tracer;->INSTANCE:Lcom/kakaogame/log/tracer/Tracer;

    invoke-direct {v0}, Lcom/kakaogame/log/tracer/Tracer;->sendRttUrls()V

    return-void

    .array-data 1
    .end array-data
.end method

.method private final sendCompleted()V
    .locals 2

    .line 3809
    sget-object v0, Lcom/kakaogame/log/tracer/Tracer;->sendLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 3819
    :try_start_0
    sput-boolean v1, Lcom/kakaogame/log/tracer/Tracer;->isSendingTrace:Z

    .line 3829
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3809
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1

    nop

    .array-data 1
    .end array-data
.end method

.method private final sendFailure(Lcom/kakaogame/log/tracer/Trace;)V
    .locals 2

    .line 3079
    sget-object v0, Lcom/kakaogame/log/tracer/Tracer;->queueLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3089
    :try_start_0
    sget-object v1, Lcom/kakaogame/log/tracer/Tracer;->requestQueue:Ljava/util/LinkedList;

    invoke-virtual {v1, p1}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 3099
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3079
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1

    nop

    .array-data 1
    .end array-data
.end method

.method private final sendRttUrls()V
    .locals 14

    .line 859
    sget-object v0, Lcom/kakaogame/log/tracer/Tracer;->rttCheckUrlList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    sget v2, Lcom/kakaogame/log/tracer/Tracer;->rttSendingIndex:I

    if-ne v1, v2, :cond_1

    .line 869
    sget-object v0, Lcom/kakaogame/log/tracer/Tracer;->rttCheckTimer:Lcom/kakaogame/core/TimerManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/kakaogame/core/TimerManager;->stopTimer()V

    :cond_0
    return-void

    .line 899
    :cond_1
    sget-object v1, Lcom/kakaogame/core/CoreManager;->Companion:Lcom/kakaogame/core/CoreManager$Companion;

    invoke-virtual {v1}, Lcom/kakaogame/core/CoreManager$Companion;->getInstance()Lcom/kakaogame/core/CoreManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/kakaogame/core/CoreManager;->currentTimeMillis()J

    move-result-wide v3

    .line 909
    sget v1, Lcom/kakaogame/log/tracer/Tracer;->rttSendingIndex:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 919
    sget-object v5, Lcom/kakaogame/server/http/HttpService;->INSTANCE:Lcom/kakaogame/server/http/HttpService;

    .line 929
    sget-object v1, Lcom/kakaogame/core/CoreManager;->Companion:Lcom/kakaogame/core/CoreManager$Companion;

    invoke-virtual {v1}, Lcom/kakaogame/core/CoreManager$Companion;->getInstance()Lcom/kakaogame/core/CoreManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/kakaogame/core/CoreManager;->getContext()Landroid/content/Context;

    move-result-object v6

    const/4 v8, 0x0

    const/4 v9, 0x4

    const/4 v10, 0x0

    move-object v7, v0

    .line 919
    invoke-static/range {v5 .. v10}, Lcom/kakaogame/server/http/HttpService;->requestGETRttCheck$default(Lcom/kakaogame/server/http/HttpService;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lcom/kakaogame/server/KeyBaseResult;

    move-result-object v7

    .line 959
    sget-object v1, Lcom/kakaogame/core/CoreManager;->Companion:Lcom/kakaogame/core/CoreManager$Companion;

    invoke-virtual {v1}, Lcom/kakaogame/core/CoreManager$Companion;->getInstance()Lcom/kakaogame/core/CoreManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/kakaogame/core/CoreManager;->currentTimeMillis()J

    move-result-wide v1

    sub-long v5, v1, v3

    .line 969
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v1

    check-cast v1, Lkotlin/coroutines/CoroutineContext;

    invoke-static {v1}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v1

    const/4 v11, 0x0

    new-instance v12, Lcom/kakaogame/log/tracer/Tracer$sendRttUrls$1;

    const/4 v9, 0x0

    move-object v2, v12

    move-object v8, v0

    invoke-direct/range {v2 .. v9}, Lcom/kakaogame/log/tracer/Tracer$sendRttUrls$1;-><init>(JJLcom/kakaogame/server/KeyBaseResult;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    move-object v0, v12

    check-cast v0, Lkotlin/jvm/functions/Function2;

    const/4 v12, 0x3

    const/4 v13, 0x0

    move-object v8, v1

    move-object v9, v10

    move-object v10, v11

    move-object v11, v0

    invoke-static/range {v8 .. v13}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 1119
    sget v0, Lcom/kakaogame/log/tracer/Tracer;->rttSendingIndex:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/kakaogame/log/tracer/Tracer;->rttSendingIndex:I

    return-void

    .array-data 1
    .end array-data
.end method

.method private final sendStart()V
    .locals 2

    .line 3749
    sget-object v0, Lcom/kakaogame/log/tracer/Tracer;->sendLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    .line 3759
    :try_start_0
    sput-boolean v1, Lcom/kakaogame/log/tracer/Tracer;->isSendingTrace:Z

    .line 3769
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3749
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1

    nop

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public final finish(IILjava/lang/String;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const v0, 0x6d0a3cb8

    invoke-static {v0}, Lcom/liapp/y;->ٱڳܴڭܩ(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-gez p1, :cond_0

    return-void

    .line 1799
    :cond_0
    sget-object v0, Lcom/kakaogame/log/tracer/Tracer;->jobList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/kakaogame/log/tracer/Job;

    .line 1809
    invoke-virtual {p1, p2, p3, p4}, Lcom/kakaogame/log/tracer/Job;->finish(ILjava/lang/String;Ljava/util/Map;)Ljava/util/List;

    move-result-object p1

    .line 1859
    move-object p2, p1

    check-cast p2, Ljava/util/Collection;

    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    move-result p2

    xor-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_1

    .line 1869
    invoke-direct {p0, p1}, Lcom/kakaogame/log/tracer/Tracer;->addTraceList(Ljava/util/List;)V

    :cond_1
    return-void

    .array-data 1
    .end array-data
.end method

.method public final finishAction(ILcom/kakaogame/log/tracer/TraceLoginActionCode;ILjava/lang/String;)V
    .locals 9

    const v0, 0x543fd752

    invoke-static {v0}, Lcom/liapp/y;->׳ֳֳ֬د(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const v0, 0x6d0a3cb8

    invoke-static {v0}, Lcom/liapp/y;->ٱڳܴڭܩ(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2199
    invoke-virtual {p2}, Lcom/kakaogame/log/tracer/TraceLoginActionCode;->name()Ljava/lang/String;

    move-result-object p2

    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p2, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo p2, "toLowerCase(...)"

    invoke-static {v3, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v6, 0x0

    const/16 v7, 0x8

    const/4 v8, 0x0

    move-object v1, p0

    move v2, p1

    move v4, p3

    move-object v5, p4

    invoke-static/range {v1 .. v8}, Lcom/kakaogame/log/tracer/Tracer;->finishAction$default(Lcom/kakaogame/log/tracer/Tracer;ILjava/lang/String;ILjava/lang/String;Ljava/util/Map;ILjava/lang/Object;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method public final finishAction(ILjava/lang/String;ILjava/lang/String;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "I",
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

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const v0, 0x6d0a3cb8

    invoke-static {v0}, Lcom/liapp/y;->ٱڳܴڭܩ(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-gez p1, :cond_0

    return-void

    .line 2079
    :cond_0
    sget-object v0, Lcom/kakaogame/log/tracer/Tracer;->jobList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/kakaogame/log/tracer/Job;

    .line 2089
    invoke-virtual {p1, p2, p3, p4, p5}, Lcom/kakaogame/log/tracer/Job;->finishAction(Ljava/lang/String;ILjava/lang/String;Ljava/util/Map;)Lcom/kakaogame/log/tracer/Trace;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 2149
    sget-object p2, Lcom/kakaogame/log/tracer/Tracer;->INSTANCE:Lcom/kakaogame/log/tracer/Tracer;

    invoke-direct {p2, p1}, Lcom/kakaogame/log/tracer/Tracer;->addTrace(Lcom/kakaogame/log/tracer/Trace;)V

    :cond_1
    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public final getJobName(I)Ljava/lang/String;
    .locals 1

    if-gez p1, :cond_0

    const-string p1, "check_rtt"

    return-object p1

    .line 1699
    :cond_0
    sget-object v0, Lcom/kakaogame/log/tracer/Tracer;->jobList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/kakaogame/log/tracer/Job;

    .line 1709
    invoke-virtual {p1}, Lcom/kakaogame/log/tracer/Job;->getName()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .array-data 1
    .end array-data
.end method

.method public final getRttData()Ljava/lang/String;
    .locals 5

    .line 3209
    sget-object v0, Lcom/kakaogame/log/tracer/Tracer;->rttLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3219
    :try_start_0
    sget-object v1, Lcom/kakaogame/log/tracer/Tracer;->rttSendData:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/kakaogame/log/tracer/ApiCallRtt;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3209
    monitor-exit v0

    if-eqz v1, :cond_0

    .line 3249
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const v2, 0x7d7ddc25

    invoke-static {v2}, Lcom/liapp/y;->حֲݴܳޯ(I)Ljava/lang/String;

    move-result-object v2

    .line 3259
    invoke-virtual {v1}, Lcom/kakaogame/log/tracer/ApiCallRtt;->getJobId()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const v2, 0x336f6b5b

    invoke-static {v2}, Lcom/liapp/y;->ׯ״ٲ֬ب(I)Ljava/lang/String;

    move-result-object v2

    .line 3269
    invoke-virtual {v1}, Lcom/kakaogame/log/tracer/ApiCallRtt;->getJobName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const v2, -0x4518b62f

    invoke-static {v2}, Lcom/liapp/y;->ڳݬ٬ۮݪ(I)Ljava/lang/String;

    move-result-object v2

    .line 3279
    invoke-virtual {v1}, Lcom/kakaogame/log/tracer/ApiCallRtt;->getUri()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const v2, 0x2258d506

    invoke-static {v2}, Lcom/liapp/y;->ֲֳگܱޭ(I)Ljava/lang/String;

    move-result-object v2

    .line 3289
    invoke-virtual {v1}, Lcom/kakaogame/log/tracer/ApiCallRtt;->getOneWayRtt()J

    move-result-wide v3

    invoke-virtual {v0, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const v2, 0x2255ab56

    invoke-static {v2}, Lcom/liapp/y;->ֲֳگܱޭ(I)Ljava/lang/String;

    move-result-object v2

    .line 3299
    invoke-static {}, Lcom/kakaogame/KGSystem;->getDeviceId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const v2, -0x2244e9cc

    invoke-static {v2}, Lcom/liapp/y;->״دش۲ݮ(I)Ljava/lang/String;

    move-result-object v2

    .line 3309
    invoke-virtual {v1}, Lcom/kakaogame/log/tracer/ApiCallRtt;->getServerStartTime()J

    move-result-wide v3

    invoke-virtual {v0, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const v2, 0x336f782b

    invoke-static {v2}, Lcom/liapp/y;->ׯ״ٲ֬ب(I)Ljava/lang/String;

    move-result-object v2

    .line 3319
    invoke-virtual {v1}, Lcom/kakaogame/log/tracer/ApiCallRtt;->getServerResponseTime()J

    move-result-wide v3

    invoke-virtual {v0, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const v2, 0x6d01c098

    invoke-static {v2}, Lcom/liapp/y;->ٱڳܴڭܩ(I)Ljava/lang/String;

    move-result-object v2

    .line 3329
    invoke-virtual {v1}, Lcom/kakaogame/log/tracer/ApiCallRtt;->getServerElapsed()J

    move-result-wide v3

    invoke-virtual {v0, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const v1, 0x5434c06a

    invoke-static {v1}, Lcom/liapp/y;->׳ֳֳ֬د(I)Ljava/lang/String;

    move-result-object v1

    .line 3339
    new-instance v2, Ljava/lang/StringBuilder;

    const v3, 0x6d01c050

    invoke-static {v3}, Lcom/liapp/y;->ٱڳܴڭܩ(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3349
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    const v1, -0x451e20f7

    invoke-static {v1}, Lcom/liapp/y;->ڳݬ٬ۮݪ(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    const v1, -0x2241471c

    invoke-static {v1}, Lcom/liapp/y;->״دش۲ݮ(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :catchall_0
    move-exception v1

    .line 3209
    monitor-exit v0

    throw v1

    .array-data 1
    .end array-data
.end method

.method public final getTraceId()Ljava/lang/String;
    .locals 1

    .line 399
    sget-object v0, Lcom/kakaogame/log/tracer/Tracer;->traceId:Ljava/lang/String;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final makeCustomErrorCode(II)I
    .locals 1

    if-gez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 1639
    :cond_0
    sget-object v0, Lcom/kakaogame/log/tracer/Tracer;->jobList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/kakaogame/log/tracer/Job;

    .line 1649
    invoke-virtual {p1}, Lcom/kakaogame/log/tracer/Job;->getJobCode()Lcom/kakaogame/log/tracer/TraceJobCode;

    move-result-object p1

    invoke-virtual {p1}, Lcom/kakaogame/log/tracer/TraceJobCode;->getCode()I

    move-result p1

    add-int/lit16 p1, p1, 0x2710

    add-int/2addr p1, p2

    return p1

    .array-data 1
    .end array-data
.end method

.method public final makeJob(Landroid/app/Activity;Ljava/lang/String;Ljava/util/Map;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;)I"
        }
    .end annotation

    const v0, 0x543d14da

    invoke-static {v0}, Lcom/liapp/y;->׳ֳֳ֬د(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const v0, -0x451eea5f

    invoke-static {v0}, Lcom/liapp/y;->ڳݬ٬ۮݪ(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1239
    sget-object v0, Lcom/kakaogame/core/CoreManager;->Companion:Lcom/kakaogame/core/CoreManager$Companion;

    invoke-virtual {v0}, Lcom/kakaogame/core/CoreManager$Companion;->getInstance()Lcom/kakaogame/core/CoreManager;

    move-result-object v0

    new-instance v1, Lcom/kakaogame/log/tracer/Tracer$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1}, Lcom/kakaogame/log/tracer/Tracer$$ExternalSyntheticLambda0;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v0, v1}, Lcom/kakaogame/core/CoreManager;->setActivityHolder(Lkotlin/jvm/functions/Function0;)V

    const/4 p1, 0x1

    .line 1249
    invoke-direct {p0, p2, p3, p1}, Lcom/kakaogame/log/tracer/Tracer;->makeJob(Ljava/lang/String;Ljava/util/Map;Z)I

    move-result p1

    return p1

    .array-data 1
    .end array-data
.end method

.method public final makeJob(Lcom/kakaogame/log/tracer/TraceJobCode;)I
    .locals 7

    const v0, 0x6d0b76e8

    invoke-static {v0}, Lcom/liapp/y;->ٱڳܴڭܩ(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1179
    invoke-virtual {p1}, Lcom/kakaogame/log/tracer/TraceJobCode;->name()Ljava/lang/String;

    move-result-object p1

    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo p1, "toLowerCase(...)"

    invoke-static {v2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x0

    move-object v1, p0

    .line 1169
    invoke-static/range {v1 .. v6}, Lcom/kakaogame/log/tracer/Tracer;->makeJob$default(Lcom/kakaogame/log/tracer/Tracer;Ljava/lang/String;Ljava/util/Map;ZILjava/lang/Object;)I

    move-result p1

    return p1

    .array-data 1
    .end array-data
.end method

.method public final onInfodesk()V
    .locals 9

    .line 609
    sget-object v0, Lcom/kakaogame/log/tracer/Tracer;->rttCheckTimer:Lcom/kakaogame/core/TimerManager;

    if-nez v0, :cond_0

    .line 619
    sget-object v0, Lcom/kakaogame/infodesk/InfodeskHelper;->INSTANCE:Lcom/kakaogame/infodesk/InfodeskHelper;

    invoke-virtual {v0}, Lcom/kakaogame/infodesk/InfodeskHelper;->getRttSampleRate()I

    move-result v0

    .line 629
    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    .line 639
    new-instance v3, Lcom/kakaogame/log/tracer/Tracer$$ExternalSyntheticLambda1;

    invoke-direct {v3}, Lcom/kakaogame/log/tracer/Tracer$$ExternalSyntheticLambda1;-><init>()V

    .line 669
    new-instance v8, Lcom/kakaogame/core/TimerManager;

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0xbb8

    move-object v2, v8

    invoke-direct/range {v2 .. v7}, Lcom/kakaogame/core/TimerManager;-><init>(Ljava/lang/Runnable;JJ)V

    sput-object v8, Lcom/kakaogame/log/tracer/Tracer;->rttCheckTimer:Lcom/kakaogame/core/TimerManager;

    const/16 v2, 0x3e8

    .line 719
    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    if-ge v1, v0, :cond_0

    .line 729
    sget-object v0, Lcom/kakaogame/log/tracer/Tracer;->rttCheckUrlList:Ljava/util/List;

    sget-object v1, Lcom/kakaogame/infodesk/InfodeskHelper;->INSTANCE:Lcom/kakaogame/infodesk/InfodeskHelper;

    invoke-virtual {v1}, Lcom/kakaogame/infodesk/InfodeskHelper;->rttCheckUrls()Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 739
    sget-object v0, Lcom/kakaogame/log/tracer/Tracer;->rttCheckTimer:Lcom/kakaogame/core/TimerManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/kakaogame/core/TimerManager;->startTimer()V

    .line 769
    :cond_0
    sget-object v0, Lcom/kakaogame/infodesk/InfodeskHelper;->INSTANCE:Lcom/kakaogame/infodesk/InfodeskHelper;

    invoke-virtual {v0}, Lcom/kakaogame/infodesk/InfodeskHelper;->getSdkTraceStopNow()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 779
    sget-object v0, Lcom/kakaogame/log/tracer/TraceStatus;->DISABLED:Lcom/kakaogame/log/tracer/TraceStatus;

    sput-object v0, Lcom/kakaogame/log/tracer/Tracer;->enableTrace:Lcom/kakaogame/log/tracer/TraceStatus;

    .line 789
    sget-object v0, Lcom/kakaogame/log/tracer/Tracer;->requestQueue:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    goto :goto_0

    .line 809
    :cond_1
    invoke-virtual {p0}, Lcom/kakaogame/log/tracer/Tracer;->send()V

    :goto_0
    return-void

    .array-data 1
    .end array-data
.end method

.method public final requestUri(ILjava/lang/String;)J
    .locals 9

    const v0, -0x4518b62f

    invoke-static {v0}, Lcom/liapp/y;->ڳݬ٬ۮݪ(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const v0, 0x5434c06a

    invoke-static {v0}, Lcom/liapp/y;->׳ֳֳ֬د(I)Ljava/lang/String;

    move-result-object v0

    .line 2239
    new-instance v1, Ljava/lang/StringBuilder;

    const v2, -0x224f1484

    invoke-static {v2}, Lcom/liapp/y;->״دش۲ݮ(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const v2, 0x2258d7c6

    invoke-static {v2}, Lcom/liapp/y;->ֲֳگܱޭ(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-gez p1, :cond_0

    const-wide/16 p1, -0x1

    return-wide p1

    .line 2259
    :cond_0
    sget-object v0, Lcom/kakaogame/core/CoreManager;->Companion:Lcom/kakaogame/core/CoreManager$Companion;

    invoke-virtual {v0}, Lcom/kakaogame/core/CoreManager$Companion;->getInstance()Lcom/kakaogame/core/CoreManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kakaogame/core/CoreManager;->currentTimeMillis()J

    move-result-wide v7

    .line 2269
    new-instance v0, Lcom/kakaogame/log/tracer/ApiCallRtt;

    .line 2289
    invoke-virtual {p0, p1}, Lcom/kakaogame/log/tracer/Tracer;->getJobName(I)Ljava/lang/String;

    move-result-object v3

    move-object v1, v0

    move v2, p1

    move-object v4, p2

    move-wide v5, v7

    .line 2269
    invoke-direct/range {v1 .. v6}, Lcom/kakaogame/log/tracer/ApiCallRtt;-><init>(ILjava/lang/String;Ljava/lang/String;J)V

    .line 2329
    sget-object p1, Lcom/kakaogame/log/tracer/Tracer;->rttLock:Ljava/lang/Object;

    monitor-enter p1

    .line 2339
    :try_start_0
    sget-object p2, Lcom/kakaogame/log/tracer/Tracer;->rttList:Ljava/util/Map;

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {p2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/kakaogame/log/tracer/ApiCallRtt;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2329
    monitor-exit p1

    return-wide v7

    :catchall_0
    move-exception p2

    monitor-exit p1

    throw p2

    nop

    .array-data 1
    .end array-data
.end method

.method public final response(JLcom/kakaogame/util/json/JSONObject;)V
    .locals 12

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-gez v2, :cond_0

    return-void

    :cond_0
    const v2, 0x5434c06a

    invoke-static {v2}, Lcom/liapp/y;->׳ֳֳ֬د(I)Ljava/lang/String;

    move-result-object v2

    .line 2689
    new-instance v3, Ljava/lang/StringBuilder;

    const v4, -0x224f1484

    invoke-static {v4}, Lcom/liapp/y;->״دش۲ݮ(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x3a

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    if-eqz p3, :cond_1

    invoke-virtual {p3}, Lcom/kakaogame/util/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    :goto_0
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2709
    sget-object v2, Lcom/kakaogame/log/tracer/Tracer;->rttList:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_2

    return-void

    :cond_2
    if-nez p3, :cond_3

    return-void

    :cond_3
    const v3, -0x2244e9cc

    invoke-static {v3}, Lcom/liapp/y;->״دش۲ݮ(I)Ljava/lang/String;

    move-result-object v3

    .line 2729
    invoke-virtual {p3, v3}, Lcom/kakaogame/util/json/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    const v3, 0x336f782b

    invoke-static {v3}, Lcom/liapp/y;->ׯ״ٲ֬ب(I)Ljava/lang/String;

    move-result-object v3

    .line 2739
    invoke-virtual {p3, v3}, Lcom/kakaogame/util/json/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    const v3, -0x2244e9cc

    invoke-static {v3}, Lcom/liapp/y;->״دش۲ݮ(I)Ljava/lang/String;

    move-result-object v3

    .line 2749
    invoke-virtual {p3, v3}, Lcom/kakaogame/util/json/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    if-eqz v3, :cond_4

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    move-wide v6, v3

    goto :goto_1

    :cond_4
    move-wide v6, v0

    :goto_1
    const v3, 0x336f782b

    invoke-static {v3}, Lcom/liapp/y;->ׯ״ٲ֬ب(I)Ljava/lang/String;

    move-result-object v3

    .line 2759
    invoke-virtual {p3, v3}, Lcom/kakaogame/util/json/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Long;

    if-eqz p3, :cond_5

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    :cond_5
    move-wide v8, v0

    sub-long v10, v8, v6

    const-string p3, "sendTrace"

    .line 2779
    new-instance v0, Ljava/lang/StringBuilder;

    const v1, 0x5d1df737

    invoke-static {v1}, Lcom/liapp/y;->ڴݮگ֮ت(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const v1, 0x7d7dde75

    invoke-static {v1}, Lcom/liapp/y;->حֲݴܳޯ(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const v1, 0x336f7be3

    invoke-static {v1}, Lcom/liapp/y;->ׯ״ٲ֬ب(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2789
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    invoke-interface {v2, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    move-object v5, p3

    check-cast v5, Lcom/kakaogame/log/tracer/ApiCallRtt;

    if-eqz v5, :cond_7

    invoke-virtual/range {v5 .. v11}, Lcom/kakaogame/log/tracer/ApiCallRtt;->responseApi(JJJ)Lcom/kakaogame/log/tracer/ApiCallRtt;

    move-result-object p3

    if-eqz p3, :cond_7

    .line 2829
    sget-object v0, Lcom/kakaogame/log/tracer/Tracer;->rttLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2839
    :try_start_0
    sget-object v1, Lcom/kakaogame/log/tracer/Tracer;->rttSendData:Ljava/util/LinkedList;

    invoke-virtual {v1, p3}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 2849
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {v2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/kakaogame/log/tracer/ApiCallRtt;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2829
    monitor-exit v0

    goto :goto_2

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1

    .line 2889
    :cond_6
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {v2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/kakaogame/log/tracer/ApiCallRtt;

    :cond_7
    :goto_2
    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public final response(JLjava/util/Map;)V
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    move-wide/from16 v0, p1

    move-object/from16 v2, p3

    const-wide/16 v3, 0x0

    cmp-long v5, v0, v3

    if-gez v5, :cond_0

    return-void

    :cond_0
    const v5, 0x5434c06a

    invoke-static {v5}, Lcom/liapp/y;->׳ֳֳ֬د(I)Ljava/lang/String;

    move-result-object v5

    .line 2409
    new-instance v6, Ljava/lang/StringBuilder;

    const v7, -0x224f1484

    invoke-static {v7}, Lcom/liapp/y;->״دش۲ݮ(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const/16 v7, 0x3a

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    if-eqz v2, :cond_1

    invoke-virtual/range {p3 .. p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_0

    :cond_1
    const/4 v7, 0x0

    :goto_0
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2429
    sget-object v5, Lcom/kakaogame/log/tracer/Tracer;->rttList:Ljava/util/Map;

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_2

    return-void

    :cond_2
    if-nez v2, :cond_3

    return-void

    :cond_3
    const v6, -0x2244e9cc

    invoke-static {v6}, Lcom/liapp/y;->״دش۲ݮ(I)Ljava/lang/String;

    move-result-object v6

    .line 2449
    invoke-interface {v2, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    const v6, 0x336f782b

    invoke-static {v6}, Lcom/liapp/y;->ׯ״ٲ֬ب(I)Ljava/lang/String;

    move-result-object v6

    .line 2459
    invoke-interface {v2, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    const v6, -0x2244e9cc

    invoke-static {v6}, Lcom/liapp/y;->״دش۲ݮ(I)Ljava/lang/String;

    move-result-object v6

    .line 2469
    invoke-interface {v2, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    const/4 v7, 0x0

    if-eqz v6, :cond_4

    .line 2479
    move-object v8, v6

    check-cast v8, Ljava/util/Collection;

    invoke-interface {v8}, Ljava/util/Collection;->isEmpty()Z

    move-result v8

    xor-int/lit8 v8, v8, 0x1

    if-eqz v8, :cond_4

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    move-wide v11, v8

    goto :goto_1

    :cond_4
    move-wide v11, v3

    :goto_1
    const v6, 0x336f782b

    invoke-static {v6}, Lcom/liapp/y;->ׯ״ٲ֬ب(I)Ljava/lang/String;

    move-result-object v6

    .line 2489
    invoke-interface {v2, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    if-eqz v2, :cond_5

    .line 2499
    move-object v6, v2

    check-cast v6, Ljava/util/Collection;

    invoke-interface {v6}, Ljava/util/Collection;->isEmpty()Z

    move-result v6

    xor-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_5

    invoke-interface {v2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    :cond_5
    move-wide v13, v3

    sub-long v2, v13, v11

    const v4, 0x5434c06a

    invoke-static {v4}, Lcom/liapp/y;->׳ֳֳ֬د(I)Ljava/lang/String;

    move-result-object v4

    .line 2519
    new-instance v6, Ljava/lang/StringBuilder;

    const v7, 0x5d1df737

    invoke-static {v7}, Lcom/liapp/y;->ڴݮگ֮ت(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const v7, 0x7d7dde75

    invoke-static {v7}, Lcom/liapp/y;->حֲݴܳޯ(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const v7, 0x336f7be3

    invoke-static {v7}, Lcom/liapp/y;->ׯ״ٲ֬ب(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2529
    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v10, v4

    check-cast v10, Lcom/kakaogame/log/tracer/ApiCallRtt;

    if-eqz v10, :cond_7

    move-wide v15, v2

    invoke-virtual/range {v10 .. v16}, Lcom/kakaogame/log/tracer/ApiCallRtt;->responseApi(JJJ)Lcom/kakaogame/log/tracer/ApiCallRtt;

    move-result-object v2

    if-eqz v2, :cond_7

    .line 2569
    sget-object v3, Lcom/kakaogame/log/tracer/Tracer;->rttLock:Ljava/lang/Object;

    monitor-enter v3

    .line 2579
    :try_start_0
    sget-object v4, Lcom/kakaogame/log/tracer/Tracer;->rttSendData:Ljava/util/LinkedList;

    invoke-virtual {v4, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 2589
    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v5, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kakaogame/log/tracer/ApiCallRtt;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2569
    monitor-exit v3

    goto :goto_2

    :catchall_0
    move-exception v0

    monitor-exit v3

    throw v0

    .line 2629
    :cond_6
    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v5, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kakaogame/log/tracer/ApiCallRtt;

    :cond_7
    :goto_2
    return-void

    .array-data 1
    .end array-data
.end method

.method public final send()V
    .locals 7

    .line 3399
    sget-object v0, Lcom/kakaogame/log/tracer/Tracer;->requestQueue:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3409
    invoke-direct {p0}, Lcom/kakaogame/log/tracer/Tracer;->sendCompleted()V

    return-void

    .line 3439
    :cond_0
    invoke-direct {p0}, Lcom/kakaogame/log/tracer/Tracer;->isSending()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 3449
    :cond_1
    invoke-direct {p0}, Lcom/kakaogame/log/tracer/Tracer;->sendStart()V

    .line 3459
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    invoke-static {v0}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    new-instance v0, Lcom/kakaogame/log/tracer/Tracer$send$1;

    const/4 v4, 0x0

    invoke-direct {v0, v4}, Lcom/kakaogame/log/tracer/Tracer$send$1;-><init>(Lkotlin/coroutines/Continuation;)V

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

.method public final setTarget(I)V
    .locals 3

    .line 439
    new-instance v0, Ljava/lang/StringBuilder;

    const v1, -0x4514b0bf

    invoke-static {v1}, Lcom/liapp/y;->ڳݬ٬ۮݪ(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const v1, 0x5434c06a

    invoke-static {v1}, Lcom/liapp/y;->׳ֳֳ֬د(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 449
    sget-object v0, Lcom/kakaogame/infodesk/InfodeskHelper;->INSTANCE:Lcom/kakaogame/infodesk/InfodeskHelper;

    invoke-virtual {v0}, Lcom/kakaogame/infodesk/InfodeskHelper;->getSdkTraceStopNow()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 459
    sget-object p1, Lcom/kakaogame/log/tracer/TraceStatus;->DISABLED:Lcom/kakaogame/log/tracer/TraceStatus;

    sput-object p1, Lcom/kakaogame/log/tracer/Tracer;->enableTrace:Lcom/kakaogame/log/tracer/TraceStatus;

    goto :goto_1

    .line 479
    :cond_0
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    const/16 v2, 0x3e8

    .line 489
    invoke-virtual {v0, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    if-ge v0, p1, :cond_1

    sget-object p1, Lcom/kakaogame/log/tracer/TraceStatus;->ENABLED:Lcom/kakaogame/log/tracer/TraceStatus;

    goto :goto_0

    .line 499
    :cond_1
    sget-object p1, Lcom/kakaogame/log/tracer/TraceStatus;->DISABLED:Lcom/kakaogame/log/tracer/TraceStatus;

    .line 489
    :goto_0
    sput-object p1, Lcom/kakaogame/log/tracer/Tracer;->enableTrace:Lcom/kakaogame/log/tracer/TraceStatus;

    .line 509
    sget-object v0, Lcom/kakaogame/log/tracer/TraceStatus;->ENABLED:Lcom/kakaogame/log/tracer/TraceStatus;

    if-ne p1, v0, :cond_2

    const-string p1, "TARGETED!!!"

    .line 519
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 529
    sget-object p1, Lcom/kakaogame/core/CoreManager;->Companion:Lcom/kakaogame/core/CoreManager$Companion;

    invoke-virtual {p1}, Lcom/kakaogame/core/CoreManager$Companion;->getInstance()Lcom/kakaogame/core/CoreManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/kakaogame/core/CoreManager;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/kakaogame/log/tracer/Tracer;->tracingStartTime:J

    .line 539
    invoke-virtual {p0}, Lcom/kakaogame/log/tracer/Tracer;->send()V

    :cond_2
    :goto_1
    return-void

    .array-data 1
    .end array-data
.end method

.method public final startAction(ILcom/kakaogame/log/tracer/TraceLoginActionCode;)V
    .locals 1

    const v0, 0x543fd752

    invoke-static {v0}, Lcom/liapp/y;->׳ֳֳ֬د(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1919
    invoke-virtual {p2}, Lcom/kakaogame/log/tracer/TraceLoginActionCode;->name()Ljava/lang/String;

    move-result-object p2

    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p2, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p2

    const v0, 0x6d0bd780

    invoke-static {v0}, Lcom/liapp/y;->ٱڳܴڭܩ(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Lcom/kakaogame/log/tracer/Tracer;->startAction(ILjava/lang/String;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method public final startAction(ILjava/lang/String;)V
    .locals 1

    const v0, 0x543fd752

    invoke-static {v0}, Lcom/liapp/y;->׳ֳֳ֬د(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-gez p1, :cond_0

    return-void

    .line 1969
    :cond_0
    sget-object v0, Lcom/kakaogame/log/tracer/Tracer;->jobList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/kakaogame/log/tracer/Job;

    .line 1979
    invoke-virtual {p1, p2}, Lcom/kakaogame/log/tracer/Job;->addAction(Ljava/lang/String;)V

    return-void

    nop

    .array-data 1
    .end array-data
.end method
