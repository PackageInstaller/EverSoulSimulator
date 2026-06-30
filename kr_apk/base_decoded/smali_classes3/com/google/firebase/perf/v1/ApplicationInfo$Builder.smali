.class public final Lcom/google/firebase/perf/v1/ApplicationInfo$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "ApplicationInfo.java"

# interfaces
.implements Lcom/google/firebase/perf/v1/ApplicationInfoOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/perf/v1/ApplicationInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/google/firebase/perf/v1/ApplicationInfo;",
        "Lcom/google/firebase/perf/v1/ApplicationInfo$Builder;",
        ">;",
        "Lcom/google/firebase/perf/v1/ApplicationInfoOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 562
    invoke-static {}, Lcom/google/firebase/perf/v1/ApplicationInfo;->access$000()Lcom/google/firebase/perf/v1/ApplicationInfo;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method synthetic constructor <init>(Lcom/google/firebase/perf/v1/ApplicationInfo$1;)V
    .locals 0

    .line 555
    invoke-direct {p0}, Lcom/google/firebase/perf/v1/ApplicationInfo$Builder;-><init>()V

    return-void

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public clearAndroidAppInfo()Lcom/google/firebase/perf/v1/ApplicationInfo$Builder;
    .locals 1

    .line 842
    invoke-virtual {p0}, Lcom/google/firebase/perf/v1/ApplicationInfo$Builder;->copyOnWrite()V

    .line 843
    iget-object v0, p0, Lcom/google/firebase/perf/v1/ApplicationInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/perf/v1/ApplicationInfo;

    invoke-static {v0}, Lcom/google/firebase/perf/v1/ApplicationInfo;->access$900(Lcom/google/firebase/perf/v1/ApplicationInfo;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public clearAppInstanceId()Lcom/google/firebase/perf/v1/ApplicationInfo$Builder;
    .locals 1

    .line 748
    invoke-virtual {p0}, Lcom/google/firebase/perf/v1/ApplicationInfo$Builder;->copyOnWrite()V

    .line 749
    iget-object v0, p0, Lcom/google/firebase/perf/v1/ApplicationInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/perf/v1/ApplicationInfo;

    invoke-static {v0}, Lcom/google/firebase/perf/v1/ApplicationInfo;->access$500(Lcom/google/firebase/perf/v1/ApplicationInfo;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public clearApplicationProcessState()Lcom/google/firebase/perf/v1/ApplicationInfo$Builder;
    .locals 1

    .line 894
    invoke-virtual {p0}, Lcom/google/firebase/perf/v1/ApplicationInfo$Builder;->copyOnWrite()V

    .line 895
    iget-object v0, p0, Lcom/google/firebase/perf/v1/ApplicationInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/perf/v1/ApplicationInfo;

    invoke-static {v0}, Lcom/google/firebase/perf/v1/ApplicationInfo;->access$1100(Lcom/google/firebase/perf/v1/ApplicationInfo;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public clearCustomAttributes()Lcom/google/firebase/perf/v1/ApplicationInfo$Builder;
    .locals 1

    .line 920
    invoke-virtual {p0}, Lcom/google/firebase/perf/v1/ApplicationInfo$Builder;->copyOnWrite()V

    .line 921
    iget-object v0, p0, Lcom/google/firebase/perf/v1/ApplicationInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/perf/v1/ApplicationInfo;

    invoke-static {v0}, Lcom/google/firebase/perf/v1/ApplicationInfo;->access$1200(Lcom/google/firebase/perf/v1/ApplicationInfo;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public clearGoogleAppId()Lcom/google/firebase/perf/v1/ApplicationInfo$Builder;
    .locals 1

    .line 652
    invoke-virtual {p0}, Lcom/google/firebase/perf/v1/ApplicationInfo$Builder;->copyOnWrite()V

    .line 653
    iget-object v0, p0, Lcom/google/firebase/perf/v1/ApplicationInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/perf/v1/ApplicationInfo;

    invoke-static {v0}, Lcom/google/firebase/perf/v1/ApplicationInfo;->access$200(Lcom/google/firebase/perf/v1/ApplicationInfo;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public containsCustomAttributes(Ljava/lang/String;)Z
    .locals 1

    .line 915
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 916
    iget-object v0, p0, Lcom/google/firebase/perf/v1/ApplicationInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/perf/v1/ApplicationInfo;

    invoke-virtual {v0}, Lcom/google/firebase/perf/v1/ApplicationInfo;->getCustomAttributesMap()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .array-data 1
    .end array-data
.end method

.method public getAndroidAppInfo()Lcom/google/firebase/perf/v1/AndroidApplicationInfo;
    .locals 1

    .line 792
    iget-object v0, p0, Lcom/google/firebase/perf/v1/ApplicationInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/perf/v1/ApplicationInfo;

    invoke-virtual {v0}, Lcom/google/firebase/perf/v1/ApplicationInfo;->getAndroidAppInfo()Lcom/google/firebase/perf/v1/AndroidApplicationInfo;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getAppInstanceId()Ljava/lang/String;
    .locals 1

    .line 703
    iget-object v0, p0, Lcom/google/firebase/perf/v1/ApplicationInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/perf/v1/ApplicationInfo;

    invoke-virtual {v0}, Lcom/google/firebase/perf/v1/ApplicationInfo;->getAppInstanceId()Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getAppInstanceIdBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 718
    iget-object v0, p0, Lcom/google/firebase/perf/v1/ApplicationInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/perf/v1/ApplicationInfo;

    invoke-virtual {v0}, Lcom/google/firebase/perf/v1/ApplicationInfo;->getAppInstanceIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getApplicationProcessState()Lcom/google/firebase/perf/v1/ApplicationProcessState;
    .locals 1

    .line 869
    iget-object v0, p0, Lcom/google/firebase/perf/v1/ApplicationInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/perf/v1/ApplicationInfo;

    invoke-virtual {v0}, Lcom/google/firebase/perf/v1/ApplicationInfo;->getApplicationProcessState()Lcom/google/firebase/perf/v1/ApplicationProcessState;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getCustomAttributes()Ljava/util/Map;
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

    .line 945
    invoke-virtual {p0}, Lcom/google/firebase/perf/v1/ApplicationInfo$Builder;->getCustomAttributesMap()Ljava/util/Map;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getCustomAttributesCount()I
    .locals 1

    .line 902
    iget-object v0, p0, Lcom/google/firebase/perf/v1/ApplicationInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/perf/v1/ApplicationInfo;

    invoke-virtual {v0}, Lcom/google/firebase/perf/v1/ApplicationInfo;->getCustomAttributesMap()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getCustomAttributesMap()Ljava/util/Map;
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

    .line 956
    iget-object v0, p0, Lcom/google/firebase/perf/v1/ApplicationInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/perf/v1/ApplicationInfo;

    .line 957
    invoke-virtual {v0}, Lcom/google/firebase/perf/v1/ApplicationInfo;->getCustomAttributesMap()Ljava/util/Map;

    move-result-object v0

    .line 956
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getCustomAttributesOrDefault(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 973
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 974
    iget-object v0, p0, Lcom/google/firebase/perf/v1/ApplicationInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/perf/v1/ApplicationInfo;

    .line 975
    invoke-virtual {v0}, Lcom/google/firebase/perf/v1/ApplicationInfo;->getCustomAttributesMap()Ljava/util/Map;

    move-result-object v0

    .line 976
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

.method public getCustomAttributesOrThrow(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 989
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 990
    iget-object v0, p0, Lcom/google/firebase/perf/v1/ApplicationInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/perf/v1/ApplicationInfo;

    .line 991
    invoke-virtual {v0}, Lcom/google/firebase/perf/v1/ApplicationInfo;->getCustomAttributesMap()Ljava/util/Map;

    move-result-object v0

    .line 992
    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 995
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1

    .line 993
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    .array-data 1
    .end array-data
.end method

.method public getGoogleAppId()Ljava/lang/String;
    .locals 1

    .line 598
    iget-object v0, p0, Lcom/google/firebase/perf/v1/ApplicationInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/perf/v1/ApplicationInfo;

    invoke-virtual {v0}, Lcom/google/firebase/perf/v1/ApplicationInfo;->getGoogleAppId()Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getGoogleAppIdBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 616
    iget-object v0, p0, Lcom/google/firebase/perf/v1/ApplicationInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/perf/v1/ApplicationInfo;

    invoke-virtual {v0}, Lcom/google/firebase/perf/v1/ApplicationInfo;->getGoogleAppIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public hasAndroidAppInfo()Z
    .locals 1

    .line 780
    iget-object v0, p0, Lcom/google/firebase/perf/v1/ApplicationInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/perf/v1/ApplicationInfo;

    invoke-virtual {v0}, Lcom/google/firebase/perf/v1/ApplicationInfo;->hasAndroidAppInfo()Z

    move-result v0

    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public hasAppInstanceId()Z
    .locals 1

    .line 689
    iget-object v0, p0, Lcom/google/firebase/perf/v1/ApplicationInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/perf/v1/ApplicationInfo;

    invoke-virtual {v0}, Lcom/google/firebase/perf/v1/ApplicationInfo;->hasAppInstanceId()Z

    move-result v0

    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public hasApplicationProcessState()Z
    .locals 1

    .line 857
    iget-object v0, p0, Lcom/google/firebase/perf/v1/ApplicationInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/perf/v1/ApplicationInfo;

    invoke-virtual {v0}, Lcom/google/firebase/perf/v1/ApplicationInfo;->hasApplicationProcessState()Z

    move-result v0

    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public hasGoogleAppId()Z
    .locals 1

    .line 581
    iget-object v0, p0, Lcom/google/firebase/perf/v1/ApplicationInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/perf/v1/ApplicationInfo;

    invoke-virtual {v0}, Lcom/google/firebase/perf/v1/ApplicationInfo;->hasGoogleAppId()Z

    move-result v0

    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public mergeAndroidAppInfo(Lcom/google/firebase/perf/v1/AndroidApplicationInfo;)Lcom/google/firebase/perf/v1/ApplicationInfo$Builder;
    .locals 1

    .line 830
    invoke-virtual {p0}, Lcom/google/firebase/perf/v1/ApplicationInfo$Builder;->copyOnWrite()V

    .line 831
    iget-object v0, p0, Lcom/google/firebase/perf/v1/ApplicationInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/perf/v1/ApplicationInfo;

    invoke-static {v0, p1}, Lcom/google/firebase/perf/v1/ApplicationInfo;->access$800(Lcom/google/firebase/perf/v1/ApplicationInfo;Lcom/google/firebase/perf/v1/AndroidApplicationInfo;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public putAllCustomAttributes(Ljava/util/Map;)Lcom/google/firebase/perf/v1/ApplicationInfo$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/firebase/perf/v1/ApplicationInfo$Builder;"
        }
    .end annotation

    .line 1022
    invoke-virtual {p0}, Lcom/google/firebase/perf/v1/ApplicationInfo$Builder;->copyOnWrite()V

    .line 1023
    iget-object v0, p0, Lcom/google/firebase/perf/v1/ApplicationInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/perf/v1/ApplicationInfo;

    invoke-static {v0}, Lcom/google/firebase/perf/v1/ApplicationInfo;->access$1200(Lcom/google/firebase/perf/v1/ApplicationInfo;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public putCustomAttributes(Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/perf/v1/ApplicationInfo$Builder;
    .locals 1

    .line 1007
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1008
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1009
    invoke-virtual {p0}, Lcom/google/firebase/perf/v1/ApplicationInfo$Builder;->copyOnWrite()V

    .line 1010
    iget-object v0, p0, Lcom/google/firebase/perf/v1/ApplicationInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/perf/v1/ApplicationInfo;

    invoke-static {v0}, Lcom/google/firebase/perf/v1/ApplicationInfo;->access$1200(Lcom/google/firebase/perf/v1/ApplicationInfo;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public removeCustomAttributes(Ljava/lang/String;)Lcom/google/firebase/perf/v1/ApplicationInfo$Builder;
    .locals 1

    .line 934
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 935
    invoke-virtual {p0}, Lcom/google/firebase/perf/v1/ApplicationInfo$Builder;->copyOnWrite()V

    .line 936
    iget-object v0, p0, Lcom/google/firebase/perf/v1/ApplicationInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/perf/v1/ApplicationInfo;

    invoke-static {v0}, Lcom/google/firebase/perf/v1/ApplicationInfo;->access$1200(Lcom/google/firebase/perf/v1/ApplicationInfo;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0

    .array-data 1
    .end array-data
.end method

.method public setAndroidAppInfo(Lcom/google/firebase/perf/v1/AndroidApplicationInfo$Builder;)Lcom/google/firebase/perf/v1/ApplicationInfo$Builder;
    .locals 1

    .line 817
    invoke-virtual {p0}, Lcom/google/firebase/perf/v1/ApplicationInfo$Builder;->copyOnWrite()V

    .line 818
    iget-object v0, p0, Lcom/google/firebase/perf/v1/ApplicationInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/perf/v1/ApplicationInfo;

    invoke-virtual {p1}, Lcom/google/firebase/perf/v1/AndroidApplicationInfo$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/firebase/perf/v1/AndroidApplicationInfo;

    invoke-static {v0, p1}, Lcom/google/firebase/perf/v1/ApplicationInfo;->access$700(Lcom/google/firebase/perf/v1/ApplicationInfo;Lcom/google/firebase/perf/v1/AndroidApplicationInfo;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public setAndroidAppInfo(Lcom/google/firebase/perf/v1/AndroidApplicationInfo;)Lcom/google/firebase/perf/v1/ApplicationInfo$Builder;
    .locals 1

    .line 803
    invoke-virtual {p0}, Lcom/google/firebase/perf/v1/ApplicationInfo$Builder;->copyOnWrite()V

    .line 804
    iget-object v0, p0, Lcom/google/firebase/perf/v1/ApplicationInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/perf/v1/ApplicationInfo;

    invoke-static {v0, p1}, Lcom/google/firebase/perf/v1/ApplicationInfo;->access$700(Lcom/google/firebase/perf/v1/ApplicationInfo;Lcom/google/firebase/perf/v1/AndroidApplicationInfo;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public setAppInstanceId(Ljava/lang/String;)Lcom/google/firebase/perf/v1/ApplicationInfo$Builder;
    .locals 1

    .line 733
    invoke-virtual {p0}, Lcom/google/firebase/perf/v1/ApplicationInfo$Builder;->copyOnWrite()V

    .line 734
    iget-object v0, p0, Lcom/google/firebase/perf/v1/ApplicationInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/perf/v1/ApplicationInfo;

    invoke-static {v0, p1}, Lcom/google/firebase/perf/v1/ApplicationInfo;->access$400(Lcom/google/firebase/perf/v1/ApplicationInfo;Ljava/lang/String;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public setAppInstanceIdBytes(Lcom/google/protobuf/ByteString;)Lcom/google/firebase/perf/v1/ApplicationInfo$Builder;
    .locals 1

    .line 765
    invoke-virtual {p0}, Lcom/google/firebase/perf/v1/ApplicationInfo$Builder;->copyOnWrite()V

    .line 766
    iget-object v0, p0, Lcom/google/firebase/perf/v1/ApplicationInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/perf/v1/ApplicationInfo;

    invoke-static {v0, p1}, Lcom/google/firebase/perf/v1/ApplicationInfo;->access$600(Lcom/google/firebase/perf/v1/ApplicationInfo;Lcom/google/protobuf/ByteString;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public setApplicationProcessState(Lcom/google/firebase/perf/v1/ApplicationProcessState;)Lcom/google/firebase/perf/v1/ApplicationInfo$Builder;
    .locals 1

    .line 881
    invoke-virtual {p0}, Lcom/google/firebase/perf/v1/ApplicationInfo$Builder;->copyOnWrite()V

    .line 882
    iget-object v0, p0, Lcom/google/firebase/perf/v1/ApplicationInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/perf/v1/ApplicationInfo;

    invoke-static {v0, p1}, Lcom/google/firebase/perf/v1/ApplicationInfo;->access$1000(Lcom/google/firebase/perf/v1/ApplicationInfo;Lcom/google/firebase/perf/v1/ApplicationProcessState;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public setGoogleAppId(Ljava/lang/String;)Lcom/google/firebase/perf/v1/ApplicationInfo$Builder;
    .locals 1

    .line 634
    invoke-virtual {p0}, Lcom/google/firebase/perf/v1/ApplicationInfo$Builder;->copyOnWrite()V

    .line 635
    iget-object v0, p0, Lcom/google/firebase/perf/v1/ApplicationInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/perf/v1/ApplicationInfo;

    invoke-static {v0, p1}, Lcom/google/firebase/perf/v1/ApplicationInfo;->access$100(Lcom/google/firebase/perf/v1/ApplicationInfo;Ljava/lang/String;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public setGoogleAppIdBytes(Lcom/google/protobuf/ByteString;)Lcom/google/firebase/perf/v1/ApplicationInfo$Builder;
    .locals 1

    .line 672
    invoke-virtual {p0}, Lcom/google/firebase/perf/v1/ApplicationInfo$Builder;->copyOnWrite()V

    .line 673
    iget-object v0, p0, Lcom/google/firebase/perf/v1/ApplicationInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/perf/v1/ApplicationInfo;

    invoke-static {v0, p1}, Lcom/google/firebase/perf/v1/ApplicationInfo;->access$300(Lcom/google/firebase/perf/v1/ApplicationInfo;Lcom/google/protobuf/ByteString;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method
