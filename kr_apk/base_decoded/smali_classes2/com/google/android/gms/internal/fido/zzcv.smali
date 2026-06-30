.class final Lcom/google/android/gms/internal/fido/zzcv;
.super Lcom/google/android/gms/internal/fido/zzck;
.source "com.google.android.gms:play-services-fido@@21.0.0"


# static fields
.field static final zzc:Lcom/google/android/gms/internal/fido/zzcv;


# instance fields
.field final transient zzd:Lcom/google/android/gms/internal/fido/zzcc;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/fido/zzcv;

    sget v1, Lcom/google/android/gms/internal/fido/zzcc;->zzd:I

    .line 2
    sget-object v1, Lcom/google/android/gms/internal/fido/zzct;->zza:Lcom/google/android/gms/internal/fido/zzcc;

    sget-object v2, Lcom/google/android/gms/internal/fido/zzcq;->zza:Lcom/google/android/gms/internal/fido/zzcq;

    .line 1
    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/fido/zzcv;-><init>(Lcom/google/android/gms/internal/fido/zzcc;Ljava/util/Comparator;)V

    sput-object v0, Lcom/google/android/gms/internal/fido/zzcv;->zzc:Lcom/google/android/gms/internal/fido/zzcv;

    return-void

    .array-data 1
    .end array-data
.end method

.method constructor <init>(Lcom/google/android/gms/internal/fido/zzcc;Ljava/util/Comparator;)V
    .locals 0

    .line 1
    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/fido/zzck;-><init>(Ljava/util/Comparator;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/fido/zzcv;->zzd:Lcom/google/android/gms/internal/fido/zzcc;

    return-void

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public final ceiling(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/fido/zzcv;->zzd:Lcom/google/android/gms/internal/fido/zzcc;

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v1}, Lcom/google/android/gms/internal/fido/zzcv;->zzv(Ljava/lang/Object;Z)I

    move-result p1

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/fido/zzcc;->size()I

    move-result v0

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/fido/zzcv;->zzd:Lcom/google/android/gms/internal/fido/zzcc;

    .line 3
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/fido/zzcc;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .array-data 1
    .end array-data
.end method

.method public final contains(Ljava/lang/Object;)Z
    .locals 3
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 1
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/fido/zzcv;->zzd:Lcom/google/android/gms/internal/fido/zzcc;

    iget-object v2, p0, Lcom/google/android/gms/internal/fido/zzcv;->zza:Ljava/util/Comparator;

    invoke-static {v1, p1, v2}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;Ljava/util/Comparator;)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    if-ltz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :catch_0
    :cond_0
    return v0

    .array-data 1
    .end array-data
.end method

.method public final containsAll(Ljava/util/Collection;)Z
    .locals 6

    .line 1
    instance-of v0, p1, Lcom/google/android/gms/internal/fido/zzcp;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/google/android/gms/internal/fido/zzcp;

    invoke-interface {p1}, Lcom/google/android/gms/internal/fido/zzcp;->zza()Ljava/util/Set;

    move-result-object p1

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/fido/zzck;->zza:Ljava/util/Comparator;

    .line 2
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/fido/zzdb;->zza(Ljava/util/Comparator;Ljava/lang/Iterable;)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_1

    goto :goto_1

    .line 3
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/fido/zzcv;->zzd:Lcom/google/android/gms/internal/fido/zzcc;

    const/4 v2, 0x0

    .line 4
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/fido/zzcc;->zzk(I)Lcom/google/android/gms/internal/fido/zzdd;

    move-result-object v0

    .line 5
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_2

    return v2

    .line 7
    :cond_2
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 8
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    :goto_0
    :try_start_0
    iget-object v5, p0, Lcom/google/android/gms/internal/fido/zzck;->zza:Ljava/util/Comparator;

    .line 9
    invoke-interface {v5, v4, v3}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v5

    if-gez v5, :cond_4

    .line 10
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_3

    return v2

    .line 11
    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    goto :goto_0

    :cond_4
    if-nez v5, :cond_6

    .line 12
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_5

    return v1

    .line 13
    :cond_5
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    :cond_6
    return v2

    .line 3
    :cond_7
    :goto_1
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/fido/zzck;->containsAll(Ljava/util/Collection;)Z

    move-result p1

    return p1

    .array-data 1
    .end array-data
