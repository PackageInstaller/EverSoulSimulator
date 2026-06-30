.class final Lcom/google/android/gms/measurement/internal/zzac;
.super Lcom/google/android/gms/measurement/internal/zzab;
.source "com.google.android.gms:play-services-measurement@@22.4.0"


# instance fields
.field final synthetic zza:Lcom/google/android/gms/measurement/internal/zzae;

.field private final zzh:Lcom/google/android/gms/internal/measurement/zzfr;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/zzae;Ljava/lang/String;ILcom/google/android/gms/internal/measurement/zzfr;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzac;->zza:Lcom/google/android/gms/measurement/internal/zzae;

    invoke-direct {p0, p2, p3}, Lcom/google/android/gms/measurement/internal/zzab;-><init>(Ljava/lang/String;I)V

    iput-object p4, p0, Lcom/google/android/gms/measurement/internal/zzac;->zzh:Lcom/google/android/gms/internal/measurement/zzfr;

    return-void

    .array-data 1
    .end array-data
.end method


# virtual methods
.method final zza()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzac;->zzh:Lcom/google/android/gms/internal/measurement/zzfr;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzfr;->zza()I

    move-result v0

    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method final zzb()Z
    .locals 1

    const/4 v0, 0x0

    return v0

    .array-data 1
    .end array-data
.end method

.method final zzc()Z
    .locals 1

    const/4 v0, 0x1

    return v0

    .array-data 1
    .end array-data
.end method

