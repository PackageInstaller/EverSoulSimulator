.class final Lcom/unity3d/player/T;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/unity3d/player/U;


# direct methods
.method constructor <init>(Lcom/unity3d/player/U;)V
    .locals 0

    iput-object p1, p0, Lcom/unity3d/player/T;->a:Lcom/unity3d/player/U;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/unity3d/player/T;->a:Lcom/unity3d/player/U;

    iget-object v0, v0, Lcom/unity3d/player/U;->d:Lcom/unity3d/player/S;

    invoke-virtual {v0}, Lcom/unity3d/player/S;->b()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/unity3d/player/S;->a(Ljava/lang/String;Z)V

    return-void

    nop

    .array-data 1
    .end array-data
.end method
