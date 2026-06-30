.class public abstract Lcom/google/android/gms/internal/fido/zzbl;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-fido@@21.0.0"

# interfaces
.implements Ljava/io/Serializable;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void

    .array-data 1
    .end array-data
.end method

.method public static zzc()Lcom/google/android/gms/internal/fido/zzbl;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/fido/zzaz;->zza:Lcom/google/android/gms/internal/fido/zzaz;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public static zzd(Ljava/lang/Object;)Lcom/google/android/gms/internal/fido/zzbl;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/fido/zzbn;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/fido/zzbn;-><init>(Ljava/lang/Object;)V

    return-object v0

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public abstract zza()Ljava/lang/Object;
.end method

.method public abstract zzb()Z
.end method