.method final zzd(Ljava/lang/Long;Ljava/lang/Long;Lcom/google/android/gms/internal/measurement/zzio;Z)Z
    .locals 13

    move-object v0, p0

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzpq;->zzb()Z

    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/zzac;->zza:Lcom/google/android/gms/measurement/internal/zzae;

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 2
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzio;->zzf()Lcom/google/android/gms/measurement/internal/zzam;

    move-result-object v2

    iget-object v3, v0, Lcom/google/android/gms/measurement/internal/zzac;->zzb:Ljava/lang/String;

    .line 3
    sget-object v4, Lcom/google/android/gms/measurement/internal/zzgi;->zzaC:Lcom/google/android/gms/measurement/internal/zzgg;

    .line 4
    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/measurement/internal/zzam;->zzx(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzgg;)Z

    move-result v2

    iget-object v3, v0, Lcom/google/android/gms/measurement/internal/zzac;->zzh:Lcom/google/android/gms/internal/measurement/zzfr;

    .line 5
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzfr;->zzg()Z

    move-result v4

    .line 6
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzfr;->zzh()Z

    move-result v5

    .line 7
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzfr;->zzi()Z

    move-result v6

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-nez v4, :cond_1

    if-nez v5, :cond_1

    if-eqz v6, :cond_0

    goto :goto_0

    :cond_0
    move v4, v7

    goto :goto_1

    :cond_1
    :goto_0
    move v4, v8

    :goto_1
    const/4 v5, 0x0

    if-eqz p4, :cond_3

    if-nez v4, :cond_3

    .line 67
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzio;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object v1

    .line 68
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzhe;->zzj()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object v1

    iget v2, v0, Lcom/google/android/gms/measurement/internal/zzac;->zzc:I

    .line 69
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 70
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzfr;->zzj()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzfr;->zza()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    :cond_2
    const-string v3, "Property filter already evaluated true and it is not associated with an enhanced audience. audience ID, filter ID"

    .line 71
    invoke-virtual {v1, v3, v2, v5}, Lcom/google/android/gms/measurement/internal/zzhc;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return v8

    .line 8
    :cond_3
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzfr;->zzb()Lcom/google/android/gms/internal/measurement/zzfl;

    move-result-object v9

    .line 9
    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/zzfl;->zzg()Z

    move-result v10

    .line 10
    invoke-virtual/range {p3 .. p3}, Lcom/google/android/gms/internal/measurement/zzio;->zzt()Z

    move-result v11

    if-eqz v11, :cond_5

    .line 11
    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/zzfl;->zzi()Z

    move-result v11

    if-nez v11, :cond_4

    .line 12
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzio;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object v9

    .line 13
    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/zzhe;->zzk()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object v9

    .line 14
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzio;->zzj()Lcom/google/android/gms/measurement/internal/zzgx;

    move-result-object v10

    .line 15
    invoke-virtual/range {p3 .. p3}, Lcom/google/android/gms/internal/measurement/zzio;->zzg()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/google/android/gms/measurement/internal/zzgx;->zzf(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v11, "No number filter for long property. property"

    .line 16
    invoke-virtual {v9, v11, v10}, Lcom/google/android/gms/measurement/internal/zzhc;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 17
    :cond_4
    invoke-virtual/range {p3 .. p3}, Lcom/google/android/gms/internal/measurement/zzio;->zzc()J

    move-result-wide v11

    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/zzfl;->zzc()Lcom/google/android/gms/internal/measurement/zzfp;

    move-result-object v5

    invoke-static {v11, v12, v5}, Lcom/google/android/gms/measurement/internal/zzac;->zzh(JLcom/google/android/gms/internal/measurement/zzfp;)Ljava/lang/Boolean;

    move-result-object v5

    .line 18
    invoke-static {v5, v10}, Lcom/google/android/gms/measurement/internal/zzac;->zzj(Ljava/lang/Boolean;Z)Ljava/lang/Boolean;

    move-result-object v5

    goto/16 :goto_2

    .line 19
    :cond_5
    invoke-virtual/range {p3 .. p3}, Lcom/google/android/gms/internal/measurement/zzio;->zzr()Z

    move-result v11

    if-eqz v11, :cond_7

    .line 20
    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/zzfl;->zzi()Z

    move-result v11

    if-nez v11, :cond_6

    .line 21
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzio;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object v9

    .line 22
    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/zzhe;->zzk()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object v9

    .line 23
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzio;->zzj()Lcom/google/android/gms/measurement/internal/zzgx;

    move-result-object v10

    .line 24
    invoke-virtual/range {p3 .. p3}, Lcom/google/android/gms/internal/measurement/zzio;->zzg()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/google/android/gms/measurement/internal/zzgx;->zzf(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v11, "No number filter for double property. property"

    .line 25
    invoke-virtual {v9, v11, v10}, Lcom/google/android/gms/measurement/internal/zzhc;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 26
    :cond_6
    invoke-virtual/range {p3 .. p3}, Lcom/google/android/gms/internal/measurement/zzio;->zza()D

    move-result-wide v11

    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/zzfl;->zzc()Lcom/google/android/gms/internal/measurement/zzfp;

    move-result-object v5

    invoke-static {v11, v12, v5}, Lcom/google/android/gms/measurement/internal/zzac;->zzg(DLcom/google/android/gms/internal/measurement/zzfp;)Ljava/lang/Boolean;

    move-result-object v5

    .line 27
    invoke-static {v5, v10}, Lcom/google/android/gms/measurement/internal/zzac;->zzj(Ljava/lang/Boolean;Z)Ljava/lang/Boolean;

    move-result-object v5

    goto/16 :goto_2

    .line 28
    :cond_7
    invoke-virtual/range {p3 .. p3}, Lcom/google/android/gms/internal/measurement/zzio;->zzv()Z

    move-result v11

    if-eqz v11, :cond_b

    .line 29
    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/zzfl;->zzk()Z

    move-result v11

    if-nez v11, :cond_a

    .line 30
    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/zzfl;->zzi()Z

    move-result v11

    if-nez v11, :cond_8

    .line 31
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzio;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object v9

    .line 32
    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/zzhe;->zzk()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object v9

    .line 33
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzio;->zzj()Lcom/google/android/gms/measurement/internal/zzgx;

    move-result-object v10

    .line 34
    invoke-virtual/range {p3 .. p3}, Lcom/google/android/gms/internal/measurement/zzio;->zzg()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/google/android/gms/measurement/internal/zzgx;->zzf(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v11, "No string or number filter defined. property"

    .line 35
    invoke-virtual {v9, v11, v10}, Lcom/google/android/gms/measurement/internal/zzhc;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_2

    .line 36
    :cond_8
    invoke-virtual/range {p3 .. p3}, Lcom/google/android/gms/internal/measurement/zzio;->zzh()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/google/android/gms/measurement/internal/zzqa;->zzA(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_9

    .line 37
    invoke-virtual/range {p3 .. p3}, Lcom/google/android/gms/internal/measurement/zzio;->zzh()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/zzfl;->zzc()Lcom/google/android/gms/internal/measurement/zzfp;

    move-result-object v9

    invoke-static {v5, v9}, Lcom/google/android/gms/measurement/internal/zzac;->zzi(Ljava/lang/String;Lcom/google/android/gms/internal/measurement/zzfp;)Ljava/lang/Boolean;

    move-result-object v5

    .line 38
    invoke-static {v5, v10}, Lcom/google/android/gms/measurement/internal/zzac;->zzj(Ljava/lang/Boolean;Z)Ljava/lang/Boolean;

    move-result-object v5

    goto :goto_2

    .line 39
    :cond_9
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzio;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object v9

    .line 40
    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/zzhe;->zzk()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object v9

    .line 41
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzio;->zzj()Lcom/google/android/gms/measurement/internal/zzgx;

    move-result-object v10

    .line 42
    invoke-virtual/range {p3 .. p3}, Lcom/google/android/gms/internal/measurement/zzio;->zzg()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/google/android/gms/measurement/internal/zzgx;->zzf(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 43
    invoke-virtual/range {p3 .. p3}, Lcom/google/android/gms/internal/measurement/zzio;->zzh()Ljava/lang/String;

    move-result-object v11

    const-string v12, "Invalid user property value for Numeric number filter. property, value"

    .line 44
    invoke-virtual {v9, v12, v10, v11}, Lcom/google/android/gms/measurement/internal/zzhc;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_2

    .line 45
    :cond_a
    invoke-virtual/range {p3 .. p3}, Lcom/google/android/gms/internal/measurement/zzio;->zzh()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/zzfl;->zzd()Lcom/google/android/gms/internal/measurement/zzfv;

    move-result-object v9

    .line 46
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzio;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object v11

    .line 45
    invoke-static {v5, v9, v11}, Lcom/google/android/gms/measurement/internal/zzac;->zzf(Ljava/lang/String;Lcom/google/android/gms/internal/measurement/zzfv;Lcom/google/android/gms/measurement/internal/zzhe;)Ljava/lang/Boolean;

    move-result-object v5

    .line 47
    invoke-static {v5, v10}, Lcom/google/android/gms/measurement/internal/zzac;->zzj(Ljava/lang/Boolean;Z)Ljava/lang/Boolean;

    move-result-object v5

    goto :goto_2

    .line 48
    :cond_b
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzio;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object v9

    .line 49
    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/zzhe;->zzk()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object v9

    .line 50
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzio;->zzj()Lcom/google/android/gms/measurement/internal/zzgx;

    move-result-object v10

    .line 51
    invoke-virtual/range {p3 .. p3}, Lcom/google/android/gms/internal/measurement/zzio;->zzg()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/google/android/gms/measurement/internal/zzgx;->zzf(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v11, "User property has no value, property"

    .line 52
    invoke-virtual {v9, v11, v10}, Lcom/google/android/gms/measurement/internal/zzhc;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    .line 53
    :goto_2
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzio;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object v1

    .line 54
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzhe;->zzj()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object v1

    if-nez v5, :cond_c

    const-string v9, "null"

    goto :goto_3

    :cond_c
    move-object v9, v5

    :goto_3
    const-string v10, "Property filter result"

    .line 55
    invoke-virtual {v1, v10, v9}, Lcom/google/android/gms/measurement/internal/zzhc;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    if-nez v5, :cond_d

    return v7

    .line 56
    :cond_d
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/measurement/internal/zzac;->zzd:Ljava/lang/Boolean;

    if-eqz v6, :cond_f

    .line 57
    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_e

    goto :goto_4

    :cond_e
    return v8

    :cond_f
    :goto_4
    if-eqz p4, :cond_10

    .line 58
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzfr;->zzg()Z

    move-result v1

    if-eqz v1, :cond_11

    :cond_10
    iput-object v5, v0, Lcom/google/android/gms/measurement/internal/zzac;->zze:Ljava/lang/Boolean;

    .line 59
    :cond_11
    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_15

    if-eqz v4, :cond_15

    invoke-virtual/range {p3 .. p3}, Lcom/google/android/gms/internal/measurement/zzio;->zzu()Z

    move-result v1

    if-eqz v1, :cond_15

    .line 60
    invoke-virtual/range {p3 .. p3}, Lcom/google/android/gms/internal/measurement/zzio;->zzd()J

    move-result-wide v4

    if-eqz p1, :cond_12

    .line 61
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    :cond_12
    if-eqz v2, :cond_13

    .line 62
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzfr;->zzg()Z

    move-result v1

    if-eqz v1, :cond_13

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzfr;->zzh()Z

    move-result v1

    if-nez v1, :cond_13

    if-eqz p2, :cond_13

    .line 63
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 64
    :cond_13
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzfr;->zzh()Z

    move-result v1

    if-eqz v1, :cond_14

    .line 65
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/measurement/internal/zzac;->zzg:Ljava/lang/Long;

    goto :goto_5

    .line 66
    :cond_14
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/measurement/internal/zzac;->zzf:Ljava/lang/Long;

    :cond_15
    :goto_5
    return v8

    .array-data 1
    .end array-data
.end method
