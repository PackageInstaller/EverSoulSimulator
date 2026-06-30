.class public final Lcom/google/rpc/Help$Link$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Help.java"

# interfaces
.implements Lcom/google/rpc/Help$LinkOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/rpc/Help$Link;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/google/rpc/Help$Link;",
        "Lcom/google/rpc/Help$Link$Builder;",
        ">;",
        "Lcom/google/rpc/Help$LinkOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 313
    invoke-static {}, Lcom/google/rpc/Help$Link;->access$000()Lcom/google/rpc/Help$Link;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method synthetic constructor <init>(Lcom/google/rpc/Help$1;)V
    .locals 0

    .line 306
    invoke-direct {p0}, Lcom/google/rpc/Help$Link$Builder;-><init>()V

    return-void

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public clearDescription()Lcom/google/rpc/Help$Link$Builder;
    .locals 1

    .line 366
    invoke-virtual {p0}, Lcom/google/rpc/Help$Link$Builder;->copyOnWrite()V

    .line 367
    iget-object v0, p0, Lcom/google/rpc/Help$Link$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/Help$Link;

    invoke-static {v0}, Lcom/google/rpc/Help$Link;->access$200(Lcom/google/rpc/Help$Link;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public clearUrl()Lcom/google/rpc/Help$Link$Builder;
    .locals 1

    .line 435
    invoke-virtual {p0}, Lcom/google/rpc/Help$Link$Builder;->copyOnWrite()V

    .line 436
    iget-object v0, p0, Lcom/google/rpc/Help$Link$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/Help$Link;

    invoke-static {v0}, Lcom/google/rpc/Help$Link;->access$500(Lcom/google/rpc/Help$Link;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .line 327
    iget-object v0, p0, Lcom/google/rpc/Help$Link$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/Help$Link;

    invoke-virtual {v0}, Lcom/google/rpc/Help$Link;->getDescription()Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getDescriptionBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 340
    iget-object v0, p0, Lcom/google/rpc/Help$Link$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/Help$Link;

    invoke-virtual {v0}, Lcom/google/rpc/Help$Link;->getDescriptionBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .line 396
    iget-object v0, p0, Lcom/google/rpc/Help$Link$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/Help$Link;

    invoke-virtual {v0}, Lcom/google/rpc/Help$Link;->getUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getUrlBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 409
    iget-object v0, p0, Lcom/google/rpc/Help$Link$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/Help$Link;

    invoke-virtual {v0}, Lcom/google/rpc/Help$Link;->getUrlBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public setDescription(Ljava/lang/String;)Lcom/google/rpc/Help$Link$Builder;
    .locals 1

    .line 353
    invoke-virtual {p0}, Lcom/google/rpc/Help$Link$Builder;->copyOnWrite()V

    .line 354
    iget-object v0, p0, Lcom/google/rpc/Help$Link$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/Help$Link;

    invoke-static {v0, p1}, Lcom/google/rpc/Help$Link;->access$100(Lcom/google/rpc/Help$Link;Ljava/lang/String;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public setDescriptionBytes(Lcom/google/protobuf/ByteString;)Lcom/google/rpc/Help$Link$Builder;
    .locals 1

    .line 381
    invoke-virtual {p0}, Lcom/google/rpc/Help$Link$Builder;->copyOnWrite()V

    .line 382
    iget-object v0, p0, Lcom/google/rpc/Help$Link$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/Help$Link;

    invoke-static {v0, p1}, Lcom/google/rpc/Help$Link;->access$300(Lcom/google/rpc/Help$Link;Lcom/google/protobuf/ByteString;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public setUrl(Ljava/lang/String;)Lcom/google/rpc/Help$Link$Builder;
    .locals 1

    .line 422
    invoke-virtual {p0}, Lcom/google/rpc/Help$Link$Builder;->copyOnWrite()V

    .line 423
    iget-object v0, p0, Lcom/google/rpc/Help$Link$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/Help$Link;

    invoke-static {v0, p1}, Lcom/google/rpc/Help$Link;->access$400(Lcom/google/rpc/Help$Link;Ljava/lang/String;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public setUrlBytes(Lcom/google/protobuf/ByteString;)Lcom/google/rpc/Help$Link$Builder;
    .locals 1

    .line 450
    invoke-virtual {p0}, Lcom/google/rpc/Help$Link$Builder;->copyOnWrite()V

    .line 451
    iget-object v0, p0, Lcom/google/rpc/Help$Link$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/Help$Link;

    invoke-static {v0, p1}, Lcom/google/rpc/Help$Link;->access$600(Lcom/google/rpc/Help$Link;Lcom/google/protobuf/ByteString;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method
