.class final Lcom/google/android/gms/internal/common/zzaj;
.super Lcom/google/android/gms/internal/common/zzal;
.source "com.google.android.gms:play-services-basement@@18.6.0"


# instance fields
.field private final transient zza:Lcom/google/android/gms/internal/common/zzal;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/common/zzal;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/common/zzal;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/common/zzaj;->zza:Lcom/google/android/gms/internal/common/zzal;

    return-void

    .array-data 1
    .end array-data
.end method

.method private final zzr(I)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/common/zzaj;->zza:Lcom/google/android/gms/internal/common/zzal;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/common/zzal;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    sub-int/2addr v0, p1

    return v0

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public final contains(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/common/zzaj;->zza:Lcom/google/android/gms/internal/common/zzal;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/common/zzal;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1

    nop

    .array-data 1
    .end array-data
.end method

.method public final get(I)Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/common/zzaj;->zza:Lcom/google/android/gms/internal/common/zzal;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/common/zzal;->size()I

    move-result v0

    const-string v1, "index"

    .line 2
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/common/zzv;->zza(IILjava/lang/String;)I

    iget-object v0, p0, Lcom/google/android/gms/internal/common/zzaj;->zza:Lcom/google/android/gms/internal/common/zzal;

    .line 3
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/common/zzaj;->zzr(I)I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/common/zzal;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .array-data 1
    .end array-data
.end method

.method public final indexOf(Ljava/lang/Object;)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/common/zzaj;->zza:Lcom/google/android/gms/internal/common/zzal;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/common/zzal;->lastIndexOf(Ljava/lang/Object;)I

    move-result p1

    if-ltz p1, :cond_0

    .line 2
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/common/zzaj;->zzr(I)I

    move-result p1

    return p1

    :cond_0
    const/4 p1, -0x1

    return p1

    nop

    .array-data 1
    .end array-data
.end method

.method public final lastIndexOf(Ljava/lang/Object;)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/common/zzaj;->zza:Lcom/google/android/gms/internal/common/zzal;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/common/zzal;->indexOf(Ljava/lang/Object;)I

    move-result p1

    if-ltz p1, :cond_0

    .line 2
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/common/zzaj;->zzr(I)I

    move-result p1

    return p1

    :cond_0
    const/4 p1, -0x1

    return p1

    nop

    .array-data 1
    .end array-data
.end method

.method public final size()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/common/zzaj;->zza:Lcom/google/android/gms/internal/common/zzal;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/common/zzal;->size()I

    move-result v0

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

.method final zzf()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/common/zzaj;->zza:Lcom/google/android/gms/internal/common/zzal;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/common/zzal;->zzf()Z

    move-result v0

    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final zzh()Lcom/google/android/gms/internal/common/zzal;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/common/zzaj;->zza:Lcom/google/android/gms/internal/common/zzal;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final zzi(II)Lcom/google/android/gms/internal/common/zzal;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/common/zzaj;->zza:Lcom/google/android/gms/internal/common/zzal;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/common/zzal;->size()I

    move-result v0

    .line 2
    invoke-static {p1, p2, v0}, Lcom/google/android/gms/internal/common/zzv;->zzc(III)V

    iget-object v0, p0, Lcom/google/android/gms/internal/common/zzaj;->zza:Lcom/google/android/gms/internal/common/zzal;

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/common/zzal;->size()I

    move-result v1

    sub-int/2addr v1, p2

    iget-object p2, p0, Lcom/google/android/gms/internal/common/zzaj;->zza:Lcom/google/android/gms/internal/common/zzal;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/common/zzal;->size()I

    move-result p2

    sub-int/2addr p2, p1

    .line 4
    invoke-virtual {v0, v1, p2}, Lcom/google/android/gms/internal/common/zzal;->zzi(II)Lcom/google/android/gms/internal/common/zzal;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/common/zzal;->zzh()Lcom/google/android/gms/internal/common/zzal;

    move-result-object p1

    return-object p1

    .array-data 1
    .end array-data
.end method
