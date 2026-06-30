.class public final Lcom/kakao/sdk/friend/core/c/c;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "SourceFile"


# instance fields
.field public final a:Z

.field public final b:Lcom/kakao/sdk/friend/core/e/i;

.field public final c:Lkotlin/jvm/functions/Function1;

.field public final d:Lkotlin/jvm/functions/Function1;


# direct methods
.method public constructor <init>(ZLcom/kakao/sdk/friend/core/e/i;Lcom/kakao/sdk/friend/core/b/a;Lcom/kakao/sdk/friend/core/b/b;)V
    .locals 1

    const-string v0, "binding"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "checkCallback"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "uncheckCallback"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    iget-object v0, p2, Lcom/kakao/sdk/friend/core/e/i;->a:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 29
    invoke-direct {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    iput-boolean p1, p0, Lcom/kakao/sdk/friend/core/c/c;->a:Z

    iput-object p2, p0, Lcom/kakao/sdk/friend/core/c/c;->b:Lcom/kakao/sdk/friend/core/e/i;

    iput-object p3, p0, Lcom/kakao/sdk/friend/core/c/c;->c:Lkotlin/jvm/functions/Function1;

    iput-object p4, p0, Lcom/kakao/sdk/friend/core/c/c;->d:Lkotlin/jvm/functions/Function1;

    return-void

    .array-data 1
    .end array-data
.end method

.method public static a(Lcom/kakao/sdk/friend/core/i/a;I)I
    .locals 2

    .line 649
    iget-object v0, p0, Lcom/kakao/sdk/friend/core/i/a;->e:Ljava/lang/Integer;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    goto :goto_0

    .line 659
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v1, :cond_1

    return v1

    .line 669
    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/kakao/sdk/friend/core/i/a;->e:Ljava/lang/Integer;

    if-eqz p0, :cond_2

    .line 679
    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    sub-int/2addr p0, v1

    const/4 v0, 0x4

    invoke-static {p0, v0}, Ljava/lang/Math;->min(II)I

    move-result p0

    if-le p0, p1, :cond_2

    sub-int/2addr p0, p1

    goto :goto_1

    :cond_2
    const/4 p0, 0x0

    :goto_1
    return p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static a(Landroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 2

    sget-object v0, Lkotlin/random/Random;->Default:Lkotlin/random/Random$Default;

    invoke-virtual {v0}, Lkotlin/random/Random$Default;->nextInt()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sget-object v1, Lcom/kakao/sdk/friend/core/k/a;->a:Landroid/graphics/Paint;

    const-string v1, "context"

    .line 689
    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 699
    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/kakao/sdk/friend/core/k/u;->a(Ljava/lang/Integer;Landroid/content/Context;)Landroid/util/TypedValue;

    move-result-object p0

    iget p0, p0, Landroid/util/TypedValue;->resourceId:I

    invoke-static {v1, p0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p0

    const-string v0, "decodeResource(\n        \u2026context).resourceId\n    )"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    const/16 v1, 0x6e

    .line 709
    invoke-static {p0, v1, v1, v0}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p0

    const-string v0, "createScaledBitmap(\n    \u2026eight,\n        true\n    )"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    .array-data 1
    .end array-data
.end method

.method public static final a(Lcom/kakao/sdk/friend/core/e/i;Lcom/kakao/sdk/friend/core/c/c;Lcom/kakao/sdk/friend/core/i/a;Landroid/view/View;)V
    .locals 0

    const-string p3, "$this_bindRootView"

    .line 639
    invoke-static {p0, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "this$0"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "$chat"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/kakao/sdk/friend/core/e/i;->b:Landroidx/appcompat/widget/AppCompatRadioButton;

    invoke-virtual {p0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result p0

    if-nez p0, :cond_0

    iget-object p0, p1, Lcom/kakao/sdk/friend/core/c/c;->c:Lkotlin/jvm/functions/Function1;

    goto :goto_0

    :cond_0
    iget-object p0, p1, Lcom/kakao/sdk/friend/core/c/c;->d:Lkotlin/jvm/functions/Function1;

    :goto_0
    invoke-interface {p0, p2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public final a(Lcom/kakao/sdk/friend/core/e/i;Lcom/kakao/sdk/friend/core/i/a;)V
    .locals 2

    .line 619
    iget-object v0, p1, Lcom/kakao/sdk/friend/core/e/i;->a:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 629
    new-instance v1, Lcom/kakao/sdk/friend/core/c/c$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1, p0, p2}, Lcom/kakao/sdk/friend/core/c/c$$ExternalSyntheticLambda0;-><init>(Lcom/kakao/sdk/friend/core/e/i;Lcom/kakao/sdk/friend/core/c/c;Lcom/kakao/sdk/friend/core/i/a;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public final a(Lcom/kakao/sdk/friend/core/i/a;)V
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "chat"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, v0, Lcom/kakao/sdk/friend/core/c/c;->b:Lcom/kakao/sdk/friend/core/e/i;

    .line 19
    iget-object v2, v2, Lcom/kakao/sdk/friend/core/e/i;->a:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 29
    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "root.context"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x0

    invoke-static {v1, v4}, Lcom/kakao/sdk/friend/core/c/c;->a(Lcom/kakao/sdk/friend/core/i/a;I)I

    move-result v5

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    move v7, v4

    :goto_0
    if-ge v7, v5, :cond_0

    invoke-static {v2}, Lcom/kakao/sdk/friend/core/c/c;->a(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 39
    :cond_0
    invoke-static {v2, v6}, Lcom/kakao/sdk/friend/core/k/a;->a(Landroid/content/Context;Ljava/util/List;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 49
    iget-object v5, v0, Lcom/kakao/sdk/friend/core/c/c;->b:Lcom/kakao/sdk/friend/core/e/i;

    iget-object v5, v5, Lcom/kakao/sdk/friend/core/e/i;->e:Landroid/widget/ImageView;

    invoke-virtual {v5, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 59
    iget-object v2, v0, Lcom/kakao/sdk/friend/core/c/c;->b:Lcom/kakao/sdk/friend/core/e/i;

    invoke-virtual {v0, v2, v1}, Lcom/kakao/sdk/friend/core/c/c;->a(Lcom/kakao/sdk/friend/core/e/i;Lcom/kakao/sdk/friend/core/i/a;)V

    iget-object v2, v0, Lcom/kakao/sdk/friend/core/c/c;->b:Lcom/kakao/sdk/friend/core/e/i;

    .line 69
    sget v5, Lcom/kakao/sdk/friend/core/R$drawable;->kakao_sdk_daynight_radio:I

    iget-object v6, v2, Lcom/kakao/sdk/friend/core/e/i;->b:Landroidx/appcompat/widget/AppCompatRadioButton;

    invoke-virtual {v6, v5}, Landroidx/appcompat/widget/AppCompatRadioButton;->setButtonDrawable(I)V

    iget-object v2, v2, Lcom/kakao/sdk/friend/core/e/i;->b:Landroidx/appcompat/widget/AppCompatRadioButton;

    .line 79
    iget-boolean v5, v1, Lcom/kakao/sdk/friend/core/i/a;->h:Z

    .line 89
    invoke-virtual {v2, v5}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 99
    iget-object v2, v0, Lcom/kakao/sdk/friend/core/c/c;->b:Lcom/kakao/sdk/friend/core/e/i;

    iget-object v2, v2, Lcom/kakao/sdk/friend/core/e/i;->f:Landroid/widget/TextView;

    .line 109
    iget-object v5, v1, Lcom/kakao/sdk/friend/core/i/a;->b:Ljava/lang/String;

    .line 119
    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, v0, Lcom/kakao/sdk/friend/core/c/c;->b:Lcom/kakao/sdk/friend/core/e/i;

    .line 129
    iget-object v5, v1, Lcom/kakao/sdk/friend/core/i/a;->e:Ljava/lang/Integer;

    const/16 v6, 0x8

    const/4 v7, 0x1

    if-eqz v5, :cond_2

    .line 139
    invoke-virtual {v5}, Ljava/lang/Number;->intValue()I

    move-result v5

    iget-object v8, v2, Lcom/kakao/sdk/friend/core/e/i;->c:Landroid/widget/TextView;

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v8, v2, Lcom/kakao/sdk/friend/core/e/i;->c:Landroid/widget/TextView;

    const/4 v9, 0x3

    if-ge v5, v9, :cond_1

    move v5, v6

    goto :goto_1

    :cond_1
    move v5, v4

    :goto_1
    invoke-virtual {v8, v5}, Landroid/view/View;->setVisibility(I)V

    iget-object v5, v2, Lcom/kakao/sdk/friend/core/e/i;->c:Landroid/widget/TextView;

    .line 149
    iget-object v8, v2, Lcom/kakao/sdk/friend/core/e/i;->a:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 159
    invoke-virtual {v8}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v8

    sget v9, Lcom/kakao/sdk/friend/core/R$string;->accessibility_member_count_unit:I

    iget-object v2, v2, Lcom/kakao/sdk/friend/core/e/i;->c:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-array v10, v7, [Ljava/lang/Object;

    aput-object v2, v10, v4

    invoke-virtual {v8, v9, v10}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 169
    :cond_2
    iget-object v2, v0, Lcom/kakao/sdk/friend/core/c/c;->b:Lcom/kakao/sdk/friend/core/e/i;

    .line 179
    iget-object v5, v2, Lcom/kakao/sdk/friend/core/e/i;->a:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 189
    invoke-virtual {v5}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const/4 v8, 0x2

    new-array v8, v8, [Lcom/kakao/sdk/friend/core/model/PickerChatRoomType;

    sget-object v9, Lcom/kakao/sdk/friend/core/model/PickerChatRoomType;->OPEN_DIRECT_CHAT:Lcom/kakao/sdk/friend/core/model/PickerChatRoomType;

    aput-object v9, v8, v4

    sget-object v9, Lcom/kakao/sdk/friend/core/model/PickerChatRoomType;->OPEN_MULTI_CHAT:Lcom/kakao/sdk/friend/core/model/PickerChatRoomType;

    aput-object v9, v8, v7

    invoke-static {v8}, Lkotlin/collections/SetsKt;->setOf([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v8

    .line 199
    iget-object v9, v1, Lcom/kakao/sdk/friend/core/i/a;->g:Lcom/kakao/sdk/friend/core/model/PickerChatRoomType;

    .line 209
    invoke-static {v8, v9}, Lkotlin/collections/CollectionsKt;->contains(Ljava/lang/Iterable;Ljava/lang/Object;)Z

    move-result v8

    iget-object v9, v2, Lcom/kakao/sdk/friend/core/e/i;->d:Landroid/widget/ImageView;

    if-eqz v8, :cond_3

    move v6, v4

    :cond_3
    invoke-virtual {v9, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-boolean v6, v0, Lcom/kakao/sdk/friend/core/c/c;->a:Z

    if-eqz v8, :cond_5

    if-eqz v6, :cond_4

    sget v6, Lcom/kakao/sdk/friend/core/R$dimen;->popup_list_item_open_chat_title_margin_start:I

    goto :goto_2

    :cond_4
    sget v6, Lcom/kakao/sdk/friend/core/R$dimen;->list_item_open_chat_title_margin_start:I

    goto :goto_2

    :cond_5
    if-eqz v6, :cond_6

    sget v6, Lcom/kakao/sdk/friend/core/R$dimen;->popup_list_item_nickname_margin_start:I

    goto :goto_2

    :cond_6
    sget v6, Lcom/kakao/sdk/friend/core/R$dimen;->list_item_nickname_margin_start:I

    :goto_2
    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iget-object v2, v2, Lcom/kakao/sdk/friend/core/e/i;->f:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    instance-of v6, v2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    if-eqz v6, :cond_7

    check-cast v2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    goto :goto_3

    :cond_7
    const/4 v2, 0x0

    :goto_3
    if-eqz v2, :cond_8

    invoke-virtual {v2, v5}, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->setMarginStart(I)V

    .line 219
    :cond_8
    iget-object v2, v0, Lcom/kakao/sdk/friend/core/c/c;->b:Lcom/kakao/sdk/friend/core/e/i;

    .line 229
    iget-object v5, v2, Lcom/kakao/sdk/friend/core/e/i;->a:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 239
    invoke-virtual {v5}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 249
    iget-wide v8, v1, Lcom/kakao/sdk/friend/core/i/a;->a:J

    .line 259
    invoke-static {v5, v8, v9}, Lcom/kakao/sdk/friend/core/k/a;->a(Landroid/content/Context;J)Landroid/graphics/Bitmap;

    move-result-object v5

    if-eqz v5, :cond_9

    iget-object v1, v2, Lcom/kakao/sdk/friend/core/e/i;->e:Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto/16 :goto_6

    .line 269
    :cond_9
    iget-object v5, v1, Lcom/kakao/sdk/friend/core/i/a;->d:Ljava/lang/String;

    const-string v6, "service.submit(action)"

    const-string v8, "action"

    const-string v9, "Method call should happen from the main thread."

    const-string v10, "downloader"

    const-string v11, "loader"

    const-string v12, "callback"

    const-string v13, "imageUrls"

    if-eqz v5, :cond_c

    .line 279
    invoke-static {v5}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v5

    xor-int/2addr v5, v7

    if-ne v5, v7, :cond_c

    sget-object v5, Lcom/kakao/sdk/friend/core/f/h;->d:Ljava/io/File;

    .line 289
    iget-object v5, v2, Lcom/kakao/sdk/friend/core/e/i;->a:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 299
    invoke-virtual {v5}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v5}, Lcom/kakao/sdk/friend/core/f/g;->a(Landroid/content/Context;)Lcom/kakao/sdk/friend/core/f/h;

    move-result-object v3

    .line 309
    iget-object v5, v1, Lcom/kakao/sdk/friend/core/i/a;->d:Ljava/lang/String;

    .line 319
    invoke-static {v5}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 329
    invoke-static {v5, v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v7, v3, Lcom/kakao/sdk/friend/core/f/h;->b:Lcom/kakao/sdk/friend/core/f/d;

    .line 339
    invoke-static {v3, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v5, v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v7, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 349
    new-instance v10, Lcom/kakao/sdk/friend/core/c/a;

    invoke-direct {v10, v2, v1}, Lcom/kakao/sdk/friend/core/c/a;-><init>(Lcom/kakao/sdk/friend/core/e/i;Lcom/kakao/sdk/friend/core/i/a;)V

    invoke-static {v10, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_12

    sget-object v2, Lcom/kakao/sdk/friend/core/f/h;->d:Ljava/io/File;

    invoke-static {v1}, Lcom/kakao/sdk/friend/core/f/g;->a(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    if-eqz v2, :cond_a

    .line 359
    invoke-static {v10, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v10, v2}, Lcom/kakao/sdk/friend/core/c/a;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_6

    .line 369
    :cond_a
    new-instance v2, Lcom/kakao/sdk/friend/core/g/a;

    invoke-direct {v2, v1, v7, v10}, Lcom/kakao/sdk/friend/core/g/a;-><init>(Ljava/lang/String;Lcom/kakao/sdk/friend/core/f/d;Lcom/kakao/sdk/friend/core/c/a;)V

    .line 379
    invoke-static {v2, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/kakao/sdk/friend/core/f/h;->a()V

    iget-object v4, v3, Lcom/kakao/sdk/friend/core/f/h;->c:Ljava/util/LinkedHashMap;

    .line 389
    iget-object v3, v3, Lcom/kakao/sdk/friend/core/f/h;->a:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v3, v2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v2

    invoke-static {v2, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v4, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_6

    .line 399
    :cond_b
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v9}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 409
    :cond_c
    iget-object v5, v1, Lcom/kakao/sdk/friend/core/i/a;->f:Ljava/util/List;

    if-eqz v5, :cond_10

    .line 419
    invoke-interface {v5}, Ljava/util/Collection;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_d

    goto/16 :goto_4

    :cond_d
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 429
    iget-object v5, v1, Lcom/kakao/sdk/friend/core/i/a;->f:Ljava/util/List;

    const/4 v7, 0x4

    .line 439
    invoke-static {v5, v7}, Lkotlin/collections/CollectionsKt;->take(Ljava/lang/Iterable;I)Ljava/util/List;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    sget-object v5, Lcom/kakao/sdk/friend/core/f/h;->d:Ljava/io/File;

    .line 449
    iget-object v5, v2, Lcom/kakao/sdk/friend/core/e/i;->a:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 459
    invoke-virtual {v5}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v5}, Lcom/kakao/sdk/friend/core/f/g;->a(Landroid/content/Context;)Lcom/kakao/sdk/friend/core/f/h;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 469
    invoke-static {v4, v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v5, v3, Lcom/kakao/sdk/friend/core/f/h;->b:Lcom/kakao/sdk/friend/core/f/d;

    .line 479
    invoke-static {v3, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v4, v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v5, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 489
    iget-wide v10, v1, Lcom/kakao/sdk/friend/core/i/a;->a:J

    .line 499
    new-instance v7, Lcom/kakao/sdk/friend/core/c/b;

    invoke-direct {v7, v2, v0, v1}, Lcom/kakao/sdk/friend/core/c/b;-><init>(Lcom/kakao/sdk/friend/core/e/i;Lcom/kakao/sdk/friend/core/c/c;Lcom/kakao/sdk/friend/core/i/a;)V

    .line 509
    invoke-static {v7, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_e

    goto :goto_6

    :cond_e
    new-instance v1, Lcom/kakao/sdk/friend/core/g/b;

    move-object v14, v1

    move-wide v15, v10

    move-object/from16 v17, v4

    move-object/from16 v18, v5

    move-object/from16 v19, v7

    invoke-direct/range {v14 .. v19}, Lcom/kakao/sdk/friend/core/g/b;-><init>(JLjava/util/List;Lcom/kakao/sdk/friend/core/f/d;Lcom/kakao/sdk/friend/core/c/b;)V

    .line 519
    invoke-static {v1, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/kakao/sdk/friend/core/f/h;->a()V

    iget-object v2, v3, Lcom/kakao/sdk/friend/core/f/h;->c:Ljava/util/LinkedHashMap;

    .line 529
    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    iget-object v3, v3, Lcom/kakao/sdk/friend/core/f/h;->a:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v3, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v1

    invoke-static {v1, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v2, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_6

    .line 539
    :cond_f
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v9}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 549
    :cond_10
    :goto_4
    iget-object v5, v1, Lcom/kakao/sdk/friend/core/i/a;->e:Ljava/lang/Integer;

    if-eqz v5, :cond_12

    .line 559
    iget-object v5, v2, Lcom/kakao/sdk/friend/core/e/i;->a:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 569
    invoke-virtual {v5}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 579
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v1, v4}, Lcom/kakao/sdk/friend/core/c/c;->a(Lcom/kakao/sdk/friend/core/i/a;I)I

    move-result v6

    :goto_5
    if-ge v4, v6, :cond_11

    invoke-static {v5}, Lcom/kakao/sdk/friend/core/c/c;->a(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    :cond_11
    sget-object v4, Lcom/kakao/sdk/friend/core/k/a;->a:Landroid/graphics/Paint;

    .line 589
    iget-wide v6, v1, Lcom/kakao/sdk/friend/core/i/a;->a:J

    .line 599
    invoke-static {v5, v6, v7, v3}, Lcom/kakao/sdk/friend/core/k/a;->a(Landroid/content/Context;JLjava/util/List;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 609
    iget-object v2, v2, Lcom/kakao/sdk/friend/core/e/i;->e:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_12
    :goto_6
    return-void

    nop

    .array-data 1
    .end array-data
.end method
