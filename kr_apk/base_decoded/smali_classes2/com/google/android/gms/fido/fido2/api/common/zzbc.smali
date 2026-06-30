.class public final Lcom/google/android/gms/fido/fido2/api/common/zzbc;
.super Ljava/lang/Exception;
.source "com.google.android.gms:play-services-fido@@21.0.0"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "User verification requirement %s not supported"

    .line 1
    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    return-void

    .array-data 1
    .end array-data
.end method
