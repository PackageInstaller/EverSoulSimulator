.class public final synthetic Lcom/kakaogame/push/OnlinePushManager$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic f$0:Z

.field public final synthetic f$1:Landroid/app/Activity;

.field public final synthetic f$2:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(ZLandroid/app/Activity;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/kakaogame/push/OnlinePushManager$$ExternalSyntheticLambda2;->f$0:Z

    iput-object p2, p0, Lcom/kakaogame/push/OnlinePushManager$$ExternalSyntheticLambda2;->f$1:Landroid/app/Activity;

    iput-object p3, p0, Lcom/kakaogame/push/OnlinePushManager$$ExternalSyntheticLambda2;->f$2:Ljava/lang/String;

    return-void

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    iget-boolean v0, p0, Lcom/kakaogame/push/OnlinePushManager$$ExternalSyntheticLambda2;->f$0:Z

    iget-object v1, p0, Lcom/kakaogame/push/OnlinePushManager$$ExternalSyntheticLambda2;->f$1:Landroid/app/Activity;

    iget-object v2, p0, Lcom/kakaogame/push/OnlinePushManager$$ExternalSyntheticLambda2;->f$2:Ljava/lang/String;

    invoke-static {v0, v1, v2, p1, p2}, Lcom/kakaogame/push/OnlinePushManager;->$r8$lambda$4w5gcFoSHdvMjsrQVlmjff1DKQI(ZLandroid/app/Activity;Ljava/lang/String;Landroid/content/DialogInterface;I)V

    return-void

    .array-data 1
    .end array-data
.end method
