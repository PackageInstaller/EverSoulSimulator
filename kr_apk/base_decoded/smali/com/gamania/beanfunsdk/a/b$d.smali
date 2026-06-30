.class Lcom/gamania/beanfunsdk/a/b$d;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/volley/Response$ErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gamania/beanfunsdk/a/b;->a(Landroid/content/Context;Lcom/gamania/beanfunsdk/api/LogoutCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/gamania/beanfunsdk/api/LogoutCallback;


# direct methods
.method constructor <init>(Lcom/gamania/beanfunsdk/a/b;Lcom/gamania/beanfunsdk/api/LogoutCallback;)V
    .locals 0

    iput-object p2, p0, Lcom/gamania/beanfunsdk/a/b$d;->a:Lcom/gamania/beanfunsdk/api/LogoutCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .locals 1

    iget-object p1, p0, Lcom/gamania/beanfunsdk/a/b$d;->a:Lcom/gamania/beanfunsdk/api/LogoutCallback;

    const-string v0, "ServerError"

    invoke-interface {p1, v0}, Lcom/gamania/beanfunsdk/api/LogoutCallback;->onError(Ljava/lang/String;)V

    return-void

    .array-data 1
    .end array-data
.end method
