.class public final Lcom/google/api/Distribution$Range$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Distribution.java"

# interfaces
.implements Lcom/google/api/Distribution$RangeOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/api/Distribution$Range;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/google/api/Distribution$Range;",
        "Lcom/google/api/Distribution$Range$Builder;",
        ">;",
        "Lcom/google/api/Distribution$RangeOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 242
    invoke-static {}, Lcom/google/api/Distribution$Range;->access$000()Lcom/google/api/Distribution$Range;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method synthetic constructor <init>(Lcom/google/api/Distribution$1;)V
    .locals 0

    .line 235
    invoke-direct {p0}, Lcom/google/api/Distribution$Range$Builder;-><init>()V

    return-void

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public clearMax()Lcom/google/api/Distribution$Range$Builder;
    .locals 1

    .line 321
    invoke-virtual {p0}, Lcom/google/api/Distribution$Range$Builder;->copyOnWrite()V

    .line 322
    iget-object v0, p0, Lcom/google/api/Distribution$Range$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Distribution$Range;

    invoke-static {v0}, Lcom/google/api/Distribution$Range;->access$400(Lcom/google/api/Distribution$Range;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public clearMin()Lcom/google/api/Distribution$Range$Builder;
    .locals 1

    .line 281
    invoke-virtual {p0}, Lcom/google/api/Distribution$Range$Builder;->copyOnWrite()V

    .line 282
    iget-object v0, p0, Lcom/google/api/Distribution$Range$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Distribution$Range;

    invoke-static {v0}, Lcom/google/api/Distribution$Range;->access$200(Lcom/google/api/Distribution$Range;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public getMax()D
    .locals 2

    .line 296
    iget-object v0, p0, Lcom/google/api/Distribution$Range$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Distribution$Range;

    invoke-virtual {v0}, Lcom/google/api/Distribution$Range;->getMax()D

    move-result-wide v0

    return-wide v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getMin()D
    .locals 2

    .line 256
    iget-object v0, p0, Lcom/google/api/Distribution$Range$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Distribution$Range;

    invoke-virtual {v0}, Lcom/google/api/Distribution$Range;->getMin()D

    move-result-wide v0

    return-wide v0

    nop

    .array-data 1
    .end array-data
.end method

.method public setMax(D)Lcom/google/api/Distribution$Range$Builder;
    .locals 1

    .line 308
    invoke-virtual {p0}, Lcom/google/api/Distribution$Range$Builder;->copyOnWrite()V

    .line 309
    iget-object v0, p0, Lcom/google/api/Distribution$Range$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Distribution$Range;

    invoke-static {v0, p1, p2}, Lcom/google/api/Distribution$Range;->access$300(Lcom/google/api/Distribution$Range;D)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public setMin(D)Lcom/google/api/Distribution$Range$Builder;
    .locals 1

    .line 268
    invoke-virtual {p0}, Lcom/google/api/Distribution$Range$Builder;->copyOnWrite()V

    .line 269
    iget-object v0, p0, Lcom/google/api/Distribution$Range$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Distribution$Range;

    invoke-static {v0, p1, p2}, Lcom/google/api/Distribution$Range;->access$100(Lcom/google/api/Distribution$Range;D)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method
