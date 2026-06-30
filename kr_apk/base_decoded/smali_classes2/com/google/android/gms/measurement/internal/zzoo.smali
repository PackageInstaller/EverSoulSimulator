.class final Lcom/google/android/gms/measurement/internal/zzoo;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-impl@@22.4.0"


# instance fields
.field final synthetic zza:Lcom/google/android/gms/measurement/internal/zzop;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/zzop;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzoo;->zza:Lcom/google/android/gms/measurement/internal/zzop;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void

    .array-data 1
    .end array-data
.end method


# virtual methods
.method final zza()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzoo;->zza:Lcom/google/android/gms/measurement/internal/zzop;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzjq;->zzg()V

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzm()Lcom/google/android/gms/measurement/internal/zzht;

    move-result-object v1

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzaU()Lcom/google/android/gms/common/util/Clock;

    move-result-object v2

    .line 4
    invoke-interface {v2}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/measurement/internal/zzht;->zzp(J)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzm()Lcom/google/android/gms/measurement/internal/zzht;

    move-result-object v1

    .line 6
    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/zzht;->zzg:Lcom/google/android/gms/measurement/internal/zzhn;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/zzhn;->zza(Z)V

    .line 7
    new-instance v1, Landroid/app/ActivityManager$RunningAppProcessInfo;

    invoke-direct {v1}, Landroid/app/ActivityManager$RunningAppProcessInfo;-><init>()V

    .line 8
    invoke-static {v1}, Landroid/app/ActivityManager;->getMyMemoryState(Landroid/app/ActivityManager$RunningAppProcessInfo;)V

    .line 9
    iget v1, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    const/16 v2, 0x64

    if-ne v1, v2, :cond_0

    .line 10
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object v1

    .line 11
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzhe;->zzj()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object v1

    const-string v2, "Detected application was in foreground"

    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/zzhc;->zza(Ljava/lang/String;)V

    .line 12
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzaU()Lcom/google/android/gms/common/util/Clock;

    move-result-object v0

    .line 13
    invoke-interface {v0}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzoo;->zzc(JZ)V

    :cond_0
    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method final zzb(JZ)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzoo;->zza:Lcom/google/android/gms/measurement/internal/zzop;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzjq;->zzg()V

    .line 2
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzop;->zzi(Lcom/google/android/gms/measurement/internal/zzop;)V

    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 3
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzio;->zzm()Lcom/google/android/gms/measurement/internal/zzht;

    move-result-object v2

    .line 4
    invoke-virtual {v2, p1, p2}, Lcom/google/android/gms/measurement/internal/zzht;->zzp(J)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 5
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzio;->zzm()Lcom/google/android/gms/measurement/internal/zzht;

    move-result-object v2

    .line 6
    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/zzht;->zzg:Lcom/google/android/gms/measurement/internal/zzhn;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/google/android/gms/measurement/internal/zzhn;->zza(Z)V

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzf;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 7
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzh()Lcom/google/android/gms/measurement/internal/zzgs;

    move-result-object v0

    .line 8
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgs;->zzq()V

    .line 9
    :cond_0
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzio;->zzm()Lcom/google/android/gms/measurement/internal/zzht;

    move-result-object v0

    .line 10
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzht;->zzk:Lcom/google/android/gms/measurement/internal/zzhp;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/measurement/internal/zzhp;->zzb(J)V

    .line 11
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzio;->zzm()Lcom/google/android/gms/measurement/internal/zzht;

    move-result-object v0

    .line 12
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzht;->zzg:Lcom/google/android/gms/measurement/internal/zzhn;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzhn;->zzb()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 13
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/gms/measurement/internal/zzoo;->zzc(JZ)V

    :cond_1
    return-void

    .array-data 1
    .end array-data
.end method

