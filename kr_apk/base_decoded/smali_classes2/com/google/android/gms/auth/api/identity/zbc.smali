.class public final Lcom/google/android/gms/auth/api/identity/zbc;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-auth@@21.1.1"

# interfaces
.implements Lcom/google/android/gms/common/api/Api$ApiOptions$Optional;


# instance fields
.field private final zba:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/auth/api/identity/zbc;->zba:Ljava/lang/String;

    return-void

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 0

    instance-of p1, p1, Lcom/google/android/gms/auth/api/identity/zbc;

    return p1

    nop

    .array-data 1
    .end array-data
.end method

.method public final hashCode()I
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 1
    const-class v2, Lcom/google/android/gms/auth/api/identity/zbc;

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final zba()Landroid/os/Bundle;
    .locals 3

    .line 1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "session_id"

    iget-object v2, p0, Lcom/google/android/gms/auth/api/identity/zbc;->zba:Ljava/lang/String;

    .line 2
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final zbb()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/auth/api/identity/zbc;->zba:Ljava/lang/String;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method
