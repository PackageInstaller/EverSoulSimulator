.class public final Lcom/google/type/Quaternion$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Quaternion.java"

# interfaces
.implements Lcom/google/type/QuaternionOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/type/Quaternion;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/google/type/Quaternion;",
        "Lcom/google/type/Quaternion$Builder;",
        ">;",
        "Lcom/google/type/QuaternionOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 351
    invoke-static {}, Lcom/google/type/Quaternion;->access$000()Lcom/google/type/Quaternion;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method synthetic constructor <init>(Lcom/google/type/Quaternion$1;)V
    .locals 0

    .line 344
    invoke-direct {p0}, Lcom/google/type/Quaternion$Builder;-><init>()V

    return-void

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public clearW()Lcom/google/type/Quaternion$Builder;
    .locals 1

    .line 510
    invoke-virtual {p0}, Lcom/google/type/Quaternion$Builder;->copyOnWrite()V

    .line 511
    iget-object v0, p0, Lcom/google/type/Quaternion$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/type/Quaternion;

    invoke-static {v0}, Lcom/google/type/Quaternion;->access$800(Lcom/google/type/Quaternion;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public clearX()Lcom/google/type/Quaternion$Builder;
    .locals 1

    .line 390
    invoke-virtual {p0}, Lcom/google/type/Quaternion$Builder;->copyOnWrite()V

    .line 391
    iget-object v0, p0, Lcom/google/type/Quaternion$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/type/Quaternion;

    invoke-static {v0}, Lcom/google/type/Quaternion;->access$200(Lcom/google/type/Quaternion;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public clearY()Lcom/google/type/Quaternion$Builder;
    .locals 1

    .line 430
    invoke-virtual {p0}, Lcom/google/type/Quaternion$Builder;->copyOnWrite()V

    .line 431
    iget-object v0, p0, Lcom/google/type/Quaternion$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/type/Quaternion;

    invoke-static {v0}, Lcom/google/type/Quaternion;->access$400(Lcom/google/type/Quaternion;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public clearZ()Lcom/google/type/Quaternion$Builder;
    .locals 1

    .line 470
    invoke-virtual {p0}, Lcom/google/type/Quaternion$Builder;->copyOnWrite()V

    .line 471
    iget-object v0, p0, Lcom/google/type/Quaternion$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/type/Quaternion;

    invoke-static {v0}, Lcom/google/type/Quaternion;->access$600(Lcom/google/type/Quaternion;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public getW()D
    .locals 2

    .line 485
    iget-object v0, p0, Lcom/google/type/Quaternion$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/type/Quaternion;

    invoke-virtual {v0}, Lcom/google/type/Quaternion;->getW()D

    move-result-wide v0

    return-wide v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getX()D
    .locals 2

    .line 365
    iget-object v0, p0, Lcom/google/type/Quaternion$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/type/Quaternion;

    invoke-virtual {v0}, Lcom/google/type/Quaternion;->getX()D

    move-result-wide v0

    return-wide v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getY()D
    .locals 2

    .line 405
    iget-object v0, p0, Lcom/google/type/Quaternion$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/type/Quaternion;

    invoke-virtual {v0}, Lcom/google/type/Quaternion;->getY()D

    move-result-wide v0

    return-wide v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getZ()D
    .locals 2

    .line 445
    iget-object v0, p0, Lcom/google/type/Quaternion$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/type/Quaternion;

    invoke-virtual {v0}, Lcom/google/type/Quaternion;->getZ()D

    move-result-wide v0

    return-wide v0

    nop

    .array-data 1
    .end array-data
.end method

.method public setW(D)Lcom/google/type/Quaternion$Builder;
    .locals 1

    .line 497
    invoke-virtual {p0}, Lcom/google/type/Quaternion$Builder;->copyOnWrite()V

    .line 498
    iget-object v0, p0, Lcom/google/type/Quaternion$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/type/Quaternion;

    invoke-static {v0, p1, p2}, Lcom/google/type/Quaternion;->access$700(Lcom/google/type/Quaternion;D)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public setX(D)Lcom/google/type/Quaternion$Builder;
    .locals 1

    .line 377
    invoke-virtual {p0}, Lcom/google/type/Quaternion$Builder;->copyOnWrite()V

    .line 378
    iget-object v0, p0, Lcom/google/type/Quaternion$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/type/Quaternion;

    invoke-static {v0, p1, p2}, Lcom/google/type/Quaternion;->access$100(Lcom/google/type/Quaternion;D)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public setY(D)Lcom/google/type/Quaternion$Builder;
    .locals 1

    .line 417
    invoke-virtual {p0}, Lcom/google/type/Quaternion$Builder;->copyOnWrite()V

    .line 418
    iget-object v0, p0, Lcom/google/type/Quaternion$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/type/Quaternion;

    invoke-static {v0, p1, p2}, Lcom/google/type/Quaternion;->access$300(Lcom/google/type/Quaternion;D)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public setZ(D)Lcom/google/type/Quaternion$Builder;
    .locals 1

    .line 457
    invoke-virtual {p0}, Lcom/google/type/Quaternion$Builder;->copyOnWrite()V

    .line 458
    iget-object v0, p0, Lcom/google/type/Quaternion$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/type/Quaternion;

    invoke-static {v0, p1, p2}, Lcom/google/type/Quaternion;->access$500(Lcom/google/type/Quaternion;D)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method
