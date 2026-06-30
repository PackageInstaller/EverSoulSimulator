.class public final Lcom/kakao/sdk/friend/core/l/T;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final a:Landroid/view/View$OnClickListener;

.field public final b:J

.field public c:J


# direct methods
.method public constructor <init>(Landroid/view/View$OnClickListener;)V
    .locals 2

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/kakao/sdk/friend/core/l/T;->a:Landroid/view/View$OnClickListener;

    const-wide/16 v0, 0x1f4

    iput-wide v0, p0, Lcom/kakao/sdk/friend/core/l/T;->b:J

    return-void

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 6

    const-string/jumbo v0, "view"

    .line 19
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/kakao/sdk/friend/core/l/T;->c:J

    sub-long v2, v0, v2

    iget-wide v4, p0, Lcom/kakao/sdk/friend/core/l/T;->b:J

    cmp-long v2, v2, v4

    if-gez v2, :cond_0

    return-void

    :cond_0
    iget-object v2, p0, Lcom/kakao/sdk/friend/core/l/T;->a:Landroid/view/View$OnClickListener;

    if-eqz v2, :cond_1

    invoke-interface {v2, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    :cond_1
    iput-wide v0, p0, Lcom/kakao/sdk/friend/core/l/T;->c:J

    return-void

    nop

    .array-data 1
    .end array-data
.end method
