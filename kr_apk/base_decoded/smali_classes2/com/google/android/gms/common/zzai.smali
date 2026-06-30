.class final Lcom/google/android/gms/common/zzai;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-basement@@18.6.0"


# instance fields
.field private final zza:Ljava/lang/String;

.field private final zzb:Lcom/google/android/gms/common/PackageVerificationResult;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/google/android/gms/common/PackageVerificationResult;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/common/zzai;->zza:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/gms/common/zzai;->zzb:Lcom/google/android/gms/common/PackageVerificationResult;

    return-void

    .array-data 1
    .end array-data
.end method

.method static bridge synthetic zza(Lcom/google/android/gms/common/zzai;)Lcom/google/android/gms/common/PackageVerificationResult;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/common/zzai;->zzb:Lcom/google/android/gms/common/PackageVerificationResult;

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method static bridge synthetic zzb(Lcom/google/android/gms/common/zzai;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/common/zzai;->zza:Ljava/lang/String;

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method
