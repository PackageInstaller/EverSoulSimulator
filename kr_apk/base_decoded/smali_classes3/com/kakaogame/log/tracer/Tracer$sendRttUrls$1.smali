.class final Lcom/kakaogame/log/tracer/Tracer$sendRttUrls$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "Tracer.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kakaogame/log/tracer/Tracer;->sendRttUrls()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lkotlinx/coroutines/CoroutineScope;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"
    }
    d2 = {
        "<anonymous>",
        "",
        "Lkotlinx/coroutines/CoroutineScope;"
    }
    k = 0x3
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.kakaogame.log.tracer.Tracer$sendRttUrls$1"
    f = "Tracer.kt"
    i = {}
    l = {}
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $requestTime:J

.field final synthetic $result:Lcom/kakaogame/server/KeyBaseResult;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/kakaogame/server/KeyBaseResult<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $rtt:J

.field final synthetic $url:Ljava/lang/String;

.field label:I


# direct methods
.method constructor <init>(JJLcom/kakaogame/server/KeyBaseResult;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Lcom/kakaogame/server/KeyBaseResult<",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/kakaogame/log/tracer/Tracer$sendRttUrls$1;",
            ">;)V"
        }
    .end annotation

    iput-wide p1, p0, Lcom/kakaogame/log/tracer/Tracer$sendRttUrls$1;->$requestTime:J

    iput-wide p3, p0, Lcom/kakaogame/log/tracer/Tracer$sendRttUrls$1;->$rtt:J

    iput-object p5, p0, Lcom/kakaogame/log/tracer/Tracer$sendRttUrls$1;->$result:Lcom/kakaogame/server/KeyBaseResult;

    iput-object p6, p0, Lcom/kakaogame/log/tracer/Tracer$sendRttUrls$1;->$url:Ljava/lang/String;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p7}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void

    nop

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlin/coroutines/Continuation<",
            "*>;)",
            "Lkotlin/coroutines/Continuation<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    new-instance p1, Lcom/kakaogame/log/tracer/Tracer$sendRttUrls$1;

    iget-wide v1, p0, Lcom/kakaogame/log/tracer/Tracer$sendRttUrls$1;->$requestTime:J

    iget-wide v3, p0, Lcom/kakaogame/log/tracer/Tracer$sendRttUrls$1;->$rtt:J

    iget-object v5, p0, Lcom/kakaogame/log/tracer/Tracer$sendRttUrls$1;->$result:Lcom/kakaogame/server/KeyBaseResult;

    iget-object v6, p0, Lcom/kakaogame/log/tracer/Tracer$sendRttUrls$1;->$url:Ljava/lang/String;

    move-object v0, p1

    move-object v7, p2

    invoke-direct/range {v0 .. v7}, Lcom/kakaogame/log/tracer/Tracer$sendRttUrls$1;-><init>(JJLcom/kakaogame/server/KeyBaseResult;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlin/coroutines/Continuation;

    return-object p1

    .array-data 1
    .end array-data
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/kakaogame/log/tracer/Tracer$sendRttUrls$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    nop

    .array-data 1
    .end array-data
.end method

.method public final invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/CoroutineScope;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/kakaogame/log/tracer/Tracer$sendRttUrls$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/kakaogame/log/tracer/Tracer$sendRttUrls$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/kakaogame/log/tracer/Tracer$sendRttUrls$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    nop

    .array-data 1
    .end array-data
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 13

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 969
    iget v0, p0, Lcom/kakaogame/log/tracer/Tracer$sendRttUrls$1;->label:I

    if-nez v0, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 979
    sget-object p1, Lcom/kakaogame/log/service/TracerService;->INSTANCE:Lcom/kakaogame/log/service/TracerService;

    .line 989
    invoke-static {}, Lcom/kakaogame/log/tracer/Tracer;->access$getTraceId$p()Ljava/lang/String;

    move-result-object v0

    .line 999
    new-instance v12, Lcom/kakaogame/log/tracer/Trace;

    const/4 v2, -0x1

    const v3, -0x224f0a8c

    invoke-static {v3}, Lcom/liapp/y;->״دش۲ݮ(I)Ljava/lang/String;

    move-result-object v3

    const v4, -0x224f0a8c

    invoke-static {v4}, Lcom/liapp/y;->״دش۲ݮ(I)Ljava/lang/String;

    move-result-object v4

    .line 1039
    iget-wide v5, p0, Lcom/kakaogame/log/tracer/Tracer$sendRttUrls$1;->$requestTime:J

    .line 1049
    iget-wide v7, p0, Lcom/kakaogame/log/tracer/Tracer$sendRttUrls$1;->$rtt:J

    .line 1059
    iget-object v1, p0, Lcom/kakaogame/log/tracer/Tracer$sendRttUrls$1;->$result:Lcom/kakaogame/server/KeyBaseResult;

    invoke-virtual {v1}, Lcom/kakaogame/server/KeyBaseResult;->getCode()I

    move-result v9

    .line 1069
    iget-object v1, p0, Lcom/kakaogame/log/tracer/Tracer$sendRttUrls$1;->$result:Lcom/kakaogame/server/KeyBaseResult;

    invoke-virtual {v1}, Lcom/kakaogame/server/KeyBaseResult;->getDescription()Ljava/lang/String;

    move-result-object v10

    .line 1079
    iget-object v11, p0, Lcom/kakaogame/log/tracer/Tracer$sendRttUrls$1;->$url:Ljava/lang/String;

    move-object v1, v12

    .line 999
    invoke-direct/range {v1 .. v11}, Lcom/kakaogame/log/tracer/Trace;-><init>(ILjava/lang/String;Ljava/lang/String;JJILjava/lang/String;Ljava/lang/String;)V

    .line 979
    invoke-virtual {p1, v0, v12}, Lcom/kakaogame/log/service/TracerService;->sendTrace(Ljava/lang/String;Lcom/kakaogame/log/tracer/Trace;)Lcom/kakaogame/KGResult;

    .line 1109
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 969
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const v0, -0x451e018f

    invoke-static {v0}, Lcom/liapp/y;->ڳݬ٬ۮݪ(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .array-data 1
    .end array-data
.end method
