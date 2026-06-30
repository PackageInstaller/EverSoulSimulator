.class final Lcom/unity3d/player/Y;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field final synthetic a:Lcom/unity3d/player/c0;


# direct methods
.method constructor <init>(Lcom/unity3d/player/c0;)V
    .locals 0

    iput-object p1, p0, Lcom/unity3d/player/Y;->a:Lcom/unity3d/player/c0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public final onDismiss(Landroid/content/DialogInterface;)V
    .locals 0

    iget-object p1, p0, Lcom/unity3d/player/Y;->a:Lcom/unity3d/player/c0;

    invoke-virtual {p1}, Lcom/unity3d/player/S;->invokeOnClose()V

    return-void

    .array-data 1
    .end array-data
.end method
