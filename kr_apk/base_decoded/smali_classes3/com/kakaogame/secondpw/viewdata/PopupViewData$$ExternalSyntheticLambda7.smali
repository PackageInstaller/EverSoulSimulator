.class public final synthetic Lcom/kakaogame/secondpw/viewdata/PopupViewData$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic f$0:Landroid/app/Activity;

.field public final synthetic f$1:Lcom/kakaogame/secondpw/viewdata/PopupType;

.field public final synthetic f$2:I

.field public final synthetic f$3:I


# direct methods
.method public synthetic constructor <init>(Landroid/app/Activity;Lcom/kakaogame/secondpw/viewdata/PopupType;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/kakaogame/secondpw/viewdata/PopupViewData$$ExternalSyntheticLambda7;->f$0:Landroid/app/Activity;

    iput-object p2, p0, Lcom/kakaogame/secondpw/viewdata/PopupViewData$$ExternalSyntheticLambda7;->f$1:Lcom/kakaogame/secondpw/viewdata/PopupType;

    iput p3, p0, Lcom/kakaogame/secondpw/viewdata/PopupViewData$$ExternalSyntheticLambda7;->f$2:I

    iput p4, p0, Lcom/kakaogame/secondpw/viewdata/PopupViewData$$ExternalSyntheticLambda7;->f$3:I

    return-void

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Lcom/kakaogame/secondpw/viewdata/PopupViewData$$ExternalSyntheticLambda7;->f$0:Landroid/app/Activity;

    iget-object v1, p0, Lcom/kakaogame/secondpw/viewdata/PopupViewData$$ExternalSyntheticLambda7;->f$1:Lcom/kakaogame/secondpw/viewdata/PopupType;

    iget v2, p0, Lcom/kakaogame/secondpw/viewdata/PopupViewData$$ExternalSyntheticLambda7;->f$2:I

    iget v3, p0, Lcom/kakaogame/secondpw/viewdata/PopupViewData$$ExternalSyntheticLambda7;->f$3:I

    check-cast p1, Lcom/kakaogame/ui/font/StyleTextBuilder;

    invoke-static {v0, v1, v2, v3, p1}, Lcom/kakaogame/secondpw/viewdata/PopupViewData;->$r8$lambda$1uE6WglzfESKgcQ7CsvEmZpyU18(Landroid/app/Activity;Lcom/kakaogame/secondpw/viewdata/PopupType;IILcom/kakaogame/ui/font/StyleTextBuilder;)Lkotlin/Unit;

    move-result-object p1

    return-object p1

    nop

    .array-data 1
    .end array-data
.end method
