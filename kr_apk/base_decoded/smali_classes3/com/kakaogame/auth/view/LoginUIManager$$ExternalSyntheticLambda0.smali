.class public final synthetic Lcom/kakaogame/auth/view/LoginUIManager$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/app/Activity;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Ljava/lang/String;

.field public final synthetic f$3:Ljava/lang/String;

.field public final synthetic f$4:Ljava/lang/String;

.field public final synthetic f$5:Ljava/lang/String;

.field public final synthetic f$6:Lcom/kakaogame/util/MutexLock;


# direct methods
.method public synthetic constructor <init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/kakaogame/util/MutexLock;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/kakaogame/auth/view/LoginUIManager$$ExternalSyntheticLambda0;->f$0:Landroid/app/Activity;

    iput-object p2, p0, Lcom/kakaogame/auth/view/LoginUIManager$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    iput-object p3, p0, Lcom/kakaogame/auth/view/LoginUIManager$$ExternalSyntheticLambda0;->f$2:Ljava/lang/String;

    iput-object p4, p0, Lcom/kakaogame/auth/view/LoginUIManager$$ExternalSyntheticLambda0;->f$3:Ljava/lang/String;

    iput-object p5, p0, Lcom/kakaogame/auth/view/LoginUIManager$$ExternalSyntheticLambda0;->f$4:Ljava/lang/String;

    iput-object p6, p0, Lcom/kakaogame/auth/view/LoginUIManager$$ExternalSyntheticLambda0;->f$5:Ljava/lang/String;

    iput-object p7, p0, Lcom/kakaogame/auth/view/LoginUIManager$$ExternalSyntheticLambda0;->f$6:Lcom/kakaogame/util/MutexLock;

    return-void

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public final run()V
    .locals 7

    iget-object v0, p0, Lcom/kakaogame/auth/view/LoginUIManager$$ExternalSyntheticLambda0;->f$0:Landroid/app/Activity;

    iget-object v1, p0, Lcom/kakaogame/auth/view/LoginUIManager$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    iget-object v2, p0, Lcom/kakaogame/auth/view/LoginUIManager$$ExternalSyntheticLambda0;->f$2:Ljava/lang/String;

    iget-object v3, p0, Lcom/kakaogame/auth/view/LoginUIManager$$ExternalSyntheticLambda0;->f$3:Ljava/lang/String;

    iget-object v4, p0, Lcom/kakaogame/auth/view/LoginUIManager$$ExternalSyntheticLambda0;->f$4:Ljava/lang/String;

    iget-object v5, p0, Lcom/kakaogame/auth/view/LoginUIManager$$ExternalSyntheticLambda0;->f$5:Ljava/lang/String;

    iget-object v6, p0, Lcom/kakaogame/auth/view/LoginUIManager$$ExternalSyntheticLambda0;->f$6:Lcom/kakaogame/util/MutexLock;

    invoke-static/range {v0 .. v6}, Lcom/kakaogame/auth/view/LoginUIManager;->$r8$lambda$ooMZRimKwO-tQWL9nSznEkhxzAU(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/kakaogame/util/MutexLock;)V

    return-void

    .array-data 1
    .end array-data
.end method
