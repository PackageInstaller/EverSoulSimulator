.class public final synthetic Lcom/kakaogame/push/OnlinePushManager$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/app/NotificationManager;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Landroid/app/NotificationManager;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/kakaogame/push/OnlinePushManager$$ExternalSyntheticLambda0;->f$0:Landroid/app/NotificationManager;

    iput p2, p0, Lcom/kakaogame/push/OnlinePushManager$$ExternalSyntheticLambda0;->f$1:I

    return-void

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/kakaogame/push/OnlinePushManager$$ExternalSyntheticLambda0;->f$0:Landroid/app/NotificationManager;

    iget v1, p0, Lcom/kakaogame/push/OnlinePushManager$$ExternalSyntheticLambda0;->f$1:I

    invoke-static {v0, v1}, Lcom/kakaogame/push/OnlinePushManager;->$r8$lambda$4r7J0x9lcFeQRghXvLueJDJ43ps(Landroid/app/NotificationManager;I)V

    return-void

    .array-data 1
    .end array-data
.end method
