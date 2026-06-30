.class public final Lcom/google/api/ContextRule$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "ContextRule.java"

# interfaces
.implements Lcom/google/api/ContextRuleOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/api/ContextRule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/google/api/ContextRule;",
        "Lcom/google/api/ContextRule$Builder;",
        ">;",
        "Lcom/google/api/ContextRuleOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 728
    invoke-static {}, Lcom/google/api/ContextRule;->access$000()Lcom/google/api/ContextRule;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method synthetic constructor <init>(Lcom/google/api/ContextRule$1;)V
    .locals 0

    .line 721
    invoke-direct {p0}, Lcom/google/api/ContextRule$Builder;-><init>()V

    return-void

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public addAllAllowedRequestExtensions(Ljava/lang/Iterable;)Lcom/google/api/ContextRule$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/api/ContextRule$Builder;"
        }
    .end annotation

    .line 1164
    invoke-virtual {p0}, Lcom/google/api/ContextRule$Builder;->copyOnWrite()V

    .line 1165
    iget-object v0, p0, Lcom/google/api/ContextRule$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/ContextRule;

    invoke-static {v0, p1}, Lcom/google/api/ContextRule;->access$1600(Lcom/google/api/ContextRule;Ljava/lang/Iterable;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public addAllAllowedResponseExtensions(Ljava/lang/Iterable;)Lcom/google/api/ContextRule$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/api/ContextRule$Builder;"
        }
    .end annotation

    .line 1301
    invoke-virtual {p0}, Lcom/google/api/ContextRule$Builder;->copyOnWrite()V

    .line 1302
    iget-object v0, p0, Lcom/google/api/ContextRule$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/ContextRule;

    invoke-static {v0, p1}, Lcom/google/api/ContextRule;->access$2100(Lcom/google/api/ContextRule;Ljava/lang/Iterable;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public addAllProvided(Ljava/lang/Iterable;)Lcom/google/api/ContextRule$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/api/ContextRule$Builder;"
        }
    .end annotation

    .line 1029
    invoke-virtual {p0}, Lcom/google/api/ContextRule$Builder;->copyOnWrite()V

    .line 1030
    iget-object v0, p0, Lcom/google/api/ContextRule$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/ContextRule;

    invoke-static {v0, p1}, Lcom/google/api/ContextRule;->access$1100(Lcom/google/api/ContextRule;Ljava/lang/Iterable;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public addAllRequested(Ljava/lang/Iterable;)Lcom/google/api/ContextRule$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/api/ContextRule$Builder;"
        }
    .end annotation

    .line 901
    invoke-virtual {p0}, Lcom/google/api/ContextRule$Builder;->copyOnWrite()V

    .line 902
    iget-object v0, p0, Lcom/google/api/ContextRule$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/ContextRule;

    invoke-static {v0, p1}, Lcom/google/api/ContextRule;->access$600(Lcom/google/api/ContextRule;Ljava/lang/Iterable;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public addAllowedRequestExtensions(Ljava/lang/String;)Lcom/google/api/ContextRule$Builder;
    .locals 1

    .line 1148
    invoke-virtual {p0}, Lcom/google/api/ContextRule$Builder;->copyOnWrite()V

    .line 1149
    iget-object v0, p0, Lcom/google/api/ContextRule$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/ContextRule;

    invoke-static {v0, p1}, Lcom/google/api/ContextRule;->access$1500(Lcom/google/api/ContextRule;Ljava/lang/String;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public addAllowedRequestExtensionsBytes(Lcom/google/protobuf/ByteString;)Lcom/google/api/ContextRule$Builder;
    .locals 1

    .line 1194
    invoke-virtual {p0}, Lcom/google/api/ContextRule$Builder;->copyOnWrite()V

    .line 1195
    iget-object v0, p0, Lcom/google/api/ContextRule$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/ContextRule;

    invoke-static {v0, p1}, Lcom/google/api/ContextRule;->access$1800(Lcom/google/api/ContextRule;Lcom/google/protobuf/ByteString;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public addAllowedResponseExtensions(Ljava/lang/String;)Lcom/google/api/ContextRule$Builder;
    .locals 1

    .line 1285
    invoke-virtual {p0}, Lcom/google/api/ContextRule$Builder;->copyOnWrite()V

    .line 1286
    iget-object v0, p0, Lcom/google/api/ContextRule$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/ContextRule;

    invoke-static {v0, p1}, Lcom/google/api/ContextRule;->access$2000(Lcom/google/api/ContextRule;Ljava/lang/String;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public addAllowedResponseExtensionsBytes(Lcom/google/protobuf/ByteString;)Lcom/google/api/ContextRule$Builder;
    .locals 1

    .line 1331
    invoke-virtual {p0}, Lcom/google/api/ContextRule$Builder;->copyOnWrite()V

    .line 1332
    iget-object v0, p0, Lcom/google/api/ContextRule$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/ContextRule;

    invoke-static {v0, p1}, Lcom/google/api/ContextRule;->access$2300(Lcom/google/api/ContextRule;Lcom/google/protobuf/ByteString;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public addProvided(Ljava/lang/String;)Lcom/google/api/ContextRule$Builder;
    .locals 1

    .line 1014
    invoke-virtual {p0}, Lcom/google/api/ContextRule$Builder;->copyOnWrite()V

    .line 1015
    iget-object v0, p0, Lcom/google/api/ContextRule$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/ContextRule;

    invoke-static {v0, p1}, Lcom/google/api/ContextRule;->access$1000(Lcom/google/api/ContextRule;Ljava/lang/String;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public addProvidedBytes(Lcom/google/protobuf/ByteString;)Lcom/google/api/ContextRule$Builder;
    .locals 1

    .line 1057
    invoke-virtual {p0}, Lcom/google/api/ContextRule$Builder;->copyOnWrite()V

    .line 1058
    iget-object v0, p0, Lcom/google/api/ContextRule$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/ContextRule;

    invoke-static {v0, p1}, Lcom/google/api/ContextRule;->access$1300(Lcom/google/api/ContextRule;Lcom/google/protobuf/ByteString;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public addRequested(Ljava/lang/String;)Lcom/google/api/ContextRule$Builder;
    .locals 1

    .line 886
    invoke-virtual {p0}, Lcom/google/api/ContextRule$Builder;->copyOnWrite()V

    .line 887
    iget-object v0, p0, Lcom/google/api/ContextRule$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/ContextRule;

    invoke-static {v0, p1}, Lcom/google/api/ContextRule;->access$500(Lcom/google/api/ContextRule;Ljava/lang/String;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public addRequestedBytes(Lcom/google/protobuf/ByteString;)Lcom/google/api/ContextRule$Builder;
    .locals 1

    .line 929
    invoke-virtual {p0}, Lcom/google/api/ContextRule$Builder;->copyOnWrite()V

    .line 930
    iget-object v0, p0, Lcom/google/api/ContextRule$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/ContextRule;

    invoke-static {v0, p1}, Lcom/google/api/ContextRule;->access$800(Lcom/google/api/ContextRule;Lcom/google/protobuf/ByteString;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public clearAllowedRequestExtensions()Lcom/google/api/ContextRule$Builder;
    .locals 1

    .line 1178
    invoke-virtual {p0}, Lcom/google/api/ContextRule$Builder;->copyOnWrite()V

    .line 1179
    iget-object v0, p0, Lcom/google/api/ContextRule$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/ContextRule;

    invoke-static {v0}, Lcom/google/api/ContextRule;->access$1700(Lcom/google/api/ContextRule;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public clearAllowedResponseExtensions()Lcom/google/api/ContextRule$Builder;
    .locals 1

    .line 1315
    invoke-virtual {p0}, Lcom/google/api/ContextRule$Builder;->copyOnWrite()V

    .line 1316
    iget-object v0, p0, Lcom/google/api/ContextRule$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/ContextRule;

    invoke-static {v0}, Lcom/google/api/ContextRule;->access$2200(Lcom/google/api/ContextRule;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public clearProvided()Lcom/google/api/ContextRule$Builder;
    .locals 1

    .line 1042
    invoke-virtual {p0}, Lcom/google/api/ContextRule$Builder;->copyOnWrite()V

    .line 1043
    iget-object v0, p0, Lcom/google/api/ContextRule$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/ContextRule;

    invoke-static {v0}, Lcom/google/api/ContextRule;->access$1200(Lcom/google/api/ContextRule;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public clearRequested()Lcom/google/api/ContextRule$Builder;
    .locals 1

    .line 914
    invoke-virtual {p0}, Lcom/google/api/ContextRule$Builder;->copyOnWrite()V

    .line 915
    iget-object v0, p0, Lcom/google/api/ContextRule$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/ContextRule;

    invoke-static {v0}, Lcom/google/api/ContextRule;->access$700(Lcom/google/api/ContextRule;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public clearSelector()Lcom/google/api/ContextRule$Builder;
    .locals 1

    .line 785
    invoke-virtual {p0}, Lcom/google/api/ContextRule$Builder;->copyOnWrite()V

    .line 786
    iget-object v0, p0, Lcom/google/api/ContextRule$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/ContextRule;

    invoke-static {v0}, Lcom/google/api/ContextRule;->access$200(Lcom/google/api/ContextRule;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public getAllowedRequestExtensions(I)Ljava/lang/String;
    .locals 1

    .line 1102
    iget-object v0, p0, Lcom/google/api/ContextRule$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/ContextRule;

    invoke-virtual {v0, p1}, Lcom/google/api/ContextRule;->getAllowedRequestExtensions(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    nop

    .array-data 1
    .end array-data
.end method

.method public getAllowedRequestExtensionsBytes(I)Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1117
    iget-object v0, p0, Lcom/google/api/ContextRule$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/ContextRule;

    invoke-virtual {v0, p1}, Lcom/google/api/ContextRule;->getAllowedRequestExtensionsBytes(I)Lcom/google/protobuf/ByteString;

    move-result-object p1

    return-object p1

    nop

    .array-data 1
    .end array-data
.end method

.method public getAllowedRequestExtensionsCount()I
    .locals 1

    .line 1088
    iget-object v0, p0, Lcom/google/api/ContextRule$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/ContextRule;

    invoke-virtual {v0}, Lcom/google/api/ContextRule;->getAllowedRequestExtensionsCount()I

    move-result v0

    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getAllowedRequestExtensionsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1074
    iget-object v0, p0, Lcom/google/api/ContextRule$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/ContextRule;

    .line 1075
    invoke-virtual {v0}, Lcom/google/api/ContextRule;->getAllowedRequestExtensionsList()Ljava/util/List;

    move-result-object v0

    .line 1074
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getAllowedResponseExtensions(I)Ljava/lang/String;
    .locals 1

    .line 1239
    iget-object v0, p0, Lcom/google/api/ContextRule$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/ContextRule;

    invoke-virtual {v0, p1}, Lcom/google/api/ContextRule;->getAllowedResponseExtensions(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    nop

    .array-data 1
    .end array-data
.end method

.method public getAllowedResponseExtensionsBytes(I)Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1254
    iget-object v0, p0, Lcom/google/api/ContextRule$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/ContextRule;

    invoke-virtual {v0, p1}, Lcom/google/api/ContextRule;->getAllowedResponseExtensionsBytes(I)Lcom/google/protobuf/ByteString;

    move-result-object p1

    return-object p1

    nop

    .array-data 1
    .end array-data
.end method

.method public getAllowedResponseExtensionsCount()I
    .locals 1

    .line 1225
    iget-object v0, p0, Lcom/google/api/ContextRule$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/ContextRule;

    invoke-virtual {v0}, Lcom/google/api/ContextRule;->getAllowedResponseExtensionsCount()I

    move-result v0

    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getAllowedResponseExtensionsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1211
    iget-object v0, p0, Lcom/google/api/ContextRule$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/ContextRule;

    .line 1212
    invoke-virtual {v0}, Lcom/google/api/ContextRule;->getAllowedResponseExtensionsList()Ljava/util/List;

    move-result-object v0

    .line 1211
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getProvided(I)Ljava/lang/String;
    .locals 1

    .line 971
    iget-object v0, p0, Lcom/google/api/ContextRule$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/ContextRule;

    invoke-virtual {v0, p1}, Lcom/google/api/ContextRule;->getProvided(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    nop

    .array-data 1
    .end array-data
.end method

.method public getProvidedBytes(I)Lcom/google/protobuf/ByteString;
    .locals 1

    .line 985
    iget-object v0, p0, Lcom/google/api/ContextRule$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/ContextRule;

    invoke-virtual {v0, p1}, Lcom/google/api/ContextRule;->getProvidedBytes(I)Lcom/google/protobuf/ByteString;

    move-result-object p1

    return-object p1

    nop

    .array-data 1
    .end array-data
.end method

.method public getProvidedCount()I
    .locals 1

    .line 958
    iget-object v0, p0, Lcom/google/api/ContextRule$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/ContextRule;

    invoke-virtual {v0}, Lcom/google/api/ContextRule;->getProvidedCount()I

    move-result v0

    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getProvidedList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 945
    iget-object v0, p0, Lcom/google/api/ContextRule$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/ContextRule;

    .line 946
    invoke-virtual {v0}, Lcom/google/api/ContextRule;->getProvidedList()Ljava/util/List;

    move-result-object v0

    .line 945
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getRequested(I)Ljava/lang/String;
    .locals 1

    .line 843
    iget-object v0, p0, Lcom/google/api/ContextRule$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/ContextRule;

    invoke-virtual {v0, p1}, Lcom/google/api/ContextRule;->getRequested(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    nop

    .array-data 1
    .end array-data
.end method

.method public getRequestedBytes(I)Lcom/google/protobuf/ByteString;
    .locals 1

    .line 857
    iget-object v0, p0, Lcom/google/api/ContextRule$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/ContextRule;

    invoke-virtual {v0, p1}, Lcom/google/api/ContextRule;->getRequestedBytes(I)Lcom/google/protobuf/ByteString;

    move-result-object p1

    return-object p1

    nop

    .array-data 1
    .end array-data
.end method

.method public getRequestedCount()I
    .locals 1

    .line 830
    iget-object v0, p0, Lcom/google/api/ContextRule$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/ContextRule;

    invoke-virtual {v0}, Lcom/google/api/ContextRule;->getRequestedCount()I

    move-result v0

    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getRequestedList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 817
    iget-object v0, p0, Lcom/google/api/ContextRule$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/ContextRule;

    .line 818
    invoke-virtual {v0}, Lcom/google/api/ContextRule;->getRequestedList()Ljava/util/List;

    move-result-object v0

    .line 817
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getSelector()Ljava/lang/String;
    .locals 1

    .line 743
    iget-object v0, p0, Lcom/google/api/ContextRule$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/ContextRule;

    invoke-virtual {v0}, Lcom/google/api/ContextRule;->getSelector()Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getSelectorBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 757
    iget-object v0, p0, Lcom/google/api/ContextRule$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/ContextRule;

    invoke-virtual {v0}, Lcom/google/api/ContextRule;->getSelectorBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public setAllowedRequestExtensions(ILjava/lang/String;)Lcom/google/api/ContextRule$Builder;
    .locals 1

    .line 1132
    invoke-virtual {p0}, Lcom/google/api/ContextRule$Builder;->copyOnWrite()V

    .line 1133
    iget-object v0, p0, Lcom/google/api/ContextRule$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/ContextRule;

    invoke-static {v0, p1, p2}, Lcom/google/api/ContextRule;->access$1400(Lcom/google/api/ContextRule;ILjava/lang/String;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public setAllowedResponseExtensions(ILjava/lang/String;)Lcom/google/api/ContextRule$Builder;
    .locals 1

    .line 1269
    invoke-virtual {p0}, Lcom/google/api/ContextRule$Builder;->copyOnWrite()V

    .line 1270
    iget-object v0, p0, Lcom/google/api/ContextRule$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/ContextRule;

    invoke-static {v0, p1, p2}, Lcom/google/api/ContextRule;->access$1900(Lcom/google/api/ContextRule;ILjava/lang/String;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public setProvided(ILjava/lang/String;)Lcom/google/api/ContextRule$Builder;
    .locals 1

    .line 999
    invoke-virtual {p0}, Lcom/google/api/ContextRule$Builder;->copyOnWrite()V

    .line 1000
    iget-object v0, p0, Lcom/google/api/ContextRule$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/ContextRule;

    invoke-static {v0, p1, p2}, Lcom/google/api/ContextRule;->access$900(Lcom/google/api/ContextRule;ILjava/lang/String;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public setRequested(ILjava/lang/String;)Lcom/google/api/ContextRule$Builder;
    .locals 1

    .line 871
    invoke-virtual {p0}, Lcom/google/api/ContextRule$Builder;->copyOnWrite()V

    .line 872
    iget-object v0, p0, Lcom/google/api/ContextRule$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/ContextRule;

    invoke-static {v0, p1, p2}, Lcom/google/api/ContextRule;->access$400(Lcom/google/api/ContextRule;ILjava/lang/String;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public setSelector(Ljava/lang/String;)Lcom/google/api/ContextRule$Builder;
    .locals 1

    .line 771
    invoke-virtual {p0}, Lcom/google/api/ContextRule$Builder;->copyOnWrite()V

    .line 772
    iget-object v0, p0, Lcom/google/api/ContextRule$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/ContextRule;

    invoke-static {v0, p1}, Lcom/google/api/ContextRule;->access$100(Lcom/google/api/ContextRule;Ljava/lang/String;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public setSelectorBytes(Lcom/google/protobuf/ByteString;)Lcom/google/api/ContextRule$Builder;
    .locals 1

    .line 801
    invoke-virtual {p0}, Lcom/google/api/ContextRule$Builder;->copyOnWrite()V

    .line 802
    iget-object v0, p0, Lcom/google/api/ContextRule$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/ContextRule;

    invoke-static {v0, p1}, Lcom/google/api/ContextRule;->access$300(Lcom/google/api/ContextRule;Lcom/google/protobuf/ByteString;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method
