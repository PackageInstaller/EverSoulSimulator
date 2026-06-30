.class final Lcom/google/android/gms/internal/measurement/zzkw;
.super Lcom/google/android/gms/internal/measurement/zzkx;
.source "com.google.android.gms:play-services-measurement-base@@22.4.0"


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/measurement/zzld;

.field private zzb:I

.field private final zzc:I


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/measurement/zzld;)V
    .locals 1

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzkw;->zza:Lcom/google/android/gms/internal/measurement/zzld;

    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzkx;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzkw;->zzb:I

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzld;->zzd()I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/measurement/zzkw;->zzc:I

    return-void

    nop

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public final hasNext()Z
    .locals 2

    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzkw;->zzb:I

    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzkw;->zzc:I

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
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzkw;->zzb:I

    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzkw;->zzc:I

    if-ge v0, v1, :cond_0

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/google/android/gms/internal/measurement/zzkw;->zzb:I

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzkw;->zza:Lcom/google/android/gms/internal/measurement/zzld;

    .line 2
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/measurement/zzld;->zzb(I)B

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
