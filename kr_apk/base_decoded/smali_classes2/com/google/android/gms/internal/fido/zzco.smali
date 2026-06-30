.class public final Lcom/google/android/gms/internal/fido/zzco;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-fido@@21.0.0"


# direct methods
.method static zza(Ljava/util/Map$Entry;)Ljava/lang/Object;
    .locals 0
    .param p0    # Ljava/util/Map$Entry;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1
    :cond_0
    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p0

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method
