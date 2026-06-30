.class public final Lcom/google/android/gms/internal/fido/zzay;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-fido@@21.0.0"


# instance fields
.field private final zza:Ljava/lang/String;

.field private final zzb:Ljava/util/Set;

.field private final zzc:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 8

    const-string v1, "com.google.android.gms.fido"

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/fido/zzcf;->zzk()Lcom/google/android/gms/internal/fido/zzcf;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/internal/fido/zzay;-><init>(Ljava/lang/String;Ljava/util/Set;ZZZZZ)V

    return-void

    .array-data 1
    .end array-data
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/util/Set;ZZZZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string p1, "com.google.android.gms.fido"

    iput-object p1, p0, Lcom/google/android/gms/internal/fido/zzay;->zza:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/gms/internal/fido/zzay;->zzb:Ljava/util/Set;

    iput-boolean p6, p0, Lcom/google/android/gms/internal/fido/zzay;->zzc:Z

    return-void

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public final zza(Ljava/lang/String;J)Lcom/google/android/gms/internal/fido/zzaq;
    .locals 18

    move-object/from16 v0, p0

    .line 1
    const-class v1, Ljava/lang/Long;

    new-instance v8, Lcom/google/android/gms/internal/fido/zzaq;

    .line 2
    invoke-static/range {p2 .. p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    new-instance v6, Lcom/google/android/gms/internal/fido/zzak;

    sget-object v16, Lcom/google/android/gms/internal/fido/zzav;->zza:Lcom/google/android/gms/internal/fido/zzav;

    .line 3
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/google/android/gms/internal/fido/zzaw;

    invoke-direct {v2, v1}, Lcom/google/android/gms/internal/fido/zzaw;-><init>(Ljava/lang/Class;)V

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    iget-boolean v13, v0, Lcom/google/android/gms/internal/fido/zzay;->zzc:Z

    const/4 v14, 0x0

    iget-object v15, v0, Lcom/google/android/gms/internal/fido/zzay;->zzb:Ljava/util/Set;

    move-object v9, v6

    move-object/from16 v17, v2

    invoke-direct/range {v9 .. v17}, Lcom/google/android/gms/internal/fido/zzak;-><init>(ZZZZZLjava/util/Set;Lcom/google/android/gms/internal/fido/zzax;Lcom/google/android/gms/internal/fido/zzax;)V

    iget-object v3, v0, Lcom/google/android/gms/internal/fido/zzay;->zza:Ljava/lang/String;

    const/4 v7, 0x1

    move-object v2, v8

    move-object/from16 v4, p1

    invoke-direct/range {v2 .. v7}, Lcom/google/android/gms/internal/fido/zzaq;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Lcom/google/android/gms/internal/fido/zzak;Z)V

    return-object v8

    .array-data 1
    .end array-data
.end method

.method public final zzb(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/fido/zzaq;
    .locals 18

    move-object/from16 v0, p0

    .line 1
    const-class v1, Ljava/lang/String;

    new-instance v8, Lcom/google/android/gms/internal/fido/zzaq;

    new-instance v6, Lcom/google/android/gms/internal/fido/zzak;

    sget-object v16, Lcom/google/android/gms/internal/fido/zzat;->zza:Lcom/google/android/gms/internal/fido/zzat;

    .line 2
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/google/android/gms/internal/fido/zzau;

    invoke-direct {v2, v1}, Lcom/google/android/gms/internal/fido/zzau;-><init>(Ljava/lang/Class;)V

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    iget-boolean v13, v0, Lcom/google/android/gms/internal/fido/zzay;->zzc:Z

    const/4 v14, 0x0

    iget-object v15, v0, Lcom/google/android/gms/internal/fido/zzay;->zzb:Ljava/util/Set;

    move-object v9, v6

    move-object/from16 v17, v2

    invoke-direct/range {v9 .. v17}, Lcom/google/android/gms/internal/fido/zzak;-><init>(ZZZZZLjava/util/Set;Lcom/google/android/gms/internal/fido/zzax;Lcom/google/android/gms/internal/fido/zzax;)V

    iget-object v3, v0, Lcom/google/android/gms/internal/fido/zzay;->zza:Ljava/lang/String;

    const/4 v7, 0x1

    move-object v2, v8

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    invoke-direct/range {v2 .. v7}, Lcom/google/android/gms/internal/fido/zzaq;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Lcom/google/android/gms/internal/fido/zzak;Z)V

    return-object v8

    .array-data 1
    .end array-data
.end method

.method public final zzc(Ljava/lang/String;Z)Lcom/google/android/gms/internal/fido/zzaq;
    .locals 18

    move-object/from16 v0, p0

    .line 1
    const-class v1, Ljava/lang/Boolean;

    new-instance v8, Lcom/google/android/gms/internal/fido/zzaq;

    .line 2
    invoke-static/range {p2 .. p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    new-instance v6, Lcom/google/android/gms/internal/fido/zzak;

    sget-object v16, Lcom/google/android/gms/internal/fido/zzar;->zza:Lcom/google/android/gms/internal/fido/zzar;

    .line 3
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/google/android/gms/internal/fido/zzas;

    invoke-direct {v2, v1}, Lcom/google/android/gms/internal/fido/zzas;-><init>(Ljava/lang/Class;)V

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    iget-boolean v13, v0, Lcom/google/android/gms/internal/fido/zzay;->zzc:Z

    const/4 v14, 0x0

    iget-object v15, v0, Lcom/google/android/gms/internal/fido/zzay;->zzb:Ljava/util/Set;

    move-object v9, v6

    move-object/from16 v17, v2

    invoke-direct/range {v9 .. v17}, Lcom/google/android/gms/internal/fido/zzak;-><init>(ZZZZZLjava/util/Set;Lcom/google/android/gms/internal/fido/zzax;Lcom/google/android/gms/internal/fido/zzax;)V

    iget-object v3, v0, Lcom/google/android/gms/internal/fido/zzay;->zza:Ljava/lang/String;

    const/4 v7, 0x1

    move-object v2, v8

    move-object/from16 v4, p1

    invoke-direct/range {v2 .. v7}, Lcom/google/android/gms/internal/fido/zzaq;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Lcom/google/android/gms/internal/fido/zzak;Z)V

    return-object v8

    .array-data 1
    .end array-data
.end method

.method public final zzd()Lcom/google/android/gms/internal/fido/zzay;
    .locals 9

    new-instance v8, Lcom/google/android/gms/internal/fido/zzay;

    iget-object v1, p0, Lcom/google/android/gms/internal/fido/zzay;->zza:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/internal/fido/zzay;->zzb:Ljava/util/Set;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/internal/fido/zzay;-><init>(Ljava/lang/String;Ljava/util/Set;ZZZZZ)V

    return-object v8

    .array-data 1
    .end array-data
.end method

.method public final zze(Ljava/util/Set;)Lcom/google/android/gms/internal/fido/zzay;
    .locals 9

    iget-boolean v6, p0, Lcom/google/android/gms/internal/fido/zzay;->zzc:Z

    new-instance v8, Lcom/google/android/gms/internal/fido/zzay;

    iget-object v1, p0, Lcom/google/android/gms/internal/fido/zzay;->zza:Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object v0, v8

    move-object v2, p1

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/internal/fido/zzay;-><init>(Ljava/lang/String;Ljava/util/Set;ZZZZZ)V

    return-object v8

    .array-data 1
    .end array-data
.end method
