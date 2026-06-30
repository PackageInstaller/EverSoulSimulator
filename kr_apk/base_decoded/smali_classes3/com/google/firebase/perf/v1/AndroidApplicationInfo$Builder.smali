.class public final Lcom/google/firebase/perf/v1/AndroidApplicationInfo$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "AndroidApplicationInfo.java"

# interfaces
.implements Lcom/google/firebase/perf/v1/AndroidApplicationInfoOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/perf/v1/AndroidApplicationInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/google/firebase/perf/v1/AndroidApplicationInfo;",
        "Lcom/google/firebase/perf/v1/AndroidApplicationInfo$Builder;",
        ">;",
        "Lcom/google/firebase/perf/v1/AndroidApplicationInfoOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 392
    invoke-static {}, Lcom/google/firebase/perf/v1/AndroidApplicationInfo;->access$000()Lcom/google/firebase/perf/v1/AndroidApplicationInfo;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method synthetic constructor <init>(Lcom/google/firebase/perf/v1/AndroidApplicationInfo$1;)V
    .locals 0

    .line 385
    invoke-direct {p0}, Lcom/google/firebase/perf/v1/AndroidApplicationInfo$Builder;-><init>()V

    return-void

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public clearPackageName()Lcom/google/firebase/perf/v1/AndroidApplicationInfo$Builder;
    .locals 1

    .line 462
    invoke-virtual {p0}, Lcom/google/firebase/perf/v1/AndroidApplicationInfo$Builder;->copyOnWrite()V

    .line 463
    iget-object v0, p0, Lcom/google/firebase/perf/v1/AndroidApplicationInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/perf/v1/AndroidApplicationInfo;

    invoke-static {v0}, Lcom/google/firebase/perf/v1/AndroidApplicationInfo;->access$200(Lcom/google/firebase/perf/v1/AndroidApplicationInfo;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public clearSdkVersion()Lcom/google/firebase/perf/v1/AndroidApplicationInfo$Builder;
    .locals 1

    .line 544
    invoke-virtual {p0}, Lcom/google/firebase/perf/v1/AndroidApplicationInfo$Builder;->copyOnWrite()V

    .line 545
    iget-object v0, p0, Lcom/google/firebase/perf/v1/AndroidApplicationInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/perf/v1/AndroidApplicationInfo;

    invoke-static {v0}, Lcom/google/firebase/perf/v1/AndroidApplicationInfo;->access$500(Lcom/google/firebase/perf/v1/AndroidApplicationInfo;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public clearVersionName()Lcom/google/firebase/perf/v1/AndroidApplicationInfo$Builder;
    .locals 1

    .line 645
    invoke-virtual {p0}, Lcom/google/firebase/perf/v1/AndroidApplicationInfo$Builder;->copyOnWrite()V

    .line 646
    iget-object v0, p0, Lcom/google/firebase/perf/v1/AndroidApplicationInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/perf/v1/AndroidApplicationInfo;

    invoke-static {v0}, Lcom/google/firebase/perf/v1/AndroidApplicationInfo;->access$800(Lcom/google/firebase/perf/v1/AndroidApplicationInfo;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .line 420
    iget-object v0, p0, Lcom/google/firebase/perf/v1/AndroidApplicationInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/perf/v1/AndroidApplicationInfo;

    invoke-virtual {v0}, Lcom/google/firebase/perf/v1/AndroidApplicationInfo;->getPackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getPackageNameBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 434
    iget-object v0, p0, Lcom/google/firebase/perf/v1/AndroidApplicationInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/perf/v1/AndroidApplicationInfo;

    invoke-virtual {v0}, Lcom/google/firebase/perf/v1/AndroidApplicationInfo;->getPackageNameBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getSdkVersion()Ljava/lang/String;
    .locals 1

    .line 505
    iget-object v0, p0, Lcom/google/firebase/perf/v1/AndroidApplicationInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/perf/v1/AndroidApplicationInfo;

    invoke-virtual {v0}, Lcom/google/firebase/perf/v1/AndroidApplicationInfo;->getSdkVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getSdkVersionBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 518
    iget-object v0, p0, Lcom/google/firebase/perf/v1/AndroidApplicationInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/perf/v1/AndroidApplicationInfo;

    invoke-virtual {v0}, Lcom/google/firebase/perf/v1/AndroidApplicationInfo;->getSdkVersionBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getVersionName()Ljava/lang/String;
    .locals 1

    .line 594
    iget-object v0, p0, Lcom/google/firebase/perf/v1/AndroidApplicationInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/perf/v1/AndroidApplicationInfo;

    invoke-virtual {v0}, Lcom/google/firebase/perf/v1/AndroidApplicationInfo;->getVersionName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getVersionNameBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 611
    iget-object v0, p0, Lcom/google/firebase/perf/v1/AndroidApplicationInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/perf/v1/AndroidApplicationInfo;

    invoke-virtual {v0}, Lcom/google/firebase/perf/v1/AndroidApplicationInfo;->getVersionNameBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public hasPackageName()Z
    .locals 1

    .line 407
    iget-object v0, p0, Lcom/google/firebase/perf/v1/AndroidApplicationInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/perf/v1/AndroidApplicationInfo;

    invoke-virtual {v0}, Lcom/google/firebase/perf/v1/AndroidApplicationInfo;->hasPackageName()Z

    move-result v0

    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public hasSdkVersion()Z
    .locals 1

    .line 493
    iget-object v0, p0, Lcom/google/firebase/perf/v1/AndroidApplicationInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/perf/v1/AndroidApplicationInfo;

    invoke-virtual {v0}, Lcom/google/firebase/perf/v1/AndroidApplicationInfo;->hasSdkVersion()Z

    move-result v0

    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public hasVersionName()Z
    .locals 1

    .line 578
    iget-object v0, p0, Lcom/google/firebase/perf/v1/AndroidApplicationInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/perf/v1/AndroidApplicationInfo;

    invoke-virtual {v0}, Lcom/google/firebase/perf/v1/AndroidApplicationInfo;->hasVersionName()Z

    move-result v0

    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public setPackageName(Ljava/lang/String;)Lcom/google/firebase/perf/v1/AndroidApplicationInfo$Builder;
    .locals 1

    .line 448
    invoke-virtual {p0}, Lcom/google/firebase/perf/v1/AndroidApplicationInfo$Builder;->copyOnWrite()V

    .line 449
    iget-object v0, p0, Lcom/google/firebase/perf/v1/AndroidApplicationInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/perf/v1/AndroidApplicationInfo;

    invoke-static {v0, p1}, Lcom/google/firebase/perf/v1/AndroidApplicationInfo;->access$100(Lcom/google/firebase/perf/v1/AndroidApplicationInfo;Ljava/lang/String;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public setPackageNameBytes(Lcom/google/protobuf/ByteString;)Lcom/google/firebase/perf/v1/AndroidApplicationInfo$Builder;
    .locals 1

    .line 478
    invoke-virtual {p0}, Lcom/google/firebase/perf/v1/AndroidApplicationInfo$Builder;->copyOnWrite()V

    .line 479
    iget-object v0, p0, Lcom/google/firebase/perf/v1/AndroidApplicationInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/perf/v1/AndroidApplicationInfo;

    invoke-static {v0, p1}, Lcom/google/firebase/perf/v1/AndroidApplicationInfo;->access$300(Lcom/google/firebase/perf/v1/AndroidApplicationInfo;Lcom/google/protobuf/ByteString;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public setSdkVersion(Ljava/lang/String;)Lcom/google/firebase/perf/v1/AndroidApplicationInfo$Builder;
    .locals 1

    .line 531
    invoke-virtual {p0}, Lcom/google/firebase/perf/v1/AndroidApplicationInfo$Builder;->copyOnWrite()V

    .line 532
    iget-object v0, p0, Lcom/google/firebase/perf/v1/AndroidApplicationInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/perf/v1/AndroidApplicationInfo;

    invoke-static {v0, p1}, Lcom/google/firebase/perf/v1/AndroidApplicationInfo;->access$400(Lcom/google/firebase/perf/v1/AndroidApplicationInfo;Ljava/lang/String;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public setSdkVersionBytes(Lcom/google/protobuf/ByteString;)Lcom/google/firebase/perf/v1/AndroidApplicationInfo$Builder;
    .locals 1

    .line 559
    invoke-virtual {p0}, Lcom/google/firebase/perf/v1/AndroidApplicationInfo$Builder;->copyOnWrite()V

    .line 560
    iget-object v0, p0, Lcom/google/firebase/perf/v1/AndroidApplicationInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/perf/v1/AndroidApplicationInfo;

    invoke-static {v0, p1}, Lcom/google/firebase/perf/v1/AndroidApplicationInfo;->access$600(Lcom/google/firebase/perf/v1/AndroidApplicationInfo;Lcom/google/protobuf/ByteString;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public setVersionName(Ljava/lang/String;)Lcom/google/firebase/perf/v1/AndroidApplicationInfo$Builder;
    .locals 1

    .line 628
    invoke-virtual {p0}, Lcom/google/firebase/perf/v1/AndroidApplicationInfo$Builder;->copyOnWrite()V

    .line 629
    iget-object v0, p0, Lcom/google/firebase/perf/v1/AndroidApplicationInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/perf/v1/AndroidApplicationInfo;

    invoke-static {v0, p1}, Lcom/google/firebase/perf/v1/AndroidApplicationInfo;->access$700(Lcom/google/firebase/perf/v1/AndroidApplicationInfo;Ljava/lang/String;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public setVersionNameBytes(Lcom/google/protobuf/ByteString;)Lcom/google/firebase/perf/v1/AndroidApplicationInfo$Builder;
    .locals 1

    .line 664
    invoke-virtual {p0}, Lcom/google/firebase/perf/v1/AndroidApplicationInfo$Builder;->copyOnWrite()V

    .line 665
    iget-object v0, p0, Lcom/google/firebase/perf/v1/AndroidApplicationInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/perf/v1/AndroidApplicationInfo;

    invoke-static {v0, p1}, Lcom/google/firebase/perf/v1/AndroidApplicationInfo;->access$900(Lcom/google/firebase/perf/v1/AndroidApplicationInfo;Lcom/google/protobuf/ByteString;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method
