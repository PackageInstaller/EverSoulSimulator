.class public final Lcom/kakaogame/secondpw/view/PasswordDisplayView;
.super Landroid/widget/RelativeLayout;
.source "PasswordDisplayView.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPasswordDisplayView.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PasswordDisplayView.kt\ncom/kakaogame/secondpw/view/PasswordDisplayView\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,75:1\n1863#2,2:76\n*S KotlinDebug\n*F\n+ 1 PasswordDisplayView.kt\ncom/kakaogame/secondpw/view/PasswordDisplayView\n*L\n63#1:76,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000R\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010!\n\u0002\u0010\u000c\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0006\n\u0002\u0010\u000e\n\u0000\u0018\u00002\u00020\u0001B\'\u0008\u0007\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\u0010\u0010\u0012\u001a\u00020\u00132\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u0015J\u0006\u0010\u0016\u001a\u00020\u0017J\u0006\u0010\u0018\u001a\u00020\u0017J\u000e\u0010\u0019\u001a\u00020\u00132\u0006\u0010\u001a\u001a\u00020\u000eJ\u0006\u0010\u001b\u001a\u00020\u0013J\u0006\u0010\u001c\u001a\u00020\u0013J\u0006\u0010\u001d\u001a\u00020\u001eR\u000e\u0010\n\u001a\u00020\u000bX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u00020\u000e0\rX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u000f\u001a\u0008\u0012\u0004\u0012\u00020\u00110\u0010X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001f"
    }
    d2 = {
        "Lcom/kakaogame/secondpw/view/PasswordDisplayView;",
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
        "Lcom/kakaogame/security/databinding/KakaoGame2ndPwDisplayTextEditBinding;",
        "codelist",
        "",
        "",
        "displayCodeViews",
        "",
        "Lcom/kakaogame/secondpw/view/PasswordCodeDisplayView;",
        "setTitle",
        "",
        "title",
        "Landroid/text/SpannableStringBuilder;",
        "hasCode",
        "",
        "isFull",
        "updateCode",
        "code",
        "removeCode",
        "removeAll",
        "getCode",
        "",
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


# instance fields
.field private final binding:Lcom/kakaogame/security/databinding/KakaoGame2ndPwDisplayTextEditBinding;

.field private codelist:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Character;",
            ">;"
        }
    .end annotation
.end field

