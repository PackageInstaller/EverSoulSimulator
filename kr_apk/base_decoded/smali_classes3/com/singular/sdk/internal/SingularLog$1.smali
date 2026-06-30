.class final Lcom/singular/sdk/internal/SingularLog$1;
.super Lcom/singular/sdk/internal/SingularLog;
.source "SingularLog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/singular/sdk/internal/SingularLog;->getLogger(Ljava/lang/String;Ljava/lang/String;)Lcom/singular/sdk/internal/SingularLog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$envFiltered:Z


# direct methods
.method constructor <init>(Ljava/lang/String;Z)V
    .locals 0

    .line 479
    iput-boolean p2, p0, Lcom/singular/sdk/internal/SingularLog$1;->val$envFiltered:Z

    const/4 p2, 0x0

    invoke-direct {p0, p1, p2}, Lcom/singular/sdk/internal/SingularLog;-><init>(Ljava/lang/String;Lcom/singular/sdk/internal/SingularLog$1;)V

    return-void

    nop

    .array-data 1
    .end array-data
.end method


# virtual methods
.method protected shouldLog(I)Z
    .locals 0

    .line 509
    invoke-super {p0, p1}, Lcom/singular/sdk/internal/SingularLog;->shouldLog(I)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-boolean p1, p0, Lcom/singular/sdk/internal/SingularLog$1;->val$envFiltered:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1

    .array-data 1
    .end array-data
.end method
