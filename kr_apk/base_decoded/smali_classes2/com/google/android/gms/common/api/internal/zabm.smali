.class final Lcom/google/android/gms/common/api/internal/zabm;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-base@@18.6.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic zaa:Lcom/google/android/gms/common/api/internal/zabn;


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/api/internal/zabn;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/zabm;->zaa:Lcom/google/android/gms/common/api/internal/zabn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zabm;->zaa:Lcom/google/android/gms/common/api/internal/zabn;

    iget-object v0, v0, Lcom/google/android/gms/common/api/internal/zabn;->zaa:Lcom/google/android/gms/common/api/internal/zabo;

    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/zabo;->zae(Lcom/google/android/gms/common/api/internal/zabo;)Lcom/google/android/gms/common/api/Api$Client;

    move-result-object v1

    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/zabo;->zae(Lcom/google/android/gms/common/api/internal/zabo;)Lcom/google/android/gms/common/api/Api$Client;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v2, " disconnecting because it was signed out."

    invoke-virtual {v0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-interface {v1, v0}, Lcom/google/android/gms/common/api/Api$Client;->disconnect(Ljava/lang/String;)V

    return-void

    .array-data 1
    .end array-data
.end method
