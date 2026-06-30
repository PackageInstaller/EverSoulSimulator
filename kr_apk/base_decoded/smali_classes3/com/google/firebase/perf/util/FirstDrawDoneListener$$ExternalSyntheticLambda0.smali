.class public final synthetic Lcom/google/firebase/perf/util/FirstDrawDoneListener$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# instance fields
.field public final synthetic f$0:Lcom/google/firebase/perf/util/FirstDrawDoneListener;

.field public final synthetic f$1:Landroid/view/View;


# direct methods
.method public synthetic constructor <init>(Lcom/google/firebase/perf/util/FirstDrawDoneListener;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/perf/util/FirstDrawDoneListener$$ExternalSyntheticLambda0;->f$0:Lcom/google/firebase/perf/util/FirstDrawDoneListener;

    iput-object p2, p0, Lcom/google/firebase/perf/util/FirstDrawDoneListener$$ExternalSyntheticLambda0;->f$1:Landroid/view/View;

    return-void

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public final onGlobalLayout()V
    .locals 2

    iget-object v0, p0, Lcom/google/firebase/perf/util/FirstDrawDoneListener$$ExternalSyntheticLambda0;->f$0:Lcom/google/firebase/perf/util/FirstDrawDoneListener;

    iget-object v1, p0, Lcom/google/firebase/perf/util/FirstDrawDoneListener$$ExternalSyntheticLambda0;->f$1:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/google/firebase/perf/util/FirstDrawDoneListener;->lambda$onDraw$0$com-google-firebase-perf-util-FirstDrawDoneListener(Landroid/view/View;)V

    return-void

    .array-data 1
    .end array-data
.end method
