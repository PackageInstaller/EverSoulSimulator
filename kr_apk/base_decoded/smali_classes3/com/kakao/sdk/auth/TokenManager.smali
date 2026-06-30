.class public final Lcom/kakao/sdk/auth/TokenManager;
.super Ljava/lang/Object;
.source "TokenManager.kt"

# interfaces
.implements Lcom/kakao/sdk/auth/TokenManageable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kakao/sdk/auth/TokenManager$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTokenManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TokenManager.kt\ncom/kakao/sdk/auth/TokenManager\n+ 2 KakaoJson.kt\ncom/kakao/sdk/common/util/KakaoJson\n+ 3 Json.kt\nkotlinx/serialization/json/Json\n+ 4 SerialFormat.kt\nkotlinx/serialization/SerialFormatKt\n+ 5 TokenManager.kt\ncom/kakao/sdk/auth/TokenManagerKt\n*L\n1#1,184:1\n47#2:185\n46#2:187\n47#2:189\n47#2:193\n47#2:201\n47#2:209\n47#2:217\n46#2:223\n96#3:186\n96#3:190\n96#3:194\n96#3:202\n96#3:210\n96#3:218\n113#4:188\n113#4:224\n178#5,2:191\n180#5,4:195\n178#5,2:199\n180#5,4:203\n178#5,2:207\n180#5,4:211\n178#5,2:215\n180#5,4:219\n*S KotlinDebug\n*F\n+ 1 TokenManager.kt\ncom/kakao/sdk/auth/TokenManager\n*L\n56#1:185\n80#1:187\n130#1:189\n135#1:193\n142#1:201\n149#1:209\n154#1:217\n166#1:223\n56#1:186\n130#1:190\n135#1:194\n142#1:202\n149#1:210\n154#1:218\n80#1:188\n166#1:224\n133#1:191,2\n133#1:195,4\n140#1:199,2\n140#1:203,4\n147#1:207,2\n147#1:211,4\n152#1:215,2\n152#1:219,4\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0006\u0018\u0000 \u00132\u00020\u0001:\u0001\u0013B\u0019\u0012\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\u0008\u0010\r\u001a\u00020\u000eH\u0016J\n\u0010\u000f\u001a\u0004\u0018\u00010\nH\u0016J\u0008\u0010\u0010\u001a\u00020\u000eH\u0002J\u0010\u0010\u0011\u001a\u00020\u000e2\u0006\u0010\u0012\u001a\u00020\nH\u0016R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008R\u0010\u0010\t\u001a\u0004\u0018\u00010\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000c\u00a8\u0006\u0014"
    }
    d2 = {
        "Lcom/kakao/sdk/auth/TokenManager;",
        "Lcom/kakao/sdk/auth/TokenManageable;",
        "appCache",
        "Lcom/kakao/sdk/common/util/PersistentKVStore;",
        "encryptor",
        "Lcom/kakao/sdk/common/util/Cipher;",
        "(Lcom/kakao/sdk/common/util/PersistentKVStore;Lcom/kakao/sdk/common/util/Cipher;)V",
        "getAppCache",
        "()Lcom/kakao/sdk/common/util/PersistentKVStore;",
        "currentToken",
        "Lcom/kakao/sdk/auth/model/OAuthToken;",
        "getEncryptor",
        "()Lcom/kakao/sdk/common/util/Cipher;",
        "clear",
        "",
        "getToken",
        "migrateFromOldVersion",
        "setToken",
        "token",
        "Companion",
        "auth_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final Companion:Lcom/kakao/sdk/auth/TokenManager$Companion;

.field public static final atExpiresAtKey:Ljava/lang/String; = "com.kakao.token.OAuthToken.ExpiresAt"

.field public static final atKey:Ljava/lang/String; = "com.kakao.token.AccessToken"

.field private static final instance$delegate:Lkotlin/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/Lazy<",
            "Lcom/kakao/sdk/auth/TokenManager;",
            ">;"
        }
    .end annotation
.end field

.field public static final rtExpiresAtKey:Ljava/lang/String; = "com.kakao.token.RefreshToken.ExpiresAt"

.field public static final rtKey:Ljava/lang/String; = "com.kakao.token.RefreshToken"

.field public static final secureModeKey:Ljava/lang/String; = "com.kakao.token.KakaoSecureMode"

.field public static final tokenKey:Ljava/lang/String; = "com.kakao.sdk.oauth_token"

.field public static final versionKey:Ljava/lang/String; = "com.kakao.sdk.version"


