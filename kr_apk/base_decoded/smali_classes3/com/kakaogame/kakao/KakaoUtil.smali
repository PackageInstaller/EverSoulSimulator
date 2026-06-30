.class public final Lcom/kakaogame/kakao/KakaoUtil;
.super Ljava/lang/Object;
.source "KakaoUtil.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kakaogame/kakao/KakaoUtil$WhenMappings;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0003\n\u0000\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0012\u0010\u0006\u001a\u00020\u00072\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u0005H\u0007J\u0012\u0010\t\u001a\u00020\u00072\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u0005H\u0007J\u001a\u0010\n\u001a\u0006\u0012\u0002\u0008\u00030\u000b2\u000c\u0010\u000c\u001a\u0008\u0012\u0002\u0008\u0003\u0018\u00010\u000bH\u0007J\u000e\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u000eJ\u001e\u0010\u0010\u001a\u0010\u0012\u0004\u0012\u00020\u000e\u0012\u0006\u0012\u0004\u0018\u00010\u00050\u00112\u0006\u0010\u0012\u001a\u00020\u0013H\u0007R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0014"
    }
    d2 = {
        "Lcom/kakaogame/kakao/KakaoUtil;",
        "",
        "<init>",
        "()V",
        "TAG",
        "",
        "parseInvitataionDate",
        "",
        "dateStr",
        "parseInvitataionDateForJoiner",
        "convertResultCode",
        "Lcom/kakaogame/KGResult;",
        "result",
        "getResultCode",
        "",
        "errorCode",
        "classifyKakaoError",
        "Landroid/util/Pair;",
        "error",
        "",
        "idp_kakao_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final INSTANCE:Lcom/kakaogame/kakao/KakaoUtil;

.field private static final TAG:Ljava/lang/String; = "KakaoUtil"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/kakaogame/kakao/KakaoUtil;

    invoke-direct {v0}, Lcom/kakaogame/kakao/KakaoUtil;-><init>()V

    sput-object v0, Lcom/kakaogame/kakao/KakaoUtil;->INSTANCE:Lcom/kakaogame/kakao/KakaoUtil;

    return-void

    .array-data 1
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .line 169
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void

    .array-data 1
    .end array-data
.end method

.method public static final classifyKakaoError(Ljava/lang/Throwable;)Landroid/util/Pair;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Throwable;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, ""

    const v1, -0x451c465f

    invoke-static {v1}, Lcom/liapp/y;->ڳݬ٬ۮݪ(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1309
    instance-of v1, p0, Lcom/kakao/sdk/common/model/ClientError;

    const/16 v2, 0xfa0

    .line 1359
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v3, 0x2329

    .line 1329
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/16 v4, 0x270f

    .line 1369
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    if-eqz v1, :cond_4

    .line 1319
    check-cast p0, Lcom/kakao/sdk/common/model/ClientError;

    invoke-virtual {p0}, Lcom/kakao/sdk/common/model/ClientError;->getReason()Lcom/kakao/sdk/common/model/ClientErrorCause;

    move-result-object v0

    sget-object v1, Lcom/kakaogame/kakao/KakaoUtil$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v0}, Lcom/kakao/sdk/common/model/ClientErrorCause;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    .line 1369
    new-instance v0, Landroid/util/Pair;

    invoke-virtual {p0}, Lcom/kakao/sdk/common/model/ClientError;->getMsg()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, v4, p0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 1359
    :cond_0
    new-instance v0, Landroid/util/Pair;

    invoke-virtual {p0}, Lcom/kakao/sdk/common/model/ClientError;->getMsg()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, v2, p0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 1349
    :cond_1
    new-instance v0, Landroid/util/Pair;

    const/16 v1, 0xfaa

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0}, Lcom/kakao/sdk/common/model/ClientError;->getMsg()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 1339
    :cond_2
    new-instance v0, Landroid/util/Pair;

    const/16 v1, 0x1389

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0}, Lcom/kakao/sdk/common/model/ClientError;->getMsg()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 1329
    :cond_3
    new-instance v0, Landroid/util/Pair;

    invoke-virtual {p0}, Lcom/kakao/sdk/common/model/ClientError;->getMsg()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, v3, p0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 1389
    :cond_4
    instance-of v1, p0, Lcom/kakao/sdk/common/model/AuthError;

    if-eqz v1, :cond_6

    .line 1409
    check-cast p0, Lcom/kakao/sdk/common/model/AuthError;

    invoke-virtual {p0}, Lcom/kakao/sdk/common/model/AuthError;->getStatusCode()I

    move-result v0

    const/16 v1, 0x12e

    if-ne v0, v1, :cond_5

    invoke-virtual {p0}, Lcom/kakao/sdk/common/model/AuthError;->getResponse()Lcom/kakao/sdk/common/model/AuthErrorResponse;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kakao/sdk/common/model/AuthErrorResponse;->getError()Ljava/lang/String;

    move-result-object v0

    const v1, 0x6d014348

    invoke-static {v1}, Lcom/liapp/y;->ٱڳܴڭܩ(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1419
    new-instance v0, Landroid/util/Pair;

    const v1, 0x493e0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0}, Lcom/kakao/sdk/common/model/AuthError;->getResponse()Lcom/kakao/sdk/common/model/AuthErrorResponse;

    move-result-object p0

    invoke-virtual {p0}, Lcom/kakao/sdk/common/model/AuthErrorResponse;->getErrorDescription()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0

    .line 1439
    :cond_5
    invoke-virtual {p0}, Lcom/kakao/sdk/common/model/AuthError;->getReason()Lcom/kakao/sdk/common/model/AuthErrorCause;

    move-result-object v0

    sget-object v1, Lcom/kakaogame/kakao/KakaoUtil$WhenMappings;->$EnumSwitchMapping$1:[I

    invoke-virtual {v0}, Lcom/kakao/sdk/common/model/AuthErrorCause;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    .line 1539
    new-instance v0, Landroid/util/Pair;

    invoke-virtual {p0}, Lcom/kakao/sdk/common/model/AuthError;->getMsg()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, v4, p0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 1529
    :pswitch_0
    new-instance v0, Landroid/util/Pair;

    invoke-virtual {p0}, Lcom/kakao/sdk/common/model/AuthError;->getMsg()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, v4, p0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 1519
    :pswitch_1
    new-instance v0, Landroid/util/Pair;

    const/16 v1, 0x1f4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0}, Lcom/kakao/sdk/common/model/AuthError;->getMsg()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 1509
    :pswitch_2
    new-instance v0, Landroid/util/Pair;

    const/16 v1, 0x193

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0}, Lcom/kakao/sdk/common/model/AuthError;->getMsg()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 1499
    :pswitch_3
    new-instance v0, Landroid/util/Pair;

    const/16 v1, 0xfa2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0}, Lcom/kakao/sdk/common/model/AuthError;->getMsg()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    .line 1459
    :pswitch_4
    new-instance v0, Landroid/util/Pair;

    .line 1479
    invoke-virtual {p0}, Lcom/kakao/sdk/common/model/AuthError;->getMsg()Ljava/lang/String;

    move-result-object p0

    .line 1459
    invoke-direct {v0, v2, p0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    .line 1449
    :pswitch_5
    new-instance v0, Landroid/util/Pair;

    invoke-virtual {p0}, Lcom/kakao/sdk/common/model/AuthError;->getMsg()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, v3, p0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    .line 1559
    :cond_6
    instance-of v1, p0, Lcom/kakao/sdk/common/model/ApiError;

    if-eqz v1, :cond_7

    .line 1579
    new-instance v0, Landroid/util/Pair;

    check-cast p0, Lcom/kakao/sdk/common/model/ApiError;

    invoke-virtual {p0}, Lcom/kakao/sdk/common/model/ApiError;->getResponse()Lcom/kakao/sdk/common/model/ApiErrorResponse;

    move-result-object v1

    invoke-virtual {v1}, Lcom/kakao/sdk/common/model/ApiErrorResponse;->getCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0}, Lcom/kakao/sdk/common/model/ApiError;->getMsg()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    :cond_7
    const/16 v1, 0xfa1

    .line 1619
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_8

    .line 1629
    new-instance p0, Landroid/util/Pair;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0, v2, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 1649
    :cond_8
    new-instance v2, Landroid/util/Pair;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v2, v3, p0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object p0, v2

    goto :goto_0

    .line 1679
    :catch_0
    new-instance p0, Landroid/util/Pair;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_0
    move-object v0, p0

    :goto_1
    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .array-data 1
    .end array-data
