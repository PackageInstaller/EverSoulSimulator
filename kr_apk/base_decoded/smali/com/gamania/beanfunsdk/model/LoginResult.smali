.class public Lcom/gamania/beanfunsdk/model/LoginResult;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gamania/beanfunsdk/model/LoginResult;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/gamania/beanfunsdk/model/LoginResult;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/gamania/beanfunsdk/model/LoginResult;->c:Ljava/lang/String;

    return-void

    .array-data 1
    .end array-data
.end method

.method public static newInstance(Lorg/json/JSONObject;)Lcom/gamania/beanfunsdk/model/LoginResult;
    .locals 3

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "client_id"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "client_name"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "user_id"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance v2, Lcom/gamania/beanfunsdk/model/LoginResult;

    invoke-direct {v2, v0, v1, p0}, Lcom/gamania/beanfunsdk/model/LoginResult;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v2

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public getClientId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/gamania/beanfunsdk/model/LoginResult;->a:Ljava/lang/String;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getClientName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/gamania/beanfunsdk/model/LoginResult;->b:Ljava/lang/String;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getUserId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/gamania/beanfunsdk/model/LoginResult;->c:Ljava/lang/String;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method