# instance fields
.field private final appCache:Lcom/kakao/sdk/common/util/PersistentKVStore;

.field private currentToken:Lcom/kakao/sdk/auth/model/OAuthToken;

.field private final encryptor:Lcom/kakao/sdk/common/util/Cipher;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/kakao/sdk/auth/TokenManager$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/kakao/sdk/auth/TokenManager$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/kakao/sdk/auth/TokenManager;->Companion:Lcom/kakao/sdk/auth/TokenManager$Companion;

    .line 1019
    sget-object v0, Lcom/kakao/sdk/auth/TokenManager$Companion$instance$2;->INSTANCE:Lcom/kakao/sdk/auth/TokenManager$Companion$instance$2;

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/kakao/sdk/auth/TokenManager;->instance$delegate:Lkotlin/Lazy;

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x3

    invoke-direct {p0, v0, v0, v1, v0}, Lcom/kakao/sdk/auth/TokenManager;-><init>(Lcom/kakao/sdk/common/util/PersistentKVStore;Lcom/kakao/sdk/common/util/Cipher;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method public constructor <init>(Lcom/kakao/sdk/common/util/PersistentKVStore;Lcom/kakao/sdk/common/util/Cipher;)V
    .locals 3

    const-string v0, "appCache"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "encryptor"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 399
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 419
    iput-object p1, p0, Lcom/kakao/sdk/auth/TokenManager;->appCache:Lcom/kakao/sdk/common/util/PersistentKVStore;

    .line 459
    iput-object p2, p0, Lcom/kakao/sdk/auth/TokenManager;->encryptor:Lcom/kakao/sdk/common/util/Cipher;

    const-string v0, "com.kakao.sdk.version"

    const/4 v1, 0x0

    const/4 v2, 0x2

    .line 509
    invoke-static {p1, v0, v1, v2, v1}, Lcom/kakao/sdk/common/util/PersistentKVStore$DefaultImpls;->getString$default(Lcom/kakao/sdk/common/util/PersistentKVStore;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 529
    invoke-direct {p0}, Lcom/kakao/sdk/auth/TokenManager;->migrateFromOldVersion()V

    :cond_0
    const-string v0, "com.kakao.sdk.oauth_token"

    .line 549
    invoke-static {p1, v0, v1, v2, v1}, Lcom/kakao/sdk/common/util/PersistentKVStore$DefaultImpls;->getString$default(Lcom/kakao/sdk/common/util/PersistentKVStore;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 569
    :try_start_0
    sget-object v0, Lcom/kakao/sdk/common/util/KakaoJson;->INSTANCE:Lcom/kakao/sdk/common/util/KakaoJson;

    invoke-interface {p2, p1}, Lcom/kakao/sdk/common/util/Cipher;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1859
    invoke-virtual {v0}, Lcom/kakao/sdk/common/util/KakaoJson;->getJson()Lkotlinx/serialization/json/Json;

    move-result-object p2

    .line 1869
    invoke-virtual {p2}, Lkotlinx/serialization/json/Json;->getSerializersModule()Lkotlinx/serialization/modules/SerializersModule;

    sget-object v0, Lcom/kakao/sdk/auth/model/OAuthToken;->Companion:Lcom/kakao/sdk/auth/model/OAuthToken$Companion;

    invoke-virtual {v0}, Lcom/kakao/sdk/auth/model/OAuthToken$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    move-result-object v0

    check-cast v0, Lkotlinx/serialization/DeserializationStrategy;

    invoke-virtual {p2, v0, p1}, Lkotlinx/serialization/json/Json;->decodeFromString(Lkotlinx/serialization/DeserializationStrategy;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    .line 1859
    check-cast p1, Lcom/kakao/sdk/auth/model/OAuthToken;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v1, p1

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 589
    sget-object p2, Lcom/kakao/sdk/common/util/SdkLog;->Companion:Lcom/kakao/sdk/common/util/SdkLog$Companion;

    invoke-virtual {p2, p1}, Lcom/kakao/sdk/common/util/SdkLog$Companion;->e(Ljava/lang/Object;)V

    .line 549
    :cond_1
    :goto_0
    iput-object v1, p0, Lcom/kakao/sdk/auth/TokenManager;->currentToken:Lcom/kakao/sdk/auth/model/OAuthToken;

    return-void

    .array-data 1
    .end array-data
.end method

.method public synthetic constructor <init>(Lcom/kakao/sdk/common/util/PersistentKVStore;Lcom/kakao/sdk/common/util/Cipher;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    .line 419
    new-instance p1, Lcom/kakao/sdk/common/util/SharedPrefsWrapper;

    .line 429
    sget-object p4, Lcom/kakao/sdk/common/KakaoSdk;->INSTANCE:Lcom/kakao/sdk/common/KakaoSdk;

    invoke-virtual {p4}, Lcom/kakao/sdk/common/KakaoSdk;->getApplicationContextInfo()Lcom/kakao/sdk/common/model/ApplicationContextInfo;

    move-result-object p4

    invoke-virtual {p4}, Lcom/kakao/sdk/common/model/ApplicationContextInfo;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object p4

    .line 419
    invoke-direct {p1, p4}, Lcom/kakao/sdk/common/util/SharedPrefsWrapper;-><init>(Landroid/content/SharedPreferences;)V

    check-cast p1, Lcom/kakao/sdk/common/util/PersistentKVStore;

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    .line 459
    new-instance p2, Lcom/kakao/sdk/common/util/AESCipher;

    const/4 p3, 0x0

    const/4 p4, 0x1

    invoke-direct {p2, p3, p4, p3}, Lcom/kakao/sdk/common/util/AESCipher;-><init>(Lcom/kakao/sdk/common/model/ContextInfo;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    check-cast p2, Lcom/kakao/sdk/common/util/Cipher;

    .line 399
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/kakao/sdk/auth/TokenManager;-><init>(Lcom/kakao/sdk/common/util/PersistentKVStore;Lcom/kakao/sdk/common/util/Cipher;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method public static final synthetic access$getInstance$delegate$cp()Lkotlin/Lazy;
    .locals 1

    .line 399
    sget-object v0, Lcom/kakao/sdk/auth/TokenManager;->instance$delegate:Lkotlin/Lazy;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public static final getInstance()Lcom/kakao/sdk/auth/TokenManager;
    .locals 1

    sget-object v0, Lcom/kakao/sdk/auth/TokenManager;->Companion:Lcom/kakao/sdk/auth/TokenManager$Companion;

    invoke-virtual {v0}, Lcom/kakao/sdk/auth/TokenManager$Companion;->getInstance()Lcom/kakao/sdk/auth/TokenManager;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method private final migrateFromOldVersion()V
    .locals 21

    move-object/from16 v1, p0

    const-string/jumbo v2, "true"

    const-string v3, "com.kakao.token.RefreshToken.ExpiresAt"

    const-string v4, "com.kakao.token.OAuthToken.ExpiresAt"

    const-string v5, "com.kakao.token.RefreshToken"

    const-string v6, "com.kakao.token.AccessToken"

    .line 1269
    sget-object v0, Lcom/kakao/sdk/common/util/SdkLog;->Companion:Lcom/kakao/sdk/common/util/SdkLog$Companion;

    const-string v7, "=== Migrate from old version token"

    invoke-virtual {v0, v7}, Lcom/kakao/sdk/common/util/SdkLog$Companion;->i(Ljava/lang/Object;)V

    .line 1279
    iget-object v0, v1, Lcom/kakao/sdk/auth/TokenManager;->appCache:Lcom/kakao/sdk/common/util/PersistentKVStore;

    const-string v7, "com.kakao.sdk.version"

    const-string v8, "2.21.6"

    invoke-interface {v0, v7, v8}, Lcom/kakao/sdk/common/util/PersistentKVStore;->putString(Ljava/lang/String;Ljava/lang/String;)Lcom/kakao/sdk/common/util/PersistentKVStore;

    move-result-object v0

    invoke-interface {v0}, Lcom/kakao/sdk/common/util/PersistentKVStore;->commit()Lcom/kakao/sdk/common/util/PersistentKVStore;

    .line 1299
    iget-object v0, v1, Lcom/kakao/sdk/auth/TokenManager;->appCache:Lcom/kakao/sdk/common/util/PersistentKVStore;

    const-string v7, "com.kakao.token.KakaoSecureMode"

    const/4 v8, 0x0

    invoke-interface {v0, v7, v8}, Lcom/kakao/sdk/common/util/PersistentKVStore;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v9, "value"

    if-eqz v0, :cond_1

    .line 1309
    sget-object v10, Lcom/kakao/sdk/common/util/KakaoJson;->INSTANCE:Lcom/kakao/sdk/common/util/KakaoJson;

    .line 1899
    invoke-virtual {v10}, Lcom/kakao/sdk/common/util/KakaoJson;->getJson()Lkotlinx/serialization/json/Json;

    move-result-object v10

    .line 1909
    invoke-virtual {v10}, Lkotlinx/serialization/json/Json;->getSerializersModule()Lkotlinx/serialization/modules/SerializersModule;

    sget-object v11, Lkotlinx/serialization/json/JsonObject;->Companion:Lkotlinx/serialization/json/JsonObject$Companion;

    invoke-virtual {v11}, Lkotlinx/serialization/json/JsonObject$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    move-result-object v11

    check-cast v11, Lkotlinx/serialization/DeserializationStrategy;

    invoke-virtual {v10, v11, v0}, Lkotlinx/serialization/json/Json;->decodeFromString(Lkotlinx/serialization/DeserializationStrategy;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 1309
    check-cast v0, Lkotlinx/serialization/json/JsonObject;

    invoke-virtual {v0, v9}, Lkotlinx/serialization/json/JsonObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlinx/serialization/json/JsonElement;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lkotlinx/serialization/json/JsonElementKt;->getJsonPrimitive(Lkotlinx/serialization/json/JsonElement;)Lkotlinx/serialization/json/JsonPrimitive;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lkotlinx/serialization/json/JsonPrimitive;->getContent()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v8

    :goto_0
    if-nez v0, :cond_2

    :cond_1
    const-string v0, "false"

    :cond_2
    move-object v10, v0

    .line 1329
    sget-object v0, Lcom/kakao/sdk/common/util/SdkLog;->Companion:Lcom/kakao/sdk/common/util/SdkLog$Companion;

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "secureMode: "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0, v11}, Lcom/kakao/sdk/common/util/SdkLog$Companion;->i(Ljava/lang/Object;)V

    .line 1349
    :try_start_0
    iget-object v0, v1, Lcom/kakao/sdk/auth/TokenManager;->appCache:Lcom/kakao/sdk/common/util/PersistentKVStore;

    invoke-interface {v0, v6, v8}, Lcom/kakao/sdk/common/util/PersistentKVStore;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 1359
    sget-object v11, Lcom/kakao/sdk/common/util/KakaoJson;->INSTANCE:Lcom/kakao/sdk/common/util/KakaoJson;

    .line 1939
    invoke-virtual {v11}, Lcom/kakao/sdk/common/util/KakaoJson;->getJson()Lkotlinx/serialization/json/Json;

    move-result-object v11

    .line 1949
    invoke-virtual {v11}, Lkotlinx/serialization/json/Json;->getSerializersModule()Lkotlinx/serialization/modules/SerializersModule;

    sget-object v12, Lkotlinx/serialization/json/JsonObject;->Companion:Lkotlinx/serialization/json/JsonObject$Companion;

    invoke-virtual {v12}, Lkotlinx/serialization/json/JsonObject$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    move-result-object v12

    check-cast v12, Lkotlinx/serialization/DeserializationStrategy;

    invoke-virtual {v11, v12, v0}, Lkotlinx/serialization/json/Json;->decodeFromString(Lkotlinx/serialization/DeserializationStrategy;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 1359
    check-cast v0, Lkotlinx/serialization/json/JsonObject;

    invoke-virtual {v0, v9}, Lkotlinx/serialization/json/JsonObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlinx/serialization/json/JsonElement;

    if-eqz v0, :cond_3

    invoke-static {v0}, Lkotlinx/serialization/json/JsonElementKt;->getJsonPrimitive(Lkotlinx/serialization/json/JsonElement;)Lkotlinx/serialization/json/JsonPrimitive;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lkotlinx/serialization/json/JsonPrimitive;->getContent()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_3
    move-object v0, v8

    :goto_1
    if-eqz v0, :cond_5

    .line 1369
    invoke-static {v10, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_5

    iget-object v11, v1, Lcom/kakao/sdk/auth/TokenManager;->encryptor:Lcom/kakao/sdk/common/util/Cipher;

    invoke-interface {v11, v0}, Lcom/kakao/sdk/common/util/Cipher;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :cond_4
    move-object v0, v8

    :cond_5
    :goto_2
    move-object v13, v0

    goto :goto_3

    :catch_0
    move-exception v0

    .line 1969
    sget-object v11, Lcom/kakao/sdk/common/util/SdkLog;->Companion:Lcom/kakao/sdk/common/util/SdkLog$Companion;

    invoke-virtual {v11, v0}, Lcom/kakao/sdk/common/util/SdkLog$Companion;->e(Ljava/lang/Object;)V

    move-object v13, v8

    .line 1399
    :goto_3
    sget-object v0, Lcom/kakao/sdk/common/util/SdkLog;->Companion:Lcom/kakao/sdk/common/util/SdkLog$Companion;

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "accessToken: "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0, v11}, Lcom/kakao/sdk/common/util/SdkLog$Companion;->i(Ljava/lang/Object;)V

    .line 1419
    :try_start_1
    iget-object v0, v1, Lcom/kakao/sdk/auth/TokenManager;->appCache:Lcom/kakao/sdk/common/util/PersistentKVStore;

    invoke-interface {v0, v5, v8}, Lcom/kakao/sdk/common/util/PersistentKVStore;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 1429
    sget-object v11, Lcom/kakao/sdk/common/util/KakaoJson;->INSTANCE:Lcom/kakao/sdk/common/util/KakaoJson;

    .line 2019
    invoke-virtual {v11}, Lcom/kakao/sdk/common/util/KakaoJson;->getJson()Lkotlinx/serialization/json/Json;

    move-result-object v11

    .line 2029
    invoke-virtual {v11}, Lkotlinx/serialization/json/Json;->getSerializersModule()Lkotlinx/serialization/modules/SerializersModule;

    sget-object v12, Lkotlinx/serialization/json/JsonObject;->Companion:Lkotlinx/serialization/json/JsonObject$Companion;

    invoke-virtual {v12}, Lkotlinx/serialization/json/JsonObject$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    move-result-object v12

    check-cast v12, Lkotlinx/serialization/DeserializationStrategy;

    invoke-virtual {v11, v12, v0}, Lkotlinx/serialization/json/Json;->decodeFromString(Lkotlinx/serialization/DeserializationStrategy;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 1429
    check-cast v0, Lkotlinx/serialization/json/JsonObject;

    invoke-virtual {v0, v9}, Lkotlinx/serialization/json/JsonObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlinx/serialization/json/JsonElement;

    if-eqz v0, :cond_6

    invoke-static {v0}, Lkotlinx/serialization/json/JsonElementKt;->getJsonPrimitive(Lkotlinx/serialization/json/JsonElement;)Lkotlinx/serialization/json/JsonPrimitive;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lkotlinx/serialization/json/JsonPrimitive;->getContent()Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    :cond_6
    move-object v0, v8

    :goto_4
    if-eqz v0, :cond_8

    .line 1439
    invoke-static {v10, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    iget-object v2, v1, Lcom/kakao/sdk/auth/TokenManager;->encryptor:Lcom/kakao/sdk/common/util/Cipher;

    invoke-interface {v2, v0}, Lcom/kakao/sdk/common/util/Cipher;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_5

    :cond_7
    move-object v0, v8

    :cond_8
    :goto_5
    move-object v15, v0

    goto :goto_6

    :catch_1
    move-exception v0

    .line 2049
    sget-object v2, Lcom/kakao/sdk/common/util/SdkLog;->Companion:Lcom/kakao/sdk/common/util/SdkLog$Companion;

    invoke-virtual {v2, v0}, Lcom/kakao/sdk/common/util/SdkLog$Companion;->e(Ljava/lang/Object;)V

    move-object v15, v8

    .line 1469
    :goto_6
    sget-object v0, Lcom/kakao/sdk/common/util/SdkLog;->Companion:Lcom/kakao/sdk/common/util/SdkLog$Companion;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v10, "refreshToken: "

    invoke-direct {v2, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/kakao/sdk/common/util/SdkLog$Companion;->i(Ljava/lang/Object;)V

    .line 1489
    :try_start_2
    iget-object v0, v1, Lcom/kakao/sdk/auth/TokenManager;->appCache:Lcom/kakao/sdk/common/util/PersistentKVStore;

    invoke-interface {v0, v4, v8}, Lcom/kakao/sdk/common/util/PersistentKVStore;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 1499
    sget-object v2, Lcom/kakao/sdk/common/util/KakaoJson;->INSTANCE:Lcom/kakao/sdk/common/util/KakaoJson;

    .line 2099
    invoke-virtual {v2}, Lcom/kakao/sdk/common/util/KakaoJson;->getJson()Lkotlinx/serialization/json/Json;

    move-result-object v2

    .line 2109
    invoke-virtual {v2}, Lkotlinx/serialization/json/Json;->getSerializersModule()Lkotlinx/serialization/modules/SerializersModule;

    sget-object v10, Lkotlinx/serialization/json/JsonObject;->Companion:Lkotlinx/serialization/json/JsonObject$Companion;

    invoke-virtual {v10}, Lkotlinx/serialization/json/JsonObject$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    move-result-object v10

    check-cast v10, Lkotlinx/serialization/DeserializationStrategy;

    invoke-virtual {v2, v10, v0}, Lkotlinx/serialization/json/Json;->decodeFromString(Lkotlinx/serialization/DeserializationStrategy;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 1499
    check-cast v0, Lkotlinx/serialization/json/JsonObject;

    invoke-virtual {v0, v9}, Lkotlinx/serialization/json/JsonObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlinx/serialization/json/JsonElement;

    if-eqz v0, :cond_9

    invoke-static {v0}, Lkotlinx/serialization/json/JsonElementKt;->getJsonPrimitive(Lkotlinx/serialization/json/JsonElement;)Lkotlinx/serialization/json/JsonPrimitive;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-static {v0}, Lkotlinx/serialization/json/JsonElementKt;->getLong(Lkotlinx/serialization/json/JsonPrimitive;)J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_7

    :catch_2
    move-exception v0

    .line 2129
    sget-object v2, Lcom/kakao/sdk/common/util/SdkLog;->Companion:Lcom/kakao/sdk/common/util/SdkLog$Companion;

    invoke-virtual {v2, v0}, Lcom/kakao/sdk/common/util/SdkLog$Companion;->e(Ljava/lang/Object;)V

    :cond_9
    move-object v0, v8

    :goto_7
    if-eqz v0, :cond_a

    .line 1479
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    goto :goto_8

    :cond_a
    const-wide/16 v10, 0x0

    .line 1539
    :goto_8
    :try_start_3
    iget-object v0, v1, Lcom/kakao/sdk/auth/TokenManager;->appCache:Lcom/kakao/sdk/common/util/PersistentKVStore;

    invoke-interface {v0, v3, v8}, Lcom/kakao/sdk/common/util/PersistentKVStore;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 1549
    sget-object v2, Lcom/kakao/sdk/common/util/KakaoJson;->INSTANCE:Lcom/kakao/sdk/common/util/KakaoJson;

    .line 2179
    invoke-virtual {v2}, Lcom/kakao/sdk/common/util/KakaoJson;->getJson()Lkotlinx/serialization/json/Json;

    move-result-object v2

    .line 2189
    invoke-virtual {v2}, Lkotlinx/serialization/json/Json;->getSerializersModule()Lkotlinx/serialization/modules/SerializersModule;

    sget-object v12, Lkotlinx/serialization/json/JsonObject;->Companion:Lkotlinx/serialization/json/JsonObject$Companion;

    invoke-virtual {v12}, Lkotlinx/serialization/json/JsonObject$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    move-result-object v12

    check-cast v12, Lkotlinx/serialization/DeserializationStrategy;

    invoke-virtual {v2, v12, v0}, Lkotlinx/serialization/json/Json;->decodeFromString(Lkotlinx/serialization/DeserializationStrategy;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 1549
    check-cast v0, Lkotlinx/serialization/json/JsonObject;

    invoke-virtual {v0, v9}, Lkotlinx/serialization/json/JsonObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlinx/serialization/json/JsonElement;

    if-eqz v0, :cond_b

    invoke-static {v0}, Lkotlinx/serialization/json/JsonElementKt;->getJsonPrimitive(Lkotlinx/serialization/json/JsonElement;)Lkotlinx/serialization/json/JsonPrimitive;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-static {v0}, Lkotlinx/serialization/json/JsonElementKt;->getLong(Lkotlinx/serialization/json/JsonPrimitive;)J

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_9

    :catch_3
    move-exception v0

    .line 2209
    sget-object v2, Lcom/kakao/sdk/common/util/SdkLog;->Companion:Lcom/kakao/sdk/common/util/SdkLog$Companion;

    invoke-virtual {v2, v0}, Lcom/kakao/sdk/common/util/SdkLog$Companion;->e(Ljava/lang/Object;)V

    :cond_b
    :goto_9
    if-eqz v8, :cond_c

    .line 1529
    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    goto :goto_a

    :cond_c
    const-wide v8, 0x7fffffffffffffffL

    :goto_a
    if-eqz v13, :cond_d

    if-eqz v15, :cond_d

    .line 1599
    new-instance v0, Lcom/kakao/sdk/auth/model/OAuthToken;

    .line 1619
    new-instance v14, Ljava/util/Date;

    invoke-direct {v14, v10, v11}, Ljava/util/Date;-><init>(J)V

    .line 1639
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2, v8, v9}, Ljava/util/Date;-><init>(J)V

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x30

    const/16 v20, 0x0

    move-object v12, v0

    move-object/from16 v16, v2

    .line 1599
    invoke-direct/range {v12 .. v20}, Lcom/kakao/sdk/auth/model/OAuthToken;-><init>(Ljava/lang/String;Ljava/util/Date;Ljava/lang/String;Ljava/util/Date;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 1659
    iget-object v2, v1, Lcom/kakao/sdk/auth/TokenManager;->appCache:Lcom/kakao/sdk/common/util/PersistentKVStore;

    .line 1669
    iget-object v8, v1, Lcom/kakao/sdk/auth/TokenManager;->encryptor:Lcom/kakao/sdk/common/util/Cipher;

    sget-object v9, Lcom/kakao/sdk/common/util/KakaoJson;->INSTANCE:Lcom/kakao/sdk/common/util/KakaoJson;

    .line 2239
    invoke-virtual {v9}, Lcom/kakao/sdk/common/util/KakaoJson;->getJson()Lkotlinx/serialization/json/Json;

    move-result-object v9

    check-cast v9, Lkotlinx/serialization/StringFormat;

    .line 2249
    invoke-interface {v9}, Lkotlinx/serialization/StringFormat;->getSerializersModule()Lkotlinx/serialization/modules/SerializersModule;

    sget-object v10, Lcom/kakao/sdk/auth/model/OAuthToken;->Companion:Lcom/kakao/sdk/auth/model/OAuthToken$Companion;

    invoke-virtual {v10}, Lcom/kakao/sdk/auth/model/OAuthToken$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    move-result-object v10

    check-cast v10, Lkotlinx/serialization/SerializationStrategy;

    invoke-interface {v9, v10, v0}, Lkotlinx/serialization/StringFormat;->encodeToString(Lkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1669
    invoke-interface {v8, v0}, Lcom/kakao/sdk/common/util/Cipher;->encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v8, "com.kakao.sdk.oauth_token"

    invoke-interface {v2, v8, v0}, Lcom/kakao/sdk/common/util/PersistentKVStore;->putString(Ljava/lang/String;Ljava/lang/String;)Lcom/kakao/sdk/common/util/PersistentKVStore;

    move-result-object v0

    .line 1679
    invoke-interface {v0, v7}, Lcom/kakao/sdk/common/util/PersistentKVStore;->remove(Ljava/lang/String;)Lcom/kakao/sdk/common/util/PersistentKVStore;

    move-result-object v0

    .line 1689
    invoke-interface {v0, v6}, Lcom/kakao/sdk/common/util/PersistentKVStore;->remove(Ljava/lang/String;)Lcom/kakao/sdk/common/util/PersistentKVStore;

    move-result-object v0

    .line 1699
    invoke-interface {v0, v5}, Lcom/kakao/sdk/common/util/PersistentKVStore;->remove(Ljava/lang/String;)Lcom/kakao/sdk/common/util/PersistentKVStore;

    move-result-object v0

    .line 1709
    invoke-interface {v0, v4}, Lcom/kakao/sdk/common/util/PersistentKVStore;->remove(Ljava/lang/String;)Lcom/kakao/sdk/common/util/PersistentKVStore;

    move-result-object v0

    .line 1719
    invoke-interface {v0, v3}, Lcom/kakao/sdk/common/util/PersistentKVStore;->remove(Ljava/lang/String;)Lcom/kakao/sdk/common/util/PersistentKVStore;

    move-result-object v0

    .line 1729
    invoke-interface {v0}, Lcom/kakao/sdk/common/util/PersistentKVStore;->commit()Lcom/kakao/sdk/common/util/PersistentKVStore;

    :cond_d
    return-void

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public clear()V
    .locals 2

    const/4 v0, 0x0

    .line 919
    iput-object v0, p0, Lcom/kakao/sdk/auth/TokenManager;->currentToken:Lcom/kakao/sdk/auth/model/OAuthToken;

    .line 929
    iget-object v0, p0, Lcom/kakao/sdk/auth/TokenManager;->appCache:Lcom/kakao/sdk/common/util/PersistentKVStore;

    const-string v1, "com.kakao.sdk.oauth_token"

    invoke-interface {v0, v1}, Lcom/kakao/sdk/common/util/PersistentKVStore;->remove(Ljava/lang/String;)Lcom/kakao/sdk/common/util/PersistentKVStore;

    move-result-object v0

    invoke-interface {v0}, Lcom/kakao/sdk/common/util/PersistentKVStore;->commit()Lcom/kakao/sdk/common/util/PersistentKVStore;

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public final getAppCache()Lcom/kakao/sdk/common/util/PersistentKVStore;
    .locals 1

    .line 419
    iget-object v0, p0, Lcom/kakao/sdk/auth/TokenManager;->appCache:Lcom/kakao/sdk/common/util/PersistentKVStore;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final getEncryptor()Lcom/kakao/sdk/common/util/Cipher;
    .locals 1

    .line 459
    iget-object v0, p0, Lcom/kakao/sdk/auth/TokenManager;->encryptor:Lcom/kakao/sdk/common/util/Cipher;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getToken()Lcom/kakao/sdk/auth/model/OAuthToken;
    .locals 1

    .line 689
    iget-object v0, p0, Lcom/kakao/sdk/auth/TokenManager;->currentToken:Lcom/kakao/sdk/auth/model/OAuthToken;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public declared-synchronized setToken(Lcom/kakao/sdk/auth/model/OAuthToken;)V
    .locals 10

    monitor-enter p0

    :try_start_0
    const-string/jumbo v0, "token"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, 0x3f

    const/4 v9, 0x0

    move-object v1, p1

    .line 789
    invoke-static/range {v1 .. v9}, Lcom/kakao/sdk/auth/model/OAuthToken;->copy$default(Lcom/kakao/sdk/auth/model/OAuthToken;Ljava/lang/String;Ljava/util/Date;Ljava/lang/String;Ljava/util/Date;Ljava/lang/String;Ljava/util/List;ILjava/lang/Object;)Lcom/kakao/sdk/auth/model/OAuthToken;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 809
    :try_start_1
    iget-object v0, p0, Lcom/kakao/sdk/auth/TokenManager;->appCache:Lcom/kakao/sdk/common/util/PersistentKVStore;

    const-string v1, "com.kakao.sdk.oauth_token"

    iget-object v2, p0, Lcom/kakao/sdk/auth/TokenManager;->encryptor:Lcom/kakao/sdk/common/util/Cipher;

    sget-object v3, Lcom/kakao/sdk/common/util/KakaoJson;->INSTANCE:Lcom/kakao/sdk/common/util/KakaoJson;

    .line 1879
    invoke-virtual {v3}, Lcom/kakao/sdk/common/util/KakaoJson;->getJson()Lkotlinx/serialization/json/Json;

    move-result-object v3

    check-cast v3, Lkotlinx/serialization/StringFormat;

    .line 1889
    invoke-interface {v3}, Lkotlinx/serialization/StringFormat;->getSerializersModule()Lkotlinx/serialization/modules/SerializersModule;

    sget-object v4, Lcom/kakao/sdk/auth/model/OAuthToken;->Companion:Lcom/kakao/sdk/auth/model/OAuthToken$Companion;

    invoke-virtual {v4}, Lcom/kakao/sdk/auth/model/OAuthToken$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    move-result-object v4

    check-cast v4, Lkotlinx/serialization/SerializationStrategy;

    invoke-interface {v3, v4, p1}, Lkotlinx/serialization/StringFormat;->encodeToString(Lkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 809
    invoke-interface {v2, v3}, Lcom/kakao/sdk/common/util/Cipher;->encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/kakao/sdk/common/util/PersistentKVStore;->putString(Ljava/lang/String;Ljava/lang/String;)Lcom/kakao/sdk/common/util/PersistentKVStore;

    move-result-object v0

    invoke-interface {v0}, Lcom/kakao/sdk/common/util/PersistentKVStore;->commit()Lcom/kakao/sdk/common/util/PersistentKVStore;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 829
    :try_start_2
    sget-object v1, Lcom/kakao/sdk/common/util/SdkLog;->Companion:Lcom/kakao/sdk/common/util/SdkLog$Companion;

    invoke-virtual {v1, v0}, Lcom/kakao/sdk/common/util/SdkLog$Companion;->e(Ljava/lang/Object;)V

    .line 849
    :goto_0
    iput-object p1, p0, Lcom/kakao/sdk/auth/TokenManager;->currentToken:Lcom/kakao/sdk/auth/model/OAuthToken;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 859
    monitor-exit p0

    return-void

    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1

    nop

    .array-data 1
    .end array-data
.end method
