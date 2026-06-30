.class public Lcom/gamania/beanfunsdk/a/b;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static a:Lcom/gamania/beanfunsdk/a/b;

.field private static volatile b:Lcom/android/volley/RequestQueue;

.field private static c:Landroid/content/Context;

.field private static d:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void

    .array-data 1
    .end array-data
.end method

.method private static a()Lcom/gamania/beanfunsdk/a/b;
    .locals 1

    sget-object v0, Lcom/gamania/beanfunsdk/a/b;->a:Lcom/gamania/beanfunsdk/a/b;

    if-nez v0, :cond_0

    new-instance v0, Lcom/gamania/beanfunsdk/a/b;

    invoke-direct {v0}, Lcom/gamania/beanfunsdk/a/b;-><init>()V

    sput-object v0, Lcom/gamania/beanfunsdk/a/b;->a:Lcom/gamania/beanfunsdk/a/b;

    :cond_0
    sget-object v0, Lcom/gamania/beanfunsdk/a/b;->a:Lcom/gamania/beanfunsdk/a/b;

    return-object v0

    .array-data 1
    .end array-data
.end method

.method private a(Landroid/app/Activity;)Ljava/lang/String;
    .locals 2

    invoke-virtual {p1}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    :try_start_0
    invoke-virtual {p1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_0

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object p1

    goto :goto_1

    :cond_0
    const-string p1, "(unknown)"

    :goto_1
    check-cast p1, Ljava/lang/String;

    return-object p1

    nop

    .array-data 1
    .end array-data
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    const-class v0, Lcom/gamania/beanfunsdk/a/b;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/gamania/beanfunsdk/a/b;->a()Lcom/gamania/beanfunsdk/a/b;

    move-result-object v1

    invoke-direct {v1, p0}, Lcom/gamania/beanfunsdk/a/b;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0

    .array-data 1
    .end array-data
.end method

.method public static a(IILandroid/content/Intent;Lcom/gamania/beanfunsdk/api/AccessCallback;)V
    .locals 4

    const-string v0, "RequestDataError"

    const/16 v1, 0x16

    const/16 v2, 0xb

    const/4 v3, -0x1

    if-ne p1, v3, :cond_6

    if-eq p0, v2, :cond_0

    if-ne p0, v1, :cond_8

    :cond_0
    const-string p0, "openid_result_data"

    invoke-virtual {p2, p0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :try_start_0
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/gamania/beanfunsdk/model/Result;->newInstance(Lorg/json/JSONObject;)Lcom/gamania/beanfunsdk/model/Result;

    move-result-object p1

    invoke-virtual {p1}, Lcom/gamania/beanfunsdk/model/Result;->getAccessToken()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1}, Lcom/gamania/beanfunsdk/model/Result;->getAccessToken()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p1}, Lcom/gamania/beanfunsdk/model/Result;->getResultCode()I

    move-result p1

    const/4 p2, -0x2

    if-eq p1, p2, :cond_3

    if-eq p1, v3, :cond_2

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    invoke-interface {p3, v0}, Lcom/gamania/beanfunsdk/api/AccessCallback;->onError(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    const-string p1, "ServerError"

    :goto_0
    invoke-interface {p3, p1}, Lcom/gamania/beanfunsdk/api/AccessCallback;->onError(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    const-string p1, "TimeOut"

    goto :goto_0

    :cond_4
    sget-object v1, Lcom/gamania/beanfunsdk/a/b;->c:Landroid/content/Context;

    invoke-static {v1, p2}, Lcom/gamania/beanfunsdk/a/a;->a(Landroid/content/Context;Ljava/lang/String;)Z

    invoke-interface {p3, p1}, Lcom/gamania/beanfunsdk/api/AccessCallback;->onSuccess(Lcom/gamania/beanfunsdk/model/Result;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-interface {p3, v0}, Lcom/gamania/beanfunsdk/api/AccessCallback;->onError(Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    new-instance p1, Lcom/gamania/beanfunsdk/model/Result;

    const/4 p2, 0x1

    invoke-direct {p1, p2, p0}, Lcom/gamania/beanfunsdk/model/Result;-><init>(ILjava/lang/String;)V

    invoke-interface {p3, p1}, Lcom/gamania/beanfunsdk/api/AccessCallback;->onSuccess(Lcom/gamania/beanfunsdk/model/Result;)V

    goto :goto_1

    :cond_6
    if-eq p0, v2, :cond_7

    if-ne p0, v1, :cond_8

    :cond_7
    invoke-interface {p3}, Lcom/gamania/beanfunsdk/api/AccessCallback;->onCancel()V

    :cond_8
    :goto_1
    return-void

    .array-data 1
    .end array-data
.end method

.method private a(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 5

    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lcom/gamania/beanfunsdk/api/AppDefine;->SCHEME_URL:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p1}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {p1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p1}, Lcom/gamania/beanfunsdk/a/b;->a(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v3

    :try_start_0
    const-string v4, "packageName"

    invoke-virtual {v1, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "gamaId"

    invoke-virtual {v1, v2, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p2, "gameName"

    invoke-virtual {v1, p2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    invoke-virtual {p2}, Lorg/json/JSONException;->printStackTrace()V

    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v1, "openid_request_data"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/16 p2, 0x16

    goto :goto_1

    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/gamania/beanfunsdk/activity/WebViewActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "gameId"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/16 p2, 0xb

    :goto_1
    invoke-virtual {p1, v0, p2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void

    .array-data 1
    .end array-data
.end method

.method private a(Landroid/content/Context;Lcom/gamania/beanfunsdk/api/LogoutCallback;)V
    .locals 3

    invoke-static {p1}, Lcom/gamania/beanfunsdk/a/a;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string p1, "TokenRevoked"

    invoke-interface {p2, p1}, Lcom/gamania/beanfunsdk/api/LogoutCallback;->onError(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/gamania/beanfunsdk/api/AppDefine;->LOGOUT_ACCESS_TOKEN:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/android/volley/toolbox/JsonObjectRequest;

    new-instance v2, Lcom/gamania/beanfunsdk/a/b$c;

    invoke-direct {v2, p0, p2, p1}, Lcom/gamania/beanfunsdk/a/b$c;-><init>(Lcom/gamania/beanfunsdk/a/b;Lcom/gamania/beanfunsdk/api/LogoutCallback;Landroid/content/Context;)V

    new-instance p1, Lcom/gamania/beanfunsdk/a/b$d;

    invoke-direct {p1, p0, p2}, Lcom/gamania/beanfunsdk/a/b$d;-><init>(Lcom/gamania/beanfunsdk/a/b;Lcom/gamania/beanfunsdk/api/LogoutCallback;)V

    const/4 p2, 0x0

    invoke-direct {v1, p2, v0, v2, p1}, Lcom/android/volley/toolbox/JsonObjectRequest;-><init>(ILjava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    invoke-static {}, Lcom/gamania/beanfunsdk/a/b;->b()Lcom/android/volley/RequestQueue;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    :goto_0
    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public static declared-synchronized a(Landroid/content/Context;Z)V
    .locals 3

    const-class v0, Lcom/gamania/beanfunsdk/a/b;

    monitor-enter v0

    :try_start_0
    sput-object p0, Lcom/gamania/beanfunsdk/a/b;->c:Landroid/content/Context;

    sget-object v1, Lcom/gamania/beanfunsdk/a/b;->b:Lcom/android/volley/RequestQueue;

    if-nez v1, :cond_1

    const-class v1, Lcom/android/volley/RequestQueue;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    sget-object v2, Lcom/gamania/beanfunsdk/a/b;->b:Lcom/android/volley/RequestQueue;

    if-nez v2, :cond_0

    invoke-static {p0}, Lcom/android/volley/toolbox/Volley;->newRequestQueue(Landroid/content/Context;)Lcom/android/volley/RequestQueue;

    move-result-object p0

    sput-object p0, Lcom/gamania/beanfunsdk/a/b;->b:Lcom/android/volley/RequestQueue;

    :cond_0
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p0

    :cond_1
    :goto_0
    sput-boolean p1, Lcom/gamania/beanfunsdk/a/b;->d:Z

    invoke-static {p1}, Lcom/gamania/beanfunsdk/api/AppDefine;->setDomainUrl(Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit v0

    return-void

    :catchall_1
    move-exception p0

    monitor-exit v0

    throw p0

    nop

    .array-data 1
    .end array-data
.end method

.method private a(Ljava/lang/String;Lcom/gamania/beanfunsdk/api/CheckTokenCallback;)V
    .locals 3

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "TokenError"

    invoke-interface {p2, p1}, Lcom/gamania/beanfunsdk/api/CheckTokenCallback;->onError(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/gamania/beanfunsdk/api/AppDefine;->CHECK_ACCESS_TOKEN:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Lcom/android/volley/toolbox/JsonObjectRequest;

    new-instance v1, Lcom/gamania/beanfunsdk/a/b$a;

    invoke-direct {v1, p0, p2}, Lcom/gamania/beanfunsdk/a/b$a;-><init>(Lcom/gamania/beanfunsdk/a/b;Lcom/gamania/beanfunsdk/api/CheckTokenCallback;)V

    new-instance v2, Lcom/gamania/beanfunsdk/a/b$b;

    invoke-direct {v2, p0, p2}, Lcom/gamania/beanfunsdk/a/b$b;-><init>(Lcom/gamania/beanfunsdk/a/b;Lcom/gamania/beanfunsdk/api/CheckTokenCallback;)V

    const/4 p2, 0x0

    invoke-direct {v0, p2, p1, v1, v2}, Lcom/android/volley/toolbox/JsonObjectRequest;-><init>(ILjava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    invoke-static {}, Lcom/gamania/beanfunsdk/a/b;->b()Lcom/android/volley/RequestQueue;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    :goto_0
    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public static final b()Lcom/android/volley/RequestQueue;
    .locals 1

    sget-object v0, Lcom/gamania/beanfunsdk/a/b;->b:Lcom/android/volley/RequestQueue;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method private b(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    invoke-static {p1}, Lcom/gamania/beanfunsdk/a/a;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    nop

    .array-data 1
    .end array-data
.end method

.method public static declared-synchronized b(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 2

    const-class v0, Lcom/gamania/beanfunsdk/a/b;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/gamania/beanfunsdk/a/b;->a()Lcom/gamania/beanfunsdk/a/b;

    move-result-object v1

    invoke-direct {v1, p0, p1}, Lcom/gamania/beanfunsdk/a/b;->a(Landroid/app/Activity;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static declared-synchronized b(Landroid/content/Context;Lcom/gamania/beanfunsdk/api/LogoutCallback;)V
    .locals 2

    const-class v0, Lcom/gamania/beanfunsdk/a/b;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/gamania/beanfunsdk/a/b;->a()Lcom/gamania/beanfunsdk/a/b;

    move-result-object v1

    invoke-direct {v1, p0, p1}, Lcom/gamania/beanfunsdk/a/b;->a(Landroid/content/Context;Lcom/gamania/beanfunsdk/api/LogoutCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static declared-synchronized b(Ljava/lang/String;Lcom/gamania/beanfunsdk/api/CheckTokenCallback;)V
    .locals 2

    const-class v0, Lcom/gamania/beanfunsdk/a/b;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/gamania/beanfunsdk/a/b;->a()Lcom/gamania/beanfunsdk/a/b;

    move-result-object v1

    invoke-direct {v1, p0, p1}, Lcom/gamania/beanfunsdk/a/b;->a(Ljava/lang/String;Lcom/gamania/beanfunsdk/api/CheckTokenCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static c()Ljava/lang/String;
    .locals 2

    sget-boolean v0, Lcom/gamania/beanfunsdk/a/b;->d:Z

    if-eqz v0, :cond_0

    const-string v0, "_test"

    goto :goto_0

    :cond_0
    const-string v0, "_live"

    :goto_0
    const-string v1, "0.0.3"

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .array-data 1
    .end array-data
.end method
