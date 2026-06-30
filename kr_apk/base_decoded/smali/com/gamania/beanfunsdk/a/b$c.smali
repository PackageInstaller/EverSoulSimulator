.class Lcom/gamania/beanfunsdk/a/b$c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/volley/Response$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gamania/beanfunsdk/a/b;->a(Landroid/content/Context;Lcom/gamania/beanfunsdk/api/LogoutCallback;)V
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
.field final synthetic a:Lcom/gamania/beanfunsdk/api/LogoutCallback;

.field final synthetic b:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/gamania/beanfunsdk/a/b;Lcom/gamania/beanfunsdk/api/LogoutCallback;Landroid/content/Context;)V
    .locals 0

    iput-object p2, p0, Lcom/gamania/beanfunsdk/a/b$c;->a:Lcom/gamania/beanfunsdk/api/LogoutCallback;

    iput-object p3, p0, Lcom/gamania/beanfunsdk/a/b$c;->b:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public a(Lorg/json/JSONObject;)V
    .locals 2

    if-eqz p1, :cond_1

    const-string v0, "is_valid"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/gamania/beanfunsdk/a/b$c;->a:Lcom/gamania/beanfunsdk/api/LogoutCallback;

    invoke-interface {p1}, Lcom/gamania/beanfunsdk/api/LogoutCallback;->onSuccess()V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/gamania/beanfunsdk/a/b$c;->a:Lcom/gamania/beanfunsdk/api/LogoutCallback;

    const-string v0, "TokenRevoked"

    invoke-interface {p1, v0}, Lcom/gamania/beanfunsdk/api/LogoutCallback;->onError(Ljava/lang/String;)V

    :goto_0
    iget-object p1, p0, Lcom/gamania/beanfunsdk/a/b$c;->b:Landroid/content/Context;

    invoke-static {p1}, Lcom/gamania/beanfunsdk/a/a;->a(Landroid/content/Context;)V

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lcom/gamania/beanfunsdk/a/b$c;->a:Lcom/gamania/beanfunsdk/api/LogoutCallback;

    const-string v0, "ServerError"

    invoke-interface {p1, v0}, Lcom/gamania/beanfunsdk/api/LogoutCallback;->onError(Ljava/lang/String;)V

    :goto_1
    return-void

    .array-data 1
    .end array-data
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lorg/json/JSONObject;

    invoke-virtual {p0, p1}, Lcom/gamania/beanfunsdk/a/b$c;->a(Lorg/json/JSONObject;)V

    return-void

    .array-data 1
    .end array-data
.end method
