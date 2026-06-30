.class public final Lcom/google/android/gms/measurement/internal/zzmo;
.super Lcom/google/android/gms/measurement/internal/zzg;
.source "com.google.android.gms:play-services-measurement-impl@@22.4.0"


# instance fields
.field protected zza:Lcom/google/android/gms/measurement/internal/zzmh;

.field private volatile zzb:Lcom/google/android/gms/measurement/internal/zzmh;

.field private volatile zzc:Lcom/google/android/gms/measurement/internal/zzmh;

.field private final zzd:Ljava/util/Map;

.field private zze:Lcom/google/android/gms/internal/measurement/zzdj;

.field private volatile zzf:Z

.field private volatile zzg:Lcom/google/android/gms/measurement/internal/zzmh;

.field private zzh:Lcom/google/android/gms/measurement/internal/zzmh;

.field private zzi:Z

.field private final zzj:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/measurement/internal/zzio;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/measurement/internal/zzg;-><init>(Lcom/google/android/gms/measurement/internal/zzio;)V

    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzmo;->zzj:Ljava/lang/Object;

    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    .line 2
    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzmo;->zzd:Ljava/util/Map;

    return-void

    .array-data 1
    .end array-data
.end method

.method private final zzA(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzmh;Z)V
    .locals 16

    move-object/from16 v7, p0

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    .line 1
    iget-object v2, v7, Lcom/google/android/gms/measurement/internal/zzmo;->zzb:Lcom/google/android/gms/measurement/internal/zzmh;

    if-nez v2, :cond_0

    iget-object v2, v7, Lcom/google/android/gms/measurement/internal/zzmo;->zzc:Lcom/google/android/gms/measurement/internal/zzmh;

    goto :goto_0

    .line 7
    :cond_0
    iget-object v2, v7, Lcom/google/android/gms/measurement/internal/zzmo;->zzb:Lcom/google/android/gms/measurement/internal/zzmh;

    :goto_0
    move-object v3, v2

    .line 1
    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzmh;->zzb:Ljava/lang/String;

    if-nez v2, :cond_2

    if-eqz v0, :cond_1

    const-string v2, "Activity"

    .line 2
    invoke-virtual {v7, v0, v2}, Lcom/google/android/gms/measurement/internal/zzmo;->zzl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    move-object v10, v0

    new-instance v0, Lcom/google/android/gms/measurement/internal/zzmh;

    .line 3
    iget-object v9, v1, Lcom/google/android/gms/measurement/internal/zzmh;->zza:Ljava/lang/String;

    iget-wide v11, v1, Lcom/google/android/gms/measurement/internal/zzmh;->zzc:J

    iget-boolean v13, v1, Lcom/google/android/gms/measurement/internal/zzmh;->zze:Z

    iget-wide v14, v1, Lcom/google/android/gms/measurement/internal/zzmh;->zzf:J

    move-object v8, v0

    invoke-direct/range {v8 .. v15}, Lcom/google/android/gms/measurement/internal/zzmh;-><init>(Ljava/lang/String;Ljava/lang/String;JZJ)V

    move-object v2, v0

    goto :goto_2

    :cond_2
    move-object v2, v1

    :goto_2
    iget-object v0, v7, Lcom/google/android/gms/measurement/internal/zzmo;->zzb:Lcom/google/android/gms/measurement/internal/zzmh;

    iput-object v0, v7, Lcom/google/android/gms/measurement/internal/zzmo;->zzc:Lcom/google/android/gms/measurement/internal/zzmh;

    iput-object v2, v7, Lcom/google/android/gms/measurement/internal/zzmo;->zzb:Lcom/google/android/gms/measurement/internal/zzmh;

    iget-object v0, v7, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 4
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzaU()Lcom/google/android/gms/common/util/Clock;

    move-result-object v1

    .line 5
    invoke-interface {v1}, Lcom/google/android/gms/common/util/Clock;->elapsedRealtime()J

    move-result-wide v4

    .line 6
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzaX()Lcom/google/android/gms/measurement/internal/zzil;

    move-result-object v8

    new-instance v9, Lcom/google/android/gms/measurement/internal/zzmj;

    move-object v0, v9

    move-object/from16 v1, p0

    move/from16 v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/measurement/internal/zzmj;-><init>(Lcom/google/android/gms/measurement/internal/zzmo;Lcom/google/android/gms/measurement/internal/zzmh;Lcom/google/android/gms/measurement/internal/zzmh;JZ)V

    .line 7
    invoke-virtual {v8, v9}, Lcom/google/android/gms/measurement/internal/zzil;->zzq(Ljava/lang/Runnable;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method private final zzB(Lcom/google/android/gms/measurement/internal/zzmh;Lcom/google/android/gms/measurement/internal/zzmh;JZLandroid/os/Bundle;)V
    .locals 15

    move-object v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-wide/from16 v3, p3

    move-object/from16 v5, p6

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzjq;->zzg()V

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eqz v2, :cond_1

    .line 2
    iget-wide v8, v1, Lcom/google/android/gms/measurement/internal/zzmh;->zzc:J

    iget-wide v10, v2, Lcom/google/android/gms/measurement/internal/zzmh;->zzc:J

    cmp-long v8, v10, v8

    if-nez v8, :cond_1

    iget-object v8, v2, Lcom/google/android/gms/measurement/internal/zzmh;->zzb:Ljava/lang/String;

    iget-object v9, v1, Lcom/google/android/gms/measurement/internal/zzmh;->zzb:Ljava/lang/String;

    .line 3
    invoke-static {v8, v9}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    iget-object v8, v2, Lcom/google/android/gms/measurement/internal/zzmh;->zza:Ljava/lang/String;

    iget-object v9, v1, Lcom/google/android/gms/measurement/internal/zzmh;->zza:Ljava/lang/String;

    .line 4
    invoke-static {v8, v9}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    goto :goto_0

    :cond_0
    move v8, v6

    goto :goto_1

    :cond_1
    :goto_0
    move v8, v7

    :goto_1
    if-eqz p5, :cond_2

    iget-object v9, v0, Lcom/google/android/gms/measurement/internal/zzmo;->zza:Lcom/google/android/gms/measurement/internal/zzmh;

    if-eqz v9, :cond_2

    move v6, v7

    :cond_2
    if-eqz v8, :cond_c

    if-eqz v5, :cond_3

    new-instance v8, Landroid/os/Bundle;

    .line 5
    invoke-direct {v8, v5}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    goto :goto_2

    .line 25
    :cond_3
    new-instance v8, Landroid/os/Bundle;

    .line 5
    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    :goto_2
    move-object v14, v8

    .line 6
    invoke-static {v1, v14, v7}, Lcom/google/android/gms/measurement/internal/zzqf;->zzN(Lcom/google/android/gms/measurement/internal/zzmh;Landroid/os/Bundle;Z)V

    if-eqz v2, :cond_6

    iget-object v5, v2, Lcom/google/android/gms/measurement/internal/zzmh;->zza:Ljava/lang/String;

    if-eqz v5, :cond_4

    const-string v8, "_pn"

    .line 7
    invoke-virtual {v14, v8, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    iget-object v5, v2, Lcom/google/android/gms/measurement/internal/zzmh;->zzb:Ljava/lang/String;

    if-eqz v5, :cond_5

    const-string v8, "_pc"

    .line 8
    invoke-virtual {v14, v8, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    iget-wide v8, v2, Lcom/google/android/gms/measurement/internal/zzmh;->zzc:J

    const-string v2, "_pi"

    .line 9
    invoke-virtual {v14, v2, v8, v9}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    :cond_6
    const-wide/16 v8, 0x0

    if-eqz v6, :cond_7

    iget-object v2, v0, Lcom/google/android/gms/measurement/internal/zzf;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 10
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzio;->zzv()Lcom/google/android/gms/measurement/internal/zzop;

    move-result-object v2

    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/zzop;->zzb:Lcom/google/android/gms/measurement/internal/zzon;

    iget-wide v10, v2, Lcom/google/android/gms/measurement/internal/zzon;->zzb:J

    sub-long v10, v3, v10

    iput-wide v3, v2, Lcom/google/android/gms/measurement/internal/zzon;->zzb:J

    cmp-long v2, v10, v8

    if-lez v2, :cond_7

    iget-object v2, v0, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 11
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzio;->zzw()Lcom/google/android/gms/measurement/internal/zzqf;

    move-result-object v2

    .line 12
    invoke-virtual {v2, v14, v10, v11}, Lcom/google/android/gms/measurement/internal/zzqf;->zzL(Landroid/os/Bundle;J)V

    :cond_7
    iget-object v2, v0, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 13
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzio;->zzf()Lcom/google/android/gms/measurement/internal/zzam;

    move-result-object v5

    .line 14
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzam;->zzz()Z

    move-result v5

    if-nez v5, :cond_8

    const-string v5, "_mst"

    const-wide/16 v10, 0x1

    .line 15
    invoke-virtual {v14, v5, v10, v11}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 16
    :cond_8
    iget-boolean v5, v1, Lcom/google/android/gms/measurement/internal/zzmh;->zze:Z

    if-eq v7, v5, :cond_9

    const-string v10, "auto"

    goto :goto_3

    :cond_9
    const-string v10, "app"

    .line 17
    :goto_3
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzio;->zzaU()Lcom/google/android/gms/common/util/Clock;

    move-result-object v2

    .line 18
    invoke-interface {v2}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v11

    if-eqz v5, :cond_b

    move-wide/from16 p5, v11

    .line 19
    iget-wide v11, v1, Lcom/google/android/gms/measurement/internal/zzmh;->zzf:J

    cmp-long v2, v11, v8

    if-nez v2, :cond_a

    goto :goto_4

    :cond_a
    move-wide v12, v11

    goto :goto_5

    :cond_b
    move-wide/from16 p5, v11

    :goto_4
    move-wide/from16 v12, p5

    :goto_5
    iget-object v2, v0, Lcom/google/android/gms/measurement/internal/zzf;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    const-string v11, "_vs"

    .line 20
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzio;->zzq()Lcom/google/android/gms/measurement/internal/zzlw;

    move-result-object v9

    .line 21
    invoke-virtual/range {v9 .. v14}, Lcom/google/android/gms/measurement/internal/zzlw;->zzS(Ljava/lang/String;Ljava/lang/String;JLandroid/os/Bundle;)V

    :cond_c
    if-eqz v6, :cond_d

    iget-object v2, v0, Lcom/google/android/gms/measurement/internal/zzmo;->zza:Lcom/google/android/gms/measurement/internal/zzmh;

    .line 22
    invoke-direct {p0, v2, v7, v3, v4}, Lcom/google/android/gms/measurement/internal/zzmo;->zzC(Lcom/google/android/gms/measurement/internal/zzmh;ZJ)V

    :cond_d
    iput-object v1, v0, Lcom/google/android/gms/measurement/internal/zzmo;->zza:Lcom/google/android/gms/measurement/internal/zzmh;

    .line 23
    iget-boolean v2, v1, Lcom/google/android/gms/measurement/internal/zzmh;->zze:Z

    if-eqz v2, :cond_e

    iput-object v1, v0, Lcom/google/android/gms/measurement/internal/zzmo;->zzh:Lcom/google/android/gms/measurement/internal/zzmh;

    :cond_e
    iget-object v2, v0, Lcom/google/android/gms/measurement/internal/zzf;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 24
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzio;->zzu()Lcom/google/android/gms/measurement/internal/zzny;

    move-result-object v2

    .line 25
    invoke-virtual {v2, v1}, Lcom/google/android/gms/measurement/internal/zzny;->zzS(Lcom/google/android/gms/measurement/internal/zzmh;)V

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method private final zzC(Lcom/google/android/gms/measurement/internal/zzmh;ZJ)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzf;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzio;->zzd()Lcom/google/android/gms/measurement/internal/zzd;

    move-result-object v2

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzaU()Lcom/google/android/gms/common/util/Clock;

    move-result-object v0

    .line 3
    invoke-interface {v0}, Lcom/google/android/gms/common/util/Clock;->elapsedRealtime()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/measurement/internal/zzd;->zzf(J)V

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    iget-boolean v2, p1, Lcom/google/android/gms/measurement/internal/zzmh;->zzd:Z

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    move v2, v0

    .line 4
    :goto_0
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzio;->zzv()Lcom/google/android/gms/measurement/internal/zzop;

    move-result-object v1

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/zzop;->zzb:Lcom/google/android/gms/measurement/internal/zzon;

    .line 5
    invoke-virtual {v1, v2, p2, p3, p4}, Lcom/google/android/gms/measurement/internal/zzon;->zzd(ZZJ)Z

    move-result p2

    if-eqz p2, :cond_1

    if-eqz p1, :cond_1

    iput-boolean v0, p1, Lcom/google/android/gms/measurement/internal/zzmh;->zzd:Z

    :cond_1
    return-void

    .array-data 1
    .end array-data
.end method

.method static bridge synthetic zzh(Lcom/google/android/gms/measurement/internal/zzmo;)Lcom/google/android/gms/measurement/internal/zzmh;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/zzmo;->zzh:Lcom/google/android/gms/measurement/internal/zzmh;

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method static bridge synthetic zzm(Lcom/google/android/gms/measurement/internal/zzmo;Lcom/google/android/gms/measurement/internal/zzmh;)V
    .locals 0

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzmo;->zzh:Lcom/google/android/gms/measurement/internal/zzmh;

    return-void

    .array-data 1
    .end array-data
.end method

.method static bridge synthetic zzp(Lcom/google/android/gms/measurement/internal/zzmo;Lcom/google/android/gms/measurement/internal/zzmh;Lcom/google/android/gms/measurement/internal/zzmh;JZLandroid/os/Bundle;)V
    .locals 7

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    move v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/measurement/internal/zzmo;->zzB(Lcom/google/android/gms/measurement/internal/zzmh;Lcom/google/android/gms/measurement/internal/zzmh;JZLandroid/os/Bundle;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method static bridge synthetic zzq(Lcom/google/android/gms/measurement/internal/zzmo;Landroid/os/Bundle;Lcom/google/android/gms/measurement/internal/zzmh;Lcom/google/android/gms/measurement/internal/zzmh;J)V
    .locals 10

    const-string v0, "screen_name"

    .line 1
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    const-string v0, "screen_class"

    .line 2
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    const-string v2, "screen_view"

    const/4 v8, 0x1

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzw()Lcom/google/android/gms/measurement/internal/zzqf;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v3, p1

    .line 4
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/measurement/internal/zzqf;->zzA(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/util/List;Z)Landroid/os/Bundle;

    move-result-object v9

    move-object v3, p0

    move-object v4, p2

    move-object v5, p3

    move-wide v6, p4

    .line 5
    invoke-direct/range {v3 .. v9}, Lcom/google/android/gms/measurement/internal/zzmo;->zzB(Lcom/google/android/gms/measurement/internal/zzmh;Lcom/google/android/gms/measurement/internal/zzmh;JZLandroid/os/Bundle;)V

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method static bridge synthetic zzr(Lcom/google/android/gms/measurement/internal/zzmo;Lcom/google/android/gms/measurement/internal/zzmh;ZJ)V
    .locals 0

    const/4 p2, 0x0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/gms/measurement/internal/zzmo;->zzC(Lcom/google/android/gms/measurement/internal/zzmh;ZJ)V

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method private final zzz(Lcom/google/android/gms/internal/measurement/zzdj;)Lcom/google/android/gms/measurement/internal/zzmh;
    .locals 6

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget v0, p1, Lcom/google/android/gms/internal/measurement/zzdj;->zza:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzmo;->zzd:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/measurement/internal/zzmh;

    if-nez v2, :cond_0

    .line 3
    iget-object p1, p1, Lcom/google/android/gms/internal/measurement/zzdj;->zzb:Ljava/lang/String;

    const-string v2, "Activity"

    invoke-virtual {p0, p1, v2}, Lcom/google/android/gms/measurement/internal/zzmo;->zzl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    new-instance v3, Lcom/google/android/gms/measurement/internal/zzmh;

    .line 4
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzio;->zzw()Lcom/google/android/gms/measurement/internal/zzqf;

    move-result-object v2

    .line 5
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzqf;->zzs()J

    move-result-wide v4

    const/4 v2, 0x0

    invoke-direct {v3, v2, p1, v4, v5}, Lcom/google/android/gms/measurement/internal/zzmh;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    .line 6
    invoke-interface {v1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v2, v3

    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzmo;->zzg:Lcom/google/android/gms/measurement/internal/zzmh;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzmo;->zzg:Lcom/google/android/gms/measurement/internal/zzmh;

    return-object p1

    :cond_1
    return-object v2

    nop

    .array-data 1
    .end array-data
.end method


# virtual methods
.method protected final zzf()Z
    .locals 1

    const/4 v0, 0x0

    return v0

    .array-data 1
    .end array-data
.end method

.method public final zzi()Lcom/google/android/gms/measurement/internal/zzmh;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzmo;->zzb:Lcom/google/android/gms/measurement/internal/zzmh;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final zzj(Z)Lcom/google/android/gms/measurement/internal/zzmh;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzg;->zza()V

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzjq;->zzg()V

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzmo;->zza:Lcom/google/android/gms/measurement/internal/zzmh;

    return-object p1

    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzmo;->zza:Lcom/google/android/gms/measurement/internal/zzmh;

    if-eqz p1, :cond_1

    return-object p1

    :cond_1
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzmo;->zzh:Lcom/google/android/gms/measurement/internal/zzmh;

    return-object p1

    nop

    .array-data 1
    .end array-data
.end method

.method final zzl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    if-nez p1, :cond_0

    const-string p1, "Activity"

    return-object p1

    :cond_0
    const-string p2, "\\."

    .line 1
    invoke-virtual {p1, p2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 2
    array-length p2, p1

    if-lez p2, :cond_1

    add-int/lit8 p2, p2, -0x1

    .line 3
    aget-object p1, p1, p2

    goto :goto_0

    :cond_1
    const-string p1, ""

    :goto_0
    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 4
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 5
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzio;->zzf()Lcom/google/android/gms/measurement/internal/zzam;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 4
    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/measurement/internal/zzam;->zzc(Ljava/lang/String;Z)I

    move-result v1

    if-le v0, v1, :cond_2

    .line 6
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzio;->zzf()Lcom/google/android/gms/measurement/internal/zzam;

    move-result-object p2

    .line 7
    invoke-virtual {p2, v2, v3}, Lcom/google/android/gms/measurement/internal/zzam;->zzc(Ljava/lang/String;Z)I

    move-result p2

    invoke-virtual {p1, v3, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    :cond_2
    return-object p1

    .array-data 1
    .end array-data
.end method

.method public final zzs(Lcom/google/android/gms/internal/measurement/zzdj;Landroid/os/Bundle;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzf()Lcom/google/android/gms/measurement/internal/zzam;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzam;->zzz()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_1

    const-string v0, "com.google.app_measurement.screen_service"

    .line 3
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p2

    if-eqz p2, :cond_1

    new-instance v0, Lcom/google/android/gms/measurement/internal/zzmh;

    const-string v1, "name"

    .line 4
    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "referrer_name"

    .line 5
    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "id"

    .line 6
    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v3

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/gms/measurement/internal/zzmh;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/zzmo;->zzd:Ljava/util/Map;

    .line 7
    iget p1, p1, Lcom/google/android/gms/internal/measurement/zzdj;->zza:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    :goto_0
    return-void

    .array-data 1
    .end array-data
.end method

.method public final zzt(Lcom/google/android/gms/internal/measurement/zzdj;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzmo;->zzj:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzmo;->zze:Lcom/google/android/gms/internal/measurement/zzdj;

    invoke-static {v1, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/gms/measurement/internal/zzmo;->zze:Lcom/google/android/gms/internal/measurement/zzdj;

    .line 2
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzf()Lcom/google/android/gms/measurement/internal/zzam;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzam;->zzz()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzmo;->zzd:Ljava/util/Map;

    .line 5
    iget p1, p1, Lcom/google/android/gms/internal/measurement/zzdj;->zza:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :catchall_0
    move-exception p1

    .line 2
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    nop

    .array-data 1
    .end array-data
.end method

.method public final zzu(Lcom/google/android/gms/internal/measurement/zzdj;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzmo;->zzj:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    iput-boolean v1, p0, Lcom/google/android/gms/measurement/internal/zzmo;->zzi:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/gms/measurement/internal/zzmo;->zzf:Z

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzaU()Lcom/google/android/gms/common/util/Clock;

    move-result-object v1

    .line 3
    invoke-interface {v1}, Lcom/google/android/gms/common/util/Clock;->elapsedRealtime()J

    move-result-wide v1

    .line 4
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzf()Lcom/google/android/gms/measurement/internal/zzam;

    move-result-object v3

    .line 5
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzam;->zzz()Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_0

    iput-object v4, p0, Lcom/google/android/gms/measurement/internal/zzmo;->zzb:Lcom/google/android/gms/measurement/internal/zzmh;

    .line 6
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzaX()Lcom/google/android/gms/measurement/internal/zzil;

    move-result-object p1

    new-instance v0, Lcom/google/android/gms/measurement/internal/zzml;

    invoke-direct {v0, p0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzml;-><init>(Lcom/google/android/gms/measurement/internal/zzmo;J)V

    .line 7
    invoke-virtual {p1, v0}, Lcom/google/android/gms/measurement/internal/zzil;->zzq(Ljava/lang/Runnable;)V

    return-void

    .line 8
    :cond_0
    invoke-direct {p0, p1}, Lcom/google/android/gms/measurement/internal/zzmo;->zzz(Lcom/google/android/gms/internal/measurement/zzdj;)Lcom/google/android/gms/measurement/internal/zzmh;

    move-result-object p1

    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/zzmo;->zzb:Lcom/google/android/gms/measurement/internal/zzmh;

    iput-object v3, p0, Lcom/google/android/gms/measurement/internal/zzmo;->zzc:Lcom/google/android/gms/measurement/internal/zzmh;

    iput-object v4, p0, Lcom/google/android/gms/measurement/internal/zzmo;->zzb:Lcom/google/android/gms/measurement/internal/zzmh;

    .line 9
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzaX()Lcom/google/android/gms/measurement/internal/zzil;

    move-result-object v0

    new-instance v3, Lcom/google/android/gms/measurement/internal/zzmm;

    invoke-direct {v3, p0, p1, v1, v2}, Lcom/google/android/gms/measurement/internal/zzmm;-><init>(Lcom/google/android/gms/measurement/internal/zzmo;Lcom/google/android/gms/measurement/internal/zzmh;J)V

    .line 10
    invoke-virtual {v0, v3}, Lcom/google/android/gms/measurement/internal/zzil;->zzq(Ljava/lang/Runnable;)V

    return-void

    :catchall_0
    move-exception p1

    .line 1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    .array-data 1
    .end array-data
.end method

.method public final zzv(Lcom/google/android/gms/internal/measurement/zzdj;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzmo;->zzj:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lcom/google/android/gms/measurement/internal/zzmo;->zzi:Z

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzmo;->zze:Lcom/google/android/gms/internal/measurement/zzdj;

    invoke-static {p1, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzmo;->zze:Lcom/google/android/gms/internal/measurement/zzdj;

    iput-boolean v2, p0, Lcom/google/android/gms/measurement/internal/zzmo;->zzf:Z

    .line 2
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 3
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzio;->zzf()Lcom/google/android/gms/measurement/internal/zzam;

    move-result-object v3

    .line 4
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzam;->zzz()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x0

    iput-object v3, p0, Lcom/google/android/gms/measurement/internal/zzmo;->zzg:Lcom/google/android/gms/measurement/internal/zzmh;

    .line 5
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzio;->zzaX()Lcom/google/android/gms/measurement/internal/zzil;

    move-result-object v1

    new-instance v3, Lcom/google/android/gms/measurement/internal/zzmn;

    invoke-direct {v3, p0}, Lcom/google/android/gms/measurement/internal/zzmn;-><init>(Lcom/google/android/gms/measurement/internal/zzmo;)V

    .line 6
    invoke-virtual {v1, v3}, Lcom/google/android/gms/measurement/internal/zzil;->zzq(Ljava/lang/Runnable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 2
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p1

    .line 7
    :cond_0
    :goto_0
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 8
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzf()Lcom/google/android/gms/measurement/internal/zzam;

    move-result-object v1

    .line 9
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzam;->zzz()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzmo;->zzg:Lcom/google/android/gms/measurement/internal/zzmh;

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzmo;->zzb:Lcom/google/android/gms/measurement/internal/zzmh;

    .line 10
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzaX()Lcom/google/android/gms/measurement/internal/zzil;

    move-result-object p1

    new-instance v0, Lcom/google/android/gms/measurement/internal/zzmk;

    invoke-direct {v0, p0}, Lcom/google/android/gms/measurement/internal/zzmk;-><init>(Lcom/google/android/gms/measurement/internal/zzmo;)V

    .line 11
    invoke-virtual {p1, v0}, Lcom/google/android/gms/measurement/internal/zzil;->zzq(Ljava/lang/Runnable;)V

    return-void

    .line 12
    :cond_1
    invoke-direct {p0, p1}, Lcom/google/android/gms/measurement/internal/zzmo;->zzz(Lcom/google/android/gms/internal/measurement/zzdj;)Lcom/google/android/gms/measurement/internal/zzmh;

    move-result-object v0

    .line 13
    iget-object p1, p1, Lcom/google/android/gms/internal/measurement/zzdj;->zzb:Ljava/lang/String;

    invoke-direct {p0, p1, v0, v2}, Lcom/google/android/gms/measurement/internal/zzmo;->zzA(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzmh;Z)V

    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzf;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 14
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzio;->zzd()Lcom/google/android/gms/measurement/internal/zzd;

    move-result-object p1

    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 15
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzaU()Lcom/google/android/gms/common/util/Clock;

    move-result-object v1

    .line 16
    invoke-interface {v1}, Lcom/google/android/gms/common/util/Clock;->elapsedRealtime()J

    move-result-wide v1

    .line 17
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzaX()Lcom/google/android/gms/measurement/internal/zzil;

    move-result-object v0

    new-instance v3, Lcom/google/android/gms/measurement/internal/zzc;

    invoke-direct {v3, p1, v1, v2}, Lcom/google/android/gms/measurement/internal/zzc;-><init>(Lcom/google/android/gms/measurement/internal/zzd;J)V

    .line 18
    invoke-virtual {v0, v3}, Lcom/google/android/gms/measurement/internal/zzil;->zzq(Ljava/lang/Runnable;)V

    return-void

    :catchall_1
    move-exception p1

    .line 7
    :try_start_5
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw p1

    nop

    .array-data 1
    .end array-data
.end method

.method public final zzw(Lcom/google/android/gms/internal/measurement/zzdj;Landroid/os/Bundle;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzf()Lcom/google/android/gms/measurement/internal/zzam;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzam;->zzz()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzmo;->zzd:Ljava/util/Map;

    .line 3
    iget p1, p1, Lcom/google/android/gms/internal/measurement/zzdj;->zza:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/measurement/internal/zzmh;

    if-eqz p1, :cond_1

    new-instance v0, Landroid/os/Bundle;

    .line 4
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "id"

    iget-wide v2, p1, Lcom/google/android/gms/measurement/internal/zzmh;->zzc:J

    .line 5
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v1, "name"

    iget-object v2, p1, Lcom/google/android/gms/measurement/internal/zzmh;->zza:Ljava/lang/String;

    .line 6
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "referrer_name"

    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/zzmh;->zzb:Ljava/lang/String;

    .line 7
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "com.google.app_measurement.screen_service"

    .line 8
    invoke-virtual {p2, p1, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_1
    :goto_0
    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public final zzx(Lcom/google/android/gms/internal/measurement/zzdj;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzf()Lcom/google/android/gms/measurement/internal/zzam;

    move-result-object v1

    .line 2
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzam;->zzz()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object p1

    .line 4
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzhe;->zzl()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object p1

    const-string p2, "setCurrentScreen cannot be called while screen reporting is disabled."

    .line 5
    invoke-virtual {p1, p2}, Lcom/google/android/gms/measurement/internal/zzhc;->zza(Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzmo;->zzb:Lcom/google/android/gms/measurement/internal/zzmh;

    if-nez v1, :cond_1

    .line 6
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object p1

    .line 7
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzhe;->zzl()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object p1

    const-string p2, "setCurrentScreen cannot be called while no activity active"

    .line 8
    invoke-virtual {p1, p2}, Lcom/google/android/gms/measurement/internal/zzhc;->zza(Ljava/lang/String;)V

    return-void

    :cond_1
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzmo;->zzd:Ljava/util/Map;

    .line 9
    iget v3, p1, Lcom/google/android/gms/internal/measurement/zzdj;->zza:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_2

    .line 10
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object p1

    .line 11
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzhe;->zzl()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object p1

    const-string p2, "setCurrentScreen must be called with an activity in the activity lifecycle"

    .line 12
    invoke-virtual {p1, p2}, Lcom/google/android/gms/measurement/internal/zzhc;->zza(Ljava/lang/String;)V

    return-void

    :cond_2
    if-nez p3, :cond_3

    .line 13
    iget-object p3, p1, Lcom/google/android/gms/internal/measurement/zzdj;->zzb:Ljava/lang/String;

    const-string v4, "Activity"

    invoke-virtual {p0, p3, v4}, Lcom/google/android/gms/measurement/internal/zzmo;->zzl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    :cond_3
    iget-object v4, v1, Lcom/google/android/gms/measurement/internal/zzmh;->zzb:Ljava/lang/String;

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/zzmh;->zza:Ljava/lang/String;

    .line 14
    invoke-static {v4, p3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    .line 15
    invoke-static {v1, p2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v4, :cond_5

    if-nez v1, :cond_4

    goto :goto_0

    .line 33
    :cond_4
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object p1

    .line 34
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzhe;->zzl()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object p1

    const-string p2, "setCurrentScreen cannot be called with the same class and name"

    .line 35
    invoke-virtual {p1, p2}, Lcom/google/android/gms/measurement/internal/zzhc;->zza(Ljava/lang/String;)V

    return-void

    :cond_5
    :goto_0
    const/4 v1, 0x0

    const/4 v4, 0x0

    if-eqz p2, :cond_7

    .line 15
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_6

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v5

    .line 16
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzf()Lcom/google/android/gms/measurement/internal/zzam;

    move-result-object v6

    .line 17
    invoke-virtual {v6, v4, v1}, Lcom/google/android/gms/measurement/internal/zzam;->zzc(Ljava/lang/String;Z)I

    move-result v6

    if-gt v5, v6, :cond_6

    goto :goto_1

    .line 30
    :cond_6
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object p1

    .line 31
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzhe;->zzl()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object p1

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    const-string p3, "Invalid screen name length in setCurrentScreen. Length"

    .line 32
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p3, p2}, Lcom/google/android/gms/measurement/internal/zzhc;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    :cond_7
    :goto_1
    if-eqz p3, :cond_9

    .line 17
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_8

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v5

    .line 18
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzf()Lcom/google/android/gms/measurement/internal/zzam;

    move-result-object v6

    .line 19
    invoke-virtual {v6, v4, v1}, Lcom/google/android/gms/measurement/internal/zzam;->zzc(Ljava/lang/String;Z)I

    move-result v1

    if-gt v5, v1, :cond_8

    goto :goto_2

    .line 27
    :cond_8
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object p1

    .line 28
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzhe;->zzl()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object p1

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p2

    const-string p3, "Invalid class name length in setCurrentScreen. Length"

    .line 29
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p3, p2}, Lcom/google/android/gms/measurement/internal/zzhc;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    .line 20
    :cond_9
    :goto_2
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object v1

    .line 21
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzhe;->zzj()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object v1

    if-nez p2, :cond_a

    const-string v4, "null"

    goto :goto_3

    :cond_a
    move-object v4, p2

    :goto_3
    const-string v5, "Setting current screen to name, class"

    .line 22
    invoke-virtual {v1, v5, v4, p3}, Lcom/google/android/gms/measurement/internal/zzhc;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v1, Lcom/google/android/gms/measurement/internal/zzmh;

    .line 23
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzw()Lcom/google/android/gms/measurement/internal/zzqf;

    move-result-object v0

    .line 24
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzqf;->zzs()J

    move-result-wide v4

    invoke-direct {v1, p2, p3, v4, v5}, Lcom/google/android/gms/measurement/internal/zzmh;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    .line 25
    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    iget-object p1, p1, Lcom/google/android/gms/internal/measurement/zzdj;->zzb:Ljava/lang/String;

    const/4 p2, 0x1

    invoke-direct {p0, p1, v1, p2}, Lcom/google/android/gms/measurement/internal/zzmo;->zzA(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzmh;Z)V

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public final zzy(Landroid/os/Bundle;J)V
    .locals 12

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzmo;->zzj:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/google/android/gms/measurement/internal/zzmo;->zzi:Z

    if-nez v1, :cond_0

    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzio;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object p1

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzhe;->zzl()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object p1

    const-string p2, "Cannot log screen view event when the app is in the background."

    .line 3
    invoke-virtual {p1, p2}, Lcom/google/android/gms/measurement/internal/zzhc;->zza(Ljava/lang/String;)V

    .line 4
    monitor-exit v0

    return-void

    :cond_0
    const-string v1, "screen_name"

    .line 5
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    iget-object v5, p0, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 6
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzio;->zzf()Lcom/google/android/gms/measurement/internal/zzam;

    move-result-object v5

    .line 7
    invoke-virtual {v5, v1, v2}, Lcom/google/android/gms/measurement/internal/zzam;->zzc(Ljava/lang/String;Z)I

    move-result v5

    if-le v4, v5, :cond_2

    :cond_1
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 32
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzio;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object p1

    .line 33
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzhe;->zzl()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object p1

    const-string p2, "Invalid screen name length for screen view. Length"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result p3

    .line 34
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lcom/google/android/gms/measurement/internal/zzhc;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    .line 35
    monitor-exit v0

    return-void

    :cond_2
    const-string v4, "screen_class"

    .line 8
    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_3

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    iget-object v6, p0, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 9
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzio;->zzf()Lcom/google/android/gms/measurement/internal/zzam;

    move-result-object v6

    .line 10
    invoke-virtual {v6, v1, v2}, Lcom/google/android/gms/measurement/internal/zzam;->zzc(Ljava/lang/String;Z)I

    move-result v1

    if-le v5, v1, :cond_4

    :cond_3
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 28
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzio;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object p1

    .line 29
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzhe;->zzl()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object p1

    const-string p2, "Invalid screen class length for screen view. Length"

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result p3

    .line 30
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lcom/google/android/gms/measurement/internal/zzhc;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    .line 31
    monitor-exit v0

    return-void

    :cond_4
    if-nez v4, :cond_6

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzmo;->zze:Lcom/google/android/gms/internal/measurement/zzdj;

    if-eqz v1, :cond_5

    iget-object v1, v1, Lcom/google/android/gms/internal/measurement/zzdj;->zzb:Ljava/lang/String;

    const-string v4, "Activity"

    .line 11
    invoke-virtual {p0, v1, v4}, Lcom/google/android/gms/measurement/internal/zzmo;->zzl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_5
    const-string v1, "Activity"

    :goto_0
    move-object v4, v1

    :cond_6
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzmo;->zzb:Lcom/google/android/gms/measurement/internal/zzmh;

    iget-boolean v5, p0, Lcom/google/android/gms/measurement/internal/zzmo;->zzf:Z

    if-eqz v5, :cond_7

    if-eqz v1, :cond_7

    iput-boolean v2, p0, Lcom/google/android/gms/measurement/internal/zzmo;->zzf:Z

    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzmh;->zzb:Ljava/lang/String;

    .line 12
    invoke-static {v2, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/zzmh;->zza:Ljava/lang/String;

    .line 13
    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v2, :cond_7

    if-eqz v1, :cond_7

    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 24
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzio;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object p1

    .line 25
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzhe;->zzl()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object p1

    const-string p2, "Ignoring call to log screen view event with duplicate parameters."

    .line 26
    invoke-virtual {p1, p2}, Lcom/google/android/gms/measurement/internal/zzhc;->zza(Ljava/lang/String;)V

    .line 27
    monitor-exit v0

    return-void

    .line 14
    :cond_7
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 15
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object v1

    .line 16
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzhe;->zzj()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object v1

    if-nez v3, :cond_8

    const-string v2, "null"

    goto :goto_1

    :cond_8
    move-object v2, v3

    :goto_1
    if-nez v4, :cond_9

    const-string v5, "null"

    goto :goto_2

    :cond_9
    move-object v5, v4

    :goto_2
    const-string v6, "Logging screen view with name, class"

    .line 17
    invoke-virtual {v1, v6, v2, v5}, Lcom/google/android/gms/measurement/internal/zzhc;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzmo;->zzb:Lcom/google/android/gms/measurement/internal/zzmh;

    if-nez v1, :cond_a

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzmo;->zzc:Lcom/google/android/gms/measurement/internal/zzmh;

    goto :goto_3

    .line 23
    :cond_a
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzmo;->zzb:Lcom/google/android/gms/measurement/internal/zzmh;

    .line 17
    :goto_3
    new-instance v10, Lcom/google/android/gms/measurement/internal/zzmh;

    .line 18
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzw()Lcom/google/android/gms/measurement/internal/zzqf;

    move-result-object v2

    .line 19
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzqf;->zzs()J

    move-result-wide v5

    const/4 v7, 0x1

    move-object v2, v10

    move-wide v8, p2

    invoke-direct/range {v2 .. v9}, Lcom/google/android/gms/measurement/internal/zzmh;-><init>(Ljava/lang/String;Ljava/lang/String;JZJ)V

    iput-object v10, p0, Lcom/google/android/gms/measurement/internal/zzmo;->zzb:Lcom/google/android/gms/measurement/internal/zzmh;

    iput-object v1, p0, Lcom/google/android/gms/measurement/internal/zzmo;->zzc:Lcom/google/android/gms/measurement/internal/zzmh;

    iput-object v10, p0, Lcom/google/android/gms/measurement/internal/zzmo;->zzg:Lcom/google/android/gms/measurement/internal/zzmh;

    .line 20
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzaU()Lcom/google/android/gms/common/util/Clock;

    move-result-object p2

    .line 21
    invoke-interface {p2}, Lcom/google/android/gms/common/util/Clock;->elapsedRealtime()J

    move-result-wide p2

    .line 22
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzaX()Lcom/google/android/gms/measurement/internal/zzil;

    move-result-object v0

    new-instance v2, Lcom/google/android/gms/measurement/internal/zzmi;

    move-object v5, v2

    move-object v6, p0

    move-object v7, p1

    move-object v8, v10

    move-object v9, v1

    move-wide v10, p2

    invoke-direct/range {v5 .. v11}, Lcom/google/android/gms/measurement/internal/zzmi;-><init>(Lcom/google/android/gms/measurement/internal/zzmo;Landroid/os/Bundle;Lcom/google/android/gms/measurement/internal/zzmh;Lcom/google/android/gms/measurement/internal/zzmh;J)V

    .line 23
    invoke-virtual {v0, v2}, Lcom/google/android/gms/measurement/internal/zzil;->zzq(Ljava/lang/Runnable;)V

    return-void

    :catchall_0
    move-exception p1

    .line 14
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    .array-data 1
    .end array-data
.end method
