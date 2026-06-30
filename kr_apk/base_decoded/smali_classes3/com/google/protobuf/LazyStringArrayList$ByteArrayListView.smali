.class Lcom/google/protobuf/LazyStringArrayList$ByteArrayListView;
.super Ljava/util/AbstractList;
.source "LazyStringArrayList.java"

# interfaces
.implements Ljava/util/RandomAccess;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/LazyStringArrayList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ByteArrayListView"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractList<",
        "[B>;",
        "Ljava/util/RandomAccess;"
    }
.end annotation


# instance fields
.field private final list:Lcom/google/protobuf/LazyStringArrayList;


# direct methods
.method constructor <init>(Lcom/google/protobuf/LazyStringArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "list"
        }
    .end annotation

    .line 312
    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    .line 313
    iput-object p1, p0, Lcom/google/protobuf/LazyStringArrayList$ByteArrayListView;->list:Lcom/google/protobuf/LazyStringArrayList;

    return-void

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public bridge synthetic add(ILjava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "index",
            "s"
        }
    .end annotation

    .line 309
    check-cast p2, [B

    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/LazyStringArrayList$ByteArrayListView;->add(I[B)V

    return-void

    .array-data 1
    .end array-data
.end method

.method public add(I[B)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "index",
            "s"
        }
    .end annotation

    .line 335
    iget-object v0, p0, Lcom/google/protobuf/LazyStringArrayList$ByteArrayListView;->list:Lcom/google/protobuf/LazyStringArrayList;

    invoke-static {v0, p1, p2}, Lcom/google/protobuf/LazyStringArrayList;->access$200(Lcom/google/protobuf/LazyStringArrayList;I[B)V

    .line 336
    iget p1, p0, Lcom/google/protobuf/LazyStringArrayList$ByteArrayListView;->modCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/protobuf/LazyStringArrayList$ByteArrayListView;->modCount:I

    return-void

    .array-data 1
    .end array-data
.end method

.method public bridge synthetic get(I)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "index"
        }
    .end annotation

    .line 309
    invoke-virtual {p0, p1}, Lcom/google/protobuf/LazyStringArrayList$ByteArrayListView;->get(I)[B

    move-result-object p1

    return-object p1

    nop

    .array-data 1
    .end array-data
.end method

.method public get(I)[B
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 318
    iget-object v0, p0, Lcom/google/protobuf/LazyStringArrayList$ByteArrayListView;->list:Lcom/google/protobuf/LazyStringArrayList;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/LazyStringArrayList;->getByteArray(I)[B

    move-result-object p1

    return-object p1

    nop

    .array-data 1
    .end array-data
.end method

.method public bridge synthetic remove(I)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "index"
        }
    .end annotation

    .line 309
    invoke-virtual {p0, p1}, Lcom/google/protobuf/LazyStringArrayList$ByteArrayListView;->remove(I)[B

    move-result-object p1

    return-object p1

    nop

    .array-data 1
    .end array-data
.end method

.method public remove(I)[B
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 341
    iget-object v0, p0, Lcom/google/protobuf/LazyStringArrayList$ByteArrayListView;->list:Lcom/google/protobuf/LazyStringArrayList;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/LazyStringArrayList;->remove(I)Ljava/lang/String;

    move-result-object p1

    .line 342
    iget v0, p0, Lcom/google/protobuf/LazyStringArrayList$ByteArrayListView;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/protobuf/LazyStringArrayList$ByteArrayListView;->modCount:I

    .line 343
    invoke-static {p1}, Lcom/google/protobuf/LazyStringArrayList;->access$100(Ljava/lang/Object;)[B

    move-result-object p1

    return-object p1

    nop

    .array-data 1
    .end array-data
.end method

.method public bridge synthetic set(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "index",
            "s"
        }
    .end annotation

    .line 309
    check-cast p2, [B

    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/LazyStringArrayList$ByteArrayListView;->set(I[B)[B

    move-result-object p1

    return-object p1

    nop

    .array-data 1
    .end array-data
.end method

.method public set(I[B)[B
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "index",
            "s"
        }
    .end annotation

    .line 328
    iget-object v0, p0, Lcom/google/protobuf/LazyStringArrayList$ByteArrayListView;->list:Lcom/google/protobuf/LazyStringArrayList;

    invoke-static {v0, p1, p2}, Lcom/google/protobuf/LazyStringArrayList;->access$000(Lcom/google/protobuf/LazyStringArrayList;I[B)Ljava/lang/Object;

    move-result-object p1

    .line 329
    iget p2, p0, Lcom/google/protobuf/LazyStringArrayList$ByteArrayListView;->modCount:I

    add-int/lit8 p2, p2, 0x1

    iput p2, p0, Lcom/google/protobuf/LazyStringArrayList$ByteArrayListView;->modCount:I

    .line 330
    invoke-static {p1}, Lcom/google/protobuf/LazyStringArrayList;->access$100(Ljava/lang/Object;)[B

    move-result-object p1

    return-object p1

    nop

    .array-data 1
    .end array-data
.end method

.method public size()I
    .locals 1

    .line 323
    iget-object v0, p0, Lcom/google/protobuf/LazyStringArrayList$ByteArrayListView;->list:Lcom/google/protobuf/LazyStringArrayList;

    invoke-virtual {v0}, Lcom/google/protobuf/LazyStringArrayList;->size()I

    move-result v0

    return v0

    nop

    .array-data 1
    .end array-data
.end method
