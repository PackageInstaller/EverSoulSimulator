.class public final Lcom/google/api/BackendRule$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "BackendRule.java"

# interfaces
.implements Lcom/google/api/BackendRuleOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/api/BackendRule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/google/api/BackendRule;",
        "Lcom/google/api/BackendRule$Builder;",
        ">;",
        "Lcom/google/api/BackendRuleOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 993
    invoke-static {}, Lcom/google/api/BackendRule;->access$000()Lcom/google/api/BackendRule;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method synthetic constructor <init>(Lcom/google/api/BackendRule$1;)V
    .locals 0

    .line 986
    invoke-direct {p0}, Lcom/google/api/BackendRule$Builder;-><init>()V

    return-void

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public clearAddress()Lcom/google/api/BackendRule$Builder;
    .locals 1

    .line 1188
    invoke-virtual {p0}, Lcom/google/api/BackendRule$Builder;->copyOnWrite()V

    .line 1189
    iget-object v0, p0, Lcom/google/api/BackendRule$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/BackendRule;

    invoke-static {v0}, Lcom/google/api/BackendRule;->access$600(Lcom/google/api/BackendRule;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public clearAuthentication()Lcom/google/api/BackendRule$Builder;
    .locals 1

    .line 1003
    invoke-virtual {p0}, Lcom/google/api/BackendRule$Builder;->copyOnWrite()V

    .line 1004
    iget-object v0, p0, Lcom/google/api/BackendRule$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/BackendRule;

    invoke-static {v0}, Lcom/google/api/BackendRule;->access$100(Lcom/google/api/BackendRule;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public clearDeadline()Lcom/google/api/BackendRule$Builder;
    .locals 1

    .line 1260
    invoke-virtual {p0}, Lcom/google/api/BackendRule$Builder;->copyOnWrite()V

    .line 1261
    iget-object v0, p0, Lcom/google/api/BackendRule$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/BackendRule;

    invoke-static {v0}, Lcom/google/api/BackendRule;->access$900(Lcom/google/api/BackendRule;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public clearDisableAuth()Lcom/google/api/BackendRule$Builder;
    .locals 1

    .line 1520
    invoke-virtual {p0}, Lcom/google/api/BackendRule$Builder;->copyOnWrite()V

    .line 1521
    iget-object v0, p0, Lcom/google/api/BackendRule$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/BackendRule;

    invoke-static {v0}, Lcom/google/api/BackendRule;->access$2100(Lcom/google/api/BackendRule;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public clearJwtAudience()Lcom/google/api/BackendRule$Builder;
    .locals 1

    .line 1454
    invoke-virtual {p0}, Lcom/google/api/BackendRule$Builder;->copyOnWrite()V

    .line 1455
    iget-object v0, p0, Lcom/google/api/BackendRule$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/BackendRule;

    invoke-static {v0}, Lcom/google/api/BackendRule;->access$1800(Lcom/google/api/BackendRule;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public clearMinDeadline()Lcom/google/api/BackendRule$Builder;
    .locals 1

    .line 1303
    invoke-virtual {p0}, Lcom/google/api/BackendRule$Builder;->copyOnWrite()V

    .line 1304
    iget-object v0, p0, Lcom/google/api/BackendRule$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/BackendRule;

    invoke-static {v0}, Lcom/google/api/BackendRule;->access$1100(Lcom/google/api/BackendRule;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public clearOperationDeadline()Lcom/google/api/BackendRule$Builder;
    .locals 1

    .line 1346
    invoke-virtual {p0}, Lcom/google/api/BackendRule$Builder;->copyOnWrite()V

    .line 1347
    iget-object v0, p0, Lcom/google/api/BackendRule$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/BackendRule;

    invoke-static {v0}, Lcom/google/api/BackendRule;->access$1300(Lcom/google/api/BackendRule;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public clearPathTranslation()Lcom/google/api/BackendRule$Builder;
    .locals 1

    .line 1392
    invoke-virtual {p0}, Lcom/google/api/BackendRule$Builder;->copyOnWrite()V

    .line 1393
    iget-object v0, p0, Lcom/google/api/BackendRule$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/BackendRule;

    invoke-static {v0}, Lcom/google/api/BackendRule;->access$1600(Lcom/google/api/BackendRule;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public clearProtocol()Lcom/google/api/BackendRule$Builder;
    .locals 1

    .line 1634
    invoke-virtual {p0}, Lcom/google/api/BackendRule$Builder;->copyOnWrite()V

    .line 1635
    iget-object v0, p0, Lcom/google/api/BackendRule$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/BackendRule;

    invoke-static {v0}, Lcom/google/api/BackendRule;->access$2300(Lcom/google/api/BackendRule;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public clearSelector()Lcom/google/api/BackendRule$Builder;
    .locals 1

    .line 1062
    invoke-virtual {p0}, Lcom/google/api/BackendRule$Builder;->copyOnWrite()V

    .line 1063
    iget-object v0, p0, Lcom/google/api/BackendRule$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/BackendRule;

    invoke-static {v0}, Lcom/google/api/BackendRule;->access$300(Lcom/google/api/BackendRule;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public getAddress()Ljava/lang/String;
    .locals 1

    .line 1107
    iget-object v0, p0, Lcom/google/api/BackendRule$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/BackendRule;

    invoke-virtual {v0}, Lcom/google/api/BackendRule;->getAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getAddressBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1134
    iget-object v0, p0, Lcom/google/api/BackendRule$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/BackendRule;

    invoke-virtual {v0}, Lcom/google/api/BackendRule;->getAddressBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getAuthenticationCase()Lcom/google/api/BackendRule$AuthenticationCase;
    .locals 1

    .line 999
    iget-object v0, p0, Lcom/google/api/BackendRule$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/BackendRule;

    invoke-virtual {v0}, Lcom/google/api/BackendRule;->getAuthenticationCase()Lcom/google/api/BackendRule$AuthenticationCase;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getDeadline()D
    .locals 2

    .line 1233
    iget-object v0, p0, Lcom/google/api/BackendRule$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/BackendRule;

    invoke-virtual {v0}, Lcom/google/api/BackendRule;->getDeadline()D

    move-result-wide v0

    return-wide v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getDisableAuth()Z
    .locals 1

    .line 1489
    iget-object v0, p0, Lcom/google/api/BackendRule$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/BackendRule;

    invoke-virtual {v0}, Lcom/google/api/BackendRule;->getDisableAuth()Z

    move-result v0

    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getJwtAudience()Ljava/lang/String;
    .locals 1

    .line 1409
    iget-object v0, p0, Lcom/google/api/BackendRule$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/BackendRule;

    invoke-virtual {v0}, Lcom/google/api/BackendRule;->getJwtAudience()Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getJwtAudienceBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1424
    iget-object v0, p0, Lcom/google/api/BackendRule$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/BackendRule;

    invoke-virtual {v0}, Lcom/google/api/BackendRule;->getJwtAudienceBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getMinDeadline()D
    .locals 2

    .line 1276
    iget-object v0, p0, Lcom/google/api/BackendRule$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/BackendRule;

    invoke-virtual {v0}, Lcom/google/api/BackendRule;->getMinDeadline()D

    move-result-wide v0

    return-wide v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getOperationDeadline()D
    .locals 2

    .line 1319
    iget-object v0, p0, Lcom/google/api/BackendRule$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/BackendRule;

    invoke-virtual {v0}, Lcom/google/api/BackendRule;->getOperationDeadline()D

    move-result-wide v0

    return-wide v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getPathTranslation()Lcom/google/api/BackendRule$PathTranslation;
    .locals 1

    .line 1375
    iget-object v0, p0, Lcom/google/api/BackendRule$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/BackendRule;

    invoke-virtual {v0}, Lcom/google/api/BackendRule;->getPathTranslation()Lcom/google/api/BackendRule$PathTranslation;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getPathTranslationValue()I
    .locals 1

    .line 1357
    iget-object v0, p0, Lcom/google/api/BackendRule$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/BackendRule;

    invoke-virtual {v0}, Lcom/google/api/BackendRule;->getPathTranslationValue()I

    move-result v0

    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getProtocol()Ljava/lang/String;
    .locals 1

    .line 1550
    iget-object v0, p0, Lcom/google/api/BackendRule$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/BackendRule;

    invoke-virtual {v0}, Lcom/google/api/BackendRule;->getProtocol()Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getProtocolBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1578
    iget-object v0, p0, Lcom/google/api/BackendRule$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/BackendRule;

    invoke-virtual {v0}, Lcom/google/api/BackendRule;->getProtocolBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getSelector()Ljava/lang/String;
    .locals 1

    .line 1020
    iget-object v0, p0, Lcom/google/api/BackendRule$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/BackendRule;

    invoke-virtual {v0}, Lcom/google/api/BackendRule;->getSelector()Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getSelectorBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1034
    iget-object v0, p0, Lcom/google/api/BackendRule$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/BackendRule;

    invoke-virtual {v0}, Lcom/google/api/BackendRule;->getSelectorBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public setAddress(Ljava/lang/String;)Lcom/google/api/BackendRule$Builder;
    .locals 1

    .line 1161
    invoke-virtual {p0}, Lcom/google/api/BackendRule$Builder;->copyOnWrite()V

    .line 1162
    iget-object v0, p0, Lcom/google/api/BackendRule$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/BackendRule;

    invoke-static {v0, p1}, Lcom/google/api/BackendRule;->access$500(Lcom/google/api/BackendRule;Ljava/lang/String;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public setAddressBytes(Lcom/google/protobuf/ByteString;)Lcom/google/api/BackendRule$Builder;
    .locals 1

    .line 1217
    invoke-virtual {p0}, Lcom/google/api/BackendRule$Builder;->copyOnWrite()V

    .line 1218
    iget-object v0, p0, Lcom/google/api/BackendRule$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/BackendRule;

    invoke-static {v0, p1}, Lcom/google/api/BackendRule;->access$700(Lcom/google/api/BackendRule;Lcom/google/protobuf/ByteString;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public setDeadline(D)Lcom/google/api/BackendRule$Builder;
    .locals 1

    .line 1246
    invoke-virtual {p0}, Lcom/google/api/BackendRule$Builder;->copyOnWrite()V

    .line 1247
    iget-object v0, p0, Lcom/google/api/BackendRule$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/BackendRule;

    invoke-static {v0, p1, p2}, Lcom/google/api/BackendRule;->access$800(Lcom/google/api/BackendRule;D)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public setDisableAuth(Z)Lcom/google/api/BackendRule$Builder;
    .locals 1

    .line 1504
    invoke-virtual {p0}, Lcom/google/api/BackendRule$Builder;->copyOnWrite()V

    .line 1505
    iget-object v0, p0, Lcom/google/api/BackendRule$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/BackendRule;

    invoke-static {v0, p1}, Lcom/google/api/BackendRule;->access$2000(Lcom/google/api/BackendRule;Z)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public setJwtAudience(Ljava/lang/String;)Lcom/google/api/BackendRule$Builder;
    .locals 1

    .line 1439
    invoke-virtual {p0}, Lcom/google/api/BackendRule$Builder;->copyOnWrite()V

    .line 1440
    iget-object v0, p0, Lcom/google/api/BackendRule$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/BackendRule;

    invoke-static {v0, p1}, Lcom/google/api/BackendRule;->access$1700(Lcom/google/api/BackendRule;Ljava/lang/String;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public setJwtAudienceBytes(Lcom/google/protobuf/ByteString;)Lcom/google/api/BackendRule$Builder;
    .locals 1

    .line 1471
    invoke-virtual {p0}, Lcom/google/api/BackendRule$Builder;->copyOnWrite()V

    .line 1472
    iget-object v0, p0, Lcom/google/api/BackendRule$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/BackendRule;

    invoke-static {v0, p1}, Lcom/google/api/BackendRule;->access$1900(Lcom/google/api/BackendRule;Lcom/google/protobuf/ByteString;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public setMinDeadline(D)Lcom/google/api/BackendRule$Builder;
    .locals 1

    .line 1289
    invoke-virtual {p0}, Lcom/google/api/BackendRule$Builder;->copyOnWrite()V

    .line 1290
    iget-object v0, p0, Lcom/google/api/BackendRule$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/BackendRule;

    invoke-static {v0, p1, p2}, Lcom/google/api/BackendRule;->access$1000(Lcom/google/api/BackendRule;D)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public setOperationDeadline(D)Lcom/google/api/BackendRule$Builder;
    .locals 1

    .line 1332
    invoke-virtual {p0}, Lcom/google/api/BackendRule$Builder;->copyOnWrite()V

    .line 1333
    iget-object v0, p0, Lcom/google/api/BackendRule$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/BackendRule;

    invoke-static {v0, p1, p2}, Lcom/google/api/BackendRule;->access$1200(Lcom/google/api/BackendRule;D)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public setPathTranslation(Lcom/google/api/BackendRule$PathTranslation;)Lcom/google/api/BackendRule$Builder;
    .locals 1

    .line 1383
    invoke-virtual {p0}, Lcom/google/api/BackendRule$Builder;->copyOnWrite()V

    .line 1384
    iget-object v0, p0, Lcom/google/api/BackendRule$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/BackendRule;

    invoke-static {v0, p1}, Lcom/google/api/BackendRule;->access$1500(Lcom/google/api/BackendRule;Lcom/google/api/BackendRule$PathTranslation;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public setPathTranslationValue(I)Lcom/google/api/BackendRule$Builder;
    .locals 1

    .line 1365
    invoke-virtual {p0}, Lcom/google/api/BackendRule$Builder;->copyOnWrite()V

    .line 1366
    iget-object v0, p0, Lcom/google/api/BackendRule$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/BackendRule;

    invoke-static {v0, p1}, Lcom/google/api/BackendRule;->access$1400(Lcom/google/api/BackendRule;I)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public setProtocol(Ljava/lang/String;)Lcom/google/api/BackendRule$Builder;
    .locals 1

    .line 1606
    invoke-virtual {p0}, Lcom/google/api/BackendRule$Builder;->copyOnWrite()V

    .line 1607
    iget-object v0, p0, Lcom/google/api/BackendRule$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/BackendRule;

    invoke-static {v0, p1}, Lcom/google/api/BackendRule;->access$2200(Lcom/google/api/BackendRule;Ljava/lang/String;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public setProtocolBytes(Lcom/google/protobuf/ByteString;)Lcom/google/api/BackendRule$Builder;
    .locals 1

    .line 1664
    invoke-virtual {p0}, Lcom/google/api/BackendRule$Builder;->copyOnWrite()V

    .line 1665
    iget-object v0, p0, Lcom/google/api/BackendRule$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/BackendRule;

    invoke-static {v0, p1}, Lcom/google/api/BackendRule;->access$2400(Lcom/google/api/BackendRule;Lcom/google/protobuf/ByteString;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public setSelector(Ljava/lang/String;)Lcom/google/api/BackendRule$Builder;
    .locals 1

    .line 1048
    invoke-virtual {p0}, Lcom/google/api/BackendRule$Builder;->copyOnWrite()V

    .line 1049
    iget-object v0, p0, Lcom/google/api/BackendRule$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/BackendRule;

    invoke-static {v0, p1}, Lcom/google/api/BackendRule;->access$200(Lcom/google/api/BackendRule;Ljava/lang/String;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public setSelectorBytes(Lcom/google/protobuf/ByteString;)Lcom/google/api/BackendRule$Builder;
    .locals 1

    .line 1078
    invoke-virtual {p0}, Lcom/google/api/BackendRule$Builder;->copyOnWrite()V

    .line 1079
    iget-object v0, p0, Lcom/google/api/BackendRule$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/BackendRule;

    invoke-static {v0, p1}, Lcom/google/api/BackendRule;->access$400(Lcom/google/api/BackendRule;Lcom/google/protobuf/ByteString;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method
