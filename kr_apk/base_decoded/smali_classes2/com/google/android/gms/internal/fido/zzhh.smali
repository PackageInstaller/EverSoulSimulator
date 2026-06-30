.class public final Lcom/google/android/gms/internal/fido/zzhh;
.super Lcom/google/android/gms/internal/fido/zzhp;
.source "com.google.android.gms:play-services-fido@@21.0.0"


# instance fields
.field private final zza:Z


# direct methods
.method constructor <init>(Z)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/fido/zzhp;-><init>()V

    iput-boolean p1, p0, Lcom/google/android/gms/internal/fido/zzhh;->zza:Z

    return-void

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public final bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 4

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/fido/zzhp;

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/fido/zzhp;->zza()I

    move-result v0

    const/16 v1, -0x20

    invoke-static {v1}, Lcom/google/android/gms/internal/fido/zzhh;->zzd(B)I

    move-result v2

    if-eq v2, v0, :cond_0

    .line 3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/fido/zzhp;->zza()I

    move-result p1

    invoke-static {v1}, Lcom/google/android/gms/internal/fido/zzhh;->zzd(B)I

    move-result v0

    sub-int/2addr v0, p1

    goto :goto_2

    .line 4
    :cond_0
    check-cast p1, Lcom/google/android/gms/internal/fido/zzhh;

    iget-boolean v0, p0, Lcom/google/android/gms/internal/fido/zzhh;->zza:Z

    const/16 v1, 0x14

    const/16 v2, 0x15

    const/4 v3, 0x1

    if-eq v3, v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v2

    .line 5
    :goto_0
    iget-boolean p1, p1, Lcom/google/android/gms/internal/fido/zzhh;->zza:Z

    if-eq v3, p1, :cond_2

    goto :goto_1

    :cond_2
    move v1, v2

    :goto_1
    sub-int/2addr v0, v1

    :goto_2
    return v0

    .array-data 1
    .end array-data
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    .line 1
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_2

    return v1

    :cond_2
    check-cast p1, Lcom/google/android/gms/internal/fido/zzhh;

    iget-boolean v2, p0, Lcom/google/android/gms/internal/fido/zzhh;->zza:Z

    iget-boolean p1, p1, Lcom/google/android/gms/internal/fido/zzhh;->zza:Z

    if-ne v2, p1, :cond_3

    return v0

    :cond_3
    return v1

    nop

    .array-data 1
    .end array-data
.end method

.method public final hashCode()I
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/16 v1, -0x20

    .line 1
    invoke-static {v1}, Lcom/google/android/gms/internal/fido/zzhh;->zzd(B)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lcom/google/android/gms/internal/fido/zzhh;->zza:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 2
    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0

    .array-data 1
    .end array-data
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/fido/zzhh;->zza:Z

    invoke-static {v0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method protected final zza()I
    .locals 1

    const/16 v0, -0x20

    invoke-static {v0}, Lcom/google/android/gms/internal/fido/zzhh;->zzd(B)I

    move-result v0

    return v0

    nop

    .array-data 1
    .end array-data
.end method
