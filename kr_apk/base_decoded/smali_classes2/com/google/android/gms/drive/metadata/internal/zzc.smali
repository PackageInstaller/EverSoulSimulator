.class public final Lcom/google/android/gms/drive/metadata/internal/zzc;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/drive/metadata/internal/zzc;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final value:Ljava/lang/String;

.field final zzje:Lcom/google/android/gms/drive/metadata/CustomPropertyKey;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 17
    new-instance v0, Lcom/google/android/gms/drive/metadata/internal/zzd;

    invoke-direct {v0}, Lcom/google/android/gms/drive/metadata/internal/zzd;-><init>()V

    sput-object v0, Lcom/google/android/gms/drive/metadata/internal/zzc;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void

    .array-data 1
    .end array-data
.end method

.method public constructor <init>(Lcom/google/android/gms/drive/metadata/CustomPropertyKey;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    const-string v0, "key"

    .line 2
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iput-object p1, p0, Lcom/google/android/gms/drive/metadata/internal/zzc;->zzje:Lcom/google/android/gms/drive/metadata/CustomPropertyKey;

    .line 4
    iput-object p2, p0, Lcom/google/android/gms/drive/metadata/internal/zzc;->value:Ljava/lang/String;

    return-void

    nop

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_2

    .line 14
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_0

    .line 15
    :cond_1
    check-cast p1, Lcom/google/android/gms/drive/metadata/internal/zzc;

    .line 16
    iget-object v2, p0, Lcom/google/android/gms/drive/metadata/internal/zzc;->zzje:Lcom/google/android/gms/drive/metadata/CustomPropertyKey;

    iget-object v3, p1, Lcom/google/android/gms/drive/metadata/internal/zzc;->zzje:Lcom/google/android/gms/drive/metadata/CustomPropertyKey;

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/android/gms/drive/metadata/internal/zzc;->value:Ljava/lang/String;

    iget-object p1, p1, Lcom/google/android/gms/drive/metadata/internal/zzc;->value:Ljava/lang/String;

    invoke-static {v2, p1}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    return v0

    :cond_2
    :goto_0
    return v1

    .array-data 1
    .end array-data
.end method

.method public final hashCode()I
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 12
    iget-object v2, p0, Lcom/google/android/gms/drive/metadata/internal/zzc;->zzje:Lcom/google/android/gms/drive/metadata/CustomPropertyKey;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/android/gms/drive/metadata/internal/zzc;->value:Ljava/lang/String;

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0

    .array-data 1
    .end array-data
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    .line 7
    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->beginObjectHeader(Landroid/os/Parcel;)I

    move-result v0

    .line 8
    iget-object v1, p0, Lcom/google/android/gms/drive/metadata/internal/zzc;->zzje:Lcom/google/android/gms/drive/metadata/CustomPropertyKey;

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {p1, v2, v1, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    const/4 p2, 0x3

    .line 9
    iget-object v1, p0, Lcom/google/android/gms/drive/metadata/internal/zzc;->value:Ljava/lang/String;

    invoke-static {p1, p2, v1, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeString(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 10
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->finishObjectHeader(Landroid/os/Parcel;I)V

    return-void

    nop

    .array-data 1
    .end array-data
.end method
