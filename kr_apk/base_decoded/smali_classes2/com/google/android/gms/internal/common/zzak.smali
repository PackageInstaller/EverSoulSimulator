.class final Lcom/google/android/gms/internal/common/zzak;
.super Lcom/google/android/gms/internal/common/zzal;
.source "com.google.android.gms:play-services-basement@@18.6.0"


# instance fields
.field final transient zza:I

.field final transient zzb:I

.field final synthetic zzc:Lcom/google/android/gms/internal/common/zzal;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/common/zzal;II)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/common/zzak;->zzc:Lcom/google/android/gms/internal/common/zzal;

    invoke-direct {p0}, Lcom/google/android/gms/internal/common/zzal;-><init>()V

    iput p2, p0, Lcom/google/android/gms/internal/common/zzak;->zza:I

    iput p3, p0, Lcom/google/android/gms/internal/common/zzak;->zzb:I

    return-void

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public final get(I)Ljava/lang/Object;
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/common/zzak;->zzb:I

    const-string v1, "index"

    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/common/zzv;->zza(IILjava/lang/String;)I

    iget-object v0, p0, Lcom/google/android/gms/internal/common/zzak;->zzc:Lcom/google/android/gms/internal/common/zzal;

    iget v1, p0, Lcom/google/android/gms/internal/common/zzak;->zza:I

    add-int/2addr p1, v1

    .line 2
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/common/zzal;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    nop

    .array-data 1
    .end array-data
.end method

.method public final size()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/common/zzak;->zzb:I

    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final bridge synthetic subList(II)Ljava/util/List;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/common/zzal;->zzi(II)Lcom/google/android/gms/internal/common/zzal;

    move-result-object p1

    return-object p1

    nop

    .array-data 1
    .end array-data
.end method

.method final zzb()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/common/zzak;->zzc:Lcom/google/android/gms/internal/common/zzal;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/common/zzag;->zzc()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/common/zzak;->zza:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/google/android/gms/internal/common/zzak;->zzb:I

    add-int/2addr v0, v1

    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method final zzc()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/common/zzak;->zzc:Lcom/google/android/gms/internal/common/zzal;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/common/zzag;->zzc()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/common/zzak;->zza:I

    add-int/2addr v0, v1

    return v0

    .array-data 1
    .end array-data
.end method

.method final zzf()Z
    .locals 1

    const/4 v0, 0x1

    return v0

    .array-data 1
    .end array-data
.end method

.method final zzg()[Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/common/zzak;->zzc:Lcom/google/android/gms/internal/common/zzal;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/common/zzag;->zzg()[Ljava/lang/Object;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final zzi(II)Lcom/google/android/gms/internal/common/zzal;
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/common/zzak;->zzb:I

    invoke-static {p1, p2, v0}, Lcom/google/android/gms/internal/common/zzv;->zzc(III)V

    iget v0, p0, Lcom/google/android/gms/internal/common/zzak;->zza:I

    iget-object v1, p0, Lcom/google/android/gms/internal/common/zzak;->zzc:Lcom/google/android/gms/internal/common/zzal;

    add-int/2addr p1, v0

    add-int/2addr p2, v0

    .line 2
    invoke-virtual {v1, p1, p2}, Lcom/google/android/gms/internal/common/zzal;->zzi(II)Lcom/google/android/gms/internal/common/zzal;

    move-result-object p1

    return-object p1

    .array-data 1
    .end array-data
.end method
