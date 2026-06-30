.class final Lcom/kakao/sdk/partner/talk/model/Chat$ChatRoomType$Companion$$cachedSerializer$delegate$1;
.super Lkotlin/jvm/internal/Lambda;
.source "Chats.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kakao/sdk/partner/talk/model/Chat$ChatRoomType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
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
.field public static final INSTANCE:Lcom/kakao/sdk/partner/talk/model/Chat$ChatRoomType$Companion$$cachedSerializer$delegate$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/kakao/sdk/partner/talk/model/Chat$ChatRoomType$Companion$$cachedSerializer$delegate$1;

    invoke-direct {v0}, Lcom/kakao/sdk/partner/talk/model/Chat$ChatRoomType$Companion$$cachedSerializer$delegate$1;-><init>()V

    sput-object v0, Lcom/kakao/sdk/partner/talk/model/Chat$ChatRoomType$Companion$$cachedSerializer$delegate$1;->INSTANCE:Lcom/kakao/sdk/partner/talk/model/Chat$ChatRoomType$Companion$$cachedSerializer$delegate$1;

    return-void

    .array-data 1
    .end array-data
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void

    nop

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 659
    invoke-virtual {p0}, Lcom/kakao/sdk/partner/talk/model/Chat$ChatRoomType$Companion$$cachedSerializer$delegate$1;->invoke()Lkotlinx/serialization/KSerializer;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final invoke()Lkotlinx/serialization/KSerializer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/serialization/KSerializer<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 659
    sget-object v0, Lcom/kakao/sdk/partner/talk/model/ChatRoomTypeSerializer;->INSTANCE:Lcom/kakao/sdk/partner/talk/model/ChatRoomTypeSerializer;

    check-cast v0, Lkotlinx/serialization/KSerializer;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method
