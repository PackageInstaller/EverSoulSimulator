.class final Lcom/google/android/gms/internal/fido/zzcw;
.super Lcom/google/android/gms/internal/fido/zzcs;
.source "com.google.android.gms:play-services-fido@@21.0.0"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field static final zza:Lcom/google/android/gms/internal/fido/zzcw;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/fido/zzcw;

    invoke-direct {v0}, Lcom/google/android/gms/internal/fido/zzcw;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/fido/zzcw;->zza:Lcom/google/android/gms/internal/fido/zzcw;

    return-void

    .array-data 1
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/fido/zzcs;-><init>()V

    return-void

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public final bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Comparable;

    check-cast p2, Ljava/lang/Comparable;

    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-ne p1, p2, :cond_0

    const/4 p1, 0x0

    return p1

    .line 2
    :cond_0
    invoke-interface {p2, p1}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result p1

    return p1

    .array-data 1
    .end array-data
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    const-string v0, "Ordering.natural().reverse()"

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final zza()Lcom/google/android/gms/internal/fido/zzcs;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/fido/zzcq;->zza:Lcom/google/android/gms/internal/fido/zzcq;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method
