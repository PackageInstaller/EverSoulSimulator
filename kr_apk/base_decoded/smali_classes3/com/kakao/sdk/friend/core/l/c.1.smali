.class public abstract Lcom/kakao/sdk/friend/core/l/c;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "SourceFile"


# instance fields
.field public final a:Lkotlin/Lazy;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 19
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    new-instance v0, Lcom/kakao/sdk/friend/core/l/b;

    invoke-direct {v0, p0}, Lcom/kakao/sdk/friend/core/l/b;-><init>(Lcom/kakao/sdk/friend/core/l/c;)V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/kakao/sdk/friend/core/l/c;->a:Lkotlin/Lazy;

    return-void

    nop

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public final a(Lcom/kakao/sdk/common/model/ClientError;)V
    .locals 5

    const-string v0, "Failed to send error result "

    .line 19
    :try_start_0
    iget-object v1, p0, Lcom/kakao/sdk/friend/core/l/c;->a:Lkotlin/Lazy;

    invoke-interface {v1}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/kakao/sdk/friend/core/i/o;

    if-eqz v1, :cond_1

    .line 29
    invoke-virtual {v1}, Lcom/kakao/sdk/friend/core/i/o;->a()Landroid/os/ResultReceiver;

    move-result-object v2

    if-eqz v2, :cond_0

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const-string v4, "key.exception"

    invoke-virtual {v3, v4, p1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    const/4 p1, 0x0

    invoke-virtual {v2, p1, v3}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    :cond_0
    invoke-static {}, Lcom/kakao/sdk/friend/core/a/m;->a()Lcom/kakao/sdk/friend/core/d/a;

    move-result-object p1

    invoke-virtual {v1}, Lcom/kakao/sdk/friend/core/i/o;->b()I

    move-result v1

    check-cast p1, Lcom/kakao/sdk/friend/core/d/i;

    invoke-virtual {p1, v1}, Lcom/kakao/sdk/friend/core/d/i;->a(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    :goto_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    :try_start_1
    sget-object v1, Lcom/kakao/sdk/common/util/SdkLog;->Companion:Lcom/kakao/sdk/common/util/SdkLog$Companion;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/kakao/sdk/common/util/SdkLog$Companion;->e(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :goto_1
    return-void

    :goto_2
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    throw p1

    .array-data 1
    .end array-data
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "motionEvent"
        }
    .end annotation

    invoke-static {p1}, Lcom/liapp/y;->ڱڱحֱح(Landroid/view/MotionEvent;)V

    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    .array-data 1
    .end array-data
.end method

.method public final onBackPressed()V
    .locals 3

    .line 19
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->getBackStackEntryCount()I

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/kakao/sdk/common/model/ClientError;

    sget-object v1, Lcom/kakao/sdk/common/model/ClientErrorCause;->Cancelled:Lcom/kakao/sdk/common/model/ClientErrorCause;

    const-string v2, "cancelled."

    invoke-direct {v0, v1, v2}, Lcom/kakao/sdk/common/model/ClientError;-><init>(Lcom/kakao/sdk/common/model/ClientErrorCause;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/kakao/sdk/friend/core/l/c;->a(Lcom/kakao/sdk/common/model/ClientError;)V

    :cond_0
    invoke-super {p0}, Landroidx/activity/ComponentActivity;->onBackPressed()V

    return-void

    .array-data 1
    .end array-data
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 10

    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 19
    iget-object v0, p0, Lcom/kakao/sdk/friend/core/l/c;->a:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kakao/sdk/friend/core/i/o;

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 29
    iget-object v3, v0, Lcom/kakao/sdk/friend/core/i/o;->f:Lcom/kakao/sdk/friend/core/internal/InternalFriendsParams;

    if-nez v3, :cond_0

    .line 39
    iget-object v3, v0, Lcom/kakao/sdk/friend/core/i/o;->g:Lcom/kakao/sdk/friend/core/internal/InternalChatParams;

    if-nez v3, :cond_0

    .line 49
    iget-object v0, v0, Lcom/kakao/sdk/friend/core/i/o;->h:Lcom/kakao/sdk/friend/core/internal/InternalTabParams;

    if-nez v0, :cond_0

    .line 59
    new-instance v0, Lcom/kakao/sdk/common/model/ClientError;

    sget-object v3, Lcom/kakao/sdk/common/model/ClientErrorCause;->IllegalState:Lcom/kakao/sdk/common/model/ClientErrorCause;

    invoke-direct {v0, v3, v2, v1, v2}, Lcom/kakao/sdk/common/model/ClientError;-><init>(Lcom/kakao/sdk/common/model/ClientErrorCause;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {p0, v0}, Lcom/kakao/sdk/friend/core/l/c;->a(Lcom/kakao/sdk/common/model/ClientError;)V

    .line 69
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/kakao/sdk/friend/core/a/m;->a()Lcom/kakao/sdk/friend/core/d/a;

    sget-object v0, Lcom/kakao/sdk/common/util/SdkLog;->Companion:Lcom/kakao/sdk/common/util/SdkLog$Companion;

    const-string v3, "DataSource is initilized"

    invoke-virtual {v0, v3}, Lcom/kakao/sdk/common/util/SdkLog$Companion;->i(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    sget-object v0, Lcom/kakao/sdk/common/util/SdkLog;->Companion:Lcom/kakao/sdk/common/util/SdkLog$Companion;

    const-string v3, "DataSource is not initialized"

    invoke-virtual {v0, v3}, Lcom/kakao/sdk/common/util/SdkLog$Companion;->e(Ljava/lang/Object;)V

    new-instance v0, Lcom/kakao/sdk/common/model/ClientError;

    sget-object v4, Lcom/kakao/sdk/common/model/ClientErrorCause;->IllegalState:Lcom/kakao/sdk/common/model/ClientErrorCause;

    invoke-direct {v0, v4, v3}, Lcom/kakao/sdk/common/model/ClientError;-><init>(Lcom/kakao/sdk/common/model/ClientErrorCause;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/kakao/sdk/friend/core/l/c;->a(Lcom/kakao/sdk/common/model/ClientError;)V

    .line 79
    :goto_0
    iget-object v0, p0, Lcom/kakao/sdk/friend/core/l/c;->a:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kakao/sdk/friend/core/i/o;

    if-eqz v0, :cond_1

    .line 89
    iget-object v0, v0, Lcom/kakao/sdk/friend/core/i/o;->d:Lcom/kakao/sdk/friend/core/internal/PickerViewType;

    goto :goto_1

    :cond_1
    move-object v0, v2

    .line 99
    :goto_1
    sget-object v3, Lcom/kakao/sdk/friend/core/internal/PickerViewType;->POPUP:Lcom/kakao/sdk/friend/core/internal/PickerViewType;

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-ne v0, v3, :cond_2

    move v0, v4

    goto :goto_2

    :cond_2
    move v0, v5

    .line 109
    :goto_2
    iget-object v3, p0, Lcom/kakao/sdk/friend/core/l/c;->a:Lkotlin/Lazy;

    invoke-interface {v3}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/kakao/sdk/friend/core/i/o;

    if-eqz v3, :cond_3

    .line 119
    iget-object v3, v3, Lcom/kakao/sdk/friend/core/i/o;->e:Lcom/kakao/sdk/friend/core/i/q;

    goto :goto_3

    :cond_3
    move-object v3, v2

    :goto_3
    if-eqz v3, :cond_4

    .line 129
    iget-object v6, v3, Lcom/kakao/sdk/friend/core/i/q;->a:Lcom/kakao/sdk/friend/core/model/ViewAppearance;

    goto :goto_4

    :cond_4
    move-object v6, v2

    .line 139
    :goto_4
    sget-object v7, Lcom/kakao/sdk/friend/core/model/ViewAppearance;->LIGHT:Lcom/kakao/sdk/friend/core/model/ViewAppearance;

    if-ne v6, v7, :cond_6

    if-eqz v0, :cond_5

    sget v3, Lcom/kakao/sdk/friend/core/R$style;->DayOnlyPopup:I

    goto :goto_6

    :cond_5
    sget v3, Lcom/kakao/sdk/friend/core/R$style;->DayOnlyFull:I

    goto :goto_6

    :cond_6
    if-eqz v3, :cond_7

    .line 149
    iget-object v3, v3, Lcom/kakao/sdk/friend/core/i/q;->a:Lcom/kakao/sdk/friend/core/model/ViewAppearance;

    goto :goto_5

    :cond_7
    move-object v3, v2

    .line 159
    :goto_5
    sget-object v6, Lcom/kakao/sdk/friend/core/model/ViewAppearance;->DARK:Lcom/kakao/sdk/friend/core/model/ViewAppearance;

    if-ne v3, v6, :cond_9

    if-eqz v0, :cond_8

    sget v3, Lcom/kakao/sdk/friend/core/R$style;->NightOnlyPopup:I

    goto :goto_6

    :cond_8
    sget v3, Lcom/kakao/sdk/friend/core/R$style;->NightOnlyFull:I

    .line 139
    :goto_6
    invoke-virtual {p0, v3}, Landroid/content/Context;->setTheme(I)V

    .line 169
    :cond_9
    iget-object v3, p0, Lcom/kakao/sdk/friend/core/l/c;->a:Lkotlin/Lazy;

    invoke-interface {v3}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/kakao/sdk/friend/core/i/o;

    if-eqz v3, :cond_a

    .line 179
    iget-object v3, v3, Lcom/kakao/sdk/friend/core/i/o;->e:Lcom/kakao/sdk/friend/core/i/q;

    goto :goto_7

    :cond_a
    move-object v3, v2

    :goto_7
    if-eqz v3, :cond_b

    .line 189
    :try_start_1
    iget-object v6, v3, Lcom/kakao/sdk/friend/core/i/q;->b:Lcom/kakao/sdk/friend/core/model/PickerOrientation;

    goto :goto_8

    :cond_b
    move-object v6, v2

    .line 199
    :goto_8
    sget-object v7, Lcom/kakao/sdk/friend/core/model/PickerOrientation;->PORTRAIT:Lcom/kakao/sdk/friend/core/model/PickerOrientation;

    if-ne v6, v7, :cond_c

    const/4 v3, 0x7

    invoke-virtual {p0, v3}, Landroid/app/Activity;->setRequestedOrientation(I)V

    goto :goto_a

    :cond_c
    if-eqz v3, :cond_d

    .line 209
    iget-object v3, v3, Lcom/kakao/sdk/friend/core/i/q;->b:Lcom/kakao/sdk/friend/core/model/PickerOrientation;

    goto :goto_9

    :cond_d
    move-object v3, v2

    .line 219
    :goto_9
    sget-object v6, Lcom/kakao/sdk/friend/core/model/PickerOrientation;->LANDSCAPE:Lcom/kakao/sdk/friend/core/model/PickerOrientation;

    if-ne v3, v6, :cond_e

    const/4 v3, 0x6

    invoke-virtual {p0, v3}, Landroid/app/Activity;->setRequestedOrientation(I)V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1

    .line 229
    :catch_1
    :cond_e
    :goto_a
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-string v6, "applicationContext"

    invoke-static {v3, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v6, "context"

    .line 239
    invoke-static {v3, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    iget v6, v6, Landroid/content/res/Configuration;->orientation:I

    sput v6, Lcom/kakao/sdk/friend/core/k/p;->c:I

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const-string v7, "dimen"

    const-string v8, "android"

    const-string v9, "status_bar_height"

    invoke-virtual {v6, v9, v7, v8}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    if-lez v6, :cond_f

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    :cond_f
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    iget v6, v6, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v7

    iget v7, v7, Landroid/util/DisplayMetrics;->heightPixels:I

    sub-int/2addr v7, v5

    sget v5, Lcom/kakao/sdk/friend/core/k/p;->c:I

    if-ne v5, v4, :cond_10

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/kakao/sdk/friend/core/R$dimen;->popup_min_margin:I

    goto :goto_b

    :cond_10
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/kakao/sdk/friend/core/R$dimen;->popup_min_margin_landscape:I

    :goto_b
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    mul-int/2addr v4, v1

    sub-int v1, v6, v4

    sub-int v5, v7, v4

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    sget v9, Lcom/kakao/sdk/friend/core/R$dimen;->popup_max_width:I

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v9, Lcom/kakao/sdk/friend/core/R$dimen;->popup_max_height:I

    invoke-virtual {v3, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    if-nez v0, :cond_11

    goto :goto_c

    :cond_11
    add-int v9, v8, v4

    if-le v9, v6, :cond_12

    move v6, v1

    goto :goto_c

    :cond_12
    move v6, v8

    :goto_c
    sput v6, Lcom/kakao/sdk/friend/core/k/p;->a:I

    if-nez v0, :cond_13

    goto :goto_d

    :cond_13
    add-int/2addr v4, v3

    if-le v4, v7, :cond_14

    move v7, v5

    goto :goto_d

    :cond_14
    move v7, v3

    :goto_d
    sput v7, Lcom/kakao/sdk/friend/core/k/p;->b:I

    if-nez p1, :cond_1d

    .line 249
    iget-object p1, p0, Lcom/kakao/sdk/friend/core/l/c;->a:Lkotlin/Lazy;

    invoke-interface {p1}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/kakao/sdk/friend/core/i/o;

    if-eqz p1, :cond_15

    .line 259
    iget-object p1, p1, Lcom/kakao/sdk/friend/core/i/o;->h:Lcom/kakao/sdk/friend/core/internal/InternalTabParams;

    goto :goto_e

    :cond_15
    move-object p1, v2

    :goto_e
    const-string v0, "chat"

    const-string v1, "friend"

    if-eqz p1, :cond_16

    const-string p1, "tab"

    goto :goto_10

    .line 279
    :cond_16
    iget-object p1, p0, Lcom/kakao/sdk/friend/core/l/c;->a:Lkotlin/Lazy;

    invoke-interface {p1}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/kakao/sdk/friend/core/i/o;

    if-eqz p1, :cond_17

    .line 289
    iget-object p1, p1, Lcom/kakao/sdk/friend/core/i/o;->f:Lcom/kakao/sdk/friend/core/internal/InternalFriendsParams;

    goto :goto_f

    :cond_17
    move-object p1, v2

    :goto_f
    if-eqz p1, :cond_18

    move-object p1, v1

    goto :goto_10

    .line 309
    :cond_18
    iget-object p1, p0, Lcom/kakao/sdk/friend/core/l/c;->a:Lkotlin/Lazy;

    invoke-interface {p1}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/kakao/sdk/friend/core/i/o;

    if-eqz p1, :cond_19

    .line 319
    iget-object v2, p1, Lcom/kakao/sdk/friend/core/i/o;->g:Lcom/kakao/sdk/friend/core/internal/InternalChatParams;

    :cond_19
    if-eqz v2, :cond_1a

    move-object p1, v0

    goto :goto_10

    :cond_1a
    const-string p1, ""

    .line 339
    :goto_10
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 349
    iget-object v3, p0, Lcom/kakao/sdk/friend/core/l/c;->a:Lkotlin/Lazy;

    invoke-interface {v3}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/kakao/sdk/friend/core/i/o;

    const-string v4, "key.picker.setting"

    .line 359
    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1b

    new-instance p1, Lcom/kakao/sdk/friend/core/l/S;

    invoke-direct {p1}, Lcom/kakao/sdk/friend/core/l/S;-><init>()V

    :goto_11
    invoke-virtual {p1, v2}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    goto :goto_12

    :cond_1b
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1c

    new-instance p1, Lcom/kakao/sdk/friend/core/l/s;

    invoke-direct {p1}, Lcom/kakao/sdk/friend/core/l/s;-><init>()V

    goto :goto_11

    :cond_1c
    new-instance p1, Lcom/kakao/sdk/friend/core/l/m0;

    invoke-direct {p1}, Lcom/kakao/sdk/friend/core/l/m0;-><init>()V

    goto :goto_11

    :goto_12
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    sget v1, Lcom/kakao/sdk/friend/core/R$id;->fragment_container:I

    invoke-virtual {v0, v1, p1}, Landroidx/fragment/app/FragmentTransaction;->add(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    .line 369
    :cond_1d
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x21

    if-lt p1, v0, :cond_1e

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getOnBackPressedDispatcher()Landroidx/activity/OnBackPressedDispatcher;

    move-result-object p1

    new-instance v0, Lcom/kakao/sdk/friend/core/l/a;

    invoke-direct {v0, p0}, Lcom/kakao/sdk/friend/core/l/a;-><init>(Lcom/kakao/sdk/friend/core/l/c;)V

    invoke-virtual {p1, v0}, Landroidx/activity/OnBackPressedDispatcher;->addCallback(Landroidx/activity/OnBackPressedCallback;)V

    :cond_1e
    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public final onDestroy()V
    .locals 4

    const-string v0, "Failed to clear data source: "

    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onDestroy()V

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->isChangingConfigurations()Z

    move-result v1

    if-nez v1, :cond_1

    :try_start_0
    invoke-static {}, Lcom/kakao/sdk/friend/core/a/m;->a()Lcom/kakao/sdk/friend/core/d/a;

    move-result-object v1

    .line 19
    iget-object v2, p0, Lcom/kakao/sdk/friend/core/l/c;->a:Lkotlin/Lazy;

    invoke-interface {v2}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/kakao/sdk/friend/core/i/o;

    if-eqz v2, :cond_0

    .line 29
    invoke-virtual {v2}, Lcom/kakao/sdk/friend/core/i/o;->b()I

    move-result v2

    check-cast v1, Lcom/kakao/sdk/friend/core/d/i;

    invoke-virtual {v1, v2}, Lcom/kakao/sdk/friend/core/d/i;->a(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_2

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v1

    :try_start_1
    sget-object v2, Lcom/kakao/sdk/common/util/SdkLog;->Companion:Lcom/kakao/sdk/common/util/SdkLog$Companion;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/kakao/sdk/common/util/SdkLog$Companion;->e(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :goto_1
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    throw v0

    :cond_1
    :goto_2
    return-void

    nop

    .array-data 1
    .end array-data
.end method
