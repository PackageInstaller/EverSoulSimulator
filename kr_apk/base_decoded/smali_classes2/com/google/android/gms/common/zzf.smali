.class public final synthetic Lcom/google/android/gms/common/zzf;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-basement@@18.6.0"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic zza:Z

.field public final synthetic zzb:Ljava/lang/String;

.field public final synthetic zzc:Lcom/google/android/gms/common/zzm;


# direct methods
.method public synthetic constructor <init>(ZLjava/lang/String;Lcom/google/android/gms/common/zzm;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/google/android/gms/common/zzf;->zza:Z

    iput-object p2, p0, Lcom/google/android/gms/common/zzf;->zzb:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/common/zzf;->zzc:Lcom/google/android/gms/common/zzm;

    return-void

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 3

    iget-boolean v0, p0, Lcom/google/android/gms/common/zzf;->zza:Z

    iget-object v1, p0, Lcom/google/android/gms/common/zzf;->zzb:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/common/zzf;->zzc:Lcom/google/android/gms/common/zzm;

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/common/zzq;->zzc(ZLjava/lang/String;Lcom/google/android/gms/common/zzm;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method
