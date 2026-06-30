.class public final Lcom/kakaogame/auth/view/PunishedUserDialog$showConfirmCode$lambda$42$lambda$41$$inlined$addTextChangedListener$default$1;
.super Ljava/lang/Object;
.source "TextView.kt"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kakaogame/auth/view/PunishedUserDialog;->showConfirmCode()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTextView.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TextView.kt\nandroidx/core/widget/TextViewKt$addTextChangedListener$textWatcher$1\n+ 2 PunishedUserDialog.kt\ncom/kakaogame/auth/view/PunishedUserDialog\n+ 3 TextView.kt\nandroidx/core/widget/TextViewKt$addTextChangedListener$1\n+ 4 TextView.kt\nandroidx/core/widget/TextViewKt$addTextChangedListener$2\n*L\n1#1,97:1\n307#2,4:98\n71#3:102\n77#4:103\n*E\n"
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
.field final synthetic $confirmCode$inlined:Ljava/lang/String;

.field final synthetic $this_apply$inlined:Lcom/kakaogame/databinding/KakaoGameProtectedUserPopupBinding;

.field final synthetic this$0:Lcom/kakaogame/auth/view/PunishedUserDialog;


# direct methods
.method public constructor <init>(Lcom/kakaogame/auth/view/PunishedUserDialog;Lcom/kakaogame/databinding/KakaoGameProtectedUserPopupBinding;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/kakaogame/auth/view/PunishedUserDialog$showConfirmCode$lambda$42$lambda$41$$inlined$addTextChangedListener$default$1;->this$0:Lcom/kakaogame/auth/view/PunishedUserDialog;

    iput-object p2, p0, Lcom/kakaogame/auth/view/PunishedUserDialog$showConfirmCode$lambda$42$lambda$41$$inlined$addTextChangedListener$default$1;->$this_apply$inlined:Lcom/kakaogame/databinding/KakaoGameProtectedUserPopupBinding;

    iput-object p3, p0, Lcom/kakaogame/auth/view/PunishedUserDialog$showConfirmCode$lambda$42$lambda$41$$inlined$addTextChangedListener$default$1;->$confirmCode$inlined:Ljava/lang/String;

    .line 809
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 3

    if-eqz p1, :cond_0

    .line 999
    iget-object v0, p0, Lcom/kakaogame/auth/view/PunishedUserDialog$showConfirmCode$lambda$42$lambda$41$$inlined$addTextChangedListener$default$1;->this$0:Lcom/kakaogame/auth/view/PunishedUserDialog;

    iget-object v1, p0, Lcom/kakaogame/auth/view/PunishedUserDialog$showConfirmCode$lambda$42$lambda$41$$inlined$addTextChangedListener$default$1;->$this_apply$inlined:Lcom/kakaogame/databinding/KakaoGameProtectedUserPopupBinding;

    iget-object v1, v1, Lcom/kakaogame/databinding/KakaoGameProtectedUserPopupBinding;->kakaoGameProtectedPopupConfirm:Lcom/kakaogame/ui/font/NotoSansButton;

    const v2, 0x6d0cc288

    invoke-static {v2}, Lcom/liapp/y;->ٱڳܴڭܩ(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v2, p0, Lcom/kakaogame/auth/view/PunishedUserDialog$showConfirmCode$lambda$42$lambda$41$$inlined$addTextChangedListener$default$1;->$confirmCode$inlined:Ljava/lang/String;

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    invoke-static {v0, v1, p1}, Lcom/kakaogame/auth/view/PunishedUserDialog;->access$setEnable(Lcom/kakaogame/auth/view/PunishedUserDialog;Lcom/kakaogame/ui/font/NotoSansButton;Z)V

    :cond_0
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