.field private displayCodeViews:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/kakaogame/secondpw/view/PasswordCodeDisplayView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
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

    invoke-direct/range {v1 .. v6}, Lcom/kakaogame/secondpw/view/PasswordDisplayView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

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

    invoke-direct/range {v1 .. v6}, Lcom/kakaogame/secondpw/view/PasswordDisplayView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

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

    .line 149
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 159
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    move-object p2, p0

    check-cast p2, Landroid/view/ViewGroup;

    const/4 p3, 0x1

    invoke-static {p1, p2, p3}, Lcom/kakaogame/security/databinding/KakaoGame2ndPwDisplayTextEditBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/kakaogame/security/databinding/KakaoGame2ndPwDisplayTextEditBinding;

    move-result-object p1

    const-string p2, "inflate(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/kakaogame/secondpw/view/PasswordDisplayView;->binding:Lcom/kakaogame/security/databinding/KakaoGame2ndPwDisplayTextEditBinding;

    .line 169
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    check-cast p1, Ljava/util/List;

    iput-object p1, p0, Lcom/kakaogame/secondpw/view/PasswordDisplayView;->codelist:Ljava/util/List;

    .line 179
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/kakaogame/secondpw/view/PasswordDisplayView;->displayCodeViews:Ljava/util/List;

    return-void

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

    .line 109
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/kakaogame/secondpw/view/PasswordDisplayView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public final getCode()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/String;

    .line 739
    iget-object v1, p0, Lcom/kakaogame/secondpw/view/PasswordDisplayView;->codelist:Ljava/util/List;

    check-cast v1, Ljava/util/Collection;

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->toCharArray(Ljava/util/Collection;)[C

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    return-object v0

    .array-data 1
    .end array-data
.end method

.method public final hasCode()Z
    .locals 1

    .line 299
    iget-object v0, p0, Lcom/kakaogame/secondpw/view/PasswordDisplayView;->codelist:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .array-data 1
    .end array-data
.end method

.method public final isFull()Z
    .locals 2

    .line 339
    iget-object v0, p0, Lcom/kakaogame/secondpw/view/PasswordDisplayView;->codelist:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final removeAll()V
    .locals 2

    .line 619
    iget-object v0, p0, Lcom/kakaogame/secondpw/view/PasswordDisplayView;->codelist:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 629
    iget-object v0, p0, Lcom/kakaogame/secondpw/view/PasswordDisplayView;->codelist:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 639
    iget-object v0, p0, Lcom/kakaogame/secondpw/view/PasswordDisplayView;->displayCodeViews:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    .line 769
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/kakaogame/secondpw/view/PasswordCodeDisplayView;

    .line 649
    invoke-virtual {v1}, Lcom/kakaogame/secondpw/view/PasswordCodeDisplayView;->clear()V

    goto :goto_0

    .line 679
    :cond_0
    iget-object v0, p0, Lcom/kakaogame/secondpw/view/PasswordDisplayView;->binding:Lcom/kakaogame/security/databinding/KakaoGame2ndPwDisplayTextEditBinding;

    .line 689
    iget-object v0, v0, Lcom/kakaogame/security/databinding/KakaoGame2ndPwDisplayTextEditBinding;->kakaoGame2ndPwCodeContentLine:Landroid/view/View;

    const v1, -0x19191a

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    return-void

    .array-data 1
    .end array-data
.end method

.method public final removeCode()V
    .locals 2

    .line 499
    iget-object v0, p0, Lcom/kakaogame/secondpw/view/PasswordDisplayView;->codelist:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 509
    iget-object v0, p0, Lcom/kakaogame/secondpw/view/PasswordDisplayView;->codelist:Ljava/util/List;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->getLastIndex(Ljava/util/List;)I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 519
    iget-object v0, p0, Lcom/kakaogame/secondpw/view/PasswordDisplayView;->displayCodeViews:Ljava/util/List;

    iget-object v1, p0, Lcom/kakaogame/secondpw/view/PasswordDisplayView;->codelist:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kakaogame/secondpw/view/PasswordCodeDisplayView;

    invoke-virtual {v0}, Lcom/kakaogame/secondpw/view/PasswordCodeDisplayView;->clear()V

    .line 539
    :cond_0
    iget-object v0, p0, Lcom/kakaogame/secondpw/view/PasswordDisplayView;->codelist:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 549
    iget-object v0, p0, Lcom/kakaogame/secondpw/view/PasswordDisplayView;->binding:Lcom/kakaogame/security/databinding/KakaoGame2ndPwDisplayTextEditBinding;

    .line 559
    iget-object v0, v0, Lcom/kakaogame/security/databinding/KakaoGame2ndPwDisplayTextEditBinding;->kakaoGame2ndPwCodeContentLine:Landroid/view/View;

    const v1, -0x19191a

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_1
    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public final setTitle(Landroid/text/SpannableStringBuilder;)V
    .locals 4

    .line 209
    iget-object v0, p0, Lcom/kakaogame/secondpw/view/PasswordDisplayView;->binding:Lcom/kakaogame/security/databinding/KakaoGame2ndPwDisplayTextEditBinding;

    const/4 v1, 0x6

    new-array v1, v1, [Lcom/kakaogame/secondpw/view/PasswordCodeDisplayView;

    const/4 v2, 0x0

    .line 219
    iget-object v3, v0, Lcom/kakaogame/security/databinding/KakaoGame2ndPwDisplayTextEditBinding;->displayCode1:Lcom/kakaogame/secondpw/view/PasswordCodeDisplayView;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, v0, Lcom/kakaogame/security/databinding/KakaoGame2ndPwDisplayTextEditBinding;->displayCode2:Lcom/kakaogame/secondpw/view/PasswordCodeDisplayView;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, v0, Lcom/kakaogame/security/databinding/KakaoGame2ndPwDisplayTextEditBinding;->displayCode3:Lcom/kakaogame/secondpw/view/PasswordCodeDisplayView;

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget-object v3, v0, Lcom/kakaogame/security/databinding/KakaoGame2ndPwDisplayTextEditBinding;->displayCode4:Lcom/kakaogame/secondpw/view/PasswordCodeDisplayView;

    aput-object v3, v1, v2

    const/4 v2, 0x4

    iget-object v3, v0, Lcom/kakaogame/security/databinding/KakaoGame2ndPwDisplayTextEditBinding;->displayCode5:Lcom/kakaogame/secondpw/view/PasswordCodeDisplayView;

    aput-object v3, v1, v2

    const/4 v2, 0x5

    iget-object v3, v0, Lcom/kakaogame/security/databinding/KakaoGame2ndPwDisplayTextEditBinding;->displayCode6:Lcom/kakaogame/secondpw/view/PasswordCodeDisplayView;

    aput-object v3, v1, v2

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/kakaogame/secondpw/view/PasswordDisplayView;->displayCodeViews:Ljava/util/List;

    if-eqz p1, :cond_0

    .line 239
    iget-object v0, v0, Lcom/kakaogame/security/databinding/KakaoGame2ndPwDisplayTextEditBinding;->pwInputTitle:Lcom/kakaogame/ui/font/NotoSansTextView;

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {v0, p1}, Lcom/kakaogame/ui/font/NotoSansTextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public final updateCode(C)V
    .locals 2

    .line 379
    iget-object v0, p0, Lcom/kakaogame/secondpw/view/PasswordDisplayView;->codelist:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 389
    iget-object v0, p0, Lcom/kakaogame/secondpw/view/PasswordDisplayView;->binding:Lcom/kakaogame/security/databinding/KakaoGame2ndPwDisplayTextEditBinding;

    .line 399
    iget-object v0, v0, Lcom/kakaogame/security/databinding/KakaoGame2ndPwDisplayTextEditBinding;->kakaoGame2ndPwCodeContentLine:Landroid/view/View;

    const v1, -0x51f00

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 429
    :cond_0
    iget-object v0, p0, Lcom/kakaogame/secondpw/view/PasswordDisplayView;->codelist:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x6

    if-ge v0, v1, :cond_1

    .line 439
    iget-object v0, p0, Lcom/kakaogame/secondpw/view/PasswordDisplayView;->codelist:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 449
    iget-object v0, p0, Lcom/kakaogame/secondpw/view/PasswordDisplayView;->displayCodeViews:Ljava/util/List;

    iget-object v1, p0, Lcom/kakaogame/secondpw/view/PasswordDisplayView;->codelist:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kakaogame/secondpw/view/PasswordCodeDisplayView;

    invoke-virtual {v0, p1}, Lcom/kakaogame/secondpw/view/PasswordCodeDisplayView;->setCode(C)V

    :cond_1
    return-void

    .array-data 1
    .end array-data
.end method
