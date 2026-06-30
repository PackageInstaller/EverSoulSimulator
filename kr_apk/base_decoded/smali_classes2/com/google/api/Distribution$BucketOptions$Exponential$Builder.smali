.class public final Lcom/google/api/Distribution$BucketOptions$Exponential$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Distribution.java"

# interfaces
.implements Lcom/google/api/Distribution$BucketOptions$ExponentialOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/api/Distribution$BucketOptions$Exponential;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/google/api/Distribution$BucketOptions$Exponential;",
        "Lcom/google/api/Distribution$BucketOptions$Exponential$Builder;",
        ">;",
        "Lcom/google/api/Distribution$BucketOptions$ExponentialOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1231
    invoke-static {}, Lcom/google/api/Distribution$BucketOptions$Exponential;->access$1400()Lcom/google/api/Distribution$BucketOptions$Exponential;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method synthetic constructor <init>(Lcom/google/api/Distribution$1;)V
    .locals 0

    .line 1224
    invoke-direct {p0}, Lcom/google/api/Distribution$BucketOptions$Exponential$Builder;-><init>()V

    return-void

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public clearGrowthFactor()Lcom/google/api/Distribution$BucketOptions$Exponential$Builder;
    .locals 1

    .line 1310
    invoke-virtual {p0}, Lcom/google/api/Distribution$BucketOptions$Exponential$Builder;->copyOnWrite()V

    .line 1311
    iget-object v0, p0, Lcom/google/api/Distribution$BucketOptions$Exponential$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Distribution$BucketOptions$Exponential;

    invoke-static {v0}, Lcom/google/api/Distribution$BucketOptions$Exponential;->access$1800(Lcom/google/api/Distribution$BucketOptions$Exponential;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public clearNumFiniteBuckets()Lcom/google/api/Distribution$BucketOptions$Exponential$Builder;
    .locals 1

    .line 1270
    invoke-virtual {p0}, Lcom/google/api/Distribution$BucketOptions$Exponential$Builder;->copyOnWrite()V

    .line 1271
    iget-object v0, p0, Lcom/google/api/Distribution$BucketOptions$Exponential$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Distribution$BucketOptions$Exponential;

    invoke-static {v0}, Lcom/google/api/Distribution$BucketOptions$Exponential;->access$1600(Lcom/google/api/Distribution$BucketOptions$Exponential;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public clearScale()Lcom/google/api/Distribution$BucketOptions$Exponential$Builder;
    .locals 1

    .line 1350
    invoke-virtual {p0}, Lcom/google/api/Distribution$BucketOptions$Exponential$Builder;->copyOnWrite()V

    .line 1351
    iget-object v0, p0, Lcom/google/api/Distribution$BucketOptions$Exponential$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Distribution$BucketOptions$Exponential;

    invoke-static {v0}, Lcom/google/api/Distribution$BucketOptions$Exponential;->access$2000(Lcom/google/api/Distribution$BucketOptions$Exponential;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public getGrowthFactor()D
    .locals 2

    .line 1285
    iget-object v0, p0, Lcom/google/api/Distribution$BucketOptions$Exponential$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Distribution$BucketOptions$Exponential;

    invoke-virtual {v0}, Lcom/google/api/Distribution$BucketOptions$Exponential;->getGrowthFactor()D

    move-result-wide v0

    return-wide v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getNumFiniteBuckets()I
    .locals 1

    .line 1245
    iget-object v0, p0, Lcom/google/api/Distribution$BucketOptions$Exponential$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Distribution$BucketOptions$Exponential;

    invoke-virtual {v0}, Lcom/google/api/Distribution$BucketOptions$Exponential;->getNumFiniteBuckets()I

    move-result v0

    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getScale()D
    .locals 2

    .line 1325
    iget-object v0, p0, Lcom/google/api/Distribution$BucketOptions$Exponential$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Distribution$BucketOptions$Exponential;

    invoke-virtual {v0}, Lcom/google/api/Distribution$BucketOptions$Exponential;->getScale()D

    move-result-wide v0

    return-wide v0

    nop

    .array-data 1
    .end array-data
.end method

.method public setGrowthFactor(D)Lcom/google/api/Distribution$BucketOptions$Exponential$Builder;
    .locals 1

    .line 1297
    invoke-virtual {p0}, Lcom/google/api/Distribution$BucketOptions$Exponential$Builder;->copyOnWrite()V

    .line 1298
    iget-object v0, p0, Lcom/google/api/Distribution$BucketOptions$Exponential$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Distribution$BucketOptions$Exponential;

    invoke-static {v0, p1, p2}, Lcom/google/api/Distribution$BucketOptions$Exponential;->access$1700(Lcom/google/api/Distribution$BucketOptions$Exponential;D)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public setNumFiniteBuckets(I)Lcom/google/api/Distribution$BucketOptions$Exponential$Builder;
    .locals 1

    .line 1257
    invoke-virtual {p0}, Lcom/google/api/Distribution$BucketOptions$Exponential$Builder;->copyOnWrite()V

    .line 1258
    iget-object v0, p0, Lcom/google/api/Distribution$BucketOptions$Exponential$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Distribution$BucketOptions$Exponential;

    invoke-static {v0, p1}, Lcom/google/api/Distribution$BucketOptions$Exponential;->access$1500(Lcom/google/api/Distribution$BucketOptions$Exponential;I)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public setScale(D)Lcom/google/api/Distribution$BucketOptions$Exponential$Builder;
    .locals 1

    .line 1337
    invoke-virtual {p0}, Lcom/google/api/Distribution$BucketOptions$Exponential$Builder;->copyOnWrite()V

    .line 1338
    iget-object v0, p0, Lcom/google/api/Distribution$BucketOptions$Exponential$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Distribution$BucketOptions$Exponential;

    invoke-static {v0, p1, p2}, Lcom/google/api/Distribution$BucketOptions$Exponential;->access$1900(Lcom/google/api/Distribution$BucketOptions$Exponential;D)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method
