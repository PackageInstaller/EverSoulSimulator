.class public final Lcom/google/api/Backend$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Backend.java"

# interfaces
.implements Lcom/google/api/BackendOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/api/Backend;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/google/api/Backend;",
        "Lcom/google/api/Backend$Builder;",
        ">;",
        "Lcom/google/api/BackendOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 265
    invoke-static {}, Lcom/google/api/Backend;->access$000()Lcom/google/api/Backend;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method synthetic constructor <init>(Lcom/google/api/Backend$1;)V
    .locals 0

    .line 258
    invoke-direct {p0}, Lcom/google/api/Backend$Builder;-><init>()V

    return-void

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public addAllRules(Ljava/lang/Iterable;)Lcom/google/api/Backend$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/google/api/BackendRule;",
            ">;)",
            "Lcom/google/api/Backend$Builder;"
        }
    .end annotation

    .line 400
    invoke-virtual {p0}, Lcom/google/api/Backend$Builder;->copyOnWrite()V

    .line 401
    iget-object v0, p0, Lcom/google/api/Backend$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Backend;

    invoke-static {v0, p1}, Lcom/google/api/Backend;->access$400(Lcom/google/api/Backend;Ljava/lang/Iterable;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public addRules(ILcom/google/api/BackendRule$Builder;)Lcom/google/api/Backend$Builder;
    .locals 1

    .line 385
    invoke-virtual {p0}, Lcom/google/api/Backend$Builder;->copyOnWrite()V

    .line 386
    iget-object v0, p0, Lcom/google/api/Backend$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Backend;

    .line 387
    invoke-virtual {p2}, Lcom/google/api/BackendRule$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Lcom/google/api/BackendRule;

    .line 386
    invoke-static {v0, p1, p2}, Lcom/google/api/Backend;->access$300(Lcom/google/api/Backend;ILcom/google/api/BackendRule;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public addRules(ILcom/google/api/BackendRule;)Lcom/google/api/Backend$Builder;
    .locals 1

    .line 357
    invoke-virtual {p0}, Lcom/google/api/Backend$Builder;->copyOnWrite()V

    .line 358
    iget-object v0, p0, Lcom/google/api/Backend$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Backend;

    invoke-static {v0, p1, p2}, Lcom/google/api/Backend;->access$300(Lcom/google/api/Backend;ILcom/google/api/BackendRule;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public addRules(Lcom/google/api/BackendRule$Builder;)Lcom/google/api/Backend$Builder;
    .locals 1

    .line 371
    invoke-virtual {p0}, Lcom/google/api/Backend$Builder;->copyOnWrite()V

    .line 372
    iget-object v0, p0, Lcom/google/api/Backend$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Backend;

    invoke-virtual {p1}, Lcom/google/api/BackendRule$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/api/BackendRule;

    invoke-static {v0, p1}, Lcom/google/api/Backend;->access$200(Lcom/google/api/Backend;Lcom/google/api/BackendRule;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public addRules(Lcom/google/api/BackendRule;)Lcom/google/api/Backend$Builder;
    .locals 1

    .line 343
    invoke-virtual {p0}, Lcom/google/api/Backend$Builder;->copyOnWrite()V

    .line 344
    iget-object v0, p0, Lcom/google/api/Backend$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Backend;

    invoke-static {v0, p1}, Lcom/google/api/Backend;->access$200(Lcom/google/api/Backend;Lcom/google/api/BackendRule;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public clearRules()Lcom/google/api/Backend$Builder;
    .locals 1

    .line 413
    invoke-virtual {p0}, Lcom/google/api/Backend$Builder;->copyOnWrite()V

    .line 414
    iget-object v0, p0, Lcom/google/api/Backend$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Backend;

    invoke-static {v0}, Lcom/google/api/Backend;->access$500(Lcom/google/api/Backend;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public getRules(I)Lcom/google/api/BackendRule;
    .locals 1

    .line 303
    iget-object v0, p0, Lcom/google/api/Backend$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Backend;

    invoke-virtual {v0, p1}, Lcom/google/api/Backend;->getRules(I)Lcom/google/api/BackendRule;

    move-result-object p1

    return-object p1

    nop

    .array-data 1
    .end array-data
.end method

.method public getRulesCount()I
    .locals 1

    .line 292
    iget-object v0, p0, Lcom/google/api/Backend$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Backend;

    invoke-virtual {v0}, Lcom/google/api/Backend;->getRulesCount()I

    move-result v0

    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getRulesList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/api/BackendRule;",
            ">;"
        }
    .end annotation

    .line 279
    iget-object v0, p0, Lcom/google/api/Backend$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Backend;

    .line 280
    invoke-virtual {v0}, Lcom/google/api/Backend;->getRulesList()Ljava/util/List;

    move-result-object v0

    .line 279
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public removeRules(I)Lcom/google/api/Backend$Builder;
    .locals 1

    .line 426
    invoke-virtual {p0}, Lcom/google/api/Backend$Builder;->copyOnWrite()V

    .line 427
    iget-object v0, p0, Lcom/google/api/Backend$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Backend;

    invoke-static {v0, p1}, Lcom/google/api/Backend;->access$600(Lcom/google/api/Backend;I)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public setRules(ILcom/google/api/BackendRule$Builder;)Lcom/google/api/Backend$Builder;
    .locals 1

    .line 329
    invoke-virtual {p0}, Lcom/google/api/Backend$Builder;->copyOnWrite()V

    .line 330
    iget-object v0, p0, Lcom/google/api/Backend$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Backend;

    .line 331
    invoke-virtual {p2}, Lcom/google/api/BackendRule$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Lcom/google/api/BackendRule;

    .line 330
    invoke-static {v0, p1, p2}, Lcom/google/api/Backend;->access$100(Lcom/google/api/Backend;ILcom/google/api/BackendRule;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public setRules(ILcom/google/api/BackendRule;)Lcom/google/api/Backend$Builder;
    .locals 1

    .line 315
    invoke-virtual {p0}, Lcom/google/api/Backend$Builder;->copyOnWrite()V

    .line 316
    iget-object v0, p0, Lcom/google/api/Backend$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Backend;

    invoke-static {v0, p1, p2}, Lcom/google/api/Backend;->access$100(Lcom/google/api/Backend;ILcom/google/api/BackendRule;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method