.method final zzc(JZ)V
    .locals 10

    .line 1
    iget-object p3, p0, Lcom/google/android/gms/measurement/internal/zzoo;->zza:Lcom/google/android/gms/measurement/internal/zzop;

    invoke-virtual {p3}, Lcom/google/android/gms/measurement/internal/zzjq;->zzg()V

    iget-object v0, p3, Lcom/google/android/gms/measurement/internal/zzop;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzJ()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_0

    :cond_0
    iget-object v0, p3, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzm()Lcom/google/android/gms/measurement/internal/zzht;

    move-result-object v1

    .line 4
    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/zzht;->zzk:Lcom/google/android/gms/measurement/internal/zzhp;

    invoke-virtual {v1, p1, p2}, Lcom/google/android/gms/measurement/internal/zzhp;->zzb(J)V

    .line 5
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzaU()Lcom/google/android/gms/common/util/Clock;

    move-result-object v1

    .line 6
    invoke-interface {v1}, Lcom/google/android/gms/common/util/Clock;->elapsedRealtime()J

    move-result-wide v1

    .line 7
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object v3

    .line 8
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzhe;->zzj()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "Session started, time"

    invoke-virtual {v3, v2, v1}, Lcom/google/android/gms/measurement/internal/zzhc;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    const-wide/16 v1, 0x3e8

    div-long v1, p1, v1

    iget-object p3, p3, Lcom/google/android/gms/measurement/internal/zzf;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 9
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 10
    invoke-virtual {p3}, Lcom/google/android/gms/measurement/internal/zzio;->zzq()Lcom/google/android/gms/measurement/internal/zzlw;

    move-result-object v3

    const-string v4, "auto"

    const-string v5, "_sid"

    move-object v6, v1

    move-wide v7, p1

    .line 11
    invoke-virtual/range {v3 .. v8}, Lcom/google/android/gms/measurement/internal/zzlw;->zzan(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;J)V

    .line 12
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzm()Lcom/google/android/gms/measurement/internal/zzht;

    move-result-object v2

    .line 13
    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/zzht;->zzl:Lcom/google/android/gms/measurement/internal/zzhp;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/measurement/internal/zzhp;->zzb(J)V

    .line 14
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzm()Lcom/google/android/gms/measurement/internal/zzht;

    move-result-object v2

    .line 15
    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/zzht;->zzg:Lcom/google/android/gms/measurement/internal/zzhn;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/google/android/gms/measurement/internal/zzhn;->zza(Z)V

    new-instance v9, Landroid/os/Bundle;

    .line 16
    invoke-direct {v9}, Landroid/os/Bundle;-><init>()V

    .line 17
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    const-string v3, "_sid"

    invoke-virtual {v9, v3, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 18
    invoke-virtual {p3}, Lcom/google/android/gms/measurement/internal/zzio;->zzq()Lcom/google/android/gms/measurement/internal/zzlw;

    move-result-object v4

    const-string v5, "auto"

    const-string v6, "_s"

    .line 19
    invoke-virtual/range {v4 .. v9}, Lcom/google/android/gms/measurement/internal/zzlw;->zzS(Ljava/lang/String;Ljava/lang/String;JLandroid/os/Bundle;)V

    .line 20
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzm()Lcom/google/android/gms/measurement/internal/zzht;

    move-result-object v0

    .line 21
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzht;->zzq:Lcom/google/android/gms/measurement/internal/zzhr;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzhr;->zza()Ljava/lang/String;

    move-result-object v0

    .line 22
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v7, Landroid/os/Bundle;

    .line 23
    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    const-string v1, "_ffr"

    .line 24
    invoke-virtual {v7, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    invoke-virtual {p3}, Lcom/google/android/gms/measurement/internal/zzio;->zzq()Lcom/google/android/gms/measurement/internal/zzlw;

    move-result-object v2

    const-string v3, "auto"

    const-string v4, "_ssr"

    move-wide v5, p1

    .line 26
    invoke-virtual/range {v2 .. v7}, Lcom/google/android/gms/measurement/internal/zzlw;->zzS(Ljava/lang/String;Ljava/lang/String;JLandroid/os/Bundle;)V

    :cond_1
    :goto_0
    return-void

    nop

    .array-data 1
    .end array-data
.end method
