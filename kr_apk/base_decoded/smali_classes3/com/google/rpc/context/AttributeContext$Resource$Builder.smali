.class public final Lcom/google/rpc/context/AttributeContext$Resource$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "AttributeContext.java"

# interfaces
.implements Lcom/google/rpc/context/AttributeContext$ResourceOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/rpc/context/AttributeContext$Resource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/google/rpc/context/AttributeContext$Resource;",
        "Lcom/google/rpc/context/AttributeContext$Resource$Builder;",
        ">;",
        "Lcom/google/rpc/context/AttributeContext$ResourceOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 7714
    invoke-static {}, Lcom/google/rpc/context/AttributeContext$Resource;->access$9400()Lcom/google/rpc/context/AttributeContext$Resource;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method synthetic constructor <init>(Lcom/google/rpc/context/AttributeContext$1;)V
    .locals 0

    .line 7707
    invoke-direct {p0}, Lcom/google/rpc/context/AttributeContext$Resource$Builder;-><init>()V

    return-void

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public clearLabels()Lcom/google/rpc/context/AttributeContext$Resource$Builder;
    .locals 1

    .line 8012
    invoke-virtual {p0}, Lcom/google/rpc/context/AttributeContext$Resource$Builder;->copyOnWrite()V

    .line 8013
    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext$Resource$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/context/AttributeContext$Resource;

    invoke-static {v0}, Lcom/google/rpc/context/AttributeContext$Resource;->access$10400(Lcom/google/rpc/context/AttributeContext$Resource;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public clearName()Lcom/google/rpc/context/AttributeContext$Resource$Builder;
    .locals 1

    .line 7882
    invoke-virtual {p0}, Lcom/google/rpc/context/AttributeContext$Resource$Builder;->copyOnWrite()V

    .line 7883
    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext$Resource$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/context/AttributeContext$Resource;

    invoke-static {v0}, Lcom/google/rpc/context/AttributeContext$Resource;->access$9900(Lcom/google/rpc/context/AttributeContext$Resource;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public clearService()Lcom/google/rpc/context/AttributeContext$Resource$Builder;
    .locals 1

    .line 7775
    invoke-virtual {p0}, Lcom/google/rpc/context/AttributeContext$Resource$Builder;->copyOnWrite()V

    .line 7776
    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext$Resource$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/context/AttributeContext$Resource;

    invoke-static {v0}, Lcom/google/rpc/context/AttributeContext$Resource;->access$9600(Lcom/google/rpc/context/AttributeContext$Resource;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public clearType()Lcom/google/rpc/context/AttributeContext$Resource$Builder;
    .locals 1

    .line 7968
    invoke-virtual {p0}, Lcom/google/rpc/context/AttributeContext$Resource$Builder;->copyOnWrite()V

    .line 7969
    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext$Resource$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/context/AttributeContext$Resource;

    invoke-static {v0}, Lcom/google/rpc/context/AttributeContext$Resource;->access$10200(Lcom/google/rpc/context/AttributeContext$Resource;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public containsLabels(Ljava/lang/String;)Z
    .locals 1

    .line 8007
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8008
    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext$Resource$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/context/AttributeContext$Resource;

    invoke-virtual {v0}, Lcom/google/rpc/context/AttributeContext$Resource;->getLabelsMap()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .array-data 1
    .end array-data
.end method

.method public getLabels()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 8038
    invoke-virtual {p0}, Lcom/google/rpc/context/AttributeContext$Resource$Builder;->getLabelsMap()Ljava/util/Map;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getLabelsCount()I
    .locals 1

    .line 7993
    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext$Resource$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/context/AttributeContext$Resource;

    invoke-virtual {v0}, Lcom/google/rpc/context/AttributeContext$Resource;->getLabelsMap()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getLabelsMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 8050
    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext$Resource$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/context/AttributeContext$Resource;

    .line 8051
    invoke-virtual {v0}, Lcom/google/rpc/context/AttributeContext$Resource;->getLabelsMap()Ljava/util/Map;

    move-result-object v0

    .line 8050
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getLabelsOrDefault(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 8066
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8067
    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext$Resource$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/context/AttributeContext$Resource;

    .line 8068
    invoke-virtual {v0}, Lcom/google/rpc/context/AttributeContext$Resource;->getLabelsMap()Ljava/util/Map;

    move-result-object v0

    .line 8069
    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object p2, p1

    check-cast p2, Ljava/lang/String;

    :cond_0
    return-object p2

    nop

    .array-data 1
    .end array-data
.end method

.method public getLabelsOrThrow(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 8083
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8084
    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext$Resource$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/context/AttributeContext$Resource;

    .line 8085
    invoke-virtual {v0}, Lcom/google/rpc/context/AttributeContext$Resource;->getLabelsMap()Ljava/util/Map;

    move-result-object v0

    .line 8086
    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 8089
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1

    .line 8087
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    .array-data 1
    .end array-data
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 7816
    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext$Resource$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/context/AttributeContext$Resource;

    invoke-virtual {v0}, Lcom/google/rpc/context/AttributeContext$Resource;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getNameBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 7838
    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext$Resource$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/context/AttributeContext$Resource;

    invoke-virtual {v0}, Lcom/google/rpc/context/AttributeContext$Resource;->getNameBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getService()Ljava/lang/String;
    .locals 1

    .line 7730
    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext$Resource$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/context/AttributeContext$Resource;

    invoke-virtual {v0}, Lcom/google/rpc/context/AttributeContext$Resource;->getService()Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getServiceBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 7745
    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext$Resource$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/context/AttributeContext$Resource;

    invoke-virtual {v0}, Lcom/google/rpc/context/AttributeContext$Resource;->getServiceBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .line 7923
    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext$Resource$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/context/AttributeContext$Resource;

    invoke-virtual {v0}, Lcom/google/rpc/context/AttributeContext$Resource;->getType()Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getTypeBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 7938
    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext$Resource$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/context/AttributeContext$Resource;

    invoke-virtual {v0}, Lcom/google/rpc/context/AttributeContext$Resource;->getTypeBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public putAllLabels(Ljava/util/Map;)Lcom/google/rpc/context/AttributeContext$Resource$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/rpc/context/AttributeContext$Resource$Builder;"
        }
    .end annotation

    .line 8118
    invoke-virtual {p0}, Lcom/google/rpc/context/AttributeContext$Resource$Builder;->copyOnWrite()V

    .line 8119
    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext$Resource$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/context/AttributeContext$Resource;

    invoke-static {v0}, Lcom/google/rpc/context/AttributeContext$Resource;->access$10400(Lcom/google/rpc/context/AttributeContext$Resource;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public putLabels(Ljava/lang/String;Ljava/lang/String;)Lcom/google/rpc/context/AttributeContext$Resource$Builder;
    .locals 1

    .line 8102
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8103
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8104
    invoke-virtual {p0}, Lcom/google/rpc/context/AttributeContext$Resource$Builder;->copyOnWrite()V

    .line 8105
    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext$Resource$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/context/AttributeContext$Resource;

    invoke-static {v0}, Lcom/google/rpc/context/AttributeContext$Resource;->access$10400(Lcom/google/rpc/context/AttributeContext$Resource;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public removeLabels(Ljava/lang/String;)Lcom/google/rpc/context/AttributeContext$Resource$Builder;
    .locals 1

    .line 8027
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8028
    invoke-virtual {p0}, Lcom/google/rpc/context/AttributeContext$Resource$Builder;->copyOnWrite()V

    .line 8029
    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext$Resource$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/context/AttributeContext$Resource;

    invoke-static {v0}, Lcom/google/rpc/context/AttributeContext$Resource;->access$10400(Lcom/google/rpc/context/AttributeContext$Resource;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0

    .array-data 1
    .end array-data
.end method

.method public setName(Ljava/lang/String;)Lcom/google/rpc/context/AttributeContext$Resource$Builder;
    .locals 1

    .line 7860
    invoke-virtual {p0}, Lcom/google/rpc/context/AttributeContext$Resource$Builder;->copyOnWrite()V

    .line 7861
    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext$Resource$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/context/AttributeContext$Resource;

    invoke-static {v0, p1}, Lcom/google/rpc/context/AttributeContext$Resource;->access$9800(Lcom/google/rpc/context/AttributeContext$Resource;Ljava/lang/String;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public setNameBytes(Lcom/google/protobuf/ByteString;)Lcom/google/rpc/context/AttributeContext$Resource$Builder;
    .locals 1

    .line 7906
    invoke-virtual {p0}, Lcom/google/rpc/context/AttributeContext$Resource$Builder;->copyOnWrite()V

    .line 7907
    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext$Resource$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/context/AttributeContext$Resource;

    invoke-static {v0, p1}, Lcom/google/rpc/context/AttributeContext$Resource;->access$10000(Lcom/google/rpc/context/AttributeContext$Resource;Lcom/google/protobuf/ByteString;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public setService(Ljava/lang/String;)Lcom/google/rpc/context/AttributeContext$Resource$Builder;
    .locals 1

    .line 7760
    invoke-virtual {p0}, Lcom/google/rpc/context/AttributeContext$Resource$Builder;->copyOnWrite()V

    .line 7761
    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext$Resource$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/context/AttributeContext$Resource;

    invoke-static {v0, p1}, Lcom/google/rpc/context/AttributeContext$Resource;->access$9500(Lcom/google/rpc/context/AttributeContext$Resource;Ljava/lang/String;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public setServiceBytes(Lcom/google/protobuf/ByteString;)Lcom/google/rpc/context/AttributeContext$Resource$Builder;
    .locals 1

    .line 7792
    invoke-virtual {p0}, Lcom/google/rpc/context/AttributeContext$Resource$Builder;->copyOnWrite()V

    .line 7793
    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext$Resource$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/context/AttributeContext$Resource;

    invoke-static {v0, p1}, Lcom/google/rpc/context/AttributeContext$Resource;->access$9700(Lcom/google/rpc/context/AttributeContext$Resource;Lcom/google/protobuf/ByteString;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public setType(Ljava/lang/String;)Lcom/google/rpc/context/AttributeContext$Resource$Builder;
    .locals 1

    .line 7953
    invoke-virtual {p0}, Lcom/google/rpc/context/AttributeContext$Resource$Builder;->copyOnWrite()V

    .line 7954
    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext$Resource$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/context/AttributeContext$Resource;

    invoke-static {v0, p1}, Lcom/google/rpc/context/AttributeContext$Resource;->access$10100(Lcom/google/rpc/context/AttributeContext$Resource;Ljava/lang/String;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public setTypeBytes(Lcom/google/protobuf/ByteString;)Lcom/google/rpc/context/AttributeContext$Resource$Builder;
    .locals 1

    .line 7985
    invoke-virtual {p0}, Lcom/google/rpc/context/AttributeContext$Resource$Builder;->copyOnWrite()V

    .line 7986
    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext$Resource$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/context/AttributeContext$Resource;

    invoke-static {v0, p1}, Lcom/google/rpc/context/AttributeContext$Resource;->access$10300(Lcom/google/rpc/context/AttributeContext$Resource;Lcom/google/protobuf/ByteString;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method
