.class public final Lcom/bumptech/glide/load/engine/bitmap_recycle/IntegerArrayAdapter;
.super Ljava/lang/Object;
.source "IntegerArrayAdapter.java"

# interfaces
.implements Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayAdapterInterface;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayAdapterInterface<",
        "[I>;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "IntegerArrayPool"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public bridge synthetic getArrayLength(Ljava/lang/Object;)I
    .locals 0

    .line 49
    check-cast p1, [I

    invoke-virtual {p0, p1}, Lcom/bumptech/glide/load/engine/bitmap_recycle/IntegerArrayAdapter;->getArrayLength([I)I

    move-result p1

    return p1

    nop

    .array-data 1
    .end array-data
.end method

.method public getArrayLength([I)I
    .locals 0

    .line 159
    array-length p1, p1

    return p1

    .array-data 1
    .end array-data
.end method

.method public getElementSizeInBytes()I
    .locals 1

    const/4 v0, 0x4

    return v0

    .array-data 1
    .end array-data
.end method

.method public getTag()Ljava/lang/String;
    .locals 1

    const v0, 0x336693bb

    invoke-static {v0}, Lcom/liapp/y;->ׯ״ٲ֬ب(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .array-data 1
    .end array-data
.end method

.method public bridge synthetic newArray(I)Ljava/lang/Object;
    .locals 0

    .line 49
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/load/engine/bitmap_recycle/IntegerArrayAdapter;->newArray(I)[I

    move-result-object p1

    return-object p1

    nop

    .array-data 1
    .end array-data
.end method

.method public newArray(I)[I
    .locals 0

    .line 209
    new-array p1, p1, [I

    return-object p1

    nop

    .array-data 1
    .end array-data
.end method
