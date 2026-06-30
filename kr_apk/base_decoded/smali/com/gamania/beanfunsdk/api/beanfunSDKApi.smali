.class public Lcom/gamania/beanfunsdk/api/beanfunSDKApi;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void

    .array-data 1
    .end array-data
.end method

.method public static beanfunLogin(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/gamania/beanfunsdk/a/b;->b(Landroid/app/Activity;Ljava/lang/String;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method public static beanfunLogout(Landroid/content/Context;Lcom/gamania/beanfunsdk/api/LogoutCallback;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/gamania/beanfunsdk/a/b;->b(Landroid/content/Context;Lcom/gamania/beanfunsdk/api/LogoutCallback;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method public static checkAccessToken(Ljava/lang/String;Lcom/gamania/beanfunsdk/api/CheckTokenCallback;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/gamania/beanfunsdk/a/b;->b(Ljava/lang/String;Lcom/gamania/beanfunsdk/api/CheckTokenCallback;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method public static getRestoreAccessToken(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/gamania/beanfunsdk/a/b;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static getSDKVersion()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/gamania/beanfunsdk/a/b;->c()Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public static initSDK(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/gamania/beanfunsdk/a/b;->a(Landroid/content/Context;Z)V

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public static initSDK(Landroid/content/Context;Z)V
    .locals 0

    invoke-static {p0, p1}, Lcom/gamania/beanfunsdk/a/b;->a(Landroid/content/Context;Z)V

    return-void

    .array-data 1
    .end array-data
.end method

.method public static onActivityResult(IILandroid/content/Intent;Lcom/gamania/beanfunsdk/api/AccessCallback;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/gamania/beanfunsdk/a/b;->a(IILandroid/content/Intent;Lcom/gamania/beanfunsdk/api/AccessCallback;)V

    return-void

    .array-data 1
    .end array-data
.end method
