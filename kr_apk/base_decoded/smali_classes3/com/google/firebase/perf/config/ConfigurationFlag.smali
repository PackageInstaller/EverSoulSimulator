.class abstract Lcom/google/firebase/perf/config/ConfigurationFlag;
.super Ljava/lang/Object;
.source "ConfigurationFlag.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void

    .array-data 1
    .end array-data
.end method


# virtual methods
.method protected abstract getDefault()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method protected getDefaultOnRcFetchFail()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 33
    invoke-virtual {p0}, Lcom/google/firebase/perf/config/ConfigurationFlag;->getDefault()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method getDeviceCacheFlag()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0

    .array-data 1
    .end array-data
.end method

.method getMetadataFlag()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0

    .array-data 1
    .end array-data
.end method

.method getRemoteConfigFlag()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0

    .array-data 1
    .end array-data
.end method
