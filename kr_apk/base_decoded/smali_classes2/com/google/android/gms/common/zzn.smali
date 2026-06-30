.class final Lcom/google/android/gms/common/zzn;
.super Lcom/google/android/gms/common/zzm;
.source "com.google.android.gms:play-services-basement@@18.6.0"


# instance fields
.field private final zza:[B


# direct methods
.method constructor <init>([B)V
    .locals 2

    const/4 v0, 0x0

    const/16 v1, 0x19

    .line 1
    invoke-static {p1, v0, v1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/common/zzm;-><init>([B)V

    iput-object p1, p0, Lcom/google/android/gms/common/zzn;->zza:[B

    return-void

    nop

    .array-data 1
    .end array-data
.end method


# virtual methods
.method final zzf()[B
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/zzn;->zza:[B

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method
