.class public final synthetic Lcom/kakaogame/secondpw/viewdata/ResetInputTalkCodeViewData$$ExternalSyntheticLambda29;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic f$0:Landroid/app/Activity;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Landroid/app/Activity;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/kakaogame/secondpw/viewdata/ResetInputTalkCodeViewData$$ExternalSyntheticLambda29;->f$0:Landroid/app/Activity;

    iput p2, p0, Lcom/kakaogame/secondpw/viewdata/ResetInputTalkCodeViewData$$ExternalSyntheticLambda29;->f$1:I

    return-void

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/kakaogame/secondpw/viewdata/ResetInputTalkCodeViewData$$ExternalSyntheticLambda29;->f$0:Landroid/app/Activity;

    iget v1, p0, Lcom/kakaogame/secondpw/viewdata/ResetInputTalkCodeViewData$$ExternalSyntheticLambda29;->f$1:I

    check-cast p1, Lcom/kakaogame/ui/font/TextBuilder;

    invoke-static {v0, v1, p1}, Lcom/kakaogame/secondpw/viewdata/ResetInputTalkCodeViewData;->lambda$22$lambda$15(Landroid/app/Activity;ILcom/kakaogame/ui/font/TextBuilder;)Lkotlin/Unit;

    move-result-object p1

    return-object p1

    nop

    .array-data 1
    .end array-data
.end method
