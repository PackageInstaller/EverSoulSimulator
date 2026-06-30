.class public final Lcom/google/android/gms/measurement/internal/zzgs;
.super Lcom/google/android/gms/measurement/internal/zzg;
.source "com.google.android.gms:play-services-measurement-impl@@22.4.0"


# instance fields
.field private zza:Ljava/lang/String;

.field private zzb:Ljava/lang/String;

.field private zzc:I

.field private zzd:Ljava/lang/String;

.field private zze:Ljava/lang/String;

.field private zzf:J

.field private final zzg:J

.field private final zzh:J

.field private zzi:Ljava/util/List;

.field private zzj:Ljava/lang/String;

.field private zzk:I

.field private zzl:Ljava/lang/String;

.field private zzm:Ljava/lang/String;

.field private zzn:Ljava/lang/String;

.field private zzo:J

.field private zzp:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/zzio;JJ)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/measurement/internal/zzg;-><init>(Lcom/google/android/gms/measurement/internal/zzio;)V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/gms/measurement/internal/zzgs;->zzo:J

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzgs;->zzp:Ljava/lang/String;

    iput-wide p2, p0, Lcom/google/android/gms/measurement/internal/zzgs;->zzg:J

    iput-wide p4, p0, Lcom/google/android/gms/measurement/internal/zzgs;->zzh:J

    return-void

    nop

    .array-data 1
    .end array-data
.end method


