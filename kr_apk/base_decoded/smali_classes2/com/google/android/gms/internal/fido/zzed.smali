.class public final Lcom/google/android/gms/internal/fido/zzed;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-fido@@21.0.0"


# static fields
.field private static final zza:Lcom/google/android/gms/internal/fido/zzdz;

.field private static final zzb:Lcom/google/android/gms/internal/fido/zzdy;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/fido/zzeb;

    invoke-direct {v0}, Lcom/google/android/gms/internal/fido/zzeb;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/fido/zzed;->zza:Lcom/google/android/gms/internal/fido/zzdz;

    new-instance v0, Lcom/google/android/gms/internal/fido/zzec;

    invoke-direct {v0}, Lcom/google/android/gms/internal/fido/zzec;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/fido/zzed;->zzb:Lcom/google/android/gms/internal/fido/zzdy;

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public static zza(Ljava/util/Set;)Lcom/google/android/gms/internal/fido/zzdv;
    .locals 3

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/fido/zzed;->zza:Lcom/google/android/gms/internal/fido/zzdz;

    new-instance v1, Lcom/google/android/gms/internal/fido/zzdv;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lcom/google/android/gms/internal/fido/zzdv;-><init>(Lcom/google/android/gms/internal/fido/zzdz;Lcom/google/android/gms/internal/fido/zzdu;)V

    sget-object v0, Lcom/google/android/gms/internal/fido/zzed;->zzb:Lcom/google/android/gms/internal/fido/zzdy;

    .line 2
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/fido/zzdv;->zza(Lcom/google/android/gms/internal/fido/zzdy;)Lcom/google/android/gms/internal/fido/zzdv;

    .line 3
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/fido/zzdk;

    .line 4
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/fido/zzdv;->zzg(Lcom/google/android/gms/internal/fido/zzdk;)V

    goto :goto_0

    :cond_0
    return-object v1

    .array-data 1
    .end array-data
.end method
