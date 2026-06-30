.class public Lcom/google/android/gms/common/GoogleSignatureVerifier;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-basement@@18.6.0"


# static fields
.field private static zza:Lcom/google/android/gms/common/GoogleSignatureVerifier;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private static volatile zzb:Ljava/util/Set;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private static volatile zzc:Ljava/util/Set;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# instance fields
.field private final zzd:Landroid/content/Context;

.field private volatile zze:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/common/GoogleSignatureVerifier;->zzd:Landroid/content/Context;

    return-void

    .array-data 1
    .end array-data
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/google/android/gms/common/GoogleSignatureVerifier;
    .locals 2

    .line 1
    invoke-static {p0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-class v0, Lcom/google/android/gms/common/GoogleSignatureVerifier;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/google/android/gms/common/GoogleSignatureVerifier;->zza:Lcom/google/android/gms/common/GoogleSignatureVerifier;

    if-nez v1, :cond_0

    .line 2
    invoke-static {p0}, Lcom/google/android/gms/common/zzq;->zzd(Landroid/content/Context;)V

    new-instance v1, Lcom/google/android/gms/common/GoogleSignatureVerifier;

    .line 3
    invoke-direct {v1, p0}, Lcom/google/android/gms/common/GoogleSignatureVerifier;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/google/android/gms/common/GoogleSignatureVerifier;->zza:Lcom/google/android/gms/common/GoogleSignatureVerifier;

    .line 4
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object p0, Lcom/google/android/gms/common/GoogleSignatureVerifier;->zza:Lcom/google/android/gms/common/GoogleSignatureVerifier;

    return-object p0

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    nop

    .array-data 1
    .end array-data
.end method

.method static final zza(Landroid/content/pm/PackageInfo;Z)Z
    .locals 10
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_3

    if-eqz p0, :cond_3

    const-string v2, "com.android.vending"

    .line 1
    iget-object v3, p0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 2
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const-string v3, "com.google.android.gms"

    .line 3
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 4
    :cond_0
    iget-object p1, p0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-nez p1, :cond_2

    :cond_1
    move p1, v1

    goto :goto_0

    .line 5
    :cond_2
    iget p1, p1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 p1, p1, 0x81

    if-eqz p1, :cond_1

    move p1, v0

    :cond_3
    :goto_0
    if-nez p0, :cond_4

    return v1

    :cond_4
    if-eqz p1, :cond_5

    .line 6
    :try_start_0
    sget-object v2, Lcom/google/android/gms/common/zzp;->zzc:Lcom/google/android/gms/internal/common/zzal;

    goto :goto_1

    .line 7
    :cond_5
    sget-object v2, Lcom/google/android/gms/common/zzp;->zzb:Lcom/google/android/gms/internal/common/zzal;

    .line 8
    :goto_1
    sget v3, Lcom/google/android/gms/common/util/AndroidUtilsLight;->zza:I

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1c

    if-ge v3, v4, :cond_8

    .line 18
    iget-object v3, p0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    const/4 v4, 0x0

    if-eqz v3, :cond_6

    iget-object v3, p0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    array-length v3, v3

    if-ne v3, v0, :cond_6

    .line 19
    iget-object v3, p0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    aget-object v3, v3, v1

    invoke-virtual {v3}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v4

    :cond_6
    if-eqz v4, :cond_7

    .line 20
    invoke-static {v4}, Lcom/google/android/gms/internal/common/zzal;->zzn(Ljava/lang/Object;)Lcom/google/android/gms/internal/common/zzal;

    move-result-object v3

    goto :goto_5

    :cond_7
    invoke-static {}, Lcom/google/android/gms/internal/common/zzal;->zzm()Lcom/google/android/gms/internal/common/zzal;

    move-result-object v3

    goto :goto_5

    :cond_8
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v3, v4, :cond_9

    move v3, v0

    goto :goto_2

    :cond_9
    move v3, v1

    .line 9
    :goto_2
    invoke-static {v3}, Lcom/google/android/gms/internal/common/zzv;->zzd(Z)V

    .line 10
    iget-object v3, p0, Landroid/content/pm/PackageInfo;->signingInfo:Landroid/content/pm/SigningInfo;

    if-eqz v3, :cond_c

    .line 11
    invoke-virtual {v3}, Landroid/content/pm/SigningInfo;->hasMultipleSigners()Z

    move-result v4

    if-nez v4, :cond_c

    .line 12
    invoke-virtual {v3}, Landroid/content/pm/SigningInfo;->getSigningCertificateHistory()[Landroid/content/pm/Signature;

    move-result-object v4

    if-nez v4, :cond_a

    goto :goto_4

    .line 14
    :cond_a
    sget v4, Lcom/google/android/gms/internal/common/zzal;->zzd:I

    new-instance v4, Lcom/google/android/gms/internal/common/zzah;

    invoke-direct {v4}, Lcom/google/android/gms/internal/common/zzah;-><init>()V

    .line 15
    invoke-virtual {v3}, Landroid/content/pm/SigningInfo;->getSigningCertificateHistory()[Landroid/content/pm/Signature;

    move-result-object v3

    array-length v5, v3

    move v6, v1

    :goto_3
    if-ge v6, v5, :cond_b

    aget-object v7, v3, v6

    .line 16
    invoke-virtual {v7}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v7

    invoke-virtual {v4, v7}, Lcom/google/android/gms/internal/common/zzah;->zzb(Ljava/lang/Object;)Lcom/google/android/gms/internal/common/zzah;

    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 17
    :cond_b
    invoke-virtual {v4}, Lcom/google/android/gms/internal/common/zzah;->zzd()Lcom/google/android/gms/internal/common/zzal;

    move-result-object v3

    goto :goto_5

    .line 13
    :cond_c
    :goto_4
    invoke-static {}, Lcom/google/android/gms/internal/common/zzal;->zzm()Lcom/google/android/gms/internal/common/zzal;

    move-result-object v3

    .line 21
    :goto_5
    invoke-virtual {v3}, Lcom/google/android/gms/internal/common/zzal;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_10

    .line 22
    invoke-virtual {v3}, Lcom/google/android/gms/internal/common/zzal;->zzh()Lcom/google/android/gms/internal/common/zzal;

    move-result-object v3

    .line 23
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    move v5, v1

    :goto_6
    if-ge v5, v4, :cond_f

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    .line 22
    check-cast v6, [B

    .line 24
    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/common/zzal;->zzq(I)Lcom/google/android/gms/internal/common/zzap;

    move-result-object v7

    .line 25
    :cond_d
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    add-int/lit8 v9, v5, 0x1

    if-eqz v8, :cond_e

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [B

    .line 26
    invoke-static {v6, v8}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v8

    if-eqz v8, :cond_d

    goto :goto_7

    :cond_e
    move v5, v9

    goto :goto_6

    :cond_f
    move v0, v1

    :goto_7
    return v0

    :cond_10
    const-string v2, "Unable to obtain package certificate history."

    .line 29
    new-instance v3, Ljava/lang/IllegalArgumentException;

    .line 27
    invoke-direct {v3, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const-string v2, "GoogleSignatureVerifier"

    const-string v3, "package info is not set correctly"

    .line 28
    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_11

    .line 29
    sget-object p1, Lcom/google/android/gms/common/zzp;->zza:[Lcom/google/android/gms/common/zzm;

    invoke-static {p0, p1}, Lcom/google/android/gms/common/GoogleSignatureVerifier;->zzb(Landroid/content/pm/PackageInfo;[Lcom/google/android/gms/common/zzm;)Lcom/google/android/gms/common/zzm;

    move-result-object p0

    goto :goto_8

    :cond_11
    new-array p1, v0, [Lcom/google/android/gms/common/zzm;

    .line 30
    sget-object v2, Lcom/google/android/gms/common/zzp;->zza:[Lcom/google/android/gms/common/zzm;

    aget-object v2, v2, v1

    aput-object v2, p1, v1

    invoke-static {p0, p1}, Lcom/google/android/gms/common/GoogleSignatureVerifier;->zzb(Landroid/content/pm/PackageInfo;[Lcom/google/android/gms/common/zzm;)Lcom/google/android/gms/common/zzm;

    move-result-object p0

    :goto_8
    if-eqz p0, :cond_12

    return v0

    :cond_12
    return v1

    .array-data 1
    .end array-data
.end method

.method private static varargs zzb(Landroid/content/pm/PackageInfo;[Lcom/google/android/gms/common/zzm;)Lcom/google/android/gms/common/zzm;
    .locals 3
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    iget-object v0, p0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    array-length v0, v0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1

    const-string p0, "GoogleSignatureVerifier"

    const-string p1, "Package has more than one signature."

    .line 3
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_1
    new-instance v0, Lcom/google/android/gms/common/zzn;

    .line 4
    iget-object p0, p0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    const/4 v2, 0x0

    aget-object p0, p0, v2

    invoke-virtual {p0}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/google/android/gms/common/zzn;-><init>([B)V

    .line 5
    :goto_0
    array-length p0, p1

    if-ge v2, p0, :cond_3

    .line 6
    aget-object p0, p1, v2

    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/zzm;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    .line 7
    aget-object p0, p1, v2

    return-object p0

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    return-object v1

    .array-data 1
    .end array-data
.end method

.method private final zzc(Ljava/lang/String;ZZ)Lcom/google/android/gms/common/zzad;
    .locals 5
    .param p1    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    const-string p2, "null pkg"

    if-nez p1, :cond_0

    .line 1
    invoke-static {p2}, Lcom/google/android/gms/common/zzad;->zzc(Ljava/lang/String;)Lcom/google/android/gms/common/zzad;

    move-result-object p1

    return-object p1

    :cond_0
    iget-object p3, p0, Lcom/google/android/gms/common/GoogleSignatureVerifier;->zze:Ljava/lang/String;

    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_8

    .line 2
    invoke-static {}, Lcom/google/android/gms/common/zzq;->zzf()Z

    move-result p3

    const/4 v0, 0x1

    if-eqz p3, :cond_1

    new-instance p2, Lcom/google/android/gms/common/zzy;

    const/4 p3, 0x0

    invoke-direct {p2, p3}, Lcom/google/android/gms/common/zzy;-><init>(Lcom/google/android/gms/common/zzz;)V

    .line 3
    invoke-virtual {p2, p1}, Lcom/google/android/gms/common/zzy;->zzc(Ljava/lang/String;)Lcom/google/android/gms/common/zzy;

    iget-object p3, p0, Lcom/google/android/gms/common/GoogleSignatureVerifier;->zzd:Landroid/content/Context;

    .line 4
    invoke-static {p3}, Lcom/google/android/gms/common/GooglePlayServicesUtilLight;->honorsDebugCertificates(Landroid/content/Context;)Z

    move-result p3

    invoke-virtual {p2, p3}, Lcom/google/android/gms/common/zzy;->zza(Z)Lcom/google/android/gms/common/zzy;

    .line 5
    invoke-virtual {p2, v0}, Lcom/google/android/gms/common/zzy;->zzb(Z)Lcom/google/android/gms/common/zzy;

    .line 6
    invoke-virtual {p2}, Lcom/google/android/gms/common/zzy;->zzd()Lcom/google/android/gms/common/zzaa;

    move-result-object p2

    .line 7
    invoke-static {p2}, Lcom/google/android/gms/common/zzq;->zzb(Lcom/google/android/gms/common/zzaa;)Lcom/google/android/gms/common/zzad;

    move-result-object p2

    goto :goto_2

    :cond_1
    sget p3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt p3, v1, :cond_2

    const p3, 0x8000040

    goto :goto_0

    :cond_2
    const/16 p3, 0x40

    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/common/GoogleSignatureVerifier;->zzd:Landroid/content/Context;

    .line 8
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, p1, p3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p3
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v1, p0, Lcom/google/android/gms/common/GoogleSignatureVerifier;->zzd:Landroid/content/Context;

    .line 9
    invoke-static {v1}, Lcom/google/android/gms/common/GooglePlayServicesUtilLight;->honorsDebugCertificates(Landroid/content/Context;)Z

    move-result v1

    if-nez p3, :cond_3

    invoke-static {p2}, Lcom/google/android/gms/common/zzad;->zzc(Ljava/lang/String;)Lcom/google/android/gms/common/zzad;

    move-result-object p2

    goto :goto_2

    .line 10
    :cond_3
    iget-object p2, p3, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    if-eqz p2, :cond_6

    iget-object p2, p3, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    array-length p2, p2

    if-eq p2, v0, :cond_4

    goto :goto_1

    :cond_4
    new-instance p2, Lcom/google/android/gms/common/zzn;

    .line 11
    iget-object v2, p3, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-virtual {v2}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v2

    invoke-direct {p2, v2}, Lcom/google/android/gms/common/zzn;-><init>([B)V

    .line 12
    iget-object v2, p3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 13
    invoke-static {v2, p2, v1, v3}, Lcom/google/android/gms/common/zzq;->zza(Ljava/lang/String;Lcom/google/android/gms/common/zzm;ZZ)Lcom/google/android/gms/common/zzad;

    move-result-object v1

    iget-boolean v4, v1, Lcom/google/android/gms/common/zzad;->zza:Z

    if-eqz v4, :cond_5

    .line 14
    iget-object v4, p3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v4, :cond_5

    iget-object p3, p3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget p3, p3, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_5

    .line 15
    invoke-static {v2, p2, v3, v0}, Lcom/google/android/gms/common/zzq;->zza(Ljava/lang/String;Lcom/google/android/gms/common/zzm;ZZ)Lcom/google/android/gms/common/zzad;

    move-result-object p2

    iget-boolean p2, p2, Lcom/google/android/gms/common/zzad;->zza:Z

    if-eqz p2, :cond_5

    const-string p2, "debuggable release cert app rejected"

    invoke-static {p2}, Lcom/google/android/gms/common/zzad;->zzc(Ljava/lang/String;)Lcom/google/android/gms/common/zzad;

    move-result-object p2

    goto :goto_2

    :cond_5
    move-object p2, v1

    goto :goto_2

    :cond_6
    :goto_1
    const-string p2, "single cert required"

    .line 10
    invoke-static {p2}, Lcom/google/android/gms/common/zzad;->zzc(Ljava/lang/String;)Lcom/google/android/gms/common/zzad;

    move-result-object p2

    .line 7
    :goto_2
    iget-boolean p3, p2, Lcom/google/android/gms/common/zzad;->zza:Z

    if-eqz p3, :cond_7

    iput-object p1, p0, Lcom/google/android/gms/common/GoogleSignatureVerifier;->zze:Ljava/lang/String;

    :cond_7
    return-object p2

    :catch_0
    move-exception p2

    const-string p3, "no pkg "

    .line 15
    invoke-virtual {p3, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p2}, Lcom/google/android/gms/common/zzad;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/common/zzad;

    move-result-object p1

    return-object p1

    :cond_8
    invoke-static {}, Lcom/google/android/gms/common/zzad;->zzb()Lcom/google/android/gms/common/zzad;

    move-result-object p1

    return-object p1

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public isGooglePublicSignedPackage(Landroid/content/pm/PackageInfo;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 1
    :cond_0
    invoke-static {p1, v0}, Lcom/google/android/gms/common/GoogleSignatureVerifier;->zza(Landroid/content/pm/PackageInfo;Z)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    return v2

    .line 2
    :cond_1
    invoke-static {p1, v2}, Lcom/google/android/gms/common/GoogleSignatureVerifier;->zza(Landroid/content/pm/PackageInfo;Z)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/google/android/gms/common/GoogleSignatureVerifier;->zzd:Landroid/content/Context;

    .line 3
    invoke-static {p1}, Lcom/google/android/gms/common/GooglePlayServicesUtilLight;->honorsDebugCertificates(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_2

    return v2

    :cond_2
    const-string p1, "GoogleSignatureVerifier"

    const-string v1, "Test-keys aren\'t accepted on this build."

    .line 4
    invoke-static {p1, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public isPackageGoogleSigned(Ljava/lang/String;)Z
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0, v0}, Lcom/google/android/gms/common/GoogleSignatureVerifier;->zzc(Ljava/lang/String;ZZ)Lcom/google/android/gms/common/zzad;

    move-result-object p1

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/common/zzad;->zze()V

    iget-boolean p1, p1, Lcom/google/android/gms/common/zzad;->zza:Z

    return p1

    nop

    .array-data 1
    .end array-data
.end method

.method public isUidGoogleSigned(I)Z
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/common/GoogleSignatureVerifier;->zzd:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_3

    array-length v0, p1

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x0

    move v3, v1

    :goto_0
    if-ge v3, v0, :cond_2

    .line 2
    aget-object v2, p1, v3

    .line 3
    invoke-direct {p0, v2, v1, v1}, Lcom/google/android/gms/common/GoogleSignatureVerifier;->zzc(Ljava/lang/String;ZZ)Lcom/google/android/gms/common/zzad;

    move-result-object v2

    iget-boolean v4, v2, Lcom/google/android/gms/common/zzad;->zza:Z

    if-eqz v4, :cond_1

    goto :goto_2

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 4
    :cond_2
    invoke-static {v2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object p1, v2

    check-cast p1, Lcom/google/android/gms/common/zzad;

    goto :goto_2

    :cond_3
    :goto_1
    const-string p1, "no pkgs"

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/common/zzad;->zzc(Ljava/lang/String;)Lcom/google/android/gms/common/zzad;

    move-result-object v2

    .line 5
    :goto_2
    invoke-virtual {v2}, Lcom/google/android/gms/common/zzad;->zze()V

    iget-boolean p1, v2, Lcom/google/android/gms/common/zzad;->zza:Z

    return p1

    .array-data 1
    .end array-data
.end method
