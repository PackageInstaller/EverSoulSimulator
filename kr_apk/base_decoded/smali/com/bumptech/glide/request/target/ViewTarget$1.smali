.class Lcom/bumptech/glide/request/target/ViewTarget$1;
.super Ljava/lang/Object;
.source "ViewTarget.java"

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bumptech/glide/request/target/ViewTarget;->clearOnDetach()Lcom/bumptech/glide/request/target/ViewTarget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bumptech/glide/request/target/ViewTarget;


# direct methods
.method constructor <init>(Lcom/bumptech/glide/request/target/ViewTarget;)V
    .locals 0

    .line 1129
    iput-object p1, p0, Lcom/bumptech/glide/request/target/ViewTarget$1;->this$0:Lcom/bumptech/glide/request/target/ViewTarget;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public onViewAttachedToWindow(Landroid/view/View;)V
    .locals 0

    .line 1159
    iget-object p1, p0, Lcom/bumptech/glide/request/target/ViewTarget$1;->this$0:Lcom/bumptech/glide/request/target/ViewTarget;

    invoke-virtual {p1}, Lcom/bumptech/glide/request/target/ViewTarget;->resumeMyRequest()V

    return-void

    .array-data 1
    .end array-data
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 0

    .line 1209
    iget-object p1, p0, Lcom/bumptech/glide/request/target/ViewTarget$1;->this$0:Lcom/bumptech/glide/request/target/ViewTarget;

    invoke-virtual {p1}, Lcom/bumptech/glide/request/target/ViewTarget;->pauseMyRequest()V

    return-void

    .array-data 1
    .end array-data
.end method
