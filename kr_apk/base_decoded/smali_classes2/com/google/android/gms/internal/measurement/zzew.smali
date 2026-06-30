.class final Lcom/google/android/gms/internal/measurement/zzew;
.super Lcom/google/android/gms/internal/measurement/zzdd;
.source "com.google.android.gms:play-services-measurement-sdk-api@@22.4.0"


# instance fields
.field private final zza:Lcom/google/android/gms/measurement/internal/zzkc;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/zzkc;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzdd;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzew;->zza:Lcom/google/android/gms/measurement/internal/zzkc;

    return-void

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public final zze()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzew;->zza:Lcom/google/android/gms/measurement/internal/zzkc;

    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final zzf(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;J)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzew;->zza:Lcom/google/android/gms/measurement/internal/zzkc;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-wide v4, p4

    invoke-interface/range {v0 .. v5}, Lcom/google/android/gms/measurement/internal/zzkc;->onEvent(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;J)V

    return-void

    .array-data 1
    .end array-data
.end method
