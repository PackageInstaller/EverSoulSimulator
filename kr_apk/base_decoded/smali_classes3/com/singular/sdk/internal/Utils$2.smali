.class final Lcom/singular/sdk/internal/Utils$2;
.super Ljava/lang/Object;
.source "Utils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/singular/sdk/internal/Utils;->handleDeepLink(Lcom/singular/sdk/SingularLinkParams;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$handler:Lcom/singular/sdk/SingularLinkHandler;

.field final synthetic val$params:Lcom/singular/sdk/SingularLinkParams;


# direct methods
.method constructor <init>(Lcom/singular/sdk/SingularLinkHandler;Lcom/singular/sdk/SingularLinkParams;)V
    .locals 0

    .line 5139
    iput-object p1, p0, Lcom/singular/sdk/internal/Utils$2;->val$handler:Lcom/singular/sdk/SingularLinkHandler;

    iput-object p2, p0, Lcom/singular/sdk/internal/Utils$2;->val$params:Lcom/singular/sdk/SingularLinkParams;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 5169
    iget-object v0, p0, Lcom/singular/sdk/internal/Utils$2;->val$handler:Lcom/singular/sdk/SingularLinkHandler;

    iget-object v1, p0, Lcom/singular/sdk/internal/Utils$2;->val$params:Lcom/singular/sdk/SingularLinkParams;

    invoke-interface {v0, v1}, Lcom/singular/sdk/SingularLinkHandler;->onResolved(Lcom/singular/sdk/SingularLinkParams;)V

    return-void

    .array-data 1
    .end array-data
.end method
