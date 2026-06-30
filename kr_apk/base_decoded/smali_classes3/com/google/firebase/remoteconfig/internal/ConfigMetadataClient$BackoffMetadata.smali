.class Lcom/google/firebase/remoteconfig/internal/ConfigMetadataClient$BackoffMetadata;
.super Ljava/lang/Object;
.source "ConfigMetadataClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/remoteconfig/internal/ConfigMetadataClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "BackoffMetadata"
.end annotation


# instance fields
.field private backoffEndTime:Ljava/util/Date;

.field private numFailedFetches:I


# direct methods
.method constructor <init>(ILjava/util/Date;)V
    .locals 0

    .line 267
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 268
    iput p1, p0, Lcom/google/firebase/remoteconfig/internal/ConfigMetadataClient$BackoffMetadata;->numFailedFetches:I

    .line 269
    iput-object p2, p0, Lcom/google/firebase/remoteconfig/internal/ConfigMetadataClient$BackoffMetadata;->backoffEndTime:Ljava/util/Date;

    return-void

    .array-data 1
    .end array-data
.end method


# virtual methods
.method getBackoffEndTime()Ljava/util/Date;
    .locals 1

    .line 277
    iget-object v0, p0, Lcom/google/firebase/remoteconfig/internal/ConfigMetadataClient$BackoffMetadata;->backoffEndTime:Ljava/util/Date;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method getNumFailedFetches()I
    .locals 1

    .line 273
    iget v0, p0, Lcom/google/firebase/remoteconfig/internal/ConfigMetadataClient$BackoffMetadata;->numFailedFetches:I

    return v0

    nop

    .array-data 1
    .end array-data
.end method
