.class public final Lcom/google/rpc/LocalizedMessage$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "LocalizedMessage.java"

# interfaces
.implements Lcom/google/rpc/LocalizedMessageOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/rpc/LocalizedMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/google/rpc/LocalizedMessage;",
        "Lcom/google/rpc/LocalizedMessage$Builder;",
        ">;",
        "Lcom/google/rpc/LocalizedMessageOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 263
    invoke-static {}, Lcom/google/rpc/LocalizedMessage;->access$000()Lcom/google/rpc/LocalizedMessage;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method synthetic constructor <init>(Lcom/google/rpc/LocalizedMessage$1;)V
    .locals 0

    .line 256
    invoke-direct {p0}, Lcom/google/rpc/LocalizedMessage$Builder;-><init>()V

    return-void

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public clearLocale()Lcom/google/rpc/LocalizedMessage$Builder;
    .locals 1

    .line 324
    invoke-virtual {p0}, Lcom/google/rpc/LocalizedMessage$Builder;->copyOnWrite()V

    .line 325
    iget-object v0, p0, Lcom/google/rpc/LocalizedMessage$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/LocalizedMessage;

    invoke-static {v0}, Lcom/google/rpc/LocalizedMessage;->access$200(Lcom/google/rpc/LocalizedMessage;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public clearMessage()Lcom/google/rpc/LocalizedMessage$Builder;
    .locals 1

    .line 395
    invoke-virtual {p0}, Lcom/google/rpc/LocalizedMessage$Builder;->copyOnWrite()V

    .line 396
    iget-object v0, p0, Lcom/google/rpc/LocalizedMessage$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/LocalizedMessage;

    invoke-static {v0}, Lcom/google/rpc/LocalizedMessage;->access$500(Lcom/google/rpc/LocalizedMessage;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public getLocale()Ljava/lang/String;
    .locals 1

    .line 279
    iget-object v0, p0, Lcom/google/rpc/LocalizedMessage$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/LocalizedMessage;

    invoke-virtual {v0}, Lcom/google/rpc/LocalizedMessage;->getLocale()Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getLocaleBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 294
    iget-object v0, p0, Lcom/google/rpc/LocalizedMessage$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/LocalizedMessage;

    invoke-virtual {v0}, Lcom/google/rpc/LocalizedMessage;->getLocaleBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    .line 356
    iget-object v0, p0, Lcom/google/rpc/LocalizedMessage$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/LocalizedMessage;

    invoke-virtual {v0}, Lcom/google/rpc/LocalizedMessage;->getMessage()Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getMessageBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 369
    iget-object v0, p0, Lcom/google/rpc/LocalizedMessage$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/LocalizedMessage;

    invoke-virtual {v0}, Lcom/google/rpc/LocalizedMessage;->getMessageBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public setLocale(Ljava/lang/String;)Lcom/google/rpc/LocalizedMessage$Builder;
    .locals 1

    .line 309
    invoke-virtual {p0}, Lcom/google/rpc/LocalizedMessage$Builder;->copyOnWrite()V

    .line 310
    iget-object v0, p0, Lcom/google/rpc/LocalizedMessage$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/LocalizedMessage;

    invoke-static {v0, p1}, Lcom/google/rpc/LocalizedMessage;->access$100(Lcom/google/rpc/LocalizedMessage;Ljava/lang/String;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public setLocaleBytes(Lcom/google/protobuf/ByteString;)Lcom/google/rpc/LocalizedMessage$Builder;
    .locals 1

    .line 341
    invoke-virtual {p0}, Lcom/google/rpc/LocalizedMessage$Builder;->copyOnWrite()V

    .line 342
    iget-object v0, p0, Lcom/google/rpc/LocalizedMessage$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/LocalizedMessage;

    invoke-static {v0, p1}, Lcom/google/rpc/LocalizedMessage;->access$300(Lcom/google/rpc/LocalizedMessage;Lcom/google/protobuf/ByteString;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public setMessage(Ljava/lang/String;)Lcom/google/rpc/LocalizedMessage$Builder;
    .locals 1

    .line 382
    invoke-virtual {p0}, Lcom/google/rpc/LocalizedMessage$Builder;->copyOnWrite()V

    .line 383
    iget-object v0, p0, Lcom/google/rpc/LocalizedMessage$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/LocalizedMessage;

    invoke-static {v0, p1}, Lcom/google/rpc/LocalizedMessage;->access$400(Lcom/google/rpc/LocalizedMessage;Ljava/lang/String;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public setMessageBytes(Lcom/google/protobuf/ByteString;)Lcom/google/rpc/LocalizedMessage$Builder;
    .locals 1

    .line 410
    invoke-virtual {p0}, Lcom/google/rpc/LocalizedMessage$Builder;->copyOnWrite()V

    .line 411
    iget-object v0, p0, Lcom/google/rpc/LocalizedMessage$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/LocalizedMessage;

    invoke-static {v0, p1}, Lcom/google/rpc/LocalizedMessage;->access$600(Lcom/google/rpc/LocalizedMessage;Lcom/google/protobuf/ByteString;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method
