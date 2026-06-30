.class public final Lcom/google/rpc/PreconditionFailure$Violation$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "PreconditionFailure.java"

# interfaces
.implements Lcom/google/rpc/PreconditionFailure$ViolationOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/rpc/PreconditionFailure$Violation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/google/rpc/PreconditionFailure$Violation;",
        "Lcom/google/rpc/PreconditionFailure$Violation$Builder;",
        ">;",
        "Lcom/google/rpc/PreconditionFailure$ViolationOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 443
    invoke-static {}, Lcom/google/rpc/PreconditionFailure$Violation;->access$000()Lcom/google/rpc/PreconditionFailure$Violation;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method synthetic constructor <init>(Lcom/google/rpc/PreconditionFailure$1;)V
    .locals 0

    .line 436
    invoke-direct {p0}, Lcom/google/rpc/PreconditionFailure$Violation$Builder;-><init>()V

    return-void

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public clearDescription()Lcom/google/rpc/PreconditionFailure$Violation$Builder;
    .locals 1

    .line 662
    invoke-virtual {p0}, Lcom/google/rpc/PreconditionFailure$Violation$Builder;->copyOnWrite()V

    .line 663
    iget-object v0, p0, Lcom/google/rpc/PreconditionFailure$Violation$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/PreconditionFailure$Violation;

    invoke-static {v0}, Lcom/google/rpc/PreconditionFailure$Violation;->access$800(Lcom/google/rpc/PreconditionFailure$Violation;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public clearSubject()Lcom/google/rpc/PreconditionFailure$Violation$Builder;
    .locals 1

    .line 583
    invoke-virtual {p0}, Lcom/google/rpc/PreconditionFailure$Violation$Builder;->copyOnWrite()V

    .line 584
    iget-object v0, p0, Lcom/google/rpc/PreconditionFailure$Violation$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/PreconditionFailure$Violation;

    invoke-static {v0}, Lcom/google/rpc/PreconditionFailure$Violation;->access$500(Lcom/google/rpc/PreconditionFailure$Violation;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public clearType()Lcom/google/rpc/PreconditionFailure$Violation$Builder;
    .locals 1

    .line 504
    invoke-virtual {p0}, Lcom/google/rpc/PreconditionFailure$Violation$Builder;->copyOnWrite()V

    .line 505
    iget-object v0, p0, Lcom/google/rpc/PreconditionFailure$Violation$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/PreconditionFailure$Violation;

    invoke-static {v0}, Lcom/google/rpc/PreconditionFailure$Violation;->access$200(Lcom/google/rpc/PreconditionFailure$Violation;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .line 617
    iget-object v0, p0, Lcom/google/rpc/PreconditionFailure$Violation$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/PreconditionFailure$Violation;

    invoke-virtual {v0}, Lcom/google/rpc/PreconditionFailure$Violation;->getDescription()Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getDescriptionBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 632
    iget-object v0, p0, Lcom/google/rpc/PreconditionFailure$Violation$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/PreconditionFailure$Violation;

    invoke-virtual {v0}, Lcom/google/rpc/PreconditionFailure$Violation;->getDescriptionBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getSubject()Ljava/lang/String;
    .locals 1

    .line 538
    iget-object v0, p0, Lcom/google/rpc/PreconditionFailure$Violation$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/PreconditionFailure$Violation;

    invoke-virtual {v0}, Lcom/google/rpc/PreconditionFailure$Violation;->getSubject()Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getSubjectBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 553
    iget-object v0, p0, Lcom/google/rpc/PreconditionFailure$Violation$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/PreconditionFailure$Violation;

    invoke-virtual {v0}, Lcom/google/rpc/PreconditionFailure$Violation;->getSubjectBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .line 459
    iget-object v0, p0, Lcom/google/rpc/PreconditionFailure$Violation$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/PreconditionFailure$Violation;

    invoke-virtual {v0}, Lcom/google/rpc/PreconditionFailure$Violation;->getType()Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getTypeBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 474
    iget-object v0, p0, Lcom/google/rpc/PreconditionFailure$Violation$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/PreconditionFailure$Violation;

    invoke-virtual {v0}, Lcom/google/rpc/PreconditionFailure$Violation;->getTypeBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public setDescription(Ljava/lang/String;)Lcom/google/rpc/PreconditionFailure$Violation$Builder;
    .locals 1

    .line 647
    invoke-virtual {p0}, Lcom/google/rpc/PreconditionFailure$Violation$Builder;->copyOnWrite()V

    .line 648
    iget-object v0, p0, Lcom/google/rpc/PreconditionFailure$Violation$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/PreconditionFailure$Violation;

    invoke-static {v0, p1}, Lcom/google/rpc/PreconditionFailure$Violation;->access$700(Lcom/google/rpc/PreconditionFailure$Violation;Ljava/lang/String;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public setDescriptionBytes(Lcom/google/protobuf/ByteString;)Lcom/google/rpc/PreconditionFailure$Violation$Builder;
    .locals 1

    .line 679
    invoke-virtual {p0}, Lcom/google/rpc/PreconditionFailure$Violation$Builder;->copyOnWrite()V

    .line 680
    iget-object v0, p0, Lcom/google/rpc/PreconditionFailure$Violation$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/PreconditionFailure$Violation;

    invoke-static {v0, p1}, Lcom/google/rpc/PreconditionFailure$Violation;->access$900(Lcom/google/rpc/PreconditionFailure$Violation;Lcom/google/protobuf/ByteString;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public setSubject(Ljava/lang/String;)Lcom/google/rpc/PreconditionFailure$Violation$Builder;
    .locals 1

    .line 568
    invoke-virtual {p0}, Lcom/google/rpc/PreconditionFailure$Violation$Builder;->copyOnWrite()V

    .line 569
    iget-object v0, p0, Lcom/google/rpc/PreconditionFailure$Violation$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/PreconditionFailure$Violation;

    invoke-static {v0, p1}, Lcom/google/rpc/PreconditionFailure$Violation;->access$400(Lcom/google/rpc/PreconditionFailure$Violation;Ljava/lang/String;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public setSubjectBytes(Lcom/google/protobuf/ByteString;)Lcom/google/rpc/PreconditionFailure$Violation$Builder;
    .locals 1

    .line 600
    invoke-virtual {p0}, Lcom/google/rpc/PreconditionFailure$Violation$Builder;->copyOnWrite()V

    .line 601
    iget-object v0, p0, Lcom/google/rpc/PreconditionFailure$Violation$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/PreconditionFailure$Violation;

    invoke-static {v0, p1}, Lcom/google/rpc/PreconditionFailure$Violation;->access$600(Lcom/google/rpc/PreconditionFailure$Violation;Lcom/google/protobuf/ByteString;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public setType(Ljava/lang/String;)Lcom/google/rpc/PreconditionFailure$Violation$Builder;
    .locals 1

    .line 489
    invoke-virtual {p0}, Lcom/google/rpc/PreconditionFailure$Violation$Builder;->copyOnWrite()V

    .line 490
    iget-object v0, p0, Lcom/google/rpc/PreconditionFailure$Violation$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/PreconditionFailure$Violation;

    invoke-static {v0, p1}, Lcom/google/rpc/PreconditionFailure$Violation;->access$100(Lcom/google/rpc/PreconditionFailure$Violation;Ljava/lang/String;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public setTypeBytes(Lcom/google/protobuf/ByteString;)Lcom/google/rpc/PreconditionFailure$Violation$Builder;
    .locals 1

    .line 521
    invoke-virtual {p0}, Lcom/google/rpc/PreconditionFailure$Violation$Builder;->copyOnWrite()V

    .line 522
    iget-object v0, p0, Lcom/google/rpc/PreconditionFailure$Violation$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/PreconditionFailure$Violation;

    invoke-static {v0, p1}, Lcom/google/rpc/PreconditionFailure$Violation;->access$300(Lcom/google/rpc/PreconditionFailure$Violation;Lcom/google/protobuf/ByteString;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method
