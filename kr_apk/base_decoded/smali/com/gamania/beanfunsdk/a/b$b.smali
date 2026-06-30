.class Lcom/gamania/beanfunsdk/a/b$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/volley/Response$ErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gamania/beanfunsdk/a/b;->a(Ljava/lang/String;Lcom/gamania/beanfunsdk/api/CheckTokenCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/gamania/beanfunsdk/api/CheckTokenCallback;


# direct methods
.method constructor <init>(Lcom/gamania/beanfunsdk/a/b;Lcom/gamania/beanfunsdk/api/CheckTokenCallback;)V
    .locals 0

    iput-object p2, p0, Lcom/gamania/beanfunsdk/a/b$b;->a:Lcom/gamania/beanfunsdk/api/CheckTokenCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .locals 1

    iget-object p1, p0, Lcom/gamania/beanfunsdk/a/b$b;->a:Lcom/gamania/beanfunsdk/api/CheckTokenCallback;

    const-string v0, "ServerError"

    invoke-interface {p1, v0}, Lcom/gamania/beanfunsdk/api/CheckTokenCallback;->onError(Ljava/lang/String;)V

    return-void

    .array-data 1
    .end array-data
.end method
