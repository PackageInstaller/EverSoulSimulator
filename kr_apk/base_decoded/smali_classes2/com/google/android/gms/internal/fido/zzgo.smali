.class final Lcom/google/android/gms/internal/fido/zzgo;
.super Lcom/google/android/gms/internal/fido/zzgq;
.source "com.google.android.gms:play-services-fido@@21.0.0"


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/fido/zzgx;

.field private zzb:I

.field private final zzc:I


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/fido/zzgx;)V
    .locals 1

    iput-object p1, p0, Lcom/google/android/gms/internal/fido/zzgo;->zza:Lcom/google/android/gms/internal/fido/zzgx;

    invoke-direct {p0}, Lcom/google/android/gms/internal/fido/zzgq;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/fido/zzgo;->zzb:I

    invoke-virtual {p1}, Lcom/google/android/gms/internal/fido/zzgx;->zzd()I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/fido/zzgo;->zzc:I

    return-void

    nop

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public final hasNext()Z
    .locals 2

    iget v0, p0, Lcom/google/android/gms/internal/fido/zzgo;->zzb:I

    iget v1, p0, Lcom/google/android/gms/internal/fido/zzgo;->zzc:I

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0

    .array-data 1
    .end array-data
.end method

.method public final zza()B
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/fido/zzgo;->zzb:I

    iget v1, p0, Lcom/google/android/gms/internal/fido/zzgo;->zzc:I

    if-ge v0, v1, :cond_0

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/google/android/gms/internal/fido/zzgo;->zzb:I

    iget-object v1, p0, Lcom/google/android/gms/internal/fido/zzgo;->zza:Lcom/google/android/gms/internal/fido/zzgx;

    .line 2
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/fido/zzgx;->zzb(I)B

    move-result v0

    return v0

    .line 1
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    nop

    .array-data 1
    .end array-data
.end method
