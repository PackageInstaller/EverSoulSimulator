.class public Lcom/gamania/beanfunsdk/model/Result;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private a:I

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/gamania/beanfunsdk/model/Result;->a:I

    iput-object p2, p0, Lcom/gamania/beanfunsdk/model/Result;->b:Ljava/lang/String;

    return-void

    .array-data 1
    .end array-data
.end method

.method public static newInstance(Lorg/json/JSONObject;)Lcom/gamania/beanfunsdk/model/Result;
    .locals 2

    const-string v0, "ResultCode"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    const-string v1, "AccessToken"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance v1, Lcom/gamania/beanfunsdk/model/Result;

    invoke-direct {v1, v0, p0}, Lcom/gamania/beanfunsdk/model/Result;-><init>(ILjava/lang/String;)V

    return-object v1

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public getAccessToken()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/gamania/beanfunsdk/model/Result;->b:Ljava/lang/String;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getResultCode()I
    .locals 1

    iget v0, p0, Lcom/gamania/beanfunsdk/model/Result;->a:I

    return v0

    nop

    .array-data 1
    .end array-data
.end method
