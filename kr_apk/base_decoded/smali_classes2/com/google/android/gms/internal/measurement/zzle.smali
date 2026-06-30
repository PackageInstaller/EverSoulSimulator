.class final Lcom/google/android/gms/internal/measurement/zzle;
.super Lcom/google/android/gms/internal/measurement/zzlg;
.source "com.google.android.gms:play-services-measurement-base@@22.4.0"


# instance fields
.field private zzb:I

.field private zzc:I

.field private zzd:I


# direct methods
.method synthetic constructor <init>([BIIZLcom/google/android/gms/internal/measurement/zzlf;)V
    .locals 0

    const/4 p1, 0x0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/measurement/zzlg;-><init>(Lcom/google/android/gms/internal/measurement/zzlf;)V

    const p1, 0x7fffffff

    iput p1, p0, Lcom/google/android/gms/internal/measurement/zzle;->zzd:I

    const/4 p1, 0x0

    iput p1, p0, Lcom/google/android/gms/internal/measurement/zzle;->zzb:I

    return-void

    nop

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public final zza(I)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/measurement/zzmm;
        }
    .end annotation

    iget p1, p0, Lcom/google/android/gms/internal/measurement/zzle;->zzd:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzle;->zzd:I

    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzle;->zzb:I

    iget v2, p0, Lcom/google/android/gms/internal/measurement/zzle;->zzc:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/google/android/gms/internal/measurement/zzle;->zzb:I

    if-lez v1, :cond_0

    iput v1, p0, Lcom/google/android/gms/internal/measurement/zzle;->zzc:I

    sub-int/2addr v1, v1

    iput v1, p0, Lcom/google/android/gms/internal/measurement/zzle;->zzb:I

    goto :goto_0

    :cond_0
    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzle;->zzc:I

    :goto_0
    return p1

    nop

    .array-data 1
    .end array-data
.end method
