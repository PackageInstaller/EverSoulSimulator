.class final Lcom/google/android/gms/internal/play_billing/zzfa;
.super Lcom/google/android/gms/internal/play_billing/zzex;
.source "com.android.billingclient:billing@@7.1.1"

# interfaces
.implements Lcom/google/android/gms/internal/play_billing/zzew;


# instance fields
.field final zza:Ljava/util/concurrent/ScheduledExecutorService;


# direct methods
.method constructor <init>(Ljava/util/concurrent/ScheduledExecutorService;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/play_billing/zzex;-><init>(Ljava/util/concurrent/ExecutorService;)V

    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    move-object v0, p1

    check-cast v0, Ljava/util/concurrent/ScheduledExecutorService;

    iput-object p1, p0, Lcom/google/android/gms/internal/play_billing/zzfa;->zza:Ljava/util/concurrent/ScheduledExecutorService;

    return-void

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public final bridge synthetic schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzfa;->zza:Ljava/util/concurrent/ScheduledExecutorService;

    const/4 v1, 0x0

    invoke-static {p1, v1}, Lcom/google/android/gms/internal/play_billing/zzfh;->zzr(Ljava/lang/Runnable;Ljava/lang/Object;)Lcom/google/android/gms/internal/play_billing/zzfh;

    move-result-object p1

    .line 2
    invoke-interface {v0, p1, p2, p3, p4}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object p2

    .line 3
    new-instance p3, Lcom/google/android/gms/internal/play_billing/zzey;

    invoke-direct {p3, p1, p2}, Lcom/google/android/gms/internal/play_billing/zzey;-><init>(Lcom/google/android/gms/internal/play_billing/zzeu;Ljava/util/concurrent/ScheduledFuture;)V

    return-object p3

    nop

    .array-data 1
    .end array-data
.end method

.method public final bridge synthetic schedule(Ljava/util/concurrent/Callable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;
    .locals 1

    .line 4
    new-instance v0, Lcom/google/android/gms/internal/play_billing/zzfh;

    .line 5
    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/play_billing/zzfh;-><init>(Ljava/util/concurrent/Callable;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/play_billing/zzfa;->zza:Ljava/util/concurrent/ScheduledExecutorService;

    .line 6
    invoke-interface {p1, v0, p2, p3, p4}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object p1

    .line 7
    new-instance p2, Lcom/google/android/gms/internal/play_billing/zzey;

    invoke-direct {p2, v0, p1}, Lcom/google/android/gms/internal/play_billing/zzey;-><init>(Lcom/google/android/gms/internal/play_billing/zzeu;Ljava/util/concurrent/ScheduledFuture;)V

    return-object p2

    nop

    .array-data 1
    .end array-data
.end method

.method public final bridge synthetic scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;
    .locals 8

    .line 1
    new-instance v7, Lcom/google/android/gms/internal/play_billing/zzez;

    invoke-direct {v7, p1}, Lcom/google/android/gms/internal/play_billing/zzez;-><init>(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzfa;->zza:Ljava/util/concurrent/ScheduledExecutorService;

    move-object v1, v7

    move-wide v2, p2

    move-wide v4, p4

    move-object v6, p6

    .line 2
    invoke-interface/range {v0 .. v6}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object p1

    .line 3
    new-instance p2, Lcom/google/android/gms/internal/play_billing/zzey;

    invoke-direct {p2, v7, p1}, Lcom/google/android/gms/internal/play_billing/zzey;-><init>(Lcom/google/android/gms/internal/play_billing/zzeu;Ljava/util/concurrent/ScheduledFuture;)V

    return-object p2

    nop

    .array-data 1
    .end array-data
.end method

.method public final bridge synthetic scheduleWithFixedDelay(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;
    .locals 8

    .line 1
    new-instance v7, Lcom/google/android/gms/internal/play_billing/zzez;

    invoke-direct {v7, p1}, Lcom/google/android/gms/internal/play_billing/zzez;-><init>(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzfa;->zza:Ljava/util/concurrent/ScheduledExecutorService;

    move-object v1, v7

    move-wide v2, p2

    move-wide v4, p4

    move-object v6, p6

    .line 2
    invoke-interface/range {v0 .. v6}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleWithFixedDelay(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object p1

    .line 3
    new-instance p2, Lcom/google/android/gms/internal/play_billing/zzey;

    invoke-direct {p2, v7, p1}, Lcom/google/android/gms/internal/play_billing/zzey;-><init>(Lcom/google/android/gms/internal/play_billing/zzeu;Ljava/util/concurrent/ScheduledFuture;)V

    return-object p2

    nop

    .array-data 1
    .end array-data
.end method
