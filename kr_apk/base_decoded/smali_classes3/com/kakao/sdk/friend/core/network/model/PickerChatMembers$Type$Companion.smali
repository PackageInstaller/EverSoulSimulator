.class public final Lcom/kakao/sdk/friend/core/network/model/PickerChatMembers$Type$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kakao/sdk/friend/core/network/model/PickerChatMembers$Type;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0086\u0003\u0018\u00002\u00020\u0001J\u0016\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u0002H\u00c6\u0001\u00a2\u0006\u0004\u0008\u0004\u0010\u0005\u00a8\u0006\u0006"
    }
    d2 = {
        "Lcom/kakao/sdk/friend/core/network/model/PickerChatMembers$Type$Companion;",
        "",
        "Lkotlinx/serialization/KSerializer;",
        "Lcom/kakao/sdk/friend/core/network/model/PickerChatMembers$Type;",
        "serializer",
        "()Lkotlinx/serialization/KSerializer;",
        "friend-core_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public final serializer()Lkotlinx/serialization/KSerializer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/serialization/KSerializer<",
            "Lcom/kakao/sdk/friend/core/network/model/PickerChatMembers$Type;",
            ">;"
        }
    .end annotation

    .line 19
    invoke-static {}, Lcom/kakao/sdk/friend/core/network/model/PickerChatMembers$Type;->a()Lkotlin/Lazy;

    move-result-object v0

    .line 29
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlinx/serialization/KSerializer;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method
