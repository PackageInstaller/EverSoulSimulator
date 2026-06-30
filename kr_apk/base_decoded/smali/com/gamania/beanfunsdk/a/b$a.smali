.class Lcom/gamania/beanfunsdk/a/b$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/volley/Response$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gamania/beanfunsdk/a/b;->a(Ljava/lang/String;Lcom/gamania/beanfunsdk/api/CheckTokenCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/volley/Response$Listener<",
        "Lorg/json/JSONObject;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/gamania/beanfunsdk/api/CheckTokenCallback;


# direct methods
.method constructor <init>(Lcom/gamania/beanfunsdk/a/b;Lcom/gamania/beanfunsdk/api/CheckTokenCallback;)V
    .locals 0

    iput-object p2, p0, Lcom/gamania/beanfunsdk/a/b$a;->a:Lcom/gamania/beanfunsdk/api/CheckTokenCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public a(Lorg/json/JSONObject;)V
    .locals 2

    if-eqz p1, :cond_0

    const-string v0, "is_valid"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iget-object v0, p0, Lcom/gamania/beanfunsdk/a/b$a;->a:Lcom/gamania/beanfunsdk/api/CheckTokenCallback;

    invoke-interface {v0, p1}, Lcom/gamania/beanfunsdk/api/CheckTokenCallback;->onSuccess(Z)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/gamania/beanfunsdk/a/b$a;->a:Lcom/gamania/beanfunsdk/api/CheckTokenCallback;

    const-string v0, "ServerError"

    invoke-interface {p1, v0}, Lcom/gamania/beanfunsdk/api/CheckTokenCallback;->onError(Ljava/lang/String;)V

    :goto_0
    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lorg/json/JSONObject;

    invoke-virtual {p0, p1}, Lcom/gamania/beanfunsdk/a/b$a;->a(Lorg/json/JSONObject;)V

    return-void

    .array-data 1
    .end array-data
.end method
