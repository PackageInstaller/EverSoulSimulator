.class public final Lcom/google/android/gms/measurement/internal/zzlw;
.super Lcom/google/android/gms/measurement/internal/zzg;
.source "com.google.android.gms:play-services-measurement-impl@@22.4.0"


# instance fields
.field protected zza:Lcom/google/android/gms/measurement/internal/zzlv;

.field final zzb:Lcom/google/android/gms/measurement/internal/zzx;

.field protected zzc:Z

.field private zzd:Lcom/google/android/gms/measurement/internal/zzkb;

.field private final zze:Ljava/util/Set;

.field private zzf:Z

.field private final zzg:Ljava/util/concurrent/atomic/AtomicReference;

.field private final zzh:Ljava/lang/Object;

.field private zzi:Z

.field private zzj:I

.field private zzk:Lcom/google/android/gms/measurement/internal/zzaz;

.field private zzl:Lcom/google/android/gms/measurement/internal/zzaz;

.field private zzm:Ljava/util/PriorityQueue;

.field private zzn:Z

.field private zzo:Lcom/google/android/gms/measurement/internal/zzjx;

.field private final zzp:Ljava/util/concurrent/atomic/AtomicLong;

.field private zzq:J

.field private zzr:Lcom/google/android/gms/measurement/internal/zzaz;

.field private zzs:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

.field private zzt:Lcom/google/android/gms/measurement/internal/zzaz;

.field private final zzv:Lcom/google/android/gms/measurement/internal/zzqe;


# direct methods
.method protected constructor <init>(Lcom/google/android/gms/measurement/internal/zzio;)V
    .locals 3

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/measurement/internal/zzg;-><init>(Lcom/google/android/gms/measurement/internal/zzio;)V

    .line 2
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/zzlw;->zze:Ljava/util/Set;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/zzlw;->zzh:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzlw;->zzi:Z

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/measurement/internal/zzlw;->zzj:I

    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzlw;->zzc:Z

    new-instance v0, Lcom/google/android/gms/measurement/internal/zzlk;

    invoke-direct {v0, p0}, Lcom/google/android/gms/measurement/internal/zzlk;-><init>(Lcom/google/android/gms/measurement/internal/zzlw;)V

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/zzlw;->zzv:Lcom/google/android/gms/measurement/internal/zzqe;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    .line 3
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/zzlw;->zzg:Ljava/util/concurrent/atomic/AtomicReference;

    .line 4
    sget-object v0, Lcom/google/android/gms/measurement/internal/zzjx;->zza:Lcom/google/android/gms/measurement/internal/zzjx;

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/zzlw;->zzo:Lcom/google/android/gms/measurement/internal/zzjx;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/android/gms/measurement/internal/zzlw;->zzq:J

    .line 5
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/zzlw;->zzp:Ljava/util/concurrent/atomic/AtomicLong;

    new-instance v0, Lcom/google/android/gms/measurement/internal/zzx;

    invoke-direct {v0, p1}, Lcom/google/android/gms/measurement/internal/zzx;-><init>(Lcom/google/android/gms/measurement/internal/zzio;)V

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/zzlw;->zzb:Lcom/google/android/gms/measurement/internal/zzx;

    return-void

    .array-data 1
    .end array-data
.end method

