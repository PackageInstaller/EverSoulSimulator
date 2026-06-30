.class public final synthetic Lcom/kakaogame/infodesk/InfodeskNoticeManager$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/kakaogame/infodesk/InfodeskData$KGInfodeskNotice;

.field public final synthetic f$1:Lcom/kakaogame/util/MutexLock;


# direct methods
.method public synthetic constructor <init>(Lcom/kakaogame/infodesk/InfodeskData$KGInfodeskNotice;Lcom/kakaogame/util/MutexLock;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/kakaogame/infodesk/InfodeskNoticeManager$$ExternalSyntheticLambda3;->f$0:Lcom/kakaogame/infodesk/InfodeskData$KGInfodeskNotice;

    iput-object p2, p0, Lcom/kakaogame/infodesk/InfodeskNoticeManager$$ExternalSyntheticLambda3;->f$1:Lcom/kakaogame/util/MutexLock;

    return-void

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcom/kakaogame/infodesk/InfodeskNoticeManager$$ExternalSyntheticLambda3;->f$0:Lcom/kakaogame/infodesk/InfodeskData$KGInfodeskNotice;

    iget-object v1, p0, Lcom/kakaogame/infodesk/InfodeskNoticeManager$$ExternalSyntheticLambda3;->f$1:Lcom/kakaogame/util/MutexLock;

    invoke-static {v0, v1, p1, p2}, Lcom/kakaogame/infodesk/InfodeskNoticeManager;->$r8$lambda$7l4pugT0P74ILw7OutmpYnkVXPI(Lcom/kakaogame/infodesk/InfodeskData$KGInfodeskNotice;Lcom/kakaogame/util/MutexLock;Landroid/content/DialogInterface;I)V

    return-void

    .array-data 1
    .end array-data
.end method
