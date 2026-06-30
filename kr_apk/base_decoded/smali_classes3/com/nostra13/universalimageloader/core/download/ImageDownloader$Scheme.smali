.class public final enum Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;
.super Ljava/lang/Enum;
.source "ImageDownloader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nostra13/universalimageloader/core/download/ImageDownloader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Scheme"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;

.field public static final enum ASSETS:Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;

.field public static final enum CONTENT:Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;

.field public static final enum DRAWABLE:Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;

.field public static final enum FILE:Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;

.field public static final enum HTTP:Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;

.field public static final enum HTTPS:Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;

.field public static final enum UNKNOWN:Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;


# instance fields
.field private scheme:Ljava/lang/String;

.field private uriPrefix:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 469
    new-instance v0, Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;

    const v1, 0x5d145a37

    invoke-static {v1}, Lcom/liapp/y;->ڴݮگ֮ت(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x54302bfa

    invoke-static {v2}, Lcom/liapp/y;->׳ֳֳ֬د(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;->HTTP:Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;

    new-instance v1, Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;

    const v2, 0x543d7102

    invoke-static {v2}, Lcom/liapp/y;->׳ֳֳ֬د(I)Ljava/lang/String;

    move-result-object v2

    const v4, 0x5d1900cf

    invoke-static {v4}, Lcom/liapp/y;->ڴݮگ֮ت(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    invoke-direct {v1, v4, v5, v2}, Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;->HTTPS:Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;

    new-instance v2, Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;

    const v4, 0x5d144a4f    # 6.6784E17f

    invoke-static {v4}, Lcom/liapp/y;->ڴݮگ֮ت(I)Ljava/lang/String;

    move-result-object v4

    const v6, -0x224be0b4

    invoke-static {v6}, Lcom/liapp/y;->״دش۲ݮ(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x2

    invoke-direct {v2, v6, v7, v4}, Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;->FILE:Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;

    new-instance v4, Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;

    const v6, 0x2250096e

    invoke-static {v6}, Lcom/liapp/y;->ֲֳگܱޭ(I)Ljava/lang/String;

    move-result-object v6

    const v8, 0x225c23d6

    invoke-static {v8}, Lcom/liapp/y;->ֲֳگܱޭ(I)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x3

    invoke-direct {v4, v8, v9, v6}, Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;->CONTENT:Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;

    new-instance v6, Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;

    const v8, 0x7d792af5    # 2.0700051E37f

    invoke-static {v8}, Lcom/liapp/y;->حֲݴܳޯ(I)Ljava/lang/String;

    move-result-object v8

    const v10, 0x336b8e5b

    invoke-static {v10}, Lcom/liapp/y;->ׯ״ٲ֬ب(I)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x4

    invoke-direct {v6, v10, v11, v8}, Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v6, Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;->ASSETS:Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;

    new-instance v8, Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;

    const v10, -0x2241e034

    invoke-static {v10}, Lcom/liapp/y;->״دش۲ݮ(I)Ljava/lang/String;

    move-result-object v10

    const v12, -0x451045ef

    invoke-static {v12}, Lcom/liapp/y;->ڳݬ٬ۮݪ(I)Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x5

    invoke-direct {v8, v12, v13, v10}, Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v8, Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;->DRAWABLE:Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;

    new-instance v10, Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;

    const-string v12, ""

    const v14, 0x33675e43

    invoke-static {v14}, Lcom/liapp/y;->ׯ״ٲ֬ب(I)Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x6

    invoke-direct {v10, v14, v15, v12}, Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v10, Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;->UNKNOWN:Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;

    const/4 v12, 0x7

    new-array v12, v12, [Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;

    aput-object v0, v12, v3

    aput-object v1, v12, v5

    aput-object v2, v12, v7

    aput-object v4, v12, v9

    aput-object v6, v12, v11

    aput-object v8, v12, v13

    aput-object v10, v12, v15

    .line 459
    sput-object v12, Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;->$VALUES:[Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 519
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 529
    iput-object p3, p0, Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;->scheme:Ljava/lang/String;

    .line 539
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "://"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;->uriPrefix:Ljava/lang/String;

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method private belongsTo(Ljava/lang/String;)Z
    .locals 1

    .line 749
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;->uriPrefix:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    return p1

    nop

    .array-data 1
    .end array-data
.end method

.method public static ofUri(Ljava/lang/String;)Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;
    .locals 5

    if-eqz p0, :cond_1

    .line 649
    invoke-static {}, Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;->values()[Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 659
    invoke-direct {v3, p0}, Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;->belongsTo(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 709
    :cond_1
    sget-object p0, Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;->UNKNOWN:Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;
    .locals 1

    .line 459
    const-class v0, Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static values()[Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;
    .locals 1

    .line 459
    sget-object v0, Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;->$VALUES:[Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;

    invoke-virtual {v0}, [Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public crop(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 849
    invoke-direct {p0, p1}, Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;->belongsTo(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 879
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;->uriPrefix:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 859
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 p1, 0x1

    iget-object v2, p0, Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;->scheme:Ljava/lang/String;

    aput-object v2, v1, p1

    const-string p1, "URI [%1$s] doesn\'t have expected scheme [%2$s]"

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .array-data 1
    .end array-data
.end method

.method public wrap(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 799
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;->uriPrefix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .array-data 1
    .end array-data
.end method
