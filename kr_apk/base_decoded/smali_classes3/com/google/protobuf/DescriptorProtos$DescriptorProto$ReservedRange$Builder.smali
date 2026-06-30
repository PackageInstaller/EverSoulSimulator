.class public final Lcom/google/protobuf/DescriptorProtos$DescriptorProto$ReservedRange$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "DescriptorProtos.java"

# interfaces
.implements Lcom/google/protobuf/DescriptorProtos$DescriptorProto$ReservedRangeOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/DescriptorProtos$DescriptorProto$ReservedRange;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/google/protobuf/DescriptorProtos$DescriptorProto$ReservedRange;",
        "Lcom/google/protobuf/DescriptorProtos$DescriptorProto$ReservedRange$Builder;",
        ">;",
        "Lcom/google/protobuf/DescriptorProtos$DescriptorProto$ReservedRangeOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 4214
    invoke-static {}, Lcom/google/protobuf/DescriptorProtos$DescriptorProto$ReservedRange;->access$7100()Lcom/google/protobuf/DescriptorProtos$DescriptorProto$ReservedRange;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/DescriptorProtos$1;)V
    .locals 0

    .line 4207
    invoke-direct {p0}, Lcom/google/protobuf/DescriptorProtos$DescriptorProto$ReservedRange$Builder;-><init>()V

    return-void

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public clearEnd()Lcom/google/protobuf/DescriptorProtos$DescriptorProto$ReservedRange$Builder;
    .locals 1

    .line 4317
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$DescriptorProto$ReservedRange$Builder;->copyOnWrite()V

    .line 4318
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$DescriptorProto$ReservedRange$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$DescriptorProto$ReservedRange;

    invoke-static {v0}, Lcom/google/protobuf/DescriptorProtos$DescriptorProto$ReservedRange;->access$7500(Lcom/google/protobuf/DescriptorProtos$DescriptorProto$ReservedRange;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public clearStart()Lcom/google/protobuf/DescriptorProtos$DescriptorProto$ReservedRange$Builder;
    .locals 1

    .line 4265
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$DescriptorProto$ReservedRange$Builder;->copyOnWrite()V

    .line 4266
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$DescriptorProto$ReservedRange$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$DescriptorProto$ReservedRange;

    invoke-static {v0}, Lcom/google/protobuf/DescriptorProtos$DescriptorProto$ReservedRange;->access$7300(Lcom/google/protobuf/DescriptorProtos$DescriptorProto$ReservedRange;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public getEnd()I
    .locals 1

    .line 4292
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$DescriptorProto$ReservedRange$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$DescriptorProto$ReservedRange;

    invoke-virtual {v0}, Lcom/google/protobuf/DescriptorProtos$DescriptorProto$ReservedRange;->getEnd()I

    move-result v0

    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getStart()I
    .locals 1

    .line 4240
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$DescriptorProto$ReservedRange$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$DescriptorProto$ReservedRange;

    invoke-virtual {v0}, Lcom/google/protobuf/DescriptorProtos$DescriptorProto$ReservedRange;->getStart()I

    move-result v0

    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public hasEnd()Z
    .locals 1

    .line 4280
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$DescriptorProto$ReservedRange$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$DescriptorProto$ReservedRange;

    invoke-virtual {v0}, Lcom/google/protobuf/DescriptorProtos$DescriptorProto$ReservedRange;->hasEnd()Z

    move-result v0

    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public hasStart()Z
    .locals 1

    .line 4228
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$DescriptorProto$ReservedRange$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$DescriptorProto$ReservedRange;

    invoke-virtual {v0}, Lcom/google/protobuf/DescriptorProtos$DescriptorProto$ReservedRange;->hasStart()Z

    move-result v0

    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public setEnd(I)Lcom/google/protobuf/DescriptorProtos$DescriptorProto$ReservedRange$Builder;
    .locals 1

    .line 4304
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$DescriptorProto$ReservedRange$Builder;->copyOnWrite()V

    .line 4305
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$DescriptorProto$ReservedRange$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$DescriptorProto$ReservedRange;

    invoke-static {v0, p1}, Lcom/google/protobuf/DescriptorProtos$DescriptorProto$ReservedRange;->access$7400(Lcom/google/protobuf/DescriptorProtos$DescriptorProto$ReservedRange;I)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public setStart(I)Lcom/google/protobuf/DescriptorProtos$DescriptorProto$ReservedRange$Builder;
    .locals 1

    .line 4252
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$DescriptorProto$ReservedRange$Builder;->copyOnWrite()V

    .line 4253
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$DescriptorProto$ReservedRange$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$DescriptorProto$ReservedRange;

    invoke-static {v0, p1}, Lcom/google/protobuf/DescriptorProtos$DescriptorProto$ReservedRange;->access$7200(Lcom/google/protobuf/DescriptorProtos$DescriptorProto$ReservedRange;I)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method
