.class public final Lcom/google/rpc/RetryInfo$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "RetryInfo.java"

# interfaces
.implements Lcom/google/rpc/RetryInfoOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/rpc/RetryInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/google/rpc/RetryInfo;",
        "Lcom/google/rpc/RetryInfo$Builder;",
        ">;",
        "Lcom/google/rpc/RetryInfoOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 201
    invoke-static {}, Lcom/google/rpc/RetryInfo;->access$000()Lcom/google/rpc/RetryInfo;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method synthetic constructor <init>(Lcom/google/rpc/RetryInfo$1;)V
    .locals 0

    .line 194
    invoke-direct {p0}, Lcom/google/rpc/RetryInfo$Builder;-><init>()V

    return-void

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public clearRetryDelay()Lcom/google/rpc/RetryInfo$Builder;
    .locals 1

    .line 271
    invoke-virtual {p0}, Lcom/google/rpc/RetryInfo$Builder;->copyOnWrite()V

    .line 272
    iget-object v0, p0, Lcom/google/rpc/RetryInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/RetryInfo;

    invoke-static {v0}, Lcom/google/rpc/RetryInfo;->access$300(Lcom/google/rpc/RetryInfo;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public getRetryDelay()Lcom/google/protobuf/Duration;
    .locals 1

    .line 225
    iget-object v0, p0, Lcom/google/rpc/RetryInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/RetryInfo;

    invoke-virtual {v0}, Lcom/google/rpc/RetryInfo;->getRetryDelay()Lcom/google/protobuf/Duration;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public hasRetryDelay()Z
    .locals 1

    .line 214
    iget-object v0, p0, Lcom/google/rpc/RetryInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/RetryInfo;

    invoke-virtual {v0}, Lcom/google/rpc/RetryInfo;->hasRetryDelay()Z

    move-result v0

    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public mergeRetryDelay(Lcom/google/protobuf/Duration;)Lcom/google/rpc/RetryInfo$Builder;
    .locals 1

    .line 260
    invoke-virtual {p0}, Lcom/google/rpc/RetryInfo$Builder;->copyOnWrite()V

    .line 261
    iget-object v0, p0, Lcom/google/rpc/RetryInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/RetryInfo;

    invoke-static {v0, p1}, Lcom/google/rpc/RetryInfo;->access$200(Lcom/google/rpc/RetryInfo;Lcom/google/protobuf/Duration;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public setRetryDelay(Lcom/google/protobuf/Duration$Builder;)Lcom/google/rpc/RetryInfo$Builder;
    .locals 1

    .line 248
    invoke-virtual {p0}, Lcom/google/rpc/RetryInfo$Builder;->copyOnWrite()V

    .line 249
    iget-object v0, p0, Lcom/google/rpc/RetryInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/RetryInfo;

    invoke-virtual {p1}, Lcom/google/protobuf/Duration$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/Duration;

    invoke-static {v0, p1}, Lcom/google/rpc/RetryInfo;->access$100(Lcom/google/rpc/RetryInfo;Lcom/google/protobuf/Duration;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public setRetryDelay(Lcom/google/protobuf/Duration;)Lcom/google/rpc/RetryInfo$Builder;
    .locals 1

    .line 235
    invoke-virtual {p0}, Lcom/google/rpc/RetryInfo$Builder;->copyOnWrite()V

    .line 236
    iget-object v0, p0, Lcom/google/rpc/RetryInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/RetryInfo;

    invoke-static {v0, p1}, Lcom/google/rpc/RetryInfo;->access$100(Lcom/google/rpc/RetryInfo;Lcom/google/protobuf/Duration;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method
