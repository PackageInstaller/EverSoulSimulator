.class final Lcom/bumptech/glide/load/data/DataRewinderRegistry$DefaultRewinder;
.super Ljava/lang/Object;
.source "DataRewinderRegistry.java"

# interfaces
.implements Lcom/bumptech/glide/load/data/DataRewinder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/data/DataRewinderRegistry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "DefaultRewinder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/data/DataRewinder<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field private final data:Ljava/lang/Object;


# direct methods
.method constructor <init>(Ljava/lang/Object;)V
    .locals 0

    .line 569
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 579
    iput-object p1, p0, Lcom/bumptech/glide/load/data/DataRewinderRegistry$DefaultRewinder;->data:Ljava/lang/Object;

    return-void

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public cleanup()V
    .locals 0

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public rewindAndGet()Ljava/lang/Object;
    .locals 1

    .line 639
    iget-object v0, p0, Lcom/bumptech/glide/load/data/DataRewinderRegistry$DefaultRewinder;->data:Ljava/lang/Object;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method
