.class final Lcom/google/android/gms/internal/common/zzai;
.super Lcom/google/android/gms/internal/common/zzad;
.source "com.google.android.gms:play-services-basement@@18.6.0"


# instance fields
.field private final zza:Lcom/google/android/gms/internal/common/zzal;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/common/zzal;I)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/common/zzal;->size()I

    move-result v0

    invoke-direct {p0, v0, p2}, Lcom/google/android/gms/internal/common/zzad;-><init>(II)V

    iput-object p1, p0, Lcom/google/android/gms/internal/common/zzai;->zza:Lcom/google/android/gms/internal/common/zzal;

    return-void

    .array-data 1
    .end array-data
.end method


# virtual methods
.method protected final zza(I)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/common/zzai;->zza:Lcom/google/android/gms/internal/common/zzal;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/common/zzal;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    nop

    .array-data 1
    .end array-data
.end method
