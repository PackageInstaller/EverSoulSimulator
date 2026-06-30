.class public final Lcom/google/rpc/BadRequest$FieldViolation$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "BadRequest.java"

# interfaces
.implements Lcom/google/rpc/BadRequest$FieldViolationOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/rpc/BadRequest$FieldViolation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/google/rpc/BadRequest$FieldViolation;",
        "Lcom/google/rpc/BadRequest$FieldViolation$Builder;",
        ">;",
        "Lcom/google/rpc/BadRequest$FieldViolationOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 325
    invoke-static {}, Lcom/google/rpc/BadRequest$FieldViolation;->access$000()Lcom/google/rpc/BadRequest$FieldViolation;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method synthetic constructor <init>(Lcom/google/rpc/BadRequest$1;)V
    .locals 0

    .line 318
    invoke-direct {p0}, Lcom/google/rpc/BadRequest$FieldViolation$Builder;-><init>()V

    return-void

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public clearDescription()Lcom/google/rpc/BadRequest$FieldViolation$Builder;
    .locals 1

    .line 457
    invoke-virtual {p0}, Lcom/google/rpc/BadRequest$FieldViolation$Builder;->copyOnWrite()V

    .line 458
    iget-object v0, p0, Lcom/google/rpc/BadRequest$FieldViolation$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/BadRequest$FieldViolation;

    invoke-static {v0}, Lcom/google/rpc/BadRequest$FieldViolation;->access$500(Lcom/google/rpc/BadRequest$FieldViolation;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public clearField()Lcom/google/rpc/BadRequest$FieldViolation$Builder;
    .locals 1

    .line 386
    invoke-virtual {p0}, Lcom/google/rpc/BadRequest$FieldViolation$Builder;->copyOnWrite()V

    .line 387
    iget-object v0, p0, Lcom/google/rpc/BadRequest$FieldViolation$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/BadRequest$FieldViolation;

    invoke-static {v0}, Lcom/google/rpc/BadRequest$FieldViolation;->access$200(Lcom/google/rpc/BadRequest$FieldViolation;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .line 418
    iget-object v0, p0, Lcom/google/rpc/BadRequest$FieldViolation$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/BadRequest$FieldViolation;

    invoke-virtual {v0}, Lcom/google/rpc/BadRequest$FieldViolation;->getDescription()Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getDescriptionBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 431
    iget-object v0, p0, Lcom/google/rpc/BadRequest$FieldViolation$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/BadRequest$FieldViolation;

    invoke-virtual {v0}, Lcom/google/rpc/BadRequest$FieldViolation;->getDescriptionBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getField()Ljava/lang/String;
    .locals 1

    .line 341
    iget-object v0, p0, Lcom/google/rpc/BadRequest$FieldViolation$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/BadRequest$FieldViolation;

    invoke-virtual {v0}, Lcom/google/rpc/BadRequest$FieldViolation;->getField()Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getFieldBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 356
    iget-object v0, p0, Lcom/google/rpc/BadRequest$FieldViolation$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/BadRequest$FieldViolation;

    invoke-virtual {v0}, Lcom/google/rpc/BadRequest$FieldViolation;->getFieldBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public setDescription(Ljava/lang/String;)Lcom/google/rpc/BadRequest$FieldViolation$Builder;
    .locals 1

    .line 444
    invoke-virtual {p0}, Lcom/google/rpc/BadRequest$FieldViolation$Builder;->copyOnWrite()V

    .line 445
    iget-object v0, p0, Lcom/google/rpc/BadRequest$FieldViolation$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/BadRequest$FieldViolation;

    invoke-static {v0, p1}, Lcom/google/rpc/BadRequest$FieldViolation;->access$400(Lcom/google/rpc/BadRequest$FieldViolation;Ljava/lang/String;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public setDescriptionBytes(Lcom/google/protobuf/ByteString;)Lcom/google/rpc/BadRequest$FieldViolation$Builder;
    .locals 1

    .line 472
    invoke-virtual {p0}, Lcom/google/rpc/BadRequest$FieldViolation$Builder;->copyOnWrite()V

    .line 473
    iget-object v0, p0, Lcom/google/rpc/BadRequest$FieldViolation$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/BadRequest$FieldViolation;

    invoke-static {v0, p1}, Lcom/google/rpc/BadRequest$FieldViolation;->access$600(Lcom/google/rpc/BadRequest$FieldViolation;Lcom/google/protobuf/ByteString;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public setField(Ljava/lang/String;)Lcom/google/rpc/BadRequest$FieldViolation$Builder;
    .locals 1

    .line 371
    invoke-virtual {p0}, Lcom/google/rpc/BadRequest$FieldViolation$Builder;->copyOnWrite()V

    .line 372
    iget-object v0, p0, Lcom/google/rpc/BadRequest$FieldViolation$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/BadRequest$FieldViolation;

    invoke-static {v0, p1}, Lcom/google/rpc/BadRequest$FieldViolation;->access$100(Lcom/google/rpc/BadRequest$FieldViolation;Ljava/lang/String;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public setFieldBytes(Lcom/google/protobuf/ByteString;)Lcom/google/rpc/BadRequest$FieldViolation$Builder;
    .locals 1

    .line 403
    invoke-virtual {p0}, Lcom/google/rpc/BadRequest$FieldViolation$Builder;->copyOnWrite()V

    .line 404
    iget-object v0, p0, Lcom/google/rpc/BadRequest$FieldViolation$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/BadRequest$FieldViolation;

    invoke-static {v0, p1}, Lcom/google/rpc/BadRequest$FieldViolation;->access$300(Lcom/google/rpc/BadRequest$FieldViolation;Lcom/google/protobuf/ByteString;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method
