.class public final Lcom/google/protobuf/DescriptorProtos$FileDescriptorSet$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "DescriptorProtos.java"

# interfaces
.implements Lcom/google/protobuf/DescriptorProtos$FileDescriptorSetOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/DescriptorProtos$FileDescriptorSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/google/protobuf/DescriptorProtos$FileDescriptorSet;",
        "Lcom/google/protobuf/DescriptorProtos$FileDescriptorSet$Builder;",
        ">;",
        "Lcom/google/protobuf/DescriptorProtos$FileDescriptorSetOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 235
    invoke-static {}, Lcom/google/protobuf/DescriptorProtos$FileDescriptorSet;->access$000()Lcom/google/protobuf/DescriptorProtos$FileDescriptorSet;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/DescriptorProtos$1;)V
    .locals 0

    .line 228
    invoke-direct {p0}, Lcom/google/protobuf/DescriptorProtos$FileDescriptorSet$Builder;-><init>()V

    return-void

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public addAllFile(Ljava/lang/Iterable;)Lcom/google/protobuf/DescriptorProtos$FileDescriptorSet$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;",
            ">;)",
            "Lcom/google/protobuf/DescriptorProtos$FileDescriptorSet$Builder;"
        }
    .end annotation

    .line 320
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FileDescriptorSet$Builder;->copyOnWrite()V

    .line 321
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileDescriptorSet$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$FileDescriptorSet;

    invoke-static {v0, p1}, Lcom/google/protobuf/DescriptorProtos$FileDescriptorSet;->access$400(Lcom/google/protobuf/DescriptorProtos$FileDescriptorSet;Ljava/lang/Iterable;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public addFile(ILcom/google/protobuf/DescriptorProtos$FileDescriptorProto$Builder;)Lcom/google/protobuf/DescriptorProtos$FileDescriptorSet$Builder;
    .locals 1

    .line 310
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FileDescriptorSet$Builder;->copyOnWrite()V

    .line 311
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileDescriptorSet$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$FileDescriptorSet;

    .line 312
    invoke-virtual {p2}, Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;

    .line 311
    invoke-static {v0, p1, p2}, Lcom/google/protobuf/DescriptorProtos$FileDescriptorSet;->access$300(Lcom/google/protobuf/DescriptorProtos$FileDescriptorSet;ILcom/google/protobuf/DescriptorProtos$FileDescriptorProto;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public addFile(ILcom/google/protobuf/DescriptorProtos$FileDescriptorProto;)Lcom/google/protobuf/DescriptorProtos$FileDescriptorSet$Builder;
    .locals 1

    .line 292
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FileDescriptorSet$Builder;->copyOnWrite()V

    .line 293
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileDescriptorSet$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$FileDescriptorSet;

    invoke-static {v0, p1, p2}, Lcom/google/protobuf/DescriptorProtos$FileDescriptorSet;->access$300(Lcom/google/protobuf/DescriptorProtos$FileDescriptorSet;ILcom/google/protobuf/DescriptorProtos$FileDescriptorProto;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public addFile(Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto$Builder;)Lcom/google/protobuf/DescriptorProtos$FileDescriptorSet$Builder;
    .locals 1

    .line 301
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FileDescriptorSet$Builder;->copyOnWrite()V

    .line 302
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileDescriptorSet$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$FileDescriptorSet;

    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;

    invoke-static {v0, p1}, Lcom/google/protobuf/DescriptorProtos$FileDescriptorSet;->access$200(Lcom/google/protobuf/DescriptorProtos$FileDescriptorSet;Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public addFile(Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;)Lcom/google/protobuf/DescriptorProtos$FileDescriptorSet$Builder;
    .locals 1

    .line 283
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FileDescriptorSet$Builder;->copyOnWrite()V

    .line 284
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileDescriptorSet$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$FileDescriptorSet;

    invoke-static {v0, p1}, Lcom/google/protobuf/DescriptorProtos$FileDescriptorSet;->access$200(Lcom/google/protobuf/DescriptorProtos$FileDescriptorSet;Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public clearFile()Lcom/google/protobuf/DescriptorProtos$FileDescriptorSet$Builder;
    .locals 1

    .line 328
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FileDescriptorSet$Builder;->copyOnWrite()V

    .line 329
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileDescriptorSet$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$FileDescriptorSet;

    invoke-static {v0}, Lcom/google/protobuf/DescriptorProtos$FileDescriptorSet;->access$500(Lcom/google/protobuf/DescriptorProtos$FileDescriptorSet;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public getFile(I)Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;
    .locals 1

    .line 258
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileDescriptorSet$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$FileDescriptorSet;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/DescriptorProtos$FileDescriptorSet;->getFile(I)Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;

    move-result-object p1

    return-object p1

    nop

    .array-data 1
    .end array-data
.end method

.method public getFileCount()I
    .locals 1

    .line 252
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileDescriptorSet$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$FileDescriptorSet;

    invoke-virtual {v0}, Lcom/google/protobuf/DescriptorProtos$FileDescriptorSet;->getFileCount()I

    move-result v0

    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getFileList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;",
            ">;"
        }
    .end annotation

    .line 244
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileDescriptorSet$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$FileDescriptorSet;

    .line 245
    invoke-virtual {v0}, Lcom/google/protobuf/DescriptorProtos$FileDescriptorSet;->getFileList()Ljava/util/List;

    move-result-object v0

    .line 244
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public removeFile(I)Lcom/google/protobuf/DescriptorProtos$FileDescriptorSet$Builder;
    .locals 1

    .line 336
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FileDescriptorSet$Builder;->copyOnWrite()V

    .line 337
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileDescriptorSet$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$FileDescriptorSet;

    invoke-static {v0, p1}, Lcom/google/protobuf/DescriptorProtos$FileDescriptorSet;->access$600(Lcom/google/protobuf/DescriptorProtos$FileDescriptorSet;I)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public setFile(ILcom/google/protobuf/DescriptorProtos$FileDescriptorProto$Builder;)Lcom/google/protobuf/DescriptorProtos$FileDescriptorSet$Builder;
    .locals 1

    .line 274
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FileDescriptorSet$Builder;->copyOnWrite()V

    .line 275
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileDescriptorSet$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$FileDescriptorSet;

    .line 276
    invoke-virtual {p2}, Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;

    .line 275
    invoke-static {v0, p1, p2}, Lcom/google/protobuf/DescriptorProtos$FileDescriptorSet;->access$100(Lcom/google/protobuf/DescriptorProtos$FileDescriptorSet;ILcom/google/protobuf/DescriptorProtos$FileDescriptorProto;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public setFile(ILcom/google/protobuf/DescriptorProtos$FileDescriptorProto;)Lcom/google/protobuf/DescriptorProtos$FileDescriptorSet$Builder;
    .locals 1

    .line 265
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FileDescriptorSet$Builder;->copyOnWrite()V

    .line 266
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileDescriptorSet$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$FileDescriptorSet;

    invoke-static {v0, p1, p2}, Lcom/google/protobuf/DescriptorProtos$FileDescriptorSet;->access$100(Lcom/google/protobuf/DescriptorProtos$FileDescriptorSet;ILcom/google/protobuf/DescriptorProtos$FileDescriptorProto;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method
