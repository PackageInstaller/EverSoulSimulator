.class final Lcom/google/android/gms/internal/fido/zzci;
.super Lcom/google/android/gms/internal/fido/zzce;
.source "com.google.android.gms:play-services-fido@@21.0.0"


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/fido/zzcj;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/fido/zzcj;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/fido/zzci;->zza:Lcom/google/android/gms/internal/fido/zzcj;

    invoke-direct {p0}, Lcom/google/android/gms/internal/fido/zzce;-><init>()V

    return-void

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public final synthetic iterator()Ljava/util/Iterator;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/fido/zzcf;->zzi()Lcom/google/android/gms/internal/fido/zzcc;

    move-result-object v0

    const/4 v1, 0x0

    .line 2
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/fido/zzcc;->zzk(I)Lcom/google/android/gms/internal/fido/zzdd;

    move-result-object v0

    return-object v0

    .array-data 1
    .end array-data
.end method

.method public final zzd()Lcom/google/android/gms/internal/fido/zzdc;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/fido/zzcf;->zzi()Lcom/google/android/gms/internal/fido/zzcc;

    move-result-object v0

    const/4 v1, 0x0

    .line 2
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/fido/zzcc;->zzk(I)Lcom/google/android/gms/internal/fido/zzdd;

    move-result-object v0

    return-object v0

    .array-data 1
    .end array-data
.end method

.method final zzf()Lcom/google/android/gms/internal/fido/zzcd;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/fido/zzci;->zza:Lcom/google/android/gms/internal/fido/zzcj;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method final zzj()Lcom/google/android/gms/internal/fido/zzcc;
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/fido/zzch;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/fido/zzch;-><init>(Lcom/google/android/gms/internal/fido/zzci;)V

    return-object v0

    .array-data 1
    .end array-data
.end method
