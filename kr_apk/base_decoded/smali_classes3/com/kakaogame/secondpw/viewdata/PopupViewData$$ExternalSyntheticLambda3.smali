.class public final synthetic Lcom/kakaogame/secondpw/viewdata/PopupViewData$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic f$0:Landroid/app/Activity;

.field public final synthetic f$1:I

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Landroid/app/Activity;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/kakaogame/secondpw/viewdata/PopupViewData$$ExternalSyntheticLambda3;->f$0:Landroid/app/Activity;

    iput p2, p0, Lcom/kakaogame/secondpw/viewdata/PopupViewData$$ExternalSyntheticLambda3;->f$1:I

    iput p3, p0, Lcom/kakaogame/secondpw/viewdata/PopupViewData$$ExternalSyntheticLambda3;->f$2:I

    return-void

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lcom/kakaogame/secondpw/viewdata/PopupViewData$$ExternalSyntheticLambda3;->f$0:Landroid/app/Activity;

    iget v1, p0, Lcom/kakaogame/secondpw/viewdata/PopupViewData$$ExternalSyntheticLambda3;->f$1:I

    iget v2, p0, Lcom/kakaogame/secondpw/viewdata/PopupViewData$$ExternalSyntheticLambda3;->f$2:I

    check-cast p1, Lcom/kakaogame/ui/font/TextBuilder;

    invoke-static {v0, v1, v2, p1}, Lcom/kakaogame/secondpw/viewdata/PopupViewData;->lambda$6$lambda$5(Landroid/app/Activity;IILcom/kakaogame/ui/font/TextBuilder;)Lkotlin/Unit;

    move-result-object p1

    return-object p1

    nop

    .array-data 1
    .end array-data
.end method
