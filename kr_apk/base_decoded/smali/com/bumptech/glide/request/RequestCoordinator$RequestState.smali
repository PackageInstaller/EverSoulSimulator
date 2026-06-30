.class public final enum Lcom/bumptech/glide/request/RequestCoordinator$RequestState;
.super Ljava/lang/Enum;
.source "RequestCoordinator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/request/RequestCoordinator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "RequestState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/bumptech/glide/request/RequestCoordinator$RequestState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/bumptech/glide/request/RequestCoordinator$RequestState;

.field public static final enum CLEARED:Lcom/bumptech/glide/request/RequestCoordinator$RequestState;

.field public static final enum FAILED:Lcom/bumptech/glide/request/RequestCoordinator$RequestState;

.field public static final enum PAUSED:Lcom/bumptech/glide/request/RequestCoordinator$RequestState;

.field public static final enum RUNNING:Lcom/bumptech/glide/request/RequestCoordinator$RequestState;

.field public static final enum SUCCESS:Lcom/bumptech/glide/request/RequestCoordinator$RequestState;


# instance fields
.field private final isComplete:Z


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 499
    new-instance v0, Lcom/bumptech/glide/request/RequestCoordinator$RequestState;

    const v1, -0x2245ed6c

    invoke-static {v1}, Lcom/liapp/y;->״دش۲ݮ(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/bumptech/glide/request/RequestCoordinator$RequestState;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/bumptech/glide/request/RequestCoordinator$RequestState;->RUNNING:Lcom/bumptech/glide/request/RequestCoordinator$RequestState;

    .line 509
    new-instance v1, Lcom/bumptech/glide/request/RequestCoordinator$RequestState;

    const v3, 0x7d7724ed

    invoke-static {v3}, Lcom/liapp/y;->حֲݴܳޯ(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v2}, Lcom/bumptech/glide/request/RequestCoordinator$RequestState;-><init>(Ljava/lang/String;IZ)V

    sput-object v1, Lcom/bumptech/glide/request/RequestCoordinator$RequestState;->PAUSED:Lcom/bumptech/glide/request/RequestCoordinator$RequestState;

    .line 519
    new-instance v3, Lcom/bumptech/glide/request/RequestCoordinator$RequestState;

    const v5, 0x5d170dc7

    invoke-static {v5}, Lcom/liapp/y;->ڴݮگ֮ت(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v2}, Lcom/bumptech/glide/request/RequestCoordinator$RequestState;-><init>(Ljava/lang/String;IZ)V

    sput-object v3, Lcom/bumptech/glide/request/RequestCoordinator$RequestState;->CLEARED:Lcom/bumptech/glide/request/RequestCoordinator$RequestState;

    .line 529
    new-instance v5, Lcom/bumptech/glide/request/RequestCoordinator$RequestState;

    const v7, 0x7d772465

    invoke-static {v7}, Lcom/liapp/y;->حֲݴܳޯ(I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v4}, Lcom/bumptech/glide/request/RequestCoordinator$RequestState;-><init>(Ljava/lang/String;IZ)V

    sput-object v5, Lcom/bumptech/glide/request/RequestCoordinator$RequestState;->SUCCESS:Lcom/bumptech/glide/request/RequestCoordinator$RequestState;

    .line 539
    new-instance v7, Lcom/bumptech/glide/request/RequestCoordinator$RequestState;

    const v9, 0x6d093308

    invoke-static {v9}, Lcom/liapp/y;->ٱڳܴڭܩ(I)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10, v4}, Lcom/bumptech/glide/request/RequestCoordinator$RequestState;-><init>(Ljava/lang/String;IZ)V

    sput-object v7, Lcom/bumptech/glide/request/RequestCoordinator$RequestState;->FAILED:Lcom/bumptech/glide/request/RequestCoordinator$RequestState;

    const/4 v9, 0x5

    new-array v9, v9, [Lcom/bumptech/glide/request/RequestCoordinator$RequestState;

    aput-object v0, v9, v2

    aput-object v1, v9, v4

    aput-object v3, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v10

    .line 489
    sput-object v9, Lcom/bumptech/glide/request/RequestCoordinator$RequestState;->$VALUES:[Lcom/bumptech/glide/request/RequestCoordinator$RequestState;

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method private constructor <init>(Ljava/lang/String;IZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)V"
        }
    .end annotation

    .line 579
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 599
    iput-boolean p3, p0, Lcom/bumptech/glide/request/RequestCoordinator$RequestState;->isComplete:Z

    return-void

    .array-data 1
    .end array-data
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/bumptech/glide/request/RequestCoordinator$RequestState;
    .locals 1

    .line 489
    const-class v0, Lcom/bumptech/glide/request/RequestCoordinator$RequestState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/bumptech/glide/request/RequestCoordinator$RequestState;

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static values()[Lcom/bumptech/glide/request/RequestCoordinator$RequestState;
    .locals 1

    .line 489
    sget-object v0, Lcom/bumptech/glide/request/RequestCoordinator$RequestState;->$VALUES:[Lcom/bumptech/glide/request/RequestCoordinator$RequestState;

    invoke-virtual {v0}, [Lcom/bumptech/glide/request/RequestCoordinator$RequestState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/bumptech/glide/request/RequestCoordinator$RequestState;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method


# virtual methods
.method isComplete()Z
    .locals 1

    .line 639
    iget-boolean v0, p0, Lcom/bumptech/glide/request/RequestCoordinator$RequestState;->isComplete:Z

    return v0

    nop

    .array-data 1
    .end array-data
.end method
