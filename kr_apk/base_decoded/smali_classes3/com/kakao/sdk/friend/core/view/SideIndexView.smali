.class public final Lcom/kakao/sdk/friend/core/view/SideIndexView;
.super Landroid/view/View;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000X\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010\u000b\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0000\u0018\u00002\u00020\u0001:\u0001-B\u0011\u0008\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0004\u0010\u0005B\u001b\u0008\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u00a2\u0006\u0004\u0008\u0004\u0010\u0008B#\u0008\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u0012\u0006\u0010\n\u001a\u00020\t\u00a2\u0006\u0004\u0008\u0004\u0010\u000bJ\u0017\u0010\u000e\u001a\u00020\r2\u0006\u0010\u000c\u001a\u00020\tH\u0016\u00a2\u0006\u0004\u0008\u000e\u0010\u000fJ\u0017\u0010\u0011\u001a\u00020\r2\u0006\u0010\u0010\u001a\u00020\tH\u0002\u00a2\u0006\u0004\u0008\u0011\u0010\u000fR$\u0010\u0019\u001a\u0004\u0018\u00010\u00128\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0013\u0010\u0014\u001a\u0004\u0008\u0015\u0010\u0016\"\u0004\u0008\u0017\u0010\u0018R\"\u0010\u001d\u001a\u00020\u001a8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u001b\u0010\u001c\u001a\u0004\u0008\u001d\u0010\u001e\"\u0004\u0008\u001f\u0010 R+\u0010(\u001a\u0012\u0012\u0004\u0012\u00020\"0!j\u0008\u0012\u0004\u0012\u00020\"`#8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008$\u0010%\u001a\u0004\u0008&\u0010\'R\u0011\u0010,\u001a\u00020)8F\u00a2\u0006\u0006\u001a\u0004\u0008*\u0010+\u00a8\u00060\u00b2\u0006\u0012\u0010/\u001a\u0008\u0012\u0004\u0012\u00020\"0.8\nX\u008a\u0084\u0002"
    }
    d2 = {
        "Lcom/kakao/sdk/friend/core/view/SideIndexView;",
        "Landroid/view/View;",
        "Landroid/content/Context;",
        "context",
        "<init>",
        "(Landroid/content/Context;)V",
        "Landroid/util/AttributeSet;",
        "attrs",
        "(Landroid/content/Context;Landroid/util/AttributeSet;)V",
        "",
        "defStyleAttr",
        "(Landroid/content/Context;Landroid/util/AttributeSet;I)V",
        "visibility",
        "",
        "setVisibility",
        "(I)V",
        "orientation",
        "setIternalIndexItems",
        "Landroidx/recyclerview/widget/RecyclerView;",
        "y",
        "Landroidx/recyclerview/widget/RecyclerView;",
        "getRecyclerView",
        "()Landroidx/recyclerview/widget/RecyclerView;",
        "setRecyclerView",
        "(Landroidx/recyclerview/widget/RecyclerView;)V",
        "recyclerView",
        "",
        "z",
        "Z",
        "isEnabledSideIndex",
        "()Z",
        "setEnabledSideIndex",
        "(Z)V",
        "Ljava/util/Comparator;",
        "",
        "Lkotlin/Comparator;",
        "B",
        "Lkotlin/Lazy;",
        "getSideIndexerOldComparator",
        "()Ljava/util/Comparator;",
        "sideIndexerOldComparator",
        "Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;",
        "getOnScrollListener",
        "()Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;",
        "onScrollListener",
        "com/kakao/sdk/friend/core/l/X",
        "Ljava/util/TreeSet;",
        "alphabetIndexSet",
        "friend-core_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
.end annotation


# instance fields
.field public final A:Ljava/util/Comparator;

.field public final B:Lkotlin/Lazy;

.field public final C:Lcom/kakao/sdk/friend/core/l/a0;

.field public final a:Ljava/util/ArrayList;

.field public b:[Ljava/lang/String;

.field public c:[Ljava/lang/String;

.field public d:I

.field public e:F

.field public final f:Landroid/graphics/Paint;

.field public final g:F

.field public h:F

.field public i:F

.field public j:F

.field public k:F

.field public l:F

.field public final m:Landroid/graphics/drawable/Drawable;

.field public n:Z

.field public o:Ljava/util/TreeMap;

.field public p:I

.field public q:I

.field public r:I

.field public s:Z

.field public t:Z

.field public u:Z

.field public final v:Lcom/kakao/sdk/friend/core/l/X;

.field public final w:Landroid/widget/TextView;

.field public final x:Landroid/widget/ImageView;

.field public y:Landroidx/recyclerview/widget/RecyclerView;

.field public z:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    .line 19
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/kakao/sdk/friend/core/view/SideIndexView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const-string v0, "context"

    .line 29
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/kakao/sdk/friend/core/view/SideIndexView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void

    .array-data 1
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 10

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    iput-object p3, p0, Lcom/kakao/sdk/friend/core/view/SideIndexView;->a:Ljava/util/ArrayList;

    const/4 p3, -0x1

    iput p3, p0, Lcom/kakao/sdk/friend/core/view/SideIndexView;->d:I

    const/high16 v1, -0x40800000    # -1.0f

    iput v1, p0, Lcom/kakao/sdk/friend/core/view/SideIndexView;->e:F

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/kakao/sdk/friend/core/view/SideIndexView;->f:Landroid/graphics/Paint;

    iput p3, p0, Lcom/kakao/sdk/friend/core/view/SideIndexView;->p:I

    new-instance p3, Lcom/kakao/sdk/friend/core/l/X;

    invoke-direct {p3, p0}, Lcom/kakao/sdk/friend/core/l/X;-><init>(Lcom/kakao/sdk/friend/core/view/SideIndexView;)V

    iput-object p3, p0, Lcom/kakao/sdk/friend/core/view/SideIndexView;->v:Lcom/kakao/sdk/friend/core/l/X;

    const/4 p3, 0x1

    iput-boolean p3, p0, Lcom/kakao/sdk/friend/core/view/SideIndexView;->z:Z

    new-instance v2, Lcom/kakao/sdk/friend/core/view/SideIndexView$$ExternalSyntheticLambda0;

    invoke-direct {v2}, Lcom/kakao/sdk/friend/core/view/SideIndexView$$ExternalSyntheticLambda0;-><init>()V

    iput-object v2, p0, Lcom/kakao/sdk/friend/core/view/SideIndexView;->A:Ljava/util/Comparator;

    sget-object v2, Lcom/kakao/sdk/friend/core/l/Z;->a:Lcom/kakao/sdk/friend/core/l/Z;

    invoke-static {v2}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v2

    iput-object v2, p0, Lcom/kakao/sdk/friend/core/view/SideIndexView;->B:Lkotlin/Lazy;

    new-instance v2, Lcom/kakao/sdk/friend/core/l/a0;

    invoke-direct {v2, p0}, Lcom/kakao/sdk/friend/core/l/a0;-><init>(Lcom/kakao/sdk/friend/core/view/SideIndexView;)V

    iput-object v2, p0, Lcom/kakao/sdk/friend/core/view/SideIndexView;->C:Lcom/kakao/sdk/friend/core/l/a0;

    sget-object v2, Lcom/kakao/sdk/friend/core/R$styleable;->SideIndexView:[I

    invoke-virtual {p1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    sget v2, Lcom/kakao/sdk/friend/core/R$styleable;->SideIndexView_sideindex_text_color:I

    const v3, -0x777778

    invoke-virtual {p2, v2, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    sget v3, Lcom/kakao/sdk/friend/core/R$styleable;->SideIndexView_sideindex_text_size:I

    .line 39
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    const/4 v5, 0x2

    const/high16 v6, 0x41400000    # 12.0f

    invoke-static {v5, v6, v4}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v4

    float-to-int v4, v4

    int-to-float v4, v4

    .line 49
    invoke-virtual {p2, v3, v4}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v3

    iput v3, p0, Lcom/kakao/sdk/friend/core/view/SideIndexView;->g:F

    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {v1, p3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    sget-object p2, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v1, p2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    :try_start_0
    sget-object p2, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    invoke-virtual {v1, p2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lcom/kakao/sdk/friend/core/R$array;->side_indexer_landscape:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p3

    const-string v1, "getStringArray(R.array.side_indexer_landscape)"

    invoke-static {p3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p3, p0, Lcom/kakao/sdk/friend/core/view/SideIndexView;->c:[Ljava/lang/String;

    sget p3, Lcom/kakao/sdk/friend/core/R$array;->side_indexer:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p3

    const-string v1, "getStringArray(R.array.side_indexer)"

    invoke-static {p3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p3, p0, Lcom/kakao/sdk/friend/core/view/SideIndexView;->b:[Ljava/lang/String;

    sget p3, Lcom/kakao/sdk/friend/core/R$drawable;->kakao_sdk_list_index_ico_favorite:I

    invoke-static {p1, p3}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    const/4 v1, 0x0

    if-eqz p3, :cond_0

    sget v2, Lcom/kakao/sdk/friend/core/R$color;->daynight_gray600s:I

    invoke-static {p1, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    .line 59
    invoke-static {p3}, Landroidx/core/graphics/drawable/DrawableCompat;->wrap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    const-string/jumbo v4, "wrap(drawable)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-static {v3, v2}, Landroidx/core/graphics/drawable/DrawableCompat;->setTint(Landroid/graphics/drawable/Drawable;I)V

    goto :goto_0

    :cond_0
    move-object p3, v1

    .line 69
    :goto_0
    iput-object p3, p0, Lcom/kakao/sdk/friend/core/view/SideIndexView;->m:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p2

    iget p2, p2, Landroid/content/res/Configuration;->orientation:I

    invoke-direct {p0, p2}, Lcom/kakao/sdk/friend/core/view/SideIndexView;->setIternalIndexItems(I)V

    iget-object p2, p0, Lcom/kakao/sdk/friend/core/view/SideIndexView;->C:Lcom/kakao/sdk/friend/core/l/a0;

    sget p3, Lcom/kakao/sdk/friend/core/R$layout;->kakao_sdk_side_index_single_toast_layout:I

    .line 79
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 89
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p2, Lcom/kakao/sdk/friend/core/l/a0;->a:Landroid/content/Context;

    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type android.view.LayoutInflater"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/view/LayoutInflater;

    invoke-virtual {p1, p3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    const-string p3, "inflater.inflate(resId, null)"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p2, Lcom/kakao/sdk/friend/core/l/a0;->c:Landroid/view/View;

    const-string p3, "dialogPosition"

    if-nez p1, :cond_1

    invoke-static {p3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v1

    :cond_1
    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    const/4 p1, 0x0

    iput p1, p2, Lcom/kakao/sdk/friend/core/l/a0;->e:I

    iput p1, p2, Lcom/kakao/sdk/friend/core/l/a0;->f:I

    .line 99
    iget-object p1, p2, Lcom/kakao/sdk/friend/core/l/a0;->a:Landroid/content/Context;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const-string/jumbo v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type android.view.WindowManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/view/WindowManager;

    iput-object p1, p2, Lcom/kakao/sdk/friend/core/l/a0;->b:Landroid/view/WindowManager;

    new-instance p1, Landroid/view/WindowManager$LayoutParams;

    iget v5, p2, Lcom/kakao/sdk/friend/core/l/a0;->e:I

    iget v6, p2, Lcom/kakao/sdk/friend/core/l/a0;->f:I

    const/4 v3, -0x2

    const/4 v4, -0x2

    const/4 v7, 0x2

    const/16 v8, 0x18

    const/4 v9, -0x3

    move-object v2, p1

    invoke-direct/range {v2 .. v9}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIIIII)V

    iput-object p1, p2, Lcom/kakao/sdk/friend/core/l/a0;->g:Landroid/view/WindowManager$LayoutParams;

    .line 109
    iget-object p1, p0, Lcom/kakao/sdk/friend/core/view/SideIndexView;->C:Lcom/kakao/sdk/friend/core/l/a0;

    sget p2, Lcom/kakao/sdk/friend/core/R$id;->toast_tv:I

    .line 119
    iget-object p1, p1, Lcom/kakao/sdk/friend/core/l/a0;->c:Landroid/view/View;

    if-nez p1, :cond_2

    .line 129
    invoke-static {p3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v1

    :cond_2
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string p2, "dialogPosition.findViewById(id)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "null cannot be cast to non-null type android.widget.TextView"

    .line 139
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/kakao/sdk/friend/core/view/SideIndexView;->w:Landroid/widget/TextView;

    iget-object p1, p0, Lcom/kakao/sdk/friend/core/view/SideIndexView;->C:Lcom/kakao/sdk/friend/core/l/a0;

    sget v0, Lcom/kakao/sdk/friend/core/R$id;->toast_iv:I

    .line 149
    iget-object p1, p1, Lcom/kakao/sdk/friend/core/l/a0;->c:Landroid/view/View;

    if-nez p1, :cond_3

    .line 159
    invoke-static {p3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    move-object v1, p1

    :goto_1
    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "null cannot be cast to non-null type android.widget.ImageView"

    .line 169
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/kakao/sdk/friend/core/view/SideIndexView;->x:Landroid/widget/ImageView;

    return-void

    .array-data 1
    .end array-data
.end method

.method public static final a(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2

    sget-object v0, Lcom/kakao/sdk/friend/core/k/m;->a:Lcom/kakao/sdk/friend/core/k/l;

    sget-object v0, Lcom/kakao/sdk/friend/core/util/StringUtils;->INSTANCE:Lcom/kakao/sdk/friend/core/util/StringUtils;

    const-string v1, "lhs"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Lcom/kakao/sdk/friend/core/util/StringUtils;->trimZeroWidthChars$friend_core_release(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "rhs"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lcom/kakao/sdk/friend/core/util/StringUtils;->trimZeroWidthChars$friend_core_release(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 119
    sget-object v0, Lcom/kakao/sdk/friend/core/k/m;->a:Lcom/kakao/sdk/friend/core/k/l;

    invoke-virtual {v0, p0, p1}, Lcom/kakao/sdk/friend/core/k/l;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static a(Ljava/util/ArrayList;Ljava/util/Comparator;)Ljava/util/TreeMap;
    .locals 9

    new-instance v0, Lcom/kakao/sdk/friend/core/l/Y;

    invoke-direct {v0, p1}, Lcom/kakao/sdk/friend/core/l/Y;-><init>(Ljava/util/Comparator;)V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    new-instance v1, Ljava/util/TreeMap;

    invoke-direct {v1, p1}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v2, p1, :cond_6

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/kakao/sdk/friend/core/i/f;

    instance-of v5, v4, Lcom/kakao/sdk/friend/core/k/b;

    if-eqz v5, :cond_0

    sget-object v5, Lcom/kakao/sdk/friend/core/util/StringUtils;->INSTANCE:Lcom/kakao/sdk/friend/core/util/StringUtils;

    check-cast v4, Lcom/kakao/sdk/friend/core/k/b;

    invoke-interface {v4}, Lcom/kakao/sdk/friend/core/k/b;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Lcom/kakao/sdk/friend/core/util/StringUtils;->trimZeroWidthChars$friend_core_release(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/kakao/sdk/friend/core/k/q;->a(Ljava/lang/String;)C

    move-result v4

    goto :goto_1

    :cond_0
    move v4, v3

    :goto_1
    if-ne v3, v4, :cond_1

    goto :goto_4

    :cond_1
    invoke-static {v4}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    const/4 v7, 0x1

    if-le v6, v7, :cond_2

    goto :goto_4

    :cond_2
    invoke-static {v4}, Lcom/kakao/sdk/friend/core/k/q;->c(C)I

    move-result v3

    const/4 v6, 0x3

    const-string/jumbo v7, "toUpperCase(...)"

    if-eq v3, v6, :cond_4

    const/16 v6, 0x9

    if-eq v3, v6, :cond_3

    .line 19
    sget-object v3, Lcom/kakao/sdk/friend/core/k/m;->a:Lcom/kakao/sdk/friend/core/k/l;

    goto :goto_2

    :cond_3
    const-string v3, "#"

    goto :goto_3

    .line 59
    :cond_4
    :try_start_0
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/TreeSet;

    .line 69
    invoke-static {v4}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/TreeSet;->floor(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    const-string v6, "alphabetIndexSet.floor(curChar.toString())"

    invoke-static {v3, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Ljava/lang/String;

    sget-object v6, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v8, "ENGLISH"

    invoke-static {v6, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3, v6}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 79
    :catch_0
    sget-object v3, Lcom/kakao/sdk/friend/core/k/m;->a:Lcom/kakao/sdk/friend/core/k/l;

    .line 29
    :goto_2
    iget-object v3, v3, Lcom/kakao/sdk/friend/core/k/l;->a:Lcom/kakao/sdk/friend/core/k/j;

    .line 39
    invoke-interface {v3}, Lcom/kakao/sdk/friend/core/k/j;->b()Ljava/util/Locale;

    move-result-object v3

    .line 49
    invoke-virtual {v5, v3}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 89
    :goto_3
    invoke-virtual {v1, v3}, Ljava/util/TreeMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v3, v5}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    move v3, v4

    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_6
    return-object v1

    nop

    .array-data 1
    .end array-data
.end method

.method private final getSideIndexerOldComparator()Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/kakao/sdk/friend/core/view/SideIndexView;->B:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Comparator;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method private final setIternalIndexItems(I)V
    .locals 4

    iget-object v0, p0, Lcom/kakao/sdk/friend/core/view/SideIndexView;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget v0, p0, Lcom/kakao/sdk/friend/core/view/SideIndexView;->p:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/kakao/sdk/friend/core/view/SideIndexView;->a:Ljava/util/ArrayList;

    const-string v1, "!"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    iget-object p1, p0, Lcom/kakao/sdk/friend/core/view/SideIndexView;->b:[Ljava/lang/String;

    array-length v1, p1

    :goto_0
    if-ge v0, v1, :cond_2

    aget-object v2, p1, v0

    iget-object v3, p0, Lcom/kakao/sdk/friend/core/view/SideIndexView;->a:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/kakao/sdk/friend/core/view/SideIndexView;->c:[Ljava/lang/String;

    array-length v1, p1

    :goto_1
    if-ge v0, v1, :cond_2

    aget-object v2, p1, v0

    iget-object v3, p0, Lcom/kakao/sdk/friend/core/view/SideIndexView;->a:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    return-void

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public final a(II)V
    .locals 1

    .line 109
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p1

    const-string v0, "context.resources.getStringArray(sideIndexRes)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/kakao/sdk/friend/core/view/SideIndexView;->b:[Ljava/lang/String;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p1

    const-string p2, "context.resources.getStr\u2026ay(sideLandscapeIndexRes)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/kakao/sdk/friend/core/view/SideIndexView;->c:[Ljava/lang/String;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    invoke-direct {p0, p1}, Lcom/kakao/sdk/friend/core/view/SideIndexView;->setIternalIndexItems(I)V

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public final a(Ljava/util/ArrayList;II)V
    .locals 1

    const-string v0, "friendList"

    .line 99
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    iput v0, p0, Lcom/kakao/sdk/friend/core/view/SideIndexView;->r:I

    iput p2, p0, Lcom/kakao/sdk/friend/core/view/SideIndexView;->q:I

    iput p3, p0, Lcom/kakao/sdk/friend/core/view/SideIndexView;->p:I

    :try_start_0
    iget-object p2, p0, Lcom/kakao/sdk/friend/core/view/SideIndexView;->A:Ljava/util/Comparator;

    invoke-static {p1, p2}, Lcom/kakao/sdk/friend/core/view/SideIndexView;->a(Ljava/util/ArrayList;Ljava/util/Comparator;)Ljava/util/TreeMap;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    invoke-direct {p0}, Lcom/kakao/sdk/friend/core/view/SideIndexView;->getSideIndexerOldComparator()Ljava/util/Comparator;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/kakao/sdk/friend/core/view/SideIndexView;->a(Ljava/util/ArrayList;Ljava/util/Comparator;)Ljava/util/TreeMap;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lcom/kakao/sdk/friend/core/view/SideIndexView;->o:Ljava/util/TreeMap;

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void

    .array-data 1
    .end array-data
.end method

.method public final getOnScrollListener()Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
    .locals 1

    iget-object v0, p0, Lcom/kakao/sdk/friend/core/view/SideIndexView;->v:Lcom/kakao/sdk/friend/core/l/X;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final getRecyclerView()Landroidx/recyclerview/widget/RecyclerView;
    .locals 1

    iget-object v0, p0, Lcom/kakao/sdk/friend/core/view/SideIndexView;->y:Landroidx/recyclerview/widget/RecyclerView;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final onDetachedFromWindow()V
    .locals 2

    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    iget-object v0, p0, Lcom/kakao/sdk/friend/core/view/SideIndexView;->C:Lcom/kakao/sdk/friend/core/l/a0;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 19
    :try_start_0
    iget-object v1, v0, Lcom/kakao/sdk/friend/core/l/a0;->b:Landroid/view/WindowManager;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v0, v0, Lcom/kakao/sdk/friend/core/l/a0;->c:Landroid/view/View;

    if-nez v0, :cond_0

    const-string v0, "dialogPosition"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    invoke-interface {v1, v0}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public final onDraw(Landroid/graphics/Canvas;)V
    .locals 12

    const-string v0, "canvas"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lcom/kakao/sdk/friend/core/view/SideIndexView;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    const/16 v2, 0xff

    if-ge v1, v0, :cond_4

    iget v3, p0, Lcom/kakao/sdk/friend/core/view/SideIndexView;->k:F

    iget v4, p0, Lcom/kakao/sdk/friend/core/view/SideIndexView;->j:F

    int-to-float v5, v1

    mul-float v6, v4, v5

    add-float/2addr v3, v6

    .line 19
    iget v7, p0, Lcom/kakao/sdk/friend/core/view/SideIndexView;->d:I

    const/4 v8, -0x1

    const/4 v9, 0x2

    const/4 v10, 0x0

    const/4 v11, 0x1

    if-eq v7, v8, :cond_0

    iget v7, p0, Lcom/kakao/sdk/friend/core/view/SideIndexView;->e:F

    int-to-float v8, v9

    div-float/2addr v4, v8

    add-float/2addr v4, v6

    sub-float/2addr v7, v4

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v4

    iget v6, p0, Lcom/kakao/sdk/friend/core/view/SideIndexView;->j:F

    div-float/2addr v4, v6

    int-to-float v6, v11

    mul-float/2addr v4, v4

    const/16 v7, 0x10

    int-to-float v7, v7

    div-float/2addr v4, v7

    sub-float/2addr v6, v4

    invoke-static {v6, v10}, Ljava/lang/Math;->max(FF)F

    move-result v10

    .line 29
    :cond_0
    iget-object v4, p0, Lcom/kakao/sdk/friend/core/view/SideIndexView;->f:Landroid/graphics/Paint;

    iget v6, p0, Lcom/kakao/sdk/friend/core/view/SideIndexView;->d:I

    if-ne v1, v6, :cond_1

    goto :goto_1

    :cond_1
    int-to-float v2, v2

    int-to-float v6, v11

    sub-float/2addr v6, v10

    mul-float/2addr v6, v2

    float-to-int v2, v6

    :goto_1
    invoke-virtual {v4, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    iget v2, p0, Lcom/kakao/sdk/friend/core/view/SideIndexView;->g:F

    mul-float/2addr v10, v2

    const/high16 v6, 0x3f000000    # 0.5f

    mul-float/2addr v10, v6

    add-float/2addr v10, v2

    invoke-virtual {v4, v10}, Landroid/graphics/Paint;->setTextSize(F)V

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    int-to-float v2, v2

    iget v4, p0, Lcom/kakao/sdk/friend/core/view/SideIndexView;->i:F

    int-to-float v6, v9

    div-float/2addr v4, v6

    add-float/2addr v4, v2

    iget-object v2, p0, Lcom/kakao/sdk/friend/core/view/SideIndexView;->a:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    const-string v6, "!"

    invoke-static {v2, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/kakao/sdk/friend/core/view/SideIndexView;->m:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_3

    iget v3, p0, Lcom/kakao/sdk/friend/core/view/SideIndexView;->l:F

    iget v4, p0, Lcom/kakao/sdk/friend/core/view/SideIndexView;->j:F

    mul-float/2addr v4, v5

    add-float/2addr v4, v3

    float-to-int v3, v4

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v4

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v5

    iget v6, p0, Lcom/kakao/sdk/friend/core/view/SideIndexView;->i:F

    float-to-int v6, v6

    add-int/2addr v5, v6

    add-int/2addr v6, v3

    invoke-virtual {v2, v4, v3, v5, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_2

    :cond_2
    iget-object v2, p0, Lcom/kakao/sdk/friend/core/view/SideIndexView;->a:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v5, p0, Lcom/kakao/sdk/friend/core/view/SideIndexView;->f:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v4, v3, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_3
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_4
    iget-object p1, p0, Lcom/kakao/sdk/friend/core/view/SideIndexView;->f:Landroid/graphics/Paint;

    invoke-virtual {p1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    iget v0, p0, Lcom/kakao/sdk/friend/core/view/SideIndexView;->g:F

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public final onMeasure(II)V
    .locals 5

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    iget-object v0, p0, Lcom/kakao/sdk/friend/core/view/SideIndexView;->f:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    sub-int v1, p1, v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    iput v1, p0, Lcom/kakao/sdk/friend/core/view/SideIndexView;->h:F

    iget-object v2, p0, Lcom/kakao/sdk/friend/core/view/SideIndexView;->a:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    iput v1, p0, Lcom/kakao/sdk/friend/core/view/SideIndexView;->j:F

    iget-object v1, p0, Lcom/kakao/sdk/friend/core/view/SideIndexView;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget v3, p0, Lcom/kakao/sdk/friend/core/view/SideIndexView;->i:F

    iget-object v4, p0, Lcom/kakao/sdk/friend/core/view/SideIndexView;->f:Landroid/graphics/Paint;

    invoke-virtual {v4, v2}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v2

    invoke-static {v3, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    iput v2, p0, Lcom/kakao/sdk/friend/core/view/SideIndexView;->i:F

    goto :goto_0

    :cond_0
    iget v1, p0, Lcom/kakao/sdk/friend/core/view/SideIndexView;->i:F

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    float-to-int v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-super {p0, v1, p2}, Landroid/view/View;->onMeasure(II)V

    int-to-float p1, p1

    iget p2, p0, Lcom/kakao/sdk/friend/core/view/SideIndexView;->h:F

    sub-float/2addr p1, p2

    const/4 p2, 0x2

    int-to-float p2, p2

    div-float/2addr p1, p2

    iget v1, p0, Lcom/kakao/sdk/friend/core/view/SideIndexView;->j:F

    div-float/2addr v1, p2

    iget v2, v0, Landroid/graphics/Paint$FontMetrics;->descent:F

    iget v3, v0, Landroid/graphics/Paint$FontMetrics;->ascent:F

    sub-float/2addr v2, v3

    div-float/2addr v2, p2

    sub-float/2addr v1, v2

    add-float/2addr v1, p1

    sub-float/2addr v1, v3

    iput v1, p0, Lcom/kakao/sdk/friend/core/view/SideIndexView;->k:F

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result p1

    int-to-float p1, p1

    iget v1, p0, Lcom/kakao/sdk/friend/core/view/SideIndexView;->j:F

    div-float/2addr v1, p2

    iget v2, v0, Landroid/graphics/Paint$FontMetrics;->descent:F

    iget v0, v0, Landroid/graphics/Paint$FontMetrics;->ascent:F

    sub-float/2addr v2, v0

    div-float/2addr v2, p2

    sub-float/2addr v1, v2

    add-float/2addr v1, p1

    iput v1, p0, Lcom/kakao/sdk/friend/core/view/SideIndexView;->l:F

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/kakao/sdk/friend/core/view/SideIndexView;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_15

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_9

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    .line 19
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    const/4 v2, 0x2

    div-int/2addr v1, v2

    int-to-float v1, v1

    iget v3, p0, Lcom/kakao/sdk/friend/core/view/SideIndexView;->h:F

    int-to-float v4, v2

    div-float/2addr v3, v4

    sub-float/2addr v1, v3

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/kakao/sdk/friend/core/view/SideIndexView;->e:F

    const/4 v1, 0x0

    cmpg-float v1, v0, v1

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-gtz v1, :cond_1

    move v0, v3

    goto :goto_0

    :cond_1
    iget v1, p0, Lcom/kakao/sdk/friend/core/view/SideIndexView;->j:F

    div-float/2addr v0, v1

    float-to-int v0, v0

    iget-object v1, p0, Lcom/kakao/sdk/friend/core/view/SideIndexView;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v0, v1, :cond_2

    iget-object v0, p0, Lcom/kakao/sdk/friend/core/view/SideIndexView;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v4

    .line 29
    :cond_2
    :goto_0
    iput v0, p0, Lcom/kakao/sdk/friend/core/view/SideIndexView;->d:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_14

    if-eq v0, v4, :cond_13

    if-eq v0, v2, :cond_3

    const/4 v1, 0x3

    if-eq v0, v1, :cond_13

    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    :cond_3
    iput-boolean v4, p0, Lcom/kakao/sdk/friend/core/view/SideIndexView;->u:Z

    iget-boolean p1, p0, Lcom/kakao/sdk/friend/core/view/SideIndexView;->n:Z

    if-eqz p1, :cond_12

    iget-object p1, p0, Lcom/kakao/sdk/friend/core/view/SideIndexView;->a:Ljava/util/ArrayList;

    iget v0, p0, Lcom/kakao/sdk/friend/core/view/SideIndexView;->d:I

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "indexItems[currentIndex]"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/String;

    .line 39
    iget-object v0, p0, Lcom/kakao/sdk/friend/core/view/SideIndexView;->o:Ljava/util/TreeMap;

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    if-nez p1, :cond_4

    goto :goto_1

    .line 49
    :cond_4
    :try_start_0
    invoke-virtual {v0}, Ljava/util/TreeMap;->firstKey()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0}, Ljava/util/TreeMap;->lastKey()Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-virtual {v0, v5}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_2

    :cond_5
    invoke-static {v2, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-virtual {v0, v2}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_2

    :cond_6
    invoke-virtual {v0, p1}, Ljava/util/TreeMap;->tailMap(Ljava/lang/Object;)Ljava/util/SortedMap;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v2

    if-nez v2, :cond_7

    goto :goto_1

    :cond_7
    invoke-interface {v0}, Ljava/util/SortedMap;->firstKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    :cond_8
    :goto_1
    move-object v0, v1

    .line 59
    :goto_2
    check-cast v0, Ljava/lang/Integer;

    const-string v2, "!"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    const-string v6, "null cannot be cast to non-null type androidx.recyclerview.widget.LinearLayoutManager"

    if-eqz v5, :cond_a

    iget-object v0, p0, Lcom/kakao/sdk/friend/core/view/SideIndexView;->y:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v1

    :cond_9
    invoke-static {v1, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    iget v0, p0, Lcom/kakao/sdk/friend/core/view/SideIndexView;->p:I

    :goto_3
    invoke-virtual {v1, v0, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    goto :goto_5

    :cond_a
    if-nez v0, :cond_b

    iget-object v0, p0, Lcom/kakao/sdk/friend/core/view/SideIndexView;->y:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v1

    if-eqz v1, :cond_f

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v1

    sub-int/2addr v1, v4

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    goto :goto_5

    :cond_b
    iget v5, p0, Lcom/kakao/sdk/friend/core/view/SideIndexView;->q:I

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/2addr v0, v5

    iget-object v5, p0, Lcom/kakao/sdk/friend/core/view/SideIndexView;->y:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v5, :cond_c

    invoke-virtual {v5}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v5

    goto :goto_4

    :cond_c
    move-object v5, v1

    :goto_4
    instance-of v5, v5, Landroidx/recyclerview/widget/LinearLayoutManager;

    if-eqz v5, :cond_e

    iget-object v5, p0, Lcom/kakao/sdk/friend/core/view/SideIndexView;->y:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v5, :cond_d

    invoke-virtual {v5}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v1

    :cond_d
    invoke-static {v1, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    goto :goto_3

    :cond_e
    iget-object v1, p0, Lcom/kakao/sdk/friend/core/view/SideIndexView;->y:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v1, :cond_f

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    :cond_f
    :goto_5
    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/16 v1, 0x8

    if-eqz v0, :cond_11

    iget-object p1, p0, Lcom/kakao/sdk/friend/core/view/SideIndexView;->x:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v2, Lcom/kakao/sdk/friend/core/R$drawable;->kakao_sdk_list_index_ico_favorite_large:I

    invoke-static {v0, v2}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v5, Lcom/kakao/sdk/friend/core/R$color;->daynight_gray600s:I

    invoke-static {v2, v5}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    if-nez v0, :cond_10

    .line 69
    new-instance v0, Landroid/graphics/drawable/ShapeDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/ShapeDrawable;-><init>()V

    goto :goto_6

    :cond_10
    invoke-static {v0}, Landroidx/core/graphics/drawable/DrawableCompat;->wrap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const-string/jumbo v5, "wrap(drawable)"

    invoke-static {v0, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-static {v5, v2}, Landroidx/core/graphics/drawable/DrawableCompat;->setTint(Landroid/graphics/drawable/Drawable;I)V

    .line 79
    :goto_6
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p1, p0, Lcom/kakao/sdk/friend/core/view/SideIndexView;->w:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_7

    :cond_11
    iget-object v0, p0, Lcom/kakao/sdk/friend/core/view/SideIndexView;->w:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/kakao/sdk/friend/core/view/SideIndexView;->x:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_7
    iput-boolean v4, p0, Lcom/kakao/sdk/friend/core/view/SideIndexView;->s:Z

    iget-object p1, p0, Lcom/kakao/sdk/friend/core/view/SideIndexView;->C:Lcom/kakao/sdk/friend/core/l/a0;

    invoke-virtual {p1, v3}, Lcom/kakao/sdk/friend/core/l/a0;->a(I)V

    iget-object p1, p0, Lcom/kakao/sdk/friend/core/view/SideIndexView;->C:Lcom/kakao/sdk/friend/core/l/a0;

    .line 89
    iget-object v0, p1, Lcom/kakao/sdk/friend/core/l/a0;->d:Landroid/os/Handler;

    .line 99
    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p1, Lcom/kakao/sdk/friend/core/l/a0;->d:Landroid/os/Handler;

    const/16 v1, 0x5dc

    int-to-long v1, v1

    invoke-virtual {v0, p1, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 109
    :cond_12
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return v4

    :cond_13
    const/4 p1, -0x1

    iput p1, p0, Lcom/kakao/sdk/friend/core/view/SideIndexView;->d:I

    iput-boolean v3, p0, Lcom/kakao/sdk/friend/core/view/SideIndexView;->n:Z

    :goto_8
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return v4

    :cond_14
    iput-boolean v4, p0, Lcom/kakao/sdk/friend/core/view/SideIndexView;->n:Z

    goto :goto_8

    :cond_15
    :goto_9
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    nop

    .array-data 1
    .end array-data
.end method

.method public final setEnabledSideIndex(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/kakao/sdk/friend/core/view/SideIndexView;->z:Z

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public final setRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 0

    iput-object p1, p0, Lcom/kakao/sdk/friend/core/view/SideIndexView;->y:Landroidx/recyclerview/widget/RecyclerView;

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public setVisibility(I)V
    .locals 2

    if-eqz p1, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    const/16 v0, 0x8

    if-eq p1, v0, :cond_0

    const/4 v0, 0x0

    goto :goto_1

    .line 19
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/kakao/sdk/friend/core/R$anim;->kakao_sdk_fade_out_short:I

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/kakao/sdk/friend/core/R$anim;->kakao_sdk_fade_in_short:I

    :goto_0
    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    :goto_1
    invoke-virtual {p0, v0}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    invoke-virtual {p0, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    if-eqz p1, :cond_2

    const/4 v0, -0x1

    iput v0, p0, Lcom/kakao/sdk/friend/core/view/SideIndexView;->d:I

    :cond_2
    invoke-super {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void

    nop

    .array-data 1
    .end array-data
.end method
