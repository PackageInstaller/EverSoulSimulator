.class Lcom/google/android/gms/internal/auth/zzec;
.super Lcom/google/android/gms/internal/auth/zzeb;
.source "com.google.android.gms:play-services-auth-base@@18.0.10"


# instance fields
.field protected final zza:[B


# direct methods
.method constructor <init>([B)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/auth/zzeb;-><init>()V

    .line 2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/google/android/gms/internal/auth/zzec;->zza:[B

    return-void

    nop

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 8

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 1
    :cond_0
    instance-of v1, p1, Lcom/google/android/gms/internal/auth/zzef;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/auth/zzec;->zzd()I

    move-result v1

    move-object v3, p1

    check-cast v3, Lcom/google/android/gms/internal/auth/zzef;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/auth/zzef;->zzd()I

    move-result v3

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/auth/zzec;->zzd()I

    move-result v1

    if-nez v1, :cond_3

    return v0

    :cond_3
    instance-of v1, p1, Lcom/google/android/gms/internal/auth/zzec;

    if-eqz v1, :cond_b

    .line 2
    check-cast p1, Lcom/google/android/gms/internal/auth/zzec;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/auth/zzef;->zzj()I

    move-result v1

    .line 3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/auth/zzef;->zzj()I

    move-result v3

    if-eqz v1, :cond_5

    if-eqz v3, :cond_5

    if-ne v1, v3, :cond_4

    goto :goto_0

    :cond_4
    return v2

    :cond_5
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/auth/zzec;->zzd()I

    move-result v1

    .line 4
    invoke-virtual {p1}, Lcom/google/android/gms/internal/auth/zzef;->zzd()I

    move-result v3

    if-gt v1, v3, :cond_a

    .line 6
    invoke-virtual {p1}, Lcom/google/android/gms/internal/auth/zzef;->zzd()I

    move-result v3

    if-gt v1, v3, :cond_9

    .line 7
    instance-of v3, p1, Lcom/google/android/gms/internal/auth/zzec;

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/google/android/gms/internal/auth/zzec;->zza:[B

    .line 8
    iget-object v4, p1, Lcom/google/android/gms/internal/auth/zzec;->zza:[B

    .line 9
    invoke-virtual {p1}, Lcom/google/android/gms/internal/auth/zzec;->zzc()I

    move p1, v2

    move v5, p1

    :goto_1
    if-ge p1, v1, :cond_8

    .line 10
    aget-byte v6, v3, p1

    aget-byte v7, v4, v5

    if-eq v6, v7, :cond_6

    move v0, v2

    goto :goto_2

    :cond_6
    add-int/lit8 p1, p1, 0x1

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 11
    :cond_7
    invoke-virtual {p1, v2, v1}, Lcom/google/android/gms/internal/auth/zzef;->zzf(II)Lcom/google/android/gms/internal/auth/zzef;

    move-result-object p1

    invoke-virtual {p0, v2, v1}, Lcom/google/android/gms/internal/auth/zzec;->zzf(II)Lcom/google/android/gms/internal/auth/zzef;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/auth/zzef;->equals(Ljava/lang/Object;)Z

    move-result v0

    :cond_8
    :goto_2
    return v0

    .line 6
    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 7
    invoke-virtual {p1}, Lcom/google/android/gms/internal/auth/zzef;->zzd()I

    move-result p1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Ran off end of other: 0, "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4
    :cond_a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/auth/zzec;->zzd()I

    move-result v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Length too large: "

    .line 5
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 12
    :cond_b
    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .array-data 1
    .end array-data
.end method

.method public zza(I)B
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/auth/zzec;->zza:[B

    aget-byte p1, v0, p1

    return p1

    nop

    .array-data 1
    .end array-data
.end method

.method zzb(I)B
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/auth/zzec;->zza:[B

    aget-byte p1, v0, p1

    return p1

    nop

    .array-data 1
    .end array-data
.end method

.method protected zzc()I
    .locals 1

    const/4 v0, 0x0

    return v0

    .array-data 1
    .end array-data
.end method

.method public zzd()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/auth/zzec;->zza:[B

    array-length v0, v0

    return v0

    .array-data 1
    .end array-data
.end method

.method protected final zze(III)I
    .locals 1

    .line 1
    iget-object p2, p0, Lcom/google/android/gms/internal/auth/zzec;->zza:[B

    const/4 v0, 0x0

    invoke-static {p1, p2, v0, p3}, Lcom/google/android/gms/internal/auth/zzfa;->zzb(I[BII)I

    move-result p1

    return p1

    .array-data 1
    .end array-data
.end method

.method public final zzf(II)Lcom/google/android/gms/internal/auth/zzef;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/auth/zzec;->zzd()I

    move-result p1

    const/4 v0, 0x0

    invoke-static {v0, p2, p1}, Lcom/google/android/gms/internal/auth/zzec;->zzi(III)I

    move-result p1

    if-nez p1, :cond_0

    sget-object p1, Lcom/google/android/gms/internal/auth/zzef;->zzb:Lcom/google/android/gms/internal/auth/zzef;

    return-object p1

    :cond_0
    new-instance p2, Lcom/google/android/gms/internal/auth/zzdz;

    iget-object v1, p0, Lcom/google/android/gms/internal/auth/zzec;->zza:[B

    .line 2
    invoke-direct {p2, v1, v0, p1}, Lcom/google/android/gms/internal/auth/zzdz;-><init>([BII)V

    return-object p2

    .array-data 1
    .end array-data
.end method

.method protected final zzg(Ljava/nio/charset/Charset;)Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/gms/internal/auth/zzec;->zza:[B

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/auth/zzec;->zzd()I

    move-result v3

    invoke-direct {v0, v1, v2, v3, p1}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final zzh()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/auth/zzec;->zza:[B

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/auth/zzec;->zzd()I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/auth/zzhn;->zzc([BII)Z

    move-result v0

    return v0

    .array-data 1
    .end array-data
.end method
