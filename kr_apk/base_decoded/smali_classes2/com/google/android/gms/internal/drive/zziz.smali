.class final Lcom/google/android/gms/internal/drive/zziz;
.super Ljava/lang/Object;


# instance fields
.field public zznk:I

.field public zznl:J

.field public zznm:Ljava/lang/Object;

.field public final zznn:Lcom/google/android/gms/internal/drive/zzjx;


# direct methods
.method constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/drive/zzjx;->zzci()Lcom/google/android/gms/internal/drive/zzjx;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/drive/zziz;->zznn:Lcom/google/android/gms/internal/drive/zzjx;

    return-void

    .array-data 1
    .end array-data
.end method

.method constructor <init>(Lcom/google/android/gms/internal/drive/zzjx;)V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    iput-object p1, p0, Lcom/google/android/gms/internal/drive/zziz;->zznn:Lcom/google/android/gms/internal/drive/zzjx;

    return-void

    nop

    .array-data 1
    .end array-data
.end method