.end method

.method public static final convertResultCode(Lcom/kakaogame/KGResult;)Lcom/kakaogame/KGResult;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/kakaogame/KGResult<",
            "*>;)",
            "Lcom/kakaogame/KGResult<",
            "*>;"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    if-nez p0, :cond_0

    .line 539
    sget-object p0, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    const/16 v0, 0xfa2

    invoke-virtual {p0, v0}, Lcom/kakaogame/KGResult$Companion;->getResult(I)Lcom/kakaogame/KGResult;

    move-result-object p0

    return-object p0

    .line 569
    :cond_0
    sget-object v0, Lcom/kakaogame/kakao/KakaoUtil;->INSTANCE:Lcom/kakaogame/kakao/KakaoUtil;

    invoke-virtual {p0}, Lcom/kakaogame/KGResult;->getCode()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/kakaogame/kakao/KakaoUtil;->getResultCode(I)I

    move-result v1

    const/16 v2, 0x190

    const v3, -0x4518d287

    invoke-static {v3}, Lcom/liapp/y;->ڳݬ٬ۮݪ(I)Ljava/lang/String;

    move-result-object v3

    const v4, 0x6d0b76e8

    invoke-static {v4}, Lcom/liapp/y;->ٱڳܴڭܩ(I)Ljava/lang/String;

    move-result-object v4

    if-eq v1, v2, :cond_1

    const/16 v2, 0x193

    if-eq v1, v2, :cond_1

    goto :goto_0

    .line 589
    :cond_1
    invoke-virtual {p0}, Lcom/kakaogame/KGResult;->getContent()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 609
    :try_start_0
    invoke-virtual {p0}, Lcom/kakaogame/KGResult;->getContent()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/kakaogame/util/json/JSONObject;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v2, v4}, Lcom/kakaogame/util/json/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    const-string v5, "null cannot be cast to non-null type kotlin.Long"

    invoke-static {v2, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    long-to-int v2, v5

    .line 619
    invoke-virtual {v0, v2}, Lcom/kakaogame/kakao/KakaoUtil;->getResultCode(I)I

    move-result v1

    .line 629
    move-object v0, p0

    check-cast v0, Ljava/util/Map;

    invoke-virtual {p0}, Lcom/kakaogame/KGResult;->getContent()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/kakaogame/util/json/JSONObject;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const-string v5, "msg"

    invoke-virtual {v2, v5}, Lcom/kakaogame/util/json/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 689
    :catch_0
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/kakaogame/KGResult;->getCode()I

    move-result v0

    if-eq v1, v0, :cond_6

    .line 699
    invoke-virtual {p0}, Lcom/kakaogame/KGResult;->getDescription()Ljava/lang/String;

    move-result-object v0

    .line 709
    move-object v2, v0

    check-cast v2, Ljava/lang/CharSequence;

    if-eqz v2, :cond_4

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_3

    goto :goto_1

    :cond_3
    const/4 v2, 0x0

    goto :goto_2

    :cond_4
    :goto_1
    const/4 v2, 0x1

    :goto_2
    if-eqz v2, :cond_5

    .line 719
    new-instance v0, Ljava/lang/StringBuilder;

    const v2, 0x225856ce

    invoke-static {v2}, Lcom/liapp/y;->ֲֳگܱޭ(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/kakaogame/KGResult;->getCode()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    .line 739
    :cond_5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const v2, -0x224f96dc

    invoke-static {v2}, Lcom/liapp/y;->״دش۲ݮ(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/kakaogame/KGResult;->getCode()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v2, 0x29

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_3
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 759
    move-object v5, p0

    check-cast v5, Ljava/util/Map;

    invoke-interface {v5, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 769
    invoke-interface {v5, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 779
    sget-object v2, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    invoke-virtual {p0}, Lcom/kakaogame/KGResult;->getContent()Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v2, v1, v0, p0}, Lcom/kakaogame/KGResult$Companion;->getResult(ILjava/lang/String;Ljava/lang/Object;)Lcom/kakaogame/KGResult;

    move-result-object p0

    :cond_6
    return-object p0

    .array-data 1
    .end array-data
.end method

.method public static final parseInvitataionDate(Ljava/lang/String;)J
    .locals 5
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 209
    sget-object v0, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const v2, 0x225851be

    invoke-static {v2}, Lcom/liapp/y;->ֲֳگܱޭ(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const v2, 0x225850fe

    invoke-static {v2}, Lcom/liapp/y;->ֲֳگܱޭ(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lcom/kakaogame/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    if-nez p0, :cond_0

    return-wide v0

    .line 259
    :cond_0
    :try_start_0
    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string/jumbo v4, "yyyy-MM-dd\'T\'HH:mm:ss.SSSZ"

    invoke-direct {v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 269
    invoke-virtual {v3, p0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p0

    .line 279
    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 299
    sget-object v3, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    check-cast p0, Ljava/lang/Throwable;

    invoke-virtual {v3, v2, v4, p0}, Lcom/kakaogame/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-wide v0

    nop

    .array-data 1
    .end array-data
.end method

.method public static final parseInvitataionDateForJoiner(Ljava/lang/String;)J
    .locals 5
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 369
    sget-object v0, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const v2, 0x225851be

    invoke-static {v2}, Lcom/liapp/y;->ֲֳگܱޭ(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const v2, 0x225850fe

    invoke-static {v2}, Lcom/liapp/y;->ֲֳگܱޭ(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lcom/kakaogame/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    if-nez p0, :cond_0

    return-wide v0

    .line 419
    :cond_0
    :try_start_0
    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string/jumbo v4, "yyyy-MM-dd\'T\'HH:mm:ss\'Z\'"

    invoke-direct {v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 429
    invoke-virtual {v3, p0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p0

    .line 439
    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 459
    sget-object v3, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    check-cast p0, Ljava/lang/Throwable;

    invoke-virtual {v3, v2, v4, p0}, Lcom/kakaogame/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-wide v0

    nop

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public final getResultCode(I)I
    .locals 1

    .line 869
    sget-object v0, Lcom/kakao/sdk/common/model/ApiErrorCause;->Unknown:Lcom/kakao/sdk/common/model/ApiErrorCause;

    invoke-virtual {v0}, Lcom/kakao/sdk/common/model/ApiErrorCause;->getErrorCode()I

    move-result v0

    if-ne p1, v0, :cond_0

    const/16 p1, 0x270f

    return p1

    :cond_0
    if-lez p1, :cond_1

    return p1

    .line 1019
    :cond_1
    sget-object v0, Lcom/kakao/sdk/common/model/ApiErrorCause;->InternalError:Lcom/kakao/sdk/common/model/ApiErrorCause;

    invoke-virtual {v0}, Lcom/kakao/sdk/common/model/ApiErrorCause;->getErrorCode()I

    move-result v0

    if-ne p1, v0, :cond_2

    const/16 p1, 0x1f4

    goto/16 :goto_2

    .line 1029
    :cond_2
    sget-object v0, Lcom/kakao/sdk/common/model/ApiErrorCause;->IllegalParams:Lcom/kakao/sdk/common/model/ApiErrorCause;

    invoke-virtual {v0}, Lcom/kakao/sdk/common/model/ApiErrorCause;->getErrorCode()I

    move-result v0

    if-ne p1, v0, :cond_3

    const/16 p1, 0xfa0

    goto/16 :goto_2

    .line 1039
    :cond_3
    sget-object v0, Lcom/kakao/sdk/common/model/ApiErrorCause;->UnsupportedApi:Lcom/kakao/sdk/common/model/ApiErrorCause;

    invoke-virtual {v0}, Lcom/kakao/sdk/common/model/ApiErrorCause;->getErrorCode()I

    move-result v0

    if-eq p1, v0, :cond_f

    .line 1049
    sget-object v0, Lcom/kakao/sdk/common/model/ApiErrorCause;->UserDeviceUnsupported:Lcom/kakao/sdk/common/model/ApiErrorCause;

    invoke-virtual {v0}, Lcom/kakao/sdk/common/model/ApiErrorCause;->getErrorCode()I

    move-result v0

    if-ne p1, v0, :cond_4

    goto/16 :goto_1

    .line 1059
    :cond_4
    sget-object v0, Lcom/kakao/sdk/common/model/ApiErrorCause;->BlockedAction:Lcom/kakao/sdk/common/model/ApiErrorCause;

    invoke-virtual {v0}, Lcom/kakao/sdk/common/model/ApiErrorCause;->getErrorCode()I

    move-result v0

    if-ne p1, v0, :cond_5

    const/16 p1, 0x1cd

    goto/16 :goto_2

    .line 1069
    :cond_5
    sget-object v0, Lcom/kakao/sdk/common/model/ApiErrorCause;->PermissionDenied:Lcom/kakao/sdk/common/model/ApiErrorCause;

    invoke-virtual {v0}, Lcom/kakao/sdk/common/model/ApiErrorCause;->getErrorCode()I

    move-result v0

    if-ne p1, v0, :cond_6

    const/16 p1, 0x193

    goto/16 :goto_2

    .line 1079
    :cond_6
    sget-object v0, Lcom/kakao/sdk/common/model/ApiErrorCause;->NotRegisteredUser:Lcom/kakao/sdk/common/model/ApiErrorCause;

    invoke-virtual {v0}, Lcom/kakao/sdk/common/model/ApiErrorCause;->getErrorCode()I

    move-result v0

    if-ne p1, v0, :cond_7

    const/16 p1, 0xbba

    goto/16 :goto_2

    .line 1089
    :cond_7
    sget-object v0, Lcom/kakao/sdk/common/model/ApiErrorCause;->DeprecatedApi:Lcom/kakao/sdk/common/model/ApiErrorCause;

    invoke-virtual {v0}, Lcom/kakao/sdk/common/model/ApiErrorCause;->getErrorCode()I

    move-result v0

    if-eq p1, v0, :cond_e

    .line 1099
    sget-object v0, Lcom/kakao/sdk/common/model/ApiErrorCause;->ApiLimitExceeded:Lcom/kakao/sdk/common/model/ApiErrorCause;

    invoke-virtual {v0}, Lcom/kakao/sdk/common/model/ApiErrorCause;->getErrorCode()I

    move-result v0

    if-eq p1, v0, :cond_e

    .line 1109
    sget-object v0, Lcom/kakao/sdk/common/model/ApiErrorCause;->AlreadyRegisteredUser:Lcom/kakao/sdk/common/model/ApiErrorCause;

    invoke-virtual {v0}, Lcom/kakao/sdk/common/model/ApiErrorCause;->getErrorCode()I

    move-result v0

    if-eq p1, v0, :cond_e

    .line 1119
    sget-object v0, Lcom/kakao/sdk/common/model/ApiErrorCause;->PropertyKeyDoesNotExist:Lcom/kakao/sdk/common/model/ApiErrorCause;

    invoke-virtual {v0}, Lcom/kakao/sdk/common/model/ApiErrorCause;->getErrorCode()I

    move-result v0

    if-eq p1, v0, :cond_e

    .line 1129
    sget-object v0, Lcom/kakao/sdk/common/model/ApiErrorCause;->AppDoesNotExist:Lcom/kakao/sdk/common/model/ApiErrorCause;

    invoke-virtual {v0}, Lcom/kakao/sdk/common/model/ApiErrorCause;->getErrorCode()I

    move-result v0

    if-eq p1, v0, :cond_e

    .line 1139
    sget-object v0, Lcom/kakao/sdk/common/model/ApiErrorCause;->InsufficientScope:Lcom/kakao/sdk/common/model/ApiErrorCause;

    invoke-virtual {v0}, Lcom/kakao/sdk/common/model/ApiErrorCause;->getErrorCode()I

    move-result v0

    if-eq p1, v0, :cond_e

    .line 1149
    sget-object v0, Lcom/kakao/sdk/common/model/ApiErrorCause;->NotFriend:Lcom/kakao/sdk/common/model/ApiErrorCause;

    invoke-virtual {v0}, Lcom/kakao/sdk/common/model/ApiErrorCause;->getErrorCode()I

    move-result v0

    if-eq p1, v0, :cond_e

    .line 1159
    sget-object v0, Lcom/kakao/sdk/common/model/ApiErrorCause;->DeveloperDoesNotExist:Lcom/kakao/sdk/common/model/ApiErrorCause;

    invoke-virtual {v0}, Lcom/kakao/sdk/common/model/ApiErrorCause;->getErrorCode()I

    move-result v0

    if-eq p1, v0, :cond_e

    .line 1169
    sget-object v0, Lcom/kakao/sdk/common/model/ApiErrorCause;->AccountDoesNotExist:Lcom/kakao/sdk/common/model/ApiErrorCause;

    invoke-virtual {v0}, Lcom/kakao/sdk/common/model/ApiErrorCause;->getErrorCode()I

    move-result v0

    if-ne p1, v0, :cond_8

    goto :goto_0

    .line 1179
    :cond_8
    sget-object v0, Lcom/kakao/sdk/common/model/ApiErrorCause;->InvalidToken:Lcom/kakao/sdk/common/model/ApiErrorCause;

    invoke-virtual {v0}, Lcom/kakao/sdk/common/model/ApiErrorCause;->getErrorCode()I

    move-result v0

    if-ne p1, v0, :cond_9

    const/16 p1, 0xfaa

    goto :goto_2

    .line 1189
    :cond_9
    sget-object v0, Lcom/kakao/sdk/common/model/ApiErrorCause;->NotTalkUser:Lcom/kakao/sdk/common/model/ApiErrorCause;

    invoke-virtual {v0}, Lcom/kakao/sdk/common/model/ApiErrorCause;->getErrorCode()I

    move-result v0

    if-ne p1, v0, :cond_a

    const/16 p1, 0x1c22

    goto :goto_2

    .line 1199
    :cond_a
    sget-object v0, Lcom/kakao/sdk/common/model/ApiErrorCause;->TalkMessageDisabled:Lcom/kakao/sdk/common/model/ApiErrorCause;

    invoke-virtual {v0}, Lcom/kakao/sdk/common/model/ApiErrorCause;->getErrorCode()I

    move-result v0

    if-ne p1, v0, :cond_b

    const/16 p1, 0x1bbd

    goto :goto_2

    .line 1209
    :cond_b
    sget-object v0, Lcom/kakao/sdk/common/model/ApiErrorCause;->TalkSendMessageMonthlyLimitExceed:Lcom/kakao/sdk/common/model/ApiErrorCause;

    invoke-virtual {v0}, Lcom/kakao/sdk/common/model/ApiErrorCause;->getErrorCode()I

    move-result v0

    if-ne p1, v0, :cond_c

    const/16 p1, 0x1b59

    goto :goto_2

    .line 1219
    :cond_c
    sget-object v0, Lcom/kakao/sdk/common/model/ApiErrorCause;->TalkSendMessageDailyLimitExceed:Lcom/kakao/sdk/common/model/ApiErrorCause;

    invoke-virtual {v0}, Lcom/kakao/sdk/common/model/ApiErrorCause;->getErrorCode()I

    move-result v0

    if-ne p1, v0, :cond_d

    const/16 p1, 0x1b5a

    goto :goto_2

    .line 1229
    :cond_d
    sget-object v0, Lcom/kakao/sdk/common/model/ApiErrorCause;->UnderMaintenance:Lcom/kakao/sdk/common/model/ApiErrorCause;

    invoke-virtual {v0}, Lcom/kakao/sdk/common/model/ApiErrorCause;->getErrorCode()I

    move-result v0

    if-ne p1, v0, :cond_10

    const/16 p1, 0x1d9

    goto :goto_2

    :cond_e
    :goto_0
    const/16 p1, 0xfa2

    goto :goto_2

    :cond_f
    :goto_1
    const/16 p1, 0x1389

    :cond_10
    :goto_2
    return p1

    nop

    .array-data 1
    .end array-data
.end method
