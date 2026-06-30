.class public final Lcom/google/type/PostalAddress$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "PostalAddress.java"

# interfaces
.implements Lcom/google/type/PostalAddressOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/type/PostalAddress;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/google/type/PostalAddress;",
        "Lcom/google/type/PostalAddress$Builder;",
        ">;",
        "Lcom/google/type/PostalAddressOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1319
    invoke-static {}, Lcom/google/type/PostalAddress;->access$000()Lcom/google/type/PostalAddress;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method synthetic constructor <init>(Lcom/google/type/PostalAddress$1;)V
    .locals 0

    .line 1312
    invoke-direct {p0}, Lcom/google/type/PostalAddress$Builder;-><init>()V

    return-void

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public addAddressLines(Ljava/lang/String;)Lcom/google/type/PostalAddress$Builder;
    .locals 1

    .line 2190
    invoke-virtual {p0}, Lcom/google/type/PostalAddress$Builder;->copyOnWrite()V

    .line 2191
    iget-object v0, p0, Lcom/google/type/PostalAddress$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/type/PostalAddress;

    invoke-static {v0, p1}, Lcom/google/type/PostalAddress;->access$2500(Lcom/google/type/PostalAddress;Ljava/lang/String;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public addAddressLinesBytes(Lcom/google/protobuf/ByteString;)Lcom/google/type/PostalAddress$Builder;
    .locals 1

    .line 2287
    invoke-virtual {p0}, Lcom/google/type/PostalAddress$Builder;->copyOnWrite()V

    .line 2288
    iget-object v0, p0, Lcom/google/type/PostalAddress$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/type/PostalAddress;

    invoke-static {v0, p1}, Lcom/google/type/PostalAddress;->access$2800(Lcom/google/type/PostalAddress;Lcom/google/protobuf/ByteString;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public addAllAddressLines(Ljava/lang/Iterable;)Lcom/google/type/PostalAddress$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/type/PostalAddress$Builder;"
        }
    .end annotation

    .line 2223
    invoke-virtual {p0}, Lcom/google/type/PostalAddress$Builder;->copyOnWrite()V

    .line 2224
    iget-object v0, p0, Lcom/google/type/PostalAddress$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/type/PostalAddress;

    invoke-static {v0, p1}, Lcom/google/type/PostalAddress;->access$2600(Lcom/google/type/PostalAddress;Ljava/lang/Iterable;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public addAllRecipients(Ljava/lang/Iterable;)Lcom/google/type/PostalAddress$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/type/PostalAddress$Builder;"
        }
    .end annotation

    .line 2401
    invoke-virtual {p0}, Lcom/google/type/PostalAddress$Builder;->copyOnWrite()V

    .line 2402
    iget-object v0, p0, Lcom/google/type/PostalAddress$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/type/PostalAddress;

    invoke-static {v0, p1}, Lcom/google/type/PostalAddress;->access$3100(Lcom/google/type/PostalAddress;Ljava/lang/Iterable;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public addRecipients(Ljava/lang/String;)Lcom/google/type/PostalAddress$Builder;
    .locals 1

    .line 2384
    invoke-virtual {p0}, Lcom/google/type/PostalAddress$Builder;->copyOnWrite()V

    .line 2385
    iget-object v0, p0, Lcom/google/type/PostalAddress$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/type/PostalAddress;

    invoke-static {v0, p1}, Lcom/google/type/PostalAddress;->access$3000(Lcom/google/type/PostalAddress;Ljava/lang/String;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public addRecipientsBytes(Lcom/google/protobuf/ByteString;)Lcom/google/type/PostalAddress$Builder;
    .locals 1

    .line 2433
    invoke-virtual {p0}, Lcom/google/type/PostalAddress$Builder;->copyOnWrite()V

    .line 2434
    iget-object v0, p0, Lcom/google/type/PostalAddress$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/type/PostalAddress;

    invoke-static {v0, p1}, Lcom/google/type/PostalAddress;->access$3300(Lcom/google/type/PostalAddress;Lcom/google/protobuf/ByteString;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public clearAddressLines()Lcom/google/type/PostalAddress$Builder;
    .locals 1

    .line 2254
    invoke-virtual {p0}, Lcom/google/type/PostalAddress$Builder;->copyOnWrite()V

    .line 2255
    iget-object v0, p0, Lcom/google/type/PostalAddress$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/type/PostalAddress;

    invoke-static {v0}, Lcom/google/type/PostalAddress;->access$2700(Lcom/google/type/PostalAddress;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public clearAdministrativeArea()Lcom/google/type/PostalAddress$Builder;
    .locals 1

    .line 1818
    invoke-virtual {p0}, Lcom/google/type/PostalAddress$Builder;->copyOnWrite()V

    .line 1819
    iget-object v0, p0, Lcom/google/type/PostalAddress$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/type/PostalAddress;

    invoke-static {v0}, Lcom/google/type/PostalAddress;->access$1600(Lcom/google/type/PostalAddress;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public clearLanguageCode()Lcom/google/type/PostalAddress$Builder;
    .locals 1

    .line 1543
    invoke-virtual {p0}, Lcom/google/type/PostalAddress$Builder;->copyOnWrite()V

    .line 1544
    iget-object v0, p0, Lcom/google/type/PostalAddress$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/type/PostalAddress;

    invoke-static {v0}, Lcom/google/type/PostalAddress;->access$700(Lcom/google/type/PostalAddress;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public clearLocality()Lcom/google/type/PostalAddress$Builder;
    .locals 1

    .line 1905
    invoke-virtual {p0}, Lcom/google/type/PostalAddress$Builder;->copyOnWrite()V

    .line 1906
    iget-object v0, p0, Lcom/google/type/PostalAddress$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/type/PostalAddress;

    invoke-static {v0}, Lcom/google/type/PostalAddress;->access$1900(Lcom/google/type/PostalAddress;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public clearOrganization()Lcom/google/type/PostalAddress$Builder;
    .locals 1

    .line 2487
    invoke-virtual {p0}, Lcom/google/type/PostalAddress$Builder;->copyOnWrite()V

    .line 2488
    iget-object v0, p0, Lcom/google/type/PostalAddress$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/type/PostalAddress;

    invoke-static {v0}, Lcom/google/type/PostalAddress;->access$3500(Lcom/google/type/PostalAddress;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public clearPostalCode()Lcom/google/type/PostalAddress$Builder;
    .locals 1

    .line 1633
    invoke-virtual {p0}, Lcom/google/type/PostalAddress$Builder;->copyOnWrite()V

    .line 1634
    iget-object v0, p0, Lcom/google/type/PostalAddress$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/type/PostalAddress;

    invoke-static {v0}, Lcom/google/type/PostalAddress;->access$1000(Lcom/google/type/PostalAddress;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public clearRecipients()Lcom/google/type/PostalAddress$Builder;
    .locals 1

    .line 2416
    invoke-virtual {p0}, Lcom/google/type/PostalAddress$Builder;->copyOnWrite()V

    .line 2417
    iget-object v0, p0, Lcom/google/type/PostalAddress$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/type/PostalAddress;

    invoke-static {v0}, Lcom/google/type/PostalAddress;->access$3200(Lcom/google/type/PostalAddress;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public clearRegionCode()Lcom/google/type/PostalAddress$Builder;
    .locals 1

    .line 1434
    invoke-virtual {p0}, Lcom/google/type/PostalAddress$Builder;->copyOnWrite()V

    .line 1435
    iget-object v0, p0, Lcom/google/type/PostalAddress$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/type/PostalAddress;

    invoke-static {v0}, Lcom/google/type/PostalAddress;->access$400(Lcom/google/type/PostalAddress;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public clearRevision()Lcom/google/type/PostalAddress$Builder;
    .locals 1

    .line 1364
    invoke-virtual {p0}, Lcom/google/type/PostalAddress$Builder;->copyOnWrite()V

    .line 1365
    iget-object v0, p0, Lcom/google/type/PostalAddress$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/type/PostalAddress;

    invoke-static {v0}, Lcom/google/type/PostalAddress;->access$200(Lcom/google/type/PostalAddress;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public clearSortingCode()Lcom/google/type/PostalAddress$Builder;
    .locals 1

    .line 1721
    invoke-virtual {p0}, Lcom/google/type/PostalAddress$Builder;->copyOnWrite()V

    .line 1722
    iget-object v0, p0, Lcom/google/type/PostalAddress$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/type/PostalAddress;

    invoke-static {v0}, Lcom/google/type/PostalAddress;->access$1300(Lcom/google/type/PostalAddress;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public clearSublocality()Lcom/google/type/PostalAddress$Builder;
    .locals 1

    .line 1981
    invoke-virtual {p0}, Lcom/google/type/PostalAddress$Builder;->copyOnWrite()V

    .line 1982
    iget-object v0, p0, Lcom/google/type/PostalAddress$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/type/PostalAddress;

    invoke-static {v0}, Lcom/google/type/PostalAddress;->access$2200(Lcom/google/type/PostalAddress;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public getAddressLines(I)Ljava/lang/String;
    .locals 1

    .line 2093
    iget-object v0, p0, Lcom/google/type/PostalAddress$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/type/PostalAddress;

    invoke-virtual {v0, p1}, Lcom/google/type/PostalAddress;->getAddressLines(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    nop

    .array-data 1
    .end array-data
.end method

.method public getAddressLinesBytes(I)Lcom/google/protobuf/ByteString;
    .locals 1

    .line 2125
    iget-object v0, p0, Lcom/google/type/PostalAddress$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/type/PostalAddress;

    invoke-virtual {v0, p1}, Lcom/google/type/PostalAddress;->getAddressLinesBytes(I)Lcom/google/protobuf/ByteString;

    move-result-object p1

    return-object p1

    nop

    .array-data 1
    .end array-data
.end method

.method public getAddressLinesCount()I
    .locals 1

    .line 2062
    iget-object v0, p0, Lcom/google/type/PostalAddress$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/type/PostalAddress;

    invoke-virtual {v0}, Lcom/google/type/PostalAddress;->getAddressLinesCount()I

    move-result v0

    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getAddressLinesList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 2031
    iget-object v0, p0, Lcom/google/type/PostalAddress$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/type/PostalAddress;

    .line 2032
    invoke-virtual {v0}, Lcom/google/type/PostalAddress;->getAddressLinesList()Ljava/util/List;

    move-result-object v0

    .line 2031
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getAdministrativeArea()Ljava/lang/String;
    .locals 1

    .line 1761
    iget-object v0, p0, Lcom/google/type/PostalAddress$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/type/PostalAddress;

    invoke-virtual {v0}, Lcom/google/type/PostalAddress;->getAdministrativeArea()Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getAdministrativeAreaBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1780
    iget-object v0, p0, Lcom/google/type/PostalAddress$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/type/PostalAddress;

    invoke-virtual {v0}, Lcom/google/type/PostalAddress;->getAdministrativeAreaBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getLanguageCode()Ljava/lang/String;
    .locals 1

    .line 1477
    iget-object v0, p0, Lcom/google/type/PostalAddress$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/type/PostalAddress;

    invoke-virtual {v0}, Lcom/google/type/PostalAddress;->getLanguageCode()Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getLanguageCodeBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1499
    iget-object v0, p0, Lcom/google/type/PostalAddress$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/type/PostalAddress;

    invoke-virtual {v0}, Lcom/google/type/PostalAddress;->getLanguageCodeBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getLocality()Ljava/lang/String;
    .locals 1

    .line 1857
    iget-object v0, p0, Lcom/google/type/PostalAddress$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/type/PostalAddress;

    invoke-virtual {v0}, Lcom/google/type/PostalAddress;->getLocality()Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getLocalityBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1873
    iget-object v0, p0, Lcom/google/type/PostalAddress$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/type/PostalAddress;

    invoke-virtual {v0}, Lcom/google/type/PostalAddress;->getLocalityBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getOrganization()Ljava/lang/String;
    .locals 1

    .line 2448
    iget-object v0, p0, Lcom/google/type/PostalAddress$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/type/PostalAddress;

    invoke-virtual {v0}, Lcom/google/type/PostalAddress;->getOrganization()Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getOrganizationBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 2461
    iget-object v0, p0, Lcom/google/type/PostalAddress$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/type/PostalAddress;

    invoke-virtual {v0}, Lcom/google/type/PostalAddress;->getOrganizationBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getPostalCode()Ljava/lang/String;
    .locals 1

    .line 1585
    iget-object v0, p0, Lcom/google/type/PostalAddress$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/type/PostalAddress;

    invoke-virtual {v0}, Lcom/google/type/PostalAddress;->getPostalCode()Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getPostalCodeBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1601
    iget-object v0, p0, Lcom/google/type/PostalAddress$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/type/PostalAddress;

    invoke-virtual {v0}, Lcom/google/type/PostalAddress;->getPostalCodeBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getRecipients(I)Ljava/lang/String;
    .locals 1

    .line 2335
    iget-object v0, p0, Lcom/google/type/PostalAddress$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/type/PostalAddress;

    invoke-virtual {v0, p1}, Lcom/google/type/PostalAddress;->getRecipients(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    nop

    .array-data 1
    .end array-data
.end method

.method public getRecipientsBytes(I)Lcom/google/protobuf/ByteString;
    .locals 1

    .line 2351
    iget-object v0, p0, Lcom/google/type/PostalAddress$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/type/PostalAddress;

    invoke-virtual {v0, p1}, Lcom/google/type/PostalAddress;->getRecipientsBytes(I)Lcom/google/protobuf/ByteString;

    move-result-object p1

    return-object p1

    nop

    .array-data 1
    .end array-data
.end method

.method public getRecipientsCount()I
    .locals 1

    .line 2320
    iget-object v0, p0, Lcom/google/type/PostalAddress$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/type/PostalAddress;

    invoke-virtual {v0}, Lcom/google/type/PostalAddress;->getRecipientsCount()I

    move-result v0

    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getRecipientsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 2305
    iget-object v0, p0, Lcom/google/type/PostalAddress$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/type/PostalAddress;

    .line 2306
    invoke-virtual {v0}, Lcom/google/type/PostalAddress;->getRecipientsList()Ljava/util/List;

    move-result-object v0

    .line 2305
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getRegionCode()Ljava/lang/String;
    .locals 1

    .line 1383
    iget-object v0, p0, Lcom/google/type/PostalAddress$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/type/PostalAddress;

    invoke-virtual {v0}, Lcom/google/type/PostalAddress;->getRegionCode()Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getRegionCodeBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1400
    iget-object v0, p0, Lcom/google/type/PostalAddress$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/type/PostalAddress;

    invoke-virtual {v0}, Lcom/google/type/PostalAddress;->getRegionCodeBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getRevision()I
    .locals 1

    .line 1335
    iget-object v0, p0, Lcom/google/type/PostalAddress$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/type/PostalAddress;

    invoke-virtual {v0}, Lcom/google/type/PostalAddress;->getRevision()I

    move-result v0

    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getSortingCode()Ljava/lang/String;
    .locals 1

    .line 1670
    iget-object v0, p0, Lcom/google/type/PostalAddress$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/type/PostalAddress;

    invoke-virtual {v0}, Lcom/google/type/PostalAddress;->getSortingCode()Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getSortingCodeBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1687
    iget-object v0, p0, Lcom/google/type/PostalAddress$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/type/PostalAddress;

    invoke-virtual {v0}, Lcom/google/type/PostalAddress;->getSortingCodeBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getSublocality()Ljava/lang/String;
    .locals 1

    .line 1939
    iget-object v0, p0, Lcom/google/type/PostalAddress$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/type/PostalAddress;

    invoke-virtual {v0}, Lcom/google/type/PostalAddress;->getSublocality()Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getSublocalityBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1953
    iget-object v0, p0, Lcom/google/type/PostalAddress$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/type/PostalAddress;

    invoke-virtual {v0}, Lcom/google/type/PostalAddress;->getSublocalityBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public setAddressLines(ILjava/lang/String;)Lcom/google/type/PostalAddress$Builder;
    .locals 1

    .line 2157
    invoke-virtual {p0}, Lcom/google/type/PostalAddress$Builder;->copyOnWrite()V

    .line 2158
    iget-object v0, p0, Lcom/google/type/PostalAddress$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/type/PostalAddress;

    invoke-static {v0, p1, p2}, Lcom/google/type/PostalAddress;->access$2400(Lcom/google/type/PostalAddress;ILjava/lang/String;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public setAdministrativeArea(Ljava/lang/String;)Lcom/google/type/PostalAddress$Builder;
    .locals 1

    .line 1799
    invoke-virtual {p0}, Lcom/google/type/PostalAddress$Builder;->copyOnWrite()V

    .line 1800
    iget-object v0, p0, Lcom/google/type/PostalAddress$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/type/PostalAddress;

    invoke-static {v0, p1}, Lcom/google/type/PostalAddress;->access$1500(Lcom/google/type/PostalAddress;Ljava/lang/String;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public setAdministrativeAreaBytes(Lcom/google/protobuf/ByteString;)Lcom/google/type/PostalAddress$Builder;
    .locals 1

    .line 1839
    invoke-virtual {p0}, Lcom/google/type/PostalAddress$Builder;->copyOnWrite()V

    .line 1840
    iget-object v0, p0, Lcom/google/type/PostalAddress$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/type/PostalAddress;

    invoke-static {v0, p1}, Lcom/google/type/PostalAddress;->access$1700(Lcom/google/type/PostalAddress;Lcom/google/protobuf/ByteString;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public setLanguageCode(Ljava/lang/String;)Lcom/google/type/PostalAddress$Builder;
    .locals 1

    .line 1521
    invoke-virtual {p0}, Lcom/google/type/PostalAddress$Builder;->copyOnWrite()V

    .line 1522
    iget-object v0, p0, Lcom/google/type/PostalAddress$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/type/PostalAddress;

    invoke-static {v0, p1}, Lcom/google/type/PostalAddress;->access$600(Lcom/google/type/PostalAddress;Ljava/lang/String;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public setLanguageCodeBytes(Lcom/google/protobuf/ByteString;)Lcom/google/type/PostalAddress$Builder;
    .locals 1

    .line 1567
    invoke-virtual {p0}, Lcom/google/type/PostalAddress$Builder;->copyOnWrite()V

    .line 1568
    iget-object v0, p0, Lcom/google/type/PostalAddress$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/type/PostalAddress;

    invoke-static {v0, p1}, Lcom/google/type/PostalAddress;->access$800(Lcom/google/type/PostalAddress;Lcom/google/protobuf/ByteString;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public setLocality(Ljava/lang/String;)Lcom/google/type/PostalAddress$Builder;
    .locals 1

    .line 1889
    invoke-virtual {p0}, Lcom/google/type/PostalAddress$Builder;->copyOnWrite()V

    .line 1890
    iget-object v0, p0, Lcom/google/type/PostalAddress$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/type/PostalAddress;

    invoke-static {v0, p1}, Lcom/google/type/PostalAddress;->access$1800(Lcom/google/type/PostalAddress;Ljava/lang/String;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public setLocalityBytes(Lcom/google/protobuf/ByteString;)Lcom/google/type/PostalAddress$Builder;
    .locals 1

    .line 1923
    invoke-virtual {p0}, Lcom/google/type/PostalAddress$Builder;->copyOnWrite()V

    .line 1924
    iget-object v0, p0, Lcom/google/type/PostalAddress$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/type/PostalAddress;

    invoke-static {v0, p1}, Lcom/google/type/PostalAddress;->access$2000(Lcom/google/type/PostalAddress;Lcom/google/protobuf/ByteString;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public setOrganization(Ljava/lang/String;)Lcom/google/type/PostalAddress$Builder;
    .locals 1

    .line 2474
    invoke-virtual {p0}, Lcom/google/type/PostalAddress$Builder;->copyOnWrite()V

    .line 2475
    iget-object v0, p0, Lcom/google/type/PostalAddress$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/type/PostalAddress;

    invoke-static {v0, p1}, Lcom/google/type/PostalAddress;->access$3400(Lcom/google/type/PostalAddress;Ljava/lang/String;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public setOrganizationBytes(Lcom/google/protobuf/ByteString;)Lcom/google/type/PostalAddress$Builder;
    .locals 1

    .line 2502
    invoke-virtual {p0}, Lcom/google/type/PostalAddress$Builder;->copyOnWrite()V

    .line 2503
    iget-object v0, p0, Lcom/google/type/PostalAddress$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/type/PostalAddress;

    invoke-static {v0, p1}, Lcom/google/type/PostalAddress;->access$3600(Lcom/google/type/PostalAddress;Lcom/google/protobuf/ByteString;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public setPostalCode(Ljava/lang/String;)Lcom/google/type/PostalAddress$Builder;
    .locals 1

    .line 1617
    invoke-virtual {p0}, Lcom/google/type/PostalAddress$Builder;->copyOnWrite()V

    .line 1618
    iget-object v0, p0, Lcom/google/type/PostalAddress$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/type/PostalAddress;

    invoke-static {v0, p1}, Lcom/google/type/PostalAddress;->access$900(Lcom/google/type/PostalAddress;Ljava/lang/String;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public setPostalCodeBytes(Lcom/google/protobuf/ByteString;)Lcom/google/type/PostalAddress$Builder;
    .locals 1

    .line 1651
    invoke-virtual {p0}, Lcom/google/type/PostalAddress$Builder;->copyOnWrite()V

    .line 1652
    iget-object v0, p0, Lcom/google/type/PostalAddress$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/type/PostalAddress;

    invoke-static {v0, p1}, Lcom/google/type/PostalAddress;->access$1100(Lcom/google/type/PostalAddress;Lcom/google/protobuf/ByteString;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public setRecipients(ILjava/lang/String;)Lcom/google/type/PostalAddress$Builder;
    .locals 1

    .line 2367
    invoke-virtual {p0}, Lcom/google/type/PostalAddress$Builder;->copyOnWrite()V

    .line 2368
    iget-object v0, p0, Lcom/google/type/PostalAddress$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/type/PostalAddress;

    invoke-static {v0, p1, p2}, Lcom/google/type/PostalAddress;->access$2900(Lcom/google/type/PostalAddress;ILjava/lang/String;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public setRegionCode(Ljava/lang/String;)Lcom/google/type/PostalAddress$Builder;
    .locals 1

    .line 1417
    invoke-virtual {p0}, Lcom/google/type/PostalAddress$Builder;->copyOnWrite()V

    .line 1418
    iget-object v0, p0, Lcom/google/type/PostalAddress$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/type/PostalAddress;

    invoke-static {v0, p1}, Lcom/google/type/PostalAddress;->access$300(Lcom/google/type/PostalAddress;Ljava/lang/String;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public setRegionCodeBytes(Lcom/google/protobuf/ByteString;)Lcom/google/type/PostalAddress$Builder;
    .locals 1

    .line 1453
    invoke-virtual {p0}, Lcom/google/type/PostalAddress$Builder;->copyOnWrite()V

    .line 1454
    iget-object v0, p0, Lcom/google/type/PostalAddress$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/type/PostalAddress;

    invoke-static {v0, p1}, Lcom/google/type/PostalAddress;->access$500(Lcom/google/type/PostalAddress;Lcom/google/protobuf/ByteString;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public setRevision(I)Lcom/google/type/PostalAddress$Builder;
    .locals 1

    .line 1349
    invoke-virtual {p0}, Lcom/google/type/PostalAddress$Builder;->copyOnWrite()V

    .line 1350
    iget-object v0, p0, Lcom/google/type/PostalAddress$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/type/PostalAddress;

    invoke-static {v0, p1}, Lcom/google/type/PostalAddress;->access$100(Lcom/google/type/PostalAddress;I)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public setSortingCode(Ljava/lang/String;)Lcom/google/type/PostalAddress$Builder;
    .locals 1

    .line 1704
    invoke-virtual {p0}, Lcom/google/type/PostalAddress$Builder;->copyOnWrite()V

    .line 1705
    iget-object v0, p0, Lcom/google/type/PostalAddress$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/type/PostalAddress;

    invoke-static {v0, p1}, Lcom/google/type/PostalAddress;->access$1200(Lcom/google/type/PostalAddress;Ljava/lang/String;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public setSortingCodeBytes(Lcom/google/protobuf/ByteString;)Lcom/google/type/PostalAddress$Builder;
    .locals 1

    .line 1740
    invoke-virtual {p0}, Lcom/google/type/PostalAddress$Builder;->copyOnWrite()V

    .line 1741
    iget-object v0, p0, Lcom/google/type/PostalAddress$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/type/PostalAddress;

    invoke-static {v0, p1}, Lcom/google/type/PostalAddress;->access$1400(Lcom/google/type/PostalAddress;Lcom/google/protobuf/ByteString;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public setSublocality(Ljava/lang/String;)Lcom/google/type/PostalAddress$Builder;
    .locals 1

    .line 1967
    invoke-virtual {p0}, Lcom/google/type/PostalAddress$Builder;->copyOnWrite()V

    .line 1968
    iget-object v0, p0, Lcom/google/type/PostalAddress$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/type/PostalAddress;

    invoke-static {v0, p1}, Lcom/google/type/PostalAddress;->access$2100(Lcom/google/type/PostalAddress;Ljava/lang/String;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public setSublocalityBytes(Lcom/google/protobuf/ByteString;)Lcom/google/type/PostalAddress$Builder;
    .locals 1

    .line 1997
    invoke-virtual {p0}, Lcom/google/type/PostalAddress$Builder;->copyOnWrite()V

    .line 1998
    iget-object v0, p0, Lcom/google/type/PostalAddress$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/type/PostalAddress;

    invoke-static {v0, p1}, Lcom/google/type/PostalAddress;->access$2300(Lcom/google/type/PostalAddress;Lcom/google/protobuf/ByteString;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method
