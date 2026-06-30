.class final Lcom/singular/sdk/internal/OAIDHelper$1;
.super Ljava/lang/Object;
.source "OAIDHelper.java"

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/singular/sdk/internal/OAIDHelper;->getMsaOAID(Landroid/content/Context;)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$oaidBlocker:Ljava/util/concurrent/BlockingQueue;


# direct methods
.method constructor <init>(Ljava/util/concurrent/BlockingQueue;)V
    .locals 0

    .line 809
    iput-object p1, p0, Lcom/singular/sdk/internal/OAIDHelper$1;->val$oaidBlocker:Ljava/util/concurrent/BlockingQueue;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    const/4 p1, 0x1

    if-eqz p3, :cond_0

    .line 839
    array-length p2, p3

    if-gt p2, p1, :cond_1

    .line 849
    :cond_0
    iget-object p2, p0, Lcom/singular/sdk/internal/OAIDHelper$1;->val$oaidBlocker:Ljava/util/concurrent/BlockingQueue;

    const-string v0, ""

    invoke-interface {p2, v0}, Ljava/util/concurrent/BlockingQueue;->offer(Ljava/lang/Object;)Z

    .line 889
    :cond_1
    iget-object p2, p0, Lcom/singular/sdk/internal/OAIDHelper$1;->val$oaidBlocker:Ljava/util/concurrent/BlockingQueue;

    aget-object p1, p3, p1

    invoke-static {p1}, Lcom/singular/sdk/internal/OAIDHelper;->access$000(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/concurrent/BlockingQueue;->offer(Ljava/lang/Object;)Z

    const/4 p1, 0x0

    return-object p1

    .array-data 1
    .end array-data
.end method
