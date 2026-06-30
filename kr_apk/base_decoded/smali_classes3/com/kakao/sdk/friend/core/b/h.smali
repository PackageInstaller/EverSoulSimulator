.class public final Lcom/kakao/sdk/friend/core/b/h;
.super Landroidx/viewpager2/adapter/FragmentStateAdapter;
.source "SourceFile"


# instance fields
.field public final a:Lcom/kakao/sdk/friend/core/i/o;


# direct methods
.method public constructor <init>(Lcom/kakao/sdk/friend/core/i/o;Landroidx/fragment/app/FragmentManager;Landroidx/lifecycle/Lifecycle;)V
    .locals 1

    const-string v0, "settings"

    .line 19
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fragmentManager"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "lifecycle"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p2, p3}, Landroidx/viewpager2/adapter/FragmentStateAdapter;-><init>(Landroidx/fragment/app/FragmentManager;Landroidx/lifecycle/Lifecycle;)V

    iput-object p1, p0, Lcom/kakao/sdk/friend/core/b/h;->a:Lcom/kakao/sdk/friend/core/i/o;

    return-void

    nop

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public final createFragment(I)Landroidx/fragment/app/Fragment;
    .locals 3

    const-string v0, "key.picker.setting"

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    .line 19
    new-instance p1, Lcom/kakao/sdk/friend/core/l/s;

    invoke-direct {p1}, Lcom/kakao/sdk/friend/core/l/s;-><init>()V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Tab Picker can only have two tabs. (FriendPicker, ChatPicker)"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Lcom/kakao/sdk/friend/core/l/S;

    invoke-direct {p1}, Lcom/kakao/sdk/friend/core/l/S;-><init>()V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    :goto_0
    iget-object v2, p0, Lcom/kakao/sdk/friend/core/b/h;->a:Lcom/kakao/sdk/friend/core/i/o;

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    invoke-virtual {p1, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    return-object p1

    nop

    .array-data 1
    .end array-data
.end method

.method public final getItemCount()I
    .locals 1

    const/4 v0, 0x2

    return v0

    .array-data 1
    .end array-data
.end method
