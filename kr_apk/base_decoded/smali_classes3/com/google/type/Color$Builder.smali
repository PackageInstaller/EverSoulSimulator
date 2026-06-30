.class public final Lcom/google/type/Color$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Color.java"

# interfaces
.implements Lcom/google/type/ColorOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/type/Color;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/google/type/Color;",
        "Lcom/google/type/Color$Builder;",
        ">;",
        "Lcom/google/type/ColorOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 539
    invoke-static {}, Lcom/google/type/Color;->access$000()Lcom/google/type/Color;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method synthetic constructor <init>(Lcom/google/type/Color$1;)V
    .locals 0

    .line 532
    invoke-direct {p0}, Lcom/google/type/Color$Builder;-><init>()V

    return-void

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public clearAlpha()Lcom/google/type/Color$Builder;
    .locals 1

    .line 777
    invoke-virtual {p0}, Lcom/google/type/Color$Builder;->copyOnWrite()V

    .line 778
    iget-object v0, p0, Lcom/google/type/Color$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/type/Color;

    invoke-static {v0}, Lcom/google/type/Color;->access$900(Lcom/google/type/Color;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public clearBlue()Lcom/google/type/Color$Builder;
    .locals 1

    .line 658
    invoke-virtual {p0}, Lcom/google/type/Color$Builder;->copyOnWrite()V

    .line 659
    iget-object v0, p0, Lcom/google/type/Color$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/type/Color;

    invoke-static {v0}, Lcom/google/type/Color;->access$600(Lcom/google/type/Color;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public clearGreen()Lcom/google/type/Color$Builder;
    .locals 1

    .line 618
    invoke-virtual {p0}, Lcom/google/type/Color$Builder;->copyOnWrite()V

    .line 619
    iget-object v0, p0, Lcom/google/type/Color$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/type/Color;

    invoke-static {v0}, Lcom/google/type/Color;->access$400(Lcom/google/type/Color;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public clearRed()Lcom/google/type/Color$Builder;
    .locals 1

    .line 578
    invoke-virtual {p0}, Lcom/google/type/Color$Builder;->copyOnWrite()V

    .line 579
    iget-object v0, p0, Lcom/google/type/Color$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/type/Color;

    invoke-static {v0}, Lcom/google/type/Color;->access$200(Lcom/google/type/Color;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public getAlpha()Lcom/google/protobuf/FloatValue;
    .locals 1

    .line 699
    iget-object v0, p0, Lcom/google/type/Color$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/type/Color;

    invoke-virtual {v0}, Lcom/google/type/Color;->getAlpha()Lcom/google/protobuf/FloatValue;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getBlue()F
    .locals 1

    .line 633
    iget-object v0, p0, Lcom/google/type/Color$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/type/Color;

    invoke-virtual {v0}, Lcom/google/type/Color;->getBlue()F

    move-result v0

    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getGreen()F
    .locals 1

    .line 593
    iget-object v0, p0, Lcom/google/type/Color$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/type/Color;

    invoke-virtual {v0}, Lcom/google/type/Color;->getGreen()F

    move-result v0

    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getRed()F
    .locals 1

    .line 553
    iget-object v0, p0, Lcom/google/type/Color$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/type/Color;

    invoke-virtual {v0}, Lcom/google/type/Color;->getRed()F

    move-result v0

    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public hasAlpha()Z
    .locals 1

    .line 680
    iget-object v0, p0, Lcom/google/type/Color$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/type/Color;

    invoke-virtual {v0}, Lcom/google/type/Color;->hasAlpha()Z

    move-result v0

    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public mergeAlpha(Lcom/google/protobuf/FloatValue;)Lcom/google/type/Color$Builder;
    .locals 1

    .line 758
    invoke-virtual {p0}, Lcom/google/type/Color$Builder;->copyOnWrite()V

    .line 759
    iget-object v0, p0, Lcom/google/type/Color$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/type/Color;

    invoke-static {v0, p1}, Lcom/google/type/Color;->access$800(Lcom/google/type/Color;Lcom/google/protobuf/FloatValue;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public setAlpha(Lcom/google/protobuf/FloatValue$Builder;)Lcom/google/type/Color$Builder;
    .locals 1

    .line 738
    invoke-virtual {p0}, Lcom/google/type/Color$Builder;->copyOnWrite()V

    .line 739
    iget-object v0, p0, Lcom/google/type/Color$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/type/Color;

    invoke-virtual {p1}, Lcom/google/protobuf/FloatValue$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/FloatValue;

    invoke-static {v0, p1}, Lcom/google/type/Color;->access$700(Lcom/google/type/Color;Lcom/google/protobuf/FloatValue;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public setAlpha(Lcom/google/protobuf/FloatValue;)Lcom/google/type/Color$Builder;
    .locals 1

    .line 717
    invoke-virtual {p0}, Lcom/google/type/Color$Builder;->copyOnWrite()V

    .line 718
    iget-object v0, p0, Lcom/google/type/Color$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/type/Color;

    invoke-static {v0, p1}, Lcom/google/type/Color;->access$700(Lcom/google/type/Color;Lcom/google/protobuf/FloatValue;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public setBlue(F)Lcom/google/type/Color$Builder;
    .locals 1

    .line 645
    invoke-virtual {p0}, Lcom/google/type/Color$Builder;->copyOnWrite()V

    .line 646
    iget-object v0, p0, Lcom/google/type/Color$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/type/Color;

    invoke-static {v0, p1}, Lcom/google/type/Color;->access$500(Lcom/google/type/Color;F)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public setGreen(F)Lcom/google/type/Color$Builder;
    .locals 1

    .line 605
    invoke-virtual {p0}, Lcom/google/type/Color$Builder;->copyOnWrite()V

    .line 606
    iget-object v0, p0, Lcom/google/type/Color$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/type/Color;

    invoke-static {v0, p1}, Lcom/google/type/Color;->access$300(Lcom/google/type/Color;F)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public setRed(F)Lcom/google/type/Color$Builder;
    .locals 1

    .line 565
    invoke-virtual {p0}, Lcom/google/type/Color$Builder;->copyOnWrite()V

    .line 566
    iget-object v0, p0, Lcom/google/type/Color$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/type/Color;

    invoke-static {v0, p1}, Lcom/google/type/Color;->access$100(Lcom/google/type/Color;F)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method
