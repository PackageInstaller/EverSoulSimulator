.class final Lcom/google/android/gms/common/zzaa;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-basement@@18.6.0"


# instance fields
.field private final zza:Ljava/lang/String;

.field private final zzb:Z

.field private final zzc:Z


# direct methods
.method synthetic constructor <init>(Ljava/lang/String;ZZZZLcom/google/android/gms/common/zzr;Lcom/google/android/gms/common/zzz;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/common/zzaa;->zza:Ljava/lang/String;

    iput-boolean p2, p0, Lcom/google/android/gms/common/zzaa;->zzb:Z

    iput-boolean p5, p0, Lcom/google/android/gms/common/zzaa;->zzc:Z

    return-void

    .array-data 1
    .end array-data
.end method


# virtual methods
.method final zza(Landroid/content/Context;)Lcom/google/android/gms/common/zzs;
    .locals 9

    .line 1
    new-instance v8, Lcom/google/android/gms/common/zzs;

    invoke-static {p1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v4

    iget-object v1, p0, Lcom/google/android/gms/common/zzaa;->zza:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/google/android/gms/common/zzaa;->zzb:Z

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/common/zzs;-><init>(Ljava/lang/String;ZZLandroid/os/IBinder;ZZLcom/google/android/gms/common/zzr;)V

    return-object v8

    nop

    .array-data 1
    .end array-data
.end method

.method final zzb()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/common/zzaa;->zzc:Z

    return v0

    nop

    .array-data 1
    .end array-data
.end method
