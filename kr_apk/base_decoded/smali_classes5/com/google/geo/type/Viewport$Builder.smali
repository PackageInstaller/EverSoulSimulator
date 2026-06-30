.class public final Lcom/google/geo/type/Viewport$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Viewport.java"

# interfaces
.implements Lcom/google/geo/type/ViewportOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/geo/type/Viewport;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/google/geo/type/Viewport;",
        "Lcom/google/geo/type/Viewport$Builder;",
        ">;",
        "Lcom/google/geo/type/ViewportOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 299
    invoke-static {}, Lcom/google/geo/type/Viewport;->access$000()Lcom/google/geo/type/Viewport;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method synthetic constructor <init>(Lcom/google/geo/type/Viewport$1;)V
    .locals 0

    .line 292
    invoke-direct {p0}, Lcom/google/geo/type/Viewport$Builder;-><init>()V

    return-void

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public clearHigh()Lcom/google/geo/type/Viewport$Builder;
    .locals 1

    .line 440
    invoke-virtual {p0}, Lcom/google/geo/type/Viewport$Builder;->copyOnWrite()V

    .line 441
    iget-object v0, p0, Lcom/google/geo/type/Viewport$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/geo/type/Viewport;

    invoke-static {v0}, Lcom/google/geo/type/Viewport;->access$600(Lcom/google/geo/type/Viewport;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public clearLow()Lcom/google/geo/type/Viewport$Builder;
    .locals 1

    .line 369
    invoke-virtual {p0}, Lcom/google/geo/type/Viewport$Builder;->copyOnWrite()V

    .line 370
    iget-object v0, p0, Lcom/google/geo/type/Viewport$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/geo/type/Viewport;

    invoke-static {v0}, Lcom/google/geo/type/Viewport;->access$300(Lcom/google/geo/type/Viewport;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public getHigh()Lcom/google/type/LatLng;
    .locals 1

    .line 394
    iget-object v0, p0, Lcom/google/geo/type/Viewport$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/geo/type/Viewport;

    invoke-virtual {v0}, Lcom/google/geo/type/Viewport;->getHigh()Lcom/google/type/LatLng;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getLow()Lcom/google/type/LatLng;
    .locals 1

    .line 323
    iget-object v0, p0, Lcom/google/geo/type/Viewport$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/geo/type/Viewport;

    invoke-virtual {v0}, Lcom/google/geo/type/Viewport;->getLow()Lcom/google/type/LatLng;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public hasHigh()Z
    .locals 1

    .line 383
    iget-object v0, p0, Lcom/google/geo/type/Viewport$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/geo/type/Viewport;

    invoke-virtual {v0}, Lcom/google/geo/type/Viewport;->hasHigh()Z

    move-result v0

    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public hasLow()Z
    .locals 1

    .line 312
    iget-object v0, p0, Lcom/google/geo/type/Viewport$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/geo/type/Viewport;

    invoke-virtual {v0}, Lcom/google/geo/type/Viewport;->hasLow()Z

    move-result v0

    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public mergeHigh(Lcom/google/type/LatLng;)Lcom/google/geo/type/Viewport$Builder;
    .locals 1

    .line 429
    invoke-virtual {p0}, Lcom/google/geo/type/Viewport$Builder;->copyOnWrite()V

    .line 430
    iget-object v0, p0, Lcom/google/geo/type/Viewport$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/geo/type/Viewport;

    invoke-static {v0, p1}, Lcom/google/geo/type/Viewport;->access$500(Lcom/google/geo/type/Viewport;Lcom/google/type/LatLng;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public mergeLow(Lcom/google/type/LatLng;)Lcom/google/geo/type/Viewport$Builder;
    .locals 1

    .line 358
    invoke-virtual {p0}, Lcom/google/geo/type/Viewport$Builder;->copyOnWrite()V

    .line 359
    iget-object v0, p0, Lcom/google/geo/type/Viewport$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/geo/type/Viewport;

    invoke-static {v0, p1}, Lcom/google/geo/type/Viewport;->access$200(Lcom/google/geo/type/Viewport;Lcom/google/type/LatLng;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public setHigh(Lcom/google/type/LatLng$Builder;)Lcom/google/geo/type/Viewport$Builder;
    .locals 1

    .line 417
    invoke-virtual {p0}, Lcom/google/geo/type/Viewport$Builder;->copyOnWrite()V

    .line 418
    iget-object v0, p0, Lcom/google/geo/type/Viewport$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/geo/type/Viewport;

    invoke-virtual {p1}, Lcom/google/type/LatLng$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/type/LatLng;

    invoke-static {v0, p1}, Lcom/google/geo/type/Viewport;->access$400(Lcom/google/geo/type/Viewport;Lcom/google/type/LatLng;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public setHigh(Lcom/google/type/LatLng;)Lcom/google/geo/type/Viewport$Builder;
    .locals 1

    .line 404
    invoke-virtual {p0}, Lcom/google/geo/type/Viewport$Builder;->copyOnWrite()V

    .line 405
    iget-object v0, p0, Lcom/google/geo/type/Viewport$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/geo/type/Viewport;

    invoke-static {v0, p1}, Lcom/google/geo/type/Viewport;->access$400(Lcom/google/geo/type/Viewport;Lcom/google/type/LatLng;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public setLow(Lcom/google/type/LatLng$Builder;)Lcom/google/geo/type/Viewport$Builder;
    .locals 1

    .line 346
    invoke-virtual {p0}, Lcom/google/geo/type/Viewport$Builder;->copyOnWrite()V

    .line 347
    iget-object v0, p0, Lcom/google/geo/type/Viewport$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/geo/type/Viewport;

    invoke-virtual {p1}, Lcom/google/type/LatLng$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/type/LatLng;

    invoke-static {v0, p1}, Lcom/google/geo/type/Viewport;->access$100(Lcom/google/geo/type/Viewport;Lcom/google/type/LatLng;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public setLow(Lcom/google/type/LatLng;)Lcom/google/geo/type/Viewport$Builder;
    .locals 1

    .line 333
    invoke-virtual {p0}, Lcom/google/geo/type/Viewport$Builder;->copyOnWrite()V

    .line 334
    iget-object v0, p0, Lcom/google/geo/type/Viewport$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/geo/type/Viewport;

    invoke-static {v0, p1}, Lcom/google/geo/type/Viewport;->access$100(Lcom/google/geo/type/Viewport;Lcom/google/type/LatLng;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method
