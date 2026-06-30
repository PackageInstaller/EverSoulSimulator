.class final Lcom/google/android/gms/measurement/internal/zzpq;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement@@22.4.0"

# interfaces
.implements Lcom/google/android/gms/measurement/internal/zzqe;


# instance fields
.field final synthetic zza:Lcom/google/android/gms/measurement/internal/zzpv;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/zzpv;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzpq;->zza:Lcom/google/android/gms/measurement/internal/zzpv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public final zza(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 2

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzpq;->zza:Lcom/google/android/gms/measurement/internal/zzpv;

    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzpv;->zzs(Lcom/google/android/gms/measurement/internal/zzpv;)Lcom/google/android/gms/measurement/internal/zzio;

    move-result-object p3

    if-eqz p3, :cond_0

    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzpv;->zzs(Lcom/google/android/gms/measurement/internal/zzpv;)Lcom/google/android/gms/measurement/internal/zzio;

    move-result-object p1

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzio;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzhe;->zze()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object p1

    const-string p3, "AppId not known when logging event"

    invoke-virtual {p1, p3, p2}, Lcom/google/android/gms/measurement/internal/zzhc;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzpq;->zza:Lcom/google/android/gms/measurement/internal/zzpv;

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzpv;->zzaX()Lcom/google/android/gms/measurement/internal/zzil;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/measurement/internal/zzpp;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/google/android/gms/measurement/internal/zzpp;-><init>(Lcom/google/android/gms/measurement/internal/zzpq;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 4
    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzil;->zzq(Ljava/lang/Runnable;)V

    return-void

    nop

    .array-data 1
    .end array-data
.end method
