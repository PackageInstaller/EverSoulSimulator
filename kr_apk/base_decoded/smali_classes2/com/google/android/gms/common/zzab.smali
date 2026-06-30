.class final Lcom/google/android/gms/common/zzab;
.super Lcom/google/android/gms/common/zzad;
.source "com.google.android.gms:play-services-basement@@18.6.0"


# instance fields
.field private final zzf:Ljava/util/concurrent/Callable;


# direct methods
.method synthetic constructor <init>(Ljava/util/concurrent/Callable;Lcom/google/android/gms/common/zzac;)V
    .locals 10

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x5

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-wide/16 v6, -0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v0, p0

    .line 1
    invoke-direct/range {v0 .. v9}, Lcom/google/android/gms/common/zzad;-><init>(ZIILjava/lang/String;Ljava/lang/Throwable;JLcom/google/android/gms/common/zzad;Lcom/google/android/gms/common/zzac;)V

    iput-object p1, p0, Lcom/google/android/gms/common/zzab;->zzf:Ljava/util/concurrent/Callable;

    return-void

    .array-data 1
    .end array-data
.end method


# virtual methods
.method final zza()Ljava/lang/String;
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/common/zzab;->zzf:Ljava/util/concurrent/Callable;

    invoke-interface {v0}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    .line 2
    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .array-data 1
    .end array-data
.end method
