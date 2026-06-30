.class public final Lcom/google/android/gms/internal/fido/zzhm;
.super Lcom/google/android/gms/internal/fido/zzhp;
.source "com.google.android.gms:play-services-fido@@21.0.0"


# instance fields
.field private final zza:I

.field private final zzb:Lcom/google/android/gms/internal/fido/zzcj;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/fido/zzcj;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/fido/zzhf;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/fido/zzhp;-><init>()V

    .line 5
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/fido/zzhm;->zzb:Lcom/google/android/gms/internal/fido/zzcj;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/fido/zzcd;->zzc()Lcom/google/android/gms/internal/fido/zzcf;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/fido/zzcf;->zzd()Lcom/google/android/gms/internal/fido/zzdc;

    move-result-object p1

    const/4 v0, 0x0

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 2
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/fido/zzhp;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/fido/zzhp;->zzb()I

    move-result v2

    if-ge v0, v2, :cond_1

    move v0, v2

    .line 3
    :cond_1
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/fido/zzhp;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/fido/zzhp;->zzb()I

    move-result v1

    if-ge v0, v1, :cond_0

    move v0, v1

    goto :goto_0

    :cond_2
    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/fido/zzhm;->zza:I

    const/16 p1, 0x8

    if-gt v0, p1, :cond_3

    return-void

    :cond_3
    new-instance p1, Lcom/google/android/gms/internal/fido/zzhf;

    const-string v0, "Exceeded cutoff limit for max depth of cbor value"

    .line 4
    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/fido/zzhf;-><init>(Ljava/lang/String;)V

    throw p1

    nop

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public final bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 5

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/fido/zzhp;

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/fido/zzhp;->zza()I

    move-result v0

    const/16 v1, -0x60

    invoke-static {v1}, Lcom/google/android/gms/internal/fido/zzhm;->zzd(B)I

    move-result v2

    if-eq v2, v0, :cond_0

    .line 3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/fido/zzhp;->zza()I

    move-result p1

    invoke-static {v1}, Lcom/google/android/gms/internal/fido/zzhm;->zzd(B)I

    move-result v0

    :goto_0
    sub-int/2addr v0, p1

    goto/16 :goto_2

    .line 4
    :cond_0
    check-cast p1, Lcom/google/android/gms/internal/fido/zzhm;

    iget-object v0, p0, Lcom/google/android/gms/internal/fido/zzhm;->zzb:Lcom/google/android/gms/internal/fido/zzcj;

    .line 5
    invoke-virtual {v0}, Lcom/google/android/gms/internal/fido/zzcj;->size()I

    move-result v0

    iget-object v1, p1, Lcom/google/android/gms/internal/fido/zzhm;->zzb:Lcom/google/android/gms/internal/fido/zzcj;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/fido/zzcj;->size()I

    move-result v1

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/fido/zzhm;->zzb:Lcom/google/android/gms/internal/fido/zzcj;

    .line 6
    invoke-virtual {v0}, Lcom/google/android/gms/internal/fido/zzcj;->size()I

    move-result v0

    iget-object p1, p1, Lcom/google/android/gms/internal/fido/zzhm;->zzb:Lcom/google/android/gms/internal/fido/zzcj;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/fido/zzcj;->size()I

    move-result p1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/fido/zzhm;->zzb:Lcom/google/android/gms/internal/fido/zzcj;

    .line 7
    invoke-virtual {v0}, Lcom/google/android/gms/internal/fido/zzcd;->zzc()Lcom/google/android/gms/internal/fido/zzcf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/fido/zzcf;->zzd()Lcom/google/android/gms/internal/fido/zzdc;

    move-result-object v0

    .line 8
    iget-object p1, p1, Lcom/google/android/gms/internal/fido/zzhm;->zzb:Lcom/google/android/gms/internal/fido/zzcj;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/fido/zzcd;->zzc()Lcom/google/android/gms/internal/fido/zzcf;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/fido/zzcf;->zzd()Lcom/google/android/gms/internal/fido/zzdc;

    move-result-object p1

    .line 9
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    goto :goto_2

    .line 10
    :cond_4
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 11
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 12
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/fido/zzhp;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/fido/zzhp;

    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/fido/zzhp;->compareTo(Ljava/lang/Object;)I

    move-result v3

    if-eqz v3, :cond_5

    move v0, v3

    goto :goto_2

    .line 13
    :cond_5
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/fido/zzhp;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/fido/zzhp;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/fido/zzhp;->compareTo(Ljava/lang/Object;)I

    move-result v1

    if-eqz v1, :cond_2

    move v0, v1

    :goto_2
    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 v0, 0x0

    if-nez p1, :cond_1

    return v0

    .line 1
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_2

    return v0

    :cond_2
    check-cast p1, Lcom/google/android/gms/internal/fido/zzhm;

    iget-object v0, p0, Lcom/google/android/gms/internal/fido/zzhm;->zzb:Lcom/google/android/gms/internal/fido/zzcj;

    iget-object p1, p1, Lcom/google/android/gms/internal/fido/zzhm;->zzb:Lcom/google/android/gms/internal/fido/zzcj;

    .line 2
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/fido/zzcd;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .array-data 1
    .end array-data
.end method

.method public final hashCode()I
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/16 v1, -0x60

    .line 1
    invoke-static {v1}, Lcom/google/android/gms/internal/fido/zzhm;->zzd(B)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/android/gms/internal/fido/zzhm;->zzb:Lcom/google/android/gms/internal/fido/zzcj;

    aput-object v2, v0, v1

    .line 2
    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0

    .array-data 1
    .end array-data
.end method

.method public final toString()Ljava/lang/String;
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/fido/zzhm;->zzb:Lcom/google/android/gms/internal/fido/zzcj;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/fido/zzcd;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "{}"

    return-object v0

    :cond_0
    new-instance v0, Ljava/util/LinkedHashMap;

    .line 2
    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iget-object v1, p0, Lcom/google/android/gms/internal/fido/zzhm;->zzb:Lcom/google/android/gms/internal/fido/zzcj;

    .line 3
    invoke-virtual {v1}, Lcom/google/android/gms/internal/fido/zzcd;->zzc()Lcom/google/android/gms/internal/fido/zzcf;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/fido/zzcf;->zzd()Lcom/google/android/gms/internal/fido/zzdc;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 4
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/fido/zzhp;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "\n"

    const-string v5, "\n  "

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    .line 5
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/fido/zzhp;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 6
    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    const-string v1, ",\n  "

    invoke-static {v1}, Lcom/google/android/gms/internal/fido/zzbd;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/fido/zzbd;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "{\n  "

    .line 7
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    .line 9
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const-string v3, " : "

    .line 10
    :try_start_0
    invoke-static {v2, v0, v1, v3}, Lcom/google/android/gms/internal/fido/zzbc;->zza(Ljava/lang/Appendable;Ljava/util/Iterator;Lcom/google/android/gms/internal/fido/zzbd;Ljava/lang/String;)Ljava/lang/Appendable;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v0, "\n}"

    .line 12
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    .line 10
    new-instance v1, Ljava/lang/AssertionError;

    .line 11
    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    nop

    .array-data 1
    .end array-data
.end method

.method protected final zza()I
    .locals 1

    const/16 v0, -0x60

    invoke-static {v0}, Lcom/google/android/gms/internal/fido/zzhm;->zzd(B)I

    move-result v0

    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method protected final zzb()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/fido/zzhm;->zza:I

    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final zzc()Lcom/google/android/gms/internal/fido/zzcj;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/fido/zzhm;->zzb:Lcom/google/android/gms/internal/fido/zzcj;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method
