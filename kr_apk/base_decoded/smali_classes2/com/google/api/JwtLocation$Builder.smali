.class public final Lcom/google/api/JwtLocation$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "JwtLocation.java"

# interfaces
.implements Lcom/google/api/JwtLocationOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/api/JwtLocation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/google/api/JwtLocation;",
        "Lcom/google/api/JwtLocation$Builder;",
        ">;",
        "Lcom/google/api/JwtLocationOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 408
    invoke-static {}, Lcom/google/api/JwtLocation;->access$000()Lcom/google/api/JwtLocation;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method synthetic constructor <init>(Lcom/google/api/JwtLocation$1;)V
    .locals 0

    .line 401
    invoke-direct {p0}, Lcom/google/api/JwtLocation$Builder;-><init>()V

    return-void

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public clearHeader()Lcom/google/api/JwtLocation$Builder;
    .locals 1

    .line 473
    invoke-virtual {p0}, Lcom/google/api/JwtLocation$Builder;->copyOnWrite()V

    .line 474
    iget-object v0, p0, Lcom/google/api/JwtLocation$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/JwtLocation;

    invoke-static {v0}, Lcom/google/api/JwtLocation;->access$300(Lcom/google/api/JwtLocation;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public clearIn()Lcom/google/api/JwtLocation$Builder;
    .locals 1

    .line 418
    invoke-virtual {p0}, Lcom/google/api/JwtLocation$Builder;->copyOnWrite()V

    .line 419
    iget-object v0, p0, Lcom/google/api/JwtLocation$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/JwtLocation;

    invoke-static {v0}, Lcom/google/api/JwtLocation;->access$100(Lcom/google/api/JwtLocation;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public clearQuery()Lcom/google/api/JwtLocation$Builder;
    .locals 1

    .line 542
    invoke-virtual {p0}, Lcom/google/api/JwtLocation$Builder;->copyOnWrite()V

    .line 543
    iget-object v0, p0, Lcom/google/api/JwtLocation$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/JwtLocation;

    invoke-static {v0}, Lcom/google/api/JwtLocation;->access$600(Lcom/google/api/JwtLocation;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public clearValuePrefix()Lcom/google/api/JwtLocation$Builder;
    .locals 1

    .line 635
    invoke-virtual {p0}, Lcom/google/api/JwtLocation$Builder;->copyOnWrite()V

    .line 636
    iget-object v0, p0, Lcom/google/api/JwtLocation$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/JwtLocation;

    invoke-static {v0}, Lcom/google/api/JwtLocation;->access$900(Lcom/google/api/JwtLocation;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public getHeader()Ljava/lang/String;
    .locals 1

    .line 434
    iget-object v0, p0, Lcom/google/api/JwtLocation$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/JwtLocation;

    invoke-virtual {v0}, Lcom/google/api/JwtLocation;->getHeader()Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getHeaderBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 447
    iget-object v0, p0, Lcom/google/api/JwtLocation$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/JwtLocation;

    invoke-virtual {v0}, Lcom/google/api/JwtLocation;->getHeaderBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getInCase()Lcom/google/api/JwtLocation$InCase;
    .locals 1

    .line 414
    iget-object v0, p0, Lcom/google/api/JwtLocation$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/JwtLocation;

    invoke-virtual {v0}, Lcom/google/api/JwtLocation;->getInCase()Lcom/google/api/JwtLocation$InCase;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getQuery()Ljava/lang/String;
    .locals 1

    .line 503
    iget-object v0, p0, Lcom/google/api/JwtLocation$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/JwtLocation;

    invoke-virtual {v0}, Lcom/google/api/JwtLocation;->getQuery()Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getQueryBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 516
    iget-object v0, p0, Lcom/google/api/JwtLocation$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/JwtLocation;

    invoke-virtual {v0}, Lcom/google/api/JwtLocation;->getQueryBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getValuePrefix()Ljava/lang/String;
    .locals 1

    .line 578
    iget-object v0, p0, Lcom/google/api/JwtLocation$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/JwtLocation;

    invoke-virtual {v0}, Lcom/google/api/JwtLocation;->getValuePrefix()Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getValuePrefixBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 597
    iget-object v0, p0, Lcom/google/api/JwtLocation$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/JwtLocation;

    invoke-virtual {v0}, Lcom/google/api/JwtLocation;->getValuePrefixBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public setHeader(Ljava/lang/String;)Lcom/google/api/JwtLocation$Builder;
    .locals 1

    .line 460
    invoke-virtual {p0}, Lcom/google/api/JwtLocation$Builder;->copyOnWrite()V

    .line 461
    iget-object v0, p0, Lcom/google/api/JwtLocation$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/JwtLocation;

    invoke-static {v0, p1}, Lcom/google/api/JwtLocation;->access$200(Lcom/google/api/JwtLocation;Ljava/lang/String;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public setHeaderBytes(Lcom/google/protobuf/ByteString;)Lcom/google/api/JwtLocation$Builder;
    .locals 1

    .line 488
    invoke-virtual {p0}, Lcom/google/api/JwtLocation$Builder;->copyOnWrite()V

    .line 489
    iget-object v0, p0, Lcom/google/api/JwtLocation$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/JwtLocation;

    invoke-static {v0, p1}, Lcom/google/api/JwtLocation;->access$400(Lcom/google/api/JwtLocation;Lcom/google/protobuf/ByteString;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public setQuery(Ljava/lang/String;)Lcom/google/api/JwtLocation$Builder;
    .locals 1

    .line 529
    invoke-virtual {p0}, Lcom/google/api/JwtLocation$Builder;->copyOnWrite()V

    .line 530
    iget-object v0, p0, Lcom/google/api/JwtLocation$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/JwtLocation;

    invoke-static {v0, p1}, Lcom/google/api/JwtLocation;->access$500(Lcom/google/api/JwtLocation;Ljava/lang/String;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public setQueryBytes(Lcom/google/protobuf/ByteString;)Lcom/google/api/JwtLocation$Builder;
    .locals 1

    .line 557
    invoke-virtual {p0}, Lcom/google/api/JwtLocation$Builder;->copyOnWrite()V

    .line 558
    iget-object v0, p0, Lcom/google/api/JwtLocation$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/JwtLocation;

    invoke-static {v0, p1}, Lcom/google/api/JwtLocation;->access$700(Lcom/google/api/JwtLocation;Lcom/google/protobuf/ByteString;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public setValuePrefix(Ljava/lang/String;)Lcom/google/api/JwtLocation$Builder;
    .locals 1

    .line 616
    invoke-virtual {p0}, Lcom/google/api/JwtLocation$Builder;->copyOnWrite()V

    .line 617
    iget-object v0, p0, Lcom/google/api/JwtLocation$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/JwtLocation;

    invoke-static {v0, p1}, Lcom/google/api/JwtLocation;->access$800(Lcom/google/api/JwtLocation;Ljava/lang/String;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public setValuePrefixBytes(Lcom/google/protobuf/ByteString;)Lcom/google/api/JwtLocation$Builder;
    .locals 1

    .line 656
    invoke-virtual {p0}, Lcom/google/api/JwtLocation$Builder;->copyOnWrite()V

    .line 657
    iget-object v0, p0, Lcom/google/api/JwtLocation$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/JwtLocation;

    invoke-static {v0, p1}, Lcom/google/api/JwtLocation;->access$1000(Lcom/google/api/JwtLocation;Lcom/google/protobuf/ByteString;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method
