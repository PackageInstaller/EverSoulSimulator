.class public Lcom/google/firebase/perf/util/PreDrawListener;
.super Ljava/lang/Object;
.source "PreDrawListener.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# instance fields
.field private final callbackBoQ:Ljava/lang/Runnable;

.field private final callbackFoQ:Ljava/lang/Runnable;

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
.method private constructor <init>(Landroid/view/View;Ljava/lang/Runnable;Ljava/lang/Runnable;)V
    .locals 2

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Landroid/os/Handler;

    .line 30
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/google/firebase/perf/util/PreDrawListener;->mainThreadHandler:Landroid/os/Handler;

    .line 45
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/firebase/perf/util/PreDrawListener;->viewReference:Ljava/util/concurrent/atomic/AtomicReference;

    .line 46
    iput-object p2, p0, Lcom/google/firebase/perf/util/PreDrawListener;->callbackBoQ:Ljava/lang/Runnable;

    .line 47
    iput-object p3, p0, Lcom/google/firebase/perf/util/PreDrawListener;->callbackFoQ:Ljava/lang/Runnable;

    return-void

    .array-data 1
    .end array-data
.end method

.method public static registerForNextDraw(Landroid/view/View;Ljava/lang/Runnable;Ljava/lang/Runnable;)V
    .locals 1

    .line 39
    new-instance v0, Lcom/google/firebase/perf/util/PreDrawListener;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/firebase/perf/util/PreDrawListener;-><init>(Landroid/view/View;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    .line 41
    invoke-virtual {p0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    return-void

    nop

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 3

    .line 53
    iget-object v0, p0, Lcom/google/firebase/perf/util/PreDrawListener;->viewReference:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    .line 57
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 58
    iget-object v0, p0, Lcom/google/firebase/perf/util/PreDrawListener;->mainThreadHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/google/firebase/perf/util/PreDrawListener;->callbackBoQ:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 59
    iget-object v0, p0, Lcom/google/firebase/perf/util/PreDrawListener;->mainThreadHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/google/firebase/perf/util/PreDrawListener;->callbackFoQ:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    return v1

    nop

    .array-data 1
    .end array-data
.end method
