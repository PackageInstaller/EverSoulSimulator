.class public final Lcom/google/api/ResourceReference$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "ResourceReference.java"

# interfaces
.implements Lcom/google/api/ResourceReferenceOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/api/ResourceReference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/google/api/ResourceReference;",
        "Lcom/google/api/ResourceReference$Builder;",
        ">;",
        "Lcom/google/api/ResourceReferenceOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 323
    invoke-static {}, Lcom/google/api/ResourceReference;->access$000()Lcom/google/api/ResourceReference;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method synthetic constructor <init>(Lcom/google/api/ResourceReference$1;)V
    .locals 0

    .line 316
    invoke-direct {p0}, Lcom/google/api/ResourceReference$Builder;-><init>()V

    return-void

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public clearChildType()Lcom/google/api/ResourceReference$Builder;
    .locals 1

    .line 507
    invoke-virtual {p0}, Lcom/google/api/ResourceReference$Builder;->copyOnWrite()V

    .line 508
    iget-object v0, p0, Lcom/google/api/ResourceReference$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/ResourceReference;

    invoke-static {v0}, Lcom/google/api/ResourceReference;->access$500(Lcom/google/api/ResourceReference;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public clearType()Lcom/google/api/ResourceReference$Builder;
    .locals 1

    .line 400
    invoke-virtual {p0}, Lcom/google/api/ResourceReference$Builder;->copyOnWrite()V

    .line 401
    iget-object v0, p0, Lcom/google/api/ResourceReference$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/ResourceReference;

    invoke-static {v0}, Lcom/google/api/ResourceReference;->access$200(Lcom/google/api/ResourceReference;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public getChildType()Ljava/lang/String;
    .locals 1

    .line 444
    iget-object v0, p0, Lcom/google/api/ResourceReference$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/ResourceReference;

    invoke-virtual {v0}, Lcom/google/api/ResourceReference;->getChildType()Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getChildTypeBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 465
    iget-object v0, p0, Lcom/google/api/ResourceReference$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/ResourceReference;

    invoke-virtual {v0}, Lcom/google/api/ResourceReference;->getChildTypeBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .line 343
    iget-object v0, p0, Lcom/google/api/ResourceReference$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/ResourceReference;

    invoke-virtual {v0}, Lcom/google/api/ResourceReference;->getType()Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getTypeBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 362
    iget-object v0, p0, Lcom/google/api/ResourceReference$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/ResourceReference;

    invoke-virtual {v0}, Lcom/google/api/ResourceReference;->getTypeBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public setChildType(Ljava/lang/String;)Lcom/google/api/ResourceReference$Builder;
    .locals 1

    .line 486
    invoke-virtual {p0}, Lcom/google/api/ResourceReference$Builder;->copyOnWrite()V

    .line 487
    iget-object v0, p0, Lcom/google/api/ResourceReference$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/ResourceReference;

    invoke-static {v0, p1}, Lcom/google/api/ResourceReference;->access$400(Lcom/google/api/ResourceReference;Ljava/lang/String;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public setChildTypeBytes(Lcom/google/protobuf/ByteString;)Lcom/google/api/ResourceReference$Builder;
    .locals 1

    .line 530
    invoke-virtual {p0}, Lcom/google/api/ResourceReference$Builder;->copyOnWrite()V

    .line 531
    iget-object v0, p0, Lcom/google/api/ResourceReference$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/ResourceReference;

    invoke-static {v0, p1}, Lcom/google/api/ResourceReference;->access$600(Lcom/google/api/ResourceReference;Lcom/google/protobuf/ByteString;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public setType(Ljava/lang/String;)Lcom/google/api/ResourceReference$Builder;
    .locals 1

    .line 381
    invoke-virtual {p0}, Lcom/google/api/ResourceReference$Builder;->copyOnWrite()V

    .line 382
    iget-object v0, p0, Lcom/google/api/ResourceReference$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/ResourceReference;

    invoke-static {v0, p1}, Lcom/google/api/ResourceReference;->access$100(Lcom/google/api/ResourceReference;Ljava/lang/String;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public setTypeBytes(Lcom/google/protobuf/ByteString;)Lcom/google/api/ResourceReference$Builder;
    .locals 1

    .line 421
    invoke-virtual {p0}, Lcom/google/api/ResourceReference$Builder;->copyOnWrite()V

    .line 422
    iget-object v0, p0, Lcom/google/api/ResourceReference$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/ResourceReference;

    invoke-static {v0, p1}, Lcom/google/api/ResourceReference;->access$300(Lcom/google/api/ResourceReference;Lcom/google/protobuf/ByteString;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method
