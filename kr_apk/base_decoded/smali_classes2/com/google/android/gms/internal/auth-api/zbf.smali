.class public final Lcom/google/android/gms/internal/auth-api/zbf;
.super Lcom/google/android/gms/internal/auth-api/zba;
.source "com.google.android.gms:play-services-auth@@21.1.1"

# interfaces
.implements Landroid/os/IInterface;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 1

    const-string v0, "com.google.android.gms.auth.api.credentials.internal.ICredentialsService"

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/auth-api/zba;-><init>(Landroid/os/IBinder;Ljava/lang/String;)V

    return-void

    .array-data 1
    .end array-data
.end method
