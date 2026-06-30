.class public final Lcom/google/api/Billing$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Billing.java"

# interfaces
.implements Lcom/google/api/BillingOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/api/Billing;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/google/api/Billing;",
        "Lcom/google/api/Billing$Builder;",
        ">;",
        "Lcom/google/api/BillingOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1008
    invoke-static {}, Lcom/google/api/Billing;->access$1000()Lcom/google/api/Billing;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method synthetic constructor <init>(Lcom/google/api/Billing$1;)V
    .locals 0

    .line 1001
    invoke-direct {p0}, Lcom/google/api/Billing$Builder;-><init>()V

    return-void

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public addAllConsumerDestinations(Ljava/lang/Iterable;)Lcom/google/api/Billing$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/google/api/Billing$BillingDestination;",
            ">;)",
            "Lcom/google/api/Billing$Builder;"
        }
    .end annotation

    .line 1163
    invoke-virtual {p0}, Lcom/google/api/Billing$Builder;->copyOnWrite()V

    .line 1164
    iget-object v0, p0, Lcom/google/api/Billing$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Billing;

    invoke-static {v0, p1}, Lcom/google/api/Billing;->access$1400(Lcom/google/api/Billing;Ljava/lang/Iterable;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public addConsumerDestinations(ILcom/google/api/Billing$BillingDestination$Builder;)Lcom/google/api/Billing$Builder;
    .locals 1

    .line 1146
    invoke-virtual {p0}, Lcom/google/api/Billing$Builder;->copyOnWrite()V

    .line 1147
    iget-object v0, p0, Lcom/google/api/Billing$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Billing;

    .line 1148
    invoke-virtual {p2}, Lcom/google/api/Billing$BillingDestination$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Lcom/google/api/Billing$BillingDestination;

    .line 1147
    invoke-static {v0, p1, p2}, Lcom/google/api/Billing;->access$1300(Lcom/google/api/Billing;ILcom/google/api/Billing$BillingDestination;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public addConsumerDestinations(ILcom/google/api/Billing$BillingDestination;)Lcom/google/api/Billing$Builder;
    .locals 1

    .line 1114
    invoke-virtual {p0}, Lcom/google/api/Billing$Builder;->copyOnWrite()V

    .line 1115
    iget-object v0, p0, Lcom/google/api/Billing$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Billing;

    invoke-static {v0, p1, p2}, Lcom/google/api/Billing;->access$1300(Lcom/google/api/Billing;ILcom/google/api/Billing$BillingDestination;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public addConsumerDestinations(Lcom/google/api/Billing$BillingDestination$Builder;)Lcom/google/api/Billing$Builder;
    .locals 1

    .line 1130
    invoke-virtual {p0}, Lcom/google/api/Billing$Builder;->copyOnWrite()V

    .line 1131
    iget-object v0, p0, Lcom/google/api/Billing$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Billing;

    invoke-virtual {p1}, Lcom/google/api/Billing$BillingDestination$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/api/Billing$BillingDestination;

    invoke-static {v0, p1}, Lcom/google/api/Billing;->access$1200(Lcom/google/api/Billing;Lcom/google/api/Billing$BillingDestination;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public addConsumerDestinations(Lcom/google/api/Billing$BillingDestination;)Lcom/google/api/Billing$Builder;
    .locals 1

    .line 1098
    invoke-virtual {p0}, Lcom/google/api/Billing$Builder;->copyOnWrite()V

    .line 1099
    iget-object v0, p0, Lcom/google/api/Billing$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Billing;

    invoke-static {v0, p1}, Lcom/google/api/Billing;->access$1200(Lcom/google/api/Billing;Lcom/google/api/Billing$BillingDestination;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public clearConsumerDestinations()Lcom/google/api/Billing$Builder;
    .locals 1

    .line 1178
    invoke-virtual {p0}, Lcom/google/api/Billing$Builder;->copyOnWrite()V

    .line 1179
    iget-object v0, p0, Lcom/google/api/Billing$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Billing;

    invoke-static {v0}, Lcom/google/api/Billing;->access$1500(Lcom/google/api/Billing;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public getConsumerDestinations(I)Lcom/google/api/Billing$BillingDestination;
    .locals 1

    .line 1052
    iget-object v0, p0, Lcom/google/api/Billing$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Billing;

    invoke-virtual {v0, p1}, Lcom/google/api/Billing;->getConsumerDestinations(I)Lcom/google/api/Billing$BillingDestination;

    move-result-object p1

    return-object p1

    nop

    .array-data 1
    .end array-data
.end method

.method public getConsumerDestinationsCount()I
    .locals 1

    .line 1039
    iget-object v0, p0, Lcom/google/api/Billing$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Billing;

    invoke-virtual {v0}, Lcom/google/api/Billing;->getConsumerDestinationsCount()I

    move-result v0

    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getConsumerDestinationsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/api/Billing$BillingDestination;",
            ">;"
        }
    .end annotation

    .line 1024
    iget-object v0, p0, Lcom/google/api/Billing$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Billing;

    .line 1025
    invoke-virtual {v0}, Lcom/google/api/Billing;->getConsumerDestinationsList()Ljava/util/List;

    move-result-object v0

    .line 1024
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public removeConsumerDestinations(I)Lcom/google/api/Billing$Builder;
    .locals 1

    .line 1193
    invoke-virtual {p0}, Lcom/google/api/Billing$Builder;->copyOnWrite()V

    .line 1194
    iget-object v0, p0, Lcom/google/api/Billing$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Billing;

    invoke-static {v0, p1}, Lcom/google/api/Billing;->access$1600(Lcom/google/api/Billing;I)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public setConsumerDestinations(ILcom/google/api/Billing$BillingDestination$Builder;)Lcom/google/api/Billing$Builder;
    .locals 1

    .line 1082
    invoke-virtual {p0}, Lcom/google/api/Billing$Builder;->copyOnWrite()V

    .line 1083
    iget-object v0, p0, Lcom/google/api/Billing$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Billing;

    .line 1084
    invoke-virtual {p2}, Lcom/google/api/Billing$BillingDestination$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Lcom/google/api/Billing$BillingDestination;

    .line 1083
    invoke-static {v0, p1, p2}, Lcom/google/api/Billing;->access$1100(Lcom/google/api/Billing;ILcom/google/api/Billing$BillingDestination;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public setConsumerDestinations(ILcom/google/api/Billing$BillingDestination;)Lcom/google/api/Billing$Builder;
    .locals 1

    .line 1066
    invoke-virtual {p0}, Lcom/google/api/Billing$Builder;->copyOnWrite()V

    .line 1067
    iget-object v0, p0, Lcom/google/api/Billing$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Billing;

    invoke-static {v0, p1, p2}, Lcom/google/api/Billing;->access$1100(Lcom/google/api/Billing;ILcom/google/api/Billing$BillingDestination;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method
