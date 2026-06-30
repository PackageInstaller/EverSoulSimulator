.class public final Lcom/google/protobuf/Api$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Api.java"

# interfaces
.implements Lcom/google/protobuf/ApiOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/Api;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/google/protobuf/Api;",
        "Lcom/google/protobuf/Api$Builder;",
        ">;",
        "Lcom/google/protobuf/ApiOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 580
    invoke-static {}, Lcom/google/protobuf/Api;->access$000()Lcom/google/protobuf/Api;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/Api$1;)V
    .locals 0

    .line 573
    invoke-direct {p0}, Lcom/google/protobuf/Api$Builder;-><init>()V

    return-void

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public addAllMethods(Ljava/lang/Iterable;)Lcom/google/protobuf/Api$Builder;
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
            "Lcom/google/protobuf/Method;",
            ">;)",
            "Lcom/google/protobuf/Api$Builder;"
        }
    .end annotation

    .line 714
    invoke-virtual {p0}, Lcom/google/protobuf/Api$Builder;->copyOnWrite()V

    .line 715
    iget-object v0, p0, Lcom/google/protobuf/Api$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/Api;

    invoke-static {v0, p1}, Lcom/google/protobuf/Api;->access$700(Lcom/google/protobuf/Api;Ljava/lang/Iterable;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public addAllMixins(Ljava/lang/Iterable;)Lcom/google/protobuf/Api$Builder;
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
            "Lcom/google/protobuf/Mixin;",
            ">;)",
            "Lcom/google/protobuf/Api$Builder;"
        }
    .end annotation

    .line 1014
    invoke-virtual {p0}, Lcom/google/protobuf/Api$Builder;->copyOnWrite()V

    .line 1015
    iget-object v0, p0, Lcom/google/protobuf/Api$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/Api;

    invoke-static {v0, p1}, Lcom/google/protobuf/Api;->access$2500(Lcom/google/protobuf/Api;Ljava/lang/Iterable;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public addAllOptions(Ljava/lang/Iterable;)Lcom/google/protobuf/Api$Builder;
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
            "Lcom/google/protobuf/Api$Builder;"
        }
    .end annotation

    .line 816
    invoke-virtual {p0}, Lcom/google/protobuf/Api$Builder;->copyOnWrite()V

    .line 817
    iget-object v0, p0, Lcom/google/protobuf/Api$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/Api;

    invoke-static {v0, p1}, Lcom/google/protobuf/Api;->access$1300(Lcom/google/protobuf/Api;Ljava/lang/Iterable;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public addMethods(ILcom/google/protobuf/Method$Builder;)Lcom/google/protobuf/Api$Builder;
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

    .line 704
    invoke-virtual {p0}, Lcom/google/protobuf/Api$Builder;->copyOnWrite()V

    .line 705
    iget-object v0, p0, Lcom/google/protobuf/Api$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/Api;

    .line 706
    invoke-virtual {p2}, Lcom/google/protobuf/Method$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Lcom/google/protobuf/Method;

    .line 705
    invoke-static {v0, p1, p2}, Lcom/google/protobuf/Api;->access$600(Lcom/google/protobuf/Api;ILcom/google/protobuf/Method;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public addMethods(ILcom/google/protobuf/Method;)Lcom/google/protobuf/Api$Builder;
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

    .line 686
    invoke-virtual {p0}, Lcom/google/protobuf/Api$Builder;->copyOnWrite()V

    .line 687
    iget-object v0, p0, Lcom/google/protobuf/Api$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/Api;

    invoke-static {v0, p1, p2}, Lcom/google/protobuf/Api;->access$600(Lcom/google/protobuf/Api;ILcom/google/protobuf/Method;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public addMethods(Lcom/google/protobuf/Method$Builder;)Lcom/google/protobuf/Api$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builderForValue"
        }
    .end annotation

    .line 695
    invoke-virtual {p0}, Lcom/google/protobuf/Api$Builder;->copyOnWrite()V

    .line 696
    iget-object v0, p0, Lcom/google/protobuf/Api$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/Api;

    invoke-virtual {p1}, Lcom/google/protobuf/Method$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/Method;

    invoke-static {v0, p1}, Lcom/google/protobuf/Api;->access$500(Lcom/google/protobuf/Api;Lcom/google/protobuf/Method;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public addMethods(Lcom/google/protobuf/Method;)Lcom/google/protobuf/Api$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 677
    invoke-virtual {p0}, Lcom/google/protobuf/Api$Builder;->copyOnWrite()V

    .line 678
    iget-object v0, p0, Lcom/google/protobuf/Api$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/Api;

    invoke-static {v0, p1}, Lcom/google/protobuf/Api;->access$500(Lcom/google/protobuf/Api;Lcom/google/protobuf/Method;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public addMixins(ILcom/google/protobuf/Mixin$Builder;)Lcom/google/protobuf/Api$Builder;
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

    .line 1004
    invoke-virtual {p0}, Lcom/google/protobuf/Api$Builder;->copyOnWrite()V

    .line 1005
    iget-object v0, p0, Lcom/google/protobuf/Api$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/Api;

    .line 1006
    invoke-virtual {p2}, Lcom/google/protobuf/Mixin$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Lcom/google/protobuf/Mixin;

    .line 1005
    invoke-static {v0, p1, p2}, Lcom/google/protobuf/Api;->access$2400(Lcom/google/protobuf/Api;ILcom/google/protobuf/Mixin;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public addMixins(ILcom/google/protobuf/Mixin;)Lcom/google/protobuf/Api$Builder;
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

    .line 986
    invoke-virtual {p0}, Lcom/google/protobuf/Api$Builder;->copyOnWrite()V

    .line 987
    iget-object v0, p0, Lcom/google/protobuf/Api$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/Api;

    invoke-static {v0, p1, p2}, Lcom/google/protobuf/Api;->access$2400(Lcom/google/protobuf/Api;ILcom/google/protobuf/Mixin;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public addMixins(Lcom/google/protobuf/Mixin$Builder;)Lcom/google/protobuf/Api$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builderForValue"
        }
    .end annotation

    .line 995
    invoke-virtual {p0}, Lcom/google/protobuf/Api$Builder;->copyOnWrite()V

    .line 996
    iget-object v0, p0, Lcom/google/protobuf/Api$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/Api;

    invoke-virtual {p1}, Lcom/google/protobuf/Mixin$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/Mixin;

    invoke-static {v0, p1}, Lcom/google/protobuf/Api;->access$2300(Lcom/google/protobuf/Api;Lcom/google/protobuf/Mixin;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public addMixins(Lcom/google/protobuf/Mixin;)Lcom/google/protobuf/Api$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 977
    invoke-virtual {p0}, Lcom/google/protobuf/Api$Builder;->copyOnWrite()V

    .line 978
    iget-object v0, p0, Lcom/google/protobuf/Api$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/Api;

    invoke-static {v0, p1}, Lcom/google/protobuf/Api;->access$2300(Lcom/google/protobuf/Api;Lcom/google/protobuf/Mixin;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public addOptions(ILcom/google/protobuf/Option$Builder;)Lcom/google/protobuf/Api$Builder;
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

    .line 806
    invoke-virtual {p0}, Lcom/google/protobuf/Api$Builder;->copyOnWrite()V

    .line 807
    iget-object v0, p0, Lcom/google/protobuf/Api$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/Api;

    .line 808
    invoke-virtual {p2}, Lcom/google/protobuf/Option$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Lcom/google/protobuf/Option;

    .line 807
    invoke-static {v0, p1, p2}, Lcom/google/protobuf/Api;->access$1200(Lcom/google/protobuf/Api;ILcom/google/protobuf/Option;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public addOptions(ILcom/google/protobuf/Option;)Lcom/google/protobuf/Api$Builder;
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

    .line 788
    invoke-virtual {p0}, Lcom/google/protobuf/Api$Builder;->copyOnWrite()V

    .line 789
    iget-object v0, p0, Lcom/google/protobuf/Api$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/Api;

    invoke-static {v0, p1, p2}, Lcom/google/protobuf/Api;->access$1200(Lcom/google/protobuf/Api;ILcom/google/protobuf/Option;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public addOptions(Lcom/google/protobuf/Option$Builder;)Lcom/google/protobuf/Api$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builderForValue"
        }
    .end annotation

    .line 797
    invoke-virtual {p0}, Lcom/google/protobuf/Api$Builder;->copyOnWrite()V

    .line 798
    iget-object v0, p0, Lcom/google/protobuf/Api$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/Api;

    invoke-virtual {p1}, Lcom/google/protobuf/Option$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/Option;

    invoke-static {v0, p1}, Lcom/google/protobuf/Api;->access$1100(Lcom/google/protobuf/Api;Lcom/google/protobuf/Option;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public addOptions(Lcom/google/protobuf/Option;)Lcom/google/protobuf/Api$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 779
    invoke-virtual {p0}, Lcom/google/protobuf/Api$Builder;->copyOnWrite()V

    .line 780
    iget-object v0, p0, Lcom/google/protobuf/Api$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/Api;

    invoke-static {v0, p1}, Lcom/google/protobuf/Api;->access$1100(Lcom/google/protobuf/Api;Lcom/google/protobuf/Option;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public clearMethods()Lcom/google/protobuf/Api$Builder;
    .locals 1

    .line 722
    invoke-virtual {p0}, Lcom/google/protobuf/Api$Builder;->copyOnWrite()V

    .line 723
    iget-object v0, p0, Lcom/google/protobuf/Api$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/Api;

    invoke-static {v0}, Lcom/google/protobuf/Api;->access$800(Lcom/google/protobuf/Api;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public clearMixins()Lcom/google/protobuf/Api$Builder;
    .locals 1

    .line 1022
    invoke-virtual {p0}, Lcom/google/protobuf/Api$Builder;->copyOnWrite()V

    .line 1023
    iget-object v0, p0, Lcom/google/protobuf/Api$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/Api;

    invoke-static {v0}, Lcom/google/protobuf/Api;->access$2600(Lcom/google/protobuf/Api;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public clearName()Lcom/google/protobuf/Api$Builder;
    .locals 1

    .line 617
    invoke-virtual {p0}, Lcom/google/protobuf/Api$Builder;->copyOnWrite()V

    .line 618
    iget-object v0, p0, Lcom/google/protobuf/Api$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/Api;

    invoke-static {v0}, Lcom/google/protobuf/Api;->access$200(Lcom/google/protobuf/Api;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public clearOptions()Lcom/google/protobuf/Api$Builder;
    .locals 1

    .line 824
    invoke-virtual {p0}, Lcom/google/protobuf/Api$Builder;->copyOnWrite()V

    .line 825
    iget-object v0, p0, Lcom/google/protobuf/Api$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/Api;

    invoke-static {v0}, Lcom/google/protobuf/Api;->access$1400(Lcom/google/protobuf/Api;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public clearSourceContext()Lcom/google/protobuf/Api$Builder;
    .locals 1

    .line 928
    invoke-virtual {p0}, Lcom/google/protobuf/Api$Builder;->copyOnWrite()V

    .line 929
    iget-object v0, p0, Lcom/google/protobuf/Api$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/Api;

    invoke-static {v0}, Lcom/google/protobuf/Api;->access$2100(Lcom/google/protobuf/Api;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public clearSyntax()Lcom/google/protobuf/Api$Builder;
    .locals 1

    .line 1076
    invoke-virtual {p0}, Lcom/google/protobuf/Api$Builder;->copyOnWrite()V

    .line 1077
    iget-object v0, p0, Lcom/google/protobuf/Api$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/Api;

    invoke-static {v0}, Lcom/google/protobuf/Api;->access$3000(Lcom/google/protobuf/Api;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public clearVersion()Lcom/google/protobuf/Api$Builder;
    .locals 1

    .line 870
    invoke-virtual {p0}, Lcom/google/protobuf/Api$Builder;->copyOnWrite()V

    .line 871
    iget-object v0, p0, Lcom/google/protobuf/Api$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/Api;

    invoke-static {v0}, Lcom/google/protobuf/Api;->access$1700(Lcom/google/protobuf/Api;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public getMethods(I)Lcom/google/protobuf/Method;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 652
    iget-object v0, p0, Lcom/google/protobuf/Api$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/Api;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/Api;->getMethods(I)Lcom/google/protobuf/Method;

    move-result-object p1

    return-object p1

    nop

    .array-data 1
    .end array-data
.end method

.method public getMethodsCount()I
    .locals 1

    .line 646
    iget-object v0, p0, Lcom/google/protobuf/Api$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/Api;

    invoke-virtual {v0}, Lcom/google/protobuf/Api;->getMethodsCount()I

    move-result v0

    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getMethodsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/protobuf/Method;",
            ">;"
        }
    .end annotation

    .line 638
    iget-object v0, p0, Lcom/google/protobuf/Api$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/Api;

    .line 639
    invoke-virtual {v0}, Lcom/google/protobuf/Api;->getMethodsList()Ljava/util/List;

    move-result-object v0

    .line 638
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getMixins(I)Lcom/google/protobuf/Mixin;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 952
    iget-object v0, p0, Lcom/google/protobuf/Api$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/Api;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/Api;->getMixins(I)Lcom/google/protobuf/Mixin;

    move-result-object p1

    return-object p1

    nop

    .array-data 1
    .end array-data
.end method

.method public getMixinsCount()I
    .locals 1

    .line 946
    iget-object v0, p0, Lcom/google/protobuf/Api$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/Api;

    invoke-virtual {v0}, Lcom/google/protobuf/Api;->getMixinsCount()I

    move-result v0

    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getMixinsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/protobuf/Mixin;",
            ">;"
        }
    .end annotation

    .line 938
    iget-object v0, p0, Lcom/google/protobuf/Api$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/Api;

    .line 939
    invoke-virtual {v0}, Lcom/google/protobuf/Api;->getMixinsList()Ljava/util/List;

    move-result-object v0

    .line 938
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 590
    iget-object v0, p0, Lcom/google/protobuf/Api$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/Api;

    invoke-virtual {v0}, Lcom/google/protobuf/Api;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getNameBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 599
    iget-object v0, p0, Lcom/google/protobuf/Api$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/Api;

    invoke-virtual {v0}, Lcom/google/protobuf/Api;->getNameBytes()Lcom/google/protobuf/ByteString;

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

    .line 754
    iget-object v0, p0, Lcom/google/protobuf/Api$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/Api;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/Api;->getOptions(I)Lcom/google/protobuf/Option;

    move-result-object p1

    return-object p1

    nop

    .array-data 1
    .end array-data
.end method

.method public getOptionsCount()I
    .locals 1

    .line 748
    iget-object v0, p0, Lcom/google/protobuf/Api$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/Api;

    invoke-virtual {v0}, Lcom/google/protobuf/Api;->getOptionsCount()I

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

    .line 740
    iget-object v0, p0, Lcom/google/protobuf/Api$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/Api;

    .line 741
    invoke-virtual {v0}, Lcom/google/protobuf/Api;->getOptionsList()Ljava/util/List;

    move-result-object v0

    .line 740
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getSourceContext()Lcom/google/protobuf/SourceContext;
    .locals 1

    .line 898
    iget-object v0, p0, Lcom/google/protobuf/Api$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/Api;

    invoke-virtual {v0}, Lcom/google/protobuf/Api;->getSourceContext()Lcom/google/protobuf/SourceContext;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getSyntax()Lcom/google/protobuf/Syntax;
    .locals 1

    .line 1059
    iget-object v0, p0, Lcom/google/protobuf/Api$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/Api;

    invoke-virtual {v0}, Lcom/google/protobuf/Api;->getSyntax()Lcom/google/protobuf/Syntax;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getSyntaxValue()I
    .locals 1

    .line 1041
    iget-object v0, p0, Lcom/google/protobuf/Api$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/Api;

    invoke-virtual {v0}, Lcom/google/protobuf/Api;->getSyntaxValue()I

    move-result v0

    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .line 843
    iget-object v0, p0, Lcom/google/protobuf/Api$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/Api;

    invoke-virtual {v0}, Lcom/google/protobuf/Api;->getVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getVersionBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 852
    iget-object v0, p0, Lcom/google/protobuf/Api$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/Api;

    invoke-virtual {v0}, Lcom/google/protobuf/Api;->getVersionBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public hasSourceContext()Z
    .locals 1

    .line 891
    iget-object v0, p0, Lcom/google/protobuf/Api$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/Api;

    invoke-virtual {v0}, Lcom/google/protobuf/Api;->hasSourceContext()Z

    move-result v0

    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public mergeSourceContext(Lcom/google/protobuf/SourceContext;)Lcom/google/protobuf/Api$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 921
    invoke-virtual {p0}, Lcom/google/protobuf/Api$Builder;->copyOnWrite()V

    .line 922
    iget-object v0, p0, Lcom/google/protobuf/Api$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/Api;

    invoke-static {v0, p1}, Lcom/google/protobuf/Api;->access$2000(Lcom/google/protobuf/Api;Lcom/google/protobuf/SourceContext;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public removeMethods(I)Lcom/google/protobuf/Api$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 730
    invoke-virtual {p0}, Lcom/google/protobuf/Api$Builder;->copyOnWrite()V

    .line 731
    iget-object v0, p0, Lcom/google/protobuf/Api$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/Api;

    invoke-static {v0, p1}, Lcom/google/protobuf/Api;->access$900(Lcom/google/protobuf/Api;I)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public removeMixins(I)Lcom/google/protobuf/Api$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 1030
    invoke-virtual {p0}, Lcom/google/protobuf/Api$Builder;->copyOnWrite()V

    .line 1031
    iget-object v0, p0, Lcom/google/protobuf/Api$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/Api;

    invoke-static {v0, p1}, Lcom/google/protobuf/Api;->access$2700(Lcom/google/protobuf/Api;I)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public removeOptions(I)Lcom/google/protobuf/Api$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 832
    invoke-virtual {p0}, Lcom/google/protobuf/Api$Builder;->copyOnWrite()V

    .line 833
    iget-object v0, p0, Lcom/google/protobuf/Api$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/Api;

    invoke-static {v0, p1}, Lcom/google/protobuf/Api;->access$1500(Lcom/google/protobuf/Api;I)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public setMethods(ILcom/google/protobuf/Method$Builder;)Lcom/google/protobuf/Api$Builder;
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

    .line 668
    invoke-virtual {p0}, Lcom/google/protobuf/Api$Builder;->copyOnWrite()V

    .line 669
    iget-object v0, p0, Lcom/google/protobuf/Api$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/Api;

    .line 670
    invoke-virtual {p2}, Lcom/google/protobuf/Method$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Lcom/google/protobuf/Method;

    .line 669
    invoke-static {v0, p1, p2}, Lcom/google/protobuf/Api;->access$400(Lcom/google/protobuf/Api;ILcom/google/protobuf/Method;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public setMethods(ILcom/google/protobuf/Method;)Lcom/google/protobuf/Api$Builder;
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

    .line 659
    invoke-virtual {p0}, Lcom/google/protobuf/Api$Builder;->copyOnWrite()V

    .line 660
    iget-object v0, p0, Lcom/google/protobuf/Api$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/Api;

    invoke-static {v0, p1, p2}, Lcom/google/protobuf/Api;->access$400(Lcom/google/protobuf/Api;ILcom/google/protobuf/Method;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public setMixins(ILcom/google/protobuf/Mixin$Builder;)Lcom/google/protobuf/Api$Builder;
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

    .line 968
    invoke-virtual {p0}, Lcom/google/protobuf/Api$Builder;->copyOnWrite()V

    .line 969
    iget-object v0, p0, Lcom/google/protobuf/Api$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/Api;

    .line 970
    invoke-virtual {p2}, Lcom/google/protobuf/Mixin$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Lcom/google/protobuf/Mixin;

    .line 969
    invoke-static {v0, p1, p2}, Lcom/google/protobuf/Api;->access$2200(Lcom/google/protobuf/Api;ILcom/google/protobuf/Mixin;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public setMixins(ILcom/google/protobuf/Mixin;)Lcom/google/protobuf/Api$Builder;
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

    .line 959
    invoke-virtual {p0}, Lcom/google/protobuf/Api$Builder;->copyOnWrite()V

    .line 960
    iget-object v0, p0, Lcom/google/protobuf/Api$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/Api;

    invoke-static {v0, p1, p2}, Lcom/google/protobuf/Api;->access$2200(Lcom/google/protobuf/Api;ILcom/google/protobuf/Mixin;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public setName(Ljava/lang/String;)Lcom/google/protobuf/Api$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 608
    invoke-virtual {p0}, Lcom/google/protobuf/Api$Builder;->copyOnWrite()V

    .line 609
    iget-object v0, p0, Lcom/google/protobuf/Api$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/Api;

    invoke-static {v0, p1}, Lcom/google/protobuf/Api;->access$100(Lcom/google/protobuf/Api;Ljava/lang/String;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public setNameBytes(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/Api$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 628
    invoke-virtual {p0}, Lcom/google/protobuf/Api$Builder;->copyOnWrite()V

    .line 629
    iget-object v0, p0, Lcom/google/protobuf/Api$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/Api;

    invoke-static {v0, p1}, Lcom/google/protobuf/Api;->access$300(Lcom/google/protobuf/Api;Lcom/google/protobuf/ByteString;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public setOptions(ILcom/google/protobuf/Option$Builder;)Lcom/google/protobuf/Api$Builder;
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

    .line 770
    invoke-virtual {p0}, Lcom/google/protobuf/Api$Builder;->copyOnWrite()V

    .line 771
    iget-object v0, p0, Lcom/google/protobuf/Api$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/Api;

    .line 772
    invoke-virtual {p2}, Lcom/google/protobuf/Option$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Lcom/google/protobuf/Option;

    .line 771
    invoke-static {v0, p1, p2}, Lcom/google/protobuf/Api;->access$1000(Lcom/google/protobuf/Api;ILcom/google/protobuf/Option;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public setOptions(ILcom/google/protobuf/Option;)Lcom/google/protobuf/Api$Builder;
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

    .line 761
    invoke-virtual {p0}, Lcom/google/protobuf/Api$Builder;->copyOnWrite()V

    .line 762
    iget-object v0, p0, Lcom/google/protobuf/Api$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/Api;

    invoke-static {v0, p1, p2}, Lcom/google/protobuf/Api;->access$1000(Lcom/google/protobuf/Api;ILcom/google/protobuf/Option;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public setSourceContext(Lcom/google/protobuf/SourceContext$Builder;)Lcom/google/protobuf/Api$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builderForValue"
        }
    .end annotation

    .line 913
    invoke-virtual {p0}, Lcom/google/protobuf/Api$Builder;->copyOnWrite()V

    .line 914
    iget-object v0, p0, Lcom/google/protobuf/Api$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/Api;

    invoke-virtual {p1}, Lcom/google/protobuf/SourceContext$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/SourceContext;

    invoke-static {v0, p1}, Lcom/google/protobuf/Api;->access$1900(Lcom/google/protobuf/Api;Lcom/google/protobuf/SourceContext;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public setSourceContext(Lcom/google/protobuf/SourceContext;)Lcom/google/protobuf/Api$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 904
    invoke-virtual {p0}, Lcom/google/protobuf/Api$Builder;->copyOnWrite()V

    .line 905
    iget-object v0, p0, Lcom/google/protobuf/Api$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/Api;

    invoke-static {v0, p1}, Lcom/google/protobuf/Api;->access$1900(Lcom/google/protobuf/Api;Lcom/google/protobuf/SourceContext;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public setSyntax(Lcom/google/protobuf/Syntax;)Lcom/google/protobuf/Api$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1067
    invoke-virtual {p0}, Lcom/google/protobuf/Api$Builder;->copyOnWrite()V

    .line 1068
    iget-object v0, p0, Lcom/google/protobuf/Api$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/Api;

    invoke-static {v0, p1}, Lcom/google/protobuf/Api;->access$2900(Lcom/google/protobuf/Api;Lcom/google/protobuf/Syntax;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public setSyntaxValue(I)Lcom/google/protobuf/Api$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1049
    invoke-virtual {p0}, Lcom/google/protobuf/Api$Builder;->copyOnWrite()V

    .line 1050
    iget-object v0, p0, Lcom/google/protobuf/Api$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/Api;

    invoke-static {v0, p1}, Lcom/google/protobuf/Api;->access$2800(Lcom/google/protobuf/Api;I)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public setVersion(Ljava/lang/String;)Lcom/google/protobuf/Api$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 861
    invoke-virtual {p0}, Lcom/google/protobuf/Api$Builder;->copyOnWrite()V

    .line 862
    iget-object v0, p0, Lcom/google/protobuf/Api$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/Api;

    invoke-static {v0, p1}, Lcom/google/protobuf/Api;->access$1600(Lcom/google/protobuf/Api;Ljava/lang/String;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public setVersionBytes(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/Api$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 881
    invoke-virtual {p0}, Lcom/google/protobuf/Api$Builder;->copyOnWrite()V

    .line 882
    iget-object v0, p0, Lcom/google/protobuf/Api$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/Api;

    invoke-static {v0, p1}, Lcom/google/protobuf/Api;->access$1800(Lcom/google/protobuf/Api;Lcom/google/protobuf/ByteString;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method
