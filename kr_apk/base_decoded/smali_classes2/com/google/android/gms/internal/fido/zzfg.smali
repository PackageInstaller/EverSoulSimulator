.class final Lcom/google/android/gms/internal/fido/zzfg;
.super Ljava/util/AbstractMap;
.source "com.google.android.gms:play-services-fido@@21.0.0"


# static fields
.field private static final zza:Ljava/util/Comparator;


# instance fields
.field private final zzb:[Ljava/lang/Object;

.field private final zzc:[I

.field private final zzd:Ljava/util/Set;

.field private zze:Ljava/lang/Integer;

.field private zzf:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/fido/zzfd;

    invoke-direct {v0}, Lcom/google/android/gms/internal/fido/zzfd;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/fido/zzfg;->zza:Ljava/util/Comparator;

    return-void

    .array-data 1
    .end array-data
.end method

.method constructor <init>(Ljava/util/List;)V
    .locals 5

    .line 1
    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/fido/zzff;

    const/4 v1, -0x1

    .line 2
    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/fido/zzff;-><init>(Lcom/google/android/gms/internal/fido/zzfg;I)V

    iput-object v0, p0, Lcom/google/android/gms/internal/fido/zzfg;->zzd:Ljava/util/Set;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/fido/zzfg;->zze:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/google/android/gms/internal/fido/zzfg;->zzf:Ljava/lang/String;

    .line 3
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_2

    .line 4
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x1

    new-array v3, v3, [I

    .line 5
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_1

    const/4 p1, 0x0

    aput p1, v3, p1

    const/16 v0, 0x10

    if-le v1, v0, :cond_0

    mul-int/lit8 v1, v1, 0x9

    if-lez v1, :cond_0

    .line 7
    invoke-static {v2, p1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    :cond_0
    iput-object v2, p0, Lcom/google/android/gms/internal/fido/zzfg;->zzb:[Ljava/lang/Object;

    iput-object v3, p0, Lcom/google/android/gms/internal/fido/zzfg;->zzc:[I

    return-void

    .line 5
    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/fido/zzfc;

    .line 6
    invoke-static {p1}, Lcom/google/android/gms/internal/fido/zzfc;->zza(Lcom/google/android/gms/internal/fido/zzfc;)Ljava/lang/String;

    throw v0

    .line 3
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/fido/zzfc;

    .line 8
    invoke-static {p1}, Lcom/google/android/gms/internal/fido/zzfc;->zza(Lcom/google/android/gms/internal/fido/zzfc;)Ljava/lang/String;

    throw v0

    nop

    .array-data 1
    .end array-data
.end method

.method static bridge synthetic zza()Ljava/util/Comparator;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/fido/zzfg;->zza:Ljava/util/Comparator;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method static bridge synthetic zzb(Lcom/google/android/gms/internal/fido/zzfg;)[I
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/fido/zzfg;->zzc:[I

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method static bridge synthetic zzc(Lcom/google/android/gms/internal/fido/zzfg;)[Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/fido/zzfg;->zzb:[Ljava/lang/Object;

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public final entrySet()Ljava/util/Set;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/fido/zzfg;->zzd:Ljava/util/Set;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final hashCode()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/fido/zzfg;->zze:Ljava/lang/Integer;

    if-nez v0, :cond_0

    invoke-super {p0}, Ljava/util/AbstractMap;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/fido/zzfg;->zze:Ljava/lang/Integer;

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/fido/zzfg;->zze:Ljava/lang/Integer;

    .line 2
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/fido/zzfg;->zzf:Ljava/lang/String;

    if-nez v0, :cond_0

    invoke-super {p0}, Ljava/util/AbstractMap;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/fido/zzfg;->zzf:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/fido/zzfg;->zzf:Ljava/lang/String;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method
