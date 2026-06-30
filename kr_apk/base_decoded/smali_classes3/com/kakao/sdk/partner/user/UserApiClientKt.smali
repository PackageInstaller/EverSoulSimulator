.class public final Lcom/kakao/sdk/partner/user/UserApiClientKt;
.super Ljava/lang/Object;
.source "UserApiClient.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nUserApiClient.kt\nKotlin\n*S Kotlin\n*F\n+ 1 UserApiClient.kt\ncom/kakao/sdk/partner/user/UserApiClientKt\n+ 2 KakaoJson.kt\ncom/kakao/sdk/common/util/KakaoJson\n+ 3 SerialFormat.kt\nkotlinx/serialization/SerialFormatKt\n+ 4 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 5 JsonElementBuilders.kt\nkotlinx/serialization/json/JsonElementBuildersKt\n+ 6 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 7 Json.kt\nkotlinx/serialization/json/JsonKt\n*L\n1#1,226:1\n46#2:227\n56#2:230\n53#2:235\n46#2:239\n46#2:241\n113#3:228\n113#3:240\n113#3:242\n1#4:229\n28#5,3:231\n31#5:238\n1855#6:234\n1856#6:237\n211#7:236\n*S KotlinDebug\n*F\n+ 1 UserApiClient.kt\ncom/kakao/sdk/partner/user/UserApiClientKt\n*L\n101#1:227\n120#1:230\n120#1:235\n145#1:239\n167#1:241\n101#1:228\n145#1:240\n167#1:242\n120#1:231,3\n120#1:238\n120#1:234\n120#1:237\n120#1:236\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u008e\u0001\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0003\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0010\t\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010$\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u001aw\u0010\t\u001a\u00020\n*\u00020\u00022\n\u0008\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u000c2\u0010\u0008\u0002\u0010\r\u001a\n\u0012\u0004\u0012\u00020\u000f\u0018\u00010\u000e2\n\u0008\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u00112:\u0010\u0012\u001a6\u0012\u0015\u0012\u0013\u0018\u00010\u0014\u00a2\u0006\u000c\u0008\u0015\u0012\u0008\u0008\u0016\u0012\u0004\u0008\u0008(\u0017\u0012\u0015\u0012\u0013\u0018\u00010\u0018\u00a2\u0006\u000c\u0008\u0015\u0012\u0008\u0008\u0016\u0012\u0004\u0008\u0008(\u0019\u0012\u0004\u0012\u00020\n0\u0013H\u0007\u00a2\u0006\u0002\u0010\u001a\u001aN\u0010\u001b\u001a\u00020\n*\u00020\u00022\u0006\u0010\u001c\u001a\u00020\u001d2:\u0010\u0012\u001a6\u0012\u0015\u0012\u0013\u0018\u00010\u001e\u00a2\u0006\u000c\u0008\u0015\u0012\u0008\u0008\u0016\u0012\u0004\u0008\u0008(\u001f\u0012\u0015\u0012\u0013\u0018\u00010\u0018\u00a2\u0006\u000c\u0008\u0015\u0012\u0008\u0008\u0016\u0012\u0004\u0008\u0008(\u0019\u0012\u0004\u0012\u00020\n0\u0013\u001a\u009e\u0001\u0010 \u001a\u00020\n*\u00020\u00022\u0006\u0010\u001c\u001a\u00020\u001d2\u0010\u0008\u0002\u0010!\u001a\n\u0012\u0004\u0012\u00020\"\u0018\u00010\u000e2\n\u0008\u0002\u0010#\u001a\u0004\u0018\u00010\u000f2\n\u0008\u0002\u0010$\u001a\u0004\u0018\u00010\u000f2\u0010\u0008\u0002\u0010%\u001a\n\u0012\u0004\u0012\u00020\u000f\u0018\u00010\u000e2\u0010\u0008\u0002\u0010&\u001a\n\u0012\u0004\u0012\u00020\u000f\u0018\u00010\u000e2:\u0010\u0012\u001a6\u0012\u0015\u0012\u0013\u0018\u00010\'\u00a2\u0006\u000c\u0008\u0015\u0012\u0008\u0008\u0016\u0012\u0004\u0008\u0008((\u0012\u0015\u0012\u0013\u0018\u00010\u0018\u00a2\u0006\u000c\u0008\u0015\u0012\u0008\u0008\u0016\u0012\u0004\u0008\u0008(\u0019\u0012\u0004\u0012\u00020\n0\u0013H\u0007\u001ad\u0010)\u001a\u00020\n*\u00020\u00022\u0010\u0008\u0002\u0010\r\u001a\n\u0012\u0004\u0012\u00020\u000f\u0018\u00010\u000e2\u0008\u0008\u0002\u0010*\u001a\u00020+2:\u0010\u0012\u001a6\u0012\u0015\u0012\u0013\u0018\u00010,\u00a2\u0006\u000c\u0008\u0015\u0012\u0008\u0008\u0016\u0012\u0004\u0008\u0008(-\u0012\u0015\u0012\u0013\u0018\u00010\u0018\u00a2\u0006\u000c\u0008\u0015\u0012\u0008\u0008\u0016\u0012\u0004\u0008\u0008(\u0019\u0012\u0004\u0012\u00020\n0\u0013H\u0007\u001aI\u0010.\u001a\u00020\n*\u00020\u00022\u0016\u0008\u0002\u0010/\u001a\u0010\u0012\u0004\u0012\u00020\u000f\u0012\u0004\u0012\u00020\u000f\u0018\u0001002#\u0010\u0012\u001a\u001f\u0012\u0015\u0012\u0013\u0018\u00010\u0018\u00a2\u0006\u000c\u0008\u0015\u0012\u0008\u0008\u0016\u0012\u0004\u0008\u0008(\u0019\u0012\u0004\u0012\u00020\n01H\u0007\u001aV\u00102\u001a\u00020\n*\u00020\u00022\u0006\u0010\u001c\u001a\u00020\u001d2\u0006\u0010\u001f\u001a\u00020\u001e2:\u0010\u0012\u001a6\u0012\u0015\u0012\u0013\u0018\u00010\u001e\u00a2\u0006\u000c\u0008\u0015\u0012\u0008\u0008\u0016\u0012\u0004\u0008\u0008(\u001f\u0012\u0015\u0012\u0013\u0018\u00010\u0018\u00a2\u0006\u000c\u0008\u0015\u0012\u0008\u0008\u0016\u0012\u0004\u0008\u0008(\u0019\u0012\u0004\u0012\u00020\n0\u0013\u001ab\u00103\u001a\u00020\n*\u00020\u00022\u000c\u00104\u001a\u0008\u0012\u0004\u0012\u00020\u000f0\u000e2\n\u0008\u0002\u00105\u001a\u0004\u0018\u00010\u000f2:\u0010\u0012\u001a6\u0012\u0015\u0012\u0013\u0018\u000106\u00a2\u0006\u000c\u0008\u0015\u0012\u0008\u0008\u0016\u0012\u0004\u0008\u0008(\u0017\u0012\u0015\u0012\u0013\u0018\u00010\u0018\u00a2\u0006\u000c\u0008\u0015\u0012\u0008\u0008\u0016\u0012\u0004\u0008\u0008(\u0019\u0012\u0004\u0012\u00020\n0\u0013H\u0007\u001ax\u00107\u001a\u00020\n*\u00020\u00022\u0006\u0010\u001c\u001a\u00020\u001d2\n\u0008\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u000c2\n\u0008\u0002\u00108\u001a\u0004\u0018\u0001092\n\u0008\u0002\u0010:\u001a\u0004\u0018\u00010+2\n\u0008\u0002\u0010;\u001a\u0004\u0018\u00010+2\n\u0008\u0002\u0010<\u001a\u0004\u0018\u00010+2#\u0010\u0012\u001a\u001f\u0012\u0015\u0012\u0013\u0018\u00010\u0018\u00a2\u0006\u000c\u0008\u0015\u0012\u0008\u0008\u0016\u0012\u0004\u0008\u0008(\u0019\u0012\u0004\u0012\u00020\n01\u00a2\u0006\u0002\u0010=\"\u0015\u0010\u0000\u001a\u00020\u0001*\u00020\u00028F\u00a2\u0006\u0006\u001a\u0004\u0008\u0003\u0010\u0004\"\u0015\u0010\u0005\u001a\u00020\u0006*\u00020\u00028F\u00a2\u0006\u0006\u001a\u0004\u0008\u0007\u0010\u0008\u00a8\u0006>"
    }
    d2 = {
        "partnerApi",
        "Lcom/kakao/sdk/partner/user/PartnerUserApi;",
        "Lcom/kakao/sdk/user/UserApiClient;",
        "getPartnerApi",
        "(Lcom/kakao/sdk/user/UserApiClient;)Lcom/kakao/sdk/partner/user/PartnerUserApi;",
        "partnerSignupApi",
        "Lcom/kakao/sdk/user/UserApi;",
        "getPartnerSignupApi",
        "(Lcom/kakao/sdk/user/UserApiClient;)Lcom/kakao/sdk/user/UserApi;",
        "ageAuthInfo",
        "",
        "ageLimit",
        "",
        "propertyKeys",
        "",
        "",
        "ageCriteria",
        "Lcom/kakao/sdk/partner/user/model/AgeCriteria;",
        "callback",
        "Lkotlin/Function2;",
        "Lcom/kakao/sdk/partner/user/model/AgeAuthInfo;",
        "Lkotlin/ParameterName;",
        "name",
        "info",
        "",
        "error",
        "(Lcom/kakao/sdk/user/UserApiClient;Ljava/lang/Integer;Ljava/util/List;Lcom/kakao/sdk/partner/user/model/AgeCriteria;Lkotlin/jvm/functions/Function2;)V",
        "createShippingAddress",
        "context",
        "Landroid/content/Context;",
        "",
        "addressId",
        "loginWithKakaoAccount",
        "prompts",
        "Lcom/kakao/sdk/auth/model/Prompt;",
        "loginHint",
        "nonce",
        "channelPublicIds",
        "serviceTerms",
        "Lcom/kakao/sdk/auth/model/OAuthToken;",
        "token",
        "meForPartner",
        "secureReSource",
        "",
        "Lcom/kakao/sdk/partner/user/model/PartnerUser;",
        "user",
        "signupForPartner",
        "properties",
        "",
        "Lkotlin/Function1;",
        "updateShippingAddress",
        "upgradeScopes",
        "scopes",
        "guardianToken",
        "Lcom/kakao/sdk/user/model/ScopeInfo;",
        "verifyAge",
        "authLevel",
        "Lcom/kakao/sdk/partner/user/model/AgeAuthLevel;",
        "skipTerms",
        "adultsOnly",
        "underAge",
        "(Lcom/kakao/sdk/user/UserApiClient;Landroid/content/Context;Ljava/lang/Integer;Lcom/kakao/sdk/partner/user/model/AgeAuthLevel;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Lkotlin/jvm/functions/Function1;)V",
        "partner-user_release"
    }
    k = 0x2
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static final ageAuthInfo(Lcom/kakao/sdk/user/UserApiClient;Ljava/lang/Integer;Ljava/util/List;Lcom/kakao/sdk/partner/user/model/AgeCriteria;Lkotlin/jvm/functions/Function2;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/kakao/sdk/user/UserApiClient;",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/kakao/sdk/partner/user/model/AgeCriteria;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lcom/kakao/sdk/partner/user/model/AgeAuthInfo;",
            "-",
            "Ljava/lang/Throwable;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1439
    invoke-static {p0}, Lcom/kakao/sdk/partner/user/UserApiClientKt;->getPartnerApi(Lcom/kakao/sdk/user/UserApiClient;)Lcom/kakao/sdk/partner/user/PartnerUserApi;

    move-result-object p0

    if-nez p2, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    .line 1459
    :cond_0
    sget-object v0, Lcom/kakao/sdk/common/util/KakaoJson;->INSTANCE:Lcom/kakao/sdk/common/util/KakaoJson;

    .line 2399
    invoke-virtual {v0}, Lcom/kakao/sdk/common/util/KakaoJson;->getJson()Lkotlinx/serialization/json/Json;

    move-result-object v0

    check-cast v0, Lkotlinx/serialization/StringFormat;

    .line 2409
    invoke-interface {v0}, Lkotlinx/serialization/StringFormat;->getSerializersModule()Lkotlinx/serialization/modules/SerializersModule;

    new-instance v1, Lkotlinx/serialization/internal/ArrayListSerializer;

    sget-object v2, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    invoke-direct {v1, v2}, Lkotlinx/serialization/internal/ArrayListSerializer;-><init>(Lkotlinx/serialization/KSerializer;)V

    check-cast v1, Lkotlinx/serialization/SerializationStrategy;

    invoke-interface {v0, v1, p2}, Lkotlinx/serialization/StringFormat;->encodeToString(Lkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 1439
    :goto_0
    invoke-interface {p0, p1, p2, p3}, Lcom/kakao/sdk/partner/user/PartnerUserApi;->ageAuthInfo(Ljava/lang/Integer;Ljava/lang/String;Lcom/kakao/sdk/partner/user/model/AgeCriteria;)Lretrofit2/Call;

    move-result-object p0

    .line 1479
    new-instance p1, Lcom/kakao/sdk/partner/user/UserApiClientKt$ageAuthInfo$1;

    invoke-direct {p1, p4}, Lcom/kakao/sdk/partner/user/UserApiClientKt$ageAuthInfo$1;-><init>(Lkotlin/jvm/functions/Function2;)V

    check-cast p1, Lretrofit2/Callback;

    invoke-interface {p0, p1}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public static final ageAuthInfo(Lcom/kakao/sdk/user/UserApiClient;Ljava/lang/Integer;Ljava/util/List;Lkotlin/jvm/functions/Function2;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/kakao/sdk/user/UserApiClient;",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lcom/kakao/sdk/partner/user/model/AgeAuthInfo;",
            "-",
            "Ljava/lang/Throwable;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x0

    const/4 v6, 0x4

    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p3

    invoke-static/range {v1 .. v7}, Lcom/kakao/sdk/partner/user/UserApiClientKt;->ageAuthInfo$default(Lcom/kakao/sdk/user/UserApiClient;Ljava/lang/Integer;Ljava/util/List;Lcom/kakao/sdk/partner/user/model/AgeCriteria;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)V

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public static final ageAuthInfo(Lcom/kakao/sdk/user/UserApiClient;Ljava/lang/Integer;Lkotlin/jvm/functions/Function2;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/kakao/sdk/user/UserApiClient;",
            "Ljava/lang/Integer;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lcom/kakao/sdk/partner/user/model/AgeAuthInfo;",
            "-",
            "Ljava/lang/Throwable;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x6

    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v5, p2

    invoke-static/range {v1 .. v7}, Lcom/kakao/sdk/partner/user/UserApiClientKt;->ageAuthInfo$default(Lcom/kakao/sdk/user/UserApiClient;Ljava/lang/Integer;Ljava/util/List;Lcom/kakao/sdk/partner/user/model/AgeCriteria;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)V

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public static final ageAuthInfo(Lcom/kakao/sdk/user/UserApiClient;Lkotlin/jvm/functions/Function2;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/kakao/sdk/user/UserApiClient;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lcom/kakao/sdk/partner/user/model/AgeAuthInfo;",
            "-",
            "Ljava/lang/Throwable;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x7

    const/4 v7, 0x0

    move-object v1, p0

    move-object v5, p1

    invoke-static/range {v1 .. v7}, Lcom/kakao/sdk/partner/user/UserApiClientKt;->ageAuthInfo$default(Lcom/kakao/sdk/user/UserApiClient;Ljava/lang/Integer;Ljava/util/List;Lcom/kakao/sdk/partner/user/model/AgeCriteria;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)V

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public static synthetic ageAuthInfo$default(Lcom/kakao/sdk/user/UserApiClient;Ljava/lang/Integer;Ljava/util/List;Lcom/kakao/sdk/partner/user/model/AgeCriteria;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)V
    .locals 1

    and-int/lit8 p6, p5, 0x1

    const/4 v0, 0x0

    if-eqz p6, :cond_0

    move-object p1, v0

    :cond_0
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_1

    move-object p2, v0

    :cond_1
    and-int/lit8 p5, p5, 0x4

    if-eqz p5, :cond_2

    move-object p3, v0

    .line 1379
    :cond_2
    invoke-static {p0, p1, p2, p3, p4}, Lcom/kakao/sdk/partner/user/UserApiClientKt;->ageAuthInfo(Lcom/kakao/sdk/user/UserApiClient;Ljava/lang/Integer;Ljava/util/List;Lcom/kakao/sdk/partner/user/model/AgeCriteria;Lkotlin/jvm/functions/Function2;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method public static final createShippingAddress(Lcom/kakao/sdk/user/UserApiClient;Landroid/content/Context;Lkotlin/jvm/functions/Function2;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/kakao/sdk/user/UserApiClient;",
            "Landroid/content/Context;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Ljava/lang/Long;",
            "-",
            "Ljava/lang/Throwable;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "/user/create/address"

    const/4 v5, 0x0

    const/16 v6, 0x8

    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v4, p2

    .line 2139
    invoke-static/range {v1 .. v7}, Lcom/kakao/sdk/user/UserApiClient;->appsShippingAddress$default(Lcom/kakao/sdk/user/UserApiClient;Landroid/content/Context;Ljava/lang/String;Lkotlin/jvm/functions/Function2;Ljava/lang/Long;ILjava/lang/Object;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method public static final getPartnerApi(Lcom/kakao/sdk/user/UserApiClient;)Lcom/kakao/sdk/partner/user/PartnerUserApi;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 409
    sget-object p0, Lcom/kakao/sdk/network/ApiFactory;->INSTANCE:Lcom/kakao/sdk/network/ApiFactory;

    invoke-static {p0}, Lcom/kakao/sdk/auth/network/ApiFactoryKt;->getKapiWithOAuth(Lcom/kakao/sdk/network/ApiFactory;)Lretrofit2/Retrofit;

    move-result-object p0

    const-class v0, Lcom/kakao/sdk/partner/user/PartnerUserApi;

    invoke-virtual {p0, v0}, Lretrofit2/Retrofit;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    const-string v0, "ApiFactory.kapiWithOAuth\u2026rtnerUserApi::class.java)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lcom/kakao/sdk/partner/user/PartnerUserApi;

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static final getPartnerSignupApi(Lcom/kakao/sdk/user/UserApiClient;)Lcom/kakao/sdk/user/UserApi;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 469
    sget-object p0, Lcom/kakao/sdk/network/ApiFactory;->INSTANCE:Lcom/kakao/sdk/network/ApiFactory;

    invoke-static {p0}, Lcom/kakao/sdk/partner/user/network/ApiFactoryKt;->getSignupKapiWithOAuth(Lcom/kakao/sdk/network/ApiFactory;)Lretrofit2/Retrofit;

    move-result-object p0

    const-class v0, Lcom/kakao/sdk/user/UserApi;

    invoke-virtual {p0, v0}, Lretrofit2/Retrofit;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    const-string v0, "ApiFactory.signupKapiWit\u2026eate(UserApi::class.java)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lcom/kakao/sdk/user/UserApi;

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static final loginWithKakaoAccount(Lcom/kakao/sdk/user/UserApiClient;Landroid/content/Context;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Lkotlin/jvm/functions/Function2;)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/kakao/sdk/user/UserApiClient;",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "+",
            "Lcom/kakao/sdk/auth/model/Prompt;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lcom/kakao/sdk/auth/model/OAuthToken;",
            "-",
            "Ljava/lang/Throwable;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p7

    const-string v1, "<this>"

    move-object/from16 v2, p0

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "context"

    move-object/from16 v3, p1

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "callback"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 689
    sget-object v1, Lcom/kakao/sdk/auth/AuthCodeClient;->Companion:Lcom/kakao/sdk/auth/AuthCodeClient$Companion;

    invoke-virtual {v1}, Lcom/kakao/sdk/auth/AuthCodeClient$Companion;->codeVerifier()Ljava/lang/String;

    move-result-object v11

    .line 699
    sget-object v1, Lcom/kakao/sdk/auth/AuthCodeClient;->Companion:Lcom/kakao/sdk/auth/AuthCodeClient$Companion;

    invoke-virtual {v1}, Lcom/kakao/sdk/auth/AuthCodeClient$Companion;->getInstance()Lcom/kakao/sdk/auth/AuthCodeClient;

    move-result-object v2

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v12, 0x0

    new-instance v1, Lcom/kakao/sdk/partner/user/UserApiClientKt$loginWithKakaoAccount$1;

    invoke-direct {v1, v0, v11}, Lcom/kakao/sdk/partner/user/UserApiClientKt$loginWithKakaoAccount$1;-><init>(Lkotlin/jvm/functions/Function2;Ljava/lang/String;)V

    move-object v13, v1

    check-cast v13, Lkotlin/jvm/functions/Function2;

    const/16 v14, 0x214

    const/4 v15, 0x0

    move-object/from16 v4, p2

    move-object/from16 v6, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    move-object/from16 v10, p3

    invoke-static/range {v2 .. v15}, Lcom/kakao/sdk/auth/AuthCodeClient;->authorizeWithKakaoAccount$default(Lcom/kakao/sdk/auth/AuthCodeClient;Landroid/content/Context;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)V

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public static final loginWithKakaoAccount(Lcom/kakao/sdk/user/UserApiClient;Landroid/content/Context;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lkotlin/jvm/functions/Function2;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/kakao/sdk/user/UserApiClient;",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "+",
            "Lcom/kakao/sdk/auth/model/Prompt;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lcom/kakao/sdk/auth/model/OAuthToken;",
            "-",
            "Ljava/lang/Throwable;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<this>"

    move-object v1, p0

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    move-object v2, p1

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    move-object/from16 v8, p6

    invoke-static {v8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v7, 0x0

    const/16 v9, 0x20

    const/4 v10, 0x0

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object/from16 v6, p5

    invoke-static/range {v1 .. v10}, Lcom/kakao/sdk/partner/user/UserApiClientKt;->loginWithKakaoAccount$default(Lcom/kakao/sdk/user/UserApiClient;Landroid/content/Context;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method public static final loginWithKakaoAccount(Lcom/kakao/sdk/user/UserApiClient;Landroid/content/Context;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function2;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/kakao/sdk/user/UserApiClient;",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "+",
            "Lcom/kakao/sdk/auth/model/Prompt;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lcom/kakao/sdk/auth/model/OAuthToken;",
            "-",
            "Ljava/lang/Throwable;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<this>"

    move-object v1, p0

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    move-object v2, p1

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    move-object/from16 v8, p5

    invoke-static {v8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v9, 0x30

    const/4 v10, 0x0

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-static/range {v1 .. v10}, Lcom/kakao/sdk/partner/user/UserApiClientKt;->loginWithKakaoAccount$default(Lcom/kakao/sdk/user/UserApiClient;Landroid/content/Context;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)V

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public static final loginWithKakaoAccount(Lcom/kakao/sdk/user/UserApiClient;Landroid/content/Context;Ljava/util/List;Ljava/lang/String;Lkotlin/jvm/functions/Function2;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/kakao/sdk/user/UserApiClient;",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "+",
            "Lcom/kakao/sdk/auth/model/Prompt;",
            ">;",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lcom/kakao/sdk/auth/model/OAuthToken;",
            "-",
            "Ljava/lang/Throwable;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v9, 0x38

    const/4 v10, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v8, p4

    invoke-static/range {v1 .. v10}, Lcom/kakao/sdk/partner/user/UserApiClientKt;->loginWithKakaoAccount$default(Lcom/kakao/sdk/user/UserApiClient;Landroid/content/Context;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method public static final loginWithKakaoAccount(Lcom/kakao/sdk/user/UserApiClient;Landroid/content/Context;Ljava/util/List;Lkotlin/jvm/functions/Function2;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/kakao/sdk/user/UserApiClient;",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "+",
            "Lcom/kakao/sdk/auth/model/Prompt;",
            ">;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lcom/kakao/sdk/auth/model/OAuthToken;",
            "-",
            "Ljava/lang/Throwable;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v9, 0x3c

    const/4 v10, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v8, p3

    invoke-static/range {v1 .. v10}, Lcom/kakao/sdk/partner/user/UserApiClientKt;->loginWithKakaoAccount$default(Lcom/kakao/sdk/user/UserApiClient;Landroid/content/Context;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method public static final loginWithKakaoAccount(Lcom/kakao/sdk/user/UserApiClient;Landroid/content/Context;Lkotlin/jvm/functions/Function2;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/kakao/sdk/user/UserApiClient;",
            "Landroid/content/Context;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lcom/kakao/sdk/auth/model/OAuthToken;",
            "-",
            "Ljava/lang/Throwable;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v9, 0x3e

    const/4 v10, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v8, p2

    invoke-static/range {v1 .. v10}, Lcom/kakao/sdk/partner/user/UserApiClientKt;->loginWithKakaoAccount$default(Lcom/kakao/sdk/user/UserApiClient;Landroid/content/Context;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method public static synthetic loginWithKakaoAccount$default(Lcom/kakao/sdk/user/UserApiClient;Landroid/content/Context;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)V
    .locals 10

    and-int/lit8 v0, p8, 0x2

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move-object v4, v1

    goto :goto_0

    :cond_0
    move-object v4, p2

    :goto_0
    and-int/lit8 v0, p8, 0x4

    if-eqz v0, :cond_1

    move-object v5, v1

    goto :goto_1

    :cond_1
    move-object v5, p3

    :goto_1
    and-int/lit8 v0, p8, 0x8

    if-eqz v0, :cond_2

    move-object v6, v1

    goto :goto_2

    :cond_2
    move-object v6, p4

    :goto_2
    and-int/lit8 v0, p8, 0x10

    if-eqz v0, :cond_3

    move-object v7, v1

    goto :goto_3

    :cond_3
    move-object v7, p5

    :goto_3
    and-int/lit8 v0, p8, 0x20

    if-eqz v0, :cond_4

    move-object v8, v1

    goto :goto_4

    :cond_4
    move-object/from16 v8, p6

    :goto_4
    move-object v2, p0

    move-object v3, p1

    move-object/from16 v9, p7

    .line 599
    invoke-static/range {v2 .. v9}, Lcom/kakao/sdk/partner/user/UserApiClientKt;->loginWithKakaoAccount(Lcom/kakao/sdk/user/UserApiClient;Landroid/content/Context;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Lkotlin/jvm/functions/Function2;)V

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public static final meForPartner(Lcom/kakao/sdk/user/UserApiClient;Ljava/util/List;Lkotlin/jvm/functions/Function2;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/kakao/sdk/user/UserApiClient;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lcom/kakao/sdk/partner/user/model/PartnerUser;",
            "-",
            "Ljava/lang/Throwable;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v4, p2

    invoke-static/range {v1 .. v6}, Lcom/kakao/sdk/partner/user/UserApiClientKt;->meForPartner$default(Lcom/kakao/sdk/user/UserApiClient;Ljava/util/List;ZLkotlin/jvm/functions/Function2;ILjava/lang/Object;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method public static final meForPartner(Lcom/kakao/sdk/user/UserApiClient;Ljava/util/List;ZLkotlin/jvm/functions/Function2;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/kakao/sdk/user/UserApiClient;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lcom/kakao/sdk/partner/user/model/PartnerUser;",
            "-",
            "Ljava/lang/Throwable;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1009
    invoke-static {p0}, Lcom/kakao/sdk/partner/user/UserApiClientKt;->getPartnerApi(Lcom/kakao/sdk/user/UserApiClient;)Lcom/kakao/sdk/partner/user/PartnerUserApi;

    move-result-object p0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 1019
    :cond_0
    sget-object v0, Lcom/kakao/sdk/common/util/KakaoJson;->INSTANCE:Lcom/kakao/sdk/common/util/KakaoJson;

    .line 2279
    invoke-virtual {v0}, Lcom/kakao/sdk/common/util/KakaoJson;->getJson()Lkotlinx/serialization/json/Json;

    move-result-object v0

    check-cast v0, Lkotlinx/serialization/StringFormat;

    .line 2289
    invoke-interface {v0}, Lkotlinx/serialization/StringFormat;->getSerializersModule()Lkotlinx/serialization/modules/SerializersModule;

    new-instance v1, Lkotlinx/serialization/internal/ArrayListSerializer;

    sget-object v2, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    invoke-direct {v1, v2}, Lkotlinx/serialization/internal/ArrayListSerializer;-><init>(Lkotlinx/serialization/KSerializer;)V

    check-cast v1, Lkotlinx/serialization/SerializationStrategy;

    invoke-interface {v0, v1, p1}, Lkotlinx/serialization/StringFormat;->encodeToString(Lkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 1009
    :goto_0
    invoke-interface {p0, p1, p2}, Lcom/kakao/sdk/partner/user/PartnerUserApi;->me(Ljava/lang/String;Z)Lretrofit2/Call;

    move-result-object p0

    .line 1039
    new-instance p1, Lcom/kakao/sdk/partner/user/UserApiClientKt$meForPartner$1;

    invoke-direct {p1, p3}, Lcom/kakao/sdk/partner/user/UserApiClientKt$meForPartner$1;-><init>(Lkotlin/jvm/functions/Function2;)V

    check-cast p1, Lretrofit2/Callback;

    invoke-interface {p0, p1}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public static final meForPartner(Lcom/kakao/sdk/user/UserApiClient;Lkotlin/jvm/functions/Function2;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/kakao/sdk/user/UserApiClient;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lcom/kakao/sdk/partner/user/model/PartnerUser;",
            "-",
            "Ljava/lang/Throwable;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x3

    const/4 v6, 0x0

    move-object v1, p0

    move-object v4, p1

    invoke-static/range {v1 .. v6}, Lcom/kakao/sdk/partner/user/UserApiClientKt;->meForPartner$default(Lcom/kakao/sdk/user/UserApiClient;Ljava/util/List;ZLkotlin/jvm/functions/Function2;ILjava/lang/Object;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method public static synthetic meForPartner$default(Lcom/kakao/sdk/user/UserApiClient;Ljava/util/List;ZLkotlin/jvm/functions/Function2;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    const/4 p1, 0x0

    :cond_0
    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_1

    const/4 p2, 0x1

    .line 959
    :cond_1
    invoke-static {p0, p1, p2, p3}, Lcom/kakao/sdk/partner/user/UserApiClientKt;->meForPartner(Lcom/kakao/sdk/user/UserApiClient;Ljava/util/List;ZLkotlin/jvm/functions/Function2;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method public static final signupForPartner(Lcom/kakao/sdk/user/UserApiClient;Ljava/util/Map;Lkotlin/jvm/functions/Function1;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/kakao/sdk/user/UserApiClient;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Throwable;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_1

    .line 1209
    sget-object v0, Lcom/kakao/sdk/common/util/KakaoJson;->INSTANCE:Lcom/kakao/sdk/common/util/KakaoJson;

    .line 2329
    new-instance v0, Lkotlinx/serialization/json/JsonObjectBuilder;

    invoke-direct {v0}, Lkotlinx/serialization/json/JsonObjectBuilder;-><init>()V

    .line 2309
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    .line 2349
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 2309
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    sget-object v3, Lcom/kakao/sdk/common/util/KakaoJson;->INSTANCE:Lcom/kakao/sdk/common/util/KakaoJson;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    .line 2359
    invoke-virtual {v3}, Lcom/kakao/sdk/common/util/KakaoJson;->getJson()Lkotlinx/serialization/json/Json;

    move-result-object v3

    .line 2369
    invoke-virtual {v3}, Lkotlinx/serialization/json/Json;->getSerializersModule()Lkotlinx/serialization/modules/SerializersModule;

    sget-object v4, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    check-cast v4, Lkotlinx/serialization/SerializationStrategy;

    invoke-virtual {v3, v4, v1}, Lkotlinx/serialization/json/Json;->encodeToJsonElement(Lkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)Lkotlinx/serialization/json/JsonElement;

    move-result-object v1

    .line 2309
    invoke-virtual {v0, v2, v1}, Lkotlinx/serialization/json/JsonObjectBuilder;->put(Ljava/lang/String;Lkotlinx/serialization/json/JsonElement;)Lkotlinx/serialization/json/JsonElement;

    goto :goto_0

    .line 2389
    :cond_0
    invoke-virtual {v0}, Lkotlinx/serialization/json/JsonObjectBuilder;->build()Lkotlinx/serialization/json/JsonObject;

    move-result-object p1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    .line 1219
    :goto_1
    invoke-static {p0}, Lcom/kakao/sdk/partner/user/UserApiClientKt;->getPartnerSignupApi(Lcom/kakao/sdk/user/UserApiClient;)Lcom/kakao/sdk/user/UserApi;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/kakao/sdk/user/UserApi;->signup(Lkotlinx/serialization/json/JsonObject;)Lretrofit2/Call;

    move-result-object p0

    new-instance p1, Lcom/kakao/sdk/partner/user/UserApiClientKt$signupForPartner$1;

    invoke-direct {p1, p2}, Lcom/kakao/sdk/partner/user/UserApiClientKt$signupForPartner$1;-><init>(Lkotlin/jvm/functions/Function1;)V

    check-cast p1, Lretrofit2/Callback;

    invoke-interface {p0, p1}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public static final signupForPartner(Lcom/kakao/sdk/user/UserApiClient;Lkotlin/jvm/functions/Function1;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/kakao/sdk/user/UserApiClient;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Throwable;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p0, v0, p1, v1, v0}, Lcom/kakao/sdk/partner/user/UserApiClientKt;->signupForPartner$default(Lcom/kakao/sdk/user/UserApiClient;Ljava/util/Map;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method public static synthetic signupForPartner$default(Lcom/kakao/sdk/user/UserApiClient;Ljava/util/Map;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x1

    if-eqz p3, :cond_0

    const/4 p1, 0x0

    .line 1169
    :cond_0
    invoke-static {p0, p1, p2}, Lcom/kakao/sdk/partner/user/UserApiClientKt;->signupForPartner(Lcom/kakao/sdk/user/UserApiClient;Ljava/util/Map;Lkotlin/jvm/functions/Function1;)V

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public static final updateShippingAddress(Lcom/kakao/sdk/user/UserApiClient;Landroid/content/Context;JLkotlin/jvm/functions/Function2;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/kakao/sdk/user/UserApiClient;",
            "Landroid/content/Context;",
            "J",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Ljava/lang/Long;",
            "-",
            "Ljava/lang/Throwable;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "/user/edit/address"

    .line 2259
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p0, p1, v0, p4, p2}, Lcom/kakao/sdk/user/UserApiClient;->appsShippingAddress(Landroid/content/Context;Ljava/lang/String;Lkotlin/jvm/functions/Function2;Ljava/lang/Long;)V

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public static final upgradeScopes(Lcom/kakao/sdk/user/UserApiClient;Ljava/util/List;Ljava/lang/String;Lkotlin/jvm/functions/Function2;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/kakao/sdk/user/UserApiClient;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lcom/kakao/sdk/user/model/ScopeInfo;",
            "-",
            "Ljava/lang/Throwable;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "scopes"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1679
    invoke-static {p0}, Lcom/kakao/sdk/partner/user/UserApiClientKt;->getPartnerApi(Lcom/kakao/sdk/user/UserApiClient;)Lcom/kakao/sdk/partner/user/PartnerUserApi;

    move-result-object p0

    sget-object v0, Lcom/kakao/sdk/common/util/KakaoJson;->INSTANCE:Lcom/kakao/sdk/common/util/KakaoJson;

    .line 2419
    invoke-virtual {v0}, Lcom/kakao/sdk/common/util/KakaoJson;->getJson()Lkotlinx/serialization/json/Json;

    move-result-object v0

    check-cast v0, Lkotlinx/serialization/StringFormat;

    .line 2429
    invoke-interface {v0}, Lkotlinx/serialization/StringFormat;->getSerializersModule()Lkotlinx/serialization/modules/SerializersModule;

    new-instance v1, Lkotlinx/serialization/internal/ArrayListSerializer;

    sget-object v2, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    invoke-direct {v1, v2}, Lkotlinx/serialization/internal/ArrayListSerializer;-><init>(Lkotlinx/serialization/KSerializer;)V

    check-cast v1, Lkotlinx/serialization/SerializationStrategy;

    invoke-interface {v0, v1, p1}, Lkotlinx/serialization/StringFormat;->encodeToString(Lkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 1679
    invoke-interface {p0, p1, p2}, Lcom/kakao/sdk/partner/user/PartnerUserApi;->upgradeScopes(Ljava/lang/String;Ljava/lang/String;)Lretrofit2/Call;

    move-result-object p0

    .line 1689
    new-instance p1, Lcom/kakao/sdk/partner/user/UserApiClientKt$upgradeScopes$1;

    invoke-direct {p1, p3}, Lcom/kakao/sdk/partner/user/UserApiClientKt$upgradeScopes$1;-><init>(Lkotlin/jvm/functions/Function2;)V

    check-cast p1, Lretrofit2/Callback;

    invoke-interface {p0, p1}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method public static final upgradeScopes(Lcom/kakao/sdk/user/UserApiClient;Ljava/util/List;Lkotlin/jvm/functions/Function2;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/kakao/sdk/user/UserApiClient;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lcom/kakao/sdk/user/model/ScopeInfo;",
            "-",
            "Ljava/lang/Throwable;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "scopes"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v4, p2

    invoke-static/range {v1 .. v6}, Lcom/kakao/sdk/partner/user/UserApiClientKt;->upgradeScopes$default(Lcom/kakao/sdk/user/UserApiClient;Ljava/util/List;Ljava/lang/String;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)V

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public static synthetic upgradeScopes$default(Lcom/kakao/sdk/user/UserApiClient;Ljava/util/List;Ljava/lang/String;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_0

    const/4 p2, 0x0

    .line 1629
    :cond_0
    invoke-static {p0, p1, p2, p3}, Lcom/kakao/sdk/partner/user/UserApiClientKt;->upgradeScopes(Lcom/kakao/sdk/user/UserApiClient;Ljava/util/List;Ljava/lang/String;Lkotlin/jvm/functions/Function2;)V

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public static final verifyAge(Lcom/kakao/sdk/user/UserApiClient;Landroid/content/Context;Ljava/lang/Integer;Lcom/kakao/sdk/partner/user/model/AgeAuthLevel;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Lkotlin/jvm/functions/Function1;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/kakao/sdk/user/UserApiClient;",
            "Landroid/content/Context;",
            "Ljava/lang/Integer;",
            "Lcom/kakao/sdk/partner/user/model/AgeAuthLevel;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Throwable;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "context"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "callback"

    invoke-static {p7, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1959
    sget-object p0, Lcom/kakao/sdk/partner/user/AgeAuthManager;->Companion:Lcom/kakao/sdk/partner/user/AgeAuthManager$Companion;

    invoke-virtual {p0}, Lcom/kakao/sdk/partner/user/AgeAuthManager$Companion;->getInstance()Lcom/kakao/sdk/partner/user/AgeAuthManager;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object v7, p7

    invoke-virtual/range {v0 .. v7}, Lcom/kakao/sdk/partner/user/AgeAuthManager;->verifyAgeWithAuthentication(Landroid/content/Context;Ljava/lang/Integer;Lcom/kakao/sdk/partner/user/model/AgeAuthLevel;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Lkotlin/jvm/functions/Function1;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method public static synthetic verifyAge$default(Lcom/kakao/sdk/user/UserApiClient;Landroid/content/Context;Ljava/lang/Integer;Lcom/kakao/sdk/partner/user/model/AgeAuthLevel;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)V
    .locals 10

    and-int/lit8 v0, p8, 0x2

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move-object v4, v1

    goto :goto_0

    :cond_0
    move-object v4, p2

    :goto_0
    and-int/lit8 v0, p8, 0x4

    if-eqz v0, :cond_1

    move-object v5, v1

    goto :goto_1

    :cond_1
    move-object v5, p3

    :goto_1
    and-int/lit8 v0, p8, 0x8

    if-eqz v0, :cond_2

    move-object v6, v1

    goto :goto_2

    :cond_2
    move-object v6, p4

    :goto_2
    and-int/lit8 v0, p8, 0x10

    if-eqz v0, :cond_3

    move-object v7, v1

    goto :goto_3

    :cond_3
    move-object v7, p5

    :goto_3
    and-int/lit8 v0, p8, 0x20

    if-eqz v0, :cond_4

    const/4 v0, 0x0

    .line 1929
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    move-object v8, v0

    goto :goto_4

    :cond_4
    move-object/from16 v8, p6

    :goto_4
    move-object v2, p0

    move-object v3, p1

    move-object/from16 v9, p7

    .line 1869
    invoke-static/range {v2 .. v9}, Lcom/kakao/sdk/partner/user/UserApiClientKt;->verifyAge(Lcom/kakao/sdk/user/UserApiClient;Landroid/content/Context;Ljava/lang/Integer;Lcom/kakao/sdk/partner/user/model/AgeAuthLevel;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Lkotlin/jvm/functions/Function1;)V

    return-void

    .array-data 1
    .end array-data
.end method
