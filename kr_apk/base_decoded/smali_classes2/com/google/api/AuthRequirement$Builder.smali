.class public final Lcom/google/api/AuthRequirement$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "AuthRequirement.java"

# interfaces
.implements Lcom/google/api/AuthRequirementOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/api/AuthRequirement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/google/api/AuthRequirement;",
        "Lcom/google/api/AuthRequirement$Builder;",
        ">;",
        "Lcom/google/api/AuthRequirementOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 325
    invoke-static {}, Lcom/google/api/AuthRequirement;->access$000()Lcom/google/api/AuthRequirement;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method synthetic constructor <init>(Lcom/google/api/AuthRequirement$1;)V
    .locals 0

    .line 318
    invoke-direct {p0}, Lcom/google/api/AuthRequirement$Builder;-><init>()V

    return-void

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public clearAudiences()Lcom/google/api/AuthRequirement$Builder;
    .locals 1

    .line 505
    invoke-virtual {p0}, Lcom/google/api/AuthRequirement$Builder;->copyOnWrite()V

    .line 506
    iget-object v0, p0, Lcom/google/api/AuthRequirement$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/AuthRequirement;

    invoke-static {v0}, Lcom/google/api/AuthRequirement;->access$500(Lcom/google/api/AuthRequirement;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public clearProviderId()Lcom/google/api/AuthRequirement$Builder;
    .locals 1

    .line 386
    invoke-virtual {p0}, Lcom/google/api/AuthRequirement$Builder;->copyOnWrite()V

    .line 387
    iget-object v0, p0, Lcom/google/api/AuthRequirement$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/AuthRequirement;

    invoke-static {v0}, Lcom/google/api/AuthRequirement;->access$200(Lcom/google/api/AuthRequirement;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public getAudiences()Ljava/lang/String;
    .locals 1

    .line 430
    iget-object v0, p0, Lcom/google/api/AuthRequirement$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/AuthRequirement;

    invoke-virtual {v0}, Lcom/google/api/AuthRequirement;->getAudiences()Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getAudiencesBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 455
    iget-object v0, p0, Lcom/google/api/AuthRequirement$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/AuthRequirement;

    invoke-virtual {v0}, Lcom/google/api/AuthRequirement;->getAudiencesBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getProviderId()Ljava/lang/String;
    .locals 1

    .line 341
    iget-object v0, p0, Lcom/google/api/AuthRequirement$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/AuthRequirement;

    invoke-virtual {v0}, Lcom/google/api/AuthRequirement;->getProviderId()Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getProviderIdBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 356
    iget-object v0, p0, Lcom/google/api/AuthRequirement$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/AuthRequirement;

    invoke-virtual {v0}, Lcom/google/api/AuthRequirement;->getProviderIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public setAudiences(Ljava/lang/String;)Lcom/google/api/AuthRequirement$Builder;
    .locals 1

    .line 480
    invoke-virtual {p0}, Lcom/google/api/AuthRequirement$Builder;->copyOnWrite()V

    .line 481
    iget-object v0, p0, Lcom/google/api/AuthRequirement$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/AuthRequirement;

    invoke-static {v0, p1}, Lcom/google/api/AuthRequirement;->access$400(Lcom/google/api/AuthRequirement;Ljava/lang/String;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public setAudiencesBytes(Lcom/google/protobuf/ByteString;)Lcom/google/api/AuthRequirement$Builder;
    .locals 1

    .line 532
    invoke-virtual {p0}, Lcom/google/api/AuthRequirement$Builder;->copyOnWrite()V

    .line 533
    iget-object v0, p0, Lcom/google/api/AuthRequirement$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/AuthRequirement;

    invoke-static {v0, p1}, Lcom/google/api/AuthRequirement;->access$600(Lcom/google/api/AuthRequirement;Lcom/google/protobuf/ByteString;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public setProviderId(Ljava/lang/String;)Lcom/google/api/AuthRequirement$Builder;
    .locals 1

    .line 371
    invoke-virtual {p0}, Lcom/google/api/AuthRequirement$Builder;->copyOnWrite()V

    .line 372
    iget-object v0, p0, Lcom/google/api/AuthRequirement$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/AuthRequirement;

    invoke-static {v0, p1}, Lcom/google/api/AuthRequirement;->access$100(Lcom/google/api/AuthRequirement;Ljava/lang/String;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public setProviderIdBytes(Lcom/google/protobuf/ByteString;)Lcom/google/api/AuthRequirement$Builder;
    .locals 1

    .line 403
    invoke-virtual {p0}, Lcom/google/api/AuthRequirement$Builder;->copyOnWrite()V

    .line 404
    iget-object v0, p0, Lcom/google/api/AuthRequirement$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/AuthRequirement;

    invoke-static {v0, p1}, Lcom/google/api/AuthRequirement;->access$300(Lcom/google/api/AuthRequirement;Lcom/google/protobuf/ByteString;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method
