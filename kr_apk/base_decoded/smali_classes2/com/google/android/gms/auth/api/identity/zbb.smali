.class public final Lcom/google/android/gms/auth/api/identity/zbb;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-auth@@21.1.1"


# instance fields
.field private zba:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void

    .array-data 1
    .end array-data
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/auth/api/identity/zba;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void

    .array-data 1
    .end array-data
.end method

.method public static final zbc(Lcom/google/android/gms/auth/api/identity/zbc;)Lcom/google/android/gms/auth/api/identity/zbb;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/auth/api/identity/zbc;->zbb()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Lcom/google/android/gms/auth/api/identity/zbb;

    invoke-direct {v0}, Lcom/google/android/gms/auth/api/identity/zbb;-><init>()V

    if-eqz p0, :cond_0

    invoke-static {p0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/google/android/gms/auth/api/identity/zbb;->zba:Ljava/lang/String;

    :cond_0
    return-object v0

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public final zba(Ljava/lang/String;)Lcom/google/android/gms/auth/api/identity/zbb;
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/auth/api/identity/zbb;->zba:Ljava/lang/String;

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public final zbb()Lcom/google/android/gms/auth/api/identity/zbc;
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/auth/api/identity/zbc;

    iget-object v1, p0, Lcom/google/android/gms/auth/api/identity/zbb;->zba:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/google/android/gms/auth/api/identity/zbc;-><init>(Ljava/lang/String;)V

    return-object v0

    .array-data 1
    .end array-data
.end method
