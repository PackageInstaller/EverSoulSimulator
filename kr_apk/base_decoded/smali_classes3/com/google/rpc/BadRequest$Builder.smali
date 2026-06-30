.class public final Lcom/google/rpc/BadRequest$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "BadRequest.java"

# interfaces
.implements Lcom/google/rpc/BadRequestOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/rpc/BadRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/google/rpc/BadRequest;",
        "Lcom/google/rpc/BadRequest$Builder;",
        ">;",
        "Lcom/google/rpc/BadRequestOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 787
    invoke-static {}, Lcom/google/rpc/BadRequest;->access$800()Lcom/google/rpc/BadRequest;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method synthetic constructor <init>(Lcom/google/rpc/BadRequest$1;)V
    .locals 0

    .line 780
    invoke-direct {p0}, Lcom/google/rpc/BadRequest$Builder;-><init>()V

    return-void

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public addAllFieldViolations(Ljava/lang/Iterable;)Lcom/google/rpc/BadRequest$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/google/rpc/BadRequest$FieldViolation;",
            ">;)",
            "Lcom/google/rpc/BadRequest$Builder;"
        }
    .end annotation

    .line 912
    invoke-virtual {p0}, Lcom/google/rpc/BadRequest$Builder;->copyOnWrite()V

    .line 913
    iget-object v0, p0, Lcom/google/rpc/BadRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/BadRequest;

    invoke-static {v0, p1}, Lcom/google/rpc/BadRequest;->access$1200(Lcom/google/rpc/BadRequest;Ljava/lang/Iterable;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public addFieldViolations(ILcom/google/rpc/BadRequest$FieldViolation$Builder;)Lcom/google/rpc/BadRequest$Builder;
    .locals 1

    .line 898
    invoke-virtual {p0}, Lcom/google/rpc/BadRequest$Builder;->copyOnWrite()V

    .line 899
    iget-object v0, p0, Lcom/google/rpc/BadRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/BadRequest;

    .line 900
    invoke-virtual {p2}, Lcom/google/rpc/BadRequest$FieldViolation$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Lcom/google/rpc/BadRequest$FieldViolation;

    .line 899
    invoke-static {v0, p1, p2}, Lcom/google/rpc/BadRequest;->access$1100(Lcom/google/rpc/BadRequest;ILcom/google/rpc/BadRequest$FieldViolation;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public addFieldViolations(ILcom/google/rpc/BadRequest$FieldViolation;)Lcom/google/rpc/BadRequest$Builder;
    .locals 1

    .line 872
    invoke-virtual {p0}, Lcom/google/rpc/BadRequest$Builder;->copyOnWrite()V

    .line 873
    iget-object v0, p0, Lcom/google/rpc/BadRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/BadRequest;

    invoke-static {v0, p1, p2}, Lcom/google/rpc/BadRequest;->access$1100(Lcom/google/rpc/BadRequest;ILcom/google/rpc/BadRequest$FieldViolation;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public addFieldViolations(Lcom/google/rpc/BadRequest$FieldViolation$Builder;)Lcom/google/rpc/BadRequest$Builder;
    .locals 1

    .line 885
    invoke-virtual {p0}, Lcom/google/rpc/BadRequest$Builder;->copyOnWrite()V

    .line 886
    iget-object v0, p0, Lcom/google/rpc/BadRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/BadRequest;

    invoke-virtual {p1}, Lcom/google/rpc/BadRequest$FieldViolation$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/rpc/BadRequest$FieldViolation;

    invoke-static {v0, p1}, Lcom/google/rpc/BadRequest;->access$1000(Lcom/google/rpc/BadRequest;Lcom/google/rpc/BadRequest$FieldViolation;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public addFieldViolations(Lcom/google/rpc/BadRequest$FieldViolation;)Lcom/google/rpc/BadRequest$Builder;
    .locals 1

    .line 859
    invoke-virtual {p0}, Lcom/google/rpc/BadRequest$Builder;->copyOnWrite()V

    .line 860
    iget-object v0, p0, Lcom/google/rpc/BadRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/BadRequest;

    invoke-static {v0, p1}, Lcom/google/rpc/BadRequest;->access$1000(Lcom/google/rpc/BadRequest;Lcom/google/rpc/BadRequest$FieldViolation;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public clearFieldViolations()Lcom/google/rpc/BadRequest$Builder;
    .locals 1

    .line 924
    invoke-virtual {p0}, Lcom/google/rpc/BadRequest$Builder;->copyOnWrite()V

    .line 925
    iget-object v0, p0, Lcom/google/rpc/BadRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/BadRequest;

    invoke-static {v0}, Lcom/google/rpc/BadRequest;->access$1300(Lcom/google/rpc/BadRequest;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public getFieldViolations(I)Lcom/google/rpc/BadRequest$FieldViolation;
    .locals 1

    .line 822
    iget-object v0, p0, Lcom/google/rpc/BadRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/BadRequest;

    invoke-virtual {v0, p1}, Lcom/google/rpc/BadRequest;->getFieldViolations(I)Lcom/google/rpc/BadRequest$FieldViolation;

    move-result-object p1

    return-object p1

    nop

    .array-data 1
    .end array-data
.end method

.method public getFieldViolationsCount()I
    .locals 1

    .line 812
    iget-object v0, p0, Lcom/google/rpc/BadRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/BadRequest;

    invoke-virtual {v0}, Lcom/google/rpc/BadRequest;->getFieldViolationsCount()I

    move-result v0

    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getFieldViolationsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/rpc/BadRequest$FieldViolation;",
            ">;"
        }
    .end annotation

    .line 800
    iget-object v0, p0, Lcom/google/rpc/BadRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/BadRequest;

    .line 801
    invoke-virtual {v0}, Lcom/google/rpc/BadRequest;->getFieldViolationsList()Ljava/util/List;

    move-result-object v0

    .line 800
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public removeFieldViolations(I)Lcom/google/rpc/BadRequest$Builder;
    .locals 1

    .line 936
    invoke-virtual {p0}, Lcom/google/rpc/BadRequest$Builder;->copyOnWrite()V

    .line 937
    iget-object v0, p0, Lcom/google/rpc/BadRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/BadRequest;

    invoke-static {v0, p1}, Lcom/google/rpc/BadRequest;->access$1400(Lcom/google/rpc/BadRequest;I)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public setFieldViolations(ILcom/google/rpc/BadRequest$FieldViolation$Builder;)Lcom/google/rpc/BadRequest$Builder;
    .locals 1

    .line 846
    invoke-virtual {p0}, Lcom/google/rpc/BadRequest$Builder;->copyOnWrite()V

    .line 847
    iget-object v0, p0, Lcom/google/rpc/BadRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/BadRequest;

    .line 848
    invoke-virtual {p2}, Lcom/google/rpc/BadRequest$FieldViolation$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Lcom/google/rpc/BadRequest$FieldViolation;

    .line 847
    invoke-static {v0, p1, p2}, Lcom/google/rpc/BadRequest;->access$900(Lcom/google/rpc/BadRequest;ILcom/google/rpc/BadRequest$FieldViolation;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public setFieldViolations(ILcom/google/rpc/BadRequest$FieldViolation;)Lcom/google/rpc/BadRequest$Builder;
    .locals 1

    .line 833
    invoke-virtual {p0}, Lcom/google/rpc/BadRequest$Builder;->copyOnWrite()V

    .line 834
    iget-object v0, p0, Lcom/google/rpc/BadRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/BadRequest;

    invoke-static {v0, p1, p2}, Lcom/google/rpc/BadRequest;->access$900(Lcom/google/rpc/BadRequest;ILcom/google/rpc/BadRequest$FieldViolation;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method
