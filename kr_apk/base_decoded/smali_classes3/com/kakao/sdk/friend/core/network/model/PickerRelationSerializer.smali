.class final Lcom/kakao/sdk/friend/core/network/model/PickerRelationSerializer;
.super Lcom/kakao/sdk/common/json/GenericEnumSerializer;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/kakao/sdk/common/json/GenericEnumSerializer<",
        "Lcom/kakao/sdk/friend/core/network/model/PickerRelation;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u0008\u00c2\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001\u00a8\u0006\u0003"
    }
    d2 = {
        "Lcom/kakao/sdk/friend/core/network/model/PickerRelationSerializer;",
        "Lcom/kakao/sdk/common/json/GenericEnumSerializer;",
        "Lcom/kakao/sdk/friend/core/network/model/PickerRelation;",
        "friend-core_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/kakao/sdk/friend/core/network/model/PickerRelationSerializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/kakao/sdk/friend/core/network/model/PickerRelationSerializer;

    invoke-direct {v0}, Lcom/kakao/sdk/friend/core/network/model/PickerRelationSerializer;-><init>()V

    sput-object v0, Lcom/kakao/sdk/friend/core/network/model/PickerRelationSerializer;->INSTANCE:Lcom/kakao/sdk/friend/core/network/model/PickerRelationSerializer;

    return-void

    .array-data 1
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    const-class v0, Lcom/kakao/sdk/friend/core/network/model/PickerRelation;

    invoke-direct {p0, v0}, Lcom/kakao/sdk/common/json/GenericEnumSerializer;-><init>(Ljava/lang/Class;)V

    return-void

    .array-data 1
    .end array-data
.end method
