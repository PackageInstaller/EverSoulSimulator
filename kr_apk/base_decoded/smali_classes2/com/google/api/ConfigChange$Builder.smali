.class public final Lcom/google/api/ConfigChange$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "ConfigChange.java"

# interfaces
.implements Lcom/google/api/ConfigChangeOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/api/ConfigChange;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/google/api/ConfigChange;",
        "Lcom/google/api/ConfigChange$Builder;",
        ">;",
        "Lcom/google/api/ConfigChangeOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 589
    invoke-static {}, Lcom/google/api/ConfigChange;->access$000()Lcom/google/api/ConfigChange;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method synthetic constructor <init>(Lcom/google/api/ConfigChange$1;)V
    .locals 0

    .line 582
    invoke-direct {p0}, Lcom/google/api/ConfigChange$Builder;-><init>()V

    return-void

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public addAdvices(ILcom/google/api/Advice$Builder;)Lcom/google/api/ConfigChange$Builder;
    .locals 1

    .line 1032
    invoke-virtual {p0}, Lcom/google/api/ConfigChange$Builder;->copyOnWrite()V

    .line 1033
    iget-object v0, p0, Lcom/google/api/ConfigChange$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/ConfigChange;

    .line 1034
    invoke-virtual {p2}, Lcom/google/api/Advice$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Lcom/google/api/Advice;

    .line 1033
    invoke-static {v0, p1, p2}, Lcom/google/api/ConfigChange;->access$1500(Lcom/google/api/ConfigChange;ILcom/google/api/Advice;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public addAdvices(ILcom/google/api/Advice;)Lcom/google/api/ConfigChange$Builder;
    .locals 1

    .line 1004
    invoke-virtual {p0}, Lcom/google/api/ConfigChange$Builder;->copyOnWrite()V

    .line 1005
    iget-object v0, p0, Lcom/google/api/ConfigChange$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/ConfigChange;

    invoke-static {v0, p1, p2}, Lcom/google/api/ConfigChange;->access$1500(Lcom/google/api/ConfigChange;ILcom/google/api/Advice;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public addAdvices(Lcom/google/api/Advice$Builder;)Lcom/google/api/ConfigChange$Builder;
    .locals 1

    .line 1018
    invoke-virtual {p0}, Lcom/google/api/ConfigChange$Builder;->copyOnWrite()V

    .line 1019
    iget-object v0, p0, Lcom/google/api/ConfigChange$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/ConfigChange;

    invoke-virtual {p1}, Lcom/google/api/Advice$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/api/Advice;

    invoke-static {v0, p1}, Lcom/google/api/ConfigChange;->access$1400(Lcom/google/api/ConfigChange;Lcom/google/api/Advice;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public addAdvices(Lcom/google/api/Advice;)Lcom/google/api/ConfigChange$Builder;
    .locals 1

    .line 990
    invoke-virtual {p0}, Lcom/google/api/ConfigChange$Builder;->copyOnWrite()V

    .line 991
    iget-object v0, p0, Lcom/google/api/ConfigChange$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/ConfigChange;

    invoke-static {v0, p1}, Lcom/google/api/ConfigChange;->access$1400(Lcom/google/api/ConfigChange;Lcom/google/api/Advice;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public addAllAdvices(Ljava/lang/Iterable;)Lcom/google/api/ConfigChange$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/google/api/Advice;",
            ">;)",
            "Lcom/google/api/ConfigChange$Builder;"
        }
    .end annotation

    .line 1047
    invoke-virtual {p0}, Lcom/google/api/ConfigChange$Builder;->copyOnWrite()V

    .line 1048
    iget-object v0, p0, Lcom/google/api/ConfigChange$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/ConfigChange;

    invoke-static {v0, p1}, Lcom/google/api/ConfigChange;->access$1600(Lcom/google/api/ConfigChange;Ljava/lang/Iterable;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public clearAdvices()Lcom/google/api/ConfigChange$Builder;
    .locals 1

    .line 1060
    invoke-virtual {p0}, Lcom/google/api/ConfigChange$Builder;->copyOnWrite()V

    .line 1061
    iget-object v0, p0, Lcom/google/api/ConfigChange$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/ConfigChange;

    invoke-static {v0}, Lcom/google/api/ConfigChange;->access$1700(Lcom/google/api/ConfigChange;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public clearChangeType()Lcom/google/api/ConfigChange$Builder;
    .locals 1

    .line 911
    invoke-virtual {p0}, Lcom/google/api/ConfigChange$Builder;->copyOnWrite()V

    .line 912
    iget-object v0, p0, Lcom/google/api/ConfigChange$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/ConfigChange;

    invoke-static {v0}, Lcom/google/api/ConfigChange;->access$1200(Lcom/google/api/ConfigChange;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public clearElement()Lcom/google/api/ConfigChange$Builder;
    .locals 1

    .line 674
    invoke-virtual {p0}, Lcom/google/api/ConfigChange$Builder;->copyOnWrite()V

    .line 675
    iget-object v0, p0, Lcom/google/api/ConfigChange$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/ConfigChange;

    invoke-static {v0}, Lcom/google/api/ConfigChange;->access$200(Lcom/google/api/ConfigChange;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public clearNewValue()Lcom/google/api/ConfigChange$Builder;
    .locals 1

    .line 829
    invoke-virtual {p0}, Lcom/google/api/ConfigChange$Builder;->copyOnWrite()V

    .line 830
    iget-object v0, p0, Lcom/google/api/ConfigChange$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/ConfigChange;

    invoke-static {v0}, Lcom/google/api/ConfigChange;->access$800(Lcom/google/api/ConfigChange;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public clearOldValue()Lcom/google/api/ConfigChange$Builder;
    .locals 1

    .line 755
    invoke-virtual {p0}, Lcom/google/api/ConfigChange$Builder;->copyOnWrite()V

    .line 756
    iget-object v0, p0, Lcom/google/api/ConfigChange$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/ConfigChange;

    invoke-static {v0}, Lcom/google/api/ConfigChange;->access$500(Lcom/google/api/ConfigChange;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public getAdvices(I)Lcom/google/api/Advice;
    .locals 1

    .line 950
    iget-object v0, p0, Lcom/google/api/ConfigChange$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/ConfigChange;

    invoke-virtual {v0, p1}, Lcom/google/api/ConfigChange;->getAdvices(I)Lcom/google/api/Advice;

    move-result-object p1

    return-object p1

    nop

    .array-data 1
    .end array-data
.end method

.method public getAdvicesCount()I
    .locals 1

    .line 939
    iget-object v0, p0, Lcom/google/api/ConfigChange$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/ConfigChange;

    invoke-virtual {v0}, Lcom/google/api/ConfigChange;->getAdvicesCount()I

    move-result v0

    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getAdvicesList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/api/Advice;",
            ">;"
        }
    .end annotation

    .line 926
    iget-object v0, p0, Lcom/google/api/ConfigChange$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/ConfigChange;

    .line 927
    invoke-virtual {v0}, Lcom/google/api/ConfigChange;->getAdvicesList()Ljava/util/List;

    move-result-object v0

    .line 926
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getChangeType()Lcom/google/api/ChangeType;
    .locals 1

    .line 886
    iget-object v0, p0, Lcom/google/api/ConfigChange$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/ConfigChange;

    invoke-virtual {v0}, Lcom/google/api/ConfigChange;->getChangeType()Lcom/google/api/ChangeType;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getChangeTypeValue()I
    .locals 1

    .line 860
    iget-object v0, p0, Lcom/google/api/ConfigChange$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/ConfigChange;

    invoke-virtual {v0}, Lcom/google/api/ConfigChange;->getChangeTypeValue()I

    move-result v0

    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getElement()Ljava/lang/String;
    .locals 1

    .line 611
    iget-object v0, p0, Lcom/google/api/ConfigChange$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/ConfigChange;

    invoke-virtual {v0}, Lcom/google/api/ConfigChange;->getElement()Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getElementBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 632
    iget-object v0, p0, Lcom/google/api/ConfigChange$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/ConfigChange;

    invoke-virtual {v0}, Lcom/google/api/ConfigChange;->getElementBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getNewValue()Ljava/lang/String;
    .locals 1

    .line 787
    iget-object v0, p0, Lcom/google/api/ConfigChange$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/ConfigChange;

    invoke-virtual {v0}, Lcom/google/api/ConfigChange;->getNewValue()Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getNewValueBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 801
    iget-object v0, p0, Lcom/google/api/ConfigChange$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/ConfigChange;

    invoke-virtual {v0}, Lcom/google/api/ConfigChange;->getNewValueBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getOldValue()Ljava/lang/String;
    .locals 1

    .line 713
    iget-object v0, p0, Lcom/google/api/ConfigChange$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/ConfigChange;

    invoke-virtual {v0}, Lcom/google/api/ConfigChange;->getOldValue()Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getOldValueBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 727
    iget-object v0, p0, Lcom/google/api/ConfigChange$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/ConfigChange;

    invoke-virtual {v0}, Lcom/google/api/ConfigChange;->getOldValueBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public removeAdvices(I)Lcom/google/api/ConfigChange$Builder;
    .locals 1

    .line 1073
    invoke-virtual {p0}, Lcom/google/api/ConfigChange$Builder;->copyOnWrite()V

    .line 1074
    iget-object v0, p0, Lcom/google/api/ConfigChange$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/ConfigChange;

    invoke-static {v0, p1}, Lcom/google/api/ConfigChange;->access$1800(Lcom/google/api/ConfigChange;I)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public setAdvices(ILcom/google/api/Advice$Builder;)Lcom/google/api/ConfigChange$Builder;
    .locals 1

    .line 976
    invoke-virtual {p0}, Lcom/google/api/ConfigChange$Builder;->copyOnWrite()V

    .line 977
    iget-object v0, p0, Lcom/google/api/ConfigChange$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/ConfigChange;

    .line 978
    invoke-virtual {p2}, Lcom/google/api/Advice$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Lcom/google/api/Advice;

    .line 977
    invoke-static {v0, p1, p2}, Lcom/google/api/ConfigChange;->access$1300(Lcom/google/api/ConfigChange;ILcom/google/api/Advice;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public setAdvices(ILcom/google/api/Advice;)Lcom/google/api/ConfigChange$Builder;
    .locals 1

    .line 962
    invoke-virtual {p0}, Lcom/google/api/ConfigChange$Builder;->copyOnWrite()V

    .line 963
    iget-object v0, p0, Lcom/google/api/ConfigChange$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/ConfigChange;

    invoke-static {v0, p1, p2}, Lcom/google/api/ConfigChange;->access$1300(Lcom/google/api/ConfigChange;ILcom/google/api/Advice;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public setChangeType(Lcom/google/api/ChangeType;)Lcom/google/api/ConfigChange$Builder;
    .locals 1

    .line 898
    invoke-virtual {p0}, Lcom/google/api/ConfigChange$Builder;->copyOnWrite()V

    .line 899
    iget-object v0, p0, Lcom/google/api/ConfigChange$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/ConfigChange;

    invoke-static {v0, p1}, Lcom/google/api/ConfigChange;->access$1100(Lcom/google/api/ConfigChange;Lcom/google/api/ChangeType;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public setChangeTypeValue(I)Lcom/google/api/ConfigChange$Builder;
    .locals 1

    .line 872
    invoke-virtual {p0}, Lcom/google/api/ConfigChange$Builder;->copyOnWrite()V

    .line 873
    iget-object v0, p0, Lcom/google/api/ConfigChange$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/ConfigChange;

    invoke-static {v0, p1}, Lcom/google/api/ConfigChange;->access$1000(Lcom/google/api/ConfigChange;I)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public setElement(Ljava/lang/String;)Lcom/google/api/ConfigChange$Builder;
    .locals 1

    .line 653
    invoke-virtual {p0}, Lcom/google/api/ConfigChange$Builder;->copyOnWrite()V

    .line 654
    iget-object v0, p0, Lcom/google/api/ConfigChange$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/ConfigChange;

    invoke-static {v0, p1}, Lcom/google/api/ConfigChange;->access$100(Lcom/google/api/ConfigChange;Ljava/lang/String;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public setElementBytes(Lcom/google/protobuf/ByteString;)Lcom/google/api/ConfigChange$Builder;
    .locals 1

    .line 697
    invoke-virtual {p0}, Lcom/google/api/ConfigChange$Builder;->copyOnWrite()V

    .line 698
    iget-object v0, p0, Lcom/google/api/ConfigChange$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/ConfigChange;

    invoke-static {v0, p1}, Lcom/google/api/ConfigChange;->access$300(Lcom/google/api/ConfigChange;Lcom/google/protobuf/ByteString;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public setNewValue(Ljava/lang/String;)Lcom/google/api/ConfigChange$Builder;
    .locals 1

    .line 815
    invoke-virtual {p0}, Lcom/google/api/ConfigChange$Builder;->copyOnWrite()V

    .line 816
    iget-object v0, p0, Lcom/google/api/ConfigChange$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/ConfigChange;

    invoke-static {v0, p1}, Lcom/google/api/ConfigChange;->access$700(Lcom/google/api/ConfigChange;Ljava/lang/String;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public setNewValueBytes(Lcom/google/protobuf/ByteString;)Lcom/google/api/ConfigChange$Builder;
    .locals 1

    .line 845
    invoke-virtual {p0}, Lcom/google/api/ConfigChange$Builder;->copyOnWrite()V

    .line 846
    iget-object v0, p0, Lcom/google/api/ConfigChange$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/ConfigChange;

    invoke-static {v0, p1}, Lcom/google/api/ConfigChange;->access$900(Lcom/google/api/ConfigChange;Lcom/google/protobuf/ByteString;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public setOldValue(Ljava/lang/String;)Lcom/google/api/ConfigChange$Builder;
    .locals 1

    .line 741
    invoke-virtual {p0}, Lcom/google/api/ConfigChange$Builder;->copyOnWrite()V

    .line 742
    iget-object v0, p0, Lcom/google/api/ConfigChange$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/ConfigChange;

    invoke-static {v0, p1}, Lcom/google/api/ConfigChange;->access$400(Lcom/google/api/ConfigChange;Ljava/lang/String;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public setOldValueBytes(Lcom/google/protobuf/ByteString;)Lcom/google/api/ConfigChange$Builder;
    .locals 1

    .line 771
    invoke-virtual {p0}, Lcom/google/api/ConfigChange$Builder;->copyOnWrite()V

    .line 772
    iget-object v0, p0, Lcom/google/api/ConfigChange$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/ConfigChange;

    invoke-static {v0, p1}, Lcom/google/api/ConfigChange;->access$600(Lcom/google/api/ConfigChange;Lcom/google/protobuf/ByteString;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method
