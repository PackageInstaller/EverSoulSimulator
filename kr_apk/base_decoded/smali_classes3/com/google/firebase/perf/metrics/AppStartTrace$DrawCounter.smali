.class final Lcom/google/firebase/perf/metrics/AppStartTrace$DrawCounter;
.super Ljava/lang/Object;
.source "AppStartTrace.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/perf/metrics/AppStartTrace;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "DrawCounter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/firebase/perf/metrics/AppStartTrace;


# direct methods
.method private constructor <init>(Lcom/google/firebase/perf/metrics/AppStartTrace;)V
    .locals 0

    .line 578
    iput-object p1, p0, Lcom/google/firebase/perf/metrics/AppStartTrace$DrawCounter;->this$0:Lcom/google/firebase/perf/metrics/AppStartTrace;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void

    .array-data 1
    .end array-data
.end method

.method synthetic constructor <init>(Lcom/google/firebase/perf/metrics/AppStartTrace;Lcom/google/firebase/perf/metrics/AppStartTrace$1;)V
    .locals 0

    .line 578
    invoke-direct {p0, p1}, Lcom/google/firebase/perf/metrics/AppStartTrace$DrawCounter;-><init>(Lcom/google/firebase/perf/metrics/AppStartTrace;)V

    return-void

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public onDraw()V
    .locals 1

    .line 581
    iget-object v0, p0, Lcom/google/firebase/perf/metrics/AppStartTrace$DrawCounter;->this$0:Lcom/google/firebase/perf/metrics/AppStartTrace;

    invoke-static {v0}, Lcom/google/firebase/perf/metrics/AppStartTrace;->access$308(Lcom/google/firebase/perf/metrics/AppStartTrace;)I

    return-void

    .array-data 1
    .end array-data
.end method
