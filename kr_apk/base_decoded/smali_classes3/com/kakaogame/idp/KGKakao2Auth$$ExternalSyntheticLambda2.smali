.class public final synthetic Lcom/kakaogame/idp/KGKakao2Auth$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field public final synthetic f$0:Ljava/util/List;

.field public final synthetic f$1:Lkotlin/jvm/functions/Function1;

.field public final synthetic f$2:Landroid/app/Dialog;


# direct methods
.method public synthetic constructor <init>(Ljava/util/List;Lkotlin/jvm/functions/Function1;Landroid/app/Dialog;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/kakaogame/idp/KGKakao2Auth$$ExternalSyntheticLambda2;->f$0:Ljava/util/List;

    iput-object p2, p0, Lcom/kakaogame/idp/KGKakao2Auth$$ExternalSyntheticLambda2;->f$1:Lkotlin/jvm/functions/Function1;

    iput-object p3, p0, Lcom/kakaogame/idp/KGKakao2Auth$$ExternalSyntheticLambda2;->f$2:Landroid/app/Dialog;

    return-void

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 8

    iget-object v0, p0, Lcom/kakaogame/idp/KGKakao2Auth$$ExternalSyntheticLambda2;->f$0:Ljava/util/List;

    iget-object v1, p0, Lcom/kakaogame/idp/KGKakao2Auth$$ExternalSyntheticLambda2;->f$1:Lkotlin/jvm/functions/Function1;

    iget-object v2, p0, Lcom/kakaogame/idp/KGKakao2Auth$$ExternalSyntheticLambda2;->f$2:Landroid/app/Dialog;

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move-wide v6, p4

    invoke-static/range {v0 .. v7}, Lcom/kakaogame/idp/KGKakao2Auth;->$r8$lambda$cZMgHcN1KqPQcJM-neDRRupUhNE(Ljava/util/List;Lkotlin/jvm/functions/Function1;Landroid/app/Dialog;Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    return-void

    .array-data 1
    .end array-data
.end method
