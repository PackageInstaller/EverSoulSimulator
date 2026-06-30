.class final Lcom/kakao/sdk/friend/core/network/model/PickerScopeGroup$Companion$$cachedSerializer$delegate$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kakao/sdk/friend/core/network/model/PickerScopeGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lkotlinx/serialization/KSerializer<",
        "Ljava/lang/Object;",
        ">;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final INSTANCE:Lcom/kakao/sdk/friend/core/network/model/PickerScopeGroup$Companion$$cachedSerializer$delegate$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/kakao/sdk/friend/core/network/model/PickerScopeGroup$Companion$$cachedSerializer$delegate$1;

    invoke-direct {v0}, Lcom/kakao/sdk/friend/core/network/model/PickerScopeGroup$Companion$$cachedSerializer$delegate$1;-><init>()V

    sput-object v0, Lcom/kakao/sdk/friend/core/network/model/PickerScopeGroup$Companion$$cachedSerializer$delegate$1;->INSTANCE:Lcom/kakao/sdk/friend/core/network/model/PickerScopeGroup$Companion$$cachedSerializer$delegate$1;

    return-void

    .array-data 1
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void

    nop

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 5

    .line 19
    invoke-static {}, Lcom/kakao/sdk/friend/core/network/model/PickerScopeGroup;->values()[Lcom/kakao/sdk/friend/core/network/model/PickerScopeGroup;

    move-result-object v0

    const-string v1, "friend"

    const-string v2, "chat_member"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [[Ljava/lang/annotation/Annotation;

    const/4 v3, 0x0

    const/4 v4, 0x0

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object v4, v2, v3

    const-string v3, "com.kakao.sdk.friend.core.network.model.PickerScopeGroup"

    invoke-static {v3, v0, v1, v2}, Lkotlinx/serialization/internal/EnumsKt;->createMarkedEnumSerializer(Ljava/lang/String;[Ljava/lang/Enum;[Ljava/lang/String;[[Ljava/lang/annotation/Annotation;)Lkotlinx/serialization/KSerializer;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method
