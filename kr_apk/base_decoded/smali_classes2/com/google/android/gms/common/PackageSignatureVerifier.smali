.class public Lcom/google/android/gms/common/PackageSignatureVerifier;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-basement@@18.6.0"


# static fields
.field static volatile zza:Lcom/google/android/gms/common/zzai;

.field private static zzb:Lcom/google/android/gms/common/zzaj;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void

    .array-data 1
    .end array-data
.end method

.method private static zza(Landroid/content/Context;)Lcom/google/android/gms/common/zzaj;
    .locals 2

    .line 1
    const-class v0, Lcom/google/android/gms/common/PackageSignatureVerifier;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/google/android/gms/common/PackageSignatureVerifier;->zzb:Lcom/google/android/gms/common/zzaj;

    if-nez v1, :cond_0

    new-instance v1, Lcom/google/android/gms/common/zzaj;

    invoke-direct {v1, p0}, Lcom/google/android/gms/common/zzaj;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/google/android/gms/common/PackageSignatureVerifier;->zzb:Lcom/google/android/gms/common/zzaj;

    :cond_0
    sget-object p0, Lcom/google/android/gms/common/PackageSignatureVerifier;->zzb:Lcom/google/android/gms/common/zzaj;

    .line 2
    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    nop

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public queryPackageSignatureVerified(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/gms/common/PackageVerificationResult;
    .locals 3

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/common/GooglePlayServicesUtilLight;->honorsDebugCertificates(Landroid/content/Context;)Z

    move-result v0

    .line 2
    invoke-static {p1}, Lcom/google/android/gms/common/PackageSignatureVerifier;->zza(Landroid/content/Context;)Lcom/google/android/gms/common/zzaj;

    .line 3
    invoke-static {}, Lcom/google/android/gms/common/zzq;->zze()Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x1

    if-eq v1, v0, :cond_0

    const-string v1, "-0"

    goto :goto_0

    :cond_0
    const-string v1, "-1"

    :goto_0
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/common/PackageSignatureVerifier;->zza:Lcom/google/android/gms/common/zzai;

    if-eqz v2, :cond_1

    sget-object v2, Lcom/google/android/gms/common/PackageSignatureVerifier;->zza:Lcom/google/android/gms/common/zzai;

    .line 4
    invoke-static {v2}, Lcom/google/android/gms/common/zzai;->zzb(Lcom/google/android/gms/common/zzai;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    sget-object p1, Lcom/google/android/gms/common/PackageSignatureVerifier;->zza:Lcom/google/android/gms/common/zzai;

    .line 13
    invoke-static {p1}, Lcom/google/android/gms/common/zzai;->zza(Lcom/google/android/gms/common/zzai;)Lcom/google/android/gms/common/PackageVerificationResult;

    move-result-object p1

    goto :goto_1

    .line 5
    :cond_1
    invoke-static {p1}, Lcom/google/android/gms/common/PackageSignatureVerifier;->zza(Landroid/content/Context;)Lcom/google/android/gms/common/zzaj;

    new-instance p1, Lcom/google/android/gms/common/zzy;

    const/4 v2, 0x0

    invoke-direct {p1, v2}, Lcom/google/android/gms/common/zzy;-><init>(Lcom/google/android/gms/common/zzz;)V

    .line 6
    invoke-virtual {p1, p2}, Lcom/google/android/gms/common/zzy;->zzc(Ljava/lang/String;)Lcom/google/android/gms/common/zzy;

    .line 7
    invoke-virtual {p1, v0}, Lcom/google/android/gms/common/zzy;->zza(Z)Lcom/google/android/gms/common/zzy;

    const/4 v0, 0x0

    .line 8
    invoke-virtual {p1, v0}, Lcom/google/android/gms/common/zzy;->zzb(Z)Lcom/google/android/gms/common/zzy;

    .line 9
    invoke-virtual {p1}, Lcom/google/android/gms/common/zzy;->zzd()Lcom/google/android/gms/common/zzaa;

    move-result-object p1

    .line 10
    invoke-static {p1}, Lcom/google/android/gms/common/zzq;->zzb(Lcom/google/android/gms/common/zzaa;)Lcom/google/android/gms/common/zzad;

    move-result-object p1

    iget-boolean v0, p1, Lcom/google/android/gms/common/zzad;->zza:Z

    if-eqz v0, :cond_2

    iget p1, p1, Lcom/google/android/gms/common/zzad;->zze:I

    new-instance v0, Lcom/google/android/gms/common/zzai;

    invoke-static {p2, p1}, Lcom/google/android/gms/common/PackageVerificationResult;->zzd(Ljava/lang/String;I)Lcom/google/android/gms/common/PackageVerificationResult;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lcom/google/android/gms/common/zzai;-><init>(Ljava/lang/String;Lcom/google/android/gms/common/PackageVerificationResult;)V

    sput-object v0, Lcom/google/android/gms/common/PackageSignatureVerifier;->zza:Lcom/google/android/gms/common/zzai;

    sget-object p1, Lcom/google/android/gms/common/PackageSignatureVerifier;->zza:Lcom/google/android/gms/common/zzai;

    .line 12
    invoke-static {p1}, Lcom/google/android/gms/common/zzai;->zza(Lcom/google/android/gms/common/zzai;)Lcom/google/android/gms/common/PackageVerificationResult;

    move-result-object p1

    goto :goto_1

    :cond_2
    iget-object v0, p1, Lcom/google/android/gms/common/zzad;->zzb:Ljava/lang/String;

    .line 11
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p1, Lcom/google/android/gms/common/zzad;->zzb:Ljava/lang/String;

    iget-object p1, p1, Lcom/google/android/gms/common/zzad;->zzc:Ljava/lang/Throwable;

    invoke-static {p2, v0, p1}, Lcom/google/android/gms/common/PackageVerificationResult;->zza(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/common/PackageVerificationResult;

    move-result-object p1

    :goto_1
    return-object p1

    :cond_3
    new-instance p1, Lcom/google/android/gms/common/zzak;

    .line 14
    invoke-direct {p1}, Lcom/google/android/gms/common/zzak;-><init>()V

    throw p1

    nop

    .array-data 1
    .end array-data
.end method

.method public queryPackageSignatureVerifiedWithRetry(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/gms/common/PackageVerificationResult;
    .locals 2

    .line 1
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/common/PackageSignatureVerifier;->queryPackageSignatureVerified(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/gms/common/PackageVerificationResult;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/common/PackageVerificationResult;->zzb()V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/common/PackageSignatureVerifier;->queryPackageSignatureVerified(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/gms/common/PackageVerificationResult;

    move-result-object p1

    .line 4
    invoke-virtual {p1}, Lcom/google/android/gms/common/PackageVerificationResult;->zzc()Z

    move-result p2

    if-eqz p2, :cond_0

    const-string p2, "PkgSignatureVerifier"

    const-string v1, "Got flaky result during package signature verification"

    .line 5
    invoke-static {p2, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object p1

    :cond_0
    move-object v0, p1

    :goto_0
    return-object v0

    nop

    .array-data 1
    .end array-data
.end method