.end method

.method public final bridge synthetic descendingIterator()Ljava/util/Iterator;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/fido/zzcv;->zzt()Lcom/google/android/gms/internal/fido/zzdc;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 6
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 1
    :cond_0
    instance-of v1, p1, Ljava/util/Set;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 2
    :cond_1
    check-cast p1, Ljava/util/Set;

    iget-object v1, p0, Lcom/google/android/gms/internal/fido/zzcv;->zzd:Lcom/google/android/gms/internal/fido/zzcc;

    .line 3
    invoke-virtual {v1}, Lcom/google/android/gms/internal/fido/zzcc;->size()I

    move-result v1

    .line 4
    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v3

    if-eq v1, v3, :cond_2

    return v2

    .line 5
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/fido/zzcv;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    return v0

    :cond_3
    iget-object v1, p0, Lcom/google/android/gms/internal/fido/zzcv;->zza:Ljava/util/Comparator;

    .line 6
    invoke-static {v1, p1}, Lcom/google/android/gms/internal/fido/zzdb;->zza(Ljava/util/Comparator;Ljava/lang/Iterable;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 7
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/fido/zzcv;->zzd:Lcom/google/android/gms/internal/fido/zzcc;

    .line 8
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/fido/zzcc;->zzk(I)Lcom/google/android/gms/internal/fido/zzdd;

    move-result-object v1

    .line 9
    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 10
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 11
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_5

    iget-object v5, p0, Lcom/google/android/gms/internal/fido/zzck;->zza:Ljava/util/Comparator;

    .line 12
    invoke-interface {v5, v3, v4}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v3
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v3, :cond_4

    :cond_5
    return v2

    :cond_6
    return v0

    :catch_0
    return v2

    .line 13
    :cond_7
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/fido/zzcv;->containsAll(Ljava/util/Collection;)Z

    move-result p1

    return p1

    .array-data 1
    .end array-data
.end method

.method public final first()Ljava/lang/Object;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/fido/zzcv;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/fido/zzcv;->zzd:Lcom/google/android/gms/internal/fido/zzcc;

    const/4 v1, 0x0

    .line 3
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/fido/zzcc;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 1
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    .line 2
    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .array-data 1
    .end array-data
.end method

.method public final floor(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/fido/zzcv;->zzu(Ljava/lang/Object;Z)I

    move-result p1

    const/4 v0, -0x1

    add-int/2addr p1, v0

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/fido/zzcv;->zzd:Lcom/google/android/gms/internal/fido/zzcc;

    .line 2
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/fido/zzcc;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .array-data 1
    .end array-data
.end method

.method public final higher(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/fido/zzcv;->zzd:Lcom/google/android/gms/internal/fido/zzcc;

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1}, Lcom/google/android/gms/internal/fido/zzcv;->zzv(Ljava/lang/Object;Z)I

    move-result p1

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/fido/zzcc;->size()I

    move-result v0

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/fido/zzcv;->zzd:Lcom/google/android/gms/internal/fido/zzcc;

    .line 3
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/fido/zzcc;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .array-data 1
    .end array-data
.end method

.method public final synthetic iterator()Ljava/util/Iterator;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/fido/zzcv;->zzd:Lcom/google/android/gms/internal/fido/zzcc;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/fido/zzcc;->zzk(I)Lcom/google/android/gms/internal/fido/zzdd;

    move-result-object v0

    return-object v0

    .array-data 1
    .end array-data
.end method

.method public final last()Ljava/lang/Object;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/fido/zzcv;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/fido/zzcv;->zzd:Lcom/google/android/gms/internal/fido/zzcc;

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/fido/zzcc;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .line 4
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/fido/zzcc;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 1
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    .line 2
    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final lower(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/fido/zzcv;->zzu(Ljava/lang/Object;Z)I

    move-result p1

    const/4 v0, -0x1

    add-int/2addr p1, v0

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/fido/zzcv;->zzd:Lcom/google/android/gms/internal/fido/zzcc;

    .line 2
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/fido/zzcc;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .array-data 1
    .end array-data
.end method

.method public final size()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/fido/zzcv;->zzd:Lcom/google/android/gms/internal/fido/zzcc;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/fido/zzcc;->size()I

    move-result v0

    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method final zza([Ljava/lang/Object;I)I
    .locals 1

    .line 1
    iget-object p2, p0, Lcom/google/android/gms/internal/fido/zzcv;->zzd:Lcom/google/android/gms/internal/fido/zzcc;

    const/4 v0, 0x0

    invoke-virtual {p2, p1, v0}, Lcom/google/android/gms/internal/fido/zzby;->zza([Ljava/lang/Object;I)I

    move-result p1

    return p1

    .array-data 1
    .end array-data
.end method

.method final zzb()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/fido/zzcv;->zzd:Lcom/google/android/gms/internal/fido/zzcc;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/fido/zzby;->zzb()I

    move-result v0

    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method final zzc()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/fido/zzcv;->zzd:Lcom/google/android/gms/internal/fido/zzcc;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/fido/zzby;->zzc()I

    move-result v0

    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final zzd()Lcom/google/android/gms/internal/fido/zzdc;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/fido/zzcv;->zzd:Lcom/google/android/gms/internal/fido/zzcc;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/fido/zzcc;->zzk(I)Lcom/google/android/gms/internal/fido/zzdd;

    move-result-object v0

    return-object v0

    .array-data 1
    .end array-data
.end method

.method final zze()[Ljava/lang/Object;
    .locals 1
    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/fido/zzcv;->zzd:Lcom/google/android/gms/internal/fido/zzcc;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/fido/zzby;->zze()[Ljava/lang/Object;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method final zzf()Lcom/google/android/gms/internal/fido/zzck;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/fido/zzcv;->zza:Ljava/util/Comparator;

    invoke-static {v0}, Ljava/util/Collections;->reverseOrder(Ljava/util/Comparator;)Ljava/util/Comparator;

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/fido/zzcv;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    invoke-static {v0}, Lcom/google/android/gms/internal/fido/zzcv;->zzs(Ljava/util/Comparator;)Lcom/google/android/gms/internal/fido/zzcv;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/fido/zzcv;->zzd:Lcom/google/android/gms/internal/fido/zzcc;

    new-instance v2, Lcom/google/android/gms/internal/fido/zzcv;

    .line 4
    invoke-virtual {v1}, Lcom/google/android/gms/internal/fido/zzcc;->zzf()Lcom/google/android/gms/internal/fido/zzcc;

    move-result-object v1

    invoke-direct {v2, v1, v0}, Lcom/google/android/gms/internal/fido/zzcv;-><init>(Lcom/google/android/gms/internal/fido/zzcc;Ljava/util/Comparator;)V

    move-object v0, v2

    :goto_0
    return-object v0

    .array-data 1
    .end array-data
.end method

.method public final zzi()Lcom/google/android/gms/internal/fido/zzcc;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/fido/zzcv;->zzd:Lcom/google/android/gms/internal/fido/zzcc;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method final zzo(Ljava/lang/Object;Z)Lcom/google/android/gms/internal/fido/zzck;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/fido/zzcv;->zzu(Ljava/lang/Object;Z)I

    move-result p1

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/internal/fido/zzcv;->zzw(II)Lcom/google/android/gms/internal/fido/zzcv;

    move-result-object p1

    return-object p1

    .array-data 1
    .end array-data
.end method

.method final zzq(Ljava/lang/Object;ZLjava/lang/Object;Z)Lcom/google/android/gms/internal/fido/zzck;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/fido/zzcv;->zzr(Ljava/lang/Object;Z)Lcom/google/android/gms/internal/fido/zzck;

    move-result-object p1

    invoke-virtual {p1, p3, p4}, Lcom/google/android/gms/internal/fido/zzck;->zzo(Ljava/lang/Object;Z)Lcom/google/android/gms/internal/fido/zzck;

    move-result-object p1

    return-object p1

    nop

    .array-data 1
    .end array-data
.end method

.method final zzr(Ljava/lang/Object;Z)Lcom/google/android/gms/internal/fido/zzck;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/fido/zzcv;->zzd:Lcom/google/android/gms/internal/fido/zzcc;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/fido/zzcv;->zzv(Ljava/lang/Object;Z)I

    move-result p1

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/fido/zzcc;->size()I

    move-result p2

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/fido/zzcv;->zzw(II)Lcom/google/android/gms/internal/fido/zzcv;

    move-result-object p1

    return-object p1

    nop

    .array-data 1
    .end array-data
.end method

.method public final zzt()Lcom/google/android/gms/internal/fido/zzdc;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/fido/zzcv;->zzd:Lcom/google/android/gms/internal/fido/zzcc;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/fido/zzcc;->zzf()Lcom/google/android/gms/internal/fido/zzcc;

    move-result-object v0

    const/4 v1, 0x0

    .line 2
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/fido/zzcc;->zzk(I)Lcom/google/android/gms/internal/fido/zzdd;

    move-result-object v0

    return-object v0

    .array-data 1
    .end array-data
.end method

.method final zzu(Ljava/lang/Object;Z)I
    .locals 2

    .line 2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/fido/zzcv;->zzd:Lcom/google/android/gms/internal/fido/zzcc;

    iget-object v1, p0, Lcom/google/android/gms/internal/fido/zzck;->zza:Ljava/util/Comparator;

    invoke-static {v0, p1, v1}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;Ljava/util/Comparator;)I

    move-result p1

    if-ltz p1, :cond_1

    if-eqz p2, :cond_0

    add-int/lit8 p1, p1, 0x1

    :cond_0
    return p1

    :cond_1
    not-int p1, p1

    return p1

    .array-data 1
    .end array-data
.end method

.method final zzv(Ljava/lang/Object;Z)I
    .locals 2

    .line 2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/fido/zzcv;->zzd:Lcom/google/android/gms/internal/fido/zzcc;

    iget-object v1, p0, Lcom/google/android/gms/internal/fido/zzck;->zza:Ljava/util/Comparator;

    invoke-static {v0, p1, v1}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;Ljava/util/Comparator;)I

    move-result p1

    if-ltz p1, :cond_1

    if-eqz p2, :cond_0

    return p1

    :cond_0
    add-int/lit8 p1, p1, 0x1

    return p1

    :cond_1
    not-int p1, p1

    return p1

    nop

    .array-data 1
    .end array-data
.end method

.method final zzw(II)Lcom/google/android/gms/internal/fido/zzcv;
    .locals 3

    if-nez p1, :cond_1

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/internal/fido/zzcv;->zzd:Lcom/google/android/gms/internal/fido/zzcc;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/fido/zzcc;->size()I

    move-result p1

    if-eq p2, p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    return-object p0

    :cond_1
    :goto_0
    if-ge p1, p2, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/fido/zzcv;->zzd:Lcom/google/android/gms/internal/fido/zzcc;

    iget-object v1, p0, Lcom/google/android/gms/internal/fido/zzcv;->zza:Ljava/util/Comparator;

    new-instance v2, Lcom/google/android/gms/internal/fido/zzcv;

    .line 2
    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/fido/zzcc;->zzg(II)Lcom/google/android/gms/internal/fido/zzcc;

    move-result-object p1

    invoke-direct {v2, p1, v1}, Lcom/google/android/gms/internal/fido/zzcv;-><init>(Lcom/google/android/gms/internal/fido/zzcc;Ljava/util/Comparator;)V

    return-object v2

    :cond_2
    iget-object p1, p0, Lcom/google/android/gms/internal/fido/zzcv;->zza:Ljava/util/Comparator;

    .line 3
    invoke-static {p1}, Lcom/google/android/gms/internal/fido/zzcv;->zzs(Ljava/util/Comparator;)Lcom/google/android/gms/internal/fido/zzcv;

    move-result-object p1

    return-object p1

    .array-data 1
    .end array-data
.end method
