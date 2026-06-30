.class public final Lcom/google/api/Property$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Property.java"

# interfaces
.implements Lcom/google/api/PropertyOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/api/Property;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/google/api/Property;",
        "Lcom/google/api/Property$Builder;",
        ">;",
        "Lcom/google/api/PropertyOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 487
    invoke-static {}, Lcom/google/api/Property;->access$000()Lcom/google/api/Property;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method synthetic constructor <init>(Lcom/google/api/Property$1;)V
    .locals 0

    .line 480
    invoke-direct {p0}, Lcom/google/api/Property$Builder;-><init>()V

    return-void

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public clearDescription()Lcom/google/api/Property$Builder;
    .locals 1

    .line 675
    invoke-virtual {p0}, Lcom/google/api/Property$Builder;->copyOnWrite()V

    .line 676
    iget-object v0, p0, Lcom/google/api/Property$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Property;

    invoke-static {v0}, Lcom/google/api/Property;->access$800(Lcom/google/api/Property;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public clearName()Lcom/google/api/Property$Builder;
    .locals 1

    .line 540
    invoke-virtual {p0}, Lcom/google/api/Property$Builder;->copyOnWrite()V

    .line 541
    iget-object v0, p0, Lcom/google/api/Property$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Property;

    invoke-static {v0}, Lcom/google/api/Property;->access$200(Lcom/google/api/Property;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public clearType()Lcom/google/api/Property$Builder;
    .locals 1

    .line 621
    invoke-virtual {p0}, Lcom/google/api/Property$Builder;->copyOnWrite()V

    .line 622
    iget-object v0, p0, Lcom/google/api/Property$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Property;

    invoke-static {v0}, Lcom/google/api/Property;->access$600(Lcom/google/api/Property;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .line 636
    iget-object v0, p0, Lcom/google/api/Property$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Property;

    invoke-virtual {v0}, Lcom/google/api/Property;->getDescription()Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getDescriptionBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 649
    iget-object v0, p0, Lcom/google/api/Property$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Property;

    invoke-virtual {v0}, Lcom/google/api/Property;->getDescriptionBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 501
    iget-object v0, p0, Lcom/google/api/Property$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Property;

    invoke-virtual {v0}, Lcom/google/api/Property;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getNameBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 514
    iget-object v0, p0, Lcom/google/api/Property$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Property;

    invoke-virtual {v0}, Lcom/google/api/Property;->getNameBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getType()Lcom/google/api/Property$PropertyType;
    .locals 1

    .line 596
    iget-object v0, p0, Lcom/google/api/Property$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Property;

    invoke-virtual {v0}, Lcom/google/api/Property;->getType()Lcom/google/api/Property$PropertyType;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getTypeValue()I
    .locals 1

    .line 570
    iget-object v0, p0, Lcom/google/api/Property$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Property;

    invoke-virtual {v0}, Lcom/google/api/Property;->getTypeValue()I

    move-result v0

    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public setDescription(Ljava/lang/String;)Lcom/google/api/Property$Builder;
    .locals 1

    .line 662
    invoke-virtual {p0}, Lcom/google/api/Property$Builder;->copyOnWrite()V

    .line 663
    iget-object v0, p0, Lcom/google/api/Property$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Property;

    invoke-static {v0, p1}, Lcom/google/api/Property;->access$700(Lcom/google/api/Property;Ljava/lang/String;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public setDescriptionBytes(Lcom/google/protobuf/ByteString;)Lcom/google/api/Property$Builder;
    .locals 1

    .line 690
    invoke-virtual {p0}, Lcom/google/api/Property$Builder;->copyOnWrite()V

    .line 691
    iget-object v0, p0, Lcom/google/api/Property$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Property;

    invoke-static {v0, p1}, Lcom/google/api/Property;->access$900(Lcom/google/api/Property;Lcom/google/protobuf/ByteString;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public setName(Ljava/lang/String;)Lcom/google/api/Property$Builder;
    .locals 1

    .line 527
    invoke-virtual {p0}, Lcom/google/api/Property$Builder;->copyOnWrite()V

    .line 528
    iget-object v0, p0, Lcom/google/api/Property$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Property;

    invoke-static {v0, p1}, Lcom/google/api/Property;->access$100(Lcom/google/api/Property;Ljava/lang/String;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public setNameBytes(Lcom/google/protobuf/ByteString;)Lcom/google/api/Property$Builder;
    .locals 1

    .line 555
    invoke-virtual {p0}, Lcom/google/api/Property$Builder;->copyOnWrite()V

    .line 556
    iget-object v0, p0, Lcom/google/api/Property$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Property;

    invoke-static {v0, p1}, Lcom/google/api/Property;->access$300(Lcom/google/api/Property;Lcom/google/protobuf/ByteString;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public setType(Lcom/google/api/Property$PropertyType;)Lcom/google/api/Property$Builder;
    .locals 1

    .line 608
    invoke-virtual {p0}, Lcom/google/api/Property$Builder;->copyOnWrite()V

    .line 609
    iget-object v0, p0, Lcom/google/api/Property$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Property;

    invoke-static {v0, p1}, Lcom/google/api/Property;->access$500(Lcom/google/api/Property;Lcom/google/api/Property$PropertyType;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public setTypeValue(I)Lcom/google/api/Property$Builder;
    .locals 1

    .line 582
    invoke-virtual {p0}, Lcom/google/api/Property$Builder;->copyOnWrite()V

    .line 583
    iget-object v0, p0, Lcom/google/api/Property$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Property;

    invoke-static {v0, p1}, Lcom/google/api/Property;->access$400(Lcom/google/api/Property;I)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method
