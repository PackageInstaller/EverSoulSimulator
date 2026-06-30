.class public final Lcom/kakaogame/secondpw/view/VirtualKeypad;
.super Landroid/widget/RelativeLayout;
.source "VirtualKeypad.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kakaogame/secondpw/view/VirtualKeypad$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000c\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0004\u0018\u0000 \u00192\u00020\u0001:\u0001\u0019B\'\u0008\u0007\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0004\u0008\u0008\u0010\tJ*\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\u0011\u001a\u00020\u00122\u001a\u0010\u0013\u001a\u0016\u0012\u0004\u0012\u00020\u0007\u0012\u0006\u0012\u0004\u0018\u00010\u000e\u0012\u0004\u0012\u00020\u000f0\rJ\u000e\u0010\u0014\u001a\u00020\u000f2\u0006\u0010\u0015\u001a\u00020\u0016J\u0010\u0010\u0017\u001a\u00020\u000f2\u0006\u0010\u0018\u001a\u00020\u0016H\u0007R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\"\u0010\u000c\u001a\u0016\u0012\u0004\u0012\u00020\u0007\u0012\u0006\u0012\u0004\u0018\u00010\u000e\u0012\u0004\u0012\u00020\u000f0\rX\u0082.\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001a"
    }
    d2 = {
        "Lcom/kakaogame/secondpw/view/VirtualKeypad;",
        "Landroid/widget/RelativeLayout;",
        "context",
        "Landroid/content/Context;",
        "attrs",
        "Landroid/util/AttributeSet;",
        "defStyleAttr",
        "",
        "<init>",
        "(Landroid/content/Context;Landroid/util/AttributeSet;I)V",
        "binding",
        "Lcom/kakaogame/security/databinding/KakaoGame2ndVirtualKeypadBinding;",
        "listener",
        "Lkotlin/Function2;",
        "",
        "",
        "setOnKeyListener",
        "viewData",
        "Lcom/kakaogame/secondpw/viewdata/Base2ndPWViewData;",
        "eventListener",
        "setKeypadImage",
        "path",
        "",
        "setCode",
        "code",
        "Companion",
        "security_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final ACTION_TYPE_INPUT:I = 0x1

.field public static final ACTION_TYPE_REMOVE:I = 0x2

.field public static final ACTION_TYPE_REMOVE_ALL:I

.field public static final Companion:Lcom/kakaogame/secondpw/view/VirtualKeypad$Companion;


# instance fields
.field private final binding:Lcom/kakaogame/security/databinding/KakaoGame2ndVirtualKeypadBinding;

.field private listener:Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Ljava/lang/Integer;",
            "-",
            "Ljava/lang/Character;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$dPrybgVMLO6Nq83hjEPfj6opHgA(Lcom/kakaogame/secondpw/view/VirtualKeypad;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/kakaogame/secondpw/view/VirtualKeypad;->setOnKeyListener$lambda$2$lambda$0(Lcom/kakaogame/secondpw/view/VirtualKeypad;Landroid/view/View;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method public static synthetic $r8$lambda$ieMJQ-N1eMCx5r7pNR2Bmo7Fzac(Ljava/util/List;ILcom/kakaogame/secondpw/view/VirtualKeypad;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/kakaogame/secondpw/view/VirtualKeypad;->setCode$lambda$5$lambda$4(Ljava/util/List;ILcom/kakaogame/secondpw/view/VirtualKeypad;Landroid/view/View;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method public static synthetic $r8$lambda$kNaG8YjcZHj5kh0r5tY2koJVSy8(Lcom/kakaogame/secondpw/view/VirtualKeypad;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/kakaogame/secondpw/view/VirtualKeypad;->setOnKeyListener$lambda$2$lambda$1(Lcom/kakaogame/secondpw/view/VirtualKeypad;Landroid/view/View;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/kakaogame/secondpw/view/VirtualKeypad$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/kakaogame/secondpw/view/VirtualKeypad$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/kakaogame/secondpw/view/VirtualKeypad;->Companion:Lcom/kakaogame/secondpw/view/VirtualKeypad$Companion;

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 7

    const v0, -0x451e0c57

    invoke-static {v0}, Lcom/liapp/y;->ڳݬ٬ۮݪ(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x6

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Lcom/kakaogame/secondpw/view/VirtualKeypad;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7

    const v0, -0x451e0c57

    invoke-static {v0}, Lcom/liapp/y;->ڳݬ٬ۮݪ(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v6}, Lcom/kakaogame/secondpw/view/VirtualKeypad;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const v0, -0x451e0c57

    invoke-static {v0}, Lcom/liapp/y;->ڳݬ٬ۮݪ(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 189
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 199
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    move-object p2, p0

    check-cast p2, Landroid/view/ViewGroup;

    const/4 p3, 0x1

    invoke-static {p1, p2, p3}, Lcom/kakaogame/security/databinding/KakaoGame2ndVirtualKeypadBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/kakaogame/security/databinding/KakaoGame2ndVirtualKeypadBinding;

    move-result-object p1

    const-string p2, "inflate(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/kakaogame/secondpw/view/VirtualKeypad;->binding:Lcom/kakaogame/security/databinding/KakaoGame2ndVirtualKeypadBinding;

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    const/4 p3, 0x0

    .line 149
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/kakaogame/secondpw/view/VirtualKeypad;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void

    .array-data 1
    .end array-data
.end method

.method private static final setCode$lambda$5$lambda$4(Ljava/util/List;ILcom/kakaogame/secondpw/view/VirtualKeypad;Landroid/view/View;)V
    .locals 2

    .line 539
    new-instance p3, Ljava/lang/StringBuilder;

    const v0, -0x4515ad9f

    invoke-static {v0}, Lcom/liapp/y;->ڳݬ٬ۮݪ(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    sget v1, Lcom/kakaogame/security/R$id;->buttonTag:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const v0, -0x224e0a5c

    invoke-static {v0}, Lcom/liapp/y;->״دش۲ݮ(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 549
    iget-object p2, p2, Lcom/kakaogame/secondpw/view/VirtualKeypad;->listener:Lkotlin/jvm/functions/Function2;

    if-nez p2, :cond_0

    const-string p2, "listener"

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p2, 0x0

    :cond_0
    const/4 p3, 0x1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/widget/Button;

    sget p1, Lcom/kakaogame/security/R$id;->buttonTag:I

    invoke-virtual {p0, p1}, Landroid/widget/Button;->getTag(I)Ljava/lang/Object;

    move-result-object p0

    const-string p1, "null cannot be cast to non-null type kotlin.Char"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Ljava/lang/Character;

    invoke-interface {p2, p3, p0}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .array-data 1
    .end array-data
.end method

.method private static final setOnKeyListener$lambda$2$lambda$0(Lcom/kakaogame/secondpw/view/VirtualKeypad;Landroid/view/View;)V
    .locals 1

    .line 299
    iget-object p0, p0, Lcom/kakaogame/secondpw/view/VirtualKeypad;->listener:Lkotlin/jvm/functions/Function2;

    const/4 p1, 0x0

    if-nez p0, :cond_0

    const-string p0, "listener"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p0, p1

    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p0, v0, p1}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .array-data 1
    .end array-data
.end method

.method private static final setOnKeyListener$lambda$2$lambda$1(Lcom/kakaogame/secondpw/view/VirtualKeypad;Landroid/view/View;)V
    .locals 1

    .line 339
    iget-object p0, p0, Lcom/kakaogame/secondpw/view/VirtualKeypad;->listener:Lkotlin/jvm/functions/Function2;

    const/4 p1, 0x0

    if-nez p0, :cond_0

    const-string p0, "listener"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p0, p1

    :cond_0
    const/4 v0, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p0, v0, p1}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public final setCode(Ljava/lang/String;)V
    .locals 6

    const v0, 0x6d0b76e8

    invoke-static {v0}, Lcom/liapp/y;->ٱڳܴڭܩ(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 479
    iget-object v0, p0, Lcom/kakaogame/secondpw/view/VirtualKeypad;->binding:Lcom/kakaogame/security/databinding/KakaoGame2ndVirtualKeypadBinding;

    const/16 v1, 0xa

    new-array v1, v1, [Landroid/widget/Button;

    .line 489
    iget-object v2, v0, Lcom/kakaogame/security/databinding/KakaoGame2ndVirtualKeypadBinding;->digitCode1:Landroid/widget/Button;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v2, 0x1

    iget-object v4, v0, Lcom/kakaogame/security/databinding/KakaoGame2ndVirtualKeypadBinding;->digitCode2:Landroid/widget/Button;

    aput-object v4, v1, v2

    const/4 v2, 0x2

    iget-object v4, v0, Lcom/kakaogame/security/databinding/KakaoGame2ndVirtualKeypadBinding;->digitCode3:Landroid/widget/Button;

    aput-object v4, v1, v2

    const/4 v2, 0x3

    iget-object v4, v0, Lcom/kakaogame/security/databinding/KakaoGame2ndVirtualKeypadBinding;->digitCode4:Landroid/widget/Button;

    aput-object v4, v1, v2

    const/4 v2, 0x4

    iget-object v4, v0, Lcom/kakaogame/security/databinding/KakaoGame2ndVirtualKeypadBinding;->digitCode5:Landroid/widget/Button;

    aput-object v4, v1, v2

    const/4 v2, 0x5

    iget-object v4, v0, Lcom/kakaogame/security/databinding/KakaoGame2ndVirtualKeypadBinding;->digitCode6:Landroid/widget/Button;

    aput-object v4, v1, v2

    const/4 v2, 0x6

    iget-object v4, v0, Lcom/kakaogame/security/databinding/KakaoGame2ndVirtualKeypadBinding;->digitCode7:Landroid/widget/Button;

    aput-object v4, v1, v2

    const/4 v2, 0x7

    iget-object v4, v0, Lcom/kakaogame/security/databinding/KakaoGame2ndVirtualKeypadBinding;->digitCode8:Landroid/widget/Button;

    aput-object v4, v1, v2

    const/16 v2, 0x8

    iget-object v4, v0, Lcom/kakaogame/security/databinding/KakaoGame2ndVirtualKeypadBinding;->digitCode9:Landroid/widget/Button;

    aput-object v4, v1, v2

    const/16 v2, 0x9

    iget-object v0, v0, Lcom/kakaogame/security/databinding/KakaoGame2ndVirtualKeypadBinding;->digitCode0:Landroid/widget/Button;

    aput-object v0, v1, v2

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 509
    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v1

    :goto_0
    if-ge v3, v1, :cond_0

    .line 519
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    sget v4, Lcom/kakaogame/security/R$id;->buttonTag:I

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/widget/Button;->setTag(ILjava/lang/Object;)V

    .line 529
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    new-instance v4, Lcom/kakaogame/secondpw/view/VirtualKeypad$$ExternalSyntheticLambda2;

    invoke-direct {v4, v0, v3, p0}, Lcom/kakaogame/secondpw/view/VirtualKeypad$$ExternalSyntheticLambda2;-><init>(Ljava/util/List;ILcom/kakaogame/secondpw/view/VirtualKeypad;)V

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-void

    .array-data 1
    .end array-data
.end method

.method public final setKeypadImage(Ljava/lang/String;)V
    .locals 1

    const v0, 0x5d12506f

    invoke-static {v0}, Lcom/liapp/y;->ڴݮگ֮ت(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 399
    iget-object v0, p0, Lcom/kakaogame/secondpw/view/VirtualKeypad;->binding:Lcom/kakaogame/security/databinding/KakaoGame2ndVirtualKeypadBinding;

    .line 409
    invoke-static {p1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 419
    iget-object v0, v0, Lcom/kakaogame/security/databinding/KakaoGame2ndVirtualKeypadBinding;->kakaoGameVirtualKeypadImage:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method public final setOnKeyListener(Lcom/kakaogame/secondpw/viewdata/Base2ndPWViewData;Lkotlin/jvm/functions/Function2;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/kakaogame/secondpw/viewdata/Base2ndPWViewData;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Ljava/lang/Integer;",
            "-",
            "Ljava/lang/Character;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const v0, 0x7d7cc795    # 2.1000109E37f

    invoke-static {v0}, Lcom/liapp/y;->حֲݴܳޯ(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const v0, 0x2252b756

    invoke-static {v0}, Lcom/liapp/y;->ֲֳگܱޭ(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 239
    iput-object p2, p0, Lcom/kakaogame/secondpw/view/VirtualKeypad;->listener:Lkotlin/jvm/functions/Function2;

    .line 259
    iget-object p2, p0, Lcom/kakaogame/secondpw/view/VirtualKeypad;->binding:Lcom/kakaogame/security/databinding/KakaoGame2ndVirtualKeypadBinding;

    .line 269
    iget-object v0, p2, Lcom/kakaogame/security/databinding/KakaoGame2ndVirtualKeypadBinding;->digitCodeClear:Lcom/kakaogame/ui/font/NotoSansButton;

    invoke-virtual {p1}, Lcom/kakaogame/secondpw/viewdata/Base2ndPWViewData;->getResetButtonText()Landroid/text/SpannableStringBuilder;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {v0, p1}, Lcom/kakaogame/ui/font/NotoSansButton;->setText(Ljava/lang/CharSequence;)V

    .line 289
    iget-object p1, p2, Lcom/kakaogame/security/databinding/KakaoGame2ndVirtualKeypadBinding;->digitCodeClear:Lcom/kakaogame/ui/font/NotoSansButton;

    new-instance v0, Lcom/kakaogame/secondpw/view/VirtualKeypad$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/kakaogame/secondpw/view/VirtualKeypad$$ExternalSyntheticLambda0;-><init>(Lcom/kakaogame/secondpw/view/VirtualKeypad;)V

    invoke-virtual {p1, v0}, Lcom/kakaogame/ui/font/NotoSansButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 329
    iget-object p1, p2, Lcom/kakaogame/security/databinding/KakaoGame2ndVirtualKeypadBinding;->digitCodeDelete:Landroid/widget/Button;

    new-instance p2, Lcom/kakaogame/secondpw/view/VirtualKeypad$$ExternalSyntheticLambda1;

    invoke-direct {p2, p0}, Lcom/kakaogame/secondpw/view/VirtualKeypad$$ExternalSyntheticLambda1;-><init>(Lcom/kakaogame/secondpw/view/VirtualKeypad;)V

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    .array-data 1
    .end array-data
.end method
