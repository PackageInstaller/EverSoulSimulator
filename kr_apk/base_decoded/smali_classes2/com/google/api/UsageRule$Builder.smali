.class public final Lcom/google/api/UsageRule$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "UsageRule.java"

# interfaces
.implements Lcom/google/api/UsageRuleOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/api/UsageRule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/google/api/UsageRule;",
        "Lcom/google/api/UsageRule$Builder;",
        ">;",
        "Lcom/google/api/UsageRuleOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 315
    invoke-static {}, Lcom/google/api/UsageRule;->access$000()Lcom/google/api/UsageRule;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method synthetic constructor <init>(Lcom/google/api/UsageRule$1;)V
    .locals 0

    .line 308
    invoke-direct {p0}, Lcom/google/api/UsageRule$Builder;-><init>()V

    return-void

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public clearAllowUnregisteredCalls()Lcom/google/api/UsageRule$Builder;
    .locals 1

    .line 436
    invoke-virtual {p0}, Lcom/google/api/UsageRule$Builder;->copyOnWrite()V

    .line 437
    iget-object v0, p0, Lcom/google/api/UsageRule$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/UsageRule;

    invoke-static {v0}, Lcom/google/api/UsageRule;->access$500(Lcom/google/api/UsageRule;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public clearSelector()Lcom/google/api/UsageRule$Builder;
    .locals 1

    .line 376
    invoke-virtual {p0}, Lcom/google/api/UsageRule$Builder;->copyOnWrite()V

    .line 377
    iget-object v0, p0, Lcom/google/api/UsageRule$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/UsageRule;

    invoke-static {v0}, Lcom/google/api/UsageRule;->access$200(Lcom/google/api/UsageRule;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public clearSkipServiceControl()Lcom/google/api/UsageRule$Builder;
    .locals 1

    .line 485
    invoke-virtual {p0}, Lcom/google/api/UsageRule$Builder;->copyOnWrite()V

    .line 486
    iget-object v0, p0, Lcom/google/api/UsageRule$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/UsageRule;

    invoke-static {v0}, Lcom/google/api/UsageRule;->access$700(Lcom/google/api/UsageRule;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public getAllowUnregisteredCalls()Z
    .locals 1

    .line 409
    iget-object v0, p0, Lcom/google/api/UsageRule$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/UsageRule;

    invoke-virtual {v0}, Lcom/google/api/UsageRule;->getAllowUnregisteredCalls()Z

    move-result v0

    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getSelector()Ljava/lang/String;
    .locals 1

    .line 331
    iget-object v0, p0, Lcom/google/api/UsageRule$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/UsageRule;

    invoke-virtual {v0}, Lcom/google/api/UsageRule;->getSelector()Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getSelectorBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 346
    iget-object v0, p0, Lcom/google/api/UsageRule$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/UsageRule;

    invoke-virtual {v0}, Lcom/google/api/UsageRule;->getSelectorBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getSkipServiceControl()Z
    .locals 1

    .line 454
    iget-object v0, p0, Lcom/google/api/UsageRule$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/UsageRule;

    invoke-virtual {v0}, Lcom/google/api/UsageRule;->getSkipServiceControl()Z

    move-result v0

    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public setAllowUnregisteredCalls(Z)Lcom/google/api/UsageRule$Builder;
    .locals 1

    .line 422
    invoke-virtual {p0}, Lcom/google/api/UsageRule$Builder;->copyOnWrite()V

    .line 423
    iget-object v0, p0, Lcom/google/api/UsageRule$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/UsageRule;

    invoke-static {v0, p1}, Lcom/google/api/UsageRule;->access$400(Lcom/google/api/UsageRule;Z)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public setSelector(Ljava/lang/String;)Lcom/google/api/UsageRule$Builder;
    .locals 1

    .line 361
    invoke-virtual {p0}, Lcom/google/api/UsageRule$Builder;->copyOnWrite()V

    .line 362
    iget-object v0, p0, Lcom/google/api/UsageRule$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/UsageRule;

    invoke-static {v0, p1}, Lcom/google/api/UsageRule;->access$100(Lcom/google/api/UsageRule;Ljava/lang/String;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public setSelectorBytes(Lcom/google/protobuf/ByteString;)Lcom/google/api/UsageRule$Builder;
    .locals 1

    .line 393
    invoke-virtual {p0}, Lcom/google/api/UsageRule$Builder;->copyOnWrite()V

    .line 394
    iget-object v0, p0, Lcom/google/api/UsageRule$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/UsageRule;

    invoke-static {v0, p1}, Lcom/google/api/UsageRule;->access$300(Lcom/google/api/UsageRule;Lcom/google/protobuf/ByteString;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public setSkipServiceControl(Z)Lcom/google/api/UsageRule$Builder;
    .locals 1

    .line 469
    invoke-virtual {p0}, Lcom/google/api/UsageRule$Builder;->copyOnWrite()V

    .line 470
    iget-object v0, p0, Lcom/google/api/UsageRule$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/UsageRule;

    invoke-static {v0, p1}, Lcom/google/api/UsageRule;->access$600(Lcom/google/api/UsageRule;Z)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method
