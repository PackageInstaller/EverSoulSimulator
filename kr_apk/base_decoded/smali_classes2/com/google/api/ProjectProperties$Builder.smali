.class public final Lcom/google/api/ProjectProperties$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "ProjectProperties.java"

# interfaces
.implements Lcom/google/api/ProjectPropertiesOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/api/ProjectProperties;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/google/api/ProjectProperties;",
        "Lcom/google/api/ProjectProperties$Builder;",
        ">;",
        "Lcom/google/api/ProjectPropertiesOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 280
    invoke-static {}, Lcom/google/api/ProjectProperties;->access$000()Lcom/google/api/ProjectProperties;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method synthetic constructor <init>(Lcom/google/api/ProjectProperties$1;)V
    .locals 0

    .line 273
    invoke-direct {p0}, Lcom/google/api/ProjectProperties$Builder;-><init>()V

    return-void

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public addAllProperties(Ljava/lang/Iterable;)Lcom/google/api/ProjectProperties$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/google/api/Property;",
            ">;)",
            "Lcom/google/api/ProjectProperties$Builder;"
        }
    .end annotation

    .line 405
    invoke-virtual {p0}, Lcom/google/api/ProjectProperties$Builder;->copyOnWrite()V

    .line 406
    iget-object v0, p0, Lcom/google/api/ProjectProperties$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/ProjectProperties;

    invoke-static {v0, p1}, Lcom/google/api/ProjectProperties;->access$400(Lcom/google/api/ProjectProperties;Ljava/lang/Iterable;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public addProperties(ILcom/google/api/Property$Builder;)Lcom/google/api/ProjectProperties$Builder;
    .locals 1

    .line 391
    invoke-virtual {p0}, Lcom/google/api/ProjectProperties$Builder;->copyOnWrite()V

    .line 392
    iget-object v0, p0, Lcom/google/api/ProjectProperties$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/ProjectProperties;

    .line 393
    invoke-virtual {p2}, Lcom/google/api/Property$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Lcom/google/api/Property;

    .line 392
    invoke-static {v0, p1, p2}, Lcom/google/api/ProjectProperties;->access$300(Lcom/google/api/ProjectProperties;ILcom/google/api/Property;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public addProperties(ILcom/google/api/Property;)Lcom/google/api/ProjectProperties$Builder;
    .locals 1

    .line 365
    invoke-virtual {p0}, Lcom/google/api/ProjectProperties$Builder;->copyOnWrite()V

    .line 366
    iget-object v0, p0, Lcom/google/api/ProjectProperties$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/ProjectProperties;

    invoke-static {v0, p1, p2}, Lcom/google/api/ProjectProperties;->access$300(Lcom/google/api/ProjectProperties;ILcom/google/api/Property;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public addProperties(Lcom/google/api/Property$Builder;)Lcom/google/api/ProjectProperties$Builder;
    .locals 1

    .line 378
    invoke-virtual {p0}, Lcom/google/api/ProjectProperties$Builder;->copyOnWrite()V

    .line 379
    iget-object v0, p0, Lcom/google/api/ProjectProperties$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/ProjectProperties;

    invoke-virtual {p1}, Lcom/google/api/Property$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/api/Property;

    invoke-static {v0, p1}, Lcom/google/api/ProjectProperties;->access$200(Lcom/google/api/ProjectProperties;Lcom/google/api/Property;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public addProperties(Lcom/google/api/Property;)Lcom/google/api/ProjectProperties$Builder;
    .locals 1

    .line 352
    invoke-virtual {p0}, Lcom/google/api/ProjectProperties$Builder;->copyOnWrite()V

    .line 353
    iget-object v0, p0, Lcom/google/api/ProjectProperties$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/ProjectProperties;

    invoke-static {v0, p1}, Lcom/google/api/ProjectProperties;->access$200(Lcom/google/api/ProjectProperties;Lcom/google/api/Property;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public clearProperties()Lcom/google/api/ProjectProperties$Builder;
    .locals 1

    .line 417
    invoke-virtual {p0}, Lcom/google/api/ProjectProperties$Builder;->copyOnWrite()V

    .line 418
    iget-object v0, p0, Lcom/google/api/ProjectProperties$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/ProjectProperties;

    invoke-static {v0}, Lcom/google/api/ProjectProperties;->access$500(Lcom/google/api/ProjectProperties;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public getProperties(I)Lcom/google/api/Property;
    .locals 1

    .line 315
    iget-object v0, p0, Lcom/google/api/ProjectProperties$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/ProjectProperties;

    invoke-virtual {v0, p1}, Lcom/google/api/ProjectProperties;->getProperties(I)Lcom/google/api/Property;

    move-result-object p1

    return-object p1

    nop

    .array-data 1
    .end array-data
.end method

.method public getPropertiesCount()I
    .locals 1

    .line 305
    iget-object v0, p0, Lcom/google/api/ProjectProperties$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/ProjectProperties;

    invoke-virtual {v0}, Lcom/google/api/ProjectProperties;->getPropertiesCount()I

    move-result v0

    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getPropertiesList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/api/Property;",
            ">;"
        }
    .end annotation

    .line 293
    iget-object v0, p0, Lcom/google/api/ProjectProperties$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/ProjectProperties;

    .line 294
    invoke-virtual {v0}, Lcom/google/api/ProjectProperties;->getPropertiesList()Ljava/util/List;

    move-result-object v0

    .line 293
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public removeProperties(I)Lcom/google/api/ProjectProperties$Builder;
    .locals 1

    .line 429
    invoke-virtual {p0}, Lcom/google/api/ProjectProperties$Builder;->copyOnWrite()V

    .line 430
    iget-object v0, p0, Lcom/google/api/ProjectProperties$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/ProjectProperties;

    invoke-static {v0, p1}, Lcom/google/api/ProjectProperties;->access$600(Lcom/google/api/ProjectProperties;I)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public setProperties(ILcom/google/api/Property$Builder;)Lcom/google/api/ProjectProperties$Builder;
    .locals 1

    .line 339
    invoke-virtual {p0}, Lcom/google/api/ProjectProperties$Builder;->copyOnWrite()V

    .line 340
    iget-object v0, p0, Lcom/google/api/ProjectProperties$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/ProjectProperties;

    .line 341
    invoke-virtual {p2}, Lcom/google/api/Property$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Lcom/google/api/Property;

    .line 340
    invoke-static {v0, p1, p2}, Lcom/google/api/ProjectProperties;->access$100(Lcom/google/api/ProjectProperties;ILcom/google/api/Property;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public setProperties(ILcom/google/api/Property;)Lcom/google/api/ProjectProperties$Builder;
    .locals 1

    .line 326
    invoke-virtual {p0}, Lcom/google/api/ProjectProperties$Builder;->copyOnWrite()V

    .line 327
    iget-object v0, p0, Lcom/google/api/ProjectProperties$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/ProjectProperties;

    invoke-static {v0, p1, p2}, Lcom/google/api/ProjectProperties;->access$100(Lcom/google/api/ProjectProperties;ILcom/google/api/Property;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method
