.class public Lcom/bumptech/glide/gifdecoder/GifHeader;
.super Ljava/lang/Object;
.source "GifHeader.java"


# static fields
.field public static final NETSCAPE_LOOP_COUNT_DOES_NOT_EXIST:I = -0x1

.field public static final NETSCAPE_LOOP_COUNT_FOREVER:I


# instance fields
.field bgColor:I

.field bgIndex:I

.field currentFrame:Lcom/bumptech/glide/gifdecoder/GifFrame;

.field frameCount:I

.field final frames:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/bumptech/glide/gifdecoder/GifFrame;",
            ">;"
        }
    .end annotation
.end field

.field gct:[I

.field gctFlag:Z

.field gctSize:I

.field height:I

.field loopCount:I

.field pixelAspect:I

.field status:I

.field width:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 159
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 229
    iput-object v0, p0, Lcom/bumptech/glide/gifdecoder/GifHeader;->gct:[I

    const/4 v0, 0x0

    .line 249
    iput v0, p0, Lcom/bumptech/glide/gifdecoder/GifHeader;->status:I

    .line 269
    iput v0, p0, Lcom/bumptech/glide/gifdecoder/GifHeader;->frameCount:I

    .line 299
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/gifdecoder/GifHeader;->frames:Ljava/util/List;

    const/4 v0, -0x1

    .line 519
    iput v0, p0, Lcom/bumptech/glide/gifdecoder/GifHeader;->loopCount:I

    return-void

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public getHeight()I
    .locals 1

    .line 549
    iget v0, p0, Lcom/bumptech/glide/gifdecoder/GifHeader;->height:I

    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getNumFrames()I
    .locals 1

    .line 629
    iget v0, p0, Lcom/bumptech/glide/gifdecoder/GifHeader;->frameCount:I

    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getStatus()I
    .locals 1

    .line 709
    iget v0, p0, Lcom/bumptech/glide/gifdecoder/GifHeader;->status:I

    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getWidth()I
    .locals 1

    .line 589
    iget v0, p0, Lcom/bumptech/glide/gifdecoder/GifHeader;->width:I

    return v0

    nop

    .array-data 1
    .end array-data
.end method
