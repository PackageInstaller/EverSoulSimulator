.class public abstract Lcom/bumptech/glide/request/target/CustomTarget;
.super Ljava/lang/Object;
.source "CustomTarget.java"

# interfaces
.implements Lcom/bumptech/glide/request/target/Target;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/request/target/Target<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final height:I

.field private request:Lcom/bumptech/glide/request/Request;

.field private final width:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const/high16 v0, -0x80000000

    .line 549
    invoke-direct {p0, v0, v0}, Lcom/bumptech/glide/request/target/CustomTarget;-><init>(II)V

    return-void

    .array-data 1
    .end array-data
.end method

.method public constructor <init>(II)V
    .locals 3

    .line 669
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 679
    invoke-static {p1, p2}, Lcom/bumptech/glide/util/Util;->isValidDimensions(II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 769
    iput p1, p0, Lcom/bumptech/glide/request/target/CustomTarget;->width:I

    .line 779
    iput p2, p0, Lcom/bumptech/glide/request/target/CustomTarget;->height:I

    return-void

    .line 689
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const v2, 0x6d0b2cd0

    invoke-static {v2}, Lcom/liapp/y;->ٱڳܴڭܩ(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const v1, 0x543e31ea

    invoke-static {v1}, Lcom/liapp/y;->׳ֳֳ֬د(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public final getRequest()Lcom/bumptech/glide/request/Request;
    .locals 1

    .line 1239
    iget-object v0, p0, Lcom/bumptech/glide/request/target/CustomTarget;->request:Lcom/bumptech/glide/request/Request;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final getSize(Lcom/bumptech/glide/request/target/SizeReadyCallback;)V
    .locals 2

    .line 1079
    iget v0, p0, Lcom/bumptech/glide/request/target/CustomTarget;->width:I

    iget v1, p0, Lcom/bumptech/glide/request/target/CustomTarget;->height:I

    invoke-interface {p1, v0, v1}, Lcom/bumptech/glide/request/target/SizeReadyCallback;->onSizeReady(II)V

    return-void

    .array-data 1
    .end array-data
.end method

.method public onDestroy()V
    .locals 0

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public onLoadFailed(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public onLoadStarted(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public onStart()V
    .locals 0

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public onStop()V
    .locals 0

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public final removeCallback(Lcom/bumptech/glide/request/target/SizeReadyCallback;)V
    .locals 0

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public final setRequest(Lcom/bumptech/glide/request/Request;)V
    .locals 0

    .line 1179
    iput-object p1, p0, Lcom/bumptech/glide/request/target/CustomTarget;->request:Lcom/bumptech/glide/request/Request;

    return-void

    nop

    .array-data 1
    .end array-data
.end method
