.class public final Lcom/google/api/MonitoredResourceDescriptor$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "MonitoredResourceDescriptor.java"

# interfaces
.implements Lcom/google/api/MonitoredResourceDescriptorOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/api/MonitoredResourceDescriptor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/google/api/MonitoredResourceDescriptor;",
        "Lcom/google/api/MonitoredResourceDescriptor$Builder;",
        ">;",
        "Lcom/google/api/MonitoredResourceDescriptorOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 679
    invoke-static {}, Lcom/google/api/MonitoredResourceDescriptor;->access$000()Lcom/google/api/MonitoredResourceDescriptor;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method synthetic constructor <init>(Lcom/google/api/MonitoredResourceDescriptor$1;)V
    .locals 0

    .line 672
    invoke-direct {p0}, Lcom/google/api/MonitoredResourceDescriptor$Builder;-><init>()V

    return-void

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public addAllLabels(Ljava/lang/Iterable;)Lcom/google/api/MonitoredResourceDescriptor$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/google/api/LabelDescriptor;",
            ">;)",
            "Lcom/google/api/MonitoredResourceDescriptor$Builder;"
        }
    .end annotation

    .line 1155
    invoke-virtual {p0}, Lcom/google/api/MonitoredResourceDescriptor$Builder;->copyOnWrite()V

    .line 1156
    iget-object v0, p0, Lcom/google/api/MonitoredResourceDescriptor$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/MonitoredResourceDescriptor;

    invoke-static {v0, p1}, Lcom/google/api/MonitoredResourceDescriptor;->access$1600(Lcom/google/api/MonitoredResourceDescriptor;Ljava/lang/Iterable;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public addLabels(ILcom/google/api/LabelDescriptor$Builder;)Lcom/google/api/MonitoredResourceDescriptor$Builder;
    .locals 1

    .line 1139
    invoke-virtual {p0}, Lcom/google/api/MonitoredResourceDescriptor$Builder;->copyOnWrite()V

    .line 1140
    iget-object v0, p0, Lcom/google/api/MonitoredResourceDescriptor$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/MonitoredResourceDescriptor;

    .line 1141
    invoke-virtual {p2}, Lcom/google/api/LabelDescriptor$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Lcom/google/api/LabelDescriptor;

    .line 1140
    invoke-static {v0, p1, p2}, Lcom/google/api/MonitoredResourceDescriptor;->access$1500(Lcom/google/api/MonitoredResourceDescriptor;ILcom/google/api/LabelDescriptor;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public addLabels(ILcom/google/api/LabelDescriptor;)Lcom/google/api/MonitoredResourceDescriptor$Builder;
    .locals 1

    .line 1109
    invoke-virtual {p0}, Lcom/google/api/MonitoredResourceDescriptor$Builder;->copyOnWrite()V

    .line 1110
    iget-object v0, p0, Lcom/google/api/MonitoredResourceDescriptor$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/MonitoredResourceDescriptor;

    invoke-static {v0, p1, p2}, Lcom/google/api/MonitoredResourceDescriptor;->access$1500(Lcom/google/api/MonitoredResourceDescriptor;ILcom/google/api/LabelDescriptor;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public addLabels(Lcom/google/api/LabelDescriptor$Builder;)Lcom/google/api/MonitoredResourceDescriptor$Builder;
    .locals 1

    .line 1124
    invoke-virtual {p0}, Lcom/google/api/MonitoredResourceDescriptor$Builder;->copyOnWrite()V

    .line 1125
    iget-object v0, p0, Lcom/google/api/MonitoredResourceDescriptor$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/MonitoredResourceDescriptor;

    invoke-virtual {p1}, Lcom/google/api/LabelDescriptor$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/api/LabelDescriptor;

    invoke-static {v0, p1}, Lcom/google/api/MonitoredResourceDescriptor;->access$1400(Lcom/google/api/MonitoredResourceDescriptor;Lcom/google/api/LabelDescriptor;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public addLabels(Lcom/google/api/LabelDescriptor;)Lcom/google/api/MonitoredResourceDescriptor$Builder;
    .locals 1

    .line 1094
    invoke-virtual {p0}, Lcom/google/api/MonitoredResourceDescriptor$Builder;->copyOnWrite()V

    .line 1095
    iget-object v0, p0, Lcom/google/api/MonitoredResourceDescriptor$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/MonitoredResourceDescriptor;

    invoke-static {v0, p1}, Lcom/google/api/MonitoredResourceDescriptor;->access$1400(Lcom/google/api/MonitoredResourceDescriptor;Lcom/google/api/LabelDescriptor;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public clearDescription()Lcom/google/api/MonitoredResourceDescriptor$Builder;
    .locals 1

    .line 993
    invoke-virtual {p0}, Lcom/google/api/MonitoredResourceDescriptor$Builder;->copyOnWrite()V

    .line 994
    iget-object v0, p0, Lcom/google/api/MonitoredResourceDescriptor$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/MonitoredResourceDescriptor;

    invoke-static {v0}, Lcom/google/api/MonitoredResourceDescriptor;->access$1100(Lcom/google/api/MonitoredResourceDescriptor;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public clearDisplayName()Lcom/google/api/MonitoredResourceDescriptor$Builder;
    .locals 1

    .line 917
    invoke-virtual {p0}, Lcom/google/api/MonitoredResourceDescriptor$Builder;->copyOnWrite()V

    .line 918
    iget-object v0, p0, Lcom/google/api/MonitoredResourceDescriptor$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/MonitoredResourceDescriptor;

    invoke-static {v0}, Lcom/google/api/MonitoredResourceDescriptor;->access$800(Lcom/google/api/MonitoredResourceDescriptor;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public clearLabels()Lcom/google/api/MonitoredResourceDescriptor$Builder;
    .locals 1

    .line 1169
    invoke-virtual {p0}, Lcom/google/api/MonitoredResourceDescriptor$Builder;->copyOnWrite()V

    .line 1170
    iget-object v0, p0, Lcom/google/api/MonitoredResourceDescriptor$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/MonitoredResourceDescriptor;

    invoke-static {v0}, Lcom/google/api/MonitoredResourceDescriptor;->access$1700(Lcom/google/api/MonitoredResourceDescriptor;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public clearLaunchStage()Lcom/google/api/MonitoredResourceDescriptor$Builder;
    .locals 1

    .line 1249
    invoke-virtual {p0}, Lcom/google/api/MonitoredResourceDescriptor$Builder;->copyOnWrite()V

    .line 1250
    iget-object v0, p0, Lcom/google/api/MonitoredResourceDescriptor$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/MonitoredResourceDescriptor;

    invoke-static {v0}, Lcom/google/api/MonitoredResourceDescriptor;->access$2100(Lcom/google/api/MonitoredResourceDescriptor;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public clearName()Lcom/google/api/MonitoredResourceDescriptor$Builder;
    .locals 1

    .line 752
    invoke-virtual {p0}, Lcom/google/api/MonitoredResourceDescriptor$Builder;->copyOnWrite()V

    .line 753
    iget-object v0, p0, Lcom/google/api/MonitoredResourceDescriptor$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/MonitoredResourceDescriptor;

    invoke-static {v0}, Lcom/google/api/MonitoredResourceDescriptor;->access$200(Lcom/google/api/MonitoredResourceDescriptor;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public clearType()Lcom/google/api/MonitoredResourceDescriptor$Builder;
    .locals 1

    .line 834
    invoke-virtual {p0}, Lcom/google/api/MonitoredResourceDescriptor$Builder;->copyOnWrite()V

    .line 835
    iget-object v0, p0, Lcom/google/api/MonitoredResourceDescriptor$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/MonitoredResourceDescriptor;

    invoke-static {v0}, Lcom/google/api/MonitoredResourceDescriptor;->access$500(Lcom/google/api/MonitoredResourceDescriptor;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .line 951
    iget-object v0, p0, Lcom/google/api/MonitoredResourceDescriptor$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/MonitoredResourceDescriptor;

    invoke-virtual {v0}, Lcom/google/api/MonitoredResourceDescriptor;->getDescription()Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getDescriptionBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 965
    iget-object v0, p0, Lcom/google/api/MonitoredResourceDescriptor$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/MonitoredResourceDescriptor;

    invoke-virtual {v0}, Lcom/google/api/MonitoredResourceDescriptor;->getDescriptionBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getDisplayName()Ljava/lang/String;
    .locals 1

    .line 869
    iget-object v0, p0, Lcom/google/api/MonitoredResourceDescriptor$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/MonitoredResourceDescriptor;

    invoke-virtual {v0}, Lcom/google/api/MonitoredResourceDescriptor;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getDisplayNameBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 885
    iget-object v0, p0, Lcom/google/api/MonitoredResourceDescriptor$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/MonitoredResourceDescriptor;

    invoke-virtual {v0}, Lcom/google/api/MonitoredResourceDescriptor;->getDisplayNameBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getLabels(I)Lcom/google/api/LabelDescriptor;
    .locals 1

    .line 1051
    iget-object v0, p0, Lcom/google/api/MonitoredResourceDescriptor$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/MonitoredResourceDescriptor;

    invoke-virtual {v0, p1}, Lcom/google/api/MonitoredResourceDescriptor;->getLabels(I)Lcom/google/api/LabelDescriptor;

    move-result-object p1

    return-object p1

    nop

    .array-data 1
    .end array-data
.end method

.method public getLabelsCount()I
    .locals 1

    .line 1039
    iget-object v0, p0, Lcom/google/api/MonitoredResourceDescriptor$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/MonitoredResourceDescriptor;

    invoke-virtual {v0}, Lcom/google/api/MonitoredResourceDescriptor;->getLabelsCount()I

    move-result v0

    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getLabelsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/api/LabelDescriptor;",
            ">;"
        }
    .end annotation

    .line 1025
    iget-object v0, p0, Lcom/google/api/MonitoredResourceDescriptor$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/MonitoredResourceDescriptor;

    .line 1026
    invoke-virtual {v0}, Lcom/google/api/MonitoredResourceDescriptor;->getLabelsList()Ljava/util/List;

    move-result-object v0

    .line 1025
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getLaunchStage()Lcom/google/api/LaunchStage;
    .locals 1

    .line 1224
    iget-object v0, p0, Lcom/google/api/MonitoredResourceDescriptor$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/MonitoredResourceDescriptor;

    invoke-virtual {v0}, Lcom/google/api/MonitoredResourceDescriptor;->getLaunchStage()Lcom/google/api/LaunchStage;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getLaunchStageValue()I
    .locals 1

    .line 1198
    iget-object v0, p0, Lcom/google/api/MonitoredResourceDescriptor$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/MonitoredResourceDescriptor;

    invoke-virtual {v0}, Lcom/google/api/MonitoredResourceDescriptor;->getLaunchStageValue()I

    move-result v0

    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 698
    iget-object v0, p0, Lcom/google/api/MonitoredResourceDescriptor$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/MonitoredResourceDescriptor;

    invoke-virtual {v0}, Lcom/google/api/MonitoredResourceDescriptor;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getNameBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 716
    iget-object v0, p0, Lcom/google/api/MonitoredResourceDescriptor$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/MonitoredResourceDescriptor;

    invoke-virtual {v0}, Lcom/google/api/MonitoredResourceDescriptor;->getNameBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .line 789
    iget-object v0, p0, Lcom/google/api/MonitoredResourceDescriptor$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/MonitoredResourceDescriptor;

    invoke-virtual {v0}, Lcom/google/api/MonitoredResourceDescriptor;->getType()Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getTypeBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 804
    iget-object v0, p0, Lcom/google/api/MonitoredResourceDescriptor$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/MonitoredResourceDescriptor;

    invoke-virtual {v0}, Lcom/google/api/MonitoredResourceDescriptor;->getTypeBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public removeLabels(I)Lcom/google/api/MonitoredResourceDescriptor$Builder;
    .locals 1

    .line 1183
    invoke-virtual {p0}, Lcom/google/api/MonitoredResourceDescriptor$Builder;->copyOnWrite()V

    .line 1184
    iget-object v0, p0, Lcom/google/api/MonitoredResourceDescriptor$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/MonitoredResourceDescriptor;

    invoke-static {v0, p1}, Lcom/google/api/MonitoredResourceDescriptor;->access$1800(Lcom/google/api/MonitoredResourceDescriptor;I)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public setDescription(Ljava/lang/String;)Lcom/google/api/MonitoredResourceDescriptor$Builder;
    .locals 1

    .line 979
    invoke-virtual {p0}, Lcom/google/api/MonitoredResourceDescriptor$Builder;->copyOnWrite()V

    .line 980
    iget-object v0, p0, Lcom/google/api/MonitoredResourceDescriptor$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/MonitoredResourceDescriptor;

    invoke-static {v0, p1}, Lcom/google/api/MonitoredResourceDescriptor;->access$1000(Lcom/google/api/MonitoredResourceDescriptor;Ljava/lang/String;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public setDescriptionBytes(Lcom/google/protobuf/ByteString;)Lcom/google/api/MonitoredResourceDescriptor$Builder;
    .locals 1

    .line 1009
    invoke-virtual {p0}, Lcom/google/api/MonitoredResourceDescriptor$Builder;->copyOnWrite()V

    .line 1010
    iget-object v0, p0, Lcom/google/api/MonitoredResourceDescriptor$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/MonitoredResourceDescriptor;

    invoke-static {v0, p1}, Lcom/google/api/MonitoredResourceDescriptor;->access$1200(Lcom/google/api/MonitoredResourceDescriptor;Lcom/google/protobuf/ByteString;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public setDisplayName(Ljava/lang/String;)Lcom/google/api/MonitoredResourceDescriptor$Builder;
    .locals 1

    .line 901
    invoke-virtual {p0}, Lcom/google/api/MonitoredResourceDescriptor$Builder;->copyOnWrite()V

    .line 902
    iget-object v0, p0, Lcom/google/api/MonitoredResourceDescriptor$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/MonitoredResourceDescriptor;

    invoke-static {v0, p1}, Lcom/google/api/MonitoredResourceDescriptor;->access$700(Lcom/google/api/MonitoredResourceDescriptor;Ljava/lang/String;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public setDisplayNameBytes(Lcom/google/protobuf/ByteString;)Lcom/google/api/MonitoredResourceDescriptor$Builder;
    .locals 1

    .line 935
    invoke-virtual {p0}, Lcom/google/api/MonitoredResourceDescriptor$Builder;->copyOnWrite()V

    .line 936
    iget-object v0, p0, Lcom/google/api/MonitoredResourceDescriptor$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/MonitoredResourceDescriptor;

    invoke-static {v0, p1}, Lcom/google/api/MonitoredResourceDescriptor;->access$900(Lcom/google/api/MonitoredResourceDescriptor;Lcom/google/protobuf/ByteString;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public setLabels(ILcom/google/api/LabelDescriptor$Builder;)Lcom/google/api/MonitoredResourceDescriptor$Builder;
    .locals 1

    .line 1079
    invoke-virtual {p0}, Lcom/google/api/MonitoredResourceDescriptor$Builder;->copyOnWrite()V

    .line 1080
    iget-object v0, p0, Lcom/google/api/MonitoredResourceDescriptor$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/MonitoredResourceDescriptor;

    .line 1081
    invoke-virtual {p2}, Lcom/google/api/LabelDescriptor$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Lcom/google/api/LabelDescriptor;

    .line 1080
    invoke-static {v0, p1, p2}, Lcom/google/api/MonitoredResourceDescriptor;->access$1300(Lcom/google/api/MonitoredResourceDescriptor;ILcom/google/api/LabelDescriptor;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public setLabels(ILcom/google/api/LabelDescriptor;)Lcom/google/api/MonitoredResourceDescriptor$Builder;
    .locals 1

    .line 1064
    invoke-virtual {p0}, Lcom/google/api/MonitoredResourceDescriptor$Builder;->copyOnWrite()V

    .line 1065
    iget-object v0, p0, Lcom/google/api/MonitoredResourceDescriptor$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/MonitoredResourceDescriptor;

    invoke-static {v0, p1, p2}, Lcom/google/api/MonitoredResourceDescriptor;->access$1300(Lcom/google/api/MonitoredResourceDescriptor;ILcom/google/api/LabelDescriptor;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public setLaunchStage(Lcom/google/api/LaunchStage;)Lcom/google/api/MonitoredResourceDescriptor$Builder;
    .locals 1

    .line 1236
    invoke-virtual {p0}, Lcom/google/api/MonitoredResourceDescriptor$Builder;->copyOnWrite()V

    .line 1237
    iget-object v0, p0, Lcom/google/api/MonitoredResourceDescriptor$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/MonitoredResourceDescriptor;

    invoke-static {v0, p1}, Lcom/google/api/MonitoredResourceDescriptor;->access$2000(Lcom/google/api/MonitoredResourceDescriptor;Lcom/google/api/LaunchStage;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public setLaunchStageValue(I)Lcom/google/api/MonitoredResourceDescriptor$Builder;
    .locals 1

    .line 1210
    invoke-virtual {p0}, Lcom/google/api/MonitoredResourceDescriptor$Builder;->copyOnWrite()V

    .line 1211
    iget-object v0, p0, Lcom/google/api/MonitoredResourceDescriptor$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/MonitoredResourceDescriptor;

    invoke-static {v0, p1}, Lcom/google/api/MonitoredResourceDescriptor;->access$1900(Lcom/google/api/MonitoredResourceDescriptor;I)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public setName(Ljava/lang/String;)Lcom/google/api/MonitoredResourceDescriptor$Builder;
    .locals 1

    .line 734
    invoke-virtual {p0}, Lcom/google/api/MonitoredResourceDescriptor$Builder;->copyOnWrite()V

    .line 735
    iget-object v0, p0, Lcom/google/api/MonitoredResourceDescriptor$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/MonitoredResourceDescriptor;

    invoke-static {v0, p1}, Lcom/google/api/MonitoredResourceDescriptor;->access$100(Lcom/google/api/MonitoredResourceDescriptor;Ljava/lang/String;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public setNameBytes(Lcom/google/protobuf/ByteString;)Lcom/google/api/MonitoredResourceDescriptor$Builder;
    .locals 1

    .line 772
    invoke-virtual {p0}, Lcom/google/api/MonitoredResourceDescriptor$Builder;->copyOnWrite()V

    .line 773
    iget-object v0, p0, Lcom/google/api/MonitoredResourceDescriptor$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/MonitoredResourceDescriptor;

    invoke-static {v0, p1}, Lcom/google/api/MonitoredResourceDescriptor;->access$300(Lcom/google/api/MonitoredResourceDescriptor;Lcom/google/protobuf/ByteString;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public setType(Ljava/lang/String;)Lcom/google/api/MonitoredResourceDescriptor$Builder;
    .locals 1

    .line 819
    invoke-virtual {p0}, Lcom/google/api/MonitoredResourceDescriptor$Builder;->copyOnWrite()V

    .line 820
    iget-object v0, p0, Lcom/google/api/MonitoredResourceDescriptor$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/MonitoredResourceDescriptor;

    invoke-static {v0, p1}, Lcom/google/api/MonitoredResourceDescriptor;->access$400(Lcom/google/api/MonitoredResourceDescriptor;Ljava/lang/String;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public setTypeBytes(Lcom/google/protobuf/ByteString;)Lcom/google/api/MonitoredResourceDescriptor$Builder;
    .locals 1

    .line 851
    invoke-virtual {p0}, Lcom/google/api/MonitoredResourceDescriptor$Builder;->copyOnWrite()V

    .line 852
    iget-object v0, p0, Lcom/google/api/MonitoredResourceDescriptor$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/MonitoredResourceDescriptor;

    invoke-static {v0, p1}, Lcom/google/api/MonitoredResourceDescriptor;->access$600(Lcom/google/api/MonitoredResourceDescriptor;Lcom/google/protobuf/ByteString;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method
