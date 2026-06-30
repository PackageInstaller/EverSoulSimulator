.class final Lcom/singular/sdk/internal/Utils$1;
.super Ljava/lang/Object;
.source "Utils.java"

# interfaces
.implements Lcom/google/android/gms/tasks/OnSuccessListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/singular/sdk/internal/Utils;->getAppSetId(Landroid/content/Context;)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/tasks/OnSuccessListener<",
        "Lcom/google/android/gms/appset/AppSetIdInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$appsetIdBlocker:Ljava/util/concurrent/BlockingQueue;

.field final synthetic val$interval:J


# direct methods
.method constructor <init>(Ljava/util/concurrent/BlockingQueue;J)V
    .locals 0

    .line 2409
    iput-object p1, p0, Lcom/singular/sdk/internal/Utils$1;->val$appsetIdBlocker:Ljava/util/concurrent/BlockingQueue;

    iput-wide p2, p0, Lcom/singular/sdk/internal/Utils$1;->val$interval:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public onSuccess(Lcom/google/android/gms/appset/AppSetIdInfo;)V
    .locals 2

    .line 2469
    invoke-virtual {p1}, Lcom/google/android/gms/appset/AppSetIdInfo;->getScope()I

    move-result v0

    invoke-static {v0}, Lcom/singular/sdk/internal/Utils;->access$002(I)I

    .line 2489
    iget-object v0, p0, Lcom/singular/sdk/internal/Utils$1;->val$appsetIdBlocker:Ljava/util/concurrent/BlockingQueue;

    invoke-virtual {p1}, Lcom/google/android/gms/appset/AppSetIdInfo;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/concurrent/BlockingQueue;->offer(Ljava/lang/Object;)Z

    .line 2499
    iget-wide v0, p0, Lcom/singular/sdk/internal/Utils$1;->val$interval:J

    invoke-static {v0, v1}, Lcom/singular/sdk/internal/Utils;->lagSince(J)D

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/singular/sdk/internal/Utils;->access$102(D)D

    return-void

    .array-data 1
    .end array-data
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 2409
    check-cast p1, Lcom/google/android/gms/appset/AppSetIdInfo;

    invoke-virtual {p0, p1}, Lcom/singular/sdk/internal/Utils$1;->onSuccess(Lcom/google/android/gms/appset/AppSetIdInfo;)V

    return-void

    .array-data 1
    .end array-data
.end method
