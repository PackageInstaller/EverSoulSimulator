.class final Lcom/google/android/gms/internal/fido/zzex;
.super Lcom/google/android/gms/internal/fido/zzez;
.source "com.google.android.gms:play-services-fido@@21.0.0"

# interfaces
.implements Ljava/io/Closeable;


# instance fields
.field private final zza:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/fido/zzez;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/fido/zzex;->zza:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/fido/zzew;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/google/android/gms/internal/fido/zzez;-><init>()V

    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/fido/zzex;->zza:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void

    nop

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public final close()V
    .locals 0

    return-void

    nop

    .array-data 1
    .end array-data
.end method
