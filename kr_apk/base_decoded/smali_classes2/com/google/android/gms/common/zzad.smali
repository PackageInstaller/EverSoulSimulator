.class Lcom/google/android/gms/common/zzad;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-basement@@18.6.0"


# static fields
.field private static final zzf:Lcom/google/android/gms/common/zzad;


# instance fields
.field final zza:Z

.field final zzb:Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field final zzc:Ljava/lang/Throwable;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field final zzd:Lcom/google/android/gms/common/zzad;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field final zze:I


# direct methods
.method static constructor <clinit>()V
    .locals 10

    new-instance v9, Lcom/google/android/gms/common/zzad;

    const/4 v1, 0x1

    const/4 v2, 0x3

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-wide/16 v6, -0x1

    const/4 v8, 0x0

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lcom/google/android/gms/common/zzad;-><init>(ZIILjava/lang/String;Ljava/lang/Throwable;JLcom/google/android/gms/common/zzad;)V

    sput-object v9, Lcom/google/android/gms/common/zzad;->zzf:Lcom/google/android/gms/common/zzad;

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method private constructor <init>(ZIILjava/lang/String;Ljava/lang/Throwable;JLcom/google/android/gms/common/zzad;)V
    .locals 0
    .param p4    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p5    # Ljava/lang/Throwable;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p8    # Lcom/google/android/gms/common/zzad;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/google/android/gms/common/zzad;->zza:Z

    iput p2, p0, Lcom/google/android/gms/common/zzad;->zze:I

    iput-object p4, p0, Lcom/google/android/gms/common/zzad;->zzb:Ljava/lang/String;

    iput-object p5, p0, Lcom/google/android/gms/common/zzad;->zzc:Ljava/lang/Throwable;

    iput-object p8, p0, Lcom/google/android/gms/common/zzad;->zzd:Lcom/google/android/gms/common/zzad;

    return-void

    .array-data 1
    .end array-data
.end method

.method synthetic constructor <init>(ZIILjava/lang/String;Ljava/lang/Throwable;JLcom/google/android/gms/common/zzad;Lcom/google/android/gms/common/zzac;)V
    .locals 0

    const/4 p2, 0x0

    const/4 p3, 0x1

    const/4 p4, 0x5

    const/4 p5, 0x0

    const/4 p6, 0x0

    const-wide/16 p7, -0x1

    const/4 p9, 0x0

    move-object p1, p0

    invoke-direct/range {p1 .. p9}, Lcom/google/android/gms/common/zzad;-><init>(ZIILjava/lang/String;Ljava/lang/Throwable;JLcom/google/android/gms/common/zzad;)V

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method static zzb()Lcom/google/android/gms/common/zzad;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    sget-object v0, Lcom/google/android/gms/common/zzad;->zzf:Lcom/google/android/gms/common/zzad;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method static zzc(Ljava/lang/String;)Lcom/google/android/gms/common/zzad;
    .locals 10

    new-instance v9, Lcom/google/android/gms/common/zzad;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x5

    const/4 v5, 0x0

    const-wide/16 v6, -0x1

    const/4 v8, 0x0

    move-object v0, v9

    move-object v4, p0

    invoke-direct/range {v0 .. v8}, Lcom/google/android/gms/common/zzad;-><init>(ZIILjava/lang/String;Ljava/lang/Throwable;JLcom/google/android/gms/common/zzad;)V

    return-object v9

    nop

    .array-data 1
    .end array-data
.end method

.method static zzd(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/common/zzad;
    .locals 10

    new-instance v9, Lcom/google/android/gms/common/zzad;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x5

    const-wide/16 v6, -0x1

    const/4 v8, 0x0

    move-object v0, v9

    move-object v4, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v8}, Lcom/google/android/gms/common/zzad;-><init>(ZIILjava/lang/String;Ljava/lang/Throwable;JLcom/google/android/gms/common/zzad;)V

    return-object v9

    nop

    .array-data 1
    .end array-data
.end method

.method static zzf(IJLcom/google/android/gms/common/zzad;)Lcom/google/android/gms/common/zzad;
    .locals 10
    .param p3    # Lcom/google/android/gms/common/zzad;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    new-instance v9, Lcom/google/android/gms/common/zzad;

    const/4 v1, 0x1

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, v9

    move v2, p0

    move-wide v6, p1

    move-object v8, p3

    invoke-direct/range {v0 .. v8}, Lcom/google/android/gms/common/zzad;-><init>(ZIILjava/lang/String;Ljava/lang/Throwable;JLcom/google/android/gms/common/zzad;)V

    return-object v9

    .array-data 1
    .end array-data
.end method

.method static zzg(IILjava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/common/zzad;
    .locals 10
    .param p3    # Ljava/lang/Throwable;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    new-instance v9, Lcom/google/android/gms/common/zzad;

    const/4 v1, 0x0

    const-wide/16 v6, -0x1

    const/4 v8, 0x0

    move-object v0, v9

    move v2, p0

    move v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v8}, Lcom/google/android/gms/common/zzad;-><init>(ZIILjava/lang/String;Ljava/lang/Throwable;JLcom/google/android/gms/common/zzad;)V

    return-object v9

    nop

    .array-data 1
    .end array-data
.end method


# virtual methods
.method zza()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/common/zzad;->zzb:Ljava/lang/String;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method final zze()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/common/zzad;->zza:Z

    if-nez v0, :cond_1

    const/4 v0, 0x3

    const-string v1, "GoogleCertificatesRslt"

    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/common/zzad;->zzc:Ljava/lang/Throwable;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/common/zzad;->zza()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/common/zzad;->zzc:Ljava/lang/Throwable;

    invoke-static {v1, v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/common/zzad;->zza()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void

    nop

    .array-data 1
    .end array-data
.end method
