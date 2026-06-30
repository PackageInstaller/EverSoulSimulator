.class public final Lcom/kakao/sdk/common/model/SdkIdentifier;
.super Ljava/lang/Object;
.source "SdkIdentifier.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kakao/sdk/common/model/SdkIdentifier$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0005\u0018\u0000 \u00072\u00020\u0001:\u0001\u0007B\u0011\u0012\n\u0008\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0002\u0010\u0004R\u0013\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\u00a8\u0006\u0008"
    }
    d2 = {
        "Lcom/kakao/sdk/common/model/SdkIdentifier;",
        "",
        "identifiers",
        "",
        "(Ljava/lang/String;)V",
        "getIdentifiers",
        "()Ljava/lang/String;",
        "Companion",
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
.field public static final Companion:Lcom/kakao/sdk/common/model/SdkIdentifier$Companion;


# instance fields
.field private final identifiers:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/kakao/sdk/common/model/SdkIdentifier$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/kakao/sdk/common/model/SdkIdentifier$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/kakao/sdk/common/model/SdkIdentifier;->Companion:Lcom/kakao/sdk/common/model/SdkIdentifier$Companion;

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, v0}, Lcom/kakao/sdk/common/model/SdkIdentifier;-><init>(Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 219
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/kakao/sdk/common/model/SdkIdentifier;->identifiers:Ljava/lang/String;

    return-void

    .array-data 1
    .end array-data
.end method

.method public synthetic constructor <init>(Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    .line 219
    :cond_0
    invoke-direct {p0, p1}, Lcom/kakao/sdk/common/model/SdkIdentifier;-><init>(Ljava/lang/String;)V

    return-void

    nop

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public final getIdentifiers()Ljava/lang/String;
    .locals 1

    .line 219
    iget-object v0, p0, Lcom/kakao/sdk/common/model/SdkIdentifier;->identifiers:Ljava/lang/String;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method
