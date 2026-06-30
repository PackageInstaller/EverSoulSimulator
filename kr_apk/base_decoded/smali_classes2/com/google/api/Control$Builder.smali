.class public final Lcom/google/api/Control$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Control.java"

# interfaces
.implements Lcom/google/api/ControlOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/api/Control;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/google/api/Control;",
        "Lcom/google/api/Control$Builder;",
        ">;",
        "Lcom/google/api/ControlOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 192
    invoke-static {}, Lcom/google/api/Control;->access$000()Lcom/google/api/Control;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method synthetic constructor <init>(Lcom/google/api/Control$1;)V
    .locals 0

    .line 185
    invoke-direct {p0}, Lcom/google/api/Control$Builder;-><init>()V

    return-void

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public clearEnvironment()Lcom/google/api/Control$Builder;
    .locals 1

    .line 249
    invoke-virtual {p0}, Lcom/google/api/Control$Builder;->copyOnWrite()V

    .line 250
    iget-object v0, p0, Lcom/google/api/Control$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Control;

    invoke-static {v0}, Lcom/google/api/Control;->access$200(Lcom/google/api/Control;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public getEnvironment()Ljava/lang/String;
    .locals 1

    .line 207
    iget-object v0, p0, Lcom/google/api/Control$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Control;

    invoke-virtual {v0}, Lcom/google/api/Control;->getEnvironment()Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getEnvironmentBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 221
    iget-object v0, p0, Lcom/google/api/Control$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Control;

    invoke-virtual {v0}, Lcom/google/api/Control;->getEnvironmentBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public setEnvironment(Ljava/lang/String;)Lcom/google/api/Control$Builder;
    .locals 1

    .line 235
    invoke-virtual {p0}, Lcom/google/api/Control$Builder;->copyOnWrite()V

    .line 236
    iget-object v0, p0, Lcom/google/api/Control$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Control;

    invoke-static {v0, p1}, Lcom/google/api/Control;->access$100(Lcom/google/api/Control;Ljava/lang/String;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public setEnvironmentBytes(Lcom/google/protobuf/ByteString;)Lcom/google/api/Control$Builder;
    .locals 1

    .line 265
    invoke-virtual {p0}, Lcom/google/api/Control$Builder;->copyOnWrite()V

    .line 266
    iget-object v0, p0, Lcom/google/api/Control$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Control;

    invoke-static {v0, p1}, Lcom/google/api/Control;->access$300(Lcom/google/api/Control;Lcom/google/protobuf/ByteString;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method
