.class final Lcom/google/android/gms/measurement/internal/zzpl;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement@@22.4.0"

# interfaces
.implements Lcom/google/android/gms/measurement/internal/zzhg;


# instance fields
.field final synthetic zza:Ljava/lang/String;

.field final synthetic zzb:Ljava/util/List;

.field final synthetic zzc:Lcom/google/android/gms/measurement/internal/zzpv;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/zzpv;Ljava/lang/String;Ljava/util/List;)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/zzpl;->zza:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/measurement/internal/zzpl;->zzb:Ljava/util/List;

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzpl;->zzc:Lcom/google/android/gms/measurement/internal/zzpv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public final zza(Ljava/lang/String;ILjava/lang/Throwable;[BLjava/util/Map;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzpl;->zzc:Lcom/google/android/gms/measurement/internal/zzpv;

    const/4 v1, 0x1

    iget-object v5, p0, Lcom/google/android/gms/measurement/internal/zzpl;->zza:Ljava/lang/String;

    iget-object v6, p0, Lcom/google/android/gms/measurement/internal/zzpl;->zzb:Ljava/util/List;

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gms/measurement/internal/zzpv;->zzY(ZILjava/lang/Throwable;[BLjava/lang/String;Ljava/util/List;)V

    return-void

    .array-data 1
    .end array-data
.end method
