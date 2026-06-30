.class public final Lcom/google/type/LatLng$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "LatLng.java"

# interfaces
.implements Lcom/google/type/LatLngOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/type/LatLng;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/google/type/LatLng;",
        "Lcom/google/type/LatLng$Builder;",
        ">;",
        "Lcom/google/type/LatLngOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 199
    invoke-static {}, Lcom/google/type/LatLng;->access$000()Lcom/google/type/LatLng;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method synthetic constructor <init>(Lcom/google/type/LatLng$1;)V
    .locals 0

    .line 192
    invoke-direct {p0}, Lcom/google/type/LatLng$Builder;-><init>()V

    return-void

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public clearLatitude()Lcom/google/type/LatLng$Builder;
    .locals 1

    .line 238
    invoke-virtual {p0}, Lcom/google/type/LatLng$Builder;->copyOnWrite()V

    .line 239
    iget-object v0, p0, Lcom/google/type/LatLng$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/type/LatLng;

    invoke-static {v0}, Lcom/google/type/LatLng;->access$200(Lcom/google/type/LatLng;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public clearLongitude()Lcom/google/type/LatLng$Builder;
    .locals 1

    .line 278
    invoke-virtual {p0}, Lcom/google/type/LatLng$Builder;->copyOnWrite()V

    .line 279
    iget-object v0, p0, Lcom/google/type/LatLng$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/type/LatLng;

    invoke-static {v0}, Lcom/google/type/LatLng;->access$400(Lcom/google/type/LatLng;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public getLatitude()D
    .locals 2

    .line 213
    iget-object v0, p0, Lcom/google/type/LatLng$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/type/LatLng;

    invoke-virtual {v0}, Lcom/google/type/LatLng;->getLatitude()D

    move-result-wide v0

    return-wide v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getLongitude()D
    .locals 2

    .line 253
    iget-object v0, p0, Lcom/google/type/LatLng$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/type/LatLng;

    invoke-virtual {v0}, Lcom/google/type/LatLng;->getLongitude()D

    move-result-wide v0

    return-wide v0

    nop

    .array-data 1
    .end array-data
.end method

.method public setLatitude(D)Lcom/google/type/LatLng$Builder;
    .locals 1

    .line 225
    invoke-virtual {p0}, Lcom/google/type/LatLng$Builder;->copyOnWrite()V

    .line 226
    iget-object v0, p0, Lcom/google/type/LatLng$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/type/LatLng;

    invoke-static {v0, p1, p2}, Lcom/google/type/LatLng;->access$100(Lcom/google/type/LatLng;D)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public setLongitude(D)Lcom/google/type/LatLng$Builder;
    .locals 1

    .line 265
    invoke-virtual {p0}, Lcom/google/type/LatLng$Builder;->copyOnWrite()V

    .line 266
    iget-object v0, p0, Lcom/google/type/LatLng$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/type/LatLng;

    invoke-static {v0, p1, p2}, Lcom/google/type/LatLng;->access$300(Lcom/google/type/LatLng;D)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method
