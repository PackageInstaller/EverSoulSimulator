.class public final Lcom/google/protobuf/Enum$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Enum.java"

# interfaces
.implements Lcom/google/protobuf/EnumOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/Enum;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/google/protobuf/Enum;",
        "Lcom/google/protobuf/Enum$Builder;",
        ">;",
        "Lcom/google/protobuf/EnumOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 485
    invoke-static {}, Lcom/google/protobuf/Enum;->access$000()Lcom/google/protobuf/Enum;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/Enum$1;)V
    .locals 0

    .line 478
    invoke-direct {p0}, Lcom/google/protobuf/Enum$Builder;-><init>()V

    return-void

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public addAllEnumvalue(Ljava/lang/Iterable;)Lcom/google/protobuf/Enum$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "values"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/google/protobuf/EnumValue;",
            ">;)",
            "Lcom/google/protobuf/Enum$Builder;"
        }
    .end annotation

    .line 619
    invoke-virtual {p0}, Lcom/google/protobuf/Enum$Builder;->copyOnWrite()V

    .line 620
    iget-object v0, p0, Lcom/google/protobuf/Enum$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/Enum;

    invoke-static {v0, p1}, Lcom/google/protobuf/Enum;->access$700(Lcom/google/protobuf/Enum;Ljava/lang/Iterable;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public addAllOptions(Ljava/lang/Iterable;)Lcom/google/protobuf/Enum$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "values"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/google/protobuf/Option;",
            ">;)",
            "Lcom/google/protobuf/Enum$Builder;"
        }
    .end annotation

    .line 721
    invoke-virtual {p0}, Lcom/google/protobuf/Enum$Builder;->copyOnWrite()V

    .line 722
    iget-object v0, p0, Lcom/google/protobuf/Enum$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/Enum;

    invoke-static {v0, p1}, Lcom/google/protobuf/Enum;->access$1300(Lcom/google/protobuf/Enum;Ljava/lang/Iterable;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public addEnumvalue(ILcom/google/protobuf/EnumValue$Builder;)Lcom/google/protobuf/Enum$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "index",
            "builderForValue"
        }
    .end annotation

    .line 609
    invoke-virtual {p0}, Lcom/google/protobuf/Enum$Builder;->copyOnWrite()V

    .line 610
    iget-object v0, p0, Lcom/google/protobuf/Enum$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/Enum;

    .line 611
    invoke-virtual {p2}, Lcom/google/protobuf/EnumValue$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Lcom/google/protobuf/EnumValue;

    .line 610
    invoke-static {v0, p1, p2}, Lcom/google/protobuf/Enum;->access$600(Lcom/google/protobuf/Enum;ILcom/google/protobuf/EnumValue;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public addEnumvalue(ILcom/google/protobuf/EnumValue;)Lcom/google/protobuf/Enum$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "index",
            "value"
        }
    .end annotation

    .line 591
    invoke-virtual {p0}, Lcom/google/protobuf/Enum$Builder;->copyOnWrite()V

    .line 592
    iget-object v0, p0, Lcom/google/protobuf/Enum$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/Enum;

    invoke-static {v0, p1, p2}, Lcom/google/protobuf/Enum;->access$600(Lcom/google/protobuf/Enum;ILcom/google/protobuf/EnumValue;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public addEnumvalue(Lcom/google/protobuf/EnumValue$Builder;)Lcom/google/protobuf/Enum$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builderForValue"
        }
    .end annotation

    .line 600
    invoke-virtual {p0}, Lcom/google/protobuf/Enum$Builder;->copyOnWrite()V

    .line 601
    iget-object v0, p0, Lcom/google/protobuf/Enum$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/Enum;

    invoke-virtual {p1}, Lcom/google/protobuf/EnumValue$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/EnumValue;

    invoke-static {v0, p1}, Lcom/google/protobuf/Enum;->access$500(Lcom/google/protobuf/Enum;Lcom/google/protobuf/EnumValue;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public addEnumvalue(Lcom/google/protobuf/EnumValue;)Lcom/google/protobuf/Enum$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 582
    invoke-virtual {p0}, Lcom/google/protobuf/Enum$Builder;->copyOnWrite()V

    .line 583
    iget-object v0, p0, Lcom/google/protobuf/Enum$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/Enum;

    invoke-static {v0, p1}, Lcom/google/protobuf/Enum;->access$500(Lcom/google/protobuf/Enum;Lcom/google/protobuf/EnumValue;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public addOptions(ILcom/google/protobuf/Option$Builder;)Lcom/google/protobuf/Enum$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "index",
            "builderForValue"
        }
    .end annotation

    .line 711
    invoke-virtual {p0}, Lcom/google/protobuf/Enum$Builder;->copyOnWrite()V

    .line 712
    iget-object v0, p0, Lcom/google/protobuf/Enum$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/Enum;

    .line 713
    invoke-virtual {p2}, Lcom/google/protobuf/Option$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Lcom/google/protobuf/Option;

    .line 712
    invoke-static {v0, p1, p2}, Lcom/google/protobuf/Enum;->access$1200(Lcom/google/protobuf/Enum;ILcom/google/protobuf/Option;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public addOptions(ILcom/google/protobuf/Option;)Lcom/google/protobuf/Enum$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "index",
            "value"
        }
    .end annotation

    .line 693
    invoke-virtual {p0}, Lcom/google/protobuf/Enum$Builder;->copyOnWrite()V

    .line 694
    iget-object v0, p0, Lcom/google/protobuf/Enum$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/Enum;

    invoke-static {v0, p1, p2}, Lcom/google/protobuf/Enum;->access$1200(Lcom/google/protobuf/Enum;ILcom/google/protobuf/Option;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public addOptions(Lcom/google/protobuf/Option$Builder;)Lcom/google/protobuf/Enum$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builderForValue"
        }
    .end annotation

    .line 702
    invoke-virtual {p0}, Lcom/google/protobuf/Enum$Builder;->copyOnWrite()V

    .line 703
    iget-object v0, p0, Lcom/google/protobuf/Enum$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/Enum;

    invoke-virtual {p1}, Lcom/google/protobuf/Option$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/Option;

    invoke-static {v0, p1}, Lcom/google/protobuf/Enum;->access$1100(Lcom/google/protobuf/Enum;Lcom/google/protobuf/Option;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public addOptions(Lcom/google/protobuf/Option;)Lcom/google/protobuf/Enum$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 684
    invoke-virtual {p0}, Lcom/google/protobuf/Enum$Builder;->copyOnWrite()V

    .line 685
    iget-object v0, p0, Lcom/google/protobuf/Enum$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/Enum;

    invoke-static {v0, p1}, Lcom/google/protobuf/Enum;->access$1100(Lcom/google/protobuf/Enum;Lcom/google/protobuf/Option;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public clearEdition()Lcom/google/protobuf/Enum$Builder;
    .locals 1

    .line 868
    invoke-virtual {p0}, Lcom/google/protobuf/Enum$Builder;->copyOnWrite()V

    .line 869
    iget-object v0, p0, Lcom/google/protobuf/Enum$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/Enum;

    invoke-static {v0}, Lcom/google/protobuf/Enum;->access$2300(Lcom/google/protobuf/Enum;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public clearEnumvalue()Lcom/google/protobuf/Enum$Builder;
    .locals 1

    .line 627
    invoke-virtual {p0}, Lcom/google/protobuf/Enum$Builder;->copyOnWrite()V

    .line 628
    iget-object v0, p0, Lcom/google/protobuf/Enum$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/Enum;

    invoke-static {v0}, Lcom/google/protobuf/Enum;->access$800(Lcom/google/protobuf/Enum;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public clearName()Lcom/google/protobuf/Enum$Builder;
    .locals 1

    .line 522
    invoke-virtual {p0}, Lcom/google/protobuf/Enum$Builder;->copyOnWrite()V

    .line 523
    iget-object v0, p0, Lcom/google/protobuf/Enum$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/Enum;

    invoke-static {v0}, Lcom/google/protobuf/Enum;->access$200(Lcom/google/protobuf/Enum;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public clearOptions()Lcom/google/protobuf/Enum$Builder;
    .locals 1

    .line 729
    invoke-virtual {p0}, Lcom/google/protobuf/Enum$Builder;->copyOnWrite()V

    .line 730
    iget-object v0, p0, Lcom/google/protobuf/Enum$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/Enum;

    invoke-static {v0}, Lcom/google/protobuf/Enum;->access$1400(Lcom/google/protobuf/Enum;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public clearSourceContext()Lcom/google/protobuf/Enum$Builder;
    .locals 1

    .line 784
    invoke-virtual {p0}, Lcom/google/protobuf/Enum$Builder;->copyOnWrite()V

    .line 785
    iget-object v0, p0, Lcom/google/protobuf/Enum$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/Enum;

    invoke-static {v0}, Lcom/google/protobuf/Enum;->access$1800(Lcom/google/protobuf/Enum;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public clearSyntax()Lcom/google/protobuf/Enum$Builder;
    .locals 1

    .line 830
    invoke-virtual {p0}, Lcom/google/protobuf/Enum$Builder;->copyOnWrite()V

    .line 831
    iget-object v0, p0, Lcom/google/protobuf/Enum$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/Enum;

    invoke-static {v0}, Lcom/google/protobuf/Enum;->access$2100(Lcom/google/protobuf/Enum;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public getEdition()Ljava/lang/String;
    .locals 1

    .line 841
    iget-object v0, p0, Lcom/google/protobuf/Enum$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/Enum;

    invoke-virtual {v0}, Lcom/google/protobuf/Enum;->getEdition()Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getEditionBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 850
    iget-object v0, p0, Lcom/google/protobuf/Enum$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/Enum;

    invoke-virtual {v0}, Lcom/google/protobuf/Enum;->getEditionBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getEnumvalue(I)Lcom/google/protobuf/EnumValue;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 557
    iget-object v0, p0, Lcom/google/protobuf/Enum$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/Enum;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/Enum;->getEnumvalue(I)Lcom/google/protobuf/EnumValue;

    move-result-object p1

    return-object p1

    nop

    .array-data 1
    .end array-data
.end method

.method public getEnumvalueCount()I
    .locals 1

    .line 551
    iget-object v0, p0, Lcom/google/protobuf/Enum$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/Enum;

    invoke-virtual {v0}, Lcom/google/protobuf/Enum;->getEnumvalueCount()I

    move-result v0

    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getEnumvalueList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/protobuf/EnumValue;",
            ">;"
        }
    .end annotation

    .line 543
    iget-object v0, p0, Lcom/google/protobuf/Enum$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/Enum;

    .line 544
    invoke-virtual {v0}, Lcom/google/protobuf/Enum;->getEnumvalueList()Ljava/util/List;

    move-result-object v0

    .line 543
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 495
    iget-object v0, p0, Lcom/google/protobuf/Enum$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/Enum;

    invoke-virtual {v0}, Lcom/google/protobuf/Enum;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getNameBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 504
    iget-object v0, p0, Lcom/google/protobuf/Enum$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/Enum;

    invoke-virtual {v0}, Lcom/google/protobuf/Enum;->getNameBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getOptions(I)Lcom/google/protobuf/Option;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 659
    iget-object v0, p0, Lcom/google/protobuf/Enum$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/Enum;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/Enum;->getOptions(I)Lcom/google/protobuf/Option;

    move-result-object p1

    return-object p1

    nop

    .array-data 1
    .end array-data
.end method

.method public getOptionsCount()I
    .locals 1

    .line 653
    iget-object v0, p0, Lcom/google/protobuf/Enum$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/Enum;

    invoke-virtual {v0}, Lcom/google/protobuf/Enum;->getOptionsCount()I

    move-result v0

    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getOptionsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/protobuf/Option;",
            ">;"
        }
    .end annotation

    .line 645
    iget-object v0, p0, Lcom/google/protobuf/Enum$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/Enum;

    .line 646
    invoke-virtual {v0}, Lcom/google/protobuf/Enum;->getOptionsList()Ljava/util/List;

    move-result-object v0

    .line 645
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getSourceContext()Lcom/google/protobuf/SourceContext;
    .locals 1

    .line 754
    iget-object v0, p0, Lcom/google/protobuf/Enum$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/Enum;

    invoke-virtual {v0}, Lcom/google/protobuf/Enum;->getSourceContext()Lcom/google/protobuf/SourceContext;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getSyntax()Lcom/google/protobuf/Syntax;
    .locals 1

    .line 813
    iget-object v0, p0, Lcom/google/protobuf/Enum$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/Enum;

    invoke-virtual {v0}, Lcom/google/protobuf/Enum;->getSyntax()Lcom/google/protobuf/Syntax;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getSyntaxValue()I
    .locals 1

    .line 795
    iget-object v0, p0, Lcom/google/protobuf/Enum$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/Enum;

    invoke-virtual {v0}, Lcom/google/protobuf/Enum;->getSyntaxValue()I

    move-result v0

    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public hasSourceContext()Z
    .locals 1

    .line 747
    iget-object v0, p0, Lcom/google/protobuf/Enum$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/Enum;

    invoke-virtual {v0}, Lcom/google/protobuf/Enum;->hasSourceContext()Z

    move-result v0

    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public mergeSourceContext(Lcom/google/protobuf/SourceContext;)Lcom/google/protobuf/Enum$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 777
    invoke-virtual {p0}, Lcom/google/protobuf/Enum$Builder;->copyOnWrite()V

    .line 778
    iget-object v0, p0, Lcom/google/protobuf/Enum$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/Enum;

    invoke-static {v0, p1}, Lcom/google/protobuf/Enum;->access$1700(Lcom/google/protobuf/Enum;Lcom/google/protobuf/SourceContext;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public removeEnumvalue(I)Lcom/google/protobuf/Enum$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 635
    invoke-virtual {p0}, Lcom/google/protobuf/Enum$Builder;->copyOnWrite()V

    .line 636
    iget-object v0, p0, Lcom/google/protobuf/Enum$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/Enum;

    invoke-static {v0, p1}, Lcom/google/protobuf/Enum;->access$900(Lcom/google/protobuf/Enum;I)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public removeOptions(I)Lcom/google/protobuf/Enum$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 737
    invoke-virtual {p0}, Lcom/google/protobuf/Enum$Builder;->copyOnWrite()V

    .line 738
    iget-object v0, p0, Lcom/google/protobuf/Enum$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/Enum;

    invoke-static {v0, p1}, Lcom/google/protobuf/Enum;->access$1500(Lcom/google/protobuf/Enum;I)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public setEdition(Ljava/lang/String;)Lcom/google/protobuf/Enum$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 859
    invoke-virtual {p0}, Lcom/google/protobuf/Enum$Builder;->copyOnWrite()V

    .line 860
    iget-object v0, p0, Lcom/google/protobuf/Enum$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/Enum;

    invoke-static {v0, p1}, Lcom/google/protobuf/Enum;->access$2200(Lcom/google/protobuf/Enum;Ljava/lang/String;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public setEditionBytes(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/Enum$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 879
    invoke-virtual {p0}, Lcom/google/protobuf/Enum$Builder;->copyOnWrite()V

    .line 880
    iget-object v0, p0, Lcom/google/protobuf/Enum$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/Enum;

    invoke-static {v0, p1}, Lcom/google/protobuf/Enum;->access$2400(Lcom/google/protobuf/Enum;Lcom/google/protobuf/ByteString;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public setEnumvalue(ILcom/google/protobuf/EnumValue$Builder;)Lcom/google/protobuf/Enum$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "index",
            "builderForValue"
        }
    .end annotation

    .line 573
    invoke-virtual {p0}, Lcom/google/protobuf/Enum$Builder;->copyOnWrite()V

    .line 574
    iget-object v0, p0, Lcom/google/protobuf/Enum$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/Enum;

    .line 575
    invoke-virtual {p2}, Lcom/google/protobuf/EnumValue$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Lcom/google/protobuf/EnumValue;

    .line 574
    invoke-static {v0, p1, p2}, Lcom/google/protobuf/Enum;->access$400(Lcom/google/protobuf/Enum;ILcom/google/protobuf/EnumValue;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public setEnumvalue(ILcom/google/protobuf/EnumValue;)Lcom/google/protobuf/Enum$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "index",
            "value"
        }
    .end annotation

    .line 564
    invoke-virtual {p0}, Lcom/google/protobuf/Enum$Builder;->copyOnWrite()V

    .line 565
    iget-object v0, p0, Lcom/google/protobuf/Enum$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/Enum;

    invoke-static {v0, p1, p2}, Lcom/google/protobuf/Enum;->access$400(Lcom/google/protobuf/Enum;ILcom/google/protobuf/EnumValue;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public setName(Ljava/lang/String;)Lcom/google/protobuf/Enum$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 513
    invoke-virtual {p0}, Lcom/google/protobuf/Enum$Builder;->copyOnWrite()V

    .line 514
    iget-object v0, p0, Lcom/google/protobuf/Enum$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/Enum;

    invoke-static {v0, p1}, Lcom/google/protobuf/Enum;->access$100(Lcom/google/protobuf/Enum;Ljava/lang/String;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public setNameBytes(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/Enum$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 533
    invoke-virtual {p0}, Lcom/google/protobuf/Enum$Builder;->copyOnWrite()V

    .line 534
    iget-object v0, p0, Lcom/google/protobuf/Enum$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/Enum;

    invoke-static {v0, p1}, Lcom/google/protobuf/Enum;->access$300(Lcom/google/protobuf/Enum;Lcom/google/protobuf/ByteString;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public setOptions(ILcom/google/protobuf/Option$Builder;)Lcom/google/protobuf/Enum$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "index",
            "builderForValue"
        }
    .end annotation

    .line 675
    invoke-virtual {p0}, Lcom/google/protobuf/Enum$Builder;->copyOnWrite()V

    .line 676
    iget-object v0, p0, Lcom/google/protobuf/Enum$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/Enum;

    .line 677
    invoke-virtual {p2}, Lcom/google/protobuf/Option$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Lcom/google/protobuf/Option;

    .line 676
    invoke-static {v0, p1, p2}, Lcom/google/protobuf/Enum;->access$1000(Lcom/google/protobuf/Enum;ILcom/google/protobuf/Option;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public setOptions(ILcom/google/protobuf/Option;)Lcom/google/protobuf/Enum$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "index",
            "value"
        }
    .end annotation

    .line 666
    invoke-virtual {p0}, Lcom/google/protobuf/Enum$Builder;->copyOnWrite()V

    .line 667
    iget-object v0, p0, Lcom/google/protobuf/Enum$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/Enum;

    invoke-static {v0, p1, p2}, Lcom/google/protobuf/Enum;->access$1000(Lcom/google/protobuf/Enum;ILcom/google/protobuf/Option;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public setSourceContext(Lcom/google/protobuf/SourceContext$Builder;)Lcom/google/protobuf/Enum$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builderForValue"
        }
    .end annotation

    .line 769
    invoke-virtual {p0}, Lcom/google/protobuf/Enum$Builder;->copyOnWrite()V

    .line 770
    iget-object v0, p0, Lcom/google/protobuf/Enum$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/Enum;

    invoke-virtual {p1}, Lcom/google/protobuf/SourceContext$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/SourceContext;

    invoke-static {v0, p1}, Lcom/google/protobuf/Enum;->access$1600(Lcom/google/protobuf/Enum;Lcom/google/protobuf/SourceContext;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public setSourceContext(Lcom/google/protobuf/SourceContext;)Lcom/google/protobuf/Enum$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 760
    invoke-virtual {p0}, Lcom/google/protobuf/Enum$Builder;->copyOnWrite()V

    .line 761
    iget-object v0, p0, Lcom/google/protobuf/Enum$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/Enum;

    invoke-static {v0, p1}, Lcom/google/protobuf/Enum;->access$1600(Lcom/google/protobuf/Enum;Lcom/google/protobuf/SourceContext;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public setSyntax(Lcom/google/protobuf/Syntax;)Lcom/google/protobuf/Enum$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 821
    invoke-virtual {p0}, Lcom/google/protobuf/Enum$Builder;->copyOnWrite()V

    .line 822
    iget-object v0, p0, Lcom/google/protobuf/Enum$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/Enum;

    invoke-static {v0, p1}, Lcom/google/protobuf/Enum;->access$2000(Lcom/google/protobuf/Enum;Lcom/google/protobuf/Syntax;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public setSyntaxValue(I)Lcom/google/protobuf/Enum$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 803
    invoke-virtual {p0}, Lcom/google/protobuf/Enum$Builder;->copyOnWrite()V

    .line 804
    iget-object v0, p0, Lcom/google/protobuf/Enum$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/Enum;

    invoke-static {v0, p1}, Lcom/google/protobuf/Enum;->access$1900(Lcom/google/protobuf/Enum;I)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method
