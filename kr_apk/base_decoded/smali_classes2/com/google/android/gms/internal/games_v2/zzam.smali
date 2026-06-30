.class public final Lcom/google/android/gms/internal/games_v2/zzam;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-games-v2@@17.0.0"


# instance fields
.field public zza:Landroid/os/IBinder;

.field public final zzb:I

.field public zzc:I

.field public zzd:I

.field public zze:I

.field public zzf:I

.field public zzg:I


# direct methods
.method public constructor <init>(ILandroid/os/IBinder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p2, -0x1

    iput p2, p0, Lcom/google/android/gms/internal/games_v2/zzam;->zzc:I

    const/4 p2, 0x0

    iput p2, p0, Lcom/google/android/gms/internal/games_v2/zzam;->zzd:I

    iput p2, p0, Lcom/google/android/gms/internal/games_v2/zzam;->zze:I

    iput p2, p0, Lcom/google/android/gms/internal/games_v2/zzam;->zzf:I

    iput p2, p0, Lcom/google/android/gms/internal/games_v2/zzam;->zzg:I

    iput p1, p0, Lcom/google/android/gms/internal/games_v2/zzam;->zzb:I

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/internal/games_v2/zzam;->zza:Landroid/os/IBinder;

    return-void

    nop

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public final zza()Landroid/os/Bundle;
    .locals 3

    .line 1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "popupLocationInfo.gravity"

    iget v2, p0, Lcom/google/android/gms/internal/games_v2/zzam;->zzb:I

    .line 2
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "popupLocationInfo.displayId"

    iget v2, p0, Lcom/google/android/gms/internal/games_v2/zzam;->zzc:I

    .line 3
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "popupLocationInfo.left"

    iget v2, p0, Lcom/google/android/gms/internal/games_v2/zzam;->zzd:I

    .line 4
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "popupLocationInfo.top"

    iget v2, p0, Lcom/google/android/gms/internal/games_v2/zzam;->zze:I

    .line 5
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "popupLocationInfo.right"

    iget v2, p0, Lcom/google/android/gms/internal/games_v2/zzam;->zzf:I

    .line 6
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "popupLocationInfo.bottom"

    iget v2, p0, Lcom/google/android/gms/internal/games_v2/zzam;->zzg:I

    .line 7
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v0

    .array-data 1
    .end array-data
.end method
