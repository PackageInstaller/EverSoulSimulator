.class public final Lcom/kakaogame/secondpw/SecondPWViewDialog$showCodeInputView$lambda$41$lambda$40$$inlined$addTextChangedListener$default$1;
.super Ljava/lang/Object;
.source "TextView.kt"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kakaogame/secondpw/SecondPWViewDialog;->showCodeInputView(Lcom/kakaogame/secondpw/viewdata/Base2ndPWViewData;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTextView.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TextView.kt\nandroidx/core/widget/TextViewKt$addTextChangedListener$textWatcher$1\n+ 2 SecondPWViewDialog.kt\ncom/kakaogame/secondpw/SecondPWViewDialog\n+ 3 TextView.kt\nandroidx/core/widget/TextViewKt$addTextChangedListener$1\n+ 4 TextView.kt\nandroidx/core/widget/TextViewKt$addTextChangedListener$2\n*L\n1#1,97:1\n424#2,10:98\n71#3:108\n77#4:109\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\'\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\r\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0005*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0012\u0010\u0002\u001a\u00020\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005H\u0016J*\u0010\u0006\u001a\u00020\u00032\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u00082\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\u000c\u001a\u00020\nH\u0016J*\u0010\r\u001a\u00020\u00032\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u00082\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000e\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\nH\u0016\u00a8\u0006\u000f\u00b8\u0006\u0000"
    }
    d2 = {
        "androidx/core/widget/TextViewKt$addTextChangedListener$textWatcher$1",
        "Landroid/text/TextWatcher;",
        "afterTextChanged",
        "",
        "s",
        "Landroid/text/Editable;",
        "beforeTextChanged",
        "text",
        "",
        "start",
        "",
        "count",
        "after",
        "onTextChanged",
        "before",
        "core-ktx_release"
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
.field final synthetic $this_apply$inlined:Lcom/kakaogame/security/databinding/KakaoGame2ndPwCodeInputViewBinding;


# direct methods
.method public constructor <init>(Lcom/kakaogame/security/databinding/KakaoGame2ndPwCodeInputViewBinding;)V
    .locals 0

    iput-object p1, p0, Lcom/kakaogame/secondpw/SecondPWViewDialog$showCodeInputView$lambda$41$lambda$40$$inlined$addTextChangedListener$default$1;->$this_apply$inlined:Lcom/kakaogame/security/databinding/KakaoGame2ndPwCodeInputViewBinding;

    .line 809
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2

    if-eqz p1, :cond_2

    .line 999
    check-cast p1, Ljava/lang/CharSequence;

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    const/4 v0, 0x0

    if-lez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    move p1, v0

    :goto_0
    if-eqz p1, :cond_1

    .line 1009
    iget-object p1, p0, Lcom/kakaogame/secondpw/SecondPWViewDialog$showCodeInputView$lambda$41$lambda$40$$inlined$addTextChangedListener$default$1;->$this_apply$inlined:Lcom/kakaogame/security/databinding/KakaoGame2ndPwCodeInputViewBinding;

    iget-object p1, p1, Lcom/kakaogame/security/databinding/KakaoGame2ndPwCodeInputViewBinding;->kakaoGame2ndPwCodeContentLine:Landroid/view/View;

    const v1, -0x51f00

    invoke-virtual {p1, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 1019
    iget-object p1, p0, Lcom/kakaogame/secondpw/SecondPWViewDialog$showCodeInputView$lambda$41$lambda$40$$inlined$addTextChangedListener$default$1;->$this_apply$inlined:Lcom/kakaogame/security/databinding/KakaoGame2ndPwCodeInputViewBinding;

    iget-object p1, p1, Lcom/kakaogame/security/databinding/KakaoGame2ndPwCodeInputViewBinding;->kakaoGame2ndPwCodeClear:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_1

    .line 1039
    :cond_1
    iget-object p1, p0, Lcom/kakaogame/secondpw/SecondPWViewDialog$showCodeInputView$lambda$41$lambda$40$$inlined$addTextChangedListener$default$1;->$this_apply$inlined:Lcom/kakaogame/security/databinding/KakaoGame2ndPwCodeInputViewBinding;

    iget-object p1, p1, Lcom/kakaogame/security/databinding/KakaoGame2ndPwCodeInputViewBinding;->kakaoGame2ndPwCodeContentLine:Landroid/view/View;

    const v0, -0x19191a

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 1049
    iget-object p1, p0, Lcom/kakaogame/secondpw/SecondPWViewDialog$showCodeInputView$lambda$41$lambda$40$$inlined$addTextChangedListener$default$1;->$this_apply$inlined:Lcom/kakaogame/security/databinding/KakaoGame2ndPwCodeInputViewBinding;

    iget-object p1, p1, Lcom/kakaogame/security/databinding/KakaoGame2ndPwCodeInputViewBinding;->kakaoGame2ndPwCodeClear:Landroid/widget/FrameLayout;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :cond_2
    :goto_1
    return-void

    .array-data 1
    .end array-data
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void

    nop

    .array-data 1
    .end array-data
.end method
