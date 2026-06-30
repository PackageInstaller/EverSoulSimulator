.class public final Lcom/google/android/gms/internal/play_billing/zzlv;
.super Lcom/google/android/gms/internal/play_billing/zzhg;
.source "com.android.billingclient:billing@@7.1.1"

# interfaces
.implements Lcom/google/android/gms/internal/play_billing/zzin;


# direct methods
.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    throw v0

    .array-data 1
    .end array-data
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/play_billing/zzlw;)V
    .locals 0

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzlx;->zzB()Lcom/google/android/gms/internal/play_billing/zzlx;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/play_billing/zzhg;-><init>(Lcom/google/android/gms/internal/play_billing/zzhk;)V

    return-void

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public final zza(Z)Lcom/google/android/gms/internal/play_billing/zzlv;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/play_billing/zzhg;->zzj()V

    iget-object p1, p0, Lcom/google/android/gms/internal/play_billing/zzlv;->zza:Lcom/google/android/gms/internal/play_billing/zzhk;

    .line 2
    check-cast p1, Lcom/google/android/gms/internal/play_billing/zzlx;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/play_billing/zzlx;->zzC(Lcom/google/android/gms/internal/play_billing/zzlx;Z)V

    return-object p0

    .array-data 1
    .end array-data
.end method
