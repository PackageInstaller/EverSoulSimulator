.class public final Lcom/google/rpc/QuotaFailure$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "QuotaFailure.java"

# interfaces
.implements Lcom/google/rpc/QuotaFailureOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/rpc/QuotaFailure;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/google/rpc/QuotaFailure;",
        "Lcom/google/rpc/QuotaFailure$Builder;",
        ">;",
        "Lcom/google/rpc/QuotaFailureOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 863
    invoke-static {}, Lcom/google/rpc/QuotaFailure;->access$800()Lcom/google/rpc/QuotaFailure;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method synthetic constructor <init>(Lcom/google/rpc/QuotaFailure$1;)V
    .locals 0

    .line 856
    invoke-direct {p0}, Lcom/google/rpc/QuotaFailure$Builder;-><init>()V

    return-void

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public addAllViolations(Ljava/lang/Iterable;)Lcom/google/rpc/QuotaFailure$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/google/rpc/QuotaFailure$Violation;",
            ">;)",
            "Lcom/google/rpc/QuotaFailure$Builder;"
        }
    .end annotation

    .line 988
    invoke-virtual {p0}, Lcom/google/rpc/QuotaFailure$Builder;->copyOnWrite()V

    .line 989
    iget-object v0, p0, Lcom/google/rpc/QuotaFailure$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/QuotaFailure;

    invoke-static {v0, p1}, Lcom/google/rpc/QuotaFailure;->access$1200(Lcom/google/rpc/QuotaFailure;Ljava/lang/Iterable;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public addViolations(ILcom/google/rpc/QuotaFailure$Violation$Builder;)Lcom/google/rpc/QuotaFailure$Builder;
    .locals 1

    .line 974
    invoke-virtual {p0}, Lcom/google/rpc/QuotaFailure$Builder;->copyOnWrite()V

    .line 975
    iget-object v0, p0, Lcom/google/rpc/QuotaFailure$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/QuotaFailure;

    .line 976
    invoke-virtual {p2}, Lcom/google/rpc/QuotaFailure$Violation$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Lcom/google/rpc/QuotaFailure$Violation;

    .line 975
    invoke-static {v0, p1, p2}, Lcom/google/rpc/QuotaFailure;->access$1100(Lcom/google/rpc/QuotaFailure;ILcom/google/rpc/QuotaFailure$Violation;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public addViolations(ILcom/google/rpc/QuotaFailure$Violation;)Lcom/google/rpc/QuotaFailure$Builder;
    .locals 1

    .line 948
    invoke-virtual {p0}, Lcom/google/rpc/QuotaFailure$Builder;->copyOnWrite()V

    .line 949
    iget-object v0, p0, Lcom/google/rpc/QuotaFailure$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/QuotaFailure;

    invoke-static {v0, p1, p2}, Lcom/google/rpc/QuotaFailure;->access$1100(Lcom/google/rpc/QuotaFailure;ILcom/google/rpc/QuotaFailure$Violation;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public addViolations(Lcom/google/rpc/QuotaFailure$Violation$Builder;)Lcom/google/rpc/QuotaFailure$Builder;
    .locals 1

    .line 961
    invoke-virtual {p0}, Lcom/google/rpc/QuotaFailure$Builder;->copyOnWrite()V

    .line 962
    iget-object v0, p0, Lcom/google/rpc/QuotaFailure$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/QuotaFailure;

    invoke-virtual {p1}, Lcom/google/rpc/QuotaFailure$Violation$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/rpc/QuotaFailure$Violation;

    invoke-static {v0, p1}, Lcom/google/rpc/QuotaFailure;->access$1000(Lcom/google/rpc/QuotaFailure;Lcom/google/rpc/QuotaFailure$Violation;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public addViolations(Lcom/google/rpc/QuotaFailure$Violation;)Lcom/google/rpc/QuotaFailure$Builder;
    .locals 1

    .line 935
    invoke-virtual {p0}, Lcom/google/rpc/QuotaFailure$Builder;->copyOnWrite()V

    .line 936
    iget-object v0, p0, Lcom/google/rpc/QuotaFailure$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/QuotaFailure;

    invoke-static {v0, p1}, Lcom/google/rpc/QuotaFailure;->access$1000(Lcom/google/rpc/QuotaFailure;Lcom/google/rpc/QuotaFailure$Violation;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public clearViolations()Lcom/google/rpc/QuotaFailure$Builder;
    .locals 1

    .line 1000
    invoke-virtual {p0}, Lcom/google/rpc/QuotaFailure$Builder;->copyOnWrite()V

    .line 1001
    iget-object v0, p0, Lcom/google/rpc/QuotaFailure$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/QuotaFailure;

    invoke-static {v0}, Lcom/google/rpc/QuotaFailure;->access$1300(Lcom/google/rpc/QuotaFailure;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public getViolations(I)Lcom/google/rpc/QuotaFailure$Violation;
    .locals 1

    .line 898
    iget-object v0, p0, Lcom/google/rpc/QuotaFailure$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/QuotaFailure;

    invoke-virtual {v0, p1}, Lcom/google/rpc/QuotaFailure;->getViolations(I)Lcom/google/rpc/QuotaFailure$Violation;

    move-result-object p1

    return-object p1

    nop

    .array-data 1
    .end array-data
.end method

.method public getViolationsCount()I
    .locals 1

    .line 888
    iget-object v0, p0, Lcom/google/rpc/QuotaFailure$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/QuotaFailure;

    invoke-virtual {v0}, Lcom/google/rpc/QuotaFailure;->getViolationsCount()I

    move-result v0

    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getViolationsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/rpc/QuotaFailure$Violation;",
            ">;"
        }
    .end annotation

    .line 876
    iget-object v0, p0, Lcom/google/rpc/QuotaFailure$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/QuotaFailure;

    .line 877
    invoke-virtual {v0}, Lcom/google/rpc/QuotaFailure;->getViolationsList()Ljava/util/List;

    move-result-object v0

    .line 876
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public removeViolations(I)Lcom/google/rpc/QuotaFailure$Builder;
    .locals 1

    .line 1012
    invoke-virtual {p0}, Lcom/google/rpc/QuotaFailure$Builder;->copyOnWrite()V

    .line 1013
    iget-object v0, p0, Lcom/google/rpc/QuotaFailure$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/QuotaFailure;

    invoke-static {v0, p1}, Lcom/google/rpc/QuotaFailure;->access$1400(Lcom/google/rpc/QuotaFailure;I)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public setViolations(ILcom/google/rpc/QuotaFailure$Violation$Builder;)Lcom/google/rpc/QuotaFailure$Builder;
    .locals 1

    .line 922
    invoke-virtual {p0}, Lcom/google/rpc/QuotaFailure$Builder;->copyOnWrite()V

    .line 923
    iget-object v0, p0, Lcom/google/rpc/QuotaFailure$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/QuotaFailure;

    .line 924
    invoke-virtual {p2}, Lcom/google/rpc/QuotaFailure$Violation$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Lcom/google/rpc/QuotaFailure$Violation;

    .line 923
    invoke-static {v0, p1, p2}, Lcom/google/rpc/QuotaFailure;->access$900(Lcom/google/rpc/QuotaFailure;ILcom/google/rpc/QuotaFailure$Violation;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public setViolations(ILcom/google/rpc/QuotaFailure$Violation;)Lcom/google/rpc/QuotaFailure$Builder;
    .locals 1

    .line 909
    invoke-virtual {p0}, Lcom/google/rpc/QuotaFailure$Builder;->copyOnWrite()V

    .line 910
    iget-object v0, p0, Lcom/google/rpc/QuotaFailure$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/QuotaFailure;

    invoke-static {v0, p1, p2}, Lcom/google/rpc/QuotaFailure;->access$900(Lcom/google/rpc/QuotaFailure;ILcom/google/rpc/QuotaFailure$Violation;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method
