.class public final synthetic Lcom/google/firebase/perf/session/SessionManager$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/google/firebase/perf/session/SessionManager;

.field public final synthetic f$1:Landroid/content/Context;

.field public final synthetic f$2:Lcom/google/firebase/perf/session/PerfSession;


# direct methods
.method public synthetic constructor <init>(Lcom/google/firebase/perf/session/SessionManager;Landroid/content/Context;Lcom/google/firebase/perf/session/PerfSession;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/perf/session/SessionManager$$ExternalSyntheticLambda0;->f$0:Lcom/google/firebase/perf/session/SessionManager;

    iput-object p2, p0, Lcom/google/firebase/perf/session/SessionManager$$ExternalSyntheticLambda0;->f$1:Landroid/content/Context;

    iput-object p3, p0, Lcom/google/firebase/perf/session/SessionManager$$ExternalSyntheticLambda0;->f$2:Lcom/google/firebase/perf/session/PerfSession;

    return-void

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/google/firebase/perf/session/SessionManager$$ExternalSyntheticLambda0;->f$0:Lcom/google/firebase/perf/session/SessionManager;

    iget-object v1, p0, Lcom/google/firebase/perf/session/SessionManager$$ExternalSyntheticLambda0;->f$1:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/firebase/perf/session/SessionManager$$ExternalSyntheticLambda0;->f$2:Lcom/google/firebase/perf/session/PerfSession;

    invoke-virtual {v0, v1, v2}, Lcom/google/firebase/perf/session/SessionManager;->lambda$setApplicationContext$0$com-google-firebase-perf-session-SessionManager(Landroid/content/Context;Lcom/google/firebase/perf/session/PerfSession;)V

    return-void

    .array-data 1
    .end array-data
.end method
