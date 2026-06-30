.class public final Lcom/kakao/sdk/talk/model/FollowChannelResult$Companion;
.super Ljava/lang/Object;
.source "FollowChannelResult.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kakao/sdk/talk/model/FollowChannelResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u000e\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006\u00a8\u0006\u0007"
    }
    d2 = {
        "Lcom/kakao/sdk/talk/model/FollowChannelResult$Companion;",
        "",
        "()V",
        "fromResponse",
        "Lcom/kakao/sdk/talk/model/FollowChannelResult;",
        "response",
        "Lcom/kakao/sdk/talk/model/FollowChannelResponse;",
        "talk_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 299
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void

    .array-data 1
    .end array-data
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/kakao/sdk/talk/model/FollowChannelResult$Companion;-><init>()V

    return-void

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public final fromResponse(Lcom/kakao/sdk/talk/model/FollowChannelResponse;)Lcom/kakao/sdk/talk/model/FollowChannelResult;
    .locals 3

    const-string v0, "response"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 349
    new-instance v0, Lcom/kakao/sdk/talk/model/FollowChannelResult;

    .line 359
    invoke-virtual {p1}, Lcom/kakao/sdk/talk/model/FollowChannelResponse;->getStatus()Ljava/lang/String;

    move-result-object v1

    const-string v2, "success"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    .line 369
    invoke-virtual {p1}, Lcom/kakao/sdk/talk/model/FollowChannelResponse;->getChannelPublicId()Ljava/lang/String;

    move-result-object p1

    .line 349
    invoke-direct {v0, v1, p1}, Lcom/kakao/sdk/talk/model/FollowChannelResult;-><init>(ZLjava/lang/String;)V

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method
