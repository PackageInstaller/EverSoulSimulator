.class public final Lcom/google/android/gms/internal/drive/zzgs;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/internal/drive/zzgs;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final zzda:I

.field private final zzdc:Lcom/google/android/gms/drive/events/zzt;

.field private final zzk:Lcom/google/android/gms/drive/DriveId;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 15
    new-instance v0, Lcom/google/android/gms/internal/drive/zzgt;

    invoke-direct {v0}, Lcom/google/android/gms/internal/drive/zzgt;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/drive/zzgs;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void

    .array-data 1
    .end array-data
.end method

.method public constructor <init>(Lcom/google/android/gms/drive/DriveId;I)V
    .locals 1

    const/4 v0, 0x0

    .line 13
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/gms/internal/drive/zzgs;-><init>(Lcom/google/android/gms/drive/DriveId;ILcom/google/android/gms/drive/events/zzt;)V

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method constructor <init>(Lcom/google/android/gms/drive/DriveId;ILcom/google/android/gms/drive/events/zzt;)V
    .locals 0

    .line 8
    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    .line 9
    iput-object p1, p0, Lcom/google/android/gms/internal/drive/zzgs;->zzk:Lcom/google/android/gms/drive/DriveId;

    .line 10
    iput p2, p0, Lcom/google/android/gms/internal/drive/zzgs;->zzda:I

    .line 11
    iput-object p3, p0, Lcom/google/android/gms/internal/drive/zzgs;->zzdc:Lcom/google/android/gms/drive/events/zzt;

    return-void

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    .line 2
    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->beginObjectHeader(Landroid/os/Parcel;)I

    move-result v0

    .line 3
    iget-object v1, p0, Lcom/google/android/gms/internal/drive/zzgs;->zzk:Lcom/google/android/gms/drive/DriveId;

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {p1, v2, v1, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    const/4 v1, 0x3

    .line 4
    iget v2, p0, Lcom/google/android/gms/internal/drive/zzgs;->zzda:I

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeInt(Landroid/os/Parcel;II)V

    const/4 v1, 0x4

    .line 5
    iget-object v2, p0, Lcom/google/android/gms/internal/drive/zzgs;->zzdc:Lcom/google/android/gms/drive/events/zzt;

    invoke-static {p1, v1, v2, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    .line 6
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->finishObjectHeader(Landroid/os/Parcel;I)V

    return-void

    nop

    .array-data 1
    .end array-data
.end method
