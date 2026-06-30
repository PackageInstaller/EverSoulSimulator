.class public final synthetic Lcom/kakaogame/secondpw/SecondPWViewDialog$$ExternalSyntheticLambda17;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/kakaogame/secondpw/viewdata/Base2ndPWViewData;

.field public final synthetic f$1:Lcom/kakaogame/secondpw/SecondPWViewDialog;

.field public final synthetic f$2:Lcom/kakaogame/security/databinding/KakaoGame2ndPwCodeInputViewBinding;


# direct methods
.method public synthetic constructor <init>(Lcom/kakaogame/secondpw/viewdata/Base2ndPWViewData;Lcom/kakaogame/secondpw/SecondPWViewDialog;Lcom/kakaogame/security/databinding/KakaoGame2ndPwCodeInputViewBinding;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/kakaogame/secondpw/SecondPWViewDialog$$ExternalSyntheticLambda17;->f$0:Lcom/kakaogame/secondpw/viewdata/Base2ndPWViewData;

    iput-object p2, p0, Lcom/kakaogame/secondpw/SecondPWViewDialog$$ExternalSyntheticLambda17;->f$1:Lcom/kakaogame/secondpw/SecondPWViewDialog;

    iput-object p3, p0, Lcom/kakaogame/secondpw/SecondPWViewDialog$$ExternalSyntheticLambda17;->f$2:Lcom/kakaogame/security/databinding/KakaoGame2ndPwCodeInputViewBinding;

    return-void

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/kakaogame/secondpw/SecondPWViewDialog$$ExternalSyntheticLambda17;->f$0:Lcom/kakaogame/secondpw/viewdata/Base2ndPWViewData;

    iget-object v1, p0, Lcom/kakaogame/secondpw/SecondPWViewDialog$$ExternalSyntheticLambda17;->f$1:Lcom/kakaogame/secondpw/SecondPWViewDialog;

    iget-object v2, p0, Lcom/kakaogame/secondpw/SecondPWViewDialog$$ExternalSyntheticLambda17;->f$2:Lcom/kakaogame/security/databinding/KakaoGame2ndPwCodeInputViewBinding;

    invoke-static {v0, v1, v2, p1}, Lcom/kakaogame/secondpw/SecondPWViewDialog;->$r8$lambda$IeFKhbBb64O46YDKQ2HL0Wp6skQ(Lcom/kakaogame/secondpw/viewdata/Base2ndPWViewData;Lcom/kakaogame/secondpw/SecondPWViewDialog;Lcom/kakaogame/security/databinding/KakaoGame2ndPwCodeInputViewBinding;Landroid/view/View;)V

    return-void

    .array-data 1
    .end array-data
.end method
