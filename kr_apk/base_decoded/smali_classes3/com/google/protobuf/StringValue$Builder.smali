.class public final Lcom/google/protobuf/StringValue$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "StringValue.java"

# interfaces
.implements Lcom/google/protobuf/StringValueOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/StringValue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/google/protobuf/StringValue;",
        "Lcom/google/protobuf/StringValue$Builder;",
        ">;",
        "Lcom/google/protobuf/StringValueOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 158
    invoke-static {}, Lcom/google/protobuf/StringValue;->access$000()Lcom/google/protobuf/StringValue;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/StringValue$1;)V
    .locals 0

    .line 151
    invoke-direct {p0}, Lcom/google/protobuf/StringValue$Builder;-><init>()V

    return-void

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public clearValue()Lcom/google/protobuf/StringValue$Builder;
    .locals 1

    .line 195
    invoke-virtual {p0}, Lcom/google/protobuf/StringValue$Builder;->copyOnWrite()V

    .line 196
    iget-object v0, p0, Lcom/google/protobuf/StringValue$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/StringValue;

    invoke-static {v0}, Lcom/google/protobuf/StringValue;->access$200(Lcom/google/protobuf/StringValue;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .line 168
    iget-object v0, p0, Lcom/google/protobuf/StringValue$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/StringValue;

    invoke-virtual {v0}, Lcom/google/protobuf/StringValue;->getValue()Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getValueBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 177
    iget-object v0, p0, Lcom/google/protobuf/StringValue$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/StringValue;

    invoke-virtual {v0}, Lcom/google/protobuf/StringValue;->getValueBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public setValue(Ljava/lang/String;)Lcom/google/protobuf/StringValue$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 186
    invoke-virtual {p0}, Lcom/google/protobuf/StringValue$Builder;->copyOnWrite()V

    .line 187
    iget-object v0, p0, Lcom/google/protobuf/StringValue$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/StringValue;

    invoke-static {v0, p1}, Lcom/google/protobuf/StringValue;->access$100(Lcom/google/protobuf/StringValue;Ljava/lang/String;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public setValueBytes(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/StringValue$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 206
    invoke-virtual {p0}, Lcom/google/protobuf/StringValue$Builder;->copyOnWrite()V

    .line 207
    iget-object v0, p0, Lcom/google/protobuf/StringValue$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/StringValue;

    invoke-static {v0, p1}, Lcom/google/protobuf/StringValue;->access$300(Lcom/google/protobuf/StringValue;Lcom/google/protobuf/ByteString;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method