.method public static synthetic zzA(Lcom/google/android/gms/measurement/internal/zzlw;Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 5

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzio;->zzf()Lcom/google/android/gms/measurement/internal/zzam;

    move-result-object v0

    const/4 v1, 0x0

    .line 2
    sget-object v2, Lcom/google/android/gms/measurement/internal/zzgi;->zzbj:Lcom/google/android/gms/measurement/internal/zzgg;

    .line 3
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzam;->zzx(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzgg;)Z

    move-result v0

    const-wide/16 v1, 0x1f4

    const-string v3, "IABTCF_TCString change picked up in listener."

    const-string v4, "IABTCF_TCString"

    if-nez v0, :cond_0

    .line 4
    invoke-static {p2, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 5
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzio;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object p1

    .line 6
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzhe;->zzj()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object p1

    invoke-virtual {p1, v3}, Lcom/google/android/gms/measurement/internal/zzhc;->zza(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/zzlw;->zzt:Lcom/google/android/gms/measurement/internal/zzaz;

    .line 7
    invoke-static {p0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/measurement/internal/zzaz;

    invoke-virtual {p0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzaz;->zzd(J)V

    return-void

    .line 8
    :cond_0
    invoke-static {p2, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "IABTCF_gdprApplies"

    .line 9
    invoke-static {p2, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "IABTCF_EnableAdvertiserConsentMode"

    .line 10
    invoke-static {p2, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    goto :goto_0

    :cond_1
    return-void

    .line 11
    :cond_2
    :goto_0
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzio;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object p1

    .line 12
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzhe;->zzj()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object p1

    invoke-virtual {p1, v3}, Lcom/google/android/gms/measurement/internal/zzhc;->zza(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/zzlw;->zzt:Lcom/google/android/gms/measurement/internal/zzaz;

    .line 13
    invoke-static {p0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/measurement/internal/zzaz;

    invoke-virtual {p0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzaz;->zzd(J)V

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method static bridge synthetic zzB(Lcom/google/android/gms/measurement/internal/zzlw;Z)V
    .locals 0

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/android/gms/measurement/internal/zzlw;->zzi:Z

    return-void

    .array-data 1
    .end array-data
.end method

.method static bridge synthetic zzC(Lcom/google/android/gms/measurement/internal/zzlw;I)V
    .locals 0

    iput p1, p0, Lcom/google/android/gms/measurement/internal/zzlw;->zzj:I

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method static synthetic zzD(Lcom/google/android/gms/measurement/internal/zzlw;Lcom/google/android/gms/measurement/internal/zzjx;JZZ)V
    .locals 6

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzjq;->zzg()V

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzg;->zza()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzm()Lcom/google/android/gms/measurement/internal/zzht;

    move-result-object v1

    .line 4
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzht;->zzh()Lcom/google/android/gms/measurement/internal/zzjx;

    move-result-object v1

    iget-wide v2, p0, Lcom/google/android/gms/measurement/internal/zzlw;->zzq:J

    cmp-long v2, p2, v2

    if-gtz v2, :cond_1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzjx;->zzb()I

    move-result v1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzjx;->zzb()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/android/gms/measurement/internal/zzjx;->zzs(II)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 26
    :cond_0
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object p0

    .line 27
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzhe;->zzi()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object p0

    const-string p2, "Dropped out-of-date consent setting, proposed settings"

    invoke-virtual {p0, p2, p1}, Lcom/google/android/gms/measurement/internal/zzhc;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    .line 5
    :cond_1
    :goto_0
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzm()Lcom/google/android/gms/measurement/internal/zzht;

    move-result-object v1

    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 6
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzjq;->zzg()V

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzjx;->zzb()I

    move-result v2

    .line 7
    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/zzht;->zzq(I)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/zzf;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 8
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzht;->zzb()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 9
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzjx;->zzq()Ljava/lang/String;

    move-result-object v4

    const-string v5, "consent_settings"

    invoke-interface {v1, v5, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v4, "consent_source"

    .line 10
    invoke-interface {v1, v4, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 11
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 12
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object v0

    .line 13
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzhe;->zzj()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object v0

    const-string v1, "Setting storage consent(FE)"

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/measurement/internal/zzhc;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    iput-wide p2, p0, Lcom/google/android/gms/measurement/internal/zzlw;->zzq:J

    .line 14
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzio;->zzu()Lcom/google/android/gms/measurement/internal/zzny;

    move-result-object p0

    .line 15
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzny;->zzac()Z

    move-result p0

    if-eqz p0, :cond_2

    .line 18
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzio;->zzu()Lcom/google/android/gms/measurement/internal/zzny;

    move-result-object p0

    .line 19
    invoke-virtual {p0, p4}, Lcom/google/android/gms/measurement/internal/zzny;->zzX(Z)V

    goto :goto_1

    .line 16
    :cond_2
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzio;->zzu()Lcom/google/android/gms/measurement/internal/zzny;

    move-result-object p0

    .line 17
    invoke-virtual {p0, p4}, Lcom/google/android/gms/measurement/internal/zzny;->zzR(Z)V

    :goto_1
    if-eqz p5, :cond_3

    .line 20
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzio;->zzu()Lcom/google/android/gms/measurement/internal/zzny;

    move-result-object p0

    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    .line 21
    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    invoke-virtual {p0, p1}, Lcom/google/android/gms/measurement/internal/zzny;->zzE(Ljava/util/concurrent/atomic/AtomicReference;)V

    :cond_3
    return-void

    .line 22
    :cond_4
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object p0

    .line 23
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzhe;->zzi()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object p0

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzjx;->zzb()I

    move-result p1

    .line 24
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string p2, "Lower precedence consent source ignored, proposed source"

    .line 25
    invoke-virtual {p0, p2, p1}, Lcom/google/android/gms/measurement/internal/zzhc;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method static bridge synthetic zzE(Lcom/google/android/gms/measurement/internal/zzlw;Ljava/lang/Boolean;Z)V
    .locals 0

    const/4 p2, 0x1

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/measurement/internal/zzlw;->zzas(Ljava/lang/Boolean;Z)V

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method static bridge synthetic zzF(Lcom/google/android/gms/measurement/internal/zzlw;I)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzlw;->zzk:Lcom/google/android/gms/measurement/internal/zzaz;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzlw;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    new-instance v1, Lcom/google/android/gms/measurement/internal/zzku;

    invoke-direct {v1, p0, v0}, Lcom/google/android/gms/measurement/internal/zzku;-><init>(Lcom/google/android/gms/measurement/internal/zzlw;Lcom/google/android/gms/measurement/internal/zzjs;)V

    iput-object v1, p0, Lcom/google/android/gms/measurement/internal/zzlw;->zzk:Lcom/google/android/gms/measurement/internal/zzaz;

    :cond_0
    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/zzlw;->zzk:Lcom/google/android/gms/measurement/internal/zzaz;

    int-to-long v0, p1

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    .line 2
    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/measurement/internal/zzaz;->zzd(J)V

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method static bridge synthetic zzG(Lcom/google/android/gms/measurement/internal/zzlw;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzlw;->zzat()V

    return-void

    .array-data 1
    .end array-data
.end method

.method static bridge synthetic zzaq(Lcom/google/android/gms/measurement/internal/zzlw;Ljava/lang/Throwable;)I
    .locals 4

    .line 1
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/android/gms/measurement/internal/zzlw;->zzn:Z

    const/4 v1, 0x2

    if-nez v0, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    instance-of v2, p1, Ljava/lang/IllegalStateException;

    if-nez v2, :cond_3

    const-string v2, "garbage collected"

    .line 3
    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ServiceUnavailableException"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    .line 6
    :cond_1
    instance-of p0, p1, Ljava/lang/SecurityException;

    if-eqz p0, :cond_4

    const-string p0, "READ_DEVICE_CONFIG"

    invoke-virtual {v0, p0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_1

    :cond_2
    const/4 p0, 0x3

    return p0

    :cond_3
    :goto_0
    const-string p1, "Background"

    .line 5
    invoke-virtual {v0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    const/4 v1, 0x1

    if-nez p1, :cond_5

    :cond_4
    :goto_1
    return v1

    :cond_5
    iput-boolean v1, p0, Lcom/google/android/gms/measurement/internal/zzlw;->zzn:Z

    return v1

    .array-data 1
    .end array-data
.end method

.method private final zzar(Lcom/google/android/gms/measurement/internal/zzpa;)Lcom/google/android/gms/measurement/internal/zzme;
    .locals 10

    .line 1
    :try_start_0
    new-instance v0, Ljava/net/URI;

    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzpa;->zzc:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URI;->toURL()Ljava/net/URL;

    move-result-object v5
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_1

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    .line 5
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzf;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 6
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzio;->zzh()Lcom/google/android/gms/measurement/internal/zzgs;

    move-result-object v1

    .line 7
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzgs;->zzn()Ljava/lang/String;

    move-result-object v4

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 8
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzio;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object v2

    .line 9
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzhe;->zzj()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object v2

    iget-wide v6, p1, Lcom/google/android/gms/measurement/internal/zzpa;->zza:J

    .line 10
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iget-object v6, p1, Lcom/google/android/gms/measurement/internal/zzpa;->zzc:Ljava/lang/String;

    iget-object v7, p1, Lcom/google/android/gms/measurement/internal/zzpa;->zzb:[B

    array-length v7, v7

    .line 11
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const-string v8, "[sgtm] Uploading data from app. row_id, url, uncompressed size"

    .line 12
    invoke-virtual {v2, v8, v3, v6, v7}, Lcom/google/android/gms/measurement/internal/zzhc;->zzd(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 13
    iget-object v2, p1, Lcom/google/android/gms/measurement/internal/zzpa;->zzg:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 14
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzio;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object v2

    .line 15
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzhe;->zzj()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object v2

    .line 16
    iget-object v6, p1, Lcom/google/android/gms/measurement/internal/zzpa;->zzg:Ljava/lang/String;

    const-string v7, "[sgtm] Uploading data from app. row_id"

    .line 17
    invoke-virtual {v2, v7, v3, v6}, Lcom/google/android/gms/measurement/internal/zzhc;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    new-instance v7, Ljava/util/HashMap;

    .line 18
    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 19
    iget-object v2, p1, Lcom/google/android/gms/measurement/internal/zzpa;->zzd:Landroid/os/Bundle;

    invoke-virtual {v2}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 20
    invoke-virtual {v2, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 21
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_1

    .line 22
    invoke-interface {v7, v6, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 23
    :cond_2
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzio;->zzr()Lcom/google/android/gms/measurement/internal/zzmb;

    move-result-object v3

    .line 24
    iget-object v6, p1, Lcom/google/android/gms/measurement/internal/zzpa;->zzb:[B

    new-instance v8, Lcom/google/android/gms/measurement/internal/zzkn;

    invoke-direct {v8, p0, v0, p1}, Lcom/google/android/gms/measurement/internal/zzkn;-><init>(Lcom/google/android/gms/measurement/internal/zzlw;Ljava/util/concurrent/atomic/AtomicReference;Lcom/google/android/gms/measurement/internal/zzpa;)V

    .line 25
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzjr;->zzv()V

    .line 26
    invoke-static {v5}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    invoke-static {v6}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    invoke-static {v8}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, v3, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 29
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzio;->zzaX()Lcom/google/android/gms/measurement/internal/zzil;

    move-result-object p1

    new-instance v9, Lcom/google/android/gms/measurement/internal/zzma;

    move-object v2, v9

    .line 30
    invoke-direct/range {v2 .. v8}, Lcom/google/android/gms/measurement/internal/zzma;-><init>(Lcom/google/android/gms/measurement/internal/zzmb;Ljava/lang/String;Ljava/net/URL;[BLjava/util/Map;Lcom/google/android/gms/measurement/internal/zzly;)V

    .line 31
    invoke-virtual {p1, v9}, Lcom/google/android/gms/measurement/internal/zzil;->zzp(Ljava/lang/Runnable;)V

    .line 32
    :try_start_1
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzio;->zzw()Lcom/google/android/gms/measurement/internal/zzqf;

    move-result-object p1

    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 33
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzio;->zzaU()Lcom/google/android/gms/common/util/Clock;

    move-result-object v1

    .line 34
    invoke-interface {v1}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v1

    const-wide/32 v3, 0xea60

    add-long/2addr v1, v3

    monitor-enter v0
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 35
    :goto_1
    :try_start_2
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_3

    const-wide/16 v5, 0x0

    cmp-long v5, v3, v5

    if-lez v5, :cond_3

    .line 36
    invoke-virtual {v0, v3, v4}, Ljava/lang/Object;->wait(J)V

    .line 37
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzio;->zzaU()Lcom/google/android/gms/common/util/Clock;

    move-result-object v3

    .line 38
    invoke-interface {v3}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v3

    sub-long v3, v1, v3

    goto :goto_1

    .line 39
    :cond_3
    monitor-exit v0

    goto :goto_2

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw p1
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0

    .line 4
    :catch_0
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 40
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzio;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object p1

    .line 41
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzhe;->zzk()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object p1

    const-string v1, "[sgtm] Interrupted waiting for uploading batch"

    invoke-virtual {p1, v1}, Lcom/google/android/gms/measurement/internal/zzhc;->zza(Ljava/lang/String;)V

    .line 42
    :goto_2
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_4

    sget-object p1, Lcom/google/android/gms/measurement/internal/zzme;->zza:Lcom/google/android/gms/measurement/internal/zzme;

    goto :goto_3

    :cond_4
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/measurement/internal/zzme;

    :goto_3
    return-object p1

    :catch_1
    move-exception v0

    goto :goto_4

    :catch_2
    move-exception v0

    :goto_4
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 2
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzio;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object v1

    .line 3
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzhe;->zze()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object v1

    iget-object v2, p1, Lcom/google/android/gms/measurement/internal/zzpa;->zzc:Ljava/lang/String;

    iget-wide v3, p1, Lcom/google/android/gms/measurement/internal/zzpa;->zza:J

    .line 4
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string v3, "[sgtm] Bad upload url for row_id"

    invoke-virtual {v1, v3, v2, p1, v0}, Lcom/google/android/gms/measurement/internal/zzhc;->zzd(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object p1, Lcom/google/android/gms/measurement/internal/zzme;->zzc:Lcom/google/android/gms/measurement/internal/zzme;

    return-object p1

    .array-data 1
    .end array-data
.end method

.method private final zzas(Ljava/lang/Boolean;Z)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzjq;->zzg()V

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzg;->zza()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object v1

    .line 4
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzhe;->zzd()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object v1

    const-string v2, "Setting app measurement enabled (FE)"

    invoke-virtual {v1, v2, p1}, Lcom/google/android/gms/measurement/internal/zzhc;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    .line 5
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzm()Lcom/google/android/gms/measurement/internal/zzht;

    move-result-object v1

    .line 6
    invoke-virtual {v1, p1}, Lcom/google/android/gms/measurement/internal/zzht;->zzm(Ljava/lang/Boolean;)V

    if-eqz p2, :cond_1

    .line 7
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzm()Lcom/google/android/gms/measurement/internal/zzht;

    move-result-object p2

    iget-object v0, p2, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 8
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzjq;->zzg()V

    .line 9
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzht;->zzb()Landroid/content/SharedPreferences;

    move-result-object p2

    invoke-interface {p2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    const-string v0, "measurement_enabled_from_api"

    if-eqz p1, :cond_0

    .line 10
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 11
    :cond_0
    invoke-interface {p2, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 12
    :goto_0
    invoke-interface {p2}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_1
    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/zzlw;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 13
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzio;->zzK()Z

    move-result p2

    if-nez p2, :cond_3

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_1

    :cond_2
    return-void

    .line 14
    :cond_3
    :goto_1
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzlw;->zzat()V

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method private final zzat()V
    .locals 9

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzjq;->zzg()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzm()Lcom/google/android/gms/measurement/internal/zzht;

    move-result-object v1

    .line 3
    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/zzht;->zzh:Lcom/google/android/gms/measurement/internal/zzhr;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzhr;->zza()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    const-string v2, "unset"

    .line 4
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 5
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzaU()Lcom/google/android/gms/common/util/Clock;

    move-result-object v1

    .line 6
    invoke-interface {v1}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v6

    const-string v3, "app"

    const-string v4, "_npa"

    const/4 v5, 0x0

    move-object v2, p0

    .line 7
    invoke-virtual/range {v2 .. v7}, Lcom/google/android/gms/measurement/internal/zzlw;->zzan(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;J)V

    goto :goto_1

    :cond_0
    const-string v2, "true"

    .line 8
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-eq v2, v1, :cond_1

    const-wide/16 v1, 0x0

    goto :goto_0

    :cond_1
    const-wide/16 v1, 0x1

    :goto_0
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    .line 9
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzaU()Lcom/google/android/gms/common/util/Clock;

    move-result-object v1

    .line 10
    invoke-interface {v1}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v7

    const-string v4, "app"

    const-string v5, "_npa"

    move-object v3, p0

    .line 11
    invoke-virtual/range {v3 .. v8}, Lcom/google/android/gms/measurement/internal/zzlw;->zzan(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;J)V

    .line 7
    :cond_2
    :goto_1
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzlw;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 12
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzio;->zzJ()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-boolean v1, p0, Lcom/google/android/gms/measurement/internal/zzlw;->zzc:Z

    if-eqz v1, :cond_3

    .line 17
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object v1

    .line 18
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzhe;->zzd()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object v1

    const-string v2, "Recording app launch after enabling measurement for the first time (FE)"

    .line 19
    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/zzhc;->zza(Ljava/lang/String;)V

    .line 20
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzlw;->zzH()V

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzf;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 21
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzio;->zzv()Lcom/google/android/gms/measurement/internal/zzop;

    move-result-object v1

    .line 22
    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/zzop;->zza:Lcom/google/android/gms/measurement/internal/zzoo;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzoo;->zza()V

    .line 23
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzaX()Lcom/google/android/gms/measurement/internal/zzil;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/measurement/internal/zzkw;

    invoke-direct {v1, p0}, Lcom/google/android/gms/measurement/internal/zzkw;-><init>(Lcom/google/android/gms/measurement/internal/zzlw;)V

    .line 24
    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzil;->zzq(Ljava/lang/Runnable;)V

    return-void

    .line 13
    :cond_3
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object v0

    .line 14
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzhe;->zzd()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object v0

    const-string v1, "Updating Scion state (FE)"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzhc;->zza(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzf;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 15
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzu()Lcom/google/android/gms/measurement/internal/zzny;

    move-result-object v0

    .line 16
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzny;->zzV()V

    return-void

    .array-data 1
    .end array-data
.end method

.method static bridge synthetic zzh(Lcom/google/android/gms/measurement/internal/zzlw;)I
    .locals 0

    iget p0, p0, Lcom/google/android/gms/measurement/internal/zzlw;->zzj:I

    return p0

    nop

    .array-data 1
    .end array-data
.end method

.method static bridge synthetic zzj(Lcom/google/android/gms/measurement/internal/zzlw;)Lcom/google/android/gms/measurement/internal/zzaz;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/zzlw;->zzr:Lcom/google/android/gms/measurement/internal/zzaz;

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static synthetic zzz(Lcom/google/android/gms/measurement/internal/zzlw;Landroid/os/Bundle;)V
    .locals 14

    .line 1
    invoke-virtual {p1}, Landroid/os/Bundle;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move-object v2, p1

    goto/16 :goto_2

    .line 43
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    new-instance v2, Landroid/os/Bundle;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzm()Lcom/google/android/gms/measurement/internal/zzht;

    move-result-object v3

    .line 3
    iget-object v3, v3, Lcom/google/android/gms/measurement/internal/zzht;->zzt:Lcom/google/android/gms/measurement/internal/zzho;

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzho;->zza()Landroid/os/Bundle;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 4
    invoke-virtual {p1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 5
    invoke-virtual {p1, v4}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_3

    .line 6
    instance-of v7, v6, Ljava/lang/String;

    if-nez v7, :cond_3

    instance-of v7, v6, Ljava/lang/Long;

    if-nez v7, :cond_3

    instance-of v7, v6, Ljava/lang/Double;

    if-nez v7, :cond_3

    .line 17
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzw()Lcom/google/android/gms/measurement/internal/zzqf;

    move-result-object v5

    .line 18
    invoke-virtual {v5, v6}, Lcom/google/android/gms/measurement/internal/zzqf;->zzal(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 19
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzw()Lcom/google/android/gms/measurement/internal/zzqf;

    move-result-object v7

    iget-object v8, p0, Lcom/google/android/gms/measurement/internal/zzlw;->zzv:Lcom/google/android/gms/measurement/internal/zzqe;

    const/4 v9, 0x0

    const/16 v10, 0x1b

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    .line 20
    invoke-virtual/range {v7 .. v13}, Lcom/google/android/gms/measurement/internal/zzqf;->zzR(Lcom/google/android/gms/measurement/internal/zzqe;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    .line 21
    :cond_2
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object v5

    .line 22
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzhe;->zzl()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object v5

    const-string v7, "Invalid default event parameter type. Name, value"

    .line 23
    invoke-virtual {v5, v7, v4, v6}, Lcom/google/android/gms/measurement/internal/zzhc;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 7
    :cond_3
    invoke-static {v4}, Lcom/google/android/gms/measurement/internal/zzqf;->zzap(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 8
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object v5

    .line 9
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzhe;->zzl()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object v5

    const-string v6, "Invalid default event parameter name. Name"

    invoke-virtual {v5, v6, v4}, Lcom/google/android/gms/measurement/internal/zzhc;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_4
    if-nez v6, :cond_5

    .line 10
    invoke-virtual {v2, v4}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    goto :goto_0

    .line 11
    :cond_5
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzw()Lcom/google/android/gms/measurement/internal/zzqf;

    move-result-object v7

    .line 12
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzf()Lcom/google/android/gms/measurement/internal/zzam;

    move-result-object v8

    .line 13
    invoke-virtual {v8, v1, v5}, Lcom/google/android/gms/measurement/internal/zzam;->zzc(Ljava/lang/String;Z)I

    move-result v5

    const-string v8, "param"

    .line 14
    invoke-virtual {v7, v8, v4, v5, v6}, Lcom/google/android/gms/measurement/internal/zzqf;->zzaf(Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 15
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzw()Lcom/google/android/gms/measurement/internal/zzqf;

    move-result-object v5

    .line 16
    invoke-virtual {v5, v2, v4, v6}, Lcom/google/android/gms/measurement/internal/zzqf;->zzS(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 24
    :cond_6
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzw()Lcom/google/android/gms/measurement/internal/zzqf;

    .line 25
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzf()Lcom/google/android/gms/measurement/internal/zzam;

    move-result-object v3

    .line 26
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzam;->zze()I

    move-result v3

    .line 27
    invoke-virtual {v2}, Landroid/os/Bundle;->size()I

    move-result v4

    if-gt v4, v3, :cond_7

    goto :goto_2

    :cond_7
    new-instance v4, Ljava/util/TreeSet;

    .line 28
    invoke-virtual {v2}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-direct {v4, v6}, Ljava/util/TreeSet;-><init>(Ljava/util/Collection;)V

    .line 29
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_8
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_9

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    add-int/lit8 v5, v5, 0x1

    if-le v5, v3, :cond_8

    .line 30
    invoke-virtual {v2, v6}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    goto :goto_1

    .line 31
    :cond_9
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzw()Lcom/google/android/gms/measurement/internal/zzqf;

    move-result-object v7

    iget-object v8, p0, Lcom/google/android/gms/measurement/internal/zzlw;->zzv:Lcom/google/android/gms/measurement/internal/zzqe;

    const/4 v9, 0x0

    const/16 v10, 0x1a

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    .line 32
    invoke-virtual/range {v7 .. v13}, Lcom/google/android/gms/measurement/internal/zzqf;->zzR(Lcom/google/android/gms/measurement/internal/zzqe;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    .line 33
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object v0

    .line 34
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzhe;->zzl()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object v0

    const-string v3, "Too many default event parameters set. Discarding beyond event parameter limit"

    .line 35
    invoke-virtual {v0, v3}, Lcom/google/android/gms/measurement/internal/zzhc;->zza(Ljava/lang/String;)V

    .line 1
    :goto_2
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 36
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzm()Lcom/google/android/gms/measurement/internal/zzht;

    move-result-object v3

    .line 37
    iget-object v3, v3, Lcom/google/android/gms/measurement/internal/zzht;->zzt:Lcom/google/android/gms/measurement/internal/zzho;

    invoke-virtual {v3, v2}, Lcom/google/android/gms/measurement/internal/zzho;->zzb(Landroid/os/Bundle;)V

    .line 38
    invoke-virtual {p1}, Landroid/os/Bundle;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_b

    .line 39
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzf()Lcom/google/android/gms/measurement/internal/zzam;

    move-result-object p1

    .line 40
    sget-object v0, Lcom/google/android/gms/measurement/internal/zzgi;->zzbd:Lcom/google/android/gms/measurement/internal/zzgg;

    .line 41
    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/measurement/internal/zzam;->zzx(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzgg;)Z

    move-result p1

    if-eqz p1, :cond_a

    goto :goto_3

    :cond_a
    return-void

    :cond_b
    :goto_3
    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/zzf;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 42
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzio;->zzu()Lcom/google/android/gms/measurement/internal/zzny;

    move-result-object p0

    .line 43
    invoke-virtual {p0, v2}, Lcom/google/android/gms/measurement/internal/zzny;->zzT(Landroid/os/Bundle;)V

    return-void

    nop

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public final zzH()V
    .locals 6

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzjq;->zzg()V

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzg;->zza()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzlw;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzM()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 4
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzf()Lcom/google/android/gms/measurement/internal/zzam;

    move-result-object v1

    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 5
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzio;->zzaV()Lcom/google/android/gms/measurement/internal/zzaf;

    const-string v2, "google_analytics_deferred_deep_link_enabled"

    .line 6
    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/zzam;->zzn(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 7
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 8
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object v1

    .line 9
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzhe;->zzd()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object v1

    const-string v2, "Deferred Deep Link feature enabled."

    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/zzhc;->zza(Ljava/lang/String;)V

    .line 10
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzaX()Lcom/google/android/gms/measurement/internal/zzil;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/measurement/internal/zzko;

    invoke-direct {v2, p0}, Lcom/google/android/gms/measurement/internal/zzko;-><init>(Lcom/google/android/gms/measurement/internal/zzlw;)V

    .line 11
    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/zzil;->zzq(Ljava/lang/Runnable;)V

    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzf;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 12
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzio;->zzu()Lcom/google/android/gms/measurement/internal/zzny;

    move-result-object v1

    .line 13
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzny;->zzA()V

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/android/gms/measurement/internal/zzlw;->zzc:Z

    .line 14
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzm()Lcom/google/android/gms/measurement/internal/zzht;

    move-result-object v1

    .line 15
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzjq;->zzg()V

    .line 16
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzht;->zzb()Landroid/content/SharedPreferences;

    move-result-object v2

    const/4 v3, 0x0

    const-string v4, "previous_os_version"

    invoke-interface {v2, v4, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, v1, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 17
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzio;->zzg()Lcom/google/android/gms/measurement/internal/zzbb;

    move-result-object v3

    .line 18
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzjr;->zzv()V

    sget-object v3, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    .line 19
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 20
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzht;->zzb()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 21
    invoke-interface {v1, v4, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 22
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 23
    :cond_2
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 24
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzg()Lcom/google/android/gms/measurement/internal/zzbb;

    move-result-object v0

    .line 25
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzjr;->zzv()V

    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    .line 26
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    new-instance v0, Landroid/os/Bundle;

    .line 27
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "_po"

    .line 28
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "auto"

    const-string v2, "_ou"

    .line 29
    invoke-virtual {p0, v1, v2, v0}, Lcom/google/android/gms/measurement/internal/zzlw;->zzR(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_3
    :goto_0
    return-void

    .array-data 1
    .end array-data
.end method

.method final zzI()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzjq;->zzg()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzlw;->zzl:Lcom/google/android/gms/measurement/internal/zzaz;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzaz;->zzb()V

    :cond_0
    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public final zzJ(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzaU()Lcom/google/android/gms/common/util/Clock;

    move-result-object v1

    .line 2
    invoke-interface {v1}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v1

    .line 3
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    new-instance v3, Landroid/os/Bundle;

    .line 4
    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const-string v4, "name"

    .line 5
    invoke-virtual {v3, v4, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "creation_timestamp"

    .line 6
    invoke-virtual {v3, p1, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    if-eqz p2, :cond_0

    const-string p1, "expired_event_name"

    .line 7
    invoke-virtual {v3, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "expired_event_params"

    .line 8
    invoke-virtual {v3, p1, p3}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 9
    :cond_0
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzaX()Lcom/google/android/gms/measurement/internal/zzil;

    move-result-object p1

    new-instance p2, Lcom/google/android/gms/measurement/internal/zzlg;

    invoke-direct {p2, p0, v3}, Lcom/google/android/gms/measurement/internal/zzlg;-><init>(Lcom/google/android/gms/measurement/internal/zzlw;Landroid/os/Bundle;)V

    .line 10
    invoke-virtual {p1, p2}, Lcom/google/android/gms/measurement/internal/zzil;->zzq(Ljava/lang/Runnable;)V

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public final zzK()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzaT()Landroid/content/Context;

    move-result-object v1

    .line 2
    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    instance-of v1, v1, Landroid/app/Application;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzlw;->zza:Lcom/google/android/gms/measurement/internal/zzlv;

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzaT()Landroid/content/Context;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Application;

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzlw;->zza:Lcom/google/android/gms/measurement/internal/zzlv;

    .line 5
    invoke-virtual {v0, v1}, Landroid/app/Application;->unregisterActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    :cond_0
    return-void

    .array-data 1
    .end array-data
.end method

.method final zzL()V
    .locals 9

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzqr;->zzb()Z

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzf()Lcom/google/android/gms/measurement/internal/zzam;

    move-result-object v1

    const/4 v2, 0x0

    .line 1
    sget-object v3, Lcom/google/android/gms/measurement/internal/zzgi;->zzaW:Lcom/google/android/gms/measurement/internal/zzgg;

    .line 3
    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/measurement/internal/zzam;->zzx(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzgg;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 4
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzaX()Lcom/google/android/gms/measurement/internal/zzil;

    move-result-object v1

    .line 5
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzil;->zzu()Z

    move-result v1

    if-nez v1, :cond_2

    .line 6
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzaV()Lcom/google/android/gms/measurement/internal/zzaf;

    .line 7
    invoke-static {}, Lcom/google/android/gms/measurement/internal/zzaf;->zza()Z

    move-result v1

    if-nez v1, :cond_1

    .line 8
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzg;->zza()V

    .line 9
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object v1

    .line 10
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzhe;->zzj()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object v1

    const-string v2, "Getting trigger URIs (FE)"

    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/zzhc;->zza(Ljava/lang/String;)V

    new-instance v1, Ljava/util/concurrent/atomic/AtomicReference;

    .line 11
    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 12
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzaX()Lcom/google/android/gms/measurement/internal/zzil;

    move-result-object v3

    new-instance v8, Lcom/google/android/gms/measurement/internal/zzki;

    invoke-direct {v8, p0, v1}, Lcom/google/android/gms/measurement/internal/zzki;-><init>(Lcom/google/android/gms/measurement/internal/zzlw;Ljava/util/concurrent/atomic/AtomicReference;)V

    const-wide/16 v5, 0x2710

    const-string v7, "get trigger URIs"

    move-object v4, v1

    .line 13
    invoke-virtual/range {v3 .. v8}, Lcom/google/android/gms/measurement/internal/zzil;->zze(Ljava/util/concurrent/atomic/AtomicReference;JLjava/lang/String;Ljava/lang/Runnable;)Ljava/lang/Object;

    .line 14
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-nez v1, :cond_0

    .line 15
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object v0

    .line 16
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzhe;->zze()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object v0

    const-string v1, "Timed out waiting for get trigger URIs"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzhc;->zza(Ljava/lang/String;)V

    return-void

    .line 17
    :cond_0
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzaX()Lcom/google/android/gms/measurement/internal/zzil;

    move-result-object v0

    new-instance v2, Lcom/google/android/gms/measurement/internal/zzkj;

    invoke-direct {v2, p0, v1}, Lcom/google/android/gms/measurement/internal/zzkj;-><init>(Lcom/google/android/gms/measurement/internal/zzlw;Ljava/util/List;)V

    .line 18
    invoke-virtual {v0, v2}, Lcom/google/android/gms/measurement/internal/zzil;->zzq(Ljava/lang/Runnable;)V

    return-void

    .line 19
    :cond_1
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object v0

    .line 20
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzhe;->zze()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object v0

    const-string v1, "Cannot get trigger URIs from main thread"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzhc;->zza(Ljava/lang/String;)V

    return-void

    .line 21
    :cond_2
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object v0

    .line 22
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzhe;->zze()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object v0

    const-string v1, "Cannot get trigger URIs from analytics worker thread"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzhc;->zza(Ljava/lang/String;)V

    :cond_3
    return-void

    .array-data 1
    .end array-data
.end method

.method public final zzM()V
    .locals 6

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzjq;->zzg()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzm()Lcom/google/android/gms/measurement/internal/zzht;

    move-result-object v1

    .line 3
    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/zzht;->zzo:Lcom/google/android/gms/measurement/internal/zzhn;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzhn;->zzb()Z

    move-result v1

    if-nez v1, :cond_2

    .line 4
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzm()Lcom/google/android/gms/measurement/internal/zzht;

    move-result-object v1

    .line 5
    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/zzht;->zzp:Lcom/google/android/gms/measurement/internal/zzhp;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzhp;->zza()J

    move-result-wide v1

    .line 6
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzm()Lcom/google/android/gms/measurement/internal/zzht;

    move-result-object v3

    .line 7
    iget-object v3, v3, Lcom/google/android/gms/measurement/internal/zzht;->zzp:Lcom/google/android/gms/measurement/internal/zzhp;

    const-wide/16 v4, 0x1

    add-long/2addr v4, v1

    invoke-virtual {v3, v4, v5}, Lcom/google/android/gms/measurement/internal/zzhp;->zzb(J)V

    .line 8
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzf()Lcom/google/android/gms/measurement/internal/zzam;

    const-wide/16 v3, 0x5

    cmp-long v1, v1, v3

    if-ltz v1, :cond_0

    .line 9
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object v1

    .line 10
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzhe;->zzk()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object v1

    const-string v2, "Permanently failed to retrieve Deferred Deep Link. Reached maximum retries."

    .line 11
    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/zzhc;->zza(Ljava/lang/String;)V

    .line 12
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzm()Lcom/google/android/gms/measurement/internal/zzht;

    move-result-object v0

    .line 13
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzht;->zzo:Lcom/google/android/gms/measurement/internal/zzhn;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzhn;->zza(Z)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzlw;->zzr:Lcom/google/android/gms/measurement/internal/zzaz;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzlw;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    new-instance v1, Lcom/google/android/gms/measurement/internal/zzld;

    .line 14
    invoke-direct {v1, p0, v0}, Lcom/google/android/gms/measurement/internal/zzld;-><init>(Lcom/google/android/gms/measurement/internal/zzlw;Lcom/google/android/gms/measurement/internal/zzjs;)V

    iput-object v1, p0, Lcom/google/android/gms/measurement/internal/zzlw;->zzr:Lcom/google/android/gms/measurement/internal/zzaz;

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzlw;->zzr:Lcom/google/android/gms/measurement/internal/zzaz;

    const-wide/16 v1, 0x0

    .line 15
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzaz;->zzd(J)V

    return-void

    .line 16
    :cond_2
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object v0

    .line 17
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzhe;->zzd()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object v0

    const-string v1, "Deferred Deep Link already retrieved. Not fetching again."

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzhc;->zza(Ljava/lang/String;)V

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public final zzN()V
    .locals 32

    move-object/from16 v0, p0

    .line 1
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzjq;->zzg()V

    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 2
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzio;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object v2

    .line 3
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzhe;->zzd()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object v2

    const-string v3, "Handle tcf update."

    invoke-virtual {v2, v3}, Lcom/google/android/gms/measurement/internal/zzhc;->zza(Ljava/lang/String;)V

    .line 4
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzio;->zzm()Lcom/google/android/gms/measurement/internal/zzht;

    move-result-object v2

    .line 5
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzht;->zza()Landroid/content/SharedPreferences;

    move-result-object v2

    new-instance v3, Ljava/util/HashMap;

    .line 6
    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 7
    sget-object v4, Lcom/google/android/gms/measurement/internal/zzgi;->zzbj:Lcom/google/android/gms/measurement/internal/zzgg;

    const/4 v5, 0x0

    .line 8
    invoke-virtual {v4, v5}, Lcom/google/android/gms/measurement/internal/zzgg;->zza(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 7
    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    const-string v7, "IABTCF_PurposeConsents"

    const-string v8, "IABTCF_EnableAdvertiserConsentMode"

    const-string v9, "IABTCF_gdprApplies"

    const-string v10, "IABTCF_PolicyVersion"

    const-string v11, "IABTCF_CmpSdkID"

    const-string v12, "IABTCF_VendorConsents"

    const-string v14, ""

    const/4 v5, 0x1

    const/16 v16, 0x0

    if-eqz v6, :cond_9

    .line 9
    sget v3, Lcom/google/android/gms/measurement/internal/zzot;->zzb:I

    const/4 v3, 0x7

    new-array v3, v3, [Ljava/util/Map$Entry;

    sget-object v6, Lcom/google/android/gms/internal/measurement/zzkl;->zzb:Lcom/google/android/gms/internal/measurement/zzkl;

    sget-object v15, Lcom/google/android/gms/measurement/internal/zzos;->zza:Lcom/google/android/gms/measurement/internal/zzos;

    .line 10
    invoke-static {v6, v15}, Lcom/google/android/gms/measurement/internal/zzor;->zza(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v6

    aput-object v6, v3, v16

    sget-object v6, Lcom/google/android/gms/internal/measurement/zzkl;->zzc:Lcom/google/android/gms/internal/measurement/zzkl;

    sget-object v13, Lcom/google/android/gms/measurement/internal/zzos;->zzd:Lcom/google/android/gms/measurement/internal/zzos;

    .line 11
    invoke-static {v6, v13}, Lcom/google/android/gms/measurement/internal/zzor;->zza(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v6

    aput-object v6, v3, v5

    sget-object v6, Lcom/google/android/gms/internal/measurement/zzkl;->zzd:Lcom/google/android/gms/internal/measurement/zzkl;

    .line 12
    invoke-static {v6, v15}, Lcom/google/android/gms/measurement/internal/zzor;->zza(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v6

    const/16 v17, 0x2

    aput-object v6, v3, v17

    sget-object v6, Lcom/google/android/gms/internal/measurement/zzkl;->zze:Lcom/google/android/gms/internal/measurement/zzkl;

    .line 13
    invoke-static {v6, v15}, Lcom/google/android/gms/measurement/internal/zzor;->zza(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v6

    const/4 v15, 0x3

    aput-object v6, v3, v15

    sget-object v6, Lcom/google/android/gms/internal/measurement/zzkl;->zzh:Lcom/google/android/gms/internal/measurement/zzkl;

    .line 14
    invoke-static {v6, v13}, Lcom/google/android/gms/measurement/internal/zzor;->zza(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v6

    const/4 v15, 0x4

    aput-object v6, v3, v15

    sget-object v6, Lcom/google/android/gms/internal/measurement/zzkl;->zzj:Lcom/google/android/gms/internal/measurement/zzkl;

    .line 15
    invoke-static {v6, v13}, Lcom/google/android/gms/measurement/internal/zzor;->zza(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v6

    const/4 v15, 0x5

    aput-object v6, v3, v15

    sget-object v6, Lcom/google/android/gms/internal/measurement/zzkl;->zzk:Lcom/google/android/gms/internal/measurement/zzkl;

    .line 16
    invoke-static {v6, v13}, Lcom/google/android/gms/measurement/internal/zzor;->zza(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v6

    const/4 v13, 0x6

    aput-object v6, v3, v13

    .line 17
    invoke-static {v3}, Lcom/google/common/collect/ImmutableMap;->ofEntries([Ljava/util/Map$Entry;)Lcom/google/common/collect/ImmutableMap;

    move-result-object v18

    const-string v3, "CH"

    .line 18
    invoke-static {v3}, Lcom/google/common/collect/ImmutableSet;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet;

    move-result-object v20

    new-array v3, v15, [C

    .line 19
    invoke-static {v2, v11}, Lcom/google/android/gms/measurement/internal/zzot;->zza(Landroid/content/SharedPreferences;Ljava/lang/String;)I

    move-result v22

    .line 20
    invoke-static {v2, v10}, Lcom/google/android/gms/measurement/internal/zzot;->zza(Landroid/content/SharedPreferences;Ljava/lang/String;)I

    move-result v25

    .line 21
    invoke-static {v2, v9}, Lcom/google/android/gms/measurement/internal/zzot;->zza(Landroid/content/SharedPreferences;Ljava/lang/String;)I

    move-result v24

    const-string v6, "IABTCF_PurposeOneTreatment"

    .line 22
    invoke-static {v2, v6}, Lcom/google/android/gms/measurement/internal/zzot;->zza(Landroid/content/SharedPreferences;Ljava/lang/String;)I

    move-result v26

    .line 23
    invoke-static {v2, v8}, Lcom/google/android/gms/measurement/internal/zzot;->zza(Landroid/content/SharedPreferences;Ljava/lang/String;)I

    move-result v23

    const-string v6, "IABTCF_PublisherCC"

    .line 24
    invoke-static {v2, v6}, Lcom/google/android/gms/measurement/internal/zzot;->zzb(Landroid/content/SharedPreferences;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    .line 25
    invoke-static {}, Lcom/google/common/collect/ImmutableMap;->builder()Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v6

    .line 26
    invoke-virtual/range {v18 .. v18}, Lcom/google/common/collect/ImmutableMap;->keySet()Lcom/google/common/collect/ImmutableSet;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/common/collect/ImmutableSet;->iterator()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    const/16 v10, 0x2f3

    if-eqz v9, :cond_6

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/google/android/gms/internal/measurement/zzkl;

    .line 27
    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/zzkl;->zza()I

    move-result v11

    new-instance v13, Ljava/lang/StringBuilder;

    const-string v15, "IABTCF_PublisherRestrictions"

    invoke-direct {v13, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v2, v11}, Lcom/google/android/gms/measurement/internal/zzot;->zzb(Landroid/content/SharedPreferences;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 28
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_5

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v13

    if-ge v13, v10, :cond_0

    goto :goto_2

    :cond_0
    const/16 v10, 0x2f2

    .line 29
    invoke-virtual {v11, v10}, Ljava/lang/String;->charAt(I)C

    move-result v11

    const/16 v10, 0xa

    invoke-static {v11, v10}, Ljava/lang/Character;->digit(CI)I

    move-result v10

    if-ltz v10, :cond_4

    .line 30
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzkm;->values()[Lcom/google/android/gms/internal/measurement/zzkm;

    move-result-object v11

    array-length v11, v11

    if-le v10, v11, :cond_1

    goto :goto_1

    :cond_1
    if-eqz v10, :cond_4

    if-eq v10, v5, :cond_3

    const/4 v11, 0x2

    if-eq v10, v11, :cond_2

    sget-object v10, Lcom/google/android/gms/internal/measurement/zzkm;->zzd:Lcom/google/android/gms/internal/measurement/zzkm;

    goto :goto_3

    :cond_2
    sget-object v10, Lcom/google/android/gms/internal/measurement/zzkm;->zzc:Lcom/google/android/gms/internal/measurement/zzkm;

    goto :goto_3

    :cond_3
    sget-object v10, Lcom/google/android/gms/internal/measurement/zzkm;->zzb:Lcom/google/android/gms/internal/measurement/zzkm;

    goto :goto_3

    :cond_4
    :goto_1
    sget-object v10, Lcom/google/android/gms/internal/measurement/zzkm;->zza:Lcom/google/android/gms/internal/measurement/zzkm;

    goto :goto_3

    .line 28
    :cond_5
    :goto_2
    sget-object v10, Lcom/google/android/gms/internal/measurement/zzkm;->zzd:Lcom/google/android/gms/internal/measurement/zzkm;

    .line 31
    :goto_3
    invoke-virtual {v6, v9, v10}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    goto :goto_0

    .line 32
    :cond_6
    invoke-virtual {v6}, Lcom/google/common/collect/ImmutableMap$Builder;->buildOrThrow()Lcom/google/common/collect/ImmutableMap;

    move-result-object v19

    .line 33
    invoke-static {v2, v7}, Lcom/google/android/gms/measurement/internal/zzot;->zzb(Landroid/content/SharedPreferences;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    .line 34
    invoke-static {v2, v12}, Lcom/google/android/gms/measurement/internal/zzot;->zzb(Landroid/content/SharedPreferences;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 35
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    const/16 v8, 0x31

    if-nez v7, :cond_7

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    if-lt v7, v10, :cond_7

    const/16 v7, 0x2f2

    .line 36
    invoke-virtual {v6, v7}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-ne v6, v8, :cond_7

    move/from16 v30, v5

    goto :goto_4

    :cond_7
    move/from16 v30, v16

    :goto_4
    const-string v6, "IABTCF_PurposeLegitimateInterests"

    .line 37
    invoke-static {v2, v6}, Lcom/google/android/gms/measurement/internal/zzot;->zzb(Landroid/content/SharedPreferences;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    const-string v6, "IABTCF_VendorLegitimateInterests"

    .line 38
    invoke-static {v2, v6}, Lcom/google/android/gms/measurement/internal/zzot;->zzb(Landroid/content/SharedPreferences;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 39
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_8

    .line 40
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    if-lt v6, v10, :cond_8

    const/16 v6, 0x2f2

    .line 41
    invoke-virtual {v2, v6}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, v8, :cond_8

    move/from16 v31, v5

    goto :goto_5

    :cond_8
    move/from16 v31, v16

    :goto_5
    const/16 v2, 0x32

    aput-char v2, v3, v16

    .line 42
    new-instance v2, Lcom/google/android/gms/measurement/internal/zzoq;

    move-object/from16 v21, v3

    .line 43
    invoke-static/range {v18 .. v31}, Lcom/google/android/gms/measurement/internal/zzot;->zzc(Lcom/google/common/collect/ImmutableMap;Lcom/google/common/collect/ImmutableMap;Lcom/google/common/collect/ImmutableSet;[CIIIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)Ljava/util/Map;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/google/android/gms/measurement/internal/zzoq;-><init>(Ljava/util/Map;)V

    goto :goto_6

    .line 44
    :cond_9
    invoke-static {v2, v12}, Lcom/google/android/gms/measurement/internal/zzot;->zzb(Landroid/content/SharedPreferences;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 45
    invoke-virtual {v14, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_a

    .line 46
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v12

    const/16 v13, 0x2f2

    if-le v12, v13, :cond_a

    .line 47
    invoke-virtual {v6, v13}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v6

    const-string v12, "GoogleConsent"

    invoke-interface {v3, v12, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    :cond_a
    invoke-static {v2, v9}, Lcom/google/android/gms/measurement/internal/zzot;->zza(Landroid/content/SharedPreferences;Ljava/lang/String;)I

    move-result v6

    const/4 v9, -0x1

    if-eq v6, v9, :cond_b

    const-string v12, "gdprApplies"

    .line 49
    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v12, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    :cond_b
    invoke-static {v2, v8}, Lcom/google/android/gms/measurement/internal/zzot;->zza(Landroid/content/SharedPreferences;Ljava/lang/String;)I

    move-result v6

    if-eq v6, v9, :cond_c

    const-string v8, "EnableAdvertiserConsentMode"

    .line 51
    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v8, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    :cond_c
    invoke-static {v2, v10}, Lcom/google/android/gms/measurement/internal/zzot;->zza(Landroid/content/SharedPreferences;Ljava/lang/String;)I

    move-result v6

    if-eq v6, v9, :cond_d

    const-string v8, "PolicyVersion"

    .line 53
    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v8, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    :cond_d
    invoke-static {v2, v7}, Lcom/google/android/gms/measurement/internal/zzot;->zzb(Landroid/content/SharedPreferences;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 55
    invoke-virtual {v14, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_e

    const-string v7, "PurposeConsents"

    .line 56
    invoke-interface {v3, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    :cond_e
    invoke-static {v2, v11}, Lcom/google/android/gms/measurement/internal/zzot;->zza(Landroid/content/SharedPreferences;Ljava/lang/String;)I

    move-result v2

    if-eq v2, v9, :cond_f

    const-string v6, "CmpSdkID"

    .line 58
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v6, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_f
    new-instance v2, Lcom/google/android/gms/measurement/internal/zzoq;

    .line 59
    invoke-direct {v2, v3}, Lcom/google/android/gms/measurement/internal/zzoq;-><init>(Ljava/util/Map;)V

    .line 60
    :goto_6
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzio;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object v3

    .line 61
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzhe;->zzj()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object v3

    const-string v6, "Tcf preferences read"

    invoke-virtual {v3, v6, v2}, Lcom/google/android/gms/measurement/internal/zzhc;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    .line 62
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzio;->zzf()Lcom/google/android/gms/measurement/internal/zzam;

    move-result-object v3

    const/4 v6, 0x0

    .line 63
    invoke-virtual {v3, v6, v4}, Lcom/google/android/gms/measurement/internal/zzam;->zzx(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzgg;)Z

    move-result v3

    const/16 v4, -0x1e

    const-string v6, "_tcf"

    const-string v7, "auto"

    const-string v8, "_tcfd"

    const-string v9, "Consent generated from Tcf"

    if-eqz v3, :cond_14

    .line 75
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzio;->zzm()Lcom/google/android/gms/measurement/internal/zzht;

    move-result-object v3

    .line 76
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzjq;->zzg()V

    .line 77
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzht;->zzb()Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v10, "stored_tcf_param"

    invoke-interface {v3, v10, v14}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-instance v10, Ljava/util/HashMap;

    .line 78
    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    .line 79
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_10

    new-instance v3, Lcom/google/android/gms/measurement/internal/zzoq;

    .line 80
    invoke-direct {v3, v10}, Lcom/google/android/gms/measurement/internal/zzoq;-><init>(Ljava/util/Map;)V

    goto :goto_8

    :cond_10
    const-string v11, ";"

    .line 81
    invoke-virtual {v3, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 82
    array-length v11, v3

    move/from16 v12, v16

    :goto_7
    if-ge v12, v11, :cond_12

    aget-object v13, v3, v12

    const-string v14, "="

    .line 83
    invoke-virtual {v13, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v13

    .line 84
    array-length v14, v13

    const/4 v15, 0x2

    if-lt v14, v15, :cond_11

    sget-object v14, Lcom/google/android/gms/measurement/internal/zzot;->zza:Lcom/google/common/collect/ImmutableList;

    aget-object v15, v13, v16

    invoke-virtual {v14, v15}, Lcom/google/common/collect/ImmutableList;->contains(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_11

    .line 85
    aget-object v14, v13, v16

    aget-object v13, v13, v5

    invoke-interface {v10, v14, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_11
    add-int/lit8 v12, v12, 0x1

    goto :goto_7

    :cond_12
    new-instance v3, Lcom/google/android/gms/measurement/internal/zzoq;

    .line 86
    invoke-direct {v3, v10}, Lcom/google/android/gms/measurement/internal/zzoq;-><init>(Ljava/util/Map;)V

    .line 87
    :goto_8
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzio;->zzm()Lcom/google/android/gms/measurement/internal/zzht;

    move-result-object v5

    .line 88
    invoke-virtual {v5, v2}, Lcom/google/android/gms/measurement/internal/zzht;->zzr(Lcom/google/android/gms/measurement/internal/zzoq;)Z

    move-result v5

    if-eqz v5, :cond_16

    .line 89
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzoq;->zza()Landroid/os/Bundle;

    move-result-object v5

    .line 90
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzio;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object v10

    .line 91
    invoke-virtual {v10}, Lcom/google/android/gms/measurement/internal/zzhe;->zzj()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object v10

    invoke-virtual {v10, v9, v5}, Lcom/google/android/gms/measurement/internal/zzhc;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v9, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    if-eq v5, v9, :cond_13

    .line 92
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzio;->zzaU()Lcom/google/android/gms/common/util/Clock;

    move-result-object v1

    .line 93
    invoke-interface {v1}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v9

    .line 94
    invoke-virtual {v0, v5, v4, v9, v10}, Lcom/google/android/gms/measurement/internal/zzlw;->zzaf(Landroid/os/Bundle;IJ)V

    :cond_13
    new-instance v1, Landroid/os/Bundle;

    .line 95
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 96
    invoke-virtual {v2, v3}, Lcom/google/android/gms/measurement/internal/zzoq;->zzc(Lcom/google/android/gms/measurement/internal/zzoq;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "_tcfm"

    .line 97
    invoke-virtual {v1, v4, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzoq;->zzb()Ljava/lang/String;

    move-result-object v3

    const-string v4, "_tcfd2"

    .line 99
    invoke-virtual {v1, v4, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzoq;->zzd()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v8, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    invoke-virtual {v0, v7, v6, v1}, Lcom/google/android/gms/measurement/internal/zzlw;->zzR(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void

    .line 64
    :cond_14
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzio;->zzm()Lcom/google/android/gms/measurement/internal/zzht;

    move-result-object v3

    .line 65
    invoke-virtual {v3, v2}, Lcom/google/android/gms/measurement/internal/zzht;->zzr(Lcom/google/android/gms/measurement/internal/zzoq;)Z

    move-result v3

    if-eqz v3, :cond_16

    .line 66
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzoq;->zza()Landroid/os/Bundle;

    move-result-object v3

    .line 67
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzio;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object v5

    .line 68
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzhe;->zzj()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object v5

    invoke-virtual {v5, v9, v3}, Lcom/google/android/gms/measurement/internal/zzhc;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v5, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    if-eq v3, v5, :cond_15

    .line 69
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzio;->zzaU()Lcom/google/android/gms/common/util/Clock;

    move-result-object v1

    .line 70
    invoke-interface {v1}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v9

    .line 71
    invoke-virtual {v0, v3, v4, v9, v10}, Lcom/google/android/gms/measurement/internal/zzlw;->zzaf(Landroid/os/Bundle;IJ)V

    :cond_15
    new-instance v1, Landroid/os/Bundle;

    .line 72
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 73
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzoq;->zzd()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v8, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    invoke-virtual {v0, v7, v6, v1}, Lcom/google/android/gms/measurement/internal/zzlw;->zzR(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_16
    return-void

    .array-data 1
    .end array-data
.end method

.method public final zzO(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 8

    const/4 v4, 0x1

    const/4 v5, 0x1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzaU()Lcom/google/android/gms/common/util/Clock;

    move-result-object v0

    .line 2
    invoke-interface {v0}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v7}, Lcom/google/android/gms/measurement/internal/zzlw;->zzP(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ZZJ)V

    return-void

    .array-data 1
    .end array-data
.end method

.method public final zzP(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ZZJ)V
    .locals 11

    move-object v10, p0

    if-nez p3, :cond_0

    .line 1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    move-object v5, v0

    goto :goto_0

    :cond_0
    move-object v5, p3

    :goto_0
    const-string v0, "screen_view"

    move-object v2, p2

    .line 2
    invoke-static {p2, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, v10, Lcom/google/android/gms/measurement/internal/zzf;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzt()Lcom/google/android/gms/measurement/internal/zzmo;

    move-result-object v0

    move-wide/from16 v3, p6

    .line 4
    invoke-virtual {v0, v5, v3, v4}, Lcom/google/android/gms/measurement/internal/zzmo;->zzy(Landroid/os/Bundle;J)V

    return-void

    :cond_1
    move-wide/from16 v3, p6

    const/4 v0, 0x1

    if-eqz p5, :cond_3

    iget-object v1, v10, Lcom/google/android/gms/measurement/internal/zzlw;->zzd:Lcom/google/android/gms/measurement/internal/zzkb;

    if-eqz v1, :cond_3

    .line 5
    invoke-static {p2}, Lcom/google/android/gms/measurement/internal/zzqf;->zzap(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :cond_3
    :goto_1
    move v7, v0

    if-nez p1, :cond_4

    const-string v0, "app"

    move-object v1, v0

    goto :goto_2

    :cond_4
    move-object v1, p1

    :goto_2
    const/4 v9, 0x0

    move-object v0, p0

    move-object v2, p2

    move-wide/from16 v3, p6

    move/from16 v6, p5

    move v8, p4

    .line 6
    invoke-virtual/range {v0 .. v9}, Lcom/google/android/gms/measurement/internal/zzlw;->zzZ(Ljava/lang/String;Ljava/lang/String;JLandroid/os/Bundle;ZZZLjava/lang/String;)V

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public final zzQ(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 10

    .line 1
    invoke-static {}, Lcom/google/android/gms/measurement/internal/zzio;->zzP()V

    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzio;->zzaU()Lcom/google/android/gms/common/util/Clock;

    move-result-object p1

    .line 3
    invoke-interface {p1}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v3

    const-string v1, "auto"

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x1

    move-object v0, p0

    move-object v2, p2

    move-object v5, p3

    move-object v9, p4

    .line 4
    invoke-virtual/range {v0 .. v9}, Lcom/google/android/gms/measurement/internal/zzlw;->zzZ(Ljava/lang/String;Ljava/lang/String;JLandroid/os/Bundle;ZZZLjava/lang/String;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method final zzR(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 7

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzjq;->zzg()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzaU()Lcom/google/android/gms/common/util/Clock;

    move-result-object v0

    .line 3
    invoke-interface {v0}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v4

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v6, p3

    invoke-virtual/range {v1 .. v6}, Lcom/google/android/gms/measurement/internal/zzlw;->zzS(Ljava/lang/String;Ljava/lang/String;JLandroid/os/Bundle;)V

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method final zzS(Ljava/lang/String;Ljava/lang/String;JLandroid/os/Bundle;)V
    .locals 11

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzjq;->zzg()V

    move-object v10, p0

    iget-object v0, v10, Lcom/google/android/gms/measurement/internal/zzlw;->zzd:Lcom/google/android/gms/measurement/internal/zzkb;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 2
    invoke-static {p2}, Lcom/google/android/gms/measurement/internal/zzqf;->zzap(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    move v7, v0

    goto :goto_1

    :cond_1
    :goto_0
    move v7, v1

    :goto_1
    const/4 v6, 0x1

    const/4 v8, 0x1

    const/4 v9, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    move-object/from16 v5, p5

    .line 3
    invoke-virtual/range {v0 .. v9}, Lcom/google/android/gms/measurement/internal/zzlw;->zzT(Ljava/lang/String;Ljava/lang/String;JLandroid/os/Bundle;ZZZLjava/lang/String;)V

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method protected final zzT(Ljava/lang/String;Ljava/lang/String;JLandroid/os/Bundle;ZZZLjava/lang/String;)V
    .locals 24

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    move-wide/from16 v10, p3

    move-object/from16 v12, p5

    .line 1
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 2
    invoke-static/range {p5 .. p5}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzjq;->zzg()V

    .line 4
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzg;->zza()V

    iget-object v0, v7, Lcom/google/android/gms/measurement/internal/zzlw;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 5
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzJ()Z

    move-result v1

    if-eqz v1, :cond_25

    iget-object v1, v7, Lcom/google/android/gms/measurement/internal/zzf;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 6
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzio;->zzh()Lcom/google/android/gms/measurement/internal/zzgs;

    move-result-object v1

    .line 7
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzgs;->zzp()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 8
    invoke-interface {v1, v9}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 10
    :cond_0
    iget-object v0, v7, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 174
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object v0

    .line 175
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzhe;->zzd()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object v0

    const-string v1, "Dropping non-safelisted event. event name, origin"

    invoke-virtual {v0, v1, v9, v8}, Lcom/google/android/gms/measurement/internal/zzhc;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    .line 8
    :cond_1
    :goto_0
    iget-boolean v1, v7, Lcom/google/android/gms/measurement/internal/zzlw;->zzf:Z

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x1

    if-nez v1, :cond_3

    iput-boolean v15, v7, Lcom/google/android/gms/measurement/internal/zzlw;->zzf:Z

    .line 9
    :try_start_0
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzN()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    const-string v1, "com.google.android.gms.tagmanager.TagManagerService"

    if-nez v0, :cond_2

    :try_start_1
    iget-object v0, v7, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 11
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzaT()Landroid/content/Context;

    move-result-object v0

    .line 12
    invoke-virtual {v0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-static {v1, v15, v0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    goto :goto_1

    .line 10
    :cond_2
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    :try_start_2
    const-string v1, "initialize"

    new-array v2, v15, [Ljava/lang/Class;

    .line 12
    const-class v3, Landroid/content/Context;

    aput-object v3, v2, v14

    .line 13
    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v1, v15, [Ljava/lang/Object;

    iget-object v2, v7, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 14
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzio;->zzaT()Landroid/content/Context;

    move-result-object v2

    aput-object v2, v1, v14

    .line 15
    invoke-virtual {v0, v13, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 19
    :try_start_3
    iget-object v1, v7, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 16
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzio;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object v1

    .line 17
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzhe;->zzk()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object v1

    const-string v2, "Failed to invoke Tag Manager\'s initialize() method"

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/measurement/internal/zzhc;->zzb(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_2

    .line 177
    :catch_1
    iget-object v0, v7, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 18
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object v0

    .line 19
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzhe;->zzi()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object v0

    const-string v1, "Tag Manager is not found and thus will not be used"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzhc;->zza(Ljava/lang/String;)V

    :cond_3
    :goto_2
    const-string v0, "_cmp"

    .line 20
    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "gclid"

    .line 21
    invoke-virtual {v12, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, v7, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 22
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzio;->zzaV()Lcom/google/android/gms/measurement/internal/zzaf;

    .line 23
    invoke-virtual {v12, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 24
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzio;->zzaU()Lcom/google/android/gms/common/util/Clock;

    move-result-object v0

    .line 25
    invoke-interface {v0}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v5

    const-string v2, "auto"

    const-string v3, "_lgclid"

    move-object/from16 v1, p0

    .line 26
    invoke-virtual/range {v1 .. v6}, Lcom/google/android/gms/measurement/internal/zzlw;->zzan(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;J)V

    :cond_4
    iget-object v0, v7, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 27
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzaV()Lcom/google/android/gms/measurement/internal/zzaf;

    if-eqz p6, :cond_5

    .line 28
    invoke-static/range {p2 .. p2}, Lcom/google/android/gms/measurement/internal/zzqf;->zzau(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 29
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzw()Lcom/google/android/gms/measurement/internal/zzqf;

    move-result-object v1

    .line 30
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzm()Lcom/google/android/gms/measurement/internal/zzht;

    move-result-object v2

    .line 31
    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/zzht;->zzt:Lcom/google/android/gms/measurement/internal/zzho;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzho;->zza()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v1, v12, v2}, Lcom/google/android/gms/measurement/internal/zzqf;->zzO(Landroid/os/Bundle;Landroid/os/Bundle;)V

    :cond_5
    const/16 v1, 0x28

    if-nez p8, :cond_a

    .line 32
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzaV()Lcom/google/android/gms/measurement/internal/zzaf;

    const-string v2, "_iap"

    .line 33
    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    iget-object v2, v7, Lcom/google/android/gms/measurement/internal/zzlw;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 34
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzio;->zzw()Lcom/google/android/gms/measurement/internal/zzqf;

    move-result-object v3

    const-string v4, "event"

    .line 35
    invoke-virtual {v3, v4, v9}, Lcom/google/android/gms/measurement/internal/zzqf;->zzah(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_6

    :goto_3
    const/4 v6, 0x2

    goto :goto_4

    .line 36
    :cond_6
    sget-object v5, Lcom/google/android/gms/measurement/internal/zzjy;->zza:[Ljava/lang/String;

    sget-object v6, Lcom/google/android/gms/measurement/internal/zzjy;->zzb:[Ljava/lang/String;

    invoke-virtual {v3, v4, v5, v6, v9}, Lcom/google/android/gms/measurement/internal/zzqf;->zzae(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_7

    const/16 v6, 0xd

    goto :goto_4

    :cond_7
    iget-object v5, v3, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 37
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzio;->zzf()Lcom/google/android/gms/measurement/internal/zzam;

    .line 38
    invoke-virtual {v3, v4, v1, v9}, Lcom/google/android/gms/measurement/internal/zzqf;->zzad(Ljava/lang/String;ILjava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_8

    goto :goto_3

    :cond_8
    move v6, v14

    :goto_4
    if-eqz v6, :cond_a

    .line 165
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object v3

    .line 166
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzhe;->zzf()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object v3

    .line 167
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzj()Lcom/google/android/gms/measurement/internal/zzgx;

    move-result-object v0

    .line 168
    invoke-virtual {v0, v9}, Lcom/google/android/gms/measurement/internal/zzgx;->zzd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v4, "Invalid public event name. Event will not be logged (FE)"

    .line 169
    invoke-virtual {v3, v4, v0}, Lcom/google/android/gms/measurement/internal/zzhc;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    .line 170
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzio;->zzw()Lcom/google/android/gms/measurement/internal/zzqf;

    move-result-object v0

    .line 171
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzio;->zzf()Lcom/google/android/gms/measurement/internal/zzam;

    invoke-virtual {v0, v9, v1, v15}, Lcom/google/android/gms/measurement/internal/zzqf;->zzG(Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object v0

    if-eqz v9, :cond_9

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v14

    .line 172
    :cond_9
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzio;->zzw()Lcom/google/android/gms/measurement/internal/zzqf;

    move-result-object v1

    iget-object v2, v7, Lcom/google/android/gms/measurement/internal/zzlw;->zzv:Lcom/google/android/gms/measurement/internal/zzqe;

    const/4 v3, 0x0

    const-string v4, "_ev"

    move-object/from16 p1, v1

    move-object/from16 p2, v2

    move-object/from16 p3, v3

    move/from16 p4, v6

    move-object/from16 p5, v4

    move-object/from16 p6, v0

    move/from16 p7, v14

    .line 173
    invoke-virtual/range {p1 .. p7}, Lcom/google/android/gms/measurement/internal/zzqf;->zzR(Lcom/google/android/gms/measurement/internal/zzqe;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    return-void

    .line 39
    :cond_a
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzaV()Lcom/google/android/gms/measurement/internal/zzaf;

    iget-object v6, v7, Lcom/google/android/gms/measurement/internal/zzf;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 40
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzio;->zzt()Lcom/google/android/gms/measurement/internal/zzmo;

    move-result-object v2

    .line 41
    invoke-virtual {v2, v14}, Lcom/google/android/gms/measurement/internal/zzmo;->zzj(Z)Lcom/google/android/gms/measurement/internal/zzmh;

    move-result-object v2

    const-string v3, "_sc"

    if-eqz v2, :cond_b

    .line 42
    invoke-virtual {v12, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_b

    iput-boolean v15, v2, Lcom/google/android/gms/measurement/internal/zzmh;->zzd:Z

    :cond_b
    if-eqz p6, :cond_c

    if-nez p8, :cond_c

    move v4, v15

    goto :goto_5

    :cond_c
    move v4, v14

    .line 43
    :goto_5
    invoke-static {v2, v12, v4}, Lcom/google/android/gms/measurement/internal/zzqf;->zzN(Lcom/google/android/gms/measurement/internal/zzmh;Landroid/os/Bundle;Z)V

    const-string v2, "am"

    .line 44
    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 45
    invoke-static/range {p2 .. p2}, Lcom/google/android/gms/measurement/internal/zzqf;->zzap(Ljava/lang/String;)Z

    move-result v4

    if-eqz p6, :cond_e

    iget-object v5, v7, Lcom/google/android/gms/measurement/internal/zzlw;->zzd:Lcom/google/android/gms/measurement/internal/zzkb;

    if-eqz v5, :cond_e

    if-nez v4, :cond_e

    if-eqz v2, :cond_d

    move/from16 v16, v15

    goto :goto_6

    .line 156
    :cond_d
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object v1

    .line 157
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzhe;->zzd()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object v1

    .line 158
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzj()Lcom/google/android/gms/measurement/internal/zzgx;

    move-result-object v2

    .line 159
    invoke-virtual {v2, v9}, Lcom/google/android/gms/measurement/internal/zzgx;->zzd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 160
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzj()Lcom/google/android/gms/measurement/internal/zzgx;

    move-result-object v0

    .line 161
    invoke-virtual {v0, v12}, Lcom/google/android/gms/measurement/internal/zzgx;->zzb(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "Passing event to registered event handler (FE)"

    .line 162
    invoke-virtual {v1, v3, v2, v0}, Lcom/google/android/gms/measurement/internal/zzhc;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, v7, Lcom/google/android/gms/measurement/internal/zzlw;->zzd:Lcom/google/android/gms/measurement/internal/zzkb;

    .line 163
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v7, Lcom/google/android/gms/measurement/internal/zzlw;->zzd:Lcom/google/android/gms/measurement/internal/zzkb;

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p5

    move-wide/from16 v5, p3

    .line 164
    invoke-interface/range {v1 .. v6}, Lcom/google/android/gms/measurement/internal/zzkb;->interceptEvent(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;J)V

    return-void

    :cond_e
    move/from16 v16, v2

    .line 45
    :goto_6
    iget-object v5, v7, Lcom/google/android/gms/measurement/internal/zzlw;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 46
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzio;->zzM()Z

    move-result v2

    if-nez v2, :cond_f

    goto/16 :goto_11

    .line 47
    :cond_f
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzw()Lcom/google/android/gms/measurement/internal/zzqf;

    move-result-object v2

    .line 48
    invoke-virtual {v2, v9}, Lcom/google/android/gms/measurement/internal/zzqf;->zzf(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_11

    .line 49
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object v3

    .line 50
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzhe;->zzf()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object v3

    .line 51
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzj()Lcom/google/android/gms/measurement/internal/zzgx;

    move-result-object v4

    .line 52
    invoke-virtual {v4, v9}, Lcom/google/android/gms/measurement/internal/zzgx;->zzd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v6, "Invalid event name. Event will not be logged (FE)"

    .line 53
    invoke-virtual {v3, v6, v4}, Lcom/google/android/gms/measurement/internal/zzhc;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    .line 54
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzw()Lcom/google/android/gms/measurement/internal/zzqf;

    move-result-object v3

    .line 55
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzf()Lcom/google/android/gms/measurement/internal/zzam;

    .line 56
    invoke-virtual {v3, v9, v1, v15}, Lcom/google/android/gms/measurement/internal/zzqf;->zzG(Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object v0

    if-eqz v9, :cond_10

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v14

    .line 57
    :cond_10
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzio;->zzw()Lcom/google/android/gms/measurement/internal/zzqf;

    move-result-object v1

    iget-object v3, v7, Lcom/google/android/gms/measurement/internal/zzlw;->zzv:Lcom/google/android/gms/measurement/internal/zzqe;

    const-string v4, "_ev"

    move-object/from16 p1, v1

    move-object/from16 p2, v3

    move-object/from16 p3, p9

    move/from16 p4, v2

    move-object/from16 p5, v4

    move-object/from16 p6, v0

    move/from16 p7, v14

    .line 58
    invoke-virtual/range {p1 .. p7}, Lcom/google/android/gms/measurement/internal/zzqf;->zzR(Lcom/google/android/gms/measurement/internal/zzqe;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    return-void

    :cond_11
    const-string v1, "_sn"

    const-string v2, "_si"

    const-string v4, "_o"

    filled-new-array {v4, v1, v3, v2}, [Ljava/lang/String;

    move-result-object v1

    .line 59
    invoke-static {v1}, Lcom/google/android/gms/common/util/CollectionUtils;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v17

    .line 60
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzw()Lcom/google/android/gms/measurement/internal/zzqf;

    move-result-object v1

    move-object/from16 v2, p9

    move-object/from16 v3, p2

    move-object/from16 v18, v4

    move-object/from16 v4, p5

    move-object v12, v5

    move-object/from16 v5, v17

    move-object/from16 v17, v6

    move/from16 v6, p8

    .line 61
    invoke-virtual/range {v1 .. v6}, Lcom/google/android/gms/measurement/internal/zzqf;->zzA(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/util/List;Z)Landroid/os/Bundle;

    move-result-object v5

    .line 62
    invoke-static {v5}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzaV()Lcom/google/android/gms/measurement/internal/zzaf;

    .line 64
    invoke-virtual/range {v17 .. v17}, Lcom/google/android/gms/measurement/internal/zzio;->zzt()Lcom/google/android/gms/measurement/internal/zzmo;

    move-result-object v1

    .line 65
    invoke-virtual {v1, v14}, Lcom/google/android/gms/measurement/internal/zzmo;->zzj(Z)Lcom/google/android/gms/measurement/internal/zzmh;

    move-result-object v1

    const-string v6, "_ae"

    if-eqz v1, :cond_12

    .line 66
    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 67
    invoke-virtual/range {v17 .. v17}, Lcom/google/android/gms/measurement/internal/zzio;->zzv()Lcom/google/android/gms/measurement/internal/zzop;

    move-result-object v1

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/zzop;->zzb:Lcom/google/android/gms/measurement/internal/zzon;

    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzon;->zzc:Lcom/google/android/gms/measurement/internal/zzop;

    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 68
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzio;->zzaU()Lcom/google/android/gms/common/util/Clock;

    move-result-object v2

    .line 69
    invoke-interface {v2}, Lcom/google/android/gms/common/util/Clock;->elapsedRealtime()J

    move-result-wide v14

    iget-wide v3, v1, Lcom/google/android/gms/measurement/internal/zzon;->zzb:J

    sub-long v2, v14, v3

    iput-wide v14, v1, Lcom/google/android/gms/measurement/internal/zzon;->zzb:J

    const-wide/16 v14, 0x0

    cmp-long v1, v2, v14

    if-lez v1, :cond_12

    .line 70
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzw()Lcom/google/android/gms/measurement/internal/zzqf;

    move-result-object v1

    .line 71
    invoke-virtual {v1, v5, v2, v3}, Lcom/google/android/gms/measurement/internal/zzqf;->zzL(Landroid/os/Bundle;J)V

    :cond_12
    const-string v1, "auto"

    .line 72
    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "_ffr"

    if-nez v1, :cond_16

    const-string v1, "_ssr"

    .line 73
    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 80
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzw()Lcom/google/android/gms/measurement/internal/zzqf;

    move-result-object v1

    .line 81
    invoke-virtual {v5, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 82
    invoke-static {v2}, Lcom/google/android/gms/common/util/Strings;->isEmptyOrWhitespace(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_13

    move-object v2, v13

    goto :goto_7

    :cond_13
    if-eqz v2, :cond_14

    .line 83
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 82
    :cond_14
    :goto_7
    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 84
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzio;->zzm()Lcom/google/android/gms/measurement/internal/zzht;

    move-result-object v3

    .line 85
    iget-object v3, v3, Lcom/google/android/gms/measurement/internal/zzht;->zzq:Lcom/google/android/gms/measurement/internal/zzhr;

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzhr;->zza()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_15

    .line 86
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzio;->zzm()Lcom/google/android/gms/measurement/internal/zzht;

    move-result-object v1

    .line 87
    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/zzht;->zzq:Lcom/google/android/gms/measurement/internal/zzhr;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/zzhr;->zzb(Ljava/lang/String;)V

    goto :goto_8

    .line 154
    :cond_15
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzio;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object v0

    .line 155
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzhe;->zzd()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object v0

    const-string v1, "Not logging duplicate session_start_with_rollout event"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzhc;->zza(Ljava/lang/String;)V

    return-void

    .line 74
    :cond_16
    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 75
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzw()Lcom/google/android/gms/measurement/internal/zzqf;

    move-result-object v1

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 76
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzio;->zzm()Lcom/google/android/gms/measurement/internal/zzht;

    move-result-object v1

    .line 77
    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/zzht;->zzq:Lcom/google/android/gms/measurement/internal/zzhr;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzhr;->zza()Ljava/lang/String;

    move-result-object v1

    .line 78
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_17

    .line 79
    invoke-virtual {v5, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    :cond_17
    :goto_8
    new-instance v14, Ljava/util/ArrayList;

    .line 88
    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 89
    invoke-interface {v14, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 90
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzf()Lcom/google/android/gms/measurement/internal/zzam;

    move-result-object v1

    .line 91
    sget-object v2, Lcom/google/android/gms/measurement/internal/zzgi;->zzba:Lcom/google/android/gms/measurement/internal/zzgg;

    .line 92
    invoke-virtual {v1, v13, v2}, Lcom/google/android/gms/measurement/internal/zzam;->zzx(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzgg;)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 95
    invoke-virtual/range {v17 .. v17}, Lcom/google/android/gms/measurement/internal/zzio;->zzv()Lcom/google/android/gms/measurement/internal/zzop;

    move-result-object v1

    .line 96
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzop;->zzp()Z

    move-result v1

    goto :goto_9

    .line 93
    :cond_18
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzm()Lcom/google/android/gms/measurement/internal/zzht;

    move-result-object v1

    .line 94
    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/zzht;->zzn:Lcom/google/android/gms/measurement/internal/zzhn;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzhn;->zzb()Z

    move-result v1

    .line 97
    :goto_9
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzm()Lcom/google/android/gms/measurement/internal/zzht;

    move-result-object v2

    .line 98
    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/zzht;->zzk:Lcom/google/android/gms/measurement/internal/zzhp;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzhp;->zza()J

    move-result-wide v2

    const-wide/16 v19, 0x0

    cmp-long v2, v2, v19

    if-lez v2, :cond_19

    .line 99
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzm()Lcom/google/android/gms/measurement/internal/zzht;

    move-result-object v2

    .line 100
    invoke-virtual {v2, v10, v11}, Lcom/google/android/gms/measurement/internal/zzht;->zzp(J)Z

    move-result v2

    if-eqz v2, :cond_19

    if-eqz v1, :cond_19

    .line 101
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object v1

    .line 102
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzhe;->zzj()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object v1

    const-string v2, "Current session is expired, remove the session number, ID, and engagement time"

    .line 103
    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/zzhc;->zza(Ljava/lang/String;)V

    .line 104
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzaU()Lcom/google/android/gms/common/util/Clock;

    move-result-object v1

    .line 105
    invoke-interface {v1}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v21

    const-string v2, "auto"

    const-string v3, "_sid"

    const/4 v4, 0x0

    move-object/from16 v1, p0

    move-object/from16 p5, v14

    move-wide/from16 v13, v19

    move-object v15, v5

    move-object/from16 v23, v6

    move-wide/from16 v5, v21

    .line 106
    invoke-virtual/range {v1 .. v6}, Lcom/google/android/gms/measurement/internal/zzlw;->zzan(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;J)V

    .line 107
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzaU()Lcom/google/android/gms/common/util/Clock;

    move-result-object v1

    .line 108
    invoke-interface {v1}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v5

    const-string v2, "auto"

    const-string v3, "_sno"

    move-object/from16 v1, p0

    .line 109
    invoke-virtual/range {v1 .. v6}, Lcom/google/android/gms/measurement/internal/zzlw;->zzan(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;J)V

    .line 110
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzaU()Lcom/google/android/gms/common/util/Clock;

    move-result-object v1

    .line 111
    invoke-interface {v1}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v5

    const-string v2, "auto"

    const-string v3, "_se"

    move-object/from16 v1, p0

    .line 112
    invoke-virtual/range {v1 .. v6}, Lcom/google/android/gms/measurement/internal/zzlw;->zzan(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;J)V

    .line 113
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzm()Lcom/google/android/gms/measurement/internal/zzht;

    move-result-object v1

    .line 114
    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/zzht;->zzl:Lcom/google/android/gms/measurement/internal/zzhp;

    invoke-virtual {v1, v13, v14}, Lcom/google/android/gms/measurement/internal/zzhp;->zzb(J)V

    goto :goto_a

    :cond_19
    move-object v15, v5

    move-object/from16 v23, v6

    move-object/from16 p5, v14

    move-wide/from16 v13, v19

    :goto_a
    const-string v1, "extend_session"

    .line 115
    invoke-virtual {v15, v1, v13, v14}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    const-wide/16 v3, 0x1

    cmp-long v1, v1, v3

    if-nez v1, :cond_1a

    .line 116
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object v1

    .line 117
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzhe;->zzj()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object v1

    const-string v2, "EXTEND_SESSION param attached: initiate a new session or extend the current active session"

    .line 118
    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/zzhc;->zza(Ljava/lang/String;)V

    .line 119
    invoke-virtual {v12}, Lcom/google/android/gms/measurement/internal/zzio;->zzv()Lcom/google/android/gms/measurement/internal/zzop;

    move-result-object v1

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/zzop;->zza:Lcom/google/android/gms/measurement/internal/zzoo;

    const/4 v2, 0x1

    .line 120
    invoke-virtual {v1, v10, v11, v2}, Lcom/google/android/gms/measurement/internal/zzoo;->zzb(JZ)V

    :cond_1a
    new-instance v1, Ljava/util/ArrayList;

    .line 121
    invoke-virtual {v15}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 122
    invoke-static {v1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_b
    if-ge v3, v2, :cond_1f

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    .line 123
    check-cast v4, Ljava/lang/String;

    if-eqz v4, :cond_1e

    .line 124
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzw()Lcom/google/android/gms/measurement/internal/zzqf;

    .line 125
    invoke-virtual {v15, v4}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    .line 126
    instance-of v6, v5, Landroid/os/Bundle;

    if-eqz v6, :cond_1b

    const/4 v6, 0x1

    new-array v12, v6, [Landroid/os/Bundle;

    .line 127
    check-cast v5, Landroid/os/Bundle;

    const/4 v6, 0x0

    aput-object v5, v12, v6

    goto :goto_c

    .line 128
    :cond_1b
    instance-of v6, v5, [Landroid/os/Parcelable;

    if-eqz v6, :cond_1c

    .line 129
    check-cast v5, [Landroid/os/Parcelable;

    array-length v6, v5

    const-class v12, [Landroid/os/Bundle;

    .line 130
    invoke-static {v5, v6, v12}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;ILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v5

    move-object v12, v5

    check-cast v12, [Landroid/os/Bundle;

    goto :goto_c

    .line 131
    :cond_1c
    instance-of v6, v5, Ljava/util/ArrayList;

    if-eqz v6, :cond_1d

    .line 132
    check-cast v5, Ljava/util/ArrayList;

    .line 133
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    new-array v6, v6, [Landroid/os/Bundle;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    move-object v12, v5

    check-cast v12, [Landroid/os/Bundle;

    goto :goto_c

    :cond_1d
    const/4 v12, 0x0

    :goto_c
    if-eqz v12, :cond_1e

    .line 134
    invoke-virtual {v15, v4, v12}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    :cond_1e
    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    :cond_1f
    const/4 v12, 0x0

    .line 135
    :goto_d
    invoke-interface/range {p5 .. p5}, Ljava/util/List;->size()I

    move-result v1

    if-ge v12, v1, :cond_23

    move-object/from16 v13, p5

    .line 136
    invoke-interface {v13, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    if-eqz v12, :cond_20

    const-string v2, "_ep"

    goto :goto_e

    :cond_20
    move-object v2, v9

    :goto_e
    move-object/from16 v14, v18

    .line 137
    invoke-virtual {v1, v14, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p7, :cond_21

    .line 138
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzw()Lcom/google/android/gms/measurement/internal/zzqf;

    move-result-object v3

    const/4 v15, 0x0

    .line 139
    invoke-virtual {v3, v1, v15}, Lcom/google/android/gms/measurement/internal/zzqf;->zzz(Landroid/os/Bundle;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    goto :goto_f

    :cond_21
    const/4 v15, 0x0

    :goto_f
    move-object v5, v1

    .line 140
    new-instance v6, Lcom/google/android/gms/measurement/internal/zzbh;

    new-instance v3, Lcom/google/android/gms/measurement/internal/zzbf;

    invoke-direct {v3, v5}, Lcom/google/android/gms/measurement/internal/zzbf;-><init>(Landroid/os/Bundle;)V

    move-object v1, v6

    move-object/from16 v4, p1

    move-object v8, v5

    move-object v15, v6

    move-wide/from16 v5, p3

    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/measurement/internal/zzbh;-><init>(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzbf;Ljava/lang/String;J)V

    .line 141
    invoke-virtual/range {v17 .. v17}, Lcom/google/android/gms/measurement/internal/zzio;->zzu()Lcom/google/android/gms/measurement/internal/zzny;

    move-result-object v1

    move-object/from16 v5, p9

    .line 142
    invoke-virtual {v1, v15, v5}, Lcom/google/android/gms/measurement/internal/zzny;->zzM(Lcom/google/android/gms/measurement/internal/zzbh;Ljava/lang/String;)V

    if-nez v16, :cond_22

    iget-object v1, v7, Lcom/google/android/gms/measurement/internal/zzlw;->zze:Ljava/util/Set;

    .line 143
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :goto_10
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_22

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/measurement/internal/zzkc;

    new-instance v4, Landroid/os/Bundle;

    .line 144
    invoke-direct {v4, v8}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-wide/from16 v5, p3

    .line 145
    invoke-interface/range {v1 .. v6}, Lcom/google/android/gms/measurement/internal/zzkc;->onEvent(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;J)V

    move-object/from16 v5, p9

    goto :goto_10

    :cond_22
    add-int/lit8 v12, v12, 0x1

    move-object/from16 v8, p1

    move-object/from16 p5, v13

    move-object/from16 v18, v14

    goto :goto_d

    .line 146
    :cond_23
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzaV()Lcom/google/android/gms/measurement/internal/zzaf;

    .line 147
    invoke-virtual/range {v17 .. v17}, Lcom/google/android/gms/measurement/internal/zzio;->zzt()Lcom/google/android/gms/measurement/internal/zzmo;

    move-result-object v1

    const/4 v2, 0x0

    .line 148
    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/zzmo;->zzj(Z)Lcom/google/android/gms/measurement/internal/zzmh;

    move-result-object v1

    if-eqz v1, :cond_24

    move-object/from16 v1, v23

    .line 149
    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_24

    .line 150
    invoke-virtual/range {v17 .. v17}, Lcom/google/android/gms/measurement/internal/zzio;->zzv()Lcom/google/android/gms/measurement/internal/zzop;

    move-result-object v1

    .line 151
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzaU()Lcom/google/android/gms/common/util/Clock;

    move-result-object v0

    .line 152
    invoke-interface {v0}, Lcom/google/android/gms/common/util/Clock;->elapsedRealtime()J

    move-result-wide v2

    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzop;->zzb:Lcom/google/android/gms/measurement/internal/zzon;

    const/4 v1, 0x1

    .line 153
    invoke-virtual {v0, v1, v1, v2, v3}, Lcom/google/android/gms/measurement/internal/zzon;->zzd(ZZJ)Z

    :cond_24
    :goto_11
    return-void

    .line 175
    :cond_25
    iget-object v0, v7, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 176
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object v0

    .line 177
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzhe;->zzd()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object v0

    const-string v1, "Event not sent since app measurement is disabled"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzhc;->zza(Ljava/lang/String;)V

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method final zzU()V
    .locals 6

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzjq;->zzg()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzlw;->zzn:Z

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzlw;->zzy()Ljava/util/PriorityQueue;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/PriorityQueue;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    iget-boolean v1, p0, Lcom/google/android/gms/measurement/internal/zzlw;->zzi:Z

    if-eqz v1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzlw;->zzy()Ljava/util/PriorityQueue;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/PriorityQueue;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/measurement/internal/zzov;

    if-eqz v1, :cond_2

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 4
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzio;->zzw()Lcom/google/android/gms/measurement/internal/zzqf;

    move-result-object v3

    .line 5
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzqf;->zzB()Landroidx/privacysandbox/ads/adservices/java/measurement/MeasurementManagerFutures;

    move-result-object v3

    if-eqz v3, :cond_2

    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/google/android/gms/measurement/internal/zzlw;->zzi:Z

    .line 6
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzio;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object v2

    .line 7
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzhe;->zzj()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object v2

    iget-object v4, v1, Lcom/google/android/gms/measurement/internal/zzov;->zza:Ljava/lang/String;

    const-string v5, "Registering trigger URI"

    invoke-virtual {v2, v5, v4}, Lcom/google/android/gms/measurement/internal/zzhc;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    .line 8
    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroidx/privacysandbox/ads/adservices/java/measurement/MeasurementManagerFutures;->registerTriggerAsync(Landroid/net/Uri;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v2

    if-nez v2, :cond_1

    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzlw;->zzi:Z

    .line 9
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzlw;->zzy()Ljava/util/PriorityQueue;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/PriorityQueue;->add(Ljava/lang/Object;)Z

    return-void

    :cond_1
    new-instance v0, Lcom/google/android/gms/measurement/internal/zzks;

    invoke-direct {v0, p0}, Lcom/google/android/gms/measurement/internal/zzks;-><init>(Lcom/google/android/gms/measurement/internal/zzlw;)V

    .line 10
    new-instance v3, Lcom/google/android/gms/measurement/internal/zzkt;

    invoke-direct {v3, p0, v1}, Lcom/google/android/gms/measurement/internal/zzkt;-><init>(Lcom/google/android/gms/measurement/internal/zzlw;Lcom/google/android/gms/measurement/internal/zzov;)V

    .line 11
    invoke-static {v2, v3, v0}, Lcom/google/common/util/concurrent/Futures;->addCallback(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/util/concurrent/FutureCallback;Ljava/util/concurrent/Executor;)V

    :cond_2
    :goto_0
    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public final zzV(Lcom/google/android/gms/measurement/internal/zzkc;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzg;->zza()V

    .line 2
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzlw;->zze:Ljava/util/Set;

    .line 3
    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 4
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzio;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object p1

    .line 5
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzhe;->zzk()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object p1

    const-string v0, "OnEventListener already registered"

    invoke-virtual {p1, v0}, Lcom/google/android/gms/measurement/internal/zzhc;->zza(Ljava/lang/String;)V

    :cond_0
    return-void

    .array-data 1
    .end array-data
.end method

.method public final zzW()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzjq;->zzg()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object v1

    .line 3
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzhe;->zzd()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object v1

    const-string v2, "Register tcfPrefChangeListener."

    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/zzhc;->zza(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzlw;->zzs:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzlw;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    new-instance v2, Lcom/google/android/gms/measurement/internal/zzky;

    .line 4
    invoke-direct {v2, p0, v1}, Lcom/google/android/gms/measurement/internal/zzky;-><init>(Lcom/google/android/gms/measurement/internal/zzlw;Lcom/google/android/gms/measurement/internal/zzjs;)V

    iput-object v2, p0, Lcom/google/android/gms/measurement/internal/zzlw;->zzt:Lcom/google/android/gms/measurement/internal/zzaz;

    new-instance v1, Lcom/google/android/gms/measurement/internal/zzkp;

    invoke-direct {v1, p0}, Lcom/google/android/gms/measurement/internal/zzkp;-><init>(Lcom/google/android/gms/measurement/internal/zzlw;)V

    iput-object v1, p0, Lcom/google/android/gms/measurement/internal/zzlw;->zzs:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    .line 5
    :cond_0
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzm()Lcom/google/android/gms/measurement/internal/zzht;

    move-result-object v0

    .line 6
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzht;->zza()Landroid/content/SharedPreferences;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzlw;->zzs:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    .line 7
    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method public final zzX(J)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzlw;->zzg:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzaX()Lcom/google/android/gms/measurement/internal/zzil;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/measurement/internal/zzle;

    invoke-direct {v1, p0, p1, p2}, Lcom/google/android/gms/measurement/internal/zzle;-><init>(Lcom/google/android/gms/measurement/internal/zzlw;J)V

    .line 3
    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzil;->zzq(Ljava/lang/Runnable;)V

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method final zzY(Ljava/lang/Runnable;)V
    .locals 12

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzf()Lcom/google/android/gms/measurement/internal/zzam;

    move-result-object v1

    const/4 v2, 0x0

    .line 2
    sget-object v3, Lcom/google/android/gms/measurement/internal/zzgi;->zzaR:Lcom/google/android/gms/measurement/internal/zzgg;

    .line 3
    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/measurement/internal/zzam;->zzx(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzgg;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 4
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzg;->zza()V

    .line 5
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzaX()Lcom/google/android/gms/measurement/internal/zzil;

    move-result-object v1

    .line 6
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzil;->zzu()Z

    move-result v1

    if-nez v1, :cond_7

    .line 7
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzaX()Lcom/google/android/gms/measurement/internal/zzil;

    move-result-object v1

    .line 8
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzil;->zzt()Z

    move-result v1

    if-nez v1, :cond_6

    .line 9
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzaV()Lcom/google/android/gms/measurement/internal/zzaf;

    .line 10
    invoke-static {}, Lcom/google/android/gms/measurement/internal/zzaf;->zza()Z

    move-result v1

    if-nez v1, :cond_5

    .line 11
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object v1

    .line 12
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzhe;->zzj()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object v1

    const-string v2, "[sgtm] Started client-side batch upload work."

    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/zzhc;->zza(Ljava/lang/String;)V

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    move v4, v3

    :goto_0
    if-nez v2, :cond_4

    .line 13
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object v2

    .line 14
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzhe;->zzj()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object v2

    const-string v5, "[sgtm] Getting upload batches from service (FE)"

    invoke-virtual {v2, v5}, Lcom/google/android/gms/measurement/internal/zzhc;->zza(Ljava/lang/String;)V

    new-instance v2, Ljava/util/concurrent/atomic/AtomicReference;

    .line 15
    invoke-direct {v2}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 16
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzaX()Lcom/google/android/gms/measurement/internal/zzil;

    move-result-object v6

    new-instance v11, Lcom/google/android/gms/measurement/internal/zzkl;

    invoke-direct {v11, p0, v2}, Lcom/google/android/gms/measurement/internal/zzkl;-><init>(Lcom/google/android/gms/measurement/internal/zzlw;Ljava/util/concurrent/atomic/AtomicReference;)V

    const-wide/16 v8, 0x2710

    const-string v10, "[sgtm] Getting upload batches"

    move-object v7, v2

    .line 17
    invoke-virtual/range {v6 .. v11}, Lcom/google/android/gms/measurement/internal/zzil;->zze(Ljava/util/concurrent/atomic/AtomicReference;JLjava/lang/String;Ljava/lang/Runnable;)Ljava/lang/Object;

    .line 18
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/measurement/internal/zzpe;

    if-eqz v2, :cond_4

    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/zzpe;->zza:Ljava/util/List;

    .line 19
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_2

    .line 20
    :cond_0
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object v5

    .line 21
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzhe;->zzj()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object v5

    .line 22
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v7, "[sgtm] Retrieved upload batches. count"

    invoke-virtual {v5, v7, v6}, Lcom/google/android/gms/measurement/internal/zzhc;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    .line 23
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    add-int/2addr v3, v5

    .line 24
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/measurement/internal/zzpa;

    .line 25
    invoke-direct {p0, v5}, Lcom/google/android/gms/measurement/internal/zzlw;->zzar(Lcom/google/android/gms/measurement/internal/zzpa;)Lcom/google/android/gms/measurement/internal/zzme;

    move-result-object v5

    sget-object v6, Lcom/google/android/gms/measurement/internal/zzme;->zzb:Lcom/google/android/gms/measurement/internal/zzme;

    if-ne v5, v6, :cond_2

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    sget-object v6, Lcom/google/android/gms/measurement/internal/zzme;->zzd:Lcom/google/android/gms/measurement/internal/zzme;

    if-ne v5, v6, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_3
    move v2, v1

    goto :goto_0

    .line 26
    :cond_4
    :goto_2
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object v0

    .line 27
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzhe;->zzj()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object v0

    .line 28
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 29
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "[sgtm] Completed client-side batch upload work. total, success"

    .line 30
    invoke-virtual {v0, v3, v1, v2}, Lcom/google/android/gms/measurement/internal/zzhc;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 31
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void

    .line 32
    :cond_5
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object p1

    .line 33
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzhe;->zze()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object p1

    const-string v0, "Cannot retrieve and upload batches from main thread"

    invoke-virtual {p1, v0}, Lcom/google/android/gms/measurement/internal/zzhc;->zza(Ljava/lang/String;)V

    return-void

    .line 34
    :cond_6
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object p1

    .line 35
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzhe;->zze()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object p1

    const-string v0, "Cannot retrieve and upload batches from analytics network thread"

    invoke-virtual {p1, v0}, Lcom/google/android/gms/measurement/internal/zzhc;->zza(Ljava/lang/String;)V

    return-void

    .line 36
    :cond_7
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object p1

    .line 37
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzhe;->zze()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object p1

    const-string v0, "Cannot retrieve and upload batches from analytics worker thread"

    invoke-virtual {p1, v0}, Lcom/google/android/gms/measurement/internal/zzhc;->zza(Ljava/lang/String;)V

    :cond_8
    return-void

    .array-data 1
    .end array-data
.end method

.method protected final zzZ(Ljava/lang/String;Ljava/lang/String;JLandroid/os/Bundle;ZZZLjava/lang/String;)V
    .locals 14

    .line 1
    sget v0, Lcom/google/android/gms/measurement/internal/zzqf;->zza:I

    new-instance v7, Landroid/os/Bundle;

    move-object/from16 v0, p5

    .line 2
    invoke-direct {v7, v0}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 3
    invoke-virtual {v7}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 4
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 5
    invoke-virtual {v7, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 6
    instance-of v3, v2, Landroid/os/Bundle;

    if-eqz v3, :cond_1

    new-instance v3, Landroid/os/Bundle;

    .line 7
    check-cast v2, Landroid/os/Bundle;

    invoke-direct {v3, v2}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {v7, v1, v3}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0

    .line 8
    :cond_1
    instance-of v1, v2, [Landroid/os/Parcelable;

    const/4 v3, 0x0

    if-eqz v1, :cond_3

    .line 9
    check-cast v2, [Landroid/os/Parcelable;

    .line 10
    :goto_1
    array-length v1, v2

    if-ge v3, v1, :cond_0

    .line 11
    aget-object v1, v2, v3

    instance-of v4, v1, Landroid/os/Bundle;

    if-eqz v4, :cond_2

    new-instance v4, Landroid/os/Bundle;

    .line 12
    check-cast v1, Landroid/os/Bundle;

    invoke-direct {v4, v1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    aput-object v4, v2, v3

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 13
    :cond_3
    instance-of v1, v2, Ljava/util/List;

    if-eqz v1, :cond_0

    .line 14
    check-cast v2, Ljava/util/List;

    .line 15
    :goto_2
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    if-ge v3, v1, :cond_0

    .line 16
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 17
    instance-of v4, v1, Landroid/os/Bundle;

    if-eqz v4, :cond_4

    new-instance v4, Landroid/os/Bundle;

    .line 18
    check-cast v1, Landroid/os/Bundle;

    invoke-direct {v4, v1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    invoke-interface {v2, v3, v4}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_5
    move-object v12, p0

    iget-object v0, v12, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 19
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzaX()Lcom/google/android/gms/measurement/internal/zzil;

    move-result-object v0

    new-instance v13, Lcom/google/android/gms/measurement/internal/zzkz;

    move-object v1, v13

    move-object v2, p0

    move-object v3, p1

    move-object/from16 v4, p2

    move-wide/from16 v5, p3

    move/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p8

    move-object/from16 v11, p9

    invoke-direct/range {v1 .. v11}, Lcom/google/android/gms/measurement/internal/zzkz;-><init>(Lcom/google/android/gms/measurement/internal/zzlw;Ljava/lang/String;Ljava/lang/String;JLandroid/os/Bundle;ZZZLjava/lang/String;)V

    .line 20
    invoke-virtual {v0, v13}, Lcom/google/android/gms/measurement/internal/zzil;->zzq(Ljava/lang/Runnable;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method final zzaa(Ljava/lang/String;Ljava/lang/String;JLjava/lang/Object;)V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzaX()Lcom/google/android/gms/measurement/internal/zzil;

    move-result-object v0

    new-instance v8, Lcom/google/android/gms/measurement/internal/zzla;

    move-object v1, v8

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p5

    move-wide v6, p3

    invoke-direct/range {v1 .. v7}, Lcom/google/android/gms/measurement/internal/zzla;-><init>(Lcom/google/android/gms/measurement/internal/zzlw;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;J)V

    .line 2
    invoke-virtual {v0, v8}, Lcom/google/android/gms/measurement/internal/zzil;->zzq(Ljava/lang/Runnable;)V

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method final zzab(J)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzjq;->zzg()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzlw;->zzl:Lcom/google/android/gms/measurement/internal/zzaz;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzlw;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    new-instance v1, Lcom/google/android/gms/measurement/internal/zzkr;

    .line 2
    invoke-direct {v1, p0, v0}, Lcom/google/android/gms/measurement/internal/zzkr;-><init>(Lcom/google/android/gms/measurement/internal/zzlw;Lcom/google/android/gms/measurement/internal/zzjs;)V

    iput-object v1, p0, Lcom/google/android/gms/measurement/internal/zzlw;->zzl:Lcom/google/android/gms/measurement/internal/zzaz;

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzlw;->zzl:Lcom/google/android/gms/measurement/internal/zzaz;

    .line 3
    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/measurement/internal/zzaz;->zzd(J)V

    return-void

    .array-data 1
    .end array-data
.end method

.method final zzac(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzlw;->zzg:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method public final zzad(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzaU()Lcom/google/android/gms/common/util/Clock;

    move-result-object v0

    .line 2
    invoke-interface {v0}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, p1, v0, v1}, Lcom/google/android/gms/measurement/internal/zzlw;->zzae(Landroid/os/Bundle;J)V

    return-void

    .array-data 1
    .end array-data
.end method

.method public final zzae(Landroid/os/Bundle;J)V
    .locals 9

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Landroid/os/Bundle;

    .line 2
    invoke-direct {v0, p1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    const-string p1, "app_id"

    .line 3
    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 4
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzio;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object v1

    .line 5
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzhe;->zzk()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object v1

    const-string v2, "Package name should be null when calling setConditionalUserProperty"

    .line 6
    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/zzhc;->zza(Ljava/lang/String;)V

    .line 7
    :cond_0
    invoke-virtual {v0, p1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 8
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-class v1, Ljava/lang/String;

    const/4 v2, 0x0

    .line 9
    invoke-static {v0, p1, v1, v2}, Lcom/google/android/gms/measurement/internal/zzjt;->zza(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    const-class p1, Ljava/lang/String;

    const-string v1, "origin"

    .line 10
    invoke-static {v0, v1, p1, v2}, Lcom/google/android/gms/measurement/internal/zzjt;->zza(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    const-class p1, Ljava/lang/String;

    const-string v3, "name"

    .line 11
    invoke-static {v0, v3, p1, v2}, Lcom/google/android/gms/measurement/internal/zzjt;->zza(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    const-class p1, Ljava/lang/Object;

    const-string v4, "value"

    .line 12
    invoke-static {v0, v4, p1, v2}, Lcom/google/android/gms/measurement/internal/zzjt;->zza(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    const-class p1, Ljava/lang/String;

    const-string v5, "trigger_event_name"

    .line 13
    invoke-static {v0, v5, p1, v2}, Lcom/google/android/gms/measurement/internal/zzjt;->zza(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    const-class p1, Ljava/lang/Long;

    const-wide/16 v6, 0x0

    .line 14
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    const-string v7, "trigger_timeout"

    .line 15
    invoke-static {v0, v7, p1, v6}, Lcom/google/android/gms/measurement/internal/zzjt;->zza(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "timed_out_event_name"

    const-class v8, Ljava/lang/String;

    .line 16
    invoke-static {v0, p1, v8, v2}, Lcom/google/android/gms/measurement/internal/zzjt;->zza(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "timed_out_event_params"

    const-class v8, Landroid/os/Bundle;

    .line 17
    invoke-static {v0, p1, v8, v2}, Lcom/google/android/gms/measurement/internal/zzjt;->zza(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "triggered_event_name"

    const-class v8, Ljava/lang/String;

    .line 18
    invoke-static {v0, p1, v8, v2}, Lcom/google/android/gms/measurement/internal/zzjt;->zza(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "triggered_event_params"

    const-class v8, Landroid/os/Bundle;

    .line 19
    invoke-static {v0, p1, v8, v2}, Lcom/google/android/gms/measurement/internal/zzjt;->zza(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    const-class p1, Ljava/lang/Long;

    const-string v8, "time_to_live"

    .line 20
    invoke-static {v0, v8, p1, v6}, Lcom/google/android/gms/measurement/internal/zzjt;->zza(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "expired_event_name"

    const-class v6, Ljava/lang/String;

    .line 21
    invoke-static {v0, p1, v6, v2}, Lcom/google/android/gms/measurement/internal/zzjt;->zza(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "expired_event_params"

    const-class v6, Landroid/os/Bundle;

    .line 22
    invoke-static {v0, p1, v6, v2}, Lcom/google/android/gms/measurement/internal/zzjt;->zza(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 24
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 25
    invoke-virtual {v0, v4}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "creation_timestamp"

    .line 26
    invoke-virtual {v0, p1, p2, p3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 27
    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 28
    invoke-virtual {v0, v4}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    iget-object p3, p0, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 29
    invoke-virtual {p3}, Lcom/google/android/gms/measurement/internal/zzio;->zzw()Lcom/google/android/gms/measurement/internal/zzqf;

    move-result-object v1

    .line 30
    invoke-virtual {v1, p1}, Lcom/google/android/gms/measurement/internal/zzqf;->zzj(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_7

    .line 31
    invoke-virtual {p3}, Lcom/google/android/gms/measurement/internal/zzio;->zzw()Lcom/google/android/gms/measurement/internal/zzqf;

    move-result-object v1

    .line 32
    invoke-virtual {v1, p1, p2}, Lcom/google/android/gms/measurement/internal/zzqf;->zzd(Ljava/lang/String;Ljava/lang/Object;)I

    move-result v1

    if-nez v1, :cond_6

    .line 33
    invoke-virtual {p3}, Lcom/google/android/gms/measurement/internal/zzio;->zzw()Lcom/google/android/gms/measurement/internal/zzqf;

    move-result-object v1

    .line 34
    invoke-virtual {v1, p1, p2}, Lcom/google/android/gms/measurement/internal/zzqf;->zzE(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1

    .line 35
    invoke-virtual {p3}, Lcom/google/android/gms/measurement/internal/zzio;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object v0

    .line 36
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzhe;->zze()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object v0

    .line 37
    invoke-virtual {p3}, Lcom/google/android/gms/measurement/internal/zzio;->zzj()Lcom/google/android/gms/measurement/internal/zzgx;

    move-result-object p3

    .line 38
    invoke-virtual {p3, p1}, Lcom/google/android/gms/measurement/internal/zzgx;->zzf(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p3, "Unable to normalize conditional user property value"

    .line 39
    invoke-virtual {v0, p3, p1, p2}, Lcom/google/android/gms/measurement/internal/zzhc;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    .line 40
    :cond_1
    invoke-static {v0, v1}, Lcom/google/android/gms/measurement/internal/zzjt;->zzb(Landroid/os/Bundle;Ljava/lang/Object;)V

    .line 41
    invoke-virtual {v0, v7}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    .line 42
    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 43
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    const-wide/16 v3, 0x1

    const-wide v5, 0x39ef8b000L

    if-nez p2, :cond_3

    .line 44
    invoke-virtual {p3}, Lcom/google/android/gms/measurement/internal/zzio;->zzf()Lcom/google/android/gms/measurement/internal/zzam;

    cmp-long p2, v1, v5

    if-gtz p2, :cond_2

    cmp-long p2, v1, v3

    if-gez p2, :cond_3

    .line 45
    :cond_2
    invoke-virtual {p3}, Lcom/google/android/gms/measurement/internal/zzio;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object p2

    .line 46
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzhe;->zze()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object p2

    .line 47
    invoke-virtual {p3}, Lcom/google/android/gms/measurement/internal/zzio;->zzj()Lcom/google/android/gms/measurement/internal/zzgx;

    move-result-object p3

    .line 48
    invoke-virtual {p3, p1}, Lcom/google/android/gms/measurement/internal/zzgx;->zzf(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 49
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    const-string v0, "Invalid conditional user property timeout"

    .line 50
    invoke-virtual {p2, v0, p1, p3}, Lcom/google/android/gms/measurement/internal/zzhc;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    .line 51
    :cond_3
    invoke-virtual {v0, v8}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    .line 52
    invoke-virtual {p3}, Lcom/google/android/gms/measurement/internal/zzio;->zzf()Lcom/google/android/gms/measurement/internal/zzam;

    cmp-long p2, v1, v5

    if-gtz p2, :cond_5

    cmp-long p2, v1, v3

    if-gez p2, :cond_4

    goto :goto_0

    .line 59
    :cond_4
    invoke-virtual {p3}, Lcom/google/android/gms/measurement/internal/zzio;->zzaX()Lcom/google/android/gms/measurement/internal/zzil;

    move-result-object p1

    new-instance p2, Lcom/google/android/gms/measurement/internal/zzlf;

    invoke-direct {p2, p0, v0}, Lcom/google/android/gms/measurement/internal/zzlf;-><init>(Lcom/google/android/gms/measurement/internal/zzlw;Landroid/os/Bundle;)V

    .line 60
    invoke-virtual {p1, p2}, Lcom/google/android/gms/measurement/internal/zzil;->zzq(Ljava/lang/Runnable;)V

    return-void

    .line 53
    :cond_5
    :goto_0
    invoke-virtual {p3}, Lcom/google/android/gms/measurement/internal/zzio;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object p2

    .line 54
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzhe;->zze()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object p2

    .line 55
    invoke-virtual {p3}, Lcom/google/android/gms/measurement/internal/zzio;->zzj()Lcom/google/android/gms/measurement/internal/zzgx;

    move-result-object p3

    .line 56
    invoke-virtual {p3, p1}, Lcom/google/android/gms/measurement/internal/zzgx;->zzf(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 57
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    const-string v0, "Invalid conditional user property time to live"

    .line 58
    invoke-virtual {p2, v0, p1, p3}, Lcom/google/android/gms/measurement/internal/zzhc;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    .line 61
    :cond_6
    invoke-virtual {p3}, Lcom/google/android/gms/measurement/internal/zzio;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object v0

    .line 62
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzhe;->zze()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object v0

    .line 63
    invoke-virtual {p3}, Lcom/google/android/gms/measurement/internal/zzio;->zzj()Lcom/google/android/gms/measurement/internal/zzgx;

    move-result-object p3

    .line 64
    invoke-virtual {p3, p1}, Lcom/google/android/gms/measurement/internal/zzgx;->zzf(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p3, "Invalid conditional user property value"

    .line 65
    invoke-virtual {v0, p3, p1, p2}, Lcom/google/android/gms/measurement/internal/zzhc;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    .line 66
    :cond_7
    invoke-virtual {p3}, Lcom/google/android/gms/measurement/internal/zzio;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object p2

    .line 67
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzhe;->zze()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object p2

    .line 68
    invoke-virtual {p3}, Lcom/google/android/gms/measurement/internal/zzio;->zzj()Lcom/google/android/gms/measurement/internal/zzgx;

    move-result-object p3

    .line 69
    invoke-virtual {p3, p1}, Lcom/google/android/gms/measurement/internal/zzgx;->zzf(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p3, "Invalid conditional user property name"

    .line 70
    invoke-virtual {p2, p3, p1}, Lcom/google/android/gms/measurement/internal/zzhc;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method final zzaf(Landroid/os/Bundle;IJ)V
    .locals 8

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzg;->zza()V

    .line 2
    sget-object v0, Lcom/google/android/gms/measurement/internal/zzjx;->zza:Lcom/google/android/gms/measurement/internal/zzjx;

    .line 3
    sget-object v0, Lcom/google/android/gms/measurement/internal/zzjv;->zza:Lcom/google/android/gms/measurement/internal/zzjv;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzjv;->zza(Lcom/google/android/gms/measurement/internal/zzjv;)[Lcom/google/android/gms/measurement/internal/zzjw;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x0

    if-ge v2, v1, :cond_3

    aget-object v4, v0, v2

    .line 4
    iget-object v4, v4, Lcom/google/android/gms/measurement/internal/zzjw;->zze:Ljava/lang/String;

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 5
    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_2

    const-string v5, "granted"

    .line 6
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_1

    :cond_0
    const-string v5, "denied"

    .line 7
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :cond_1
    :goto_1
    if-nez v3, :cond_2

    move-object v3, v4

    goto :goto_2

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    :goto_2
    if-eqz v3, :cond_4

    .line 6
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 8
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object v1

    .line 9
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzhe;->zzl()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object v1

    const-string v2, "Ignoring invalid consent setting"

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/measurement/internal/zzhc;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    .line 10
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object v0

    .line 11
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzhe;->zzl()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object v0

    const-string v1, "Valid consent values are \'granted\', \'denied\'"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzhc;->zza(Ljava/lang/String;)V

    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 12
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzaX()Lcom/google/android/gms/measurement/internal/zzil;

    move-result-object v0

    .line 13
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzil;->zzu()Z

    move-result v0

    .line 14
    invoke-static {p1, p2}, Lcom/google/android/gms/measurement/internal/zzjx;->zzi(Landroid/os/Bundle;I)Lcom/google/android/gms/measurement/internal/zzjx;

    move-result-object v1

    .line 15
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzjx;->zzt()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 16
    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/measurement/internal/zzlw;->zzak(Lcom/google/android/gms/measurement/internal/zzjx;Z)V

    .line 17
    :cond_5
    invoke-static {p1, p2}, Lcom/google/android/gms/measurement/internal/zzba;->zzc(Landroid/os/Bundle;I)Lcom/google/android/gms/measurement/internal/zzba;

    move-result-object v1

    .line 18
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzba;->zzk()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 19
    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/measurement/internal/zzlw;->zzag(Lcom/google/android/gms/measurement/internal/zzba;Z)V

    .line 20
    :cond_6
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzba;->zzg(Landroid/os/Bundle;)Ljava/lang/Boolean;

    move-result-object p1

    if-eqz p1, :cond_9

    const/16 v1, -0x1e

    if-ne p2, v1, :cond_7

    const-string p2, "tcf"

    goto :goto_3

    :cond_7
    const-string p2, "app"

    :goto_3
    move-object v2, p2

    if-eqz v0, :cond_8

    .line 21
    invoke-virtual {p1}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v3, "allow_personalized_ads"

    move-object v1, p0

    move-wide v5, p3

    .line 22
    invoke-virtual/range {v1 .. v6}, Lcom/google/android/gms/measurement/internal/zzlw;->zzan(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;J)V

    return-void

    .line 23
    :cond_8
    invoke-virtual {p1}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v3, "allow_personalized_ads"

    const/4 v5, 0x0

    move-object v1, p0

    move-wide v6, p3

    .line 24
    invoke-virtual/range {v1 .. v7}, Lcom/google/android/gms/measurement/internal/zzlw;->zzam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZJ)V

    :cond_9
    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method final zzag(Lcom/google/android/gms/measurement/internal/zzba;Z)V
    .locals 1

    .line 3
    new-instance v0, Lcom/google/android/gms/measurement/internal/zzlq;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/measurement/internal/zzlq;-><init>(Lcom/google/android/gms/measurement/internal/zzlw;Lcom/google/android/gms/measurement/internal/zzba;)V

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzjq;->zzg()V

    .line 4
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return-void

    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 1
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzio;->zzaX()Lcom/google/android/gms/measurement/internal/zzil;

    move-result-object p1

    .line 2
    invoke-virtual {p1, v0}, Lcom/google/android/gms/measurement/internal/zzil;->zzq(Ljava/lang/Runnable;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method public final zzah(Lcom/google/android/gms/measurement/internal/zzkb;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzjq;->zzg()V

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzg;->zza()V

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzlw;->zzd:Lcom/google/android/gms/measurement/internal/zzkb;

    if-eq p1, v0, :cond_1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "EventInterceptor already set."

    .line 3
    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkState(ZLjava/lang/Object;)V

    :cond_1
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzlw;->zzd:Lcom/google/android/gms/measurement/internal/zzkb;

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public final zzai(Ljava/lang/Boolean;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzg;->zza()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzaX()Lcom/google/android/gms/measurement/internal/zzil;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/measurement/internal/zzlp;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/measurement/internal/zzlp;-><init>(Lcom/google/android/gms/measurement/internal/zzlw;Ljava/lang/Boolean;)V

    .line 3
    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzil;->zzq(Ljava/lang/Runnable;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method final zzaj(Lcom/google/android/gms/measurement/internal/zzjx;)V
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzjq;->zzg()V

    .line 2
    sget-object v0, Lcom/google/android/gms/measurement/internal/zzjw;->zzb:Lcom/google/android/gms/measurement/internal/zzjw;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/measurement/internal/zzjx;->zzr(Lcom/google/android/gms/measurement/internal/zzjw;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    sget-object v0, Lcom/google/android/gms/measurement/internal/zzjw;->zza:Lcom/google/android/gms/measurement/internal/zzjw;

    .line 3
    invoke-virtual {p1, v0}, Lcom/google/android/gms/measurement/internal/zzjx;->zzr(Lcom/google/android/gms/measurement/internal/zzjw;)Z

    move-result p1

    if-nez p1, :cond_1

    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzf;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 4
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzio;->zzu()Lcom/google/android/gms/measurement/internal/zzny;

    move-result-object p1

    .line 5
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzny;->zzab()Z

    move-result p1

    if-eqz p1, :cond_2

    :cond_1
    move p1, v2

    goto :goto_0

    :cond_2
    move p1, v1

    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzlw;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 6
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzK()Z

    move-result v3

    if-eq p1, v3, :cond_5

    .line 7
    invoke-virtual {v0, p1}, Lcom/google/android/gms/measurement/internal/zzio;->zzG(Z)V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 8
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzm()Lcom/google/android/gms/measurement/internal/zzht;

    move-result-object v0

    iget-object v3, v0, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 9
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzjq;->zzg()V

    .line 10
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzht;->zzb()Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v4, "measurement_enabled_from_api"

    invoke-interface {v3, v4}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 11
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzht;->zzb()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, v4, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    :goto_1
    if-eqz p1, :cond_4

    if-eqz v0, :cond_4

    .line 12
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 13
    :cond_4
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    .line 14
    invoke-direct {p0, p1, v1}, Lcom/google/android/gms/measurement/internal/zzlw;->zzas(Ljava/lang/Boolean;Z)V

    :cond_5
    return-void

    .array-data 1
    .end array-data
.end method

.method public final zzak(Lcom/google/android/gms/measurement/internal/zzjx;Z)V
    .locals 9

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzg;->zza()V

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzjx;->zzb()I

    move-result v0

    const/16 v1, -0xa

    if-eq v0, v1, :cond_1

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzjx;->zze()Lcom/google/android/gms/measurement/internal/zzju;

    move-result-object v2

    sget-object v3, Lcom/google/android/gms/measurement/internal/zzju;->zza:Lcom/google/android/gms/measurement/internal/zzju;

    if-ne v2, v3, :cond_1

    .line 3
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzjx;->zzf()Lcom/google/android/gms/measurement/internal/zzju;

    move-result-object v2

    sget-object v3, Lcom/google/android/gms/measurement/internal/zzju;->zza:Lcom/google/android/gms/measurement/internal/zzju;

    if-eq v2, v3, :cond_0

    goto :goto_0

    .line 24
    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 25
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzio;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object p1

    .line 26
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzhe;->zzl()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object p1

    const-string p2, "Ignoring empty consent settings"

    invoke-virtual {p1, p2}, Lcom/google/android/gms/measurement/internal/zzhc;->zza(Ljava/lang/String;)V

    return-void

    .line 3
    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzlw;->zzh:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/zzlw;->zzo:Lcom/google/android/gms/measurement/internal/zzjx;

    .line 4
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzjx;->zzb()I

    move-result v3

    invoke-static {v0, v3}, Lcom/google/android/gms/measurement/internal/zzjx;->zzs(II)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/zzlw;->zzo:Lcom/google/android/gms/measurement/internal/zzjx;

    .line 5
    invoke-virtual {p1, v3}, Lcom/google/android/gms/measurement/internal/zzjx;->zzu(Lcom/google/android/gms/measurement/internal/zzjx;)Z

    move-result v3

    .line 6
    sget-object v5, Lcom/google/android/gms/measurement/internal/zzjw;->zzb:Lcom/google/android/gms/measurement/internal/zzjw;

    invoke-virtual {p1, v5}, Lcom/google/android/gms/measurement/internal/zzjx;->zzr(Lcom/google/android/gms/measurement/internal/zzjw;)Z

    move-result v6

    const/4 v7, 0x1

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/google/android/gms/measurement/internal/zzlw;->zzo:Lcom/google/android/gms/measurement/internal/zzjx;

    .line 7
    invoke-virtual {v6, v5}, Lcom/google/android/gms/measurement/internal/zzjx;->zzr(Lcom/google/android/gms/measurement/internal/zzjw;)Z

    move-result v5

    if-nez v5, :cond_2

    move v4, v7

    :cond_2
    iget-object v5, p0, Lcom/google/android/gms/measurement/internal/zzlw;->zzo:Lcom/google/android/gms/measurement/internal/zzjx;

    .line 8
    invoke-virtual {p1, v5}, Lcom/google/android/gms/measurement/internal/zzjx;->zzm(Lcom/google/android/gms/measurement/internal/zzjx;)Lcom/google/android/gms/measurement/internal/zzjx;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzlw;->zzo:Lcom/google/android/gms/measurement/internal/zzjx;

    move-object v5, p1

    move v8, v4

    move v4, v7

    goto :goto_1

    :cond_3
    move-object v5, p1

    move v3, v4

    move v8, v3

    .line 9
    :goto_1
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v4, :cond_4

    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 10
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzio;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object p1

    .line 11
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzhe;->zzi()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object p1

    const-string p2, "Ignoring lower-priority consent settings, proposed settings"

    .line 12
    invoke-virtual {p1, p2, v5}, Lcom/google/android/gms/measurement/internal/zzhc;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    :cond_4
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzlw;->zzp:Ljava/util/concurrent/atomic/AtomicLong;

    .line 13
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicLong;->getAndIncrement()J

    move-result-wide v6

    if-eqz v3, :cond_6

    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzlw;->zzg:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v0, 0x0

    .line 14
    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    new-instance p1, Lcom/google/android/gms/measurement/internal/zzlr;

    move-object v3, p1

    move-object v4, p0

    invoke-direct/range {v3 .. v8}, Lcom/google/android/gms/measurement/internal/zzlr;-><init>(Lcom/google/android/gms/measurement/internal/zzlw;Lcom/google/android/gms/measurement/internal/zzjx;JZ)V

    if-eqz p2, :cond_5

    .line 17
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzjq;->zzg()V

    .line 18
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void

    :cond_5
    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 15
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzio;->zzaX()Lcom/google/android/gms/measurement/internal/zzil;

    move-result-object p2

    .line 16
    invoke-virtual {p2, p1}, Lcom/google/android/gms/measurement/internal/zzil;->zzr(Ljava/lang/Runnable;)V

    return-void

    :cond_6
    new-instance p1, Lcom/google/android/gms/measurement/internal/zzls;

    move-object v3, p1

    move-object v4, p0

    invoke-direct/range {v3 .. v8}, Lcom/google/android/gms/measurement/internal/zzls;-><init>(Lcom/google/android/gms/measurement/internal/zzlw;Lcom/google/android/gms/measurement/internal/zzjx;JZ)V

    if-eqz p2, :cond_7

    .line 19
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzjq;->zzg()V

    .line 20
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void

    :cond_7
    const/16 p2, 0x1e

    if-eq v0, p2, :cond_9

    if-ne v0, v1, :cond_8

    goto :goto_2

    .line 22
    :cond_8
    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 23
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzio;->zzaX()Lcom/google/android/gms/measurement/internal/zzil;

    move-result-object p2

    .line 24
    invoke-virtual {p2, p1}, Lcom/google/android/gms/measurement/internal/zzil;->zzq(Ljava/lang/Runnable;)V

    return-void

    .line 20
    :cond_9
    :goto_2
    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 21
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzio;->zzaX()Lcom/google/android/gms/measurement/internal/zzil;

    move-result-object p2

    .line 22
    invoke-virtual {p2, p1}, Lcom/google/android/gms/measurement/internal/zzil;->zzr(Ljava/lang/Runnable;)V

    return-void

    :catchall_0
    move-exception p1

    .line 9
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    .array-data 1
    .end array-data
.end method

.method public final zzal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Z)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzaU()Lcom/google/android/gms/common/util/Clock;

    move-result-object v0

    .line 2
    invoke-interface {v0}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-virtual/range {v1 .. v7}, Lcom/google/android/gms/measurement/internal/zzlw;->zzam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZJ)V

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public final zzam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZJ)V
    .locals 16

    move-object/from16 v6, p0

    move-object/from16 v2, p2

    move-object/from16 v0, p3

    const/4 v1, 0x0

    const/16 v3, 0x18

    if-eqz p4, :cond_0

    .line 7
    iget-object v4, v6, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzio;->zzw()Lcom/google/android/gms/measurement/internal/zzqf;

    move-result-object v4

    .line 8
    invoke-virtual {v4, v2}, Lcom/google/android/gms/measurement/internal/zzqf;->zzj(Ljava/lang/String;)I

    move-result v4

    :goto_0
    move v12, v4

    goto :goto_2

    .line 26
    :cond_0
    iget-object v4, v6, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 1
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzio;->zzw()Lcom/google/android/gms/measurement/internal/zzqf;

    move-result-object v4

    const-string v5, "user property"

    .line 2
    invoke-virtual {v4, v5, v2}, Lcom/google/android/gms/measurement/internal/zzqf;->zzah(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    const/4 v8, 0x6

    if-nez v7, :cond_1

    :goto_1
    move v12, v8

    goto :goto_2

    .line 3
    :cond_1
    sget-object v7, Lcom/google/android/gms/measurement/internal/zzka;->zza:[Ljava/lang/String;

    const/4 v9, 0x0

    .line 4
    invoke-virtual {v4, v5, v7, v9, v2}, Lcom/google/android/gms/measurement/internal/zzqf;->zzae(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_2

    const/16 v4, 0xf

    goto :goto_0

    :cond_2
    iget-object v7, v4, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 5
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzio;->zzf()Lcom/google/android/gms/measurement/internal/zzam;

    .line 6
    invoke-virtual {v4, v5, v3, v2}, Lcom/google/android/gms/measurement/internal/zzqf;->zzad(Ljava/lang/String;ILjava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3

    goto :goto_1

    :cond_3
    move v12, v1

    :goto_2
    const/4 v4, 0x1

    if-eqz v12, :cond_5

    .line 8
    iget-object v0, v6, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 9
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzw()Lcom/google/android/gms/measurement/internal/zzqf;

    move-result-object v5

    .line 10
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzf()Lcom/google/android/gms/measurement/internal/zzam;

    .line 11
    invoke-virtual {v5, v2, v3, v4}, Lcom/google/android/gms/measurement/internal/zzqf;->zzG(Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object v14

    if-eqz v2, :cond_4

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v1

    :cond_4
    move v15, v1

    iget-object v0, v6, Lcom/google/android/gms/measurement/internal/zzlw;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    iget-object v10, v6, Lcom/google/android/gms/measurement/internal/zzlw;->zzv:Lcom/google/android/gms/measurement/internal/zzqe;

    .line 12
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzw()Lcom/google/android/gms/measurement/internal/zzqf;

    move-result-object v9

    const/4 v11, 0x0

    const-string v13, "_ev"

    .line 13
    invoke-virtual/range {v9 .. v15}, Lcom/google/android/gms/measurement/internal/zzqf;->zzR(Lcom/google/android/gms/measurement/internal/zzqe;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    return-void

    :cond_5
    if-nez p1, :cond_6

    const-string v5, "app"

    goto :goto_3

    :cond_6
    move-object/from16 v5, p1

    :goto_3
    if-eqz v0, :cond_b

    iget-object v7, v6, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 14
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzio;->zzw()Lcom/google/android/gms/measurement/internal/zzqf;

    move-result-object v8

    .line 15
    invoke-virtual {v8, v2, v0}, Lcom/google/android/gms/measurement/internal/zzqf;->zzd(Ljava/lang/String;Ljava/lang/Object;)I

    move-result v12

    if-eqz v12, :cond_9

    .line 19
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzio;->zzw()Lcom/google/android/gms/measurement/internal/zzqf;

    move-result-object v5

    .line 20
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzio;->zzf()Lcom/google/android/gms/measurement/internal/zzam;

    .line 21
    invoke-virtual {v5, v2, v3, v4}, Lcom/google/android/gms/measurement/internal/zzqf;->zzG(Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object v14

    .line 22
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_7

    instance-of v2, v0, Ljava/lang/CharSequence;

    if-eqz v2, :cond_8

    .line 23
    :cond_7
    invoke-virtual/range {p3 .. p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    :cond_8
    move v15, v1

    iget-object v0, v6, Lcom/google/android/gms/measurement/internal/zzlw;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    iget-object v10, v6, Lcom/google/android/gms/measurement/internal/zzlw;->zzv:Lcom/google/android/gms/measurement/internal/zzqe;

    .line 24
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzw()Lcom/google/android/gms/measurement/internal/zzqf;

    move-result-object v9

    const/4 v11, 0x0

    const-string v13, "_ev"

    .line 25
    invoke-virtual/range {v9 .. v15}, Lcom/google/android/gms/measurement/internal/zzqf;->zzR(Lcom/google/android/gms/measurement/internal/zzqe;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    return-void

    .line 16
    :cond_9
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzio;->zzw()Lcom/google/android/gms/measurement/internal/zzqf;

    move-result-object v1

    .line 17
    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/measurement/internal/zzqf;->zzE(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_a

    move-object/from16 v0, p0

    move-object v1, v5

    move-object/from16 v2, p2

    move-wide/from16 v3, p5

    move-object v5, v7

    .line 18
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/measurement/internal/zzlw;->zzaa(Ljava/lang/String;Ljava/lang/String;JLjava/lang/Object;)V

    :cond_a
    return-void

    :cond_b
    const/4 v7, 0x0

    move-object/from16 v0, p0

    move-object v1, v5

    move-object/from16 v2, p2

    move-wide/from16 v3, p5

    move-object v5, v7

    .line 26
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/measurement/internal/zzlw;->zzaa(Ljava/lang/String;Ljava/lang/String;JLjava/lang/Object;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method final zzan(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;J)V
    .locals 9

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 2
    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzjq;->zzg()V

    .line 4
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzg;->zza()V

    const-string v0, "allow_personalized_ads"

    .line 5
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 6
    instance-of v0, p3, Ljava/lang/String;

    const-string v1, "_npa"

    if-eqz v0, :cond_2

    move-object v0, p3

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    sget-object p2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    .line 9
    invoke-virtual {v0, p2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x1

    const-string v0, "false"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    const-wide/16 v2, 0x1

    if-eq p3, p2, :cond_0

    const-wide/16 p2, 0x0

    goto :goto_0

    :cond_0
    move-wide p2, v2

    :goto_0
    iget-object v4, p0, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    .line 10
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzio;->zzm()Lcom/google/android/gms/measurement/internal/zzht;

    move-result-object p3

    .line 11
    iget-object p3, p3, Lcom/google/android/gms/measurement/internal/zzht;->zzh:Lcom/google/android/gms/measurement/internal/zzhr;

    move-object v4, p2

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v2, v4, v2

    if-nez v2, :cond_1

    const-string v0, "true"

    :cond_1
    invoke-virtual {p3, v0}, Lcom/google/android/gms/measurement/internal/zzhr;->zzb(Ljava/lang/String;)V

    move-object p3, p2

    goto :goto_1

    :cond_2
    if-nez p3, :cond_3

    .line 20
    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 7
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzio;->zzm()Lcom/google/android/gms/measurement/internal/zzht;

    move-result-object p2

    .line 8
    iget-object p2, p2, Lcom/google/android/gms/measurement/internal/zzht;->zzh:Lcom/google/android/gms/measurement/internal/zzhr;

    const-string v0, "unset"

    invoke-virtual {p2, v0}, Lcom/google/android/gms/measurement/internal/zzhr;->zzb(Ljava/lang/String;)V

    :goto_1
    move-object p2, v1

    .line 11
    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 12
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object v0

    .line 13
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzhe;->zzj()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object v0

    const-string v1, "Setting user property(FE)"

    const-string v2, "non_personalized_ads(_npa)"

    invoke-virtual {v0, v1, v2, p3}, Lcom/google/android/gms/measurement/internal/zzhc;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_4
    move-object v4, p2

    move-object v7, p3

    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/zzlw;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 14
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzio;->zzJ()Z

    move-result p3

    if-nez p3, :cond_5

    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 15
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzio;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object p1

    .line 16
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzhe;->zzj()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object p1

    const-string p2, "User property not set since app measurement is disabled"

    invoke-virtual {p1, p2}, Lcom/google/android/gms/measurement/internal/zzhc;->zza(Ljava/lang/String;)V

    return-void

    .line 17
    :cond_5
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzio;->zzM()Z

    move-result p2

    if-nez p2, :cond_6

    return-void

    :cond_6
    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/zzf;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 18
    new-instance p3, Lcom/google/android/gms/measurement/internal/zzqb;

    move-object v3, p3

    move-wide v5, p4

    move-object v8, p1

    invoke-direct/range {v3 .. v8}, Lcom/google/android/gms/measurement/internal/zzqb;-><init>(Ljava/lang/String;JLjava/lang/Object;Ljava/lang/String;)V

    .line 19
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzio;->zzu()Lcom/google/android/gms/measurement/internal/zzny;

    move-result-object p1

    .line 20
    invoke-virtual {p1, p3}, Lcom/google/android/gms/measurement/internal/zzny;->zzY(Lcom/google/android/gms/measurement/internal/zzqb;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method public final zzao(Lcom/google/android/gms/measurement/internal/zzkc;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzg;->zza()V

    .line 2
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzlw;->zze:Ljava/util/Set;

    .line 3
    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 4
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzio;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object p1

    .line 5
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzhe;->zzk()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object p1

    const-string v0, "OnEventListener had not been registered"

    invoke-virtual {p1, v0}, Lcom/google/android/gms/measurement/internal/zzhc;->zza(Ljava/lang/String;)V

    :cond_0
    return-void

    .array-data 1
    .end array-data
.end method

.method final zzap()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzlw;->zzn:Z

    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method protected final zzf()Z
    .locals 1

    const/4 v0, 0x0

    return v0

    .array-data 1
    .end array-data
.end method

.method public final zzi(Ljava/lang/String;)I
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzio;->zzf()Lcom/google/android/gms/measurement/internal/zzam;

    const/16 p1, 0x19

    return p1

    nop

    .array-data 1
    .end array-data
.end method

.method public final zzl()Ljava/lang/Boolean;
    .locals 6

    .line 1
    new-instance v1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzaX()Lcom/google/android/gms/measurement/internal/zzil;

    move-result-object v0

    new-instance v5, Lcom/google/android/gms/measurement/internal/zzlb;

    invoke-direct {v5, p0, v1}, Lcom/google/android/gms/measurement/internal/zzlb;-><init>(Lcom/google/android/gms/measurement/internal/zzlw;Ljava/util/concurrent/atomic/AtomicReference;)V

    const-wide/16 v2, 0x3a98

    const-string v4, "boolean test flag value"

    .line 3
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/measurement/internal/zzil;->zze(Ljava/util/concurrent/atomic/AtomicReference;JLjava/lang/String;Ljava/lang/Runnable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final zzm()Ljava/lang/Double;
    .locals 6

    .line 1
    new-instance v1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzaX()Lcom/google/android/gms/measurement/internal/zzil;

    move-result-object v0

    new-instance v5, Lcom/google/android/gms/measurement/internal/zzlo;

    invoke-direct {v5, p0, v1}, Lcom/google/android/gms/measurement/internal/zzlo;-><init>(Lcom/google/android/gms/measurement/internal/zzlw;Ljava/util/concurrent/atomic/AtomicReference;)V

    const-wide/16 v2, 0x3a98

    const-string v4, "double test flag value"

    .line 3
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/measurement/internal/zzil;->zze(Ljava/util/concurrent/atomic/AtomicReference;JLjava/lang/String;Ljava/lang/Runnable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final zzp()Ljava/lang/Integer;
    .locals 6

    .line 1
    new-instance v1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzaX()Lcom/google/android/gms/measurement/internal/zzil;

    move-result-object v0

    new-instance v5, Lcom/google/android/gms/measurement/internal/zzln;

    invoke-direct {v5, p0, v1}, Lcom/google/android/gms/measurement/internal/zzln;-><init>(Lcom/google/android/gms/measurement/internal/zzlw;Ljava/util/concurrent/atomic/AtomicReference;)V

    const-wide/16 v2, 0x3a98

    const-string v4, "int test flag value"

    .line 3
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/measurement/internal/zzil;->zze(Ljava/util/concurrent/atomic/AtomicReference;JLjava/lang/String;Ljava/lang/Runnable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final zzq()Ljava/lang/Long;
    .locals 6

    .line 1
    new-instance v1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzaX()Lcom/google/android/gms/measurement/internal/zzil;

    move-result-object v0

    new-instance v5, Lcom/google/android/gms/measurement/internal/zzlm;

    invoke-direct {v5, p0, v1}, Lcom/google/android/gms/measurement/internal/zzlm;-><init>(Lcom/google/android/gms/measurement/internal/zzlw;Ljava/util/concurrent/atomic/AtomicReference;)V

    const-wide/16 v2, 0x3a98

    const-string v4, "long test flag value"

    .line 3
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/measurement/internal/zzil;->zze(Ljava/util/concurrent/atomic/AtomicReference;JLjava/lang/String;Ljava/lang/Runnable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final zzr()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzlw;->zzg:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final zzs()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzlw;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzt()Lcom/google/android/gms/measurement/internal/zzmo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzmo;->zzi()Lcom/google/android/gms/measurement/internal/zzmh;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzmh;->zzb:Ljava/lang/String;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final zzt()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzlw;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzt()Lcom/google/android/gms/measurement/internal/zzmo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzmo;->zzi()Lcom/google/android/gms/measurement/internal/zzmh;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzmh;->zza:Ljava/lang/String;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final zzu()Ljava/lang/String;
    .locals 6

    .line 1
    new-instance v1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzaX()Lcom/google/android/gms/measurement/internal/zzil;

    move-result-object v0

    new-instance v5, Lcom/google/android/gms/measurement/internal/zzll;

    invoke-direct {v5, p0, v1}, Lcom/google/android/gms/measurement/internal/zzll;-><init>(Lcom/google/android/gms/measurement/internal/zzlw;Ljava/util/concurrent/atomic/AtomicReference;)V

    const-wide/16 v2, 0x3a98

    const-string v4, "String test flag value"

    .line 3
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/measurement/internal/zzil;->zze(Ljava/util/concurrent/atomic/AtomicReference;JLjava/lang/String;Ljava/lang/Runnable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final zzv(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzaX()Lcom/google/android/gms/measurement/internal/zzil;

    move-result-object v1

    .line 2
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzil;->zzu()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 17
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object p1

    .line 18
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzhe;->zze()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object p1

    const-string p2, "Cannot get conditional user properties from analytics worker thread"

    .line 19
    invoke-virtual {p1, p2}, Lcom/google/android/gms/measurement/internal/zzhc;->zza(Ljava/lang/String;)V

    new-instance p1, Ljava/util/ArrayList;

    .line 20
    invoke-direct {p1, v2}, Ljava/util/ArrayList;-><init>(I)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzaV()Lcom/google/android/gms/measurement/internal/zzaf;

    .line 4
    invoke-static {}, Lcom/google/android/gms/measurement/internal/zzaf;->zza()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object p1

    .line 6
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzhe;->zze()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object p1

    const-string p2, "Cannot get conditional user properties from main thread"

    invoke-virtual {p1, p2}, Lcom/google/android/gms/measurement/internal/zzhc;->zza(Ljava/lang/String;)V

    new-instance p1, Ljava/util/ArrayList;

    .line 7
    invoke-direct {p1, v2}, Ljava/util/ArrayList;-><init>(I)V

    goto :goto_0

    :cond_1
    new-instance v1, Ljava/util/concurrent/atomic/AtomicReference;

    .line 8
    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzlw;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 9
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzio;->zzaX()Lcom/google/android/gms/measurement/internal/zzil;

    move-result-object v2

    new-instance v9, Lcom/google/android/gms/measurement/internal/zzlh;

    const/4 v6, 0x0

    move-object v3, v9

    move-object v4, p0

    move-object v5, v1

    move-object v7, p1

    move-object v8, p2

    invoke-direct/range {v3 .. v8}, Lcom/google/android/gms/measurement/internal/zzlh;-><init>(Lcom/google/android/gms/measurement/internal/zzlw;Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v5, 0x1388

    const-string v7, "get conditional user properties"

    move-object v3, v2

    move-object v4, v1

    move-object v8, v9

    .line 10
    invoke-virtual/range {v3 .. v8}, Lcom/google/android/gms/measurement/internal/zzil;->zze(Ljava/util/concurrent/atomic/AtomicReference;JLjava/lang/String;Ljava/lang/Runnable;)Ljava/lang/Object;

    .line 11
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-nez p1, :cond_2

    .line 12
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object p1

    .line 13
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzhe;->zze()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object p1

    const-string p2, "Timed out waiting for get conditional user properties"

    const/4 v0, 0x0

    .line 14
    invoke-virtual {p1, p2, v0}, Lcom/google/android/gms/measurement/internal/zzhc;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance p1, Ljava/util/ArrayList;

    .line 15
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    goto :goto_0

    .line 16
    :cond_2
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzqf;->zzK(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object p1

    :goto_0
    return-object p1

    nop

    .array-data 1
    .end array-data
.end method

.method public final zzw(Z)Ljava/util/List;
    .locals 8

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzg;->zza()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object v1

    .line 3
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzhe;->zzj()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object v1

    const-string v2, "Getting user properties (FE)"

    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/zzhc;->zza(Ljava/lang/String;)V

    .line 4
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzaX()Lcom/google/android/gms/measurement/internal/zzil;

    move-result-object v1

    .line 5
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzil;->zzu()Z

    move-result v1

    if-nez v1, :cond_2

    .line 6
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzaV()Lcom/google/android/gms/measurement/internal/zzaf;

    .line 7
    invoke-static {}, Lcom/google/android/gms/measurement/internal/zzaf;->zza()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 8
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object p1

    .line 9
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzhe;->zze()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object p1

    const-string v0, "Cannot get all user properties from main thread"

    invoke-virtual {p1, v0}, Lcom/google/android/gms/measurement/internal/zzhc;->zza(Ljava/lang/String;)V

    .line 10
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance v7, Ljava/util/concurrent/atomic/AtomicReference;

    .line 11
    invoke-direct {v7}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzlw;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 12
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzio;->zzaX()Lcom/google/android/gms/measurement/internal/zzil;

    move-result-object v1

    new-instance v6, Lcom/google/android/gms/measurement/internal/zzlc;

    invoke-direct {v6, p0, v7, p1}, Lcom/google/android/gms/measurement/internal/zzlc;-><init>(Lcom/google/android/gms/measurement/internal/zzlw;Ljava/util/concurrent/atomic/AtomicReference;Z)V

    const-wide/16 v3, 0x1388

    const-string v5, "get user properties"

    move-object v2, v7

    .line 13
    invoke-virtual/range {v1 .. v6}, Lcom/google/android/gms/measurement/internal/zzil;->zze(Ljava/util/concurrent/atomic/AtomicReference;JLjava/lang/String;Ljava/lang/Runnable;)Ljava/lang/Object;

    .line 14
    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-nez v1, :cond_1

    .line 15
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object v0

    .line 16
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzhe;->zze()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object v0

    .line 17
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string v1, "Timed out waiting for get user properties, includeInternal"

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/measurement/internal/zzhc;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    .line 18
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1

    :cond_1
    return-object v1

    .line 19
    :cond_2
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object p1

    .line 20
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzhe;->zze()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object p1

    const-string v0, "Cannot get all user properties from analytics worker thread"

    invoke-virtual {p1, v0}, Lcom/google/android/gms/measurement/internal/zzhc;->zza(Ljava/lang/String;)V

    .line 21
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1

    .array-data 1
    .end array-data
.end method

.method public final zzx(Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/Map;
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzaX()Lcom/google/android/gms/measurement/internal/zzil;

    move-result-object v1

    .line 2
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzil;->zzu()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 21
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object p1

    .line 22
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzhe;->zze()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object p1

    const-string p2, "Cannot get user properties from analytics worker thread"

    invoke-virtual {p1, p2}, Lcom/google/android/gms/measurement/internal/zzhc;->zza(Ljava/lang/String;)V

    .line 23
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object p1

    goto/16 :goto_1

    .line 3
    :cond_0
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzaV()Lcom/google/android/gms/measurement/internal/zzaf;

    .line 4
    invoke-static {}, Lcom/google/android/gms/measurement/internal/zzaf;->zza()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object p1

    .line 6
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzhe;->zze()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object p1

    const-string p2, "Cannot get user properties from main thread"

    invoke-virtual {p1, p2}, Lcom/google/android/gms/measurement/internal/zzhc;->zza(Ljava/lang/String;)V

    .line 7
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object p1

    goto/16 :goto_1

    :cond_1
    new-instance v8, Ljava/util/concurrent/atomic/AtomicReference;

    .line 8
    invoke-direct {v8}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzlw;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 9
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzio;->zzaX()Lcom/google/android/gms/measurement/internal/zzil;

    move-result-object v9

    new-instance v10, Lcom/google/android/gms/measurement/internal/zzli;

    const/4 v4, 0x0

    move-object v1, v10

    move-object v2, p0

    move-object v3, v8

    move-object v5, p1

    move-object v6, p2

    move v7, p3

    invoke-direct/range {v1 .. v7}, Lcom/google/android/gms/measurement/internal/zzli;-><init>(Lcom/google/android/gms/measurement/internal/zzlw;Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    const-wide/16 v3, 0x1388

    const-string v5, "get user properties"

    move-object v1, v9

    move-object v2, v8

    move-object v6, v10

    .line 10
    invoke-virtual/range {v1 .. v6}, Lcom/google/android/gms/measurement/internal/zzil;->zze(Ljava/util/concurrent/atomic/AtomicReference;JLjava/lang/String;Ljava/lang/Runnable;)Ljava/lang/Object;

    .line 11
    invoke-virtual {v8}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-nez p1, :cond_2

    .line 12
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object p1

    .line 13
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzhe;->zze()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object p1

    .line 14
    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    const-string p3, "Timed out waiting for handle get user properties, includeInternal"

    .line 15
    invoke-virtual {p1, p3, p2}, Lcom/google/android/gms/measurement/internal/zzhc;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    .line 16
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object p1

    goto :goto_1

    .line 17
    :cond_2
    new-instance p2, Landroidx/collection/ArrayMap;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p3

    invoke-direct {p2, p3}, Landroidx/collection/ArrayMap;-><init>(I)V

    .line 18
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_3
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/google/android/gms/measurement/internal/zzqb;

    .line 19
    invoke-virtual {p3}, Lcom/google/android/gms/measurement/internal/zzqb;->zza()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 20
    iget-object p3, p3, Lcom/google/android/gms/measurement/internal/zzqb;->zzb:Ljava/lang/String;

    invoke-interface {p2, p3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_4
    move-object p1, p2

    :goto_1
    return-object p1

    nop

    .array-data 1
    .end array-data
.end method

.method final zzy()Ljava/util/PriorityQueue;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzlw;->zzm:Ljava/util/PriorityQueue;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/PriorityQueue;

    new-instance v1, Lcom/google/android/gms/measurement/internal/zzkf;

    invoke-direct {v1}, Lcom/google/android/gms/measurement/internal/zzkf;-><init>()V

    new-instance v2, Lcom/google/android/gms/measurement/internal/zzkh;

    invoke-direct {v2}, Lcom/google/android/gms/measurement/internal/zzkh;-><init>()V

    invoke-static {v1, v2}, Ljava/util/Comparator;->comparing(Ljava/util/function/Function;Ljava/util/Comparator;)Ljava/util/Comparator;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/PriorityQueue;-><init>(Ljava/util/Comparator;)V

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/zzlw;->zzm:Ljava/util/PriorityQueue;

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzlw;->zzm:Ljava/util/PriorityQueue;

    return-object v0

    .array-data 1
    .end array-data
.end method
