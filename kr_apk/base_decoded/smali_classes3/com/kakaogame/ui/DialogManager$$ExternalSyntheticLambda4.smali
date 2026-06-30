.class public final synthetic Lcom/kakaogame/ui/DialogManager$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/app/Activity;

.field public final synthetic f$1:Lcom/kakaogame/ui/DialogManager$Settings;


# direct methods
.method public synthetic constructor <init>(Landroid/app/Activity;Lcom/kakaogame/ui/DialogManager$Settings;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/kakaogame/ui/DialogManager$$ExternalSyntheticLambda4;->f$0:Landroid/app/Activity;

    iput-object p2, p0, Lcom/kakaogame/ui/DialogManager$$ExternalSyntheticLambda4;->f$1:Lcom/kakaogame/ui/DialogManager$Settings;

    return-void

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/kakaogame/ui/DialogManager$$ExternalSyntheticLambda4;->f$0:Landroid/app/Activity;

    iget-object v1, p0, Lcom/kakaogame/ui/DialogManager$$ExternalSyntheticLambda4;->f$1:Lcom/kakaogame/ui/DialogManager$Settings;

    invoke-static {v0, v1}, Lcom/kakaogame/ui/DialogManager;->$r8$lambda$vGR8UIjpIWig0esXHIQ8q8yEuhs(Landroid/app/Activity;Lcom/kakaogame/ui/DialogManager$Settings;)V

    return-void

    .array-data 1
    .end array-data
.end method
