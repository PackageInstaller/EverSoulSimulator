.class final Lcom/unity3d/player/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/window/OnBackInvokedCallback;


# instance fields
.field final synthetic a:Lcom/unity3d/player/a/c;


# direct methods
.method constructor <init>(Lcom/unity3d/player/a/c;)V
    .locals 0

    iput-object p1, p0, Lcom/unity3d/player/d;->a:Lcom/unity3d/player/a/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public final onBackInvoked()V
    .locals 1

    iget-object v0, p0, Lcom/unity3d/player/d;->a:Lcom/unity3d/player/a/c;

    check-cast v0, Lcom/unity3d/player/B;

    iget-object v0, v0, Lcom/unity3d/player/B;->a:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void

    .array-data 1
    .end array-data
.end method
