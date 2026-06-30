.class public final synthetic Lcom/kakaogame/core/CoreImpl$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Ljava/lang/String;

.field public final synthetic f$1:Landroid/app/Activity;

.field public final synthetic f$2:Landroid/content/Intent;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Landroid/app/Activity;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/kakaogame/core/CoreImpl$$ExternalSyntheticLambda0;->f$0:Ljava/lang/String;

    iput-object p2, p0, Lcom/kakaogame/core/CoreImpl$$ExternalSyntheticLambda0;->f$1:Landroid/app/Activity;

    iput-object p3, p0, Lcom/kakaogame/core/CoreImpl$$ExternalSyntheticLambda0;->f$2:Landroid/content/Intent;

    return-void

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/kakaogame/core/CoreImpl$$ExternalSyntheticLambda0;->f$0:Ljava/lang/String;

    iget-object v1, p0, Lcom/kakaogame/core/CoreImpl$$ExternalSyntheticLambda0;->f$1:Landroid/app/Activity;

    iget-object v2, p0, Lcom/kakaogame/core/CoreImpl$$ExternalSyntheticLambda0;->f$2:Landroid/content/Intent;

    invoke-static {v0, v1, v2}, Lcom/kakaogame/core/CoreImpl;->$r8$lambda$2-qU5ELbCLdH6FyU7gc7FqlX0JM(Ljava/lang/String;Landroid/app/Activity;Landroid/content/Intent;)V

    return-void

    .array-data 1
    .end array-data
.end method
