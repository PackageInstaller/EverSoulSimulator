.class public final Lcom/google/android/gms/common/zzu;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;
.source "com.google.android.gms:play-services-basement@@18.6.0"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/common/zzu;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final zza:Z

.field private final zzb:Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final zzc:I

.field private final zzd:I

.field private final zze:J

.field private final zzf:Lcom/google/android/gms/common/zzu;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/common/zzv;

    invoke-direct {v0}, Lcom/google/android/gms/common/zzv;-><init>()V

    sput-object v0, Lcom/google/android/gms/common/zzu;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void

    .array-data 1
    .end array-data
.end method

.method constructor <init>(ZLjava/lang/String;IIJLcom/google/android/gms/common/zzu;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    iput-boolean p1, p0, Lcom/google/android/gms/common/zzu;->zza:Z

    iput-object p2, p0, Lcom/google/android/gms/common/zzu;->zzb:Ljava/lang/String;

    invoke-static {p3}, Lcom/google/android/gms/common/zzae;->zza(I)I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/google/android/gms/common/zzu;->zzc:I

    .line 2
    invoke-static {p4}, Lcom/google/android/gms/common/zze;->zza(I)I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/google/android/gms/common/zzu;->zzd:I

    iput-wide p5, p0, Lcom/google/android/gms/common/zzu;->zze:J

    iput-object p7, p0, Lcom/google/android/gms/common/zzu;->zzf:Lcom/google/android/gms/common/zzu;

    return-void

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 6

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->beginObjectHeader(Landroid/os/Parcel;)I

    move-result v0

    const/4 v1, 0x1

    iget-boolean v2, p0, Lcom/google/android/gms/common/zzu;->zza:Z

    .line 2
    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeBoolean(Landroid/os/Parcel;IZ)V

    iget-object v1, p0, Lcom/google/android/gms/common/zzu;->zzb:Ljava/lang/String;

    const/4 v2, 0x2

    const/4 v3, 0x0

    .line 3
    invoke-static {p1, v2, v1, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeString(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/4 v1, 0x3

    iget v2, p0, Lcom/google/android/gms/common/zzu;->zzc:I

    .line 4
    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeInt(Landroid/os/Parcel;II)V

    const/4 v1, 0x4

    iget v2, p0, Lcom/google/android/gms/common/zzu;->zzd:I

    .line 5
    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeInt(Landroid/os/Parcel;II)V

    const/4 v1, 0x5

    iget-wide v4, p0, Lcom/google/android/gms/common/zzu;->zze:J

    .line 6
    invoke-static {p1, v1, v4, v5}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeLong(Landroid/os/Parcel;IJ)V

    const/4 v1, 0x6

    iget-object v2, p0, Lcom/google/android/gms/common/zzu;->zzf:Lcom/google/android/gms/common/zzu;

    .line 7
    invoke-static {p1, v1, v2, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    .line 8
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->finishObjectHeader(Landroid/os/Parcel;I)V

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public final zza()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/common/zzu;->zze:J

    return-wide v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final zzb()Lcom/google/android/gms/common/zzu;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/common/zzu;->zzf:Lcom/google/android/gms/common/zzu;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final zzc()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/common/zzu;->zzb:Ljava/lang/String;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final zzd()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/common/zzu;->zza:Z

    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final zze()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/gms/common/zzu;->zzd:I

    invoke-static {v0}, Lcom/google/android/gms/common/zze;->zza(I)I

    move-result v0

    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final zzf()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/gms/common/zzu;->zzc:I

    invoke-static {v0}, Lcom/google/android/gms/common/zzae;->zza(I)I

    move-result v0

    return v0

    nop

    .array-data 1
    .end array-data
.end method
