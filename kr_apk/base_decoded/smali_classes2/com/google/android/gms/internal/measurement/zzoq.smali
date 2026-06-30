.class public final enum Lcom/google/android/gms/internal/measurement/zzoq;
.super Ljava/lang/Enum;
.source "com.google.android.gms:play-services-measurement-base@@22.4.0"


# static fields
.field public static final enum zza:Lcom/google/android/gms/internal/measurement/zzoq;

.field public static final enum zzb:Lcom/google/android/gms/internal/measurement/zzoq;

.field public static final enum zzc:Lcom/google/android/gms/internal/measurement/zzoq;

.field public static final enum zzd:Lcom/google/android/gms/internal/measurement/zzoq;

.field public static final enum zze:Lcom/google/android/gms/internal/measurement/zzoq;

.field public static final enum zzf:Lcom/google/android/gms/internal/measurement/zzoq;

.field public static final enum zzg:Lcom/google/android/gms/internal/measurement/zzoq;

.field public static final enum zzh:Lcom/google/android/gms/internal/measurement/zzoq;

.field public static final enum zzi:Lcom/google/android/gms/internal/measurement/zzoq;

.field private static final synthetic zzj:[Lcom/google/android/gms/internal/measurement/zzoq;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzoq;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "INT"

    invoke-direct {v0, v3, v1, v2}, Lcom/google/android/gms/internal/measurement/zzoq;-><init>(Ljava/lang/String;ILjava/lang/Object;)V

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzoq;->zza:Lcom/google/android/gms/internal/measurement/zzoq;

    new-instance v2, Lcom/google/android/gms/internal/measurement/zzoq;

    const-wide/16 v3, 0x0

    .line 2
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-string v4, "LONG"

    const/4 v5, 0x1

    invoke-direct {v2, v4, v5, v3}, Lcom/google/android/gms/internal/measurement/zzoq;-><init>(Ljava/lang/String;ILjava/lang/Object;)V

    sput-object v2, Lcom/google/android/gms/internal/measurement/zzoq;->zzb:Lcom/google/android/gms/internal/measurement/zzoq;

    new-instance v3, Lcom/google/android/gms/internal/measurement/zzoq;

    const/4 v4, 0x0

    .line 3
    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    const-string v6, "FLOAT"

    const/4 v7, 0x2

    invoke-direct {v3, v6, v7, v4}, Lcom/google/android/gms/internal/measurement/zzoq;-><init>(Ljava/lang/String;ILjava/lang/Object;)V

    sput-object v3, Lcom/google/android/gms/internal/measurement/zzoq;->zzc:Lcom/google/android/gms/internal/measurement/zzoq;

    new-instance v4, Lcom/google/android/gms/internal/measurement/zzoq;

    const-wide/16 v8, 0x0

    .line 4
    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    const-string v8, "DOUBLE"

    const/4 v9, 0x3

    invoke-direct {v4, v8, v9, v6}, Lcom/google/android/gms/internal/measurement/zzoq;-><init>(Ljava/lang/String;ILjava/lang/Object;)V

    sput-object v4, Lcom/google/android/gms/internal/measurement/zzoq;->zzd:Lcom/google/android/gms/internal/measurement/zzoq;

    new-instance v6, Lcom/google/android/gms/internal/measurement/zzoq;

    .line 5
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    const-string v10, "BOOLEAN"

    const/4 v11, 0x4

    invoke-direct {v6, v10, v11, v8}, Lcom/google/android/gms/internal/measurement/zzoq;-><init>(Ljava/lang/String;ILjava/lang/Object;)V

    sput-object v6, Lcom/google/android/gms/internal/measurement/zzoq;->zze:Lcom/google/android/gms/internal/measurement/zzoq;

    new-instance v8, Lcom/google/android/gms/internal/measurement/zzoq;

    const-string v10, "STRING"

    const/4 v12, 0x5

    const-string v13, ""

    .line 6
    invoke-direct {v8, v10, v12, v13}, Lcom/google/android/gms/internal/measurement/zzoq;-><init>(Ljava/lang/String;ILjava/lang/Object;)V

    sput-object v8, Lcom/google/android/gms/internal/measurement/zzoq;->zzf:Lcom/google/android/gms/internal/measurement/zzoq;

    new-instance v10, Lcom/google/android/gms/internal/measurement/zzoq;

    .line 7
    sget-object v13, Lcom/google/android/gms/internal/measurement/zzld;->zzb:Lcom/google/android/gms/internal/measurement/zzld;

    const-string v14, "BYTE_STRING"

    const/4 v15, 0x6

    invoke-direct {v10, v14, v15, v13}, Lcom/google/android/gms/internal/measurement/zzoq;-><init>(Ljava/lang/String;ILjava/lang/Object;)V

    sput-object v10, Lcom/google/android/gms/internal/measurement/zzoq;->zzg:Lcom/google/android/gms/internal/measurement/zzoq;

    new-instance v13, Lcom/google/android/gms/internal/measurement/zzoq;

    const-string v14, "ENUM"

    const/4 v15, 0x7

    const/4 v12, 0x0

    .line 8
    invoke-direct {v13, v14, v15, v12}, Lcom/google/android/gms/internal/measurement/zzoq;-><init>(Ljava/lang/String;ILjava/lang/Object;)V

    sput-object v13, Lcom/google/android/gms/internal/measurement/zzoq;->zzh:Lcom/google/android/gms/internal/measurement/zzoq;

    new-instance v14, Lcom/google/android/gms/internal/measurement/zzoq;

    const-string v15, "MESSAGE"

    const/16 v11, 0x8

    .line 9
    invoke-direct {v14, v15, v11, v12}, Lcom/google/android/gms/internal/measurement/zzoq;-><init>(Ljava/lang/String;ILjava/lang/Object;)V

    sput-object v14, Lcom/google/android/gms/internal/measurement/zzoq;->zzi:Lcom/google/android/gms/internal/measurement/zzoq;

    const/16 v12, 0x9

    new-array v12, v12, [Lcom/google/android/gms/internal/measurement/zzoq;

    aput-object v0, v12, v1

    aput-object v2, v12, v5

    aput-object v3, v12, v7

    aput-object v4, v12, v9

    const/4 v0, 0x4

    aput-object v6, v12, v0

    const/4 v0, 0x5

    aput-object v8, v12, v0

    const/4 v0, 0x6

    aput-object v10, v12, v0

    const/4 v0, 0x7

    aput-object v13, v12, v0

    aput-object v14, v12, v11

    sput-object v12, Lcom/google/android/gms/internal/measurement/zzoq;->zzj:[Lcom/google/android/gms/internal/measurement/zzoq;

    return-void

    .array-data 1
    .end array-data
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/Object;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void

    .array-data 1
    .end array-data
.end method

.method public static values()[Lcom/google/android/gms/internal/measurement/zzoq;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzoq;->zzj:[Lcom/google/android/gms/internal/measurement/zzoq;

    invoke-virtual {v0}, [Lcom/google/android/gms/internal/measurement/zzoq;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/internal/measurement/zzoq;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method
