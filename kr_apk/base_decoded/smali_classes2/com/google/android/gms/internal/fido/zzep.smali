.class final Lcom/google/android/gms/internal/fido/zzep;
.super Lcom/google/android/gms/internal/fido/zzev;
.source "com.google.android.gms:play-services-fido@@21.0.0"


# static fields
.field private static final zza:Lcom/google/android/gms/internal/fido/zzep;


# instance fields
.field private final zzb:Ljava/util/concurrent/atomic/AtomicReference;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/fido/zzep;

    invoke-static {}, Lcom/google/android/gms/internal/fido/zzev;->zze()Lcom/google/android/gms/internal/fido/zzev;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/fido/zzep;-><init>(Lcom/google/android/gms/internal/fido/zzev;)V

    sput-object v0, Lcom/google/android/gms/internal/fido/zzep;->zza:Lcom/google/android/gms/internal/fido/zzep;

    return-void

    .array-data 1
    .end array-data
.end method

.method constructor <init>(Lcom/google/android/gms/internal/fido/zzev;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/fido/zzev;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/fido/zzep;->zzb:Ljava/util/concurrent/atomic/AtomicReference;

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public static final zzb()Lcom/google/android/gms/internal/fido/zzep;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/fido/zzep;->zza:Lcom/google/android/gms/internal/fido/zzep;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public final zza()Lcom/google/android/gms/internal/fido/zzdr;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/fido/zzep;->zzb:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/fido/zzev;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/fido/zzev;->zza()Lcom/google/android/gms/internal/fido/zzdr;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final zzc()Lcom/google/android/gms/internal/fido/zzfi;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/fido/zzep;->zzb:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/fido/zzev;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/fido/zzev;->zzc()Lcom/google/android/gms/internal/fido/zzfi;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final zzd(Ljava/lang/String;Ljava/util/logging/Level;Z)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/fido/zzep;->zzb:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/fido/zzev;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/internal/fido/zzev;->zzd(Ljava/lang/String;Ljava/util/logging/Level;Z)Z

    const/4 p1, 0x0

    return p1

    nop

    .array-data 1
    .end array-data
.end method
