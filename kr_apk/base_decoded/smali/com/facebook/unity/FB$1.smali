.class Lcom/facebook/unity/FB$1;
.super Ljava/lang/Object;
.source "FB.java"

# interfaces
.implements Lcom/facebook/FacebookSdk$InitializeCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/unity/FB;->Init(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$appID:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 128
    iput-object p1, p0, Lcom/facebook/unity/FB$1;->val$appID:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public onInitialized()V
    .locals 1

    .line 131
    iget-object v0, p0, Lcom/facebook/unity/FB$1;->val$appID:Ljava/lang/String;

    invoke-static {v0}, Lcom/facebook/unity/FB;->access$000(Ljava/lang/String;)V

    return-void

    .array-data 1
    .end array-data
.end method
