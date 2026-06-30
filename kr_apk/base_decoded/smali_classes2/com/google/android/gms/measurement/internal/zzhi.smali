.class final Lcom/google/android/gms/measurement/internal/zzhi;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement@@22.4.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic zza:Lcom/google/android/gms/measurement/internal/zzhk;

.field private final zzb:Ljava/net/URL;

.field private final zzc:[B

.field private final zzd:Lcom/google/android/gms/measurement/internal/zzhg;

.field private final zze:Ljava/lang/String;

.field private final zzf:Ljava/util/Map;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/measurement/internal/zzhk;Ljava/lang/String;Ljava/net/URL;[BLjava/util/Map;Lcom/google/android/gms/measurement/internal/zzhg;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzhi;->zza:Lcom/google/android/gms/measurement/internal/zzhk;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 2
    invoke-static {p3}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-static {p6}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p3, p0, Lcom/google/android/gms/measurement/internal/zzhi;->zzb:Ljava/net/URL;

    iput-object p4, p0, Lcom/google/android/gms/measurement/internal/zzhi;->zzc:[B

    iput-object p6, p0, Lcom/google/android/gms/measurement/internal/zzhi;->zzd:Lcom/google/android/gms/measurement/internal/zzhg;

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/zzhi;->zze:Ljava/lang/String;

    iput-object p5, p0, Lcom/google/android/gms/measurement/internal/zzhi;->zzf:Ljava/util/Map;

    return-void

    nop

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public final run()V
    .locals 13

    const-string v0, "Error closing HTTP compressed POST connection output stream. appId"

    .line 1
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzhi;->zza:Lcom/google/android/gms/measurement/internal/zzhk;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzjq;->zzaY()V

    const/4 v2, 0x0

    const/4 v3, 0x0

    :try_start_0
    iget-object v4, p0, Lcom/google/android/gms/measurement/internal/zzhi;->zzb:Ljava/net/URL;

    .line 2
    sget v5, Lcom/google/android/gms/internal/measurement/zzcm;->zzb:I

    .line 3
    invoke-virtual {v4}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v4

    .line 4
    instance-of v5, v4, Ljava/net/HttpURLConnection;

    if-eqz v5, :cond_6

    .line 6
    check-cast v4, Ljava/net/HttpURLConnection;

    .line 7
    invoke-virtual {v4, v2}, Ljava/net/HttpURLConnection;->setDefaultUseCaches(Z)V

    iget-object v5, v1, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 8
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzio;->zzf()Lcom/google/android/gms/measurement/internal/zzam;

    const v6, 0xea60

    .line 9
    invoke-virtual {v4, v6}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 10
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzio;->zzf()Lcom/google/android/gms/measurement/internal/zzam;

    const v6, 0xee48

    .line 11
    invoke-virtual {v4, v6}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 12
    invoke-virtual {v4, v2}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    const/4 v6, 0x1

    .line 13
    invoke-virtual {v4, v6}, Ljava/net/HttpURLConnection;->setDoInput(Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_6

    :try_start_1
    iget-object v7, p0, Lcom/google/android/gms/measurement/internal/zzhi;->zzf:Ljava/util/Map;

    if-eqz v7, :cond_0

    .line 14
    invoke-interface {v7}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map$Entry;

    .line 15
    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v4, v9, v8}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object v7, p0, Lcom/google/android/gms/measurement/internal/zzhi;->zzc:[B

    if-eqz v7, :cond_1

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/zzoz;->zzg:Lcom/google/android/gms/measurement/internal/zzpv;

    .line 16
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpv;->zzA()Lcom/google/android/gms/measurement/internal/zzqa;

    move-result-object v1

    .line 17
    invoke-virtual {v1, v7}, Lcom/google/android/gms/measurement/internal/zzqa;->zzB([B)[B

    move-result-object v1

    .line 18
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzio;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object v5

    .line 19
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzhe;->zzj()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object v5

    const-string v7, "Uploading data. size"

    array-length v8, v1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v5, v7, v9}, Lcom/google/android/gms/measurement/internal/zzhc;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    .line 20
    invoke-virtual {v4, v6}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    const-string v5, "Content-Encoding"

    const-string v6, "gzip"

    .line 21
    invoke-virtual {v4, v5, v6}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    invoke-virtual {v4, v8}, Ljava/net/HttpURLConnection;->setFixedLengthStreamingMode(I)V

    .line 23
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->connect()V

    .line 24
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v5
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_5

    .line 25
    :try_start_2
    invoke-virtual {v5, v1}, Ljava/io/OutputStream;->write([B)V

    .line 26
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v1

    move-object v8, v3

    move-object v3, v5

    move v5, v2

    goto/16 :goto_7

    :catch_0
    move-exception v1

    move-object v8, v1

    move v7, v2

    move-object v10, v3

    move-object v3, v5

    goto/16 :goto_9

    .line 27
    :cond_1
    :goto_1
    :try_start_3
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v8
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_5

    .line 28
    :try_start_4
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v11
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    .line 29
    :try_start_5
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 30
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    const/16 v6, 0x400

    :try_start_6
    new-array v6, v6, [B

    .line 31
    :goto_2
    invoke-virtual {v5, v6}, Ljava/io/InputStream;->read([B)I

    move-result v7

    if-lez v7, :cond_2

    .line 32
    invoke-virtual {v1, v6, v2, v7}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_2

    .line 33
    :cond_2
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v10
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    if-eqz v5, :cond_3

    .line 34
    :try_start_7
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    :cond_3
    if-eqz v4, :cond_4

    .line 36
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzhi;->zza:Lcom/google/android/gms/measurement/internal/zzhk;

    iget-object v6, p0, Lcom/google/android/gms/measurement/internal/zzhi;->zze:Ljava/lang/String;

    iget-object v7, p0, Lcom/google/android/gms/measurement/internal/zzhi;->zzd:Lcom/google/android/gms/measurement/internal/zzhg;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 37
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzaX()Lcom/google/android/gms/measurement/internal/zzil;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/measurement/internal/zzhh;

    const/4 v9, 0x0

    const/4 v12, 0x0

    move-object v5, v1

    .line 38
    invoke-direct/range {v5 .. v12}, Lcom/google/android/gms/measurement/internal/zzhh;-><init>(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzhg;ILjava/lang/Throwable;[BLjava/util/Map;Lcom/google/android/gms/measurement/internal/zzhj;)V

    .line 39
    :goto_3
    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzil;->zzq(Ljava/lang/Runnable;)V

    return-void

    :catchall_1
    move-exception v1

    goto :goto_4

    :catchall_2
    move-exception v1

    move-object v5, v3

    :goto_4
    if-eqz v5, :cond_5

    .line 34
    :try_start_8
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    .line 35
    :cond_5
    throw v1
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    :catchall_3
    move-exception v1

    move v5, v8

    move-object v8, v11

    goto :goto_7

    :catch_1
    move-exception v1

    move v7, v8

    move-object v10, v11

    goto :goto_5

    :catchall_4
    move-exception v1

    move v5, v8

    goto :goto_6

    :catch_2
    move-exception v1

    move-object v10, v3

    move v7, v8

    :goto_5
    move-object v8, v1

    goto :goto_9

    :catchall_5
    move-exception v1

    move v5, v2

    :goto_6
    move-object v8, v3

    goto :goto_7

    :catch_3
    move-exception v1

    move-object v8, v1

    move v7, v2

    move-object v10, v3

    goto :goto_9

    .line 4
    :cond_6
    :try_start_9
    new-instance v1, Ljava/io/IOException;

    const-string v4, "Failed to obtain HTTP connection"

    .line 5
    invoke-direct {v1, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_5
    .catchall {:try_start_9 .. :try_end_9} :catchall_6

    :catchall_6
    move-exception v1

    move v5, v2

    move-object v4, v3

    move-object v8, v4

    :goto_7
    if-eqz v3, :cond_7

    .line 40
    :try_start_a
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_4

    goto :goto_8

    :catch_4
    move-exception v2

    .line 43
    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/zzhi;->zza:Lcom/google/android/gms/measurement/internal/zzhk;

    iget-object v3, v3, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 41
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzio;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object v3

    .line 42
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzhe;->zze()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object v3

    iget-object v6, p0, Lcom/google/android/gms/measurement/internal/zzhi;->zze:Ljava/lang/String;

    invoke-static {v6}, Lcom/google/android/gms/measurement/internal/zzhe;->zzn(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    .line 43
    invoke-virtual {v3, v0, v6, v2}, Lcom/google/android/gms/measurement/internal/zzhc;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_7
    :goto_8
    if-eqz v4, :cond_8

    .line 36
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_8
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzhi;->zza:Lcom/google/android/gms/measurement/internal/zzhk;

    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/zzhi;->zze:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/gms/measurement/internal/zzhi;->zzd:Lcom/google/android/gms/measurement/internal/zzhg;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 37
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzaX()Lcom/google/android/gms/measurement/internal/zzil;

    move-result-object v0

    new-instance v10, Lcom/google/android/gms/measurement/internal/zzhh;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    move-object v2, v10

    .line 38
    invoke-direct/range {v2 .. v9}, Lcom/google/android/gms/measurement/internal/zzhh;-><init>(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzhg;ILjava/lang/Throwable;[BLjava/util/Map;Lcom/google/android/gms/measurement/internal/zzhj;)V

    .line 39
    invoke-virtual {v0, v10}, Lcom/google/android/gms/measurement/internal/zzil;->zzq(Ljava/lang/Runnable;)V

    .line 44
    throw v1

    :catch_5
    move-exception v1

    move-object v8, v1

    move v7, v2

    move-object v4, v3

    move-object v10, v4

    :goto_9
    if-eqz v3, :cond_9

    .line 40
    :try_start_b
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_6

    goto :goto_a

    :catch_6
    move-exception v1

    .line 35
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzhi;->zza:Lcom/google/android/gms/measurement/internal/zzhk;

    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 41
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzio;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object v2

    .line 42
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzhe;->zze()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/zzhi;->zze:Ljava/lang/String;

    invoke-static {v3}, Lcom/google/android/gms/measurement/internal/zzhe;->zzn(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 43
    invoke-virtual {v2, v0, v3, v1}, Lcom/google/android/gms/measurement/internal/zzhc;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_9
    :goto_a
    if-eqz v4, :cond_a

    .line 36
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_a
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzhi;->zza:Lcom/google/android/gms/measurement/internal/zzhk;

    iget-object v5, p0, Lcom/google/android/gms/measurement/internal/zzhi;->zze:Ljava/lang/String;

    iget-object v6, p0, Lcom/google/android/gms/measurement/internal/zzhi;->zzd:Lcom/google/android/gms/measurement/internal/zzhg;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 37
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzaX()Lcom/google/android/gms/measurement/internal/zzil;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/measurement/internal/zzhh;

    const/4 v9, 0x0

    const/4 v11, 0x0

    move-object v4, v1

    .line 38
    invoke-direct/range {v4 .. v11}, Lcom/google/android/gms/measurement/internal/zzhh;-><init>(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzhg;ILjava/lang/Throwable;[BLjava/util/Map;Lcom/google/android/gms/measurement/internal/zzhj;)V

    goto/16 :goto_3

    nop

    .array-data 1
    .end array-data
.end method
