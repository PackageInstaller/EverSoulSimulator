.class public final Lcom/google/android/gms/fido/fido2/api/common/UvmEntries$Builder;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-fido@@21.0.0"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/fido/fido2/api/common/UvmEntries;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private final zza:Ljava/util/List;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/fido/fido2/api/common/UvmEntries$Builder;->zza:Ljava/util/List;

    return-void

    nop

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public addAll(Ljava/util/List;)Lcom/google/android/gms/fido/fido2/api/common/UvmEntries$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/gms/fido/fido2/api/common/UvmEntry;",
            ">;)",
            "Lcom/google/android/gms/fido/fido2/api/common/UvmEntries$Builder;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/fido/fido2/api/common/UvmEntries$Builder;->zza:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    add-int/2addr v0, v1

    const/4 v1, 0x3

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2
    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/internal/fido/zzbm;->zzc(Z)V

    iget-object v0, p0, Lcom/google/android/gms/fido/fido2/api/common/UvmEntries$Builder;->zza:Ljava/util/List;

    .line 3
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-object p0

    .array-data 1
    .end array-data
.end method

.method public addUvmEntry(Lcom/google/android/gms/fido/fido2/api/common/UvmEntry;)Lcom/google/android/gms/fido/fido2/api/common/UvmEntries$Builder;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/fido/fido2/api/common/UvmEntries$Builder;->zza:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x3

    if-ge v0, v1, :cond_1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/fido/fido2/api/common/UvmEntries$Builder;->zza:Ljava/util/List;

    .line 2
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-object p0

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 3
    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    nop

    .array-data 1
    .end array-data
.end method

.method public build()Lcom/google/android/gms/fido/fido2/api/common/UvmEntries;
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/fido/fido2/api/common/UvmEntries;

    iget-object v1, p0, Lcom/google/android/gms/fido/fido2/api/common/UvmEntries$Builder;->zza:Ljava/util/List;

    invoke-direct {v0, v1}, Lcom/google/android/gms/fido/fido2/api/common/UvmEntries;-><init>(Ljava/util/List;)V

    return-object v0

    .array-data 1
    .end array-data
.end method
