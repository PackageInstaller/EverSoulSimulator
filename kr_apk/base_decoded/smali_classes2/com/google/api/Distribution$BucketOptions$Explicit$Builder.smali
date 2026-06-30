.class public final Lcom/google/api/Distribution$BucketOptions$Explicit$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Distribution.java"

# interfaces
.implements Lcom/google/api/Distribution$BucketOptions$ExplicitOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/api/Distribution$BucketOptions$Explicit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/google/api/Distribution$BucketOptions$Explicit;",
        "Lcom/google/api/Distribution$BucketOptions$Explicit$Builder;",
        ">;",
        "Lcom/google/api/Distribution$BucketOptions$ExplicitOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1688
    invoke-static {}, Lcom/google/api/Distribution$BucketOptions$Explicit;->access$2200()Lcom/google/api/Distribution$BucketOptions$Explicit;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method synthetic constructor <init>(Lcom/google/api/Distribution$1;)V
    .locals 0

    .line 1681
    invoke-direct {p0}, Lcom/google/api/Distribution$BucketOptions$Explicit$Builder;-><init>()V

    return-void

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public addAllBounds(Ljava/lang/Iterable;)Lcom/google/api/Distribution$BucketOptions$Explicit$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Ljava/lang/Double;",
            ">;)",
            "Lcom/google/api/Distribution$BucketOptions$Explicit$Builder;"
        }
    .end annotation

    .line 1771
    invoke-virtual {p0}, Lcom/google/api/Distribution$BucketOptions$Explicit$Builder;->copyOnWrite()V

    .line 1772
    iget-object v0, p0, Lcom/google/api/Distribution$BucketOptions$Explicit$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Distribution$BucketOptions$Explicit;

    invoke-static {v0, p1}, Lcom/google/api/Distribution$BucketOptions$Explicit;->access$2500(Lcom/google/api/Distribution$BucketOptions$Explicit;Ljava/lang/Iterable;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public addBounds(D)Lcom/google/api/Distribution$BucketOptions$Explicit$Builder;
    .locals 1

    .line 1756
    invoke-virtual {p0}, Lcom/google/api/Distribution$BucketOptions$Explicit$Builder;->copyOnWrite()V

    .line 1757
    iget-object v0, p0, Lcom/google/api/Distribution$BucketOptions$Explicit$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Distribution$BucketOptions$Explicit;

    invoke-static {v0, p1, p2}, Lcom/google/api/Distribution$BucketOptions$Explicit;->access$2400(Lcom/google/api/Distribution$BucketOptions$Explicit;D)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public clearBounds()Lcom/google/api/Distribution$BucketOptions$Explicit$Builder;
    .locals 1

    .line 1784
    invoke-virtual {p0}, Lcom/google/api/Distribution$BucketOptions$Explicit$Builder;->copyOnWrite()V

    .line 1785
    iget-object v0, p0, Lcom/google/api/Distribution$BucketOptions$Explicit$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Distribution$BucketOptions$Explicit;

    invoke-static {v0}, Lcom/google/api/Distribution$BucketOptions$Explicit;->access$2600(Lcom/google/api/Distribution$BucketOptions$Explicit;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public getBounds(I)D
    .locals 2

    .line 1729
    iget-object v0, p0, Lcom/google/api/Distribution$BucketOptions$Explicit$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Distribution$BucketOptions$Explicit;

    invoke-virtual {v0, p1}, Lcom/google/api/Distribution$BucketOptions$Explicit;->getBounds(I)D

    move-result-wide v0

    return-wide v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getBoundsCount()I
    .locals 1

    .line 1716
    iget-object v0, p0, Lcom/google/api/Distribution$BucketOptions$Explicit$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Distribution$BucketOptions$Explicit;

    invoke-virtual {v0}, Lcom/google/api/Distribution$BucketOptions$Explicit;->getBoundsCount()I

    move-result v0

    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getBoundsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    .line 1703
    iget-object v0, p0, Lcom/google/api/Distribution$BucketOptions$Explicit$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Distribution$BucketOptions$Explicit;

    .line 1704
    invoke-virtual {v0}, Lcom/google/api/Distribution$BucketOptions$Explicit;->getBoundsList()Ljava/util/List;

    move-result-object v0

    .line 1703
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public setBounds(ID)Lcom/google/api/Distribution$BucketOptions$Explicit$Builder;
    .locals 1

    .line 1742
    invoke-virtual {p0}, Lcom/google/api/Distribution$BucketOptions$Explicit$Builder;->copyOnWrite()V

    .line 1743
    iget-object v0, p0, Lcom/google/api/Distribution$BucketOptions$Explicit$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Distribution$BucketOptions$Explicit;

    invoke-static {v0, p1, p2, p3}, Lcom/google/api/Distribution$BucketOptions$Explicit;->access$2300(Lcom/google/api/Distribution$BucketOptions$Explicit;ID)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method
