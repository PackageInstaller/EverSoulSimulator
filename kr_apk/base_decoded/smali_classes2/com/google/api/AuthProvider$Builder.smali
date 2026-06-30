.class public final Lcom/google/api/AuthProvider$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "AuthProvider.java"

# interfaces
.implements Lcom/google/api/AuthProviderOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/api/AuthProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/google/api/AuthProvider;",
        "Lcom/google/api/AuthProvider$Builder;",
        ">;",
        "Lcom/google/api/AuthProviderOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 876
    invoke-static {}, Lcom/google/api/AuthProvider;->access$000()Lcom/google/api/AuthProvider;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method synthetic constructor <init>(Lcom/google/api/AuthProvider$1;)V
    .locals 0

    .line 869
    invoke-direct {p0}, Lcom/google/api/AuthProvider$Builder;-><init>()V

    return-void

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public addAllJwtLocations(Ljava/lang/Iterable;)Lcom/google/api/AuthProvider$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/google/api/JwtLocation;",
            ">;)",
            "Lcom/google/api/AuthProvider$Builder;"
        }
    .end annotation

    .line 1611
    invoke-virtual {p0}, Lcom/google/api/AuthProvider$Builder;->copyOnWrite()V

    .line 1612
    iget-object v0, p0, Lcom/google/api/AuthProvider$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/AuthProvider;

    invoke-static {v0, p1}, Lcom/google/api/AuthProvider;->access$1900(Lcom/google/api/AuthProvider;Ljava/lang/Iterable;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public addJwtLocations(ILcom/google/api/JwtLocation$Builder;)Lcom/google/api/AuthProvider$Builder;
    .locals 1

    .line 1584
    invoke-virtual {p0}, Lcom/google/api/AuthProvider$Builder;->copyOnWrite()V

    .line 1585
    iget-object v0, p0, Lcom/google/api/AuthProvider$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/AuthProvider;

    .line 1586
    invoke-virtual {p2}, Lcom/google/api/JwtLocation$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Lcom/google/api/JwtLocation;

    .line 1585
    invoke-static {v0, p1, p2}, Lcom/google/api/AuthProvider;->access$1800(Lcom/google/api/AuthProvider;ILcom/google/api/JwtLocation;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public addJwtLocations(ILcom/google/api/JwtLocation;)Lcom/google/api/AuthProvider$Builder;
    .locals 1

    .line 1532
    invoke-virtual {p0}, Lcom/google/api/AuthProvider$Builder;->copyOnWrite()V

    .line 1533
    iget-object v0, p0, Lcom/google/api/AuthProvider$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/AuthProvider;

    invoke-static {v0, p1, p2}, Lcom/google/api/AuthProvider;->access$1800(Lcom/google/api/AuthProvider;ILcom/google/api/JwtLocation;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public addJwtLocations(Lcom/google/api/JwtLocation$Builder;)Lcom/google/api/AuthProvider$Builder;
    .locals 1

    .line 1558
    invoke-virtual {p0}, Lcom/google/api/AuthProvider$Builder;->copyOnWrite()V

    .line 1559
    iget-object v0, p0, Lcom/google/api/AuthProvider$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/AuthProvider;

    invoke-virtual {p1}, Lcom/google/api/JwtLocation$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/api/JwtLocation;

    invoke-static {v0, p1}, Lcom/google/api/AuthProvider;->access$1700(Lcom/google/api/AuthProvider;Lcom/google/api/JwtLocation;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public addJwtLocations(Lcom/google/api/JwtLocation;)Lcom/google/api/AuthProvider$Builder;
    .locals 1

    .line 1506
    invoke-virtual {p0}, Lcom/google/api/AuthProvider$Builder;->copyOnWrite()V

    .line 1507
    iget-object v0, p0, Lcom/google/api/AuthProvider$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/AuthProvider;

    invoke-static {v0, p1}, Lcom/google/api/AuthProvider;->access$1700(Lcom/google/api/AuthProvider;Lcom/google/api/JwtLocation;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public clearAudiences()Lcom/google/api/AuthProvider$Builder;
    .locals 1

    .line 1256
    invoke-virtual {p0}, Lcom/google/api/AuthProvider$Builder;->copyOnWrite()V

    .line 1257
    iget-object v0, p0, Lcom/google/api/AuthProvider$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/AuthProvider;

    invoke-static {v0}, Lcom/google/api/AuthProvider;->access$1100(Lcom/google/api/AuthProvider;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public clearAuthorizationUrl()Lcom/google/api/AuthProvider$Builder;
    .locals 1

    .line 1339
    invoke-virtual {p0}, Lcom/google/api/AuthProvider$Builder;->copyOnWrite()V

    .line 1340
    iget-object v0, p0, Lcom/google/api/AuthProvider$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/AuthProvider;

    invoke-static {v0}, Lcom/google/api/AuthProvider;->access$1400(Lcom/google/api/AuthProvider;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public clearId()Lcom/google/api/AuthProvider$Builder;
    .locals 1

    .line 937
    invoke-virtual {p0}, Lcom/google/api/AuthProvider$Builder;->copyOnWrite()V

    .line 938
    iget-object v0, p0, Lcom/google/api/AuthProvider$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/AuthProvider;

    invoke-static {v0}, Lcom/google/api/AuthProvider;->access$200(Lcom/google/api/AuthProvider;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public clearIssuer()Lcom/google/api/AuthProvider$Builder;
    .locals 1

    .line 1024
    invoke-virtual {p0}, Lcom/google/api/AuthProvider$Builder;->copyOnWrite()V

    .line 1025
    iget-object v0, p0, Lcom/google/api/AuthProvider$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/AuthProvider;

    invoke-static {v0}, Lcom/google/api/AuthProvider;->access$500(Lcom/google/api/AuthProvider;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public clearJwksUri()Lcom/google/api/AuthProvider$Builder;
    .locals 1

    .line 1137
    invoke-virtual {p0}, Lcom/google/api/AuthProvider$Builder;->copyOnWrite()V

    .line 1138
    iget-object v0, p0, Lcom/google/api/AuthProvider$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/AuthProvider;

    invoke-static {v0}, Lcom/google/api/AuthProvider;->access$800(Lcom/google/api/AuthProvider;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public clearJwtLocations()Lcom/google/api/AuthProvider$Builder;
    .locals 1

    .line 1636
    invoke-virtual {p0}, Lcom/google/api/AuthProvider$Builder;->copyOnWrite()V

    .line 1637
    iget-object v0, p0, Lcom/google/api/AuthProvider$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/AuthProvider;

    invoke-static {v0}, Lcom/google/api/AuthProvider;->access$2000(Lcom/google/api/AuthProvider;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public getAudiences()Ljava/lang/String;
    .locals 1

    .line 1187
    iget-object v0, p0, Lcom/google/api/AuthProvider$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/AuthProvider;

    invoke-virtual {v0}, Lcom/google/api/AuthProvider;->getAudiences()Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getAudiencesBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1210
    iget-object v0, p0, Lcom/google/api/AuthProvider$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/AuthProvider;

    invoke-virtual {v0}, Lcom/google/api/AuthProvider;->getAudiencesBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getAuthorizationUrl()Ljava/lang/String;
    .locals 1

    .line 1297
    iget-object v0, p0, Lcom/google/api/AuthProvider$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/AuthProvider;

    invoke-virtual {v0}, Lcom/google/api/AuthProvider;->getAuthorizationUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getAuthorizationUrlBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1311
    iget-object v0, p0, Lcom/google/api/AuthProvider$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/AuthProvider;

    invoke-virtual {v0}, Lcom/google/api/AuthProvider;->getAuthorizationUrlBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 892
    iget-object v0, p0, Lcom/google/api/AuthProvider$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/AuthProvider;

    invoke-virtual {v0}, Lcom/google/api/AuthProvider;->getId()Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getIdBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 907
    iget-object v0, p0, Lcom/google/api/AuthProvider$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/AuthProvider;

    invoke-virtual {v0}, Lcom/google/api/AuthProvider;->getIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getIssuer()Ljava/lang/String;
    .locals 1

    .line 973
    iget-object v0, p0, Lcom/google/api/AuthProvider$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/AuthProvider;

    invoke-virtual {v0}, Lcom/google/api/AuthProvider;->getIssuer()Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getIssuerBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 990
    iget-object v0, p0, Lcom/google/api/AuthProvider$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/AuthProvider;

    invoke-virtual {v0}, Lcom/google/api/AuthProvider;->getIssuerBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getJwksUri()Ljava/lang/String;
    .locals 1

    .line 1068
    iget-object v0, p0, Lcom/google/api/AuthProvider$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/AuthProvider;

    invoke-virtual {v0}, Lcom/google/api/AuthProvider;->getJwksUri()Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getJwksUriBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1091
    iget-object v0, p0, Lcom/google/api/AuthProvider$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/AuthProvider;

    invoke-virtual {v0}, Lcom/google/api/AuthProvider;->getJwksUriBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getJwtLocations(I)Lcom/google/api/JwtLocation;
    .locals 1

    .line 1430
    iget-object v0, p0, Lcom/google/api/AuthProvider$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/AuthProvider;

    invoke-virtual {v0, p1}, Lcom/google/api/AuthProvider;->getJwtLocations(I)Lcom/google/api/JwtLocation;

    move-result-object p1

    return-object p1

    nop

    .array-data 1
    .end array-data
.end method

.method public getJwtLocationsCount()I
    .locals 1

    .line 1407
    iget-object v0, p0, Lcom/google/api/AuthProvider$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/AuthProvider;

    invoke-virtual {v0}, Lcom/google/api/AuthProvider;->getJwtLocationsCount()I

    move-result v0

    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getJwtLocationsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/api/JwtLocation;",
            ">;"
        }
    .end annotation

    .line 1382
    iget-object v0, p0, Lcom/google/api/AuthProvider$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/AuthProvider;

    .line 1383
    invoke-virtual {v0}, Lcom/google/api/AuthProvider;->getJwtLocationsList()Ljava/util/List;

    move-result-object v0

    .line 1382
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public removeJwtLocations(I)Lcom/google/api/AuthProvider$Builder;
    .locals 1

    .line 1661
    invoke-virtual {p0}, Lcom/google/api/AuthProvider$Builder;->copyOnWrite()V

    .line 1662
    iget-object v0, p0, Lcom/google/api/AuthProvider$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/AuthProvider;

    invoke-static {v0, p1}, Lcom/google/api/AuthProvider;->access$2100(Lcom/google/api/AuthProvider;I)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public setAudiences(Ljava/lang/String;)Lcom/google/api/AuthProvider$Builder;
    .locals 1

    .line 1233
    invoke-virtual {p0}, Lcom/google/api/AuthProvider$Builder;->copyOnWrite()V

    .line 1234
    iget-object v0, p0, Lcom/google/api/AuthProvider$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/AuthProvider;

    invoke-static {v0, p1}, Lcom/google/api/AuthProvider;->access$1000(Lcom/google/api/AuthProvider;Ljava/lang/String;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public setAudiencesBytes(Lcom/google/protobuf/ByteString;)Lcom/google/api/AuthProvider$Builder;
    .locals 1

    .line 1281
    invoke-virtual {p0}, Lcom/google/api/AuthProvider$Builder;->copyOnWrite()V

    .line 1282
    iget-object v0, p0, Lcom/google/api/AuthProvider$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/AuthProvider;

    invoke-static {v0, p1}, Lcom/google/api/AuthProvider;->access$1200(Lcom/google/api/AuthProvider;Lcom/google/protobuf/ByteString;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public setAuthorizationUrl(Ljava/lang/String;)Lcom/google/api/AuthProvider$Builder;
    .locals 1

    .line 1325
    invoke-virtual {p0}, Lcom/google/api/AuthProvider$Builder;->copyOnWrite()V

    .line 1326
    iget-object v0, p0, Lcom/google/api/AuthProvider$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/AuthProvider;

    invoke-static {v0, p1}, Lcom/google/api/AuthProvider;->access$1300(Lcom/google/api/AuthProvider;Ljava/lang/String;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public setAuthorizationUrlBytes(Lcom/google/protobuf/ByteString;)Lcom/google/api/AuthProvider$Builder;
    .locals 1

    .line 1355
    invoke-virtual {p0}, Lcom/google/api/AuthProvider$Builder;->copyOnWrite()V

    .line 1356
    iget-object v0, p0, Lcom/google/api/AuthProvider$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/AuthProvider;

    invoke-static {v0, p1}, Lcom/google/api/AuthProvider;->access$1500(Lcom/google/api/AuthProvider;Lcom/google/protobuf/ByteString;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public setId(Ljava/lang/String;)Lcom/google/api/AuthProvider$Builder;
    .locals 1

    .line 922
    invoke-virtual {p0}, Lcom/google/api/AuthProvider$Builder;->copyOnWrite()V

    .line 923
    iget-object v0, p0, Lcom/google/api/AuthProvider$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/AuthProvider;

    invoke-static {v0, p1}, Lcom/google/api/AuthProvider;->access$100(Lcom/google/api/AuthProvider;Ljava/lang/String;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public setIdBytes(Lcom/google/protobuf/ByteString;)Lcom/google/api/AuthProvider$Builder;
    .locals 1

    .line 954
    invoke-virtual {p0}, Lcom/google/api/AuthProvider$Builder;->copyOnWrite()V

    .line 955
    iget-object v0, p0, Lcom/google/api/AuthProvider$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/AuthProvider;

    invoke-static {v0, p1}, Lcom/google/api/AuthProvider;->access$300(Lcom/google/api/AuthProvider;Lcom/google/protobuf/ByteString;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public setIssuer(Ljava/lang/String;)Lcom/google/api/AuthProvider$Builder;
    .locals 1

    .line 1007
    invoke-virtual {p0}, Lcom/google/api/AuthProvider$Builder;->copyOnWrite()V

    .line 1008
    iget-object v0, p0, Lcom/google/api/AuthProvider$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/AuthProvider;

    invoke-static {v0, p1}, Lcom/google/api/AuthProvider;->access$400(Lcom/google/api/AuthProvider;Ljava/lang/String;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public setIssuerBytes(Lcom/google/protobuf/ByteString;)Lcom/google/api/AuthProvider$Builder;
    .locals 1

    .line 1043
    invoke-virtual {p0}, Lcom/google/api/AuthProvider$Builder;->copyOnWrite()V

    .line 1044
    iget-object v0, p0, Lcom/google/api/AuthProvider$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/AuthProvider;

    invoke-static {v0, p1}, Lcom/google/api/AuthProvider;->access$600(Lcom/google/api/AuthProvider;Lcom/google/protobuf/ByteString;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public setJwksUri(Ljava/lang/String;)Lcom/google/api/AuthProvider$Builder;
    .locals 1

    .line 1114
    invoke-virtual {p0}, Lcom/google/api/AuthProvider$Builder;->copyOnWrite()V

    .line 1115
    iget-object v0, p0, Lcom/google/api/AuthProvider$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/AuthProvider;

    invoke-static {v0, p1}, Lcom/google/api/AuthProvider;->access$700(Lcom/google/api/AuthProvider;Ljava/lang/String;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public setJwksUriBytes(Lcom/google/protobuf/ByteString;)Lcom/google/api/AuthProvider$Builder;
    .locals 1

    .line 1162
    invoke-virtual {p0}, Lcom/google/api/AuthProvider$Builder;->copyOnWrite()V

    .line 1163
    iget-object v0, p0, Lcom/google/api/AuthProvider$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/AuthProvider;

    invoke-static {v0, p1}, Lcom/google/api/AuthProvider;->access$900(Lcom/google/api/AuthProvider;Lcom/google/protobuf/ByteString;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public setJwtLocations(ILcom/google/api/JwtLocation$Builder;)Lcom/google/api/AuthProvider$Builder;
    .locals 1

    .line 1480
    invoke-virtual {p0}, Lcom/google/api/AuthProvider$Builder;->copyOnWrite()V

    .line 1481
    iget-object v0, p0, Lcom/google/api/AuthProvider$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/AuthProvider;

    .line 1482
    invoke-virtual {p2}, Lcom/google/api/JwtLocation$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Lcom/google/api/JwtLocation;

    .line 1481
    invoke-static {v0, p1, p2}, Lcom/google/api/AuthProvider;->access$1600(Lcom/google/api/AuthProvider;ILcom/google/api/JwtLocation;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public setJwtLocations(ILcom/google/api/JwtLocation;)Lcom/google/api/AuthProvider$Builder;
    .locals 1

    .line 1454
    invoke-virtual {p0}, Lcom/google/api/AuthProvider$Builder;->copyOnWrite()V

    .line 1455
    iget-object v0, p0, Lcom/google/api/AuthProvider$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/AuthProvider;

    invoke-static {v0, p1, p2}, Lcom/google/api/AuthProvider;->access$1600(Lcom/google/api/AuthProvider;ILcom/google/api/JwtLocation;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method
