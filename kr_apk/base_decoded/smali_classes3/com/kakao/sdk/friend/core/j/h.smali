.class public final Lcom/kakao/sdk/friend/core/j/h;
.super Lcom/kakao/sdk/friend/core/j/p;
.source "SourceFile"


# instance fields
.field public final a:Lcom/kakao/sdk/friend/core/model/SelectedUsers;


# direct methods
.method public constructor <init>(Lcom/kakao/sdk/friend/core/model/SelectedUsers;)V
    .locals 1

    const-string v0, "selectedUsers"

    .line 19
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/kakao/sdk/friend/core/j/p;-><init>()V

    iput-object p1, p0, Lcom/kakao/sdk/friend/core/j/h;->a:Lcom/kakao/sdk/friend/core/model/SelectedUsers;

    return-void

    nop

    .array-data 1
    .end array-data
.end method
