.class public abstract Lcom/google/android/gms/internal/fido/zzd;
.super Lcom/google/android/gms/internal/fido/zzb;
.source "com.google.android.gms:play-services-fido@@21.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/fido/zze;


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "com.google.android.gms.fido.fido2.api.IBooleanCallback"

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/fido/zzb;-><init>(Ljava/lang/String;)V

    return-void

    .array-data 1
    .end array-data
.end method


# virtual methods
.method protected final zza(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 p4, 0x0

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    return p4

    .line 1
    :cond_0
    sget-object p1, Lcom/google/android/gms/common/api/Status;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/fido/zzc;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/api/Status;

    .line 2
    invoke-static {p2}, Lcom/google/android/gms/internal/fido/zzc;->zzc(Landroid/os/Parcel;)V

    .line 3
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/fido/zzd;->zzc(Lcom/google/android/gms/common/api/Status;)V

    goto :goto_0

    .line 4
    :cond_1
    sget p1, Lcom/google/android/gms/internal/fido/zzc;->zza:I

    .line 5
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_2

    move p4, v0

    .line 6
    :cond_2
    invoke-static {p2}, Lcom/google/android/gms/internal/fido/zzc;->zzc(Landroid/os/Parcel;)V

    .line 7
    invoke-virtual {p0, p4}, Lcom/google/android/gms/internal/fido/zzd;->zzb(Z)V

    .line 8
    :goto_0
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .array-data 1
    .end array-data
.end method
