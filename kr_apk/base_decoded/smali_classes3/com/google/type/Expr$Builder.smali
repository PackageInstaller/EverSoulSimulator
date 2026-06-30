.class public final Lcom/google/type/Expr$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Expr.java"

# interfaces
.implements Lcom/google/type/ExprOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/type/Expr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/google/type/Expr;",
        "Lcom/google/type/Expr$Builder;",
        ">;",
        "Lcom/google/type/ExprOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 428
    invoke-static {}, Lcom/google/type/Expr;->access$000()Lcom/google/type/Expr;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method synthetic constructor <init>(Lcom/google/type/Expr$1;)V
    .locals 0

    .line 421
    invoke-direct {p0}, Lcom/google/type/Expr$Builder;-><init>()V

    return-void

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public clearDescription()Lcom/google/type/Expr$Builder;
    .locals 1

    .line 648
    invoke-virtual {p0}, Lcom/google/type/Expr$Builder;->copyOnWrite()V

    .line 649
    iget-object v0, p0, Lcom/google/type/Expr$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/type/Expr;

    invoke-static {v0}, Lcom/google/type/Expr;->access$800(Lcom/google/type/Expr;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public clearExpression()Lcom/google/type/Expr$Builder;
    .locals 1

    .line 493
    invoke-virtual {p0}, Lcom/google/type/Expr$Builder;->copyOnWrite()V

    .line 494
    iget-object v0, p0, Lcom/google/type/Expr$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/type/Expr;

    invoke-static {v0}, Lcom/google/type/Expr;->access$200(Lcom/google/type/Expr;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public clearLocation()Lcom/google/type/Expr$Builder;
    .locals 1

    .line 722
    invoke-virtual {p0}, Lcom/google/type/Expr$Builder;->copyOnWrite()V

    .line 723
    iget-object v0, p0, Lcom/google/type/Expr$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/type/Expr;

    invoke-static {v0}, Lcom/google/type/Expr;->access$1100(Lcom/google/type/Expr;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public clearTitle()Lcom/google/type/Expr$Builder;
    .locals 1

    .line 573
    invoke-virtual {p0}, Lcom/google/type/Expr$Builder;->copyOnWrite()V

    .line 574
    iget-object v0, p0, Lcom/google/type/Expr$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/type/Expr;

    invoke-static {v0}, Lcom/google/type/Expr;->access$500(Lcom/google/type/Expr;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .line 606
    iget-object v0, p0, Lcom/google/type/Expr$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/type/Expr;

    invoke-virtual {v0}, Lcom/google/type/Expr;->getDescription()Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getDescriptionBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 620
    iget-object v0, p0, Lcom/google/type/Expr$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/type/Expr;

    invoke-virtual {v0}, Lcom/google/type/Expr;->getDescriptionBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getExpression()Ljava/lang/String;
    .locals 1

    .line 445
    iget-object v0, p0, Lcom/google/type/Expr$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/type/Expr;

    invoke-virtual {v0}, Lcom/google/type/Expr;->getExpression()Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getExpressionBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 461
    iget-object v0, p0, Lcom/google/type/Expr$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/type/Expr;

    invoke-virtual {v0}, Lcom/google/type/Expr;->getExpressionBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getLocation()Ljava/lang/String;
    .locals 1

    .line 680
    iget-object v0, p0, Lcom/google/type/Expr$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/type/Expr;

    invoke-virtual {v0}, Lcom/google/type/Expr;->getLocation()Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getLocationBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 694
    iget-object v0, p0, Lcom/google/type/Expr$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/type/Expr;

    invoke-virtual {v0}, Lcom/google/type/Expr;->getLocationBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 528
    iget-object v0, p0, Lcom/google/type/Expr$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/type/Expr;

    invoke-virtual {v0}, Lcom/google/type/Expr;->getTitle()Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getTitleBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 543
    iget-object v0, p0, Lcom/google/type/Expr$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/type/Expr;

    invoke-virtual {v0}, Lcom/google/type/Expr;->getTitleBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public setDescription(Ljava/lang/String;)Lcom/google/type/Expr$Builder;
    .locals 1

    .line 634
    invoke-virtual {p0}, Lcom/google/type/Expr$Builder;->copyOnWrite()V

    .line 635
    iget-object v0, p0, Lcom/google/type/Expr$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/type/Expr;

    invoke-static {v0, p1}, Lcom/google/type/Expr;->access$700(Lcom/google/type/Expr;Ljava/lang/String;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public setDescriptionBytes(Lcom/google/protobuf/ByteString;)Lcom/google/type/Expr$Builder;
    .locals 1

    .line 664
    invoke-virtual {p0}, Lcom/google/type/Expr$Builder;->copyOnWrite()V

    .line 665
    iget-object v0, p0, Lcom/google/type/Expr$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/type/Expr;

    invoke-static {v0, p1}, Lcom/google/type/Expr;->access$900(Lcom/google/type/Expr;Lcom/google/protobuf/ByteString;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public setExpression(Ljava/lang/String;)Lcom/google/type/Expr$Builder;
    .locals 1

    .line 477
    invoke-virtual {p0}, Lcom/google/type/Expr$Builder;->copyOnWrite()V

    .line 478
    iget-object v0, p0, Lcom/google/type/Expr$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/type/Expr;

    invoke-static {v0, p1}, Lcom/google/type/Expr;->access$100(Lcom/google/type/Expr;Ljava/lang/String;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public setExpressionBytes(Lcom/google/protobuf/ByteString;)Lcom/google/type/Expr$Builder;
    .locals 1

    .line 511
    invoke-virtual {p0}, Lcom/google/type/Expr$Builder;->copyOnWrite()V

    .line 512
    iget-object v0, p0, Lcom/google/type/Expr$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/type/Expr;

    invoke-static {v0, p1}, Lcom/google/type/Expr;->access$300(Lcom/google/type/Expr;Lcom/google/protobuf/ByteString;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public setLocation(Ljava/lang/String;)Lcom/google/type/Expr$Builder;
    .locals 1

    .line 708
    invoke-virtual {p0}, Lcom/google/type/Expr$Builder;->copyOnWrite()V

    .line 709
    iget-object v0, p0, Lcom/google/type/Expr$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/type/Expr;

    invoke-static {v0, p1}, Lcom/google/type/Expr;->access$1000(Lcom/google/type/Expr;Ljava/lang/String;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public setLocationBytes(Lcom/google/protobuf/ByteString;)Lcom/google/type/Expr$Builder;
    .locals 1

    .line 738
    invoke-virtual {p0}, Lcom/google/type/Expr$Builder;->copyOnWrite()V

    .line 739
    iget-object v0, p0, Lcom/google/type/Expr$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/type/Expr;

    invoke-static {v0, p1}, Lcom/google/type/Expr;->access$1200(Lcom/google/type/Expr;Lcom/google/protobuf/ByteString;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public setTitle(Ljava/lang/String;)Lcom/google/type/Expr$Builder;
    .locals 1

    .line 558
    invoke-virtual {p0}, Lcom/google/type/Expr$Builder;->copyOnWrite()V

    .line 559
    iget-object v0, p0, Lcom/google/type/Expr$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/type/Expr;

    invoke-static {v0, p1}, Lcom/google/type/Expr;->access$400(Lcom/google/type/Expr;Ljava/lang/String;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public setTitleBytes(Lcom/google/protobuf/ByteString;)Lcom/google/type/Expr$Builder;
    .locals 1

    .line 590
    invoke-virtual {p0}, Lcom/google/type/Expr$Builder;->copyOnWrite()V

    .line 591
    iget-object v0, p0, Lcom/google/type/Expr$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/type/Expr;

    invoke-static {v0, p1}, Lcom/google/type/Expr;->access$600(Lcom/google/type/Expr;Lcom/google/protobuf/ByteString;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method
