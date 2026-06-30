.class final Lcom/unity3d/player/a0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field final synthetic a:Lcom/unity3d/player/c0;


# direct methods
.method constructor <init>(Lcom/unity3d/player/c0;)V
    .locals 0

    iput-object p1, p0, Lcom/unity3d/player/a0;->a:Lcom/unity3d/player/c0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public final onCancel(Landroid/content/DialogInterface;)V
    .locals 0

    iget-object p1, p0, Lcom/unity3d/player/a0;->a:Lcom/unity3d/player/c0;

    iget-object p1, p1, Lcom/unity3d/player/S;->f:Lcom/unity3d/player/F;

    if-eqz p1, :cond_0

    check-cast p1, Lcom/unity3d/player/l0;

    invoke-virtual {p1}, Lcom/unity3d/player/l0;->a()V

    :cond_0
    return-void

    .array-data 1
    .end array-data
.end method
