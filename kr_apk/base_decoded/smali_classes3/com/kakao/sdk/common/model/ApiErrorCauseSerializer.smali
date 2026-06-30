.class final Lcom/kakao/sdk/common/model/ApiErrorCauseSerializer;
.super Lcom/kakao/sdk/common/json/GenericEnumSerializer;
.source "KakaoApiError.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/kakao/sdk/common/json/GenericEnumSerializer<",
        "Lcom/kakao/sdk/common/model/ApiErrorCause;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u00c2\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0003\u00a8\u0006\u0004"
    }
    d2 = {
        "Lcom/kakao/sdk/common/model/ApiErrorCauseSerializer;",
        "Lcom/kakao/sdk/common/json/GenericEnumSerializer;",
        "Lcom/kakao/sdk/common/model/ApiErrorCause;",
        "()V",
        "common_release"
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
.field public static final INSTANCE:Lcom/kakao/sdk/common/model/ApiErrorCauseSerializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/kakao/sdk/common/model/ApiErrorCauseSerializer;

    invoke-direct {v0}, Lcom/kakao/sdk/common/model/ApiErrorCauseSerializer;-><init>()V

    sput-object v0, Lcom/kakao/sdk/common/model/ApiErrorCauseSerializer;->INSTANCE:Lcom/kakao/sdk/common/model/ApiErrorCauseSerializer;

    return-void

    .array-data 1
    .end array-data
.end method

.method private constructor <init>()V
    .locals 1

    .line 2669
    const-class v0, Lcom/kakao/sdk/common/model/ApiErrorCause;

    invoke-direct {p0, v0}, Lcom/kakao/sdk/common/json/GenericEnumSerializer;-><init>(Ljava/lang/Class;)V

    return-void

    .array-data 1
    .end array-data
.end method
