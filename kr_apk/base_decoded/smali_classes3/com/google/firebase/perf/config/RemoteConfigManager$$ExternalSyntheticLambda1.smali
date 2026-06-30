.class public final synthetic Lcom/google/firebase/perf/config/RemoteConfigManager$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/google/android/gms/tasks/OnFailureListener;


# instance fields
.field public final synthetic f$0:Lcom/google/firebase/perf/config/RemoteConfigManager;


# direct methods
.method public synthetic constructor <init>(Lcom/google/firebase/perf/config/RemoteConfigManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/perf/config/RemoteConfigManager$$ExternalSyntheticLambda1;->f$0:Lcom/google/firebase/perf/config/RemoteConfigManager;

    return-void

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public final onFailure(Ljava/lang/Exception;)V
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/perf/config/RemoteConfigManager$$ExternalSyntheticLambda1;->f$0:Lcom/google/firebase/perf/config/RemoteConfigManager;

    invoke-virtual {v0, p1}, Lcom/google/firebase/perf/config/RemoteConfigManager;->lambda$triggerFirebaseRemoteConfigFetchAndActivateOnSuccessfulFetch$1$com-google-firebase-perf-config-RemoteConfigManager(Ljava/lang/Exception;)V

    return-void

    .array-data 1
    .end array-data
.end method
