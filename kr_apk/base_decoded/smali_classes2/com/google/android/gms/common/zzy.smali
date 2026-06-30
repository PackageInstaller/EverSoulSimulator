.class final Lcom/google/android/gms/common/zzy;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-basement@@18.6.0"


# instance fields
.field private zza:Ljava/lang/String;

.field private zzb:Ljava/lang/Boolean;

.field private zzc:Ljava/lang/Boolean;


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/common/zzy;->zza:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/common/zzy;->zzb:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/google/android/gms/common/zzy;->zzc:Ljava/lang/Boolean;

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/common/zzz;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/common/zzy;->zza:Ljava/lang/String;

    iput-object p1, p0, Lcom/google/android/gms/common/zzy;->zzb:Ljava/lang/Boolean;

    iput-object p1, p0, Lcom/google/android/gms/common/zzy;->zzc:Ljava/lang/Boolean;

    return-void

    nop

    .array-data 1
    .end array-data
.end method


# virtual methods
.method final zza(Z)Lcom/google/android/gms/common/zzy;
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/common/zzy;->zzb:Ljava/lang/Boolean;

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method final zzb(Z)Lcom/google/android/gms/common/zzy;
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/common/zzy;->zzc:Ljava/lang/Boolean;

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method final zzc(Ljava/lang/String;)Lcom/google/android/gms/common/zzy;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/common/zzy;->zza:Ljava/lang/String;

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method final zzd()Lcom/google/android/gms/common/zzaa;
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/common/zzy;->zzb:Ljava/lang/Boolean;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/common/zzy;->zzc:Ljava/lang/Boolean;

    if-eqz v1, :cond_0

    .line 2
    new-instance v1, Lcom/google/android/gms/common/zzaa;

    iget-object v3, p0, Lcom/google/android/gms/common/zzy;->zza:Ljava/lang/String;

    .line 3
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    iget-object v0, p0, Lcom/google/android/gms/common/zzy;->zzc:Ljava/lang/Boolean;

    .line 4
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v2, v1

    invoke-direct/range {v2 .. v9}, Lcom/google/android/gms/common/zzaa;-><init>(Ljava/lang/String;ZZZZLcom/google/android/gms/common/zzr;Lcom/google/android/gms/common/zzz;)V

    return-object v1

    .line 1
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "isGoogleOrPlatformOnly must be set"

    .line 2
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "allowTestKeys must be set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    .array-data 1
    .end array-data
.end method
