.class public final Lcom/google/protobuf/Timestamp$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Timestamp.java"

# interfaces
.implements Lcom/google/protobuf/TimestampOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/Timestamp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/google/protobuf/Timestamp;",
        "Lcom/google/protobuf/Timestamp$Builder;",
        ">;",
        "Lcom/google/protobuf/TimestampOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 162
    invoke-static {}, Lcom/google/protobuf/Timestamp;->access$000()Lcom/google/protobuf/Timestamp;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/Timestamp$1;)V
    .locals 0

    .line 155
    invoke-direct {p0}, Lcom/google/protobuf/Timestamp$Builder;-><init>()V

    return-void

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public clearNanos()Lcom/google/protobuf/Timestamp$Builder;
    .locals 1

    .line 217
    invoke-virtual {p0}, Lcom/google/protobuf/Timestamp$Builder;->copyOnWrite()V

    .line 218
    iget-object v0, p0, Lcom/google/protobuf/Timestamp$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/Timestamp;

    invoke-static {v0}, Lcom/google/protobuf/Timestamp;->access$400(Lcom/google/protobuf/Timestamp;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public clearSeconds()Lcom/google/protobuf/Timestamp$Builder;
    .locals 1

    .line 189
    invoke-virtual {p0}, Lcom/google/protobuf/Timestamp$Builder;->copyOnWrite()V

    .line 190
    iget-object v0, p0, Lcom/google/protobuf/Timestamp$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/Timestamp;

    invoke-static {v0}, Lcom/google/protobuf/Timestamp;->access$200(Lcom/google/protobuf/Timestamp;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public getNanos()I
    .locals 1

    .line 200
    iget-object v0, p0, Lcom/google/protobuf/Timestamp$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/Timestamp;

    invoke-virtual {v0}, Lcom/google/protobuf/Timestamp;->getNanos()I

    move-result v0

    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getSeconds()J
    .locals 2

    .line 172
    iget-object v0, p0, Lcom/google/protobuf/Timestamp$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/Timestamp;

    invoke-virtual {v0}, Lcom/google/protobuf/Timestamp;->getSeconds()J

    move-result-wide v0

    return-wide v0

    nop

    .array-data 1
    .end array-data
.end method

.method public setNanos(I)Lcom/google/protobuf/Timestamp$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 208
    invoke-virtual {p0}, Lcom/google/protobuf/Timestamp$Builder;->copyOnWrite()V

    .line 209
    iget-object v0, p0, Lcom/google/protobuf/Timestamp$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/Timestamp;

    invoke-static {v0, p1}, Lcom/google/protobuf/Timestamp;->access$300(Lcom/google/protobuf/Timestamp;I)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public setSeconds(J)Lcom/google/protobuf/Timestamp$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 180
    invoke-virtual {p0}, Lcom/google/protobuf/Timestamp$Builder;->copyOnWrite()V

    .line 181
    iget-object v0, p0, Lcom/google/protobuf/Timestamp$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/Timestamp;

    invoke-static {v0, p1, p2}, Lcom/google/protobuf/Timestamp;->access$100(Lcom/google/protobuf/Timestamp;J)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method
