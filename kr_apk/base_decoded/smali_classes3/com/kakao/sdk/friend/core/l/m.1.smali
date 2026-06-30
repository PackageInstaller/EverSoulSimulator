.class public final Lcom/kakao/sdk/friend/core/l/m;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic a:Lcom/kakao/sdk/friend/core/l/s;


# direct methods
.method public constructor <init>(Lcom/kakao/sdk/friend/core/l/s;)V
    .locals 0

    .line 19
    iput-object p1, p0, Lcom/kakao/sdk/friend/core/l/m;->a:Lcom/kakao/sdk/friend/core/l/s;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void

    nop

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    check-cast p1, Lcom/kakao/sdk/friend/core/j/p;

    .line 19
    iget-object v0, p0, Lcom/kakao/sdk/friend/core/l/m;->a:Lcom/kakao/sdk/friend/core/l/s;

    const-string v1, "it"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 39
    instance-of v1, p1, Lcom/kakao/sdk/friend/core/j/k;

    if-eqz v1, :cond_1

    check-cast p1, Lcom/kakao/sdk/friend/core/j/k;

    .line 49
    iget-object p1, p1, Lcom/kakao/sdk/friend/core/j/k;->a:Lcom/kakao/sdk/friend/core/j/q;

    .line 59
    sget-object v1, Lcom/kakao/sdk/friend/core/j/q;->a:Lcom/kakao/sdk/friend/core/j/q;

    if-eq p1, v1, :cond_0

    sget-object v1, Lcom/kakao/sdk/friend/core/j/q;->b:Lcom/kakao/sdk/friend/core/j/q;

    if-ne p1, v1, :cond_6

    :cond_0
    iget-object p1, v0, Lcom/kakao/sdk/friend/core/l/s;->d:Lcom/kakao/sdk/friend/core/e/b;

    if-eqz p1, :cond_6

    iget-object p1, p1, Lcom/kakao/sdk/friend/core/e/b;->b:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz p1, :cond_6

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    goto/16 :goto_0

    :cond_1
    instance-of v1, p1, Lcom/kakao/sdk/friend/core/j/j;

    const-string v2, "ChatPickerFragment not attached to an activity."

    const/4 v3, 0x0

    if-eqz v1, :cond_3

    check-cast p1, Lcom/kakao/sdk/friend/core/j/j;

    .line 69
    iget-object p1, p1, Lcom/kakao/sdk/friend/core/j/j;->a:Lcom/kakao/sdk/friend/core/i/o;

    .line 79
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v4, "key.picker.setting"

    invoke-virtual {v1, v4, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    new-instance p1, Lcom/kakao/sdk/friend/core/l/S;

    invoke-direct {p1}, Lcom/kakao/sdk/friend/core/l/S;-><init>()V

    invoke-virtual {p1, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    :try_start_0
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v1

    sget v4, Lcom/kakao/sdk/friend/core/R$anim;->kakao_sdk_fragment_slide_in:I

    sget v5, Lcom/kakao/sdk/friend/core/R$anim;->kakao_sdk_fragment_fade_out:I

    sget v6, Lcom/kakao/sdk/friend/core/R$anim;->kakao_sdk_fragment_fade_in:I

    sget v7, Lcom/kakao/sdk/friend/core/R$anim;->kakao_sdk_fragment_slide_out:I

    invoke-virtual {v1, v4, v5, v6, v7}, Landroidx/fragment/app/FragmentTransaction;->setCustomAnimations(IIII)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v1

    sget v4, Lcom/kakao/sdk/friend/core/R$id;->fragment_container:I

    invoke-virtual {v1, v4, p1}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroidx/fragment/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentTransaction;->commit()I
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    sget-object v1, Lcom/kakao/sdk/common/util/SdkLog;->Companion:Lcom/kakao/sdk/common/util/SdkLog$Companion;

    invoke-virtual {v1, v2}, Lcom/kakao/sdk/common/util/SdkLog$Companion;->e(Ljava/lang/Object;)V

    new-instance v1, Lcom/kakao/sdk/common/model/ClientError;

    sget-object v2, Lcom/kakao/sdk/common/model/ClientErrorCause;->IllegalState:Lcom/kakao/sdk/common/model/ClientErrorCause;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_2

    const-string p1, ""

    :cond_2
    invoke-direct {v1, v2, p1}, Lcom/kakao/sdk/common/model/ClientError;-><init>(Lcom/kakao/sdk/common/model/ClientErrorCause;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/kakao/sdk/friend/core/l/s;->a(Lcom/kakao/sdk/common/model/ClientError;)V

    goto :goto_0

    .line 89
    :cond_3
    instance-of p1, p1, Lcom/kakao/sdk/friend/core/j/i;

    if-eqz p1, :cond_6

    .line 99
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    sget-object v3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    :cond_4
    if-nez v3, :cond_5

    sget-object p1, Lcom/kakao/sdk/common/util/SdkLog;->Companion:Lcom/kakao/sdk/common/util/SdkLog$Companion;

    invoke-virtual {p1, v2}, Lcom/kakao/sdk/common/util/SdkLog$Companion;->e(Ljava/lang/Object;)V

    .line 109
    :cond_5
    iget-object p1, v0, Lcom/kakao/sdk/friend/core/l/s;->f:Lkotlin/Lazy;

    invoke-interface {p1}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/kakao/sdk/friend/core/m/b;

    .line 119
    iget-object v0, p1, Lcom/kakao/sdk/friend/core/m/b;->a:Lcom/kakao/sdk/friend/core/d/a;

    .line 129
    iget-object p1, p1, Lcom/kakao/sdk/friend/core/m/b;->b:Lcom/kakao/sdk/friend/core/i/o;

    .line 139
    iget p1, p1, Lcom/kakao/sdk/friend/core/i/o;->a:I

    .line 149
    check-cast v0, Lcom/kakao/sdk/friend/core/d/i;

    invoke-virtual {v0, p1}, Lcom/kakao/sdk/friend/core/d/i;->a(I)V

    .line 159
    :cond_6
    :goto_0
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .array-data 1
    .end array-data
.end method
