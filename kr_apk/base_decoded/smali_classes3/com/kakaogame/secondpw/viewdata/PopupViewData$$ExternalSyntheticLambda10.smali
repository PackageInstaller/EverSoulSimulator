.class public final synthetic Lcom/kakaogame/secondpw/viewdata/PopupViewData$$ExternalSyntheticLambda10;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic f$0:Landroid/app/Activity;

.field public final synthetic f$1:Lcom/kakaogame/secondpw/viewdata/PopupType;


# direct methods
.method public synthetic constructor <init>(Landroid/app/Activity;Lcom/kakaogame/secondpw/viewdata/PopupType;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/kakaogame/secondpw/viewdata/PopupViewData$$ExternalSyntheticLambda10;->f$0:Landroid/app/Activity;

    iput-object p2, p0, Lcom/kakaogame/secondpw/viewdata/PopupViewData$$ExternalSyntheticLambda10;->f$1:Lcom/kakaogame/secondpw/viewdata/PopupType;

    return-void

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/kakaogame/secondpw/viewdata/PopupViewData$$ExternalSyntheticLambda10;->f$0:Landroid/app/Activity;

    iget-object v1, p0, Lcom/kakaogame/secondpw/viewdata/PopupViewData$$ExternalSyntheticLambda10;->f$1:Lcom/kakaogame/secondpw/viewdata/PopupType;

    invoke-static {v0, v1}, Lcom/kakaogame/secondpw/viewdata/PopupViewData;->lambda$6$lambda$2$lambda$0(Landroid/app/Activity;Lcom/kakaogame/secondpw/viewdata/PopupType;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method
