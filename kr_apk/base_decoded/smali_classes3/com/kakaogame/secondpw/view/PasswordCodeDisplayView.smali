.class public final Lcom/kakaogame/secondpw/view/PasswordCodeDisplayView;
.super Landroid/widget/FrameLayout;
.source "PasswordCodeDisplayView.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u000c\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001B\'\u0008\u0007\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\u000e\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u000bJ\u0006\u0010\u0011\u001a\u00020\u000fJ\u0006\u0010\u0012\u001a\u00020\u000bR\u000e\u0010\n\u001a\u00020\u000bX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\rX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0013"
    }
    d2 = {
        "Lcom/kakaogame/secondpw/view/PasswordCodeDisplayView;",
        "Landroid/widget/FrameLayout;",
        "context",
        "Landroid/content/Context;",
        "attrs",
        "Landroid/util/AttributeSet;",
        "defStyleAttr",
        "",
        "<init>",
        "(Landroid/content/Context;Landroid/util/AttributeSet;I)V",
        "code",
        "",
        "binding",
        "Lcom/kakaogame/security/databinding/KakaoGame2ndPwInputDisplayBinding;",
        "setCode",
        "",
        "value",
        "clear",
        "getCode",
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
.field private final binding:Lcom/kakaogame/security/databinding/KakaoGame2ndPwInputDisplayBinding;

.field private code:C


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

    invoke-direct/range {v1 .. v6}, Lcom/kakaogame/secondpw/view/PasswordCodeDisplayView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

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

    invoke-direct/range {v1 .. v6}, Lcom/kakaogame/secondpw/view/PasswordCodeDisplayView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

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
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 169
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    move-object p2, p0

    check-cast p2, Landroid/view/ViewGroup;

    const/4 p3, 0x1

    invoke-static {p1, p2, p3}, Lcom/kakaogame/security/databinding/KakaoGame2ndPwInputDisplayBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/kakaogame/security/databinding/KakaoGame2ndPwInputDisplayBinding;

    move-result-object p1

    const-string p2, "inflate(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/kakaogame/secondpw/view/PasswordCodeDisplayView;->binding:Lcom/kakaogame/security/databinding/KakaoGame2ndPwInputDisplayBinding;

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

    .line 109
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/kakaogame/secondpw/view/PasswordCodeDisplayView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public final clear()V
    .locals 3

    const/4 v0, 0x0

    .line 279
    iput-char v0, p0, Lcom/kakaogame/secondpw/view/PasswordCodeDisplayView;->code:C

    .line 289
    iget-object v1, p0, Lcom/kakaogame/secondpw/view/PasswordCodeDisplayView;->binding:Lcom/kakaogame/security/databinding/KakaoGame2ndPwInputDisplayBinding;

    .line 299
    iget-object v2, v1, Lcom/kakaogame/security/databinding/KakaoGame2ndPwInputDisplayBinding;->pwInputNone:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 309
    iget-object v0, v1, Lcom/kakaogame/security/databinding/KakaoGame2ndPwInputDisplayBinding;->pwInputValue:Lcom/kakaogame/ui/font/NotoSansTextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/kakaogame/ui/font/NotoSansTextView;->setVisibility(I)V

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public final getCode()C
    .locals 1

    .line 359
    iget-char v0, p0, Lcom/kakaogame/secondpw/view/PasswordCodeDisplayView;->code:C

    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final setCode(C)V
    .locals 2

    .line 199
    iput-char p1, p0, Lcom/kakaogame/secondpw/view/PasswordCodeDisplayView;->code:C

    .line 209
    iget-object p1, p0, Lcom/kakaogame/secondpw/view/PasswordCodeDisplayView;->binding:Lcom/kakaogame/security/databinding/KakaoGame2ndPwInputDisplayBinding;

    .line 219
    iget-object v0, p1, Lcom/kakaogame/security/databinding/KakaoGame2ndPwInputDisplayBinding;->pwInputNone:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 229
    iget-object p1, p1, Lcom/kakaogame/security/databinding/KakaoGame2ndPwInputDisplayBinding;->pwInputValue:Lcom/kakaogame/ui/font/NotoSansTextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/kakaogame/ui/font/NotoSansTextView;->setVisibility(I)V

    return-void

    nop

    .array-data 1
    .end array-data
.end method
