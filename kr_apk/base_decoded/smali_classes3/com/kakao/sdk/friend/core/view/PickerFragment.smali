.class public final Lcom/kakao/sdk/friend/core/view/PickerFragment;
.super Lcom/kakao/sdk/friend/core/l/S;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u000f\u0010\u0005\u001a\u00020\u0004H\u0002\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\u0019\u0010\n\u001a\u00020\t2\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u0007H\u0016\u00a2\u0006\u0004\u0008\n\u0010\u000b\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcom/kakao/sdk/friend/core/view/PickerFragment;",
        "Lcom/kakao/sdk/friend/core/l/S;",
        "<init>",
        "()V",
        "",
        "pickerThemeResource",
        "()I",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "Landroid/view/LayoutInflater;",
        "onGetLayoutInflater",
        "(Landroid/os/Bundle;)Landroid/view/LayoutInflater;",
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

    invoke-direct {p0}, Lcom/kakao/sdk/friend/core/l/S;-><init>()V

    return-void

    .array-data 1
    .end array-data
.end method

.method private final pickerThemeResource()I
    .locals 2

    invoke-virtual {p0}, Lcom/kakao/sdk/friend/core/l/S;->getSettings()Lcom/kakao/sdk/friend/core/i/o;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 19
    iget-object v0, v0, Lcom/kakao/sdk/friend/core/i/o;->e:Lcom/kakao/sdk/friend/core/i/q;

    if-eqz v0, :cond_0

    .line 29
    iget-object v0, v0, Lcom/kakao/sdk/friend/core/i/q;->a:Lcom/kakao/sdk/friend/core/model/ViewAppearance;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    const/4 v0, -0x1

    goto :goto_1

    .line 39
    :cond_1
    sget-object v1, Lcom/kakao/sdk/friend/core/l/V;->a:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    :goto_1
    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    sget v0, Lcom/kakao/sdk/friend/core/R$style;->DayNightFull:I

    goto :goto_2

    :cond_2
    sget v0, Lcom/kakao/sdk/friend/core/R$style;->NightOnlyFull:I

    goto :goto_2

    :cond_3
    sget v0, Lcom/kakao/sdk/friend/core/R$style;->DayOnlyFull:I

    :goto_2
    return v0

    nop

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public onGetLayoutInflater(Landroid/os/Bundle;)Landroid/view/LayoutInflater;
    .locals 3

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onGetLayoutInflater(Landroid/os/Bundle;)Landroid/view/LayoutInflater;

    move-result-object p1

    const-string v0, "super.onGetLayoutInflater(savedInstanceState)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Landroid/view/ContextThemeWrapper;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {p0}, Lcom/kakao/sdk/friend/core/view/PickerFragment;->pickerThemeResource()I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-virtual {p1, v0}, Landroid/view/LayoutInflater;->cloneInContext(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const-string v0, "inflater.cloneInContext(contextThemeWrapper)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1

    .array-data 1
    .end array-data
.end method
