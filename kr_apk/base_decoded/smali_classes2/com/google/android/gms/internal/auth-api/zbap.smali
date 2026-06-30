.class final Lcom/google/android/gms/internal/auth-api/zbap;
.super Lcom/google/android/gms/internal/auth-api/zbo;
.source "com.google.android.gms:play-services-auth@@21.1.1"


# instance fields
.field final synthetic zba:Lcom/google/android/gms/tasks/TaskCompletionSource;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/auth-api/zbaq;Lcom/google/android/gms/tasks/TaskCompletionSource;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/google/android/gms/internal/auth-api/zbap;->zba:Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-direct {p0}, Lcom/google/android/gms/internal/auth-api/zbo;-><init>()V

    return-void

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public final zbb(Lcom/google/android/gms/common/api/Status;Landroid/app/PendingIntent;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/auth-api/zbap;->zba:Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-static {p1, p2, v0}, Lcom/google/android/gms/common/api/internal/TaskUtil;->setResultOrApiException(Lcom/google/android/gms/common/api/Status;Ljava/lang/Object;Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    return-void

    .array-data 1
    .end array-data
.end method
