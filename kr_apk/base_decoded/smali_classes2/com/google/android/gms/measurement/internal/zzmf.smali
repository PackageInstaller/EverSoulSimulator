.class public final enum Lcom/google/android/gms/measurement/internal/zzmf;
.super Ljava/lang/Enum;
.source "com.google.android.gms:play-services-measurement-impl@@22.4.0"


# static fields
.field public static final enum zza:Lcom/google/android/gms/measurement/internal/zzmf;

.field public static final enum zzb:Lcom/google/android/gms/measurement/internal/zzmf;

.field public static final enum zzc:Lcom/google/android/gms/measurement/internal/zzmf;

.field public static final enum zzd:Lcom/google/android/gms/measurement/internal/zzmf;

.field public static final enum zze:Lcom/google/android/gms/measurement/internal/zzmf;

.field public static final enum zzf:Lcom/google/android/gms/measurement/internal/zzmf;

.field private static final synthetic zzg:[Lcom/google/android/gms/measurement/internal/zzmf;


# instance fields
.field private final zzh:I


# direct methods
.method static constructor <clinit>()V
    .locals 14

    .line 1
    new-instance v0, Lcom/google/android/gms/measurement/internal/zzmf;

    const-string v1, "GOOGLE_ANALYTICS"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/google/android/gms/measurement/internal/zzmf;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/measurement/internal/zzmf;->zza:Lcom/google/android/gms/measurement/internal/zzmf;

    new-instance v1, Lcom/google/android/gms/measurement/internal/zzmf;

    const-string v3, "GOOGLE_SIGNAL"

    const/4 v4, 0x1

    .line 2
    invoke-direct {v1, v3, v4, v4}, Lcom/google/android/gms/measurement/internal/zzmf;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/google/android/gms/measurement/internal/zzmf;->zzb:Lcom/google/android/gms/measurement/internal/zzmf;

    new-instance v3, Lcom/google/android/gms/measurement/internal/zzmf;

    const-string v5, "SGTM"

    const/4 v6, 0x2

    .line 3
    invoke-direct {v3, v5, v6, v6}, Lcom/google/android/gms/measurement/internal/zzmf;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/google/android/gms/measurement/internal/zzmf;->zzc:Lcom/google/android/gms/measurement/internal/zzmf;

    new-instance v5, Lcom/google/android/gms/measurement/internal/zzmf;

    const-string v7, "SGTM_CLIENT"

    const/4 v8, 0x3

    .line 4
    invoke-direct {v5, v7, v8, v8}, Lcom/google/android/gms/measurement/internal/zzmf;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/google/android/gms/measurement/internal/zzmf;->zzd:Lcom/google/android/gms/measurement/internal/zzmf;

    new-instance v7, Lcom/google/android/gms/measurement/internal/zzmf;

    const-string v9, "GOOGLE_SIGNAL_PENDING"

    const/4 v10, 0x4

    .line 5
    invoke-direct {v7, v9, v10, v10}, Lcom/google/android/gms/measurement/internal/zzmf;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/google/android/gms/measurement/internal/zzmf;->zze:Lcom/google/android/gms/measurement/internal/zzmf;

    new-instance v9, Lcom/google/android/gms/measurement/internal/zzmf;

    const/16 v11, 0x63

    const-string v12, "UNKNOWN"

    const/4 v13, 0x5

    .line 6
    invoke-direct {v9, v12, v13, v11}, Lcom/google/android/gms/measurement/internal/zzmf;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lcom/google/android/gms/measurement/internal/zzmf;->zzf:Lcom/google/android/gms/measurement/internal/zzmf;

    const/4 v11, 0x6

    new-array v11, v11, [Lcom/google/android/gms/measurement/internal/zzmf;

    aput-object v0, v11, v2

    aput-object v1, v11, v4

    aput-object v3, v11, v6

    aput-object v5, v11, v8

    aput-object v7, v11, v10

    aput-object v9, v11, v13

    sput-object v11, Lcom/google/android/gms/measurement/internal/zzmf;->zzg:[Lcom/google/android/gms/measurement/internal/zzmf;

    return-void

    .array-data 1
    .end array-data
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/google/android/gms/measurement/internal/zzmf;->zzh:I

    return-void

    .array-data 1
    .end array-data
.end method

.method public static values()[Lcom/google/android/gms/measurement/internal/zzmf;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/measurement/internal/zzmf;->zzg:[Lcom/google/android/gms/measurement/internal/zzmf;

    invoke-virtual {v0}, [Lcom/google/android/gms/measurement/internal/zzmf;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/measurement/internal/zzmf;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public static zzb(I)Lcom/google/android/gms/measurement/internal/zzmf;
    .locals 5

    .line 1
    invoke-static {}, Lcom/google/android/gms/measurement/internal/zzmf;->values()[Lcom/google/android/gms/measurement/internal/zzmf;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    iget v4, v3, Lcom/google/android/gms/measurement/internal/zzmf;->zzh:I

    if-ne v4, p0, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    sget-object p0, Lcom/google/android/gms/measurement/internal/zzmf;->zzf:Lcom/google/android/gms/measurement/internal/zzmf;

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public final zza()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/measurement/internal/zzmf;->zzh:I

    return v0

    nop

    .array-data 1
    .end array-data
.end method
