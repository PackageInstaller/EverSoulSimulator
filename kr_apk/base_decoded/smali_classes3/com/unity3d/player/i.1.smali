.class final Lcom/unity3d/player/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private a:Lcom/unity3d/player/IAssetPackManagerMobileDataConfirmationCallback;

.field private b:Z


# direct methods
.method constructor <init>(Lcom/unity3d/player/IAssetPackManagerMobileDataConfirmationCallback;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/unity3d/player/i;->a:Lcom/unity3d/player/IAssetPackManagerMobileDataConfirmationCallback;

    iput-boolean p2, p0, Lcom/unity3d/player/i;->b:Z

    return-void

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/unity3d/player/i;->a:Lcom/unity3d/player/IAssetPackManagerMobileDataConfirmationCallback;

    iget-boolean v1, p0, Lcom/unity3d/player/i;->b:Z

    invoke-interface {v0, v1}, Lcom/unity3d/player/IAssetPackManagerMobileDataConfirmationCallback;->onMobileDataConfirmationResult(Z)V

    return-void

    .array-data 1
    .end array-data
.end method
