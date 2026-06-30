.class public final enum Lcom/bumptech/glide/load/EncodeStrategy;
.super Ljava/lang/Enum;
.source "EncodeStrategy.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/bumptech/glide/load/EncodeStrategy;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/bumptech/glide/load/EncodeStrategy;

.field public static final enum NONE:Lcom/bumptech/glide/load/EncodeStrategy;

.field public static final enum SOURCE:Lcom/bumptech/glide/load/EncodeStrategy;

.field public static final enum TRANSFORMED:Lcom/bumptech/glide/load/EncodeStrategy;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 119
    new-instance v0, Lcom/bumptech/glide/load/EncodeStrategy;

    const v1, -0x451c9077

    invoke-static {v1}, Lcom/liapp/y;->ڳݬ٬ۮݪ(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/bumptech/glide/load/EncodeStrategy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/bumptech/glide/load/EncodeStrategy;->SOURCE:Lcom/bumptech/glide/load/EncodeStrategy;

    .line 149
    new-instance v1, Lcom/bumptech/glide/load/EncodeStrategy;

    const v3, 0x33675b43

    invoke-static {v3}, Lcom/liapp/y;->ׯ״ٲ֬ب(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/bumptech/glide/load/EncodeStrategy;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/bumptech/glide/load/EncodeStrategy;->TRANSFORMED:Lcom/bumptech/glide/load/EncodeStrategy;

    .line 179
    new-instance v3, Lcom/bumptech/glide/load/EncodeStrategy;

    const v5, -0x2247369c

    invoke-static {v5}, Lcom/liapp/y;->״دش۲ݮ(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/bumptech/glide/load/EncodeStrategy;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/bumptech/glide/load/EncodeStrategy;->NONE:Lcom/bumptech/glide/load/EncodeStrategy;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/bumptech/glide/load/EncodeStrategy;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 69
    sput-object v5, Lcom/bumptech/glide/load/EncodeStrategy;->$VALUES:[Lcom/bumptech/glide/load/EncodeStrategy;

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 69
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void

    .array-data 1
    .end array-data
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/bumptech/glide/load/EncodeStrategy;
    .locals 1

    .line 69
    const-class v0, Lcom/bumptech/glide/load/EncodeStrategy;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/bumptech/glide/load/EncodeStrategy;

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static values()[Lcom/bumptech/glide/load/EncodeStrategy;
    .locals 1

    .line 69
    sget-object v0, Lcom/bumptech/glide/load/EncodeStrategy;->$VALUES:[Lcom/bumptech/glide/load/EncodeStrategy;

    invoke-virtual {v0}, [Lcom/bumptech/glide/load/EncodeStrategy;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/bumptech/glide/load/EncodeStrategy;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method
