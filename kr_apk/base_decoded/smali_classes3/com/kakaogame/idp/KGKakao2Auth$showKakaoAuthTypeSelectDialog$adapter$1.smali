.class public final Lcom/kakaogame/idp/KGKakao2Auth$showKakaoAuthTypeSelectDialog$adapter$1;
.super Landroid/widget/ArrayAdapter;
.source "KGKakao2Auth.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kakaogame/idp/KGKakao2Auth;->showKakaoAuthTypeSelectDialog(Landroid/app/Activity;Lkotlin/jvm/functions/Function1;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter<",
        "Lcom/kakaogame/idp/KGKakao2Auth$Item;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000#\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\n\u0012\u0006\u0012\u0004\u0018\u00010\u00020\u0001J\"\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u0008\u001a\u00020\tH\u0016\u00a8\u0006\n"
    }
    d2 = {
        "com/kakaogame/idp/KGKakao2Auth$showKakaoAuthTypeSelectDialog$adapter$1",
        "Landroid/widget/ArrayAdapter;",
        "Lcom/kakaogame/idp/KGKakao2Auth$Item;",
        "getView",
        "Landroid/view/View;",
        "position",
        "",
        "view",
        "parent",
        "Landroid/view/ViewGroup;",
        "idp_kakao_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $activity:Landroid/app/Activity;

.field final synthetic $items:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/kakaogame/idp/KGKakao2Auth$Item;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/app/Activity;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/List<",
            "Lcom/kakaogame/idp/KGKakao2Auth$Item;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/kakaogame/idp/KGKakao2Auth$showKakaoAuthTypeSelectDialog$adapter$1;->$activity:Landroid/app/Activity;

    iput-object p2, p0, Lcom/kakaogame/idp/KGKakao2Auth$showKakaoAuthTypeSelectDialog$adapter$1;->$items:Ljava/util/List;

    .line 5689
    check-cast p1, Landroid/content/Context;

    const v0, 0x1090011

    const v1, 0x1020014

    .line 5679
    invoke-direct {p0, p1, v0, v1, p2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;IILjava/util/List;)V

    return-void

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    const v0, 0x5d129aff

    invoke-static {v0}, Lcom/liapp/y;->ڴݮگ֮ت(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p2, :cond_0

    .line 5759
    invoke-virtual {p0}, Lcom/kakaogame/idp/KGKakao2Auth$showKakaoAuthTypeSelectDialog$adapter$1;->getContext()Landroid/content/Context;

    move-result-object p2

    const v0, 0x7d72b355    # 2.016277E37f

    invoke-static {v0}, Lcom/liapp/y;->حֲݴܳޯ(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    const v0, 0x5d12a527

    invoke-static {v0}, Lcom/liapp/y;->ڴݮگ֮ت(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Landroid/view/LayoutInflater;

    .line 5769
    sget v0, Lcom/kakaogame/kakao/R$layout;->kakao_game_kakao_login_item:I

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 5789
    :cond_0
    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    sget p3, Lcom/kakaogame/kakao/R$id;->login_method_icon:I

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    const v0, 0x5d10b587

    invoke-static {v0}, Lcom/liapp/y;->ڴݮگ֮ت(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p3, Landroid/widget/ImageView;

    .line 5799
    iget-object v0, p0, Lcom/kakaogame/idp/KGKakao2Auth$showKakaoAuthTypeSelectDialog$adapter$1;->$activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Lcom/kakaogame/idp/KGKakao2Auth$showKakaoAuthTypeSelectDialog$adapter$1;->$items:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/kakaogame/idp/KGKakao2Auth$Item;

    invoke-virtual {v1}, Lcom/kakaogame/idp/KGKakao2Auth$Item;->getIcon()I

    move-result v1

    invoke-virtual {p0}, Lcom/kakaogame/idp/KGKakao2Auth$showKakaoAuthTypeSelectDialog$adapter$1;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 5809
    sget p3, Lcom/kakaogame/kakao/R$id;->login_method_text:I

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    const v0, 0x6d0e9358

    invoke-static {v0}, Lcom/liapp/y;->ٱڳܴڭܩ(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p3, Landroid/widget/TextView;

    .line 5819
    iget-object v0, p0, Lcom/kakaogame/idp/KGKakao2Auth$showKakaoAuthTypeSelectDialog$adapter$1;->$items:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/kakaogame/idp/KGKakao2Auth$Item;

    invoke-virtual {p1}, Lcom/kakaogame/idp/KGKakao2Auth$Item;->getText()Ljava/lang/String;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object p2

    .array-data 1
    .end array-data
.end method
