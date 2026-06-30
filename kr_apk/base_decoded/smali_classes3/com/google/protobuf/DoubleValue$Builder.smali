.class public final Lcom/google/protobuf/DoubleValue$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "DoubleValue.java"

# interfaces
.implements Lcom/google/protobuf/DoubleValueOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/DoubleValue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/google/protobuf/DoubleValue;",
        "Lcom/google/protobuf/DoubleValue$Builder;",
        ">;",
        "Lcom/google/protobuf/DoubleValueOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 136
    invoke-static {}, Lcom/google/protobuf/DoubleValue;->access$000()Lcom/google/protobuf/DoubleValue;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/DoubleValue$1;)V
    .locals 0

    .line 129
    invoke-direct {p0}, Lcom/google/protobuf/DoubleValue$Builder;-><init>()V

    return-void

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public clearValue()Lcom/google/protobuf/DoubleValue$Builder;
    .locals 1

    .line 163
    invoke-virtual {p0}, Lcom/google/protobuf/DoubleValue$Builder;->copyOnWrite()V

    .line 164
    iget-object v0, p0, Lcom/google/protobuf/DoubleValue$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/DoubleValue;

    invoke-static {v0}, Lcom/google/protobuf/DoubleValue;->access$200(Lcom/google/protobuf/DoubleValue;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public getValue()D
    .locals 2

    .line 146
    iget-object v0, p0, Lcom/google/protobuf/DoubleValue$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/DoubleValue;

    invoke-virtual {v0}, Lcom/google/protobuf/DoubleValue;->getValue()D

    move-result-wide v0

    return-wide v0

    nop

    .array-data 1
    .end array-data
.end method

.method public setValue(D)Lcom/google/protobuf/DoubleValue$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 154
    invoke-virtual {p0}, Lcom/google/protobuf/DoubleValue$Builder;->copyOnWrite()V

    .line 155
    iget-object v0, p0, Lcom/google/protobuf/DoubleValue$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/DoubleValue;

    invoke-static {v0, p1, p2}, Lcom/google/protobuf/DoubleValue;->access$100(Lcom/google/protobuf/DoubleValue;D)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method
