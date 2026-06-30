.class public Lcom/gamania/beanfunsdk/api/AppDefine;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final AES_IV:Ljava/lang/String; = "1111111111111111"

.field public static final BEANFUN:Ljava/lang/String; = "beanfun"

.field public static final BUNDLE_KEY_OPNEID_REQUEST_DATA:Ljava/lang/String; = "openid_request_data"

.field public static final BUNDLE_KEY_OPNEID_RESULT_DATA:Ljava/lang/String; = "openid_result_data"

.field public static CHECK_ACCESS_TOKEN:Ljava/lang/String; = null

.field public static DEBUG_SCHEME_URL:Ljava/lang/String; = "beanfunapp://gameLogin"

.field public static DEBUG_SERVER_DOMAIN:Ljava/lang/String; = "https://stage-openid.beanfun.com"

.field public static GET_OPEN_ID_ACCESS_TOKEN:Ljava/lang/String; = null

.field public static final INT_OPENID_RESULT_DATA_ERROR:I = 0x0

.field public static final INT_OPENID_RESULT_OK:I = 0x1

.field public static final INT_OPENID_RESULT_SERVER_ERROR:I = -0x1

.field public static final INT_OPENID_RESULT_TIMEOUT_ERROR:I = -0x2

.field public static LOGOUT_ACCESS_TOKEN:Ljava/lang/String; = null

.field public static final OPEN_ID_APP_REQUEST_CODE:I = 0x16

.field public static final OPEN_ID_WEB_REQUEST_CODE:I = 0xb

.field public static RELEASE_SCHEME_URL:Ljava/lang/String; = "beanfunapp://gameLogin"

.field public static RELEASE_SERVER_DOMAIN:Ljava/lang/String; = "https://openid.beanfun.com"

.field public static SCHEME_URL:Ljava/lang/String; = null

.field public static final SHAREDPREFERENCES_NAME:Ljava/lang/String; = "beanfunData"

.field public static final STR_OPENID_RESULT_REQUEST_DATA_ERROR:Ljava/lang/String; = "RequestDataError"

.field public static final STR_OPENID_RESULT_SERVER_ERROR:Ljava/lang/String; = "ServerError"

.field public static final STR_OPENID_RESULT_TIMEOUT:Ljava/lang/String; = "TimeOut"

.field public static final STR_RESULT_TOKEN_ERROR:Ljava/lang/String; = "TokenError"

.field public static final STR_RESULT_TOKEN_REVOKED:Ljava/lang/String; = "TokenRevoked"


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

.method public static setDomainUrl(Z)V
    .locals 2

    if-eqz p0, :cond_0

    sget-object v0, Lcom/gamania/beanfunsdk/api/AppDefine;->DEBUG_SCHEME_URL:Ljava/lang/String;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/gamania/beanfunsdk/api/AppDefine;->RELEASE_SCHEME_URL:Ljava/lang/String;

    :goto_0
    sput-object v0, Lcom/gamania/beanfunsdk/api/AppDefine;->SCHEME_URL:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p0, :cond_1

    sget-object v1, Lcom/gamania/beanfunsdk/api/AppDefine;->DEBUG_SERVER_DOMAIN:Ljava/lang/String;

    goto :goto_1

    :cond_1
    sget-object v1, Lcom/gamania/beanfunsdk/api/AppDefine;->RELEASE_SERVER_DOMAIN:Ljava/lang/String;

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/GotoRegister/?clientId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/gamania/beanfunsdk/api/AppDefine;->GET_OPEN_ID_ACCESS_TOKEN:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p0, :cond_2

    sget-object v1, Lcom/gamania/beanfunsdk/api/AppDefine;->DEBUG_SERVER_DOMAIN:Ljava/lang/String;

    goto :goto_2

    :cond_2
    sget-object v1, Lcom/gamania/beanfunsdk/api/AppDefine;->RELEASE_SERVER_DOMAIN:Ljava/lang/String;

    :goto_2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/api/Logout/?Token="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/gamania/beanfunsdk/api/AppDefine;->LOGOUT_ACCESS_TOKEN:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p0, :cond_3

    sget-object p0, Lcom/gamania/beanfunsdk/api/AppDefine;->DEBUG_SERVER_DOMAIN:Ljava/lang/String;

    goto :goto_3

    :cond_3
    sget-object p0, Lcom/gamania/beanfunsdk/api/AppDefine;->RELEASE_SERVER_DOMAIN:Ljava/lang/String;

    :goto_3
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, "/api/CheckToken/?Token="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/gamania/beanfunsdk/api/AppDefine;->CHECK_ACCESS_TOKEN:Ljava/lang/String;

    return-void

    .array-data 1
    .end array-data
.end method
