.class public Lcom/google/firebase/perf/util/FirstDrawDoneListener;
.super Ljava/lang/Object;
.source "FirstDrawDoneListener.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnDrawListener;


# instance fields
.field private final callback:Ljava/lang/Runnable;

.field private final mainThreadHandler:Landroid/os/Handler;

.field private final viewReference:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/view/View;Ljava/lang/Runnable;)V
    .locals 2

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Landroid/os/Handler;

    .line 31
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/google/firebase/perf/util/FirstDrawDoneListener;->mainThreadHandler:Landroid/os/Handler;

    .line 62
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/firebase/perf/util/FirstDrawDoneListener;->viewReference:Ljava/util/concurrent/atomic/AtomicReference;

    .line 63
    iput-object p2, p0, Lcom/google/firebase/perf/util/FirstDrawDoneListener;->callback:Ljava/lang/Runnable;

    return-void

    .array-data 1
    .end array-data
.end method

.method private static isAliveAndAttached(Landroid/view/View;)Z
    .locals 1

    .line 90
    invoke-virtual {p0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/google/firebase/perf/util/FirstDrawDoneListener;->isAttachedToWindow(Landroid/view/View;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0

    .array-data 1
    .end array-data
.end method

.method private static isAttachedToWindow(Landroid/view/View;)Z
    .locals 0

    .line 96
    invoke-virtual {p0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result p0

    return p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static registerForNextDraw(Landroid/view/View;Ljava/lang/Runnable;)V
    .locals 2

    .line 38
    new-instance v0, Lcom/google/firebase/perf/util/FirstDrawDoneListener;

    invoke-direct {v0, p0, p1}, Lcom/google/firebase/perf/util/FirstDrawDoneListener;-><init>(Landroid/view/View;Ljava/lang/Runnable;)V

    .line 42
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-ge p1, v1, :cond_0

    invoke-static {p0}, Lcom/google/firebase/perf/util/FirstDrawDoneListener;->isAliveAndAttached(Landroid/view/View;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 43
    new-instance p1, Lcom/google/firebase/perf/util/FirstDrawDoneListener$1;

    invoke-direct {p1, v0}, Lcom/google/firebase/perf/util/FirstDrawDoneListener$1;-><init>(Lcom/google/firebase/perf/util/FirstDrawDoneListener;)V

    invoke-virtual {p0, p1}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    goto :goto_0

    .line 57
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/view/ViewTreeObserver;->addOnDrawListener(Landroid/view/ViewTreeObserver$OnDrawListener;)V

    :goto_0
    return-void

    .array-data 1
    .end array-data
.end method


# virtual methods
.method synthetic lambda$onDraw$0$com-google-firebase-perf-util-FirstDrawDoneListener(Landroid/view/View;)V
    .locals 0

    .line 76
    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/ViewTreeObserver;->removeOnDrawListener(Landroid/view/ViewTreeObserver$OnDrawListener;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method public onDraw()V
    .locals 3

    .line 69
    iget-object v0, p0, Lcom/google/firebase/perf/util/FirstDrawDoneListener;->viewReference:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    .line 75
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    new-instance v2, Lcom/google/firebase/perf/util/FirstDrawDoneListener$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, v0}, Lcom/google/firebase/perf/util/FirstDrawDoneListener$$ExternalSyntheticLambda0;-><init>(Lcom/google/firebase/perf/util/FirstDrawDoneListener;Landroid/view/View;)V

    .line 76
    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 77
    iget-object v0, p0, Lcom/google/firebase/perf/util/FirstDrawDoneListener;->mainThreadHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/firebase/perf/util/FirstDrawDoneListener;->callback:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    return-void

    .array-data 1
    .end array-data
.end method
