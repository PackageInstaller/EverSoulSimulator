.class final enum Lcom/bumptech/glide/load/engine/DecodeJob$Stage;
.super Ljava/lang/Enum;
.source "DecodeJob.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/engine/DecodeJob;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "Stage"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/bumptech/glide/load/engine/DecodeJob$Stage;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/bumptech/glide/load/engine/DecodeJob$Stage;

.field public static final enum DATA_CACHE:Lcom/bumptech/glide/load/engine/DecodeJob$Stage;

.field public static final enum ENCODE:Lcom/bumptech/glide/load/engine/DecodeJob$Stage;

.field public static final enum FINISHED:Lcom/bumptech/glide/load/engine/DecodeJob$Stage;

.field public static final enum INITIALIZE:Lcom/bumptech/glide/load/engine/DecodeJob$Stage;

.field public static final enum RESOURCE_CACHE:Lcom/bumptech/glide/load/engine/DecodeJob$Stage;

.field public static final enum SOURCE:Lcom/bumptech/glide/load/engine/DecodeJob$Stage;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .line 7409
    new-instance v0, Lcom/bumptech/glide/load/engine/DecodeJob$Stage;

    const v1, 0x2250d12e    # 2.8299995E-18f

    invoke-static {v1}, Lcom/liapp/y;->ֲֳگܱޭ(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/bumptech/glide/load/engine/DecodeJob$Stage;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/bumptech/glide/load/engine/DecodeJob$Stage;->INITIALIZE:Lcom/bumptech/glide/load/engine/DecodeJob$Stage;

    .line 7429
    new-instance v1, Lcom/bumptech/glide/load/engine/DecodeJob$Stage;

    const v3, -0x224713f4

    invoke-static {v3}, Lcom/liapp/y;->״دش۲ݮ(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/bumptech/glide/load/engine/DecodeJob$Stage;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/bumptech/glide/load/engine/DecodeJob$Stage;->RESOURCE_CACHE:Lcom/bumptech/glide/load/engine/DecodeJob$Stage;

    .line 7449
    new-instance v3, Lcom/bumptech/glide/load/engine/DecodeJob$Stage;

    const v5, 0x6d09c6c8

    invoke-static {v5}, Lcom/liapp/y;->ٱڳܴڭܩ(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/bumptech/glide/load/engine/DecodeJob$Stage;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/bumptech/glide/load/engine/DecodeJob$Stage;->DATA_CACHE:Lcom/bumptech/glide/load/engine/DecodeJob$Stage;

    .line 7469
    new-instance v5, Lcom/bumptech/glide/load/engine/DecodeJob$Stage;

    const v7, -0x451c9077

    invoke-static {v7}, Lcom/liapp/y;->ڳݬ٬ۮݪ(I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/bumptech/glide/load/engine/DecodeJob$Stage;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/bumptech/glide/load/engine/DecodeJob$Stage;->SOURCE:Lcom/bumptech/glide/load/engine/DecodeJob$Stage;

    .line 7489
    new-instance v7, Lcom/bumptech/glide/load/engine/DecodeJob$Stage;

    const v9, 0x33677fa3    # 5.3899964E-8f

    invoke-static {v9}, Lcom/liapp/y;->ׯ״ٲ֬ب(I)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/bumptech/glide/load/engine/DecodeJob$Stage;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/bumptech/glide/load/engine/DecodeJob$Stage;->ENCODE:Lcom/bumptech/glide/load/engine/DecodeJob$Stage;

    .line 7509
    new-instance v9, Lcom/bumptech/glide/load/engine/DecodeJob$Stage;

    const v11, 0x33677f63

    invoke-static {v11}, Lcom/liapp/y;->ׯ״ٲ֬ب(I)Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/bumptech/glide/load/engine/DecodeJob$Stage;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/bumptech/glide/load/engine/DecodeJob$Stage;->FINISHED:Lcom/bumptech/glide/load/engine/DecodeJob$Stage;

    const/4 v11, 0x6

    new-array v11, v11, [Lcom/bumptech/glide/load/engine/DecodeJob$Stage;

    aput-object v0, v11, v2

    aput-object v1, v11, v4

    aput-object v3, v11, v6

    aput-object v5, v11, v8

    aput-object v7, v11, v10

    aput-object v9, v11, v12

    .line 7389
    sput-object v11, Lcom/bumptech/glide/load/engine/DecodeJob$Stage;->$VALUES:[Lcom/bumptech/glide/load/engine/DecodeJob$Stage;

    return-void

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

    .line 7389
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void

    .array-data 1
    .end array-data
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/bumptech/glide/load/engine/DecodeJob$Stage;
    .locals 1

    .line 7389
    const-class v0, Lcom/bumptech/glide/load/engine/DecodeJob$Stage;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/bumptech/glide/load/engine/DecodeJob$Stage;

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static values()[Lcom/bumptech/glide/load/engine/DecodeJob$Stage;
    .locals 1

    .line 7389
    sget-object v0, Lcom/bumptech/glide/load/engine/DecodeJob$Stage;->$VALUES:[Lcom/bumptech/glide/load/engine/DecodeJob$Stage;

    invoke-virtual {v0}, [Lcom/bumptech/glide/load/engine/DecodeJob$Stage;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/bumptech/glide/load/engine/DecodeJob$Stage;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method
