.class Lcom/google/firebase/remoteconfig/internal/ConfigAutoFetch$1;
.super Ljava/lang/Object;
.source "ConfigAutoFetch.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/firebase/remoteconfig/internal/ConfigAutoFetch;->autoFetch(IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/firebase/remoteconfig/internal/ConfigAutoFetch;

.field final synthetic val$remainingAttempts:I

.field final synthetic val$targetVersion:J


# direct methods
.method constructor <init>(Lcom/google/firebase/remoteconfig/internal/ConfigAutoFetch;IJ)V
    .locals 0

    .line 204
    iput-object p1, p0, Lcom/google/firebase/remoteconfig/internal/ConfigAutoFetch$1;->this$0:Lcom/google/firebase/remoteconfig/internal/ConfigAutoFetch;

    iput p2, p0, Lcom/google/firebase/remoteconfig/internal/ConfigAutoFetch$1;->val$remainingAttempts:I

    iput-wide p3, p0, Lcom/google/firebase/remoteconfig/internal/ConfigAutoFetch$1;->val$targetVersion:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 207
    iget-object v0, p0, Lcom/google/firebase/remoteconfig/internal/ConfigAutoFetch$1;->this$0:Lcom/google/firebase/remoteconfig/internal/ConfigAutoFetch;

    iget v1, p0, Lcom/google/firebase/remoteconfig/internal/ConfigAutoFetch$1;->val$remainingAttempts:I

    iget-wide v2, p0, Lcom/google/firebase/remoteconfig/internal/ConfigAutoFetch$1;->val$targetVersion:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/firebase/remoteconfig/internal/ConfigAutoFetch;->fetchLatestConfig(IJ)Lcom/google/android/gms/tasks/Task;

    return-void

    .array-data 1
    .end array-data
.end method
