.class public final synthetic Lcom/google/firebase/perf/config/DeviceCacheManager$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/google/firebase/perf/config/DeviceCacheManager;

.field public final synthetic f$1:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Lcom/google/firebase/perf/config/DeviceCacheManager;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/perf/config/DeviceCacheManager$$ExternalSyntheticLambda0;->f$0:Lcom/google/firebase/perf/config/DeviceCacheManager;

    iput-object p2, p0, Lcom/google/firebase/perf/config/DeviceCacheManager$$ExternalSyntheticLambda0;->f$1:Landroid/content/Context;

    return-void

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/firebase/perf/config/DeviceCacheManager$$ExternalSyntheticLambda0;->f$0:Lcom/google/firebase/perf/config/DeviceCacheManager;

    iget-object v1, p0, Lcom/google/firebase/perf/config/DeviceCacheManager$$ExternalSyntheticLambda0;->f$1:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/google/firebase/perf/config/DeviceCacheManager;->lambda$setContext$0$com-google-firebase-perf-config-DeviceCacheManager(Landroid/content/Context;)V

    return-void

    .array-data 1
    .end array-data
.end method