# virtual methods
.method protected final zzd()V
    .locals 11
    .annotation runtime Lorg/checkerframework/checker/nullness/qual/EnsuresNonNull;
        value = {
            "appId",
            "appStore",
            "appName",
            "gmpAppId",
            "gaAppId"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object v1

    .line 2
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzhe;->zzj()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object v1

    iget-wide v2, p0, Lcom/google/android/gms/measurement/internal/zzgs;->zzh:J

    .line 3
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iget-wide v3, p0, Lcom/google/android/gms/measurement/internal/zzgs;->zzg:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-string v4, "sdkVersion bundled with app, dynamiteVersion"

    invoke-virtual {v1, v4, v2, v3}, Lcom/google/android/gms/measurement/internal/zzhc;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 4
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzaT()Landroid/content/Context;

    move-result-object v1

    .line 5
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 6
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzaT()Landroid/content/Context;

    move-result-object v2

    .line 7
    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/high16 v3, -0x80000000

    const-string v4, ""

    const/4 v5, 0x0

    const-string v6, "Unknown"

    const-string v7, "unknown"

    if-nez v2, :cond_1

    .line 8
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object v0

    .line 9
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzhe;->zze()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object v0

    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/zzhe;->zzn(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    const-string v9, "PackageManager is null, app identity information might be inaccurate. appId"

    .line 10
    invoke-virtual {v0, v9, v8}, Lcom/google/android/gms/measurement/internal/zzhc;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    move-object v8, v6

    goto/16 :goto_4

    .line 11
    :cond_1
    :try_start_0
    invoke-virtual {v2, v1}, Landroid/content/pm/PackageManager;->getInstallerPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 74
    :catch_0
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 12
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object v0

    .line 13
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzhe;->zze()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object v0

    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/zzhe;->zzn(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    const-string v9, "Error retrieving app installer package name. appId"

    .line 14
    invoke-virtual {v0, v9, v8}, Lcom/google/android/gms/measurement/internal/zzhc;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_0
    if-nez v7, :cond_2

    const-string v0, "manual_install"

    move-object v7, v0

    goto :goto_1

    :cond_2
    const-string v0, "com.android.vending"

    .line 15
    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    move-object v7, v4

    .line 11
    :cond_3
    :goto_1
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 16
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzaT()Landroid/content/Context;

    move-result-object v0

    .line 17
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 18
    iget-object v8, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 19
    invoke-virtual {v2, v8}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v8

    .line 20
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_4

    .line 21
    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_2

    :cond_4
    move-object v8, v6

    .line 22
    :goto_2
    :try_start_2
    iget-object v6, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 23
    iget v3, v0, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_4

    :catch_1
    move-object v0, v6

    move-object v6, v8

    goto :goto_3

    :catch_2
    move-object v0, v6

    .line 14
    :goto_3
    iget-object v8, p0, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 24
    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/zzio;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object v8

    .line 25
    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/zzhe;->zze()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object v8

    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/zzhe;->zzn(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    const-string v10, "Error retrieving package info. appId, appName"

    .line 26
    invoke-virtual {v8, v10, v9, v6}, Lcom/google/android/gms/measurement/internal/zzhc;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v8, v6

    move-object v6, v0

    .line 10
    :goto_4
    iput-object v1, p0, Lcom/google/android/gms/measurement/internal/zzgs;->zza:Ljava/lang/String;

    iput-object v7, p0, Lcom/google/android/gms/measurement/internal/zzgs;->zzd:Ljava/lang/String;

    iput-object v6, p0, Lcom/google/android/gms/measurement/internal/zzgs;->zzb:Ljava/lang/String;

    iput v3, p0, Lcom/google/android/gms/measurement/internal/zzgs;->zzc:I

    iput-object v8, p0, Lcom/google/android/gms/measurement/internal/zzgs;->zze:Ljava/lang/String;

    const-wide/16 v6, 0x0

    iput-wide v6, p0, Lcom/google/android/gms/measurement/internal/zzgs;->zzf:J

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 27
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzf()Lcom/google/android/gms/measurement/internal/zzam;

    move-result-object v3

    .line 28
    sget-object v6, Lcom/google/android/gms/measurement/internal/zzgi;->zzbp:Lcom/google/android/gms/measurement/internal/zzgg;

    const/4 v7, 0x0

    .line 29
    invoke-virtual {v3, v7, v6}, Lcom/google/android/gms/measurement/internal/zzam;->zzx(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzgg;)Z

    move-result v3

    const/4 v6, 0x1

    if-nez v3, :cond_5

    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/zzgs;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 30
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzio;->zzx()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_5

    .line 31
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzio;->zzy()Ljava/lang/String;

    move-result-object v3

    const-string v8, "am"

    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    move v3, v6

    goto :goto_5

    :cond_5
    move v3, v5

    :goto_5
    iget-object v8, p0, Lcom/google/android/gms/measurement/internal/zzgs;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 32
    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/zzio;->zza()I

    move-result v9

    if-eqz v9, :cond_c

    if-eq v9, v6, :cond_b

    const/4 v6, 0x3

    if-eq v9, v6, :cond_a

    const/4 v6, 0x4

    if-eq v9, v6, :cond_9

    const/4 v6, 0x6

    if-eq v9, v6, :cond_8

    const/4 v6, 0x7

    if-eq v9, v6, :cond_7

    const/16 v6, 0x8

    if-eq v9, v6, :cond_6

    .line 33
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object v6

    .line 34
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzhe;->zzi()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object v6

    const-string v10, "App measurement disabled"

    invoke-virtual {v6, v10}, Lcom/google/android/gms/measurement/internal/zzhc;->zza(Ljava/lang/String;)V

    .line 35
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object v6

    .line 36
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzhe;->zzh()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object v6

    const-string v10, "Invalid scion state in identity"

    invoke-virtual {v6, v10}, Lcom/google/android/gms/measurement/internal/zzhc;->zza(Ljava/lang/String;)V

    goto :goto_6

    .line 50
    :cond_6
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object v6

    .line 51
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzhe;->zzi()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object v6

    const-string v10, "App measurement disabled due to denied storage consent"

    invoke-virtual {v6, v10}, Lcom/google/android/gms/measurement/internal/zzhc;->zza(Ljava/lang/String;)V

    goto :goto_6

    .line 48
    :cond_7
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object v6

    .line 49
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzhe;->zzi()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object v6

    const-string v10, "App measurement disabled via the global data collection setting"

    invoke-virtual {v6, v10}, Lcom/google/android/gms/measurement/internal/zzhc;->zza(Ljava/lang/String;)V

    goto :goto_6

    .line 45
    :cond_8
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object v6

    .line 46
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzhe;->zzl()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object v6

    const-string v10, "App measurement deactivated via resources. This method is being deprecated. Please refer to https://firebase.google.com/support/guides/disable-analytics"

    .line 47
    invoke-virtual {v6, v10}, Lcom/google/android/gms/measurement/internal/zzhc;->zza(Ljava/lang/String;)V

    goto :goto_6

    .line 43
    :cond_9
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object v6

    .line 44
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzhe;->zzi()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object v6

    const-string v10, "App measurement disabled via the manifest"

    invoke-virtual {v6, v10}, Lcom/google/android/gms/measurement/internal/zzhc;->zza(Ljava/lang/String;)V

    goto :goto_6

    .line 41
    :cond_a
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object v6

    .line 42
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzhe;->zzi()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object v6

    const-string v10, "App measurement disabled by setAnalyticsCollectionEnabled(false)"

    invoke-virtual {v6, v10}, Lcom/google/android/gms/measurement/internal/zzhc;->zza(Ljava/lang/String;)V

    goto :goto_6

    .line 39
    :cond_b
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object v6

    .line 40
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzhe;->zzi()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object v6

    const-string v10, "App measurement deactivated via the manifest"

    invoke-virtual {v6, v10}, Lcom/google/android/gms/measurement/internal/zzhc;->zza(Ljava/lang/String;)V

    goto :goto_6

    .line 37
    :cond_c
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object v6

    .line 38
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzhe;->zzj()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object v6

    const-string v10, "App measurement collection enabled"

    invoke-virtual {v6, v10}, Lcom/google/android/gms/measurement/internal/zzhc;->zza(Ljava/lang/String;)V

    .line 36
    :goto_6
    iput-object v4, p0, Lcom/google/android/gms/measurement/internal/zzgs;->zzl:Ljava/lang/String;

    iput-object v4, p0, Lcom/google/android/gms/measurement/internal/zzgs;->zzm:Ljava/lang/String;

    .line 52
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzaV()Lcom/google/android/gms/measurement/internal/zzaf;

    if-eqz v3, :cond_d

    .line 53
    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/zzio;->zzx()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/gms/measurement/internal/zzgs;->zzm:Ljava/lang/String;

    .line 54
    :cond_d
    :try_start_3
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzaT()Landroid/content/Context;

    move-result-object v3

    .line 55
    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/zzio;->zzA()Ljava/lang/String;

    move-result-object v6

    const-string v10, "google_app_id"

    .line 56
    invoke-static {v3, v10, v6}, Lcom/google/android/gms/measurement/internal/zzmg;->zzc(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 57
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_e

    goto :goto_7

    :cond_e
    move-object v4, v3

    :goto_7
    iput-object v4, p0, Lcom/google/android/gms/measurement/internal/zzgs;->zzl:Ljava/lang/String;

    .line 58
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzf()Lcom/google/android/gms/measurement/internal/zzam;

    move-result-object v4

    sget-object v6, Lcom/google/android/gms/measurement/internal/zzgi;->zzbp:Lcom/google/android/gms/measurement/internal/zzgg;

    .line 59
    invoke-virtual {v4, v7, v6}, Lcom/google/android/gms/measurement/internal/zzam;->zzx(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzgg;)Z

    move-result v4

    if-nez v4, :cond_10

    .line 60
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_10

    .line 61
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzaT()Landroid/content/Context;

    move-result-object v3

    .line 62
    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/zzio;->zzA()Ljava/lang/String;

    move-result-object v4

    .line 63
    invoke-static {v3}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 65
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_f

    goto :goto_8

    .line 66
    :cond_f
    invoke-static {v3}, Lcom/google/android/gms/measurement/internal/zzig;->zza(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    :goto_8
    const-string v3, "admob_app_id"

    .line 67
    invoke-static {v3, v6, v4}, Lcom/google/android/gms/measurement/internal/zzig;->zzb(Ljava/lang/String;Landroid/content/res/Resources;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/gms/measurement/internal/zzgs;->zzm:Ljava/lang/String;

    :cond_10
    if-nez v9, :cond_12

    .line 68
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object v0

    .line 69
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzhe;->zzj()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object v0

    const-string v3, "App measurement enabled for app package, google app id"

    iget-object v4, p0, Lcom/google/android/gms/measurement/internal/zzgs;->zza:Ljava/lang/String;

    iget-object v6, p0, Lcom/google/android/gms/measurement/internal/zzgs;->zzl:Ljava/lang/String;

    .line 70
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_11

    iget-object v6, p0, Lcom/google/android/gms/measurement/internal/zzgs;->zzm:Ljava/lang/String;

    goto :goto_9

    .line 83
    :cond_11
    iget-object v6, p0, Lcom/google/android/gms/measurement/internal/zzgs;->zzl:Ljava/lang/String;

    .line 71
    :goto_9
    invoke-virtual {v0, v3, v4, v6}, Lcom/google/android/gms/measurement/internal/zzhc;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_a

    :catch_3
    move-exception v0

    .line 15
    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 72
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzio;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object v3

    .line 73
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzhe;->zze()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object v3

    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/zzhe;->zzn(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    const-string v4, "Fetching Google App Id failed with exception. appId"

    .line 74
    invoke-virtual {v3, v4, v1, v0}, Lcom/google/android/gms/measurement/internal/zzhc;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 71
    :cond_12
    :goto_a
    iput-object v7, p0, Lcom/google/android/gms/measurement/internal/zzgs;->zzi:Ljava/util/List;

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 75
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzaV()Lcom/google/android/gms/measurement/internal/zzaf;

    .line 76
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzf()Lcom/google/android/gms/measurement/internal/zzam;

    move-result-object v1

    const-string v3, "analytics.safelisted_events"

    .line 77
    invoke-virtual {v1, v3}, Lcom/google/android/gms/measurement/internal/zzam;->zzt(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_13

    goto :goto_b

    .line 78
    :cond_13
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_14

    .line 79
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object v1

    .line 80
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzhe;->zzl()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object v1

    const-string v3, "Safelisted event list is empty. Ignoring"

    invoke-virtual {v1, v3}, Lcom/google/android/gms/measurement/internal/zzhc;->zza(Ljava/lang/String;)V

    goto :goto_c

    .line 81
    :cond_14
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_15
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_16

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 82
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzw()Lcom/google/android/gms/measurement/internal/zzqf;

    move-result-object v6

    const-string v7, "safelisted event"

    .line 83
    invoke-virtual {v6, v7, v4}, Lcom/google/android/gms/measurement/internal/zzqf;->zzag(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_15

    goto :goto_c

    .line 77
    :cond_16
    :goto_b
    iput-object v1, p0, Lcom/google/android/gms/measurement/internal/zzgs;->zzi:Ljava/util/List;

    :goto_c
    if-eqz v2, :cond_17

    .line 84
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzaT()Landroid/content/Context;

    move-result-object v0

    .line 85
    invoke-static {v0}, Lcom/google/android/gms/common/wrappers/InstantApps;->isInstantApp(Landroid/content/Context;)Z

    move-result v0

    iput v0, p0, Lcom/google/android/gms/measurement/internal/zzgs;->zzk:I

    return-void

    :cond_17
    iput v5, p0, Lcom/google/android/gms/measurement/internal/zzgs;->zzk:I

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method protected final zzf()Z
    .locals 1

    const/4 v0, 0x1

    return v0

    .array-data 1
    .end array-data
.end method

.method final zzh()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzg;->zza()V

    iget v0, p0, Lcom/google/android/gms/measurement/internal/zzgs;->zzk:I

    return v0

    .array-data 1
    .end array-data
.end method

.method final zzi()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzg;->zza()V

    iget v0, p0, Lcom/google/android/gms/measurement/internal/zzgs;->zzc:I

    return v0

    .array-data 1
    .end array-data
.end method

.method final zzj()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/measurement/internal/zzgs;->zzh:J

    return-wide v0

    nop

    .array-data 1
    .end array-data
.end method

.method final zzk(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzr;
    .locals 50

    move-object/from16 v1, p0

    .line 1
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzjq;->zzg()V

    .line 2
    new-instance v44, Lcom/google/android/gms/measurement/internal/zzr;

    .line 3
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzgs;->zzm()Ljava/lang/String;

    move-result-object v3

    .line 4
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzgs;->zzo()Ljava/lang/String;

    move-result-object v4

    .line 5
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzg;->zza()V

    iget-object v5, v1, Lcom/google/android/gms/measurement/internal/zzgs;->zzb:Ljava/lang/String;

    .line 6
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzg;->zza()V

    iget v0, v1, Lcom/google/android/gms/measurement/internal/zzgs;->zzc:I

    int-to-long v6, v0

    .line 7
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzg;->zza()V

    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzgs;->zzd:Ljava/lang/String;

    .line 8
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v8, v1, Lcom/google/android/gms/measurement/internal/zzgs;->zzd:Ljava/lang/String;

    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 9
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzf()Lcom/google/android/gms/measurement/internal/zzam;

    move-result-object v2

    .line 10
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzam;->zzj()J

    .line 11
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzg;->zza()V

    .line 12
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzjq;->zzg()V

    iget-wide v9, v1, Lcom/google/android/gms/measurement/internal/zzgs;->zzf:J

    const-wide/16 v11, 0x0

    cmp-long v2, v9, v11

    const/4 v13, 0x0

    if-nez v2, :cond_4

    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzgs;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 13
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzio;->zzw()Lcom/google/android/gms/measurement/internal/zzqf;

    move-result-object v2

    .line 14
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzaT()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzaT()Landroid/content/Context;

    move-result-object v0

    .line 13
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 15
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzjq;->zzg()V

    .line 16
    invoke-static {v9}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 18
    invoke-virtual {v9}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    .line 19
    invoke-static {}, Lcom/google/android/gms/measurement/internal/zzqf;->zzI()Ljava/security/MessageDigest;

    move-result-object v14

    if-nez v14, :cond_0

    iget-object v0, v2, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 20
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object v0

    .line 21
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzhe;->zze()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object v0

    const-string v2, "Could not get MD5 instance"

    invoke-virtual {v0, v2}, Lcom/google/android/gms/measurement/internal/zzhc;->zza(Ljava/lang/String;)V

    const-wide/16 v9, -0x1

    goto :goto_1

    :cond_0
    if-eqz v10, :cond_3

    .line 22
    :try_start_0
    invoke-virtual {v2, v9, v0}, Lcom/google/android/gms/measurement/internal/zzqf;->zzam(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 23
    invoke-static {v9}, Lcom/google/android/gms/common/wrappers/Wrappers;->packageManager(Landroid/content/Context;)Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;

    move-result-object v0

    iget-object v9, v2, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 24
    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/zzio;->zzaT()Landroid/content/Context;

    move-result-object v10

    .line 25
    invoke-virtual {v10}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v10

    const/16 v15, 0x40

    invoke-virtual {v0, v10, v15}, Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 26
    iget-object v10, v0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    if-eqz v10, :cond_1

    iget-object v10, v0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    array-length v10, v10

    if-lez v10, :cond_1

    .line 29
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    aget-object v0, v0, v13

    invoke-virtual {v0}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v0

    invoke-virtual {v14, v0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v0

    .line 30
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzqf;->zzr([B)J

    move-result-wide v9

    move-wide v15, v9

    goto :goto_0

    .line 27
    :cond_1
    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/zzio;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object v0

    .line 28
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzhe;->zzk()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object v0

    const-string v9, "Could not get signatures"

    invoke-virtual {v0, v9}, Lcom/google/android/gms/measurement/internal/zzhc;->zza(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const-wide/16 v15, -0x1

    goto :goto_0

    :cond_2
    move-wide v15, v11

    :goto_0
    move-wide v9, v15

    goto :goto_1

    :catch_0
    move-exception v0

    .line 52
    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 31
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzio;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object v2

    .line 32
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzhe;->zze()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object v2

    const-string v9, "Package name not found"

    invoke-virtual {v2, v9, v0}, Lcom/google/android/gms/measurement/internal/zzhc;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_3
    move-wide v9, v11

    .line 21
    :goto_1
    iput-wide v9, v1, Lcom/google/android/gms/measurement/internal/zzgs;->zzf:J

    :cond_4
    move-wide v14, v9

    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzgs;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 33
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzJ()Z

    move-result v16

    .line 34
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzio;->zzm()Lcom/google/android/gms/measurement/internal/zzht;

    move-result-object v9

    .line 35
    iget-boolean v9, v9, Lcom/google/android/gms/measurement/internal/zzht;->zzm:Z

    const/4 v10, 0x1

    xor-int/lit8 v17, v9, 0x1

    .line 36
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzjq;->zzg()V

    .line 37
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzJ()Z

    move-result v0

    const/4 v9, 0x0

    if-nez v0, :cond_5

    :catch_1
    :goto_2
    move-object v0, v9

    goto/16 :goto_3

    .line 38
    :cond_5
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzrp;->zzb()Z

    .line 39
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzio;->zzf()Lcom/google/android/gms/measurement/internal/zzam;

    move-result-object v0

    .line 38
    sget-object v11, Lcom/google/android/gms/measurement/internal/zzgi;->zzaG:Lcom/google/android/gms/measurement/internal/zzgg;

    .line 40
    invoke-virtual {v0, v9, v11}, Lcom/google/android/gms/measurement/internal/zzam;->zzx(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzgg;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 53
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object v0

    .line 54
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzhe;->zzj()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object v0

    const-string v2, "Disabled IID for tests."

    invoke-virtual {v0, v2}, Lcom/google/android/gms/measurement/internal/zzhc;->zza(Ljava/lang/String;)V

    goto :goto_2

    .line 41
    :cond_6
    :try_start_1
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzio;->zzaT()Landroid/content/Context;

    move-result-object v0

    .line 42
    invoke-virtual {v0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-string v2, "com.google.firebase.analytics.FirebaseAnalytics"

    .line 43
    invoke-virtual {v0, v2}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    if-nez v0, :cond_7

    goto :goto_2

    :cond_7
    :try_start_2
    const-string v2, "getInstance"

    new-array v11, v10, [Ljava/lang/Class;

    const-class v12, Landroid/content/Context;

    aput-object v12, v11, v13

    .line 44
    invoke-virtual {v0, v2, v11}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    new-array v11, v10, [Ljava/lang/Object;

    iget-object v12, v1, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 45
    invoke-virtual {v12}, Lcom/google/android/gms/measurement/internal/zzio;->zzaT()Landroid/content/Context;

    move-result-object v12

    aput-object v12, v11, v13

    .line 46
    invoke-virtual {v2, v9, v11}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    if-nez v2, :cond_8

    goto :goto_2

    :cond_8
    :try_start_3
    const-string v11, "getFirebaseInstanceId"

    new-array v12, v13, [Ljava/lang/Class;

    .line 49
    invoke-virtual {v0, v11, v12}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v11, v13, [Ljava/lang/Object;

    .line 50
    invoke-virtual {v0, v2, v11}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_3

    .line 48
    :catch_2
    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 51
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object v0

    .line 52
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzhe;->zzl()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object v0

    const-string v2, "Failed to retrieve Firebase Instance Id"

    invoke-virtual {v0, v2}, Lcom/google/android/gms/measurement/internal/zzhc;->zza(Ljava/lang/String;)V

    goto :goto_2

    .line 90
    :catch_3
    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 47
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object v0

    .line 48
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzhe;->zzm()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object v0

    const-string v2, "Failed to obtain Firebase Analytics instance"

    invoke-virtual {v0, v2}, Lcom/google/android/gms/measurement/internal/zzhc;->zza(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 37
    :goto_3
    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzgs;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 55
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzio;->zzm()Lcom/google/android/gms/measurement/internal/zzht;

    move-result-object v11

    iget-object v11, v11, Lcom/google/android/gms/measurement/internal/zzht;->zzc:Lcom/google/android/gms/measurement/internal/zzhp;

    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/zzhp;->zza()J

    move-result-wide v11

    const-wide/16 v18, 0x0

    cmp-long v20, v11, v18

    if-nez v20, :cond_9

    iget-wide v11, v2, Lcom/google/android/gms/measurement/internal/zzio;->zza:J

    move-wide/from16 v22, v11

    goto :goto_4

    .line 77
    :cond_9
    iget-wide v9, v2, Lcom/google/android/gms/measurement/internal/zzio;->zza:J

    .line 56
    invoke-static {v9, v10, v11, v12}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v9

    move-wide/from16 v22, v9

    .line 57
    :goto_4
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzg;->zza()V

    iget v11, v1, Lcom/google/android/gms/measurement/internal/zzgs;->zzk:I

    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 58
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzio;->zzf()Lcom/google/android/gms/measurement/internal/zzam;

    move-result-object v9

    .line 59
    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/zzam;->zzw()Z

    move-result v24

    .line 60
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzio;->zzm()Lcom/google/android/gms/measurement/internal/zzht;

    move-result-object v9

    .line 61
    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/zzjq;->zzg()V

    .line 62
    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/zzht;->zzb()Landroid/content/SharedPreferences;

    move-result-object v9

    const-string v10, "deferred_analytics_collection"

    invoke-interface {v9, v10, v13}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v25

    .line 63
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzgs;->zzl()Ljava/lang/String;

    move-result-object v26

    .line 64
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzio;->zzf()Lcom/google/android/gms/measurement/internal/zzam;

    move-result-object v9

    const-string v10, "google_analytics_default_allow_ad_personalization_signals"

    const/4 v12, 0x1

    .line 65
    invoke-virtual {v9, v10, v12}, Lcom/google/android/gms/measurement/internal/zzam;->zzm(Ljava/lang/String;Z)Lcom/google/android/gms/measurement/internal/zzju;

    move-result-object v9

    .line 66
    sget-object v12, Lcom/google/android/gms/measurement/internal/zzju;->zzd:Lcom/google/android/gms/measurement/internal/zzju;

    if-eq v9, v12, :cond_a

    move-object/from16 v27, v10

    const/4 v12, 0x1

    goto :goto_5

    :cond_a
    move-object/from16 v27, v10

    move v12, v13

    :goto_5
    iget-wide v9, v1, Lcom/google/android/gms/measurement/internal/zzgs;->zzg:J

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v28

    iget-object v12, v1, Lcom/google/android/gms/measurement/internal/zzgs;->zzi:Ljava/util/List;

    .line 67
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzio;->zzm()Lcom/google/android/gms/measurement/internal/zzht;

    move-result-object v29

    .line 68
    invoke-virtual/range {v29 .. v29}, Lcom/google/android/gms/measurement/internal/zzht;->zzh()Lcom/google/android/gms/measurement/internal/zzjx;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Lcom/google/android/gms/measurement/internal/zzjx;->zzq()Ljava/lang/String;

    move-result-object v29

    iget-object v13, v1, Lcom/google/android/gms/measurement/internal/zzgs;->zzj:Ljava/lang/String;

    if-nez v13, :cond_b

    .line 69
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzio;->zzw()Lcom/google/android/gms/measurement/internal/zzqf;

    move-result-object v13

    .line 70
    invoke-virtual {v13}, Lcom/google/android/gms/measurement/internal/zzqf;->zzF()Ljava/lang/String;

    move-result-object v13

    iput-object v13, v1, Lcom/google/android/gms/measurement/internal/zzgs;->zzj:Ljava/lang/String;

    :cond_b
    iget-object v13, v1, Lcom/google/android/gms/measurement/internal/zzgs;->zzj:Ljava/lang/String;

    .line 71
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzio;->zzm()Lcom/google/android/gms/measurement/internal/zzht;

    move-result-object v31

    move-wide/from16 v32, v9

    .line 72
    invoke-virtual/range {v31 .. v31}, Lcom/google/android/gms/measurement/internal/zzht;->zzh()Lcom/google/android/gms/measurement/internal/zzjx;

    move-result-object v9

    .line 73
    sget-object v10, Lcom/google/android/gms/measurement/internal/zzjw;->zzb:Lcom/google/android/gms/measurement/internal/zzjw;

    invoke-virtual {v9, v10}, Lcom/google/android/gms/measurement/internal/zzjx;->zzr(Lcom/google/android/gms/measurement/internal/zzjw;)Z

    move-result v9

    if-nez v9, :cond_c

    move/from16 v31, v11

    move-object/from16 v34, v12

    const-wide/16 v18, 0x0

    const/16 v35, 0x0

    goto :goto_7

    .line 74
    :cond_c
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzjq;->zzg()V

    iget-wide v9, v1, Lcom/google/android/gms/measurement/internal/zzgs;->zzo:J

    const-wide/16 v18, 0x0

    cmp-long v9, v9, v18

    if-nez v9, :cond_d

    move/from16 v31, v11

    move-object/from16 v34, v12

    goto :goto_6

    .line 75
    :cond_d
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzio;->zzaU()Lcom/google/android/gms/common/util/Clock;

    move-result-object v9

    .line 76
    invoke-interface {v9}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v9

    move/from16 v31, v11

    move-object/from16 v34, v12

    iget-wide v11, v1, Lcom/google/android/gms/measurement/internal/zzgs;->zzo:J

    sub-long/2addr v9, v11

    iget-object v11, v1, Lcom/google/android/gms/measurement/internal/zzgs;->zzn:Ljava/lang/String;

    if-eqz v11, :cond_e

    const-wide/32 v11, 0x5265c00

    cmp-long v9, v9, v11

    if-lez v9, :cond_e

    iget-object v9, v1, Lcom/google/android/gms/measurement/internal/zzgs;->zzp:Ljava/lang/String;

    if-nez v9, :cond_e

    .line 77
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzgs;->zzq()V

    .line 74
    :cond_e
    :goto_6
    iget-object v9, v1, Lcom/google/android/gms/measurement/internal/zzgs;->zzn:Ljava/lang/String;

    if-nez v9, :cond_f

    .line 78
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzgs;->zzq()V

    :cond_f
    iget-object v9, v1, Lcom/google/android/gms/measurement/internal/zzgs;->zzn:Ljava/lang/String;

    move-object/from16 v35, v9

    .line 79
    :goto_7
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzio;->zzf()Lcom/google/android/gms/measurement/internal/zzam;

    move-result-object v9

    .line 80
    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/zzam;->zzE()Z

    move-result v36

    .line 81
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzio;->zzw()Lcom/google/android/gms/measurement/internal/zzqf;

    move-result-object v2

    .line 82
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzgs;->zzm()Ljava/lang/String;

    move-result-object v9

    iget-object v10, v2, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 83
    invoke-virtual {v10}, Lcom/google/android/gms/measurement/internal/zzio;->zzaT()Landroid/content/Context;

    move-result-object v11

    .line 84
    invoke-virtual {v11}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v11

    if-nez v11, :cond_10

    move-wide/from16 v37, v18

    const/4 v11, 0x0

    goto :goto_9

    .line 85
    :cond_10
    :try_start_4
    invoke-virtual {v10}, Lcom/google/android/gms/measurement/internal/zzio;->zzaT()Landroid/content/Context;

    move-result-object v10

    .line 86
    invoke-static {v10}, Lcom/google/android/gms/common/wrappers/Wrappers;->packageManager(Landroid/content/Context;)Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;

    move-result-object v10
    :try_end_4
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_4 .. :try_end_4} :catch_4

    const/4 v11, 0x0

    :try_start_5
    invoke-virtual {v10, v9, v11}, Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v10

    if-eqz v10, :cond_11

    .line 87
    iget v2, v10, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I
    :try_end_5
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_5 .. :try_end_5} :catch_5

    goto :goto_8

    :catch_4
    const/4 v11, 0x0

    .line 28
    :catch_5
    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 88
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzio;->zzaV()Lcom/google/android/gms/measurement/internal/zzaf;

    .line 89
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzio;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object v2

    .line 90
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzhe;->zzi()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object v2

    const-string v10, "PackageManager failed to find running app: app_id"

    invoke-virtual {v2, v10, v9}, Lcom/google/android/gms/measurement/internal/zzhc;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_11
    move v2, v11

    :goto_8
    int-to-long v9, v2

    move-wide/from16 v37, v9

    .line 84
    :goto_9
    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 91
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzio;->zzm()Lcom/google/android/gms/measurement/internal/zzht;

    move-result-object v9

    .line 92
    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/zzht;->zzh()Lcom/google/android/gms/measurement/internal/zzjx;

    move-result-object v9

    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/zzjx;->zzb()I

    move-result v39

    .line 93
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzio;->zzm()Lcom/google/android/gms/measurement/internal/zzht;

    move-result-object v9

    .line 94
    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/zzht;->zzf()Lcom/google/android/gms/measurement/internal/zzba;

    move-result-object v9

    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/zzba;->zzj()Ljava/lang/String;

    move-result-object v40

    .line 95
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzqr;->zzb()Z

    .line 96
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzio;->zzf()Lcom/google/android/gms/measurement/internal/zzam;

    move-result-object v9

    .line 95
    sget-object v10, Lcom/google/android/gms/measurement/internal/zzgi;->zzaW:Lcom/google/android/gms/measurement/internal/zzgg;

    const/4 v12, 0x0

    .line 97
    invoke-virtual {v9, v12, v10}, Lcom/google/android/gms/measurement/internal/zzam;->zzx(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzgg;)Z

    move-result v9

    if-eqz v9, :cond_12

    .line 98
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzio;->zzw()Lcom/google/android/gms/measurement/internal/zzqf;

    move-result-object v9

    .line 99
    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/zzqf;->zzl()I

    move-result v9

    move/from16 v41, v9

    goto :goto_a

    :cond_12
    move/from16 v41, v11

    .line 100
    :goto_a
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzqr;->zzb()Z

    .line 101
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzio;->zzf()Lcom/google/android/gms/measurement/internal/zzam;

    move-result-object v9

    .line 102
    invoke-virtual {v9, v12, v10}, Lcom/google/android/gms/measurement/internal/zzam;->zzx(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzgg;)Z

    move-result v9

    if-eqz v9, :cond_13

    .line 103
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzio;->zzw()Lcom/google/android/gms/measurement/internal/zzqf;

    move-result-object v9

    .line 104
    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/zzqf;->zzq()J

    move-result-wide v9

    move-wide/from16 v42, v9

    goto :goto_b

    :cond_13
    move-wide/from16 v42, v18

    .line 105
    :goto_b
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzio;->zzf()Lcom/google/android/gms/measurement/internal/zzam;

    move-result-object v9

    .line 106
    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/zzam;->zzs()Ljava/lang/String;

    move-result-object v45

    .line 107
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzio;->zzf()Lcom/google/android/gms/measurement/internal/zzam;

    move-result-object v9

    move-object/from16 v10, v27

    const/4 v12, 0x1

    .line 108
    invoke-virtual {v9, v10, v12}, Lcom/google/android/gms/measurement/internal/zzam;->zzm(Ljava/lang/String;Z)Lcom/google/android/gms/measurement/internal/zzju;

    move-result-object v9

    new-instance v10, Lcom/google/android/gms/measurement/internal/zze;

    invoke-direct {v10, v9}, Lcom/google/android/gms/measurement/internal/zze;-><init>(Lcom/google/android/gms/measurement/internal/zzju;)V

    .line 109
    invoke-virtual {v10}, Lcom/google/android/gms/measurement/internal/zze;->zzc()Ljava/lang/String;

    move-result-object v46

    iget-object v9, v1, Lcom/google/android/gms/measurement/internal/zzgs;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    iget-wide v9, v9, Lcom/google/android/gms/measurement/internal/zzio;->zza:J

    .line 110
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzio;->zzf()Lcom/google/android/gms/measurement/internal/zzam;

    move-result-object v2

    sget-object v12, Lcom/google/android/gms/measurement/internal/zzgi;->zzaR:Lcom/google/android/gms/measurement/internal/zzgg;

    const/4 v11, 0x0

    .line 111
    invoke-virtual {v2, v11, v12}, Lcom/google/android/gms/measurement/internal/zzam;->zzx(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzgg;)Z

    move-result v2

    if-eqz v2, :cond_14

    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzf;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 112
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzio;->zzs()Lcom/google/android/gms/measurement/internal/zzmd;

    move-result-object v2

    .line 113
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzmd;->zzi()Lcom/google/android/gms/internal/measurement/zzih;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzih;->zza()I

    move-result v2

    move/from16 v47, v2

    goto :goto_c

    :cond_14
    const/16 v47, 0x0

    :goto_c
    const-wide/32 v11, 0x1d0da

    move-wide/from16 v48, v9

    move-wide v9, v11

    const/16 v27, 0x0

    move-object/from16 v2, v44

    move/from16 v19, v31

    move-object/from16 v30, v34

    move-wide v11, v14

    move-object/from16 v31, v13

    move-object/from16 v13, p1

    move/from16 v14, v16

    move/from16 v15, v17

    move-object/from16 v16, v0

    move-wide/from16 v17, v22

    move/from16 v20, v24

    move/from16 v21, v25

    move-object/from16 v22, v26

    move-object/from16 v23, v28

    move-wide/from16 v24, v32

    move-object/from16 v26, v30

    move-object/from16 v28, v29

    move-object/from16 v29, v31

    move-object/from16 v30, v35

    move/from16 v31, v36

    move-wide/from16 v32, v37

    move/from16 v34, v39

    move-object/from16 v35, v40

    move/from16 v36, v41

    move-wide/from16 v37, v42

    move-object/from16 v39, v45

    move-object/from16 v40, v46

    move-wide/from16 v41, v48

    move/from16 v43, v47

    .line 114
    invoke-direct/range {v2 .. v43}, Lcom/google/android/gms/measurement/internal/zzr;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;JJLjava/lang/String;ZZLjava/lang/String;JIZZLjava/lang/String;Ljava/lang/Boolean;JLjava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZJILjava/lang/String;IJLjava/lang/String;Ljava/lang/String;JI)V

    return-object v44

    nop

    .array-data 1
    .end array-data
.end method

.method final zzl()Ljava/lang/String;
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzg;->zza()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzf()Lcom/google/android/gms/measurement/internal/zzam;

    move-result-object v0

    .line 3
    sget-object v1, Lcom/google/android/gms/measurement/internal/zzgi;->zzbp:Lcom/google/android/gms/measurement/internal/zzgg;

    const/4 v2, 0x0

    .line 4
    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/measurement/internal/zzam;->zzx(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzgg;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object v2

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzgs;->zzm:Ljava/lang/String;

    return-object v0

    .array-data 1
    .end array-data
.end method

.method final zzm()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzg;->zza()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzgs;->zza:Ljava/lang/String;

    .line 2
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzgs;->zza:Ljava/lang/String;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method final zzn()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzg;->zza()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzgs;->zze:Ljava/lang/String;

    .line 2
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzgs;->zze:Ljava/lang/String;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method final zzo()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzjq;->zzg()V

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzg;->zza()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzgs;->zzl:Ljava/lang/String;

    .line 3
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzgs;->zzl:Ljava/lang/String;

    return-object v0

    .array-data 1
    .end array-data
.end method

.method final zzp()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzgs;->zzi:Ljava/util/List;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method final zzq()V
    .locals 7

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzjq;->zzg()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzm()Lcom/google/android/gms/measurement/internal/zzht;

    move-result-object v1

    .line 3
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzht;->zzh()Lcom/google/android/gms/measurement/internal/zzjx;

    move-result-object v1

    .line 4
    sget-object v2, Lcom/google/android/gms/measurement/internal/zzjw;->zzb:Lcom/google/android/gms/measurement/internal/zzjw;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/zzjx;->zzr(Lcom/google/android/gms/measurement/internal/zzjw;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_0

    .line 5
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object v1

    .line 6
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzhe;->zzd()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object v1

    const-string v4, "Analytics Storage consent is not granted"

    invoke-virtual {v1, v4}, Lcom/google/android/gms/measurement/internal/zzhc;->zza(Ljava/lang/String;)V

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/16 v1, 0x10

    new-array v1, v1, [B

    .line 7
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzw()Lcom/google/android/gms/measurement/internal/zzqf;

    move-result-object v4

    .line 8
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzqf;->zzJ()Ljava/security/SecureRandom;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/security/SecureRandom;->nextBytes([B)V

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v5, v3, [Ljava/lang/Object;

    new-instance v6, Ljava/math/BigInteger;

    .line 9
    invoke-direct {v6, v3, v1}, Ljava/math/BigInteger;-><init>(I[B)V

    aput-object v6, v5, v2

    const-string v1, "%032x"

    invoke-static {v4, v1, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 10
    :goto_0
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object v4

    .line 11
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzhe;->zzd()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object v4

    new-array v3, v3, [Ljava/lang/Object;

    if-nez v1, :cond_1

    const-string v5, "null"

    goto :goto_1

    :cond_1
    const-string v5, "not null"

    :goto_1
    aput-object v5, v3, v2

    const-string v2, "Resetting session stitching token to %s"

    .line 12
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 13
    invoke-virtual {v4, v2}, Lcom/google/android/gms/measurement/internal/zzhc;->zza(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/google/android/gms/measurement/internal/zzgs;->zzn:Ljava/lang/String;

    .line 14
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzaU()Lcom/google/android/gms/common/util/Clock;

    move-result-object v0

    .line 15
    invoke-interface {v0}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/measurement/internal/zzgs;->zzo:J

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method final zzr(Ljava/lang/String;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzgs;->zzp:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzgs;->zzp:Ljava/lang/String;

    return v1

    nop

    .array-data 1
    .end array-data
.end method
