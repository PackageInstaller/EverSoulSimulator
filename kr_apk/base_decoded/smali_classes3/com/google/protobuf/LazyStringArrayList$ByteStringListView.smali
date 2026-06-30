.class Lcom/google/protobuf/LazyStringArrayList$ByteStringListView;
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
    name = "ByteStringListView"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractList<",
        "Lcom/google/protobuf/ByteString;",
        ">;",
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

    .line 355
    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    .line 356
    iput-object p1, p0, Lcom/google/protobuf/LazyStringArrayList$ByteStringListView;->list:Lcom/google/protobuf/LazyStringArrayList;

    return-void

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public add(ILcom/google/protobuf/ByteString;)V
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

    .line 378
    iget-object v0, p0, Lcom/google/protobuf/LazyStringArrayList$ByteStringListView;->list:Lcom/google/protobuf/LazyStringArrayList;

    invoke-static {v0, p1, p2}, Lcom/google/protobuf/LazyStringArrayList;->access$500(Lcom/google/protobuf/LazyStringArrayList;ILcom/google/protobuf/ByteString;)V

    .line 379
    iget p1, p0, Lcom/google/protobuf/LazyStringArrayList$ByteStringListView;->modCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/protobuf/LazyStringArrayList$ByteStringListView;->modCount:I

    return-void

    .array-data 1
    .end array-data
.end method

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

    .line 352
    check-cast p2, Lcom/google/protobuf/ByteString;

    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/LazyStringArrayList$ByteStringListView;->add(ILcom/google/protobuf/ByteString;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method public get(I)Lcom/google/protobuf/ByteString;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 361
    iget-object v0, p0, Lcom/google/protobuf/LazyStringArrayList$ByteStringListView;->list:Lcom/google/protobuf/LazyStringArrayList;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/LazyStringArrayList;->getByteString(I)Lcom/google/protobuf/ByteString;

    move-result-object p1

    return-object p1

    nop

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

    .line 352
    invoke-virtual {p0, p1}, Lcom/google/protobuf/LazyStringArrayList$ByteStringListView;->get(I)Lcom/google/protobuf/ByteString;

    move-result-object p1

    return-object p1

    nop

    .array-data 1
    .end array-data
.end method

.method public remove(I)Lcom/google/protobuf/ByteString;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 384
    iget-object v0, p0, Lcom/google/protobuf/LazyStringArrayList$ByteStringListView;->list:Lcom/google/protobuf/LazyStringArrayList;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/LazyStringArrayList;->remove(I)Ljava/lang/String;

    move-result-object p1

    .line 385
    iget v0, p0, Lcom/google/protobuf/LazyStringArrayList$ByteStringListView;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/protobuf/LazyStringArrayList$ByteStringListView;->modCount:I

    .line 386
    invoke-static {p1}, Lcom/google/protobuf/LazyStringArrayList;->access$400(Ljava/lang/Object;)Lcom/google/protobuf/ByteString;

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

    .line 352
    invoke-virtual {p0, p1}, Lcom/google/protobuf/LazyStringArrayList$ByteStringListView;->remove(I)Lcom/google/protobuf/ByteString;

    move-result-object p1

    return-object p1

    nop

    .array-data 1
    .end array-data
.end method

.method public set(ILcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;
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

    .line 371
    iget-object v0, p0, Lcom/google/protobuf/LazyStringArrayList$ByteStringListView;->list:Lcom/google/protobuf/LazyStringArrayList;

    invoke-static {v0, p1, p2}, Lcom/google/protobuf/LazyStringArrayList;->access$300(Lcom/google/protobuf/LazyStringArrayList;ILcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p1

    .line 372
    iget p2, p0, Lcom/google/protobuf/LazyStringArrayList$ByteStringListView;->modCount:I

    add-int/lit8 p2, p2, 0x1

    iput p2, p0, Lcom/google/protobuf/LazyStringArrayList$ByteStringListView;->modCount:I

    .line 373
    invoke-static {p1}, Lcom/google/protobuf/LazyStringArrayList;->access$400(Ljava/lang/Object;)Lcom/google/protobuf/ByteString;

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

    .line 352
    check-cast p2, Lcom/google/protobuf/ByteString;

    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/LazyStringArrayList$ByteStringListView;->set(ILcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;

    move-result-object p1

    return-object p1

    nop

    .array-data 1
    .end array-data
.end method

.method public size()I
    .locals 1

    .line 366
    iget-object v0, p0, Lcom/google/protobuf/LazyStringArrayList$ByteStringListView;->list:Lcom/google/protobuf/LazyStringArrayList;

    invoke-virtual {v0}, Lcom/google/protobuf/LazyStringArrayList;->size()I

    move-result v0

    return v0

    nop

    .array-data 1
    .end array-data
.end method
