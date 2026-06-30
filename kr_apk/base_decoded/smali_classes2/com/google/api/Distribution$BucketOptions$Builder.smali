.class public final Lcom/google/api/Distribution$BucketOptions$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Distribution.java"

# interfaces
.implements Lcom/google/api/Distribution$BucketOptionsOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/api/Distribution$BucketOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/google/api/Distribution$BucketOptions;",
        "Lcom/google/api/Distribution$BucketOptions$Builder;",
        ">;",
        "Lcom/google/api/Distribution$BucketOptionsOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 2226
    invoke-static {}, Lcom/google/api/Distribution$BucketOptions;->access$2800()Lcom/google/api/Distribution$BucketOptions;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method synthetic constructor <init>(Lcom/google/api/Distribution$1;)V
    .locals 0

    .line 2219
    invoke-direct {p0}, Lcom/google/api/Distribution$BucketOptions$Builder;-><init>()V

    return-void

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public clearExplicitBuckets()Lcom/google/api/Distribution$BucketOptions$Builder;
    .locals 1

    .line 2453
    invoke-virtual {p0}, Lcom/google/api/Distribution$BucketOptions$Builder;->copyOnWrite()V

    .line 2454
    iget-object v0, p0, Lcom/google/api/Distribution$BucketOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Distribution$BucketOptions;

    invoke-static {v0}, Lcom/google/api/Distribution$BucketOptions;->access$3800(Lcom/google/api/Distribution$BucketOptions;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public clearExponentialBuckets()Lcom/google/api/Distribution$BucketOptions$Builder;
    .locals 1

    .line 2381
    invoke-virtual {p0}, Lcom/google/api/Distribution$BucketOptions$Builder;->copyOnWrite()V

    .line 2382
    iget-object v0, p0, Lcom/google/api/Distribution$BucketOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Distribution$BucketOptions;

    invoke-static {v0}, Lcom/google/api/Distribution$BucketOptions;->access$3500(Lcom/google/api/Distribution$BucketOptions;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public clearLinearBuckets()Lcom/google/api/Distribution$BucketOptions$Builder;
    .locals 1

    .line 2309
    invoke-virtual {p0}, Lcom/google/api/Distribution$BucketOptions$Builder;->copyOnWrite()V

    .line 2310
    iget-object v0, p0, Lcom/google/api/Distribution$BucketOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Distribution$BucketOptions;

    invoke-static {v0}, Lcom/google/api/Distribution$BucketOptions;->access$3200(Lcom/google/api/Distribution$BucketOptions;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public clearOptions()Lcom/google/api/Distribution$BucketOptions$Builder;
    .locals 1

    .line 2236
    invoke-virtual {p0}, Lcom/google/api/Distribution$BucketOptions$Builder;->copyOnWrite()V

    .line 2237
    iget-object v0, p0, Lcom/google/api/Distribution$BucketOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Distribution$BucketOptions;

    invoke-static {v0}, Lcom/google/api/Distribution$BucketOptions;->access$2900(Lcom/google/api/Distribution$BucketOptions;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public getExplicitBuckets()Lcom/google/api/Distribution$BucketOptions$Explicit;
    .locals 1

    .line 2406
    iget-object v0, p0, Lcom/google/api/Distribution$BucketOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Distribution$BucketOptions;

    invoke-virtual {v0}, Lcom/google/api/Distribution$BucketOptions;->getExplicitBuckets()Lcom/google/api/Distribution$BucketOptions$Explicit;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getExponentialBuckets()Lcom/google/api/Distribution$BucketOptions$Exponential;
    .locals 1

    .line 2334
    iget-object v0, p0, Lcom/google/api/Distribution$BucketOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Distribution$BucketOptions;

    invoke-virtual {v0}, Lcom/google/api/Distribution$BucketOptions;->getExponentialBuckets()Lcom/google/api/Distribution$BucketOptions$Exponential;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getLinearBuckets()Lcom/google/api/Distribution$BucketOptions$Linear;
    .locals 1

    .line 2262
    iget-object v0, p0, Lcom/google/api/Distribution$BucketOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Distribution$BucketOptions;

    invoke-virtual {v0}, Lcom/google/api/Distribution$BucketOptions;->getLinearBuckets()Lcom/google/api/Distribution$BucketOptions$Linear;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getOptionsCase()Lcom/google/api/Distribution$BucketOptions$OptionsCase;
    .locals 1

    .line 2232
    iget-object v0, p0, Lcom/google/api/Distribution$BucketOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Distribution$BucketOptions;

    invoke-virtual {v0}, Lcom/google/api/Distribution$BucketOptions;->getOptionsCase()Lcom/google/api/Distribution$BucketOptions$OptionsCase;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public hasExplicitBuckets()Z
    .locals 1

    .line 2395
    iget-object v0, p0, Lcom/google/api/Distribution$BucketOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Distribution$BucketOptions;

    invoke-virtual {v0}, Lcom/google/api/Distribution$BucketOptions;->hasExplicitBuckets()Z

    move-result v0

    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public hasExponentialBuckets()Z
    .locals 1

    .line 2323
    iget-object v0, p0, Lcom/google/api/Distribution$BucketOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Distribution$BucketOptions;

    invoke-virtual {v0}, Lcom/google/api/Distribution$BucketOptions;->hasExponentialBuckets()Z

    move-result v0

    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public hasLinearBuckets()Z
    .locals 1

    .line 2251
    iget-object v0, p0, Lcom/google/api/Distribution$BucketOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Distribution$BucketOptions;

    invoke-virtual {v0}, Lcom/google/api/Distribution$BucketOptions;->hasLinearBuckets()Z

    move-result v0

    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public mergeExplicitBuckets(Lcom/google/api/Distribution$BucketOptions$Explicit;)Lcom/google/api/Distribution$BucketOptions$Builder;
    .locals 1

    .line 2441
    invoke-virtual {p0}, Lcom/google/api/Distribution$BucketOptions$Builder;->copyOnWrite()V

    .line 2442
    iget-object v0, p0, Lcom/google/api/Distribution$BucketOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Distribution$BucketOptions;

    invoke-static {v0, p1}, Lcom/google/api/Distribution$BucketOptions;->access$3700(Lcom/google/api/Distribution$BucketOptions;Lcom/google/api/Distribution$BucketOptions$Explicit;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public mergeExponentialBuckets(Lcom/google/api/Distribution$BucketOptions$Exponential;)Lcom/google/api/Distribution$BucketOptions$Builder;
    .locals 1

    .line 2369
    invoke-virtual {p0}, Lcom/google/api/Distribution$BucketOptions$Builder;->copyOnWrite()V

    .line 2370
    iget-object v0, p0, Lcom/google/api/Distribution$BucketOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Distribution$BucketOptions;

    invoke-static {v0, p1}, Lcom/google/api/Distribution$BucketOptions;->access$3400(Lcom/google/api/Distribution$BucketOptions;Lcom/google/api/Distribution$BucketOptions$Exponential;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public mergeLinearBuckets(Lcom/google/api/Distribution$BucketOptions$Linear;)Lcom/google/api/Distribution$BucketOptions$Builder;
    .locals 1

    .line 2297
    invoke-virtual {p0}, Lcom/google/api/Distribution$BucketOptions$Builder;->copyOnWrite()V

    .line 2298
    iget-object v0, p0, Lcom/google/api/Distribution$BucketOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Distribution$BucketOptions;

    invoke-static {v0, p1}, Lcom/google/api/Distribution$BucketOptions;->access$3100(Lcom/google/api/Distribution$BucketOptions;Lcom/google/api/Distribution$BucketOptions$Linear;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public setExplicitBuckets(Lcom/google/api/Distribution$BucketOptions$Explicit$Builder;)Lcom/google/api/Distribution$BucketOptions$Builder;
    .locals 1

    .line 2429
    invoke-virtual {p0}, Lcom/google/api/Distribution$BucketOptions$Builder;->copyOnWrite()V

    .line 2430
    iget-object v0, p0, Lcom/google/api/Distribution$BucketOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Distribution$BucketOptions;

    invoke-virtual {p1}, Lcom/google/api/Distribution$BucketOptions$Explicit$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/api/Distribution$BucketOptions$Explicit;

    invoke-static {v0, p1}, Lcom/google/api/Distribution$BucketOptions;->access$3600(Lcom/google/api/Distribution$BucketOptions;Lcom/google/api/Distribution$BucketOptions$Explicit;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public setExplicitBuckets(Lcom/google/api/Distribution$BucketOptions$Explicit;)Lcom/google/api/Distribution$BucketOptions$Builder;
    .locals 1

    .line 2416
    invoke-virtual {p0}, Lcom/google/api/Distribution$BucketOptions$Builder;->copyOnWrite()V

    .line 2417
    iget-object v0, p0, Lcom/google/api/Distribution$BucketOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Distribution$BucketOptions;

    invoke-static {v0, p1}, Lcom/google/api/Distribution$BucketOptions;->access$3600(Lcom/google/api/Distribution$BucketOptions;Lcom/google/api/Distribution$BucketOptions$Explicit;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public setExponentialBuckets(Lcom/google/api/Distribution$BucketOptions$Exponential$Builder;)Lcom/google/api/Distribution$BucketOptions$Builder;
    .locals 1

    .line 2357
    invoke-virtual {p0}, Lcom/google/api/Distribution$BucketOptions$Builder;->copyOnWrite()V

    .line 2358
    iget-object v0, p0, Lcom/google/api/Distribution$BucketOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Distribution$BucketOptions;

    invoke-virtual {p1}, Lcom/google/api/Distribution$BucketOptions$Exponential$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/api/Distribution$BucketOptions$Exponential;

    invoke-static {v0, p1}, Lcom/google/api/Distribution$BucketOptions;->access$3300(Lcom/google/api/Distribution$BucketOptions;Lcom/google/api/Distribution$BucketOptions$Exponential;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public setExponentialBuckets(Lcom/google/api/Distribution$BucketOptions$Exponential;)Lcom/google/api/Distribution$BucketOptions$Builder;
    .locals 1

    .line 2344
    invoke-virtual {p0}, Lcom/google/api/Distribution$BucketOptions$Builder;->copyOnWrite()V

    .line 2345
    iget-object v0, p0, Lcom/google/api/Distribution$BucketOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Distribution$BucketOptions;

    invoke-static {v0, p1}, Lcom/google/api/Distribution$BucketOptions;->access$3300(Lcom/google/api/Distribution$BucketOptions;Lcom/google/api/Distribution$BucketOptions$Exponential;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public setLinearBuckets(Lcom/google/api/Distribution$BucketOptions$Linear$Builder;)Lcom/google/api/Distribution$BucketOptions$Builder;
    .locals 1

    .line 2285
    invoke-virtual {p0}, Lcom/google/api/Distribution$BucketOptions$Builder;->copyOnWrite()V

    .line 2286
    iget-object v0, p0, Lcom/google/api/Distribution$BucketOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Distribution$BucketOptions;

    invoke-virtual {p1}, Lcom/google/api/Distribution$BucketOptions$Linear$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/api/Distribution$BucketOptions$Linear;

    invoke-static {v0, p1}, Lcom/google/api/Distribution$BucketOptions;->access$3000(Lcom/google/api/Distribution$BucketOptions;Lcom/google/api/Distribution$BucketOptions$Linear;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public setLinearBuckets(Lcom/google/api/Distribution$BucketOptions$Linear;)Lcom/google/api/Distribution$BucketOptions$Builder;
    .locals 1

    .line 2272
    invoke-virtual {p0}, Lcom/google/api/Distribution$BucketOptions$Builder;->copyOnWrite()V

    .line 2273
    iget-object v0, p0, Lcom/google/api/Distribution$BucketOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Distribution$BucketOptions;

    invoke-static {v0, p1}, Lcom/google/api/Distribution$BucketOptions;->access$3000(Lcom/google/api/Distribution$BucketOptions;Lcom/google/api/Distribution$BucketOptions$Linear;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method
