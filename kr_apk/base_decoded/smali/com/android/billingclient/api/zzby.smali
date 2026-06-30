.class final Lcom/android/billingclient/api/zzby;
.super Ljava/lang/Object;
.source "com.android.billingclient:billing@@7.1.1"

# interfaces
.implements Lcom/google/android/gms/internal/play_billing/zzej;


# instance fields
.field final synthetic zza:Ljava/util/function/Consumer;

.field final synthetic zzb:Ljava/lang/Runnable;

.field final synthetic zzc:Lcom/android/billingclient/api/zzcc;

.field final synthetic zzd:I


# direct methods
.method constructor <init>(Lcom/android/billingclient/api/zzcc;ILjava/util/function/Consumer;Ljava/lang/Runnable;)V
    .locals 0

    iput p2, p0, Lcom/android/billingclient/api/zzby;->zzd:I

    iput-object p3, p0, Lcom/android/billingclient/api/zzby;->zza:Ljava/util/function/Consumer;

    iput-object p4, p0, Lcom/android/billingclient/api/zzby;->zzb:Ljava/lang/Runnable;

    iput-object p1, p0, Lcom/android/billingclient/api/zzby;->zzc:Lcom/android/billingclient/api/zzcc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public final zza(Ljava/lang/Throwable;)V
    .locals 5

    .line 1
    instance-of v0, p1, Ljava/util/concurrent/TimeoutException;

    const-string v1, "BillingClientTesting"

    const/16 v2, 0x1c

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/billingclient/api/zzby;->zzc:Lcom/android/billingclient/api/zzcc;

    const/16 v3, 0x72

    .line 2
    sget-object v4, Lcom/android/billingclient/api/zzcj;->zzG:Lcom/android/billingclient/api/BillingResult;

    invoke-static {v0, v3, v2, v4}, Lcom/android/billingclient/api/zzcc;->zzaJ(Lcom/android/billingclient/api/zzcc;IILcom/android/billingclient/api/BillingResult;)V

    const-string v0, "Asynchronous call to Billing Override Service timed out."

    .line 3
    invoke-static {v1, v0, p1}, Lcom/google/android/gms/internal/play_billing/zze;->zzm(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/android/billingclient/api/zzby;->zzc:Lcom/android/billingclient/api/zzcc;

    const/16 v3, 0x6b

    .line 4
    sget-object v4, Lcom/android/billingclient/api/zzcj;->zzG:Lcom/android/billingclient/api/BillingResult;

    invoke-static {v0, v3, v2, v4}, Lcom/android/billingclient/api/zzcc;->zzaJ(Lcom/android/billingclient/api/zzcc;IILcom/android/billingclient/api/BillingResult;)V

    const-string v0, "An error occurred while retrieving billing override."

    .line 5
    invoke-static {v1, v0, p1}, Lcom/google/android/gms/internal/play_billing/zze;->zzm(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3
    :goto_0
    iget-object p1, p0, Lcom/android/billingclient/api/zzby;->zzb:Ljava/lang/Runnable;

    .line 6
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public final bridge synthetic zzb(Ljava/lang/Object;)V
    .locals 2

    .line 1
    check-cast p1, Ljava/lang/Integer;

    .line 2
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p0, Lcom/android/billingclient/api/zzby;->zzc:Lcom/android/billingclient/api/zzcc;

    invoke-static {v1, v0}, Lcom/android/billingclient/api/zzcc;->zzaF(Lcom/android/billingclient/api/zzcc;I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/billingclient/api/zzby;->zzd:I

    .line 3
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {v1, v0, p1}, Lcom/android/billingclient/api/zzcc;->zzaH(Lcom/android/billingclient/api/zzcc;II)Lcom/android/billingclient/api/BillingResult;

    move-result-object p1

    iget-object v0, p0, Lcom/android/billingclient/api/zzby;->zza:Ljava/util/function/Consumer;

    .line 4
    invoke-interface {v0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void

    :cond_0
    iget-object p1, p0, Lcom/android/billingclient/api/zzby;->zzb:Ljava/lang/Runnable;

    .line 5
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void

    .array-data 1
    .end array-data
.end method
