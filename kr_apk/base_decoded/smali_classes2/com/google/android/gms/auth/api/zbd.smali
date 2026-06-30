.class public final Lcom/google/android/gms/auth/api/zbd;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-auth@@21.1.1"

# interfaces
.implements Lcom/google/android/gms/common/api/Api$ApiOptions$Optional;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final zba:Lcom/google/android/gms/auth/api/zbd;


# instance fields
.field private final zbb:Ljava/lang/String;

.field private final zbc:Z

.field private final zbd:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/auth/api/zbc;

    invoke-direct {v0}, Lcom/google/android/gms/auth/api/zbc;-><init>()V

    new-instance v1, Lcom/google/android/gms/auth/api/zbd;

    .line 2
    invoke-direct {v1, v0}, Lcom/google/android/gms/auth/api/zbd;-><init>(Lcom/google/android/gms/auth/api/zbc;)V

    sput-object v1, Lcom/google/android/gms/auth/api/zbd;->zba:Lcom/google/android/gms/auth/api/zbd;

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public constructor <init>(Lcom/google/android/gms/auth/api/zbc;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/auth/api/zbd;->zbb:Ljava/lang/String;

    iget-object v0, p1, Lcom/google/android/gms/auth/api/zbc;->zba:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/auth/api/zbd;->zbc:Z

    iget-object p1, p1, Lcom/google/android/gms/auth/api/zbc;->zbb:Ljava/lang/String;

    iput-object p1, p0, Lcom/google/android/gms/auth/api/zbd;->zbd:Ljava/lang/String;

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method static bridge synthetic zbb(Lcom/google/android/gms/auth/api/zbd;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/auth/api/zbd;->zbb:Ljava/lang/String;

    const/4 p0, 0x0

    return-object p0

    .array-data 1
    .end array-data
.end method

.method static bridge synthetic zbc(Lcom/google/android/gms/auth/api/zbd;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/auth/api/zbd;->zbd:Ljava/lang/String;

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method static bridge synthetic zbd(Lcom/google/android/gms/auth/api/zbd;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/android/gms/auth/api/zbd;->zbc:Z

    return p0

    nop

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 1
    :cond_0
    instance-of v1, p1, Lcom/google/android/gms/auth/api/zbd;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/google/android/gms/auth/api/zbd;

    .line 2
    iget-object v1, p1, Lcom/google/android/gms/auth/api/zbd;->zbb:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {v1, v1}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/google/android/gms/auth/api/zbd;->zbc:Z

    iget-boolean v3, p1, Lcom/google/android/gms/auth/api/zbd;->zbc:Z

    if-ne v1, v3, :cond_2

    iget-object v1, p0, Lcom/google/android/gms/auth/api/zbd;->zbd:Ljava/lang/String;

    iget-object p1, p1, Lcom/google/android/gms/auth/api/zbd;->zbd:Ljava/lang/String;

    .line 3
    invoke-static {v1, p1}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    return v0

    :cond_2
    return v2

    nop

    .array-data 1
    .end array-data
.end method

.method public final hashCode()I
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const/4 v2, 0x0

    aput-object v2, v0, v1

    .line 1
    iget-boolean v1, p0, Lcom/google/android/gms/auth/api/zbd;->zbc:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/gms/auth/api/zbd;->zbd:Ljava/lang/String;

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0

    .array-data 1
    .end array-data
.end method

.method public final zba()Landroid/os/Bundle;
    .locals 3

    .line 1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "consumer_package"

    const/4 v2, 0x0

    .line 2
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "force_save_dialog"

    iget-boolean v2, p0, Lcom/google/android/gms/auth/api/zbd;->zbc:Z

    .line 3
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v1, "log_session_id"

    iget-object v2, p0, Lcom/google/android/gms/auth/api/zbd;->zbd:Ljava/lang/String;

    .line 4
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .array-data 1
    .end array-data
.end method
