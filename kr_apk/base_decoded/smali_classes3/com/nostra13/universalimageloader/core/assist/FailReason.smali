.class public Lcom/nostra13/universalimageloader/core/assist/FailReason;
.super Ljava/lang/Object;
.source "FailReason.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nostra13/universalimageloader/core/assist/FailReason$FailType;
    }
.end annotation


# instance fields
.field private final cause:Ljava/lang/Throwable;

.field private final type:Lcom/nostra13/universalimageloader/core/assist/FailReason$FailType;


# direct methods
.method public constructor <init>(Lcom/nostra13/universalimageloader/core/assist/FailReason$FailType;Ljava/lang/Throwable;)V
    .locals 0

    .line 309
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 319
    iput-object p1, p0, Lcom/nostra13/universalimageloader/core/assist/FailReason;->type:Lcom/nostra13/universalimageloader/core/assist/FailReason$FailType;

    .line 329
    iput-object p2, p0, Lcom/nostra13/universalimageloader/core/assist/FailReason;->cause:Ljava/lang/Throwable;

    return-void

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public getCause()Ljava/lang/Throwable;
    .locals 1

    .line 429
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/assist/FailReason;->cause:Ljava/lang/Throwable;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getType()Lcom/nostra13/universalimageloader/core/assist/FailReason$FailType;
    .locals 1

    .line 379
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/assist/FailReason;->type:Lcom/nostra13/universalimageloader/core/assist/FailReason$FailType;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method
